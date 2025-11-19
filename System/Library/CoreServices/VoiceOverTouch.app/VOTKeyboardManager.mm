@interface VOTKeyboardManager
+ (void)initialize;
- (BOOL)_dispatchCommandForKeyInfo:(id)a3 isRepeatedEvent:(BOOL)a4;
- (BOOL)_handleArrowKeyEvent:(id)a3;
- (BOOL)_handleBrailleKeyEvent:(id)a3;
- (BOOL)_keyInfoIsModifierOnly:(id)a3;
- (VOTKeyboardManager)init;
- (id)_characterStringRepresentationForKey:(id)a3;
- (id)_localizeKeyboardString:(id)a3;
- (id)keyDownInfo;
- (id)keyboardEventForKeyInfo:(id)a3;
- (id)singleLetterCommandForKeyInfo:(id)a3;
- (id)threadSafe_keyDownInfo;
- (void)_axEndPassthroughTouch;
- (void)_axStartPassthroughTouch;
- (void)_dispatchEventRepresentationIntoSystem:(id)a3;
- (void)_dispatchKeyEventIntoSystem:(id)a3;
- (void)_handleAnnouncementsForKeyInfo:(id)a3;
- (void)_handleCapsLockToggle:(id)a3;
- (void)_handleKeyboardKeyEvent:(id)a3 isRepeatedEvent:(BOOL)a4;
- (void)_handleModifierCapsLockBehavior:(id)a3;
- (void)_handleNonPerkinsKeyboardKeyEvent:(id)a3 isRepeatedEvent:(BOOL)a4;
- (void)_handleQuickNavDownArrowRepostPress:(id)a3;
- (void)_handleQuickNavPress:(id)a3;
- (void)_handleQuickNavPressTimer:(id)a3;
- (void)_initializeQuickNav;
- (void)_initializeThread;
- (void)_keyRepeat:(id)a3;
- (void)_postEvent:(id)a3;
- (void)_postKeyboardKey:(id)a3 keyCode:(unsigned __int16)a4 eventFlags:(unsigned int)a5 keyFlags:(unsigned __int16)a6 keyDown:(BOOL)a7 source:(unsigned __int16)a8;
- (void)_processVolumeButtonsForCurtainReset:(id)a3;
- (void)_resetSoundAndScreenCurtain;
- (void)_sendEvent:(id)a3 withKeyInfo:(id)a4 arrowMask:(int64_t)a5;
- (void)_sendEventForCommand:(id)a3 withKeyInfo:(id)a4 arrowMask:(int64_t)a5;
- (void)_speakCapsLockKey;
- (void)_updateConsecutiveKeyCount:(id)a3;
- (void)_updateEventFlags:(id)a3;
- (void)_verifyCorrectThread;
- (void)clearConsecutiveKeyPressCount;
- (void)dealloc;
- (void)handleKeyboardKeyEvent:(id)a3 eventOrigin:(int64_t)a4;
- (void)loadKeyboardMap;
- (void)postEvent:(id)a3;
- (void)setKeyDownInfo:(id)a3;
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
    v3 = [v4 name];
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

- (void)handleKeyboardKeyEvent:(id)a3 eventOrigin:(int64_t)a4
{
  v7 = a3;
  if (!self->_lastLayout)
  {
    [(VOTKeyboardManager *)self loadKeyboardMap];
  }

  v6 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:v7];
  [v6 setEventOrigin:a4];
  [(SCRCThread *)self->_keyboardThread performSelector:"_handleKeyboardKeyEvent:" onTarget:self count:1 objects:v6];
}

