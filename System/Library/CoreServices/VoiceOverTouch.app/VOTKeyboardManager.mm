@interface VOTKeyboardManager
+ (void)initialize;
- (BOOL)_dispatchCommandForKeyInfo:(id)info isRepeatedEvent:(BOOL)event;
- (BOOL)_handleArrowKeyEvent:(id)event;
- (BOOL)_handleBrailleKeyEvent:(id)event;
- (BOOL)_keyInfoIsModifierOnly:(id)only;
- (VOTKeyboardManager)init;
- (id)_characterStringRepresentationForKey:(id)key;
- (id)_localizeKeyboardString:(id)string;
- (id)keyDownInfo;
- (id)keyboardEventForKeyInfo:(id)info;
- (id)singleLetterCommandForKeyInfo:(id)info;
- (id)threadSafe_keyDownInfo;
- (void)_axEndPassthroughTouch;
- (void)_axStartPassthroughTouch;
- (void)_dispatchEventRepresentationIntoSystem:(id)system;
- (void)_dispatchKeyEventIntoSystem:(id)system;
- (void)_handleAnnouncementsForKeyInfo:(id)info;
- (void)_handleCapsLockToggle:(id)toggle;
- (void)_handleKeyboardKeyEvent:(id)event isRepeatedEvent:(BOOL)repeatedEvent;
- (void)_handleModifierCapsLockBehavior:(id)behavior;
- (void)_handleNonPerkinsKeyboardKeyEvent:(id)event isRepeatedEvent:(BOOL)repeatedEvent;
- (void)_handleQuickNavDownArrowRepostPress:(id)press;
- (void)_handleQuickNavPress:(id)press;
- (void)_handleQuickNavPressTimer:(id)timer;
- (void)_initializeQuickNav;
- (void)_initializeThread;
- (void)_keyRepeat:(id)repeat;
- (void)_postEvent:(id)event;
- (void)_postKeyboardKey:(id)key keyCode:(unsigned __int16)code eventFlags:(unsigned int)flags keyFlags:(unsigned __int16)keyFlags keyDown:(BOOL)down source:(unsigned __int16)source;
- (void)_processVolumeButtonsForCurtainReset:(id)reset;
- (void)_resetSoundAndScreenCurtain;
- (void)_sendEvent:(id)event withKeyInfo:(id)info arrowMask:(int64_t)mask;
- (void)_sendEventForCommand:(id)command withKeyInfo:(id)info arrowMask:(int64_t)mask;
- (void)_speakCapsLockKey;
- (void)_updateConsecutiveKeyCount:(id)count;
- (void)_updateEventFlags:(id)flags;
- (void)_verifyCorrectThread;
- (void)clearConsecutiveKeyPressCount;
- (void)dealloc;
- (void)handleKeyboardKeyEvent:(id)event eventOrigin:(int64_t)origin;
- (void)loadKeyboardMap;
- (void)postEvent:(id)event;
- (void)setKeyDownInfo:(id)info;
@end

@implementation VOTKeyboardManager

+ (void)initialize
{
  if (!qword_1001FEE30)
  {
    v2 = [objc_allocWithZone(VOTKeyboardManager) init];
    v3 = qword_1001FEE30;
    qword_1001FEE30 = v2;

    _objc_release_x1(v2, v3);
  }
}

- (void)dealloc
{
  [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer invalidate];
  [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer invalidate];
  [(SCRCThread *)self->_keyboardThread setIsInvalid:1];
  v3.receiver = self;
  v3.super_class = VOTKeyboardManager;
  [(VOTKeyboardManager *)&v3 dealloc];
}

- (VOTKeyboardManager)init
{
  v18.receiver = self;
  v18.super_class = VOTKeyboardManager;
  v2 = [(VOTKeyboardManager *)&v18 init];
  if (v2)
  {
    objc_storeStrong(&qword_1001FEE30, v2);
    v3 = [NSDictionary alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 pathForResource:@"VOTSingleLetterCommands" ofType:@"plist"];
    v6 = [v3 initWithContentsOfFile:v5];
    singleLetterCommandsTable = v2->_singleLetterCommandsTable;
    v2->_singleLetterCommandsTable = v6;

    [(VOTKeyboardManager *)v2 loadKeyboardMap];
    [(VOTKeyboardManager *)v2 _initializeQuickNav];
    v8 = objc_alloc_init(NSLock);
    keyDownLock = v2->_keyDownLock;
    v2->_keyDownLock = v8;

    v10 = objc_alloc_init(SCRCThread);
    keyboardThread = v2->_keyboardThread;
    v2->_keyboardThread = v10;

    [(SCRCThread *)v2->_keyboardThread performSelector:"_initializeThread" onTarget:v2 count:0 objects:0];
    v12 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v2 selector:"_keyRepeat:" thread:v2->_keyboardThread];
    keyRepeatTimer = v2->_keyRepeatTimer;
    v2->_keyRepeatTimer = v12;

    [(VOTKeyboardManager *)v2 setControlKeyToggleSpeakingAllowed:1];
    v2->_quickNavDownStateTime[0] = 0.0;
    v2->_quickNavDownStateTime[1] = 0.0;
    v14 = +[VOTConfiguration rootConfiguration];
    v15 = [v14 preferenceForKey:@"VOTModifierKeyLockKey"];
    v2->_modifierKeyLockEnabled = [v15 BOOLValue];

    v16 = v2;
  }

  return v2;
}

- (void)_verifyCorrectThread
{
  if (([VOTSharedWorkspace inUnitTestMode] & 1) == 0 && (-[SCRCThread _debug_currentlyRunningOnThisThread](self->_keyboardThread, "_debug_currentlyRunningOnThisThread") & 1) == 0)
  {
    v4 = +[NSThread currentThread];
    name = [v4 name];
    _AXAssert();
  }
}

- (void)_initializeThread
{
  AXSetThreadPriority();
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);
  v4 = +[NSThread currentThread];
  [v4 setName:v6];

  v5 = BKSHIDServicesIsCapsLockLightOn() != 0;
  self->_fakeCapsLockOn = v5;
  self->_realCapsLockOn = v5;
}

- (void)handleKeyboardKeyEvent:(id)event eventOrigin:(int64_t)origin
{
  eventCopy = event;
  if (!self->_lastLayout)
  {
    [(VOTKeyboardManager *)self loadKeyboardMap];
  }

  v6 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:eventCopy];
  [v6 setEventOrigin:origin];
  [(SCRCThread *)self->_keyboardThread performSelector:"_handleKeyboardKeyEvent:" onTarget:self count:1 objects:v6];
}

- (void)loadKeyboardMap
{
  applicationForCurrentElement = [VOTSharedWorkspace applicationForCurrentElement];
  currentHardwareKeyboardLayout = [applicationForCurrentElement currentHardwareKeyboardLayout];

  v5 = +[AXSubsystemVoiceOver sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemVoiceOver identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v32 = currentHardwareKeyboardLayout;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_lastLayout && ([currentHardwareKeyboardLayout isEqualToString:?] & 1) != 0)
  {
    currentSoftwareKeyboardLayout = currentHardwareKeyboardLayout;
  }

  else
  {
    if ([currentHardwareKeyboardLayout isEqualToString:{@"Automatic", v32}])
    {
      applicationForCurrentElement2 = [VOTSharedWorkspace applicationForCurrentElement];
      currentSoftwareKeyboardLayout = [applicationForCurrentElement2 currentSoftwareKeyboardLayout];

      v14 = +[AXSubsystemVoiceOver sharedInstance];
      LOBYTE(applicationForCurrentElement2) = [v14 ignoreLogging];

      if ((applicationForCurrentElement2 & 1) == 0)
      {
        v15 = +[AXSubsystemVoiceOver identifier];
        v16 = AXLoggerForFacility();

        v17 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = AXColorizeFormatLog();
          v33 = currentSoftwareKeyboardLayout;
          v19 = _AXStringForArgs();
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 138543362;
            v35 = v19;
            _os_log_impl(&_mh_execute_header, v16, v17, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      currentSoftwareKeyboardLayout = currentHardwareKeyboardLayout;
    }

    layoutToKeyboardMap = self->_layoutToKeyboardMap;
    if (!layoutToKeyboardMap)
    {
      v21 = [NSDictionary alloc];
      v22 = +[NSBundle mainBundle];
      v23 = [v22 pathForResource:@"VOTLayoutToKeyboardMap" ofType:@"plist"];
      v24 = [v21 initWithContentsOfFile:v23];
      v25 = self->_layoutToKeyboardMap;
      self->_layoutToKeyboardMap = v24;

      layoutToKeyboardMap = self->_layoutToKeyboardMap;
    }

    v26 = [(NSDictionary *)layoutToKeyboardMap objectForKey:currentSoftwareKeyboardLayout, v33];
    if ([v26 length])
    {
      v27 = [NSDictionary alloc];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 pathForResource:v26 ofType:@"plist" inDirectory:@"VOTKeyboardMaps"];
      v30 = [v27 initWithContentsOfFile:v29];
      keyboardMap = self->_keyboardMap;
      self->_keyboardMap = v30;

      objc_storeStrong(&self->_lastLayout, currentSoftwareKeyboardLayout);
    }
  }
}

- (id)_characterStringRepresentationForKey:(id)key
{
  keyCopy = key;
  originalCharacters = [keyCopy originalCharacters];
  v6 = +[NSCharacterSet controlCharacterSet];
  v7 = [originalCharacters stringByTrimmingCharactersInSet:v6];
  v8 = [(VOTKeyboardManager *)self _localizeKeyboardString:v7];

  if ([keyCopy isShiftKeyPressed])
  {
    uppercaseString = [(__CFString *)v8 uppercaseString];

    v8 = uppercaseString;
  }

  if (![(__CFString *)v8 length])
  {
    keyCode = [keyCopy keyCode];
    eventRecord = [keyCopy eventRecord];
    keyInfo = [eventRecord keyInfo];
    alternativeKeyCode = [keyInfo alternativeKeyCode];

    if (alternativeKeyCode)
    {
      v15 = alternativeKeyCode;
    }

    else
    {
      v15 = keyCode;
    }

    switch(v15)
    {
      case '(':

        v8 = @"return";
        break;
      case ':':

        v8 = @"f1";
        break;
      case ';':

        v8 = @"f2";
        break;
      case '<':

        v8 = @"f3";
        break;
      case '=':

        v8 = @"f4";
        break;
      case '>':

        v8 = @"f5";
        break;
      case '?':

        v8 = @"f6";
        break;
      case '@':

        v8 = @"f7";
        break;
      case 'A':

        v8 = @"f8";
        break;
      case 'B':

        v8 = @"f9";
        break;
      case 'C':

        v8 = @"f10";
        break;
      case 'D':

        v8 = @"f11";
        break;
      case 'E':

        v8 = @"f12";
        break;
      case 'J':

        v8 = @"home";
        break;
      case 'K':

        v8 = @"pageup";
        break;
      case 'M':

        v8 = @"end";
        break;
      case 'N':

        v8 = @"pagedown";
        break;
      case 'O':
        keyDownInfo = [(VOTKeyboardManager *)self keyDownInfo];
        isFNKeyPressed = [keyDownInfo isFNKeyPressed];

        v18 = @"right";
        v19 = @"end";
        goto LABEL_33;
      case 'P':
        keyDownInfo2 = [(VOTKeyboardManager *)self keyDownInfo];
        isFNKeyPressed = [keyDownInfo2 isFNKeyPressed];

        v18 = @"left";
        v19 = @"home";
        goto LABEL_33;
      case 'Q':
        keyDownInfo3 = [(VOTKeyboardManager *)self keyDownInfo];
        isFNKeyPressed = [keyDownInfo3 isFNKeyPressed];

        v18 = @"down";
        v19 = @"pagedown";
        goto LABEL_33;
      case 'R':
        keyDownInfo4 = [(VOTKeyboardManager *)self keyDownInfo];
        isFNKeyPressed = [keyDownInfo4 isFNKeyPressed];

        v18 = @"up";
        v19 = @"pageup";
LABEL_33:
        if (isFNKeyPressed)
        {
          v8 = v19;
        }

        else
        {
          v8 = v18;
        }

        break;
      case 'X':

        v8 = @"⌤";
        break;
      default:
        break;
    }
  }

  return v8;
}

- (id)keyboardEventForKeyInfo:(id)info
{
  infoCopy = info;
  v5 = [(VOTKeyboardManager *)self _characterStringRepresentationForKey:infoCopy];
  v25 = [v5 copy];
  if ([infoCopy isCommandKeyPressed])
  {
    v6 = [v5 stringByAppendingString:@"_command"];

    v5 = v6;
  }

  if ([infoCopy isShiftKeyPressed] && ((objc_msgSend(v25, "isEqualToString:", @"home") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"end") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"pagedown") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"pageup") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"right") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"left") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"up") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"down") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"f3") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"f4") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"[") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"]") & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"-")))
  {
    v7 = [v5 stringByAppendingString:@"_shift"];

    v5 = v7;
  }

  if ([infoCopy isFNKeyPressed] && (objc_msgSend(v25, "isEqualToString:", @"home") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"end") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"pagedown") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"pageup") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"f11") & 1) == 0)
  {
    v8 = [v5 stringByAppendingString:@"_fn"];

    v5 = v8;
  }

  v9 = [AXSSKeyChord keyboardShortcutKeyChordWithInfo:infoCopy characters:v5];
  v10 = +[VOSCommandResolver resolverForCurrentHost];
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000E22C8;
  v29[3] = &unk_1001CAD38;
  objc_copyWeak(&v30, &location);
  [v10 setFetchPressCountBlock:v29];
  [v10 setFetchContextBlock:&stru_1001CAD78];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000E235C;
  v26[3] = &unk_1001CADA0;
  objc_copyWeak(&v28, &location);
  v11 = v5;
  v27 = v11;
  [v10 setResolvingEventOccurredBlock:v26];
  v12 = [(VOSCommandManager *)self->_commandManager commandForKeyChord:v9 withResolver:v10];
  votEventCommandName = [(__CFString *)v12 votEventCommandName];
  v14 = votEventCommandName == 0;

  if (v14)
  {
    v15 = VOTLogKeyboard();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    isFNKeyPressed = [infoCopy isFNKeyPressed];
    isShiftKeyPressed = [infoCopy isShiftKeyPressed];
    v21 = @"NO";
    if (isFNKeyPressed)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138412802;
    v33 = v11;
    v34 = 2112;
    v35 = v22;
    if (isShiftKeyPressed)
    {
      v21 = @"YES";
    }

    v36 = 2112;
    v37 = v21;
    v18 = "❌ no customized command found for original characters '%@'. Fn-pressed? %@ shiftPressed? %@";
  }

  else
  {
    v15 = VOTLogKeyboard();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    isFNKeyPressed2 = [infoCopy isFNKeyPressed];
    v17 = @"NO";
    *buf = 138412802;
    v33 = v12;
    v34 = 2112;
    if (isFNKeyPressed2)
    {
      v17 = @"YES";
    }

    v35 = v11;
    v36 = 2112;
    v37 = v17;
    v18 = "✅ returning customized vosCommand: '%@' for characters '%@' Fn-pressed? %@";
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v18, buf, 0x20u);
LABEL_38:

  v23 = [(VOSCommandManager *)self->_commandManager eventForKeyChord:v9 resolver:v10 info:infoCopy];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v23;
}