- (void)loadKeyboardMap
{
  v3 = [VOTSharedWorkspace applicationForCurrentElement];
  v4 = [v3 currentHardwareKeyboardLayout];

  v5 = +[AXSubsystemVoiceOver sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemVoiceOver identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v32 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_lastLayout && ([v4 isEqualToString:?] & 1) != 0)
  {
    v12 = v4;
  }

  else
  {
    if ([v4 isEqualToString:{@"Automatic", v32}])
    {
      v13 = [VOTSharedWorkspace applicationForCurrentElement];
      v12 = [v13 currentSoftwareKeyboardLayout];

      v14 = +[AXSubsystemVoiceOver sharedInstance];
      LOBYTE(v13) = [v14 ignoreLogging];

      if ((v13 & 1) == 0)
      {
        v15 = +[AXSubsystemVoiceOver identifier];
        v16 = AXLoggerForFacility();

        v17 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = AXColorizeFormatLog();
          v33 = v12;
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
      v12 = v4;
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

    v26 = [(NSDictionary *)layoutToKeyboardMap objectForKey:v12, v33];
    if ([v26 length])
    {
      v27 = [NSDictionary alloc];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 pathForResource:v26 ofType:@"plist" inDirectory:@"VOTKeyboardMaps"];
      v30 = [v27 initWithContentsOfFile:v29];
      keyboardMap = self->_keyboardMap;
      self->_keyboardMap = v30;

      objc_storeStrong(&self->_lastLayout, v12);
    }
  }
}

- (id)_characterStringRepresentationForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 originalCharacters];
  v6 = +[NSCharacterSet controlCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [(VOTKeyboardManager *)self _localizeKeyboardString:v7];

  if ([v4 isShiftKeyPressed])
  {
    v9 = [(__CFString *)v8 uppercaseString];

    v8 = v9;
  }

  if (![(__CFString *)v8 length])
  {
    v11 = [v4 keyCode];
    v12 = [v4 eventRecord];
    v13 = [v12 keyInfo];
    v14 = [v13 alternativeKeyCode];

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
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
        v21 = [(VOTKeyboardManager *)self keyDownInfo];
        v17 = [v21 isFNKeyPressed];

        v18 = @"right";
        v19 = @"end";
        goto LABEL_33;
      case 'P':
        v16 = [(VOTKeyboardManager *)self keyDownInfo];
        v17 = [v16 isFNKeyPressed];

        v18 = @"left";
        v19 = @"home";
        goto LABEL_33;
      case 'Q':
        v20 = [(VOTKeyboardManager *)self keyDownInfo];
        v17 = [v20 isFNKeyPressed];

        v18 = @"down";
        v19 = @"pagedown";
        goto LABEL_33;
      case 'R':
        v22 = [(VOTKeyboardManager *)self keyDownInfo];
        v17 = [v22 isFNKeyPressed];

        v18 = @"up";
        v19 = @"pageup";
LABEL_33:
        if (v17)
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

- (id)keyboardEventForKeyInfo:(id)a3
{
  v4 = a3;
  v5 = [(VOTKeyboardManager *)self _characterStringRepresentationForKey:v4];
  v25 = [v5 copy];
  if ([v4 isCommandKeyPressed])
  {
    v6 = [v5 stringByAppendingString:@"_command"];

    v5 = v6;
  }

  if ([v4 isShiftKeyPressed] && ((objc_msgSend(v25, "isEqualToString:", @"home") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"end") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"pagedown") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"pageup") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"right") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"left") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"up") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"down") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"f3") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"f4") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"[") & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"]") & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"-")))
  {
    v7 = [v5 stringByAppendingString:@"_shift"];

    v5 = v7;
  }

  if ([v4 isFNKeyPressed] && (objc_msgSend(v25, "isEqualToString:", @"home") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"end") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"pagedown") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"pageup") & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", @"f11") & 1) == 0)
  {
    v8 = [v5 stringByAppendingString:@"_fn"];

    v5 = v8;
  }

  v9 = [AXSSKeyChord keyboardShortcutKeyChordWithInfo:v4 characters:v5];
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
  v13 = [(__CFString *)v12 votEventCommandName];
  v14 = v13 == 0;

  if (v14)
  {
    v15 = VOTLogKeyboard();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    v19 = [v4 isFNKeyPressed];
    v20 = [v4 isShiftKeyPressed];
    v21 = @"NO";
    if (v19)
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
    if (v20)
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

    v16 = [v4 isFNKeyPressed];
    v17 = @"NO";
    *buf = 138412802;
    v33 = v12;
    v34 = 2112;
    if (v16)
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

  v23 = [(VOSCommandManager *)self->_commandManager eventForKeyChord:v9 resolver:v10 info:v4];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v23;
}

- (id)singleLetterCommandForKeyInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 characters];
  v6 = [(VOTKeyboardManager *)self _localizeKeyboardString:v5];

  LODWORD(v5) = [v4 isShiftKeyPressed];
  if (v5)
  {
    v7 = [v6 uppercaseString];

    v6 = v7;
  }

  v8 = [(NSDictionary *)self->_singleLetterCommandsTable objectForKey:v6];

  return v8;
}

- (void)postEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_allocWithZone(VOTKeyInfo) initWithEventRepresentation:v4];

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

- (void)_updateConsecutiveKeyCount:(id)a3
{
  v10 = a3;
  if ([v10 keyDown])
  {
    v4 = [(VOTKeyboardManager *)self _characterStringRepresentationForKey:v10];
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
      v8 = [v10 copy];
      lastKeyForTapCount = self->_lastKeyForTapCount;
      self->_lastKeyForTapCount = v8;
    }
  }

  _objc_release_x2();
}

- (void)setKeyDownInfo:(id)a3
{
  v5 = a3;
  [(VOTKeyboardManager *)self _verifyCorrectThread];
  [(NSLock *)self->_keyDownLock lock];
  if (self->_keyDownInfo != v5)
  {
    objc_storeStrong(&self->_keyDownInfo, a3);
  }

  [(NSLock *)self->_keyDownLock unlock];
}