- (id)singleLetterCommandForKeyInfo:(id)info
{
  infoCopy = info;
  characters = [infoCopy characters];
  v6 = [(VOTKeyboardManager *)self _localizeKeyboardString:characters];

  LODWORD(characters) = [infoCopy isShiftKeyPressed];
  if (characters)
  {
    uppercaseString = [v6 uppercaseString];

    v6 = uppercaseString;
  }

  v8 = [(NSDictionary *)self->_singleLetterCommandsTable objectForKey:v6];

  return v8;
}

- (void)postEvent:(id)event
{
  eventCopy = event;
  v5 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:eventCopy];

  [(SCRCThread *)self->_keyboardThread performSelector:"_postEvent:" onTarget:self count:1 objects:v5];
}

- (id)threadSafe_keyDownInfo
{
  [(NSLock *)self->_keyDownLock lock];
  v3 = [(VOTKeyInfo *)self->_keyDownInfo copy];
  [(NSLock *)self->_keyDownLock unlock];

  return v3;
}

- (id)keyDownInfo
{
  [(VOTKeyboardManager *)self _verifyCorrectThread];
  keyDownInfo = self->_keyDownInfo;

  return keyDownInfo;
}

- (void)_updateConsecutiveKeyCount:(id)count
{
  countCopy = count;
  if ([countCopy keyDown])
  {
    v4 = [(VOTKeyboardManager *)self _characterStringRepresentationForKey:countCopy];
    if ([v4 length])
    {
      v5 = [(VOTKeyboardManager *)self _characterStringRepresentationForKey:self->_lastKeyForTapCount];
      v6 = [v5 isEqualToString:v4];

      if (v6)
      {
        v7 = self->_consecutiveKeyPressCount + 1;
      }

      else
      {
        v7 = 1;
      }

      self->_consecutiveKeyPressCount = v7;
      v8 = [countCopy copy];
      lastKeyForTapCount = self->_lastKeyForTapCount;
      self->_lastKeyForTapCount = v8;
    }
  }

  _objc_release_x2();
}

- (void)setKeyDownInfo:(id)info
{
  infoCopy = info;
  [(VOTKeyboardManager *)self _verifyCorrectThread];
  [(NSLock *)self->_keyDownLock lock];
  if (self->_keyDownInfo != infoCopy)
  {
    objc_storeStrong(&self->_keyDownInfo, info);
  }

  [(NSLock *)self->_keyDownLock unlock];
}

- (id)_localizeKeyboardString:(id)string
{
  stringCopy = string;
  v5 = [(NSDictionary *)self->_keyboardMap objectForKey:stringCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = stringCopy;
  }

  v8 = v7;

  return v8;
}

- (BOOL)_dispatchCommandForKeyInfo:(id)info isRepeatedEvent:(BOOL)event
{
  eventCopy = event;
  infoCopy = info;
  if ([infoCopy keyDown])
  {
    [(VOTKeyboardManager *)self setKeyDownInfo:infoCopy];
  }

  v7 = +[VOTElement systemAppApplication];
  isSystemSleeping = [v7 isSystemSleeping];

  if (!isSystemSleeping)
  {
    if (self->_modifierToggleSpeakingKeyDown && ![infoCopy modifierState] && -[VOTKeyboardManager controlKeyToggleSpeakingAllowed](self, "controlKeyToggleSpeakingAllowed"))
    {
      command = kVOTEventCommandToggleSpeaking;
      v12 = 0;
      goto LABEL_56;
    }

    [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer cancel];
    if (self->_captureModeEnabled && [infoCopy keyCode] != 41)
    {
      v12 = [VOTEvent keyEventWithCommand:0 keyInfo:infoCopy];
      [VOTSharedWorkspace dispatchCommand:v12];
LABEL_22:
      command = 0;
      v11 = 1;
LABEL_95:

      goto LABEL_96;
    }

    if ([(VOTKeyboardManager *)self _handleArrowKeyEvent:infoCopy])
    {
      if ([infoCopy keyDown] && _AXSKeyRepeatEnabled())
      {
        if (eventCopy)
        {
          _AXSKeyRepeatInterval();
        }

        else
        {
          _AXSKeyRepeatDelay();
        }

        [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer dispatchAfterDelay:infoCopy withObject:?];
      }

      goto LABEL_55;
    }

    if (sub_1000E1058(infoCopy, self->_capsLockDown))
    {
      if ([infoCopy keyDown])
      {
        keyDownInfo = infoCopy;
      }

      else
      {
        keyDownInfo = [(VOTKeyboardManager *)self keyDownInfo];
      }

      v15 = keyDownInfo;
      v12 = [(VOTKeyboardManager *)self keyboardEventForKeyInfo:keyDownInfo];
      command = [v12 command];
      lastReleasedToSystemKeyEvent = [(VOTKeyboardManager *)self lastReleasedToSystemKeyEvent];

      if (lastReleasedToSystemKeyEvent)
      {
        if (([infoCopy isOptionKeyPressed] & 1) != 0 || objc_msgSend(infoCopy, "isControlKeyPressed"))
        {
          lastReleasedToSystemKeyEvent2 = [(VOTKeyboardManager *)self lastReleasedToSystemKeyEvent];
          eventRecord = [lastReleasedToSystemKeyEvent2 eventRecord];
          v19 = [eventRecord copy];

          keyInfo = [v19 keyInfo];
          [keyInfo setKeyDown:0];

          [v19 setType:11];
          keyInfo2 = [v19 keyInfo];
          [keyInfo2 setModifierState:0];

          v22 = [[VOTKeyInfo alloc] initWithEventRepresentation:v19];
          [(VOTKeyboardManager *)self _dispatchKeyEventIntoSystem:v22];

          v23 = AXLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v59 = 138412290;
            *v60 = v19;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Released our snarfed modifier key: %@", &v59, 0xCu);
          }
        }

        [(VOTKeyboardManager *)self setLastReleasedToSystemKeyEvent:0];
      }

      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_axStartPassthroughTouch" object:0];
      if (-[__CFString isEqualToString:](command, "isEqualToString:", kVOTEventCommandSimpleTap) && [infoCopy keyDown])
      {
        [(VOTKeyboardManager *)self performSelector:"_axStartPassthroughTouch" withObject:0 afterDelay:0.5];
      }

      else
      {
        [(VOTKeyboardManager *)self _axEndPassthroughTouch];
      }

      if ([infoCopy keyDown])
      {

        v12 = 0;
        command = 0;
      }

      if (!command)
      {
        goto LABEL_42;
      }

      goto LABEL_56;
    }

    if ([VOTSharedWorkspace allowSingleLetterSearching])
    {
      eventRecord2 = [infoCopy eventRecord];
      [eventRecord2 originalType];
      if (!AXEventTypeIsVolumeButtonPress())
      {
        if ([infoCopy eventOrigin] == 4)
        {
        }

        else
        {
          eventOrigin = [infoCopy eventOrigin];

          if (eventOrigin != 1)
          {
            goto LABEL_26;
          }
        }

        keyDownInfo2 = [(VOTKeyboardManager *)self keyDownInfo];
        v56 = keyDownInfo2;
        if (!keyDownInfo2 || ([keyDownInfo2 isCommandKeyPressed] & 1) != 0 || (objc_msgSend(v56, "isControlKeyPressed") & 1) != 0)
        {
          command = 0;
        }

        else
        {
          if ([infoCopy isEscapeKey])
          {
            isShiftKeyPressed = [infoCopy isShiftKeyPressed];
            v58 = &kVOTEventCommandEscape;
            if (isShiftKeyPressed)
            {
              v58 = &kVOTEventCommandShowSideApp;
            }
          }

          else
          {
            if (![infoCopy keyUp])
            {

LABEL_55:
              v12 = 0;
              command = &stru_1001CBF90;
              goto LABEL_56;
            }

            v58 = &kVOTEventCommandSingleLetterSearch;
          }

          command = *v58;
        }

        v12 = 0;
        if (!command)
        {
LABEL_42:
          if ([infoCopy keyUp] && objc_msgSend(infoCopy, "keyCode") == 41)
          {
            isShiftKeyPressed2 = [infoCopy isShiftKeyPressed];
            v25 = &kVOTEventCommandShowSideApp;
            if (!isShiftKeyPressed2)
            {
              v25 = &kVOTEventCommandEscape;
            }

            v26 = *v25;
            if (v26)
            {
              command = v26;
              goto LABEL_56;
            }
          }

          v27 = +[VOTCommandHelper commandHelper];
          if ([v27 helpEnabled])
          {
            if ([infoCopy keyUp])
            {

LABEL_98:
              if (-[NSString isEqualToString:](self->_lastCommand, "isEqualToString:", kVOTEventCommandStartHelp) && [infoCopy modifiersChanged] && ((objc_msgSend(infoCopy, "isOptionKeyPressed") & 1) != 0 || objc_msgSend(infoCopy, "isControlKeyPressed")))
              {
                lastCommand = self->_lastCommand;
                self->_lastCommand = 0;
              }

              else if ([infoCopy keyCode] != 57)
              {
                v47 = [VOTEvent keyEventWithCommand:0 keyInfo:0];

                keyDownInfo3 = [(VOTKeyboardManager *)self keyDownInfo];
                v49 = [keyDownInfo3 copy];

                if ([infoCopy keyUp])
                {
                  [v49 setChangedModifiers:{objc_msgSend(infoCopy, "changedModifiers")}];
                }

                if ([infoCopy keyUp])
                {
                  v50 = v49;
                }

                else
                {
                  v50 = infoCopy;
                }

                [v47 setKeyInfo:v50];
                [VOTSharedWorkspace dispatchCommand:v47];

                command = 0;
                v11 = 1;
                v12 = v47;
                goto LABEL_95;
              }

              goto LABEL_22;
            }

            modifiersChanged = [infoCopy modifiersChanged];

            if (modifiersChanged)
            {
              goto LABEL_98;
            }
          }

          else
          {
          }

          command = 0;
        }

LABEL_56:
        characters = [infoCopy characters];
        v29 = [characters length];

        if (v29)
        {
          characters2 = [infoCopy characters];
          LODWORD(v29) = [characters2 characterAtIndex:0];
        }

        v31 = VOTLogKeyboard();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          keyUp = [infoCopy keyUp];
          characters3 = [infoCopy characters];
          allowSingleLetterSearching = [VOTSharedWorkspace allowSingleLetterSearching];
          v59 = 67110146;
          *v60 = keyUp;
          *&v60[4] = 2114;
          *&v60[6] = characters3;
          v61 = 1024;
          v62 = v29;
          v63 = 2114;
          v64 = command;
          v65 = 1024;
          v66 = allowSingleLetterSearching;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Key State: %d, Character(s): %{public}@ [%d], Command: %{public}@, Single Letter State: %d", &v59, 0x28u);
        }

        elementManager = [VOTSharedWorkspace elementManager];
        currentElement = [VOTSharedWorkspace currentElement];
        v34 = [elementManager modifierKeyChoiceForElement:currentElement];

        modifierToggleSpeakingKeyDown = self->_modifierToggleSpeakingKeyDown;
        if ([infoCopy isControlKeyPressed] && self->_currentModifiers == 4)
        {
          LOBYTE(v36) = 1;
        }

        else if ([infoCopy keyCode] == 57)
        {
          v36 = (v34 >> 1) & 1;
          if (self->_currentModifiers != 16)
          {
            LOBYTE(v36) = 0;
          }
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        self->_modifierToggleSpeakingKeyDown = v36;
        objc_storeStrong(&self->_lastCommand, command);
        if (!command)
        {
          if (sub_1000E1058(infoCopy, self->_capsLockDown))
          {
            if ([infoCopy keyUp])
            {
              characters4 = [(VOTKeyInfo *)self->_keyDownInfo characters];
              v40 = [characters4 length];

              if (v40)
              {
                v41 = +[VOTOutputManager outputManager];
                v42 = +[VOSOutputEvent UnknownCommand];
                [v41 sendEvent:v42];
              }
            }

            v11 = 1;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_84;
        }

        keyUp2 = [infoCopy keyUp];
        if (v12)
        {
          if ((keyUp2 & 1) == 0)
          {
            [(VOTKeyboardManager *)self _sendEvent:v12 withKeyInfo:infoCopy arrowMask:0];
            goto LABEL_83;
          }

          keyDownInfo4 = [(VOTKeyboardManager *)self keyDownInfo];
          [(VOTKeyboardManager *)self _sendEvent:v12 withKeyInfo:keyDownInfo4 arrowMask:0];
        }

        else
        {
          if ((keyUp2 & 1) == 0)
          {
            [(VOTKeyboardManager *)self _sendEventForCommand:command withKeyInfo:infoCopy arrowMask:0];
            goto LABEL_83;
          }

          keyDownInfo4 = [(VOTKeyboardManager *)self keyDownInfo];
          [(VOTKeyboardManager *)self _sendEventForCommand:command withKeyInfo:keyDownInfo4 arrowMask:0];
        }

LABEL_83:
        v11 = !modifierToggleSpeakingKeyDown;
        [(VOTKeyboardManager *)self setControlKeyToggleSpeakingAllowed:0];
LABEL_84:
        if ([infoCopy keyCode] == 57 && (v34 & 2) != 0)
        {
          if ([infoCopy keyDown])
          {
            v43 = +[AXBackBoardServer server];
            [v43 setCapsLockLightOn:self->_fakeCapsLockOn];
          }

          v11 = 1;
        }

        if (([infoCopy keyDown] & 1) == 0)
        {
          [(VOTKeyboardManager *)self setKeyDownInfo:0];
        }

        if (!self->_currentModifiers && (([infoCopy keyUp] & 1) != 0 || objc_msgSend(infoCopy, "modifiersChanged")))
        {
          [(VOTKeyboardManager *)self setControlKeyToggleSpeakingAllowed:1];
        }

        goto LABEL_95;
      }
    }

LABEL_26:
    v12 = 0;
    goto LABEL_42;
  }

  v9 = AXLogSystemApp();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v59) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "VOT requesting system-app wake-up for key dispatch", &v59, 2u);
  }

  command = +[AXSystemAppServer server];
  [(__CFString *)command wakeUpDeviceIfNecessary];
  v11 = 0;
LABEL_96:

  return v11;
}

- (void)_axStartPassthroughTouch
{
  self->_passthroughStart = CGPointZero;
  currentElement = [VOTSharedWorkspace currentElement];
  if (currentElement)
  {
    v12 = currentElement;
    windowContextId = [currentElement windowContextId];
    v5 = +[VOTElement systemWideElement];
    currentElement2 = [VOTSharedWorkspace currentElement];
    [currentElement2 centerPoint];
    [v5 convertPoint:windowContextId fromContextId:?];
    self->_passthroughStart.x = v7;
    self->_passthroughStart.y = v8;

    v9 = +[VOTElement systemWideElement];
    [v9 postFingerTouchAtPoint:windowContextId withForce:self->_passthroughStart.x withContextId:{self->_passthroughStart.y, 0.0}];

    v10 = +[VOTOutputManager outputManager];
    v11 = +[VOSOutputEvent DidBeginPassthrough];
    [v10 sendEvent:v11];

    currentElement = v12;
  }
}