- (id)_localizeKeyboardString:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_keyboardMap objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (BOOL)_dispatchCommandForKeyInfo:(id)a3 isRepeatedEvent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 keyDown])
  {
    [(VOTKeyboardManager *)self setKeyDownInfo:v6];
  }

  v7 = +[VOTElement systemAppApplication];
  v8 = [v7 isSystemSleeping];

  if (!v8)
  {
    if (self->_modifierToggleSpeakingKeyDown && ![v6 modifierState] && -[VOTKeyboardManager controlKeyToggleSpeakingAllowed](self, "controlKeyToggleSpeakingAllowed"))
    {
      v10 = kVOTEventCommandToggleSpeaking;
      v12 = 0;
      goto LABEL_56;
    }

    [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer cancel];
    if (self->_captureModeEnabled && [v6 keyCode] != 41)
    {
      v12 = [VOTEvent keyEventWithCommand:0 keyInfo:v6];
      [VOTSharedWorkspace dispatchCommand:v12];
LABEL_22:
      v10 = 0;
      v11 = 1;
LABEL_95:

      goto LABEL_96;
    }

    if ([(VOTKeyboardManager *)self _handleArrowKeyEvent:v6])
    {
      if ([v6 keyDown] && _AXSKeyRepeatEnabled())
      {
        if (v4)
        {
          _AXSKeyRepeatInterval();
        }

        else
        {
          _AXSKeyRepeatDelay();
        }

        [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer dispatchAfterDelay:v6 withObject:?];
      }

      goto LABEL_55;
    }

    if (sub_1000E1058(v6, self->_capsLockDown))
    {
      if ([v6 keyDown])
      {
        v13 = v6;
      }

      else
      {
        v13 = [(VOTKeyboardManager *)self keyDownInfo];
      }

      v15 = v13;
      v12 = [(VOTKeyboardManager *)self keyboardEventForKeyInfo:v13];
      v10 = [v12 command];
      v16 = [(VOTKeyboardManager *)self lastReleasedToSystemKeyEvent];

      if (v16)
      {
        if (([v6 isOptionKeyPressed] & 1) != 0 || objc_msgSend(v6, "isControlKeyPressed"))
        {
          v17 = [(VOTKeyboardManager *)self lastReleasedToSystemKeyEvent];
          v18 = [v17 eventRecord];
          v19 = [v18 copy];

          v20 = [v19 keyInfo];
          [v20 setKeyDown:0];

          [v19 setType:11];
          v21 = [v19 keyInfo];
          [v21 setModifierState:0];

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
      if (-[__CFString isEqualToString:](v10, "isEqualToString:", kVOTEventCommandSimpleTap) && [v6 keyDown])
      {
        [(VOTKeyboardManager *)self performSelector:"_axStartPassthroughTouch" withObject:0 afterDelay:0.5];
      }

      else
      {
        [(VOTKeyboardManager *)self _axEndPassthroughTouch];
      }

      if ([v6 keyDown])
      {

        v12 = 0;
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_42;
      }

      goto LABEL_56;
    }

    if ([VOTSharedWorkspace allowSingleLetterSearching])
    {
      v14 = [v6 eventRecord];
      [v14 originalType];
      if (!AXEventTypeIsVolumeButtonPress())
      {
        if ([v6 eventOrigin] == 4)
        {
        }

        else
        {
          v54 = [v6 eventOrigin];

          if (v54 != 1)
          {
            goto LABEL_26;
          }
        }

        v55 = [(VOTKeyboardManager *)self keyDownInfo];
        v56 = v55;
        if (!v55 || ([v55 isCommandKeyPressed] & 1) != 0 || (objc_msgSend(v56, "isControlKeyPressed") & 1) != 0)
        {
          v10 = 0;
        }

        else
        {
          if ([v6 isEscapeKey])
          {
            v57 = [v6 isShiftKeyPressed];
            v58 = &kVOTEventCommandEscape;
            if (v57)
            {
              v58 = &kVOTEventCommandShowSideApp;
            }
          }

          else
          {
            if (![v6 keyUp])
            {

LABEL_55:
              v12 = 0;
              v10 = &stru_1001CBF90;
              goto LABEL_56;
            }

            v58 = &kVOTEventCommandSingleLetterSearch;
          }

          v10 = *v58;
        }

        v12 = 0;
        if (!v10)
        {
LABEL_42:
          if ([v6 keyUp] && objc_msgSend(v6, "keyCode") == 41)
          {
            v24 = [v6 isShiftKeyPressed];
            v25 = &kVOTEventCommandShowSideApp;
            if (!v24)
            {
              v25 = &kVOTEventCommandEscape;
            }

            v26 = *v25;
            if (v26)
            {
              v10 = v26;
              goto LABEL_56;
            }
          }

          v27 = +[VOTCommandHelper commandHelper];
          if ([v27 helpEnabled])
          {
            if ([v6 keyUp])
            {

LABEL_98:
              if (-[NSString isEqualToString:](self->_lastCommand, "isEqualToString:", kVOTEventCommandStartHelp) && [v6 modifiersChanged] && ((objc_msgSend(v6, "isOptionKeyPressed") & 1) != 0 || objc_msgSend(v6, "isControlKeyPressed")))
              {
                lastCommand = self->_lastCommand;
                self->_lastCommand = 0;
              }

              else if ([v6 keyCode] != 57)
              {
                v47 = [VOTEvent keyEventWithCommand:0 keyInfo:0];

                v48 = [(VOTKeyboardManager *)self keyDownInfo];
                v49 = [v48 copy];

                if ([v6 keyUp])
                {
                  [v49 setChangedModifiers:{objc_msgSend(v6, "changedModifiers")}];
                }

                if ([v6 keyUp])
                {
                  v50 = v49;
                }

                else
                {
                  v50 = v6;
                }

                [v47 setKeyInfo:v50];
                [VOTSharedWorkspace dispatchCommand:v47];

                v10 = 0;
                v11 = 1;
                v12 = v47;
                goto LABEL_95;
              }

              goto LABEL_22;
            }

            v45 = [v6 modifiersChanged];

            if (v45)
            {
              goto LABEL_98;
            }
          }

          else
          {
          }

          v10 = 0;
        }

LABEL_56:
        v28 = [v6 characters];
        v29 = [v28 length];

        if (v29)
        {
          v30 = [v6 characters];
          LODWORD(v29) = [v30 characterAtIndex:0];
        }

        v31 = VOTLogKeyboard();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v51 = [v6 keyUp];
          v52 = [v6 characters];
          v53 = [VOTSharedWorkspace allowSingleLetterSearching];
          v59 = 67110146;
          *v60 = v51;
          *&v60[4] = 2114;
          *&v60[6] = v52;
          v61 = 1024;
          v62 = v29;
          v63 = 2114;
          v64 = v10;
          v65 = 1024;
          v66 = v53;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Key State: %d, Character(s): %{public}@ [%d], Command: %{public}@, Single Letter State: %d", &v59, 0x28u);
        }

        v32 = [VOTSharedWorkspace elementManager];
        v33 = [VOTSharedWorkspace currentElement];
        v34 = [v32 modifierKeyChoiceForElement:v33];

        modifierToggleSpeakingKeyDown = self->_modifierToggleSpeakingKeyDown;
        if ([v6 isControlKeyPressed] && self->_currentModifiers == 4)
        {
          LOBYTE(v36) = 1;
        }

        else if ([v6 keyCode] == 57)
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
        objc_storeStrong(&self->_lastCommand, v10);
        if (!v10)
        {
          if (sub_1000E1058(v6, self->_capsLockDown))
          {
            if ([v6 keyUp])
            {
              v39 = [(VOTKeyInfo *)self->_keyDownInfo characters];
              v40 = [v39 length];

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

        v37 = [v6 keyUp];
        if (v12)
        {
          if ((v37 & 1) == 0)
          {
            [(VOTKeyboardManager *)self _sendEvent:v12 withKeyInfo:v6 arrowMask:0];
            goto LABEL_83;
          }

          v38 = [(VOTKeyboardManager *)self keyDownInfo];
          [(VOTKeyboardManager *)self _sendEvent:v12 withKeyInfo:v38 arrowMask:0];
        }

        else
        {
          if ((v37 & 1) == 0)
          {
            [(VOTKeyboardManager *)self _sendEventForCommand:v10 withKeyInfo:v6 arrowMask:0];
            goto LABEL_83;
          }

          v38 = [(VOTKeyboardManager *)self keyDownInfo];
          [(VOTKeyboardManager *)self _sendEventForCommand:v10 withKeyInfo:v38 arrowMask:0];
        }

LABEL_83:
        v11 = !modifierToggleSpeakingKeyDown;
        [(VOTKeyboardManager *)self setControlKeyToggleSpeakingAllowed:0];
LABEL_84:
        if ([v6 keyCode] == 57 && (v34 & 2) != 0)
        {
          if ([v6 keyDown])
          {
            v43 = +[AXBackBoardServer server];
            [v43 setCapsLockLightOn:self->_fakeCapsLockOn];
          }

          v11 = 1;
        }

        if (([v6 keyDown] & 1) == 0)
        {
          [(VOTKeyboardManager *)self setKeyDownInfo:0];
        }

        if (!self->_currentModifiers && (([v6 keyUp] & 1) != 0 || objc_msgSend(v6, "modifiersChanged")))
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

  v10 = +[AXSystemAppServer server];
  [(__CFString *)v10 wakeUpDeviceIfNecessary];
  v11 = 0;
LABEL_96:

  return v11;
}

- (void)_axStartPassthroughTouch
{
  self->_passthroughStart = CGPointZero;
  v3 = [VOTSharedWorkspace currentElement];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 windowContextId];
    v5 = +[VOTElement systemWideElement];
    v6 = [VOTSharedWorkspace currentElement];
    [v6 centerPoint];
    [v5 convertPoint:v4 fromContextId:?];
    self->_passthroughStart.x = v7;
    self->_passthroughStart.y = v8;

    v9 = +[VOTElement systemWideElement];
    [v9 postFingerTouchAtPoint:v4 withForce:self->_passthroughStart.x withContextId:{self->_passthroughStart.y, 0.0}];

    v10 = +[VOTOutputManager outputManager];
    v11 = +[VOSOutputEvent DidBeginPassthrough];
    [v10 sendEvent:v11];

    v3 = v12;
  }
}

- (void)_axEndPassthroughTouch
{
  p_passthroughStart = &self->_passthroughStart;
  if (CGPointZero.x != self->_passthroughStart.x || CGPointZero.y != self->_passthroughStart.y)
  {
    v5 = +[VOTElement systemWideElement];
    v6 = [VOTSharedWorkspace currentElement];
    [v5 postFingerLiftAtPoint:objc_msgSend(v6 withContextId:{"windowContextId"), self->_passthroughStart.x, self->_passthroughStart.y}];

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

- (BOOL)_handleArrowKeyEvent:(id)a3
{
  v4 = a3;
  if ([v4 isArrowKey] && (sub_1000E1058(v4, self->_capsLockDown) & 1) == 0)
  {
    v6 = *(&xmmword_1001FEE40 + [v4 keyCode] - 79);
    quickNavStateMask = self->_quickNavStateMask;
    v8 = [v4 keyCode] == 79 || objc_msgSend(v4, "keyCode") == 80;
    v9 = [v4 keyCode];
    if ([v4 keyDown])
    {
      self->_quickNavStateMask |= v6;
      if (v8)
      {
        v10 = v9 != 79;
        if (self->_quickNavDownStateTime[v10] == 0.0)
        {
          self->_quickNavDownStateTime[v10] = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    else if ([v4 keyUp])
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

        self->_quickNavDownStateTime[v9 != 79] = 0.0;
      }

      self->_quickNavStateMask &= ~v6;
    }

    if ([v4 keyDown] && quickNavStateMask != self->_quickNavStateMask)
    {
      [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer cancel];
    }

    if ([v4 keyDown])
    {
      v13 = self->_quickNavStateMask;
      self->_quickNavLastDownState = v13;
      if (quickNavStateMask == v13)
      {
        [(VOTKeyboardManager *)self _handleQuickNavPress:v4];
      }

      else
      {
        [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer dispatchAfterDelay:v4 withObject:0.25];
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
    if ([v4 keyUp])
    {
      if (!self->_quickNavStateMask)
      {
        if (quickNavStateMask)
        {
          [(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer cancel];
          [(VOTKeyboardManager *)self _handleQuickNavPress:v4];
          if (self->_isQuickNavOn && self->_quickNavDidSendDown)
          {
            self->_quickNavDidSendDown = 0;
            -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v17 unsignedShortValue], objc_msgSend(v4, "modifierState"), 0, 0, 1);
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

        if ([v4 keyDown])
        {
          if ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isCancelled]& 1) == 0)
          {
            [(VOTKeyboardManager *)self _handleQuickNavDownArrowRepostPress:v4];
          }

          [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer dispatchAfterDelay:v4 withObject:0.0799999982];
        }

        else if ([v4 keyUp])
        {
          if ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isPending]&& ([(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer isCancelled]& 1) == 0)
          {
            [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer cancel];
            [(VOTKeyboardManager *)self _handleQuickNavDownArrowRepostPress:v4];
          }

          self->_quickNavDidSendDown = 0;
          v5 = 1;
          -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v17 unsignedShortValue], objc_msgSend(v4, "modifierState"), 0, 0, 1);
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

- (void)_handleAnnouncementsForKeyInfo:(id)a3
{
  v3 = a3;
  if ([v3 keyDown])
  {
    if ([v3 keyCode] == 57)
    {
      v4 = [VOTSharedWorkspace elementManager];
      v5 = [VOTSharedWorkspace currentElement];
      v6 = [v4 modifierKeyChoiceForElement:v5];

      if ((v6 & 2) == 0)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (void)_updateEventFlags:(id)a3
{
  v7 = a3;
  v4 = [v7 modifierState];
  self->_currentModifiers = v4;
  keyboardHelpMask = self->_keyboardHelpMask;
  if ((v4 & 8) != 0)
  {
    if ((keyboardHelpMask & 8) == 0)
    {
LABEL_3:
      v6 = 8;
      if ((v4 & 4) != 0)
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
  if ((v4 & 4) != 0)
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
  if ((v4 & 0x40) != 0)
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
  if ((v4 & 2) != 0)
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
  if (v4)
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
  if ((v4 & 0x10) != 0)
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
  self->_keyboardHelpMask = [v7 modifierState];
  [v7 setChangedModifiers:v6];
}

- (void)_dispatchEventRepresentationIntoSystem:(id)a3
{
  v4 = a3;
  v5 = [[VOTKeyInfo alloc] initWithEventRepresentation:v4];

  [(VOTKeyboardManager *)self _dispatchKeyEventIntoSystem:v5];
}

- (void)_handleCapsLockToggle:(id)a3
{
  v23 = a3;
  v4 = [VOTSharedWorkspace elementManager];
  v5 = [VOTSharedWorkspace currentElement];
  v6 = [v4 modifierKeyChoiceForElement:v5];

  if ((v6 & 2) != 0)
  {
    self->_fakeCapsLockOn ^= 1u;
    v7 = [AXEventRepresentation keyRepresentationWithType:10];
    v8 = [v7 keyInfo];
    [v8 setKeyCode:57];

    if (self->_fakeCapsLockOn)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v7 keyInfo];
    [v10 setModifierState:v9];

    v11 = [VOTSharedWorkspace currentElement];
    v12 = [v11 windowContextId];
    v13 = [v23 eventRecord];
    [v13 setContextId:v12];

    v14 = [v7 keyInfo];
    [v14 setKeyDown:1];

    v15 = [v23 eventRecord];
    v16 = [v15 clientId];
    [v7 setClientId:v16];

    [(VOTKeyboardManager *)self _dispatchEventRepresentationIntoSystem:v7];
    v17 = [v7 copy];
    [v17 setType:11];
    v18 = [v17 keyInfo];
    [v18 setKeyDown:0];

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

- (void)_handleModifierCapsLockBehavior:(id)a3
{
  v4 = a3;
  if ([v4 isCapsLockKeyDown])
  {
    self->_capsLockDown = 1;
    goto LABEL_9;
  }

  if (![v4 isCapsLockKeyUp])
  {
    goto LABEL_8;
  }

  self->_capsLockDown = 0;
  if (([v4 modifierState] & 1) != 0 || self->_capsLockTap1 > 0.0 && CFAbsoluteTimeGetCurrent() - self->_capsLockTap1 < 0.3)
  {
    [(VOTKeyboardManager *)self _handleCapsLockToggle:v4];
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
    v5 = [v4 voiceOverSoundCurtain];

    if (!v5)
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
  v11 = [VOTSharedWorkspace selectedLanguage];
  v12 = sub_1000095FC(v10, 0, v11);
}

- (void)_processVolumeButtonsForCurtainReset:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E409C;
  v6[3] = &unk_1001C76E8;
  v6[4] = self;
  v5 = objc_retainBlock(v6);
  if ([v4 type] == 1008)
  {
    [(VOTKeyboardManager *)self setLastVolumeDownButtonDownTime:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    if ([v4 type] != 1006)
    {
      if ([v4 type] == 1009)
      {
        [(VOTKeyboardManager *)self setLastVolumeDownButtonUpTime:CFAbsoluteTimeGetCurrent()];
      }

      else
      {
        if ([v4 type] != 1007)
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

- (void)_handleKeyboardKeyEvent:(id)a3 isRepeatedEvent:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (([VOTSharedWorkspace perkinsKeyboardInputEnabled] & 1) == 0 && !objc_msgSend(VOTSharedWorkspace, "keyboardBrailleUIEnabled") || objc_msgSend(v8, "eventOrigin") != 4 || self->_currentModifiers || (+[VOTBrailleManager manager](VOTBrailleManager, "manager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "handleKeyboardPerkinsInput:chordOnly:", v8, 0), v6, (v7 & 1) == 0))
  {
    [(VOTKeyboardManager *)self _handleNonPerkinsKeyboardKeyEvent:v8 isRepeatedEvent:v4];
  }
}

- (void)_handleNonPerkinsKeyboardKeyEvent:(id)a3 isRepeatedEvent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  currentModifiers = self->_currentModifiers;
  v23 = v6;
  if (currentModifiers != [v6 modifierState])
  {
    [v23 setModifiersChanged:1];
  }

  if (!v4)
  {
    v8 = [v23 eventRecord];
    [(VOTKeyboardManager *)self _processVolumeButtonsForCurtainReset:v8];
  }

  [(VOTKeyboardManager *)self _handleModifierCapsLockBehavior:v23];
  [(VOTKeyboardManager *)self _updateEventFlags:v23];
  [(VOTKeyboardManager *)self _handleAnnouncementsForKeyInfo:v23];
  [(VOTKeyboardManager *)self _updateConsecutiveKeyCount:v23];
  v9 = +[VOTBrailleManager manager];
  v10 = [v9 hasActiveBrailleDisplay];

  if (v10 && [(VOTKeyboardManager *)self _handleBrailleKeyEvent:v23])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(VOTKeyboardManager *)self _dispatchCommandForKeyInfo:v23 isRepeatedEvent:v4];
  }

  if ([v23 eventOrigin] == 4 && -[VOTKeyboardManager isQuickNavOn](self, "isQuickNavOn"))
  {
    v12 = [(VOTKeyboardManager *)self keyDownInfo];
    v13 = [v12 isArrowKey];

    if ((v13 | v11))
    {
      goto LABEL_25;
    }
  }

  else if (v11)
  {
    goto LABEL_25;
  }

  v14 = +[VOTCommandHelper commandHelper];
  v15 = [v14 helpEnabled];

  if ((v15 & 1) == 0)
  {
    if ([VOTSharedWorkspace playKeyboardClicksOnHWInput])
    {
      v16 = [v23 eventRecord];
      v17 = [v16 type];

      if (v17 == 10)
      {
        v18 = +[VOTOutputManager outputManager];
        [v18 playSoundFast:@"KeyboardClick"];
      }
    }

    [(VOTKeyboardManager *)self _dispatchKeyEventIntoSystem:v23];
    [(SCRCTargetSelectorTimer *)self->_keyRepeatTimer cancel];
    if ([v23 keyDown] && _AXSKeyRepeatEnabled() && !-[VOTKeyboardManager _keyInfoIsModifierOnly:](self, "_keyInfoIsModifierOnly:", v23))
    {
      if (v4)
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
  v19 = [(VOTKeyboardManager *)self testingProcessEventCallback];

  v21 = v23;
  if (v19)
  {
    v22 = [(VOTKeyboardManager *)self testingProcessEventCallback];
    (v22)[2](v22, v23);

    v21 = v23;
  }

  _objc_release_x1(v20, v21);
}

- (BOOL)_handleBrailleKeyEvent:(id)a3
{
  v3 = a3;
  if ([v3 keyCode] == 41 && !objc_msgSend(v3, "keyUp") || objc_msgSend(v3, "keyCode") != 41 && !objc_msgSend(v3, "keyDown"))
  {
    goto LABEL_21;
  }

  v4 = [v3 keyCode];
  v5 = 0;
  if (v4 > 76)
  {
    switch(v4)
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

  switch(v4)
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

- (BOOL)_keyInfoIsModifierOnly:(id)a3
{
  v3 = a3;
  v4 = [v3 keyCode] == 227 || objc_msgSend(v3, "keyCode") == 231 || objc_msgSend(v3, "keyCode") == 225 || objc_msgSend(v3, "keyCode") == 229 || objc_msgSend(v3, "keyCode") == 224 || objc_msgSend(v3, "keyCode") == 228 || objc_msgSend(v3, "keyCode") == 226 || objc_msgSend(v3, "keyCode") == 230 || objc_msgSend(v3, "keyCode") == 57;

  return v4;
}

- (void)_dispatchKeyEventIntoSystem:(id)a3
{
  v24 = a3;
  v4 = [VOTSharedWorkspace currentElement];
  v5 = [v4 windowContextId];
  v6 = [VOTSharedWorkspace elementManager];
  v7 = [v6 isItemChooserVisible];

  if (v7)
  {
    if (v5)
    {
      v8 = [v24 eventRecord];
      [v8 setClientId:0];
    }

    v9 = [v24 eventRecord];
    [v9 setContextId:v5];
  }

  v10 = [v24 eventRecord];
  v11 = [v10 contextId];

  if (!v11)
  {
    v12 = [v24 eventRecord];
    [v12 setContextId:v5];
  }

  v13 = +[VOTWorkspace sharedWorkspace];
  v14 = [v13 inUnitTestMode];

  if (v14)
  {
    v15 = +[VOTWorkspace sharedWorkspace];
    v16 = [v24 eventRecord];
    [v15 notePostedEventForUnitTesting:v16];
  }

  [(VOTKeyboardManager *)self setLastReleasedToSystemKeyEvent:v24];
  [(VOTKeyboardManager *)self setLastReleasedToSystemKeyEventTime:CFAbsoluteTimeGetCurrent()];
  v17 = [v24 keyCode];
  if ([v24 keyCode] == 42 || -[VOTKeyInfo isEqual:](self->_lastKeyForTapCount, "isEqual:", v24) && self->_consecutiveKeyPressCount >= 2)
  {
    v18 = [v24 copy];
    [v18 setKeyDown:0];
    v19 = +[AXEventTapManager sharedManager];
    v20 = [v18 eventRecord];
    [v19 sendHIDSystemEvent:v20 repostCreatorHIDEvent:0 senderID:0x8000000817319373];
  }

  if (v17)
  {
    v21 = +[AXEventTapManager sharedManager];
    v22 = [v24 eventRecord];
    [v21 sendHIDSystemEvent:v22 repostCreatorHIDEvent:0 senderID:0x8000000817319373];
  }

  else
  {
    if ([v4 doesHaveTraits:kAXWebContentTrait])
    {
      v23 = [v4 application];

      v4 = v23;
    }

    v21 = [v24 eventRecord];
    [v4 dispatchKeyboardEvent:v21];
  }
}

- (void)_keyRepeat:(id)a3
{
  v4 = a3;
  if (([(SCRCTargetSelectorTimer *)self->_keyRepeatTimer isCancelled]& 1) == 0)
  {
    [(VOTKeyboardManager *)self _handleKeyboardKeyEvent:v4 isRepeatedEvent:1];
  }
}

- (void)_sendEvent:(id)a3 withKeyInfo:(id)a4 arrowMask:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  if (a5 >= 1)
  {
    v9 = [NSNumber numberWithInteger:a5];
    [v12 setObject:v9 forIndex:103];
  }

  v10 = [(VOTKeyboardManager *)self testingEventDispatchTap];

  if (v10)
  {
    v11 = [(VOTKeyboardManager *)self testingEventDispatchTap];
    (v11)[2](v11, v12);
  }

  [VOTSharedWorkspace dispatchCommand:v12];
}

- (void)_sendEventForCommand:(id)a3 withKeyInfo:(id)a4 arrowMask:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  if ([v10 length])
  {
    v9 = [VOTEvent keyEventWithCommand:v10 keyInfo:v8];
    [(VOTKeyboardManager *)self _sendEvent:v9 withKeyInfo:v8 arrowMask:a5];
  }
}

- (void)_postKeyboardKey:(id)a3 keyCode:(unsigned __int16)a4 eventFlags:(unsigned int)a5 keyFlags:(unsigned __int16)a6 keyDown:(BOOL)a7 source:(unsigned __int16)a8
{
  v8 = a7;
  v9 = *&a5;
  v10 = a4;
  v18 = a3;
  if (v8)
  {
    v12 = 10;
  }

  else
  {
    v12 = 11;
  }

  v13 = [AXEventRepresentation keyRepresentationWithType:v12];
  v14 = [v13 keyInfo];
  [v14 setModifiedInput:v18];
  [v14 setUnmodifiedInput:v18];
  [v14 setKeyCode:v10];
  [v14 setModifierState:v9];
  [v14 setKeyDown:v8];
  [(VOTKeyboardManager *)self setLastDispatchedKeyEvent:v13];
  [(VOTKeyboardManager *)self setLastDispatchedKeyEventTime:CFAbsoluteTimeGetCurrent()];
  if ([v14 keyCode] && !objc_msgSend(v18, "length"))
  {
    v16 = [VOTSharedWorkspace currentElement];
    [v13 setContextId:{objc_msgSend(v16, "windowContextId")}];

    v17 = [VOTSharedWorkspace currentElement];
    [v13 setDisplayId:{objc_msgSend(v17, "displayId")}];

    [(VOTKeyboardManager *)self _dispatchEventRepresentationIntoSystem:v13];
  }

  else
  {
    v15 = [VOTSharedWorkspace currentElement];
    [v15 dispatchKeyboardEvent:v13];
  }
}

- (void)_handleQuickNavDownArrowRepostPress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = +[VOTCommandHelper commandHelper];
    v6 = [v5 helpEnabled];

    if (v6)
    {
      v7 = [VOTEvent keyEventWithCommand:0 keyInfo:v8];
      [VOTSharedWorkspace dispatchCommand:v7];
    }

    else
    {
      self->_quickNavDidSendDown = 1;
      -[VOTKeyboardManager _postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:](self, "_postKeyboardKey:keyCode:eventFlags:keyFlags:keyDown:source:", &stru_1001CBF90, [v8 keyCode], objc_msgSend(v8, "modifierState"), 0, 1, 1);
    }

    v4 = v8;
  }
}

- (void)_handleQuickNavPress:(id)a3
{
  v4 = a3;
  if (self->_quickNavLastDownState == 0xFFFFFFFF00000000 && (quickNavLastRecordedActivation = self->_quickNavLastRecordedActivation, [(VOTKeyboardManager *)self quickNavDownDurationAllowedAcceptance], quickNavLastRecordedActivation < v6) && self->_quickNavLastRecordedActivation > 0.0)
  {
    [(SCRCTargetSelectorTimer *)self->_quickNavRepostTimer cancel];
    [(VOTKeyboardManager *)self updateQuickNavState:!self->_isQuickNavOn];
    self->_explictlyEnabledQuickNav = 1;
    [(VOTKeyboardManager *)self _sendEventForCommand:kVOTEventCommandAnnounceQuickNav withKeyInfo:v4 arrowMask:3];
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

      v11 = [AXSSKeyChord quickNavKeyChordWithInfo:v4 arrowMask:v10];
      v12 = +[VOSCommandResolver resolverForCurrentHost];
      [v12 setKeyboardMode:1];
      v13 = [(VOSCommandManager *)self->_commandManager commandForKeyChord:v11 withResolver:v12];
      v14 = [v13 votEventCommandName];

      v15 = VOTLogKeyboard();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v16)
        {
          v17 = [v11 displayValue];
          v19 = 138412802;
          v20 = v13;
          v21 = 2112;
          v22 = v17;
          v23 = 2112;
          v24 = v4;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "✅ handling quickNav vosCommand: '%@' for keys '%@' info '%@'", &v19, 0x20u);
        }

        v15 = [v13 votEventCommandName];
        [(VOTKeyboardManager *)self _sendEventForCommand:v15 withKeyInfo:v4 arrowMask:v10];
      }

      else if (v16)
      {
        v18 = [v11 displayValue];
        v19 = 138412546;
        v20 = v18;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "❌ no customized quickNav command found for keys '%@' info '%@'", &v19, 0x16u);
      }
    }
  }
}

- (void)_handleQuickNavPressTimer:(id)a3
{
  v4 = a3;
  if (([(SCRCTargetSelectorTimer *)self->_quickNavKeyTimer isCancelled]& 1) == 0)
  {
    [(VOTKeyboardManager *)self _handleQuickNavPress:v4];
  }
}

- (void)_postEvent:(id)a3
{
  v3 = a3;
  v5 = +[VOTElement systemWideElement];
  v4 = [v3 eventRecord];

  [v5 repostEvent:v4];
}

- (void)clearConsecutiveKeyPressCount
{
  self->_consecutiveKeyPressCount = 1;
  self->_lastKeyForTapCount = 0;
  _objc_release_x1();
}

@end