- (void)_axEndPassthroughTouch
{
  p_passthroughStart = &self->_passthroughStart;
  if (CGPointZero.x != self->_passthroughStart.x || CGPointZero.y != self->_passthroughStart.y)
  {
    v5 = +[VOTElement systemWideElement];
    currentElement = [VOTSharedWorkspace currentElement];
    [v5 postFingerLiftAtPoint:objc_msgSend(currentElement withContextId:{"windowContextId"), self->_passthroughStart.x, self->_passthroughStart.y}];

    *p_passthroughStart = CGPointZero;
  }
}

- (void)_initializeQuickNav
{
  v3 = +[VOTConfiguration rootConfiguration];
  v9 = [v3 preferenceForKey:@"VOTQuickNavEnabled"];

  if (!v9)
  {
    v4 = +[VOTConfiguration rootConfiguration];
    v9 = &__kCFBooleanTrue;
    [v4 setPreference:? forKey:?];
  }

  [(VOTKeyboardManager *)self setQuickNavDownDurationAllowedAcceptance:0.2];
  -[VOTKeyboardManager updateQuickNavState:](self, "updateQuickNavState:", [v9 BOOLValue]);
  v5 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:self selector:"_handleQuickNavPressTimer:"];
  quickNavKeyTimer = self->_quickNavKeyTimer;
  self->_quickNavKeyTimer = v5;

  v7 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:self selector:"_handleQuickNavDownArrowRepostPress:"];
  quickNavRepostTimer = self->_quickNavRepostTimer;
  self->_quickNavRepostTimer = v7;

  xmmword_1001FEE40 = xmmword_10017E630;
  *algn_1001FEE50 = xmmword_10017E640;
}

- (BOOL)_handleArrowKeyEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isArrowKey] && (sub_1000E1058(eventCopy, self->_capsLockDown) & 1) == 0)
  {
    v6 = *(&xmmword_1001FEE40 + [eventCopy keyCode] - 79);
    quickNavStateMask = self->_quickNavStateMask;
    v8 = [eventCopy keyCode] == 79 || objc_msgSend(eventCopy, "keyCode") == 80;
    keyCode = [eventCopy keyCode];
    if ([eventCopy keyDown])
    {
      self->_quickNavStateMask |= v6;
      if (v8)
      {
        v10 = keyCode != 79;
        if (self->_quickNavDownStateTime[v10] == 0.0)
        {
          self->_quickNavDownStateTime[v10] = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    else if ([eventCopy keyUp])
    {
      if (v8)
      {
        v11 = self->_quickNavDownStateTime[0];
        if (v11 > 0.0)
        {
          v12 = self->_quickNavDownStateTime[1];
          if (v12 > 0.0)
          {
            self->_quickNavLastRecordedActivation = vabdd_f64(v11, v12);
          }
        }

        self->_quickNavDownStateTime[keyCode != 79] = 0.0;
      }

      self->_quickNavStateMask &= ~v6;
    }

    if ([eventCopy keyDown] && quickNavStateMask != self->_quickNavStateMask)
    {
      [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer cancel];
    }

    if ([eventCopy keyDown])
    {
      v13 = self->_quickNavStateMask;
      self->_quickNavLastDownState = v13;
      if (quickNavStateMask == v13)
      {
        [(VOTKeyboardManager *)self _handleQuickNavPress:eventCopy];
      }

      else
      {
        [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer dispatchAfterDelay:eventCopy withObject:0.25];
      }
    }

    quickNavLastDownState = self->_quickNavLastDownState;
    v15 = quickNavLastDownState & 0xFFFF00000000;
    if ((quickNavLastDownState & 0xFFFF00000000) == 0xFFFF00000000)
    {
      v16 = 79;
    }

    else
    {
      v16 = 80;
    }

    v17 = [NSNumber numberWithShort:v16];
    if ([eventCopy keyUp])
    {
      if (!self->_quickNavStateMask)
      {
        if (quickNavStateMask)
        {
          [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer cancel];
          [(VOTKeyboardManager *)self _handleQuickNavPress:eventCopy];
          if (self->_isQuickNavOn && self->_quickNavDidSendDown)
          {
            self->_quickNavDidSendDown = 0;
            -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v17 unsignedShortValue], objc_msgSend(eventCopy, "modifierState"), 0, 0, 1);
          }
        }
      }
    }

    if (!self->_isQuickNavOn)
    {
      if (quickNavLastDownState >= 0xFFFF000000000000 && v15 == 0xFFFF00000000)
      {
        [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer cancel];
      }

      else
      {
        if (quickNavLastDownState <= 0xFFFEFFFFFFFFFFFFLL && v15 != 0xFFFF00000000)
        {
          v5 = 0;
          goto LABEL_39;
        }

        if ([eventCopy keyDown])
        {
          if ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isCancelled]& 1) == 0)
          {
            [(VOTKeyboardManager *)self _handleQuickNavDownArrowRepostPress:eventCopy];
          }

          [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer dispatchAfterDelay:eventCopy withObject:0.0799999982];
        }

        else if ([eventCopy keyUp])
        {
          if ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isCancelled]& 1) == 0)
          {
            [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer cancel];
            [(VOTKeyboardManager *)self _handleQuickNavDownArrowRepostPress:eventCopy];
          }

          self->_quickNavDidSendDown = 0;
          v5 = 1;
          -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v17 unsignedShortValue], objc_msgSend(eventCopy, "modifierState"), 0, 0, 1);
          goto LABEL_39;
        }
      }
    }

    v5 = 1;
LABEL_39:

    goto LABEL_40;
  }

  v5 = 0;
LABEL_40:

  return v5;
}

- (void)_speakCapsLockKey
{
  v3 = BKSHIDServicesIsCapsLockLightOn() != 0;
  self->_fakeCapsLockOn = v3;
  self->_realCapsLockOn = v3;
  v6 = +[VOTOutputManager outputManager];
  if (self->_realCapsLockOn)
  {
    v4 = @"capslock.on";
  }

  else
  {
    v4 = @"capslock.off";
  }

  v5 = sub_1000511CC(off_1001FDDD0, v4, 0);
  [v6 speakSimpleString:v5];
}

- (void)_handleAnnouncementsForKeyInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy keyDown])
  {
    if ([infoCopy keyCode] == 57)
    {
      elementManager = [VOTSharedWorkspace elementManager];
      currentElement = [VOTSharedWorkspace currentElement];
      v6 = [elementManager modifierKeyChoiceForElement:currentElement];

      if ((v6 & 2) == 0)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (void)_updateEventFlags:(id)flags
{
  flagsCopy = flags;
  modifierState = [flagsCopy modifierState];
  self->_currentModifiers = modifierState;
  keyboardHelpMask = self->_keyboardHelpMask;
  if ((modifierState & 8) != 0)
  {
    if ((keyboardHelpMask & 8) == 0)
    {
LABEL_3:
      v6 = 8;
      if ((modifierState & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((keyboardHelpMask & 8) != 0)
  {
    goto LABEL_3;
  }

  v6 = 0;
  if ((modifierState & 4) != 0)
  {
LABEL_4:
    if ((keyboardHelpMask & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  if ((keyboardHelpMask & 4) != 0)
  {
LABEL_5:
    v6 = v6 | 4;
  }

LABEL_6:
  if ((modifierState & 0x40) != 0)
  {
    if ((keyboardHelpMask & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((keyboardHelpMask & 0x40) != 0)
  {
LABEL_14:
    v6 = v6 | 0x40;
  }

LABEL_15:
  if ((modifierState & 2) != 0)
  {
    if ((keyboardHelpMask & 2) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((keyboardHelpMask & 2) != 0)
  {
LABEL_19:
    v6 = v6 | 2;
  }

LABEL_20:
  if (modifierState)
  {
    if (keyboardHelpMask)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (keyboardHelpMask)
  {
LABEL_24:
    v6 = v6 | 1;
  }

LABEL_25:
  if ((modifierState & 0x10) != 0)
  {
    if ((keyboardHelpMask & 0x10) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((keyboardHelpMask & 0x10) != 0)
  {
LABEL_29:
    v6 = v6 | 0x10;
  }

LABEL_30:
  self->_keyboardHelpMask = [flagsCopy modifierState];
  [flagsCopy setChangedModifiers:v6];
}

- (void)_dispatchEventRepresentationIntoSystem:(id)system
{
  systemCopy = system;
  v5 = [[VOTKeyInfo alloc] initWithEventRepresentation:systemCopy];

  [(VOTKeyboardManager *)self _dispatchKeyEventIntoSystem:v5];
}

- (void)_handleCapsLockToggle:(id)toggle
{
  toggleCopy = toggle;
  elementManager = [VOTSharedWorkspace elementManager];
  currentElement = [VOTSharedWorkspace currentElement];
  v6 = [elementManager modifierKeyChoiceForElement:currentElement];

  if ((v6 & 2) != 0)
  {
    self->_fakeCapsLockOn ^= 1u;
    v7 = [AXEventRepresentation keyRepresentationWithType:10];
    keyInfo = [v7 keyInfo];
    [keyInfo setKeyCode:57];

    if (self->_fakeCapsLockOn)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    keyInfo2 = [v7 keyInfo];
    [keyInfo2 setModifierState:v9];

    currentElement2 = [VOTSharedWorkspace currentElement];
    windowContextId = [currentElement2 windowContextId];
    eventRecord = [toggleCopy eventRecord];
    [eventRecord setContextId:windowContextId];

    keyInfo3 = [v7 keyInfo];
    [keyInfo3 setKeyDown:1];

    eventRecord2 = [toggleCopy eventRecord];
    clientId = [eventRecord2 clientId];
    [v7 setClientId:clientId];

    [(VOTKeyboardManager *)self _dispatchEventRepresentationIntoSystem:v7];
    v17 = [v7 copy];
    [v17 setType:11];
    keyInfo4 = [v17 keyInfo];
    [keyInfo4 setKeyDown:0];

    [(VOTKeyboardManager *)self _dispatchEventRepresentationIntoSystem:v17];
    v19 = +[VOTOutputManager outputManager];
    if (self->_fakeCapsLockOn)
    {
      v20 = @"capslock.on";
    }

    else
    {
      v20 = @"capslock.off";
    }

    v21 = sub_1000511CC(off_1001FDDD0, v20, 0);
    [v19 speakSimpleString:v21];

    v22 = +[AXBackBoardServer server];
    [v22 setCapsLockLightOn:self->_fakeCapsLockOn];
  }
}

- (void)_handleModifierCapsLockBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([behaviorCopy isCapsLockKeyDown])
  {
    self->_capsLockDown = 1;
    goto LABEL_9;
  }

  if (![behaviorCopy isCapsLockKeyUp])
  {
    goto LABEL_8;
  }

  self->_capsLockDown = 0;
  if (([behaviorCopy modifierState] & 1) != 0 || self->_capsLockTap1 > 0.0 && CFAbsoluteTimeGetCurrent() - self->_capsLockTap1 < 0.3)
  {
    [(VOTKeyboardManager *)self _handleCapsLockToggle:behaviorCopy];
LABEL_8:
    self->_capsLockTap1 = 0.0;
    goto LABEL_9;
  }

  self->_capsLockTap1 = CFAbsoluteTimeGetCurrent();
LABEL_9:
}

- (void)_resetSoundAndScreenCurtain
{
  [VOTSharedWorkspace setVoiceOverMuted:0 sendRequest:0];
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting sound and screen curtain with volume button presses", buf, 2u);
  }

  v3 = +[AXSettings sharedInstance];
  if ([v3 voiceOverScreenCurtainEnabled])
  {
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    voiceOverSoundCurtain = [v4 voiceOverSoundCurtain];

    if (!voiceOverSoundCurtain)
    {
      return;
    }
  }

  v6 = +[AVSystemController sharedAVSystemController];
  v13 = 0.0;
  [v6 getVolume:&v13 forCategory:@"Audio/Video"];
  *&v7 = v13;
  if (v13 < 0.25)
  {
    LODWORD(v7) = 0.5;
    [v6 setVolumeTo:@"Audio/Video" forCategory:0 retainFullMute:v7];
  }

  v8 = +[AXSettings sharedInstance];
  [v8 setVoiceOverScreenCurtainEnabled:0];

  v9 = +[AXSettings sharedInstance];
  [v9 setVoiceOverSoundCurtain:0];

  v10 = sub_1000511CC(off_1001FDDD0, @"screen.and.sound.curtain.restored", 0);
  selectedLanguage = [VOTSharedWorkspace selectedLanguage];
  v12 = sub_1000095FC(v10, 0, selectedLanguage);
}

- (void)_processVolumeButtonsForCurtainReset:(id)reset
{
  resetCopy = reset;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E409C;
  v6[3] = &unk_1001C76E8;
  v6[4] = self;
  v5 = objc_retainBlock(v6);
  if ([resetCopy type] == 1008)
  {
    [(VOTKeyboardManager *)self setLastVolumeDownButtonDownTime:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    if ([resetCopy type] != 1006)
    {
      if ([resetCopy type] == 1009)
      {
        [(VOTKeyboardManager *)self setLastVolumeDownButtonUpTime:CFAbsoluteTimeGetCurrent()];
      }

      else
      {
        if ([resetCopy type] != 1007)
        {
          goto LABEL_10;
        }

        [(VOTKeyboardManager *)self setLastVolumeUpButtonUpTime:CFAbsoluteTimeGetCurrent()];
      }

      (v5[2])(v5);
      goto LABEL_10;
    }

    [(VOTKeyboardManager *)self setLastVolumeUpButtonDownTime:CFAbsoluteTimeGetCurrent()];
  }

LABEL_10:
}

- (void)_handleKeyboardKeyEvent:(id)event isRepeatedEvent:(BOOL)repeatedEvent
{
  repeatedEventCopy = repeatedEvent;
  eventCopy = event;
  if (([VOTSharedWorkspace perkinsKeyboardInputEnabled] & 1) == 0 && !objc_msgSend(VOTSharedWorkspace, "keyboardBrailleUIEnabled") || objc_msgSend(eventCopy, "eventOrigin") != 4 || self->_currentModifiers || (+[VOTBrailleManager manager](VOTBrailleManager, "manager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "handleKeyboardPerkinsInput:chordOnly:", eventCopy, 0), v6, (v7 & 1) == 0))
  {
    [(VOTKeyboardManager *)self _handleNonPerkinsKeyboardKeyEvent:eventCopy isRepeatedEvent:repeatedEventCopy];
  }
}

- (void)_handleNonPerkinsKeyboardKeyEvent:(id)event isRepeatedEvent:(BOOL)repeatedEvent
{
  repeatedEventCopy = repeatedEvent;
  eventCopy = event;
  currentModifiers = self->_currentModifiers;
  v23 = eventCopy;
  if (currentModifiers != [eventCopy modifierState])
  {
    [v23 setModifiersChanged:1];
  }

  if (!repeatedEventCopy)
  {
    eventRecord = [v23 eventRecord];
    [(VOTKeyboardManager *)self _processVolumeButtonsForCurtainReset:eventRecord];
  }

  [(VOTKeyboardManager *)self _handleModifierCapsLockBehavior:v23];
  [(VOTKeyboardManager *)self _updateEventFlags:v23];
  [(VOTKeyboardManager *)self _handleAnnouncementsForKeyInfo:v23];
  [(VOTKeyboardManager *)self _updateConsecutiveKeyCount:v23];
  v9 = +[VOTBrailleManager manager];
  hasActiveBrailleDisplay = [v9 hasActiveBrailleDisplay];

  if (hasActiveBrailleDisplay && [(VOTKeyboardManager *)self _handleBrailleKeyEvent:v23])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(VOTKeyboardManager *)self _dispatchCommandForKeyInfo:v23 isRepeatedEvent:repeatedEventCopy];
  }

  if ([v23 eventOrigin] == 4 && -[VOTKeyboardManager isQuickNavOn](self, "isQuickNavOn"))
  {
    keyDownInfo = [(VOTKeyboardManager *)self keyDownInfo];
    isArrowKey = [keyDownInfo isArrowKey];

    if ((isArrowKey | v11))
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  v14 = +[VOTCommandHelper commandHelper];
  helpEnabled = [v14 helpEnabled];

  if ((helpEnabled & 1) == 0)
  {
    if ([VOTSharedWorkspace playKeyboardClicksOnHWInput])
    {
      eventRecord2 = [v23 eventRecord];
      type = [eventRecord2 type];

      if (type == 10)
      {
        v18 = +[VOTOutputManager outputManager];
        [v18 playSoundFast:@"KeyboardClick"];
      }
    }

    [(VOTKeyboardManager *)self _dispatchKeyEventIntoSystem:v23];
    [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer cancel];
    if ([v23 keyDown] && _AXSKeyRepeatEnabled() && !-[VOTKeyboardManager _keyInfoIsModifierOnly:](self, "_keyInfoIsModifierOnly:", v23))
    {
      if (repeatedEventCopy)
      {
        _AXSKeyRepeatInterval();
      }

      else
      {
        _AXSKeyRepeatDelay();
      }

      [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer dispatchAfterDelay:v23 withObject:?];
    }
  }

LABEL_25:
  testingProcessEventCallback = [(VOTKeyboardManager *)self testingProcessEventCallback];

  v21 = v23;
  if (testingProcessEventCallback)
  {
    testingProcessEventCallback2 = [(VOTKeyboardManager *)self testingProcessEventCallback];
    (testingProcessEventCallback2)[2](testingProcessEventCallback2, v23);

    v21 = v23;
  }

  _objc_release_x1(v20, v21);
}

- (BOOL)_handleBrailleKeyEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy keyCode] == 41 && !objc_msgSend(eventCopy, "keyUp") || objc_msgSend(eventCopy, "keyCode") != 41 && !objc_msgSend(eventCopy, "keyDown"))
  {
    goto LABEL_21;
  }

  keyCode = [eventCopy keyCode];
  v5 = 0;
  if (keyCode > 76)
  {
    switch(keyCode)
    {
      case 'M':
        v6 = &kVOTEventCommandLastElement;
        break;
      case 'O':
        v6 = &kVOTEventCommandNextElement;
        break;
      case 'P':
        v6 = &kVOTEventCommandPreviousElement;
        break;
      default:
        goto LABEL_22;
    }

LABEL_19:
    v7 = *v6;
    if (v7)
    {
      v8 = v7;
      v9 = +[VOTBrailleManager manager];
      v5 = [v9 handleCommandIfActiveBrailleRelated:v8];

      goto LABEL_22;
    }

LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  switch(keyCode)
  {
    case '(':
      if ([VOTSharedWorkspace brailleInputActive])
      {
        goto LABEL_21;
      }

      v6 = &kVOTEventCommandReturn;
      goto LABEL_19;
    case ')':
      v6 = &kVOTEventCommandEscape;
      goto LABEL_19;
    case 'J':
      v6 = &kVOTEventCommandFirstElement;
      goto LABEL_19;
  }

LABEL_22:

  return v5;
}

- (BOOL)_keyInfoIsModifierOnly:(id)only
{
  onlyCopy = only;
  v4 = [onlyCopy keyCode] == 227 || objc_msgSend(onlyCopy, "keyCode") == 231 || objc_msgSend(onlyCopy, "keyCode") == 225 || objc_msgSend(onlyCopy, "keyCode") == 229 || objc_msgSend(onlyCopy, "keyCode") == 224 || objc_msgSend(onlyCopy, "keyCode") == 228 || objc_msgSend(onlyCopy, "keyCode") == 226 || objc_msgSend(onlyCopy, "keyCode") == 230 || objc_msgSend(onlyCopy, "keyCode") == 57;

  return v4;
}

- (void)_dispatchKeyEventIntoSystem:(id)system
{
  systemCopy = system;
  currentElement = [VOTSharedWorkspace currentElement];
  windowContextId = [currentElement windowContextId];
  elementManager = [VOTSharedWorkspace elementManager];
  isItemChooserVisible = [elementManager isItemChooserVisible];

  if (isItemChooserVisible)
  {
    if (windowContextId)
    {
      eventRecord = [systemCopy eventRecord];
      [eventRecord setClientId:0];
    }

    eventRecord2 = [systemCopy eventRecord];
    [eventRecord2 setContextId:windowContextId];
  }

  eventRecord3 = [systemCopy eventRecord];
  contextId = [eventRecord3 contextId];

  if (!contextId)
  {
    eventRecord4 = [systemCopy eventRecord];
    [eventRecord4 setContextId:windowContextId];
  }

  v13 = +[VOTWorkspace sharedWorkspace];
  inUnitTestMode = [v13 inUnitTestMode];

  if (inUnitTestMode)
  {
    v15 = +[VOTWorkspace sharedWorkspace];
    eventRecord5 = [systemCopy eventRecord];
    [v15 notePostedEventForUnitTesting:eventRecord5];
  }

  [(VOTKeyboardManager *)self setLastReleasedToSystemKeyEvent:systemCopy];
  [(VOTKeyboardManager *)self setLastReleasedToSystemKeyEventTime:CFAbsoluteTimeGetCurrent()];
  keyCode = [systemCopy keyCode];
  if ([systemCopy keyCode] == 42 || -[VOTKeyInfo isEqual:](self->_lastKeyForTapCount, "isEqual:", systemCopy) && self->_consecutiveKeyPressCount >= 2)
  {
    v18 = [systemCopy copy];
    [v18 setKeyDown:0];
    v19 = +[AXEventTapManager sharedManager];
    eventRecord6 = [v18 eventRecord];
    [v19 sendHIDSystemEvent:eventRecord6 repostCreatorHIDEvent:0 senderID:0x8000000817319373];
  }

  if (keyCode)
  {
    eventRecord8 = +[AXEventTapManager sharedManager];
    eventRecord7 = [systemCopy eventRecord];
    [eventRecord8 sendHIDSystemEvent:eventRecord7 repostCreatorHIDEvent:0 senderID:0x8000000817319373];
  }

  else
  {
    if ([currentElement doesHaveTraits:kAXWebContentTrait])
    {
      application = [currentElement application];

      currentElement = application;
    }

    eventRecord8 = [systemCopy eventRecord];
    [currentElement dispatchKeyboardEvent:eventRecord8];
  }
}

- (void)_keyRepeat:(id)repeat
{
  repeatCopy = repeat;
  if (([(SCRCTargetSelectorTimer *)self->_keyRepeatTimer isCancelled]& 1) == 0)
  {
    [(VOTKeyboardManager *)self _handleKeyboardKeyEvent:repeatCopy isRepeatedEvent:1];
  }
}

- (void)_sendEvent:(id)event withKeyInfo:(id)info arrowMask:(int64_t)mask
{
  eventCopy = event;
  infoCopy = info;
  if (mask >= 1)
  {
    v9 = [NSNumber numberWithInteger:mask];
    [eventCopy setObject:v9 forIndex:103];
  }

  testingEventDispatchTap = [(VOTKeyboardManager *)self testingEventDispatchTap];

  if (testingEventDispatchTap)
  {
    testingEventDispatchTap2 = [(VOTKeyboardManager *)self testingEventDispatchTap];
    (testingEventDispatchTap2)[2](testingEventDispatchTap2, eventCopy);
  }

  [VOTSharedWorkspace dispatchCommand:eventCopy];
}

- (void)_sendEventForCommand:(id)command withKeyInfo:(id)info arrowMask:(int64_t)mask
{
  commandCopy = command;
  infoCopy = info;
  if ([commandCopy length])
  {
    v9 = [VOTEvent keyEventWithCommand:commandCopy keyInfo:infoCopy];
    [(VOTKeyboardManager *)self _sendEvent:v9 withKeyInfo:infoCopy arrowMask:mask];
  }
}

- (void)_postKeyboardKey:(id)key keyCode:(unsigned __int16)code eventFlags:(unsigned int)flags keyFlags:(unsigned __int16)keyFlags keyDown:(BOOL)down source:(unsigned __int16)source
{
  downCopy = down;
  v9 = *&flags;
  codeCopy = code;
  keyCopy = key;
  if (downCopy)
  {
    v12 = 10;
  }

  else
  {
    v12 = 11;
  }

  v13 = [AXEventRepresentation keyRepresentationWithType:v12];
  keyInfo = [v13 keyInfo];
  [keyInfo setModifiedInput:keyCopy];
  [keyInfo setUnmodifiedInput:keyCopy];
  [keyInfo setKeyCode:codeCopy];
  [keyInfo setModifierState:v9];
  [keyInfo setKeyDown:downCopy];
  [(VOTKeyboardManager *)self setLastDispatchedKeyEvent:v13];
  [(VOTKeyboardManager *)self setLastDispatchedKeyEventTime:CFAbsoluteTimeGetCurrent()];
  if ([keyInfo keyCode] && !objc_msgSend(keyCopy, "length"))
  {
    currentElement = [VOTSharedWorkspace currentElement];
    [v13 setContextId:{objc_msgSend(currentElement, "windowContextId")}];

    currentElement2 = [VOTSharedWorkspace currentElement];
    [v13 setDisplayId:{objc_msgSend(currentElement2, "displayId")}];

    [(VOTKeyboardManager *)self _dispatchEventRepresentationIntoSystem:v13];
  }

  else
  {
    currentElement3 = [VOTSharedWorkspace currentElement];
    [currentElement3 dispatchKeyboardEvent:v13];
  }
}

- (void)_handleQuickNavDownArrowRepostPress:(id)press
{
  pressCopy = press;
  if (pressCopy)
  {
    v8 = pressCopy;
    v5 = +[VOTCommandHelper commandHelper];
    helpEnabled = [v5 helpEnabled];

    if (helpEnabled)
    {
      v7 = [VOTEvent keyEventWithCommand:0 keyInfo:v8];
      [VOTSharedWorkspace dispatchCommand:v7];
    }

    else
    {
      self->_quickNavDidSendDown = 1;
      -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v8 keyCode], objc_msgSend(v8, "modifierState"), 0, 1, 1);
    }

    pressCopy = v8;
  }
}

- (void)_handleQuickNavPress:(id)press
{
  pressCopy = press;
  if (self->_quickNavLastDownState == 0xFFFFFFFF00000000 && (quickNavLastRecordedActivation = self->_quickNavLastRecordedActivation, [(VOTKeyboardManager *)self quickNavDownDurationAllowedAcceptance], quickNavLastRecordedActivation < v6) && self->_quickNavLastRecordedActivation > 0.0)
  {
    [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer cancel];
    [(VOTKeyboardManager *)self updateQuickNavState:!self->_isQuickNavOn];
    self->_explictlyEnabledQuickNav = 1;
    [(VOTKeyboardManager *)self _sendEventForCommand:kVOTEventCommandAnnounceQuickNav withKeyInfo:pressCopy arrowMask:3];
    self->_quickNavLastRecordedActivation = 0.0;
  }

  else
  {
    self->_quickNavLastRecordedActivation = 0.0;
    if (self->_isQuickNavOn)
    {
      quickNavLastDownState = self->_quickNavLastDownState;
      v8 = 2;
      if (quickNavLastDownState > 0xFFFEFFFFFFFFFFFFLL)
      {
        v8 = 3;
      }

      if ((~quickNavLastDownState & 0xFFFF00000000) != 0)
      {
        v9 = quickNavLastDownState > 0xFFFEFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      if ((~LODWORD(self->_quickNavLastDownState) & 0xFFFF0000) == 0)
      {
        v9 |= 8uLL;
      }

      if (LOWORD(self->_quickNavLastDownState) == 0xFFFF)
      {
        v10 = v9 | 4;
      }

      else
      {
        v10 = v9;
      }

      v11 = [AXSSKeyChord quickNavKeyChordWithInfo:pressCopy arrowMask:v10];
      v12 = +[VOSCommandResolver resolverForCurrentHost];
      [v12 setKeyboardMode:1];
      v13 = [(VOSCommandManager *)self->_commandManager commandForKeyChord:v11 withResolver:v12];
      votEventCommandName = [v13 votEventCommandName];

      votEventCommandName2 = VOTLogKeyboard();
      v16 = os_log_type_enabled(votEventCommandName2, OS_LOG_TYPE_INFO);
      if (votEventCommandName)
      {
        if (v16)
        {
          displayValue = [v11 displayValue];
          v19 = 138412802;
          v20 = v13;
          v21 = 2112;
          v22 = displayValue;
          v23 = 2112;
          v24 = pressCopy;
          _os_log_impl(&_mh_execute_header, votEventCommandName2, OS_LOG_TYPE_INFO, "✅ handling quickNav vosCommand: '%@' for keys '%@' info '%@'", &v19, 0x20u);
        }

        votEventCommandName2 = [v13 votEventCommandName];
        [(VOTKeyboardManager *)self _sendEventForCommand:votEventCommandName2 withKeyInfo:pressCopy arrowMask:v10];
      }

      else if (v16)
      {
        displayValue2 = [v11 displayValue];
        v19 = 138412546;
        v20 = displayValue2;
        v21 = 2112;
        v22 = pressCopy;
        _os_log_impl(&_mh_execute_header, votEventCommandName2, OS_LOG_TYPE_INFO, "❌ no customized quickNav command found for keys '%@' info '%@'", &v19, 0x16u);
      }
    }
  }
}

- (void)_handleQuickNavPressTimer:(id)timer
{
  timerCopy = timer;
  if (([(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer isCancelled]& 1) == 0)
  {
    [(VOTKeyboardManager *)self _handleQuickNavPress:timerCopy];
  }
}

- (void)_postEvent:(id)event
{
  eventCopy = event;
  v5 = +[VOTElement systemWideElement];
  eventRecord = [eventCopy eventRecord];

  [v5 repostEvent:eventRecord];
}

- (void)clearConsecutiveKeyPressCount
{
  self->_consecutiveKeyPressCount = 1;
  self->_lastKeyForTapCount = 0;
  _objc_release_x1();
}

@end