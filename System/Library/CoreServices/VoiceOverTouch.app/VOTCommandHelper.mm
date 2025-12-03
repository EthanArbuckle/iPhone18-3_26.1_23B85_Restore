@interface VOTCommandHelper
+ (id)commandHelper;
- (BOOL)_commandIsSupportedByTV:(id)v;
- (CGRect)practiceRegion;
- (VOTCommandHelper)init;
- (id)_keyboardKeyStringForEvent:(id)event spoken:(BOOL)spoken;
- (id)_stringForBrailleGestureCommand:(id)command;
- (void)_processFallbackHelpForEvent:(id)event command:(id)command commandHelpText:(id *)text activationSpokenHelpText:(id *)helpText activationDisplayedHelpText:(id *)displayedHelpText;
- (void)_processHelpForEvent:(id)event userCommandContext:(id)context commandHelpText:(id *)text activationSpokenHelpText:(id *)helpText activationDisplayedHelpText:(id *)displayedHelpText;
- (void)_updateAccelerometerDataIfNeededAndAnnounce:(BOOL)announce;
- (void)dealloc;
- (void)processHelpForEvent:(id)event;
- (void)setHelpEnabled:(BOOL)enabled;
@end

@implementation VOTCommandHelper

+ (id)commandHelper
{
  v2 = qword_1001FED60;
  if (!qword_1001FED60)
  {
    v3 = [objc_allocWithZone(VOTCommandHelper) init];
    v4 = qword_1001FED60;
    qword_1001FED60 = v3;

    v2 = qword_1001FED60;
  }

  return v2;
}

- (VOTCommandHelper)init
{
  v7.receiver = self;
  v7.super_class = VOTCommandHelper;
  v2 = [(VOTCommandHelper *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSAccelerometer);
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v3;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  v3.receiver = self;
  v3.super_class = VOTCommandHelper;
  [(VOTCommandHelper *)&v3 dealloc];
}

- (void)setHelpEnabled:(BOOL)enabled
{
  self->_helpEnabled = enabled;
  [(VOTCommandHelper *)self _updateAccelerometerDataIfNeededAndAnnounce:0];
  if (!self->_helpEnabled)
  {
    [(VOTCommandHelper *)self setPracticeRegion:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(VOTCommandHelper *)self setPracticeElement:0];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VOTHelpEnabledChangedNotification" object:0];
}

- (void)_updateAccelerometerDataIfNeededAndAnnounce:(BOOL)announce
{
  if (self->_helpEnabled && (v4 = announce, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 voiceOverHelpMode], v5, v6 == 2))
  {
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
    currentTypingMode = self->_currentTypingMode;
    self->_currentTypingMode = [(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]== 5;
    if (v4)
    {
      currentDeviceOrientation = [(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation];
      if (self->_currentTypingMode != currentTypingMode)
      {
        v10 = currentDeviceOrientation;
        selectedLanguage = [VOTSharedWorkspace selectedLanguage];
        v15 = selectedLanguage;
        if (v10 == 5)
        {
          v12 = @"braille.table.top";
        }

        else
        {
          v12 = @"braille.screen.away";
        }

        v13 = sub_1000516CC(off_1001FDDD0, v12, 0, selectedLanguage);
        v14 = sub_1000095FC(v13, 0, v15);
      }
    }
  }

  else
  {
    accelerometer = self->_accelerometer;

    [(BKSAccelerometer *)accelerometer setOrientationEventsEnabled:0];
  }
}

- (id)_keyboardKeyStringForEvent:(id)event spoken:(BOOL)spoken
{
  spokenCopy = spoken;
  eventCopy = event;
  v6 = [eventCopy objectForIndex:103];
  v7 = @" + ";
  if (spokenCopy)
  {
    v7 = @", ";
  }

  v8 = v7;
  if (v6)
  {
    v9 = +[NSMutableString string];
    integerValue = [v6 integerValue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B6D6C;
    v37[3] = &unk_1001C9D88;
    v11 = v9;
    v38 = v11;
    v39 = v8;
    v12 = objc_retainBlock(v37);
    v13 = v12;
    if (integerValue)
    {
      (v12[2])(v12, @"VOSKey.left");
      if ((integerValue & 2) == 0)
      {
LABEL_6:
        if ((integerValue & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((integerValue & 2) == 0)
    {
      goto LABEL_6;
    }

    (v13)[2](v13, @"VOSKey.right");
    if ((integerValue & 4) == 0)
    {
LABEL_7:
      if ((integerValue & 8) == 0)
      {
LABEL_9:
        v14 = v11;

        goto LABEL_59;
      }

LABEL_8:
      (v13)[2](v13, @"VOSKey.down");
      goto LABEL_9;
    }

LABEL_20:
    (v13)[2](v13, @"VOSKey.up");
    if ((integerValue & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  keyInfo = [eventCopy keyInfo];
  eventRecord = [keyInfo eventRecord];
  changedModifiers = [keyInfo changedModifiers];
  if (!changedModifiers)
  {
    if ([keyInfo isAppleVendorKey])
    {
      mediaKeyCode = [keyInfo mediaKeyCode];
      if (mediaKeyCode == 32)
      {
        v20 = @"brightnessUp";
        goto LABEL_45;
      }

      if (mediaKeyCode == 33)
      {
        v20 = @"brightnessDown";
        goto LABEL_45;
      }

      goto LABEL_71;
    }

    if (![keyInfo isMediaKey])
    {
      if (eventRecord)
      {
        if ([eventRecord originalType] == 1007)
        {
          v20 = @"volumeUp";
          goto LABEL_45;
        }

        if ([eventRecord originalType] == 1009)
        {
          v20 = @"volumeDown";
          goto LABEL_45;
        }
      }

      keyCode = [keyInfo keyCode];
      if ((keyCode - 58) >= 0xC)
      {
        v28 = 0;
        v20 = @"enter";
        if (keyCode > 77)
        {
          if (keyCode > 80)
          {
            if (keyCode == 81)
            {
              v20 = @"down";
            }

            else if (keyCode == 82)
            {
              v20 = @"up";
            }

            else
            {
              v14 = 0;
              if (keyCode != 88)
              {
                goto LABEL_47;
              }
            }
          }

          else if (keyCode == 78)
          {
            v20 = @"pagedown";
          }

          else if (keyCode == 79)
          {
            v20 = @"right";
          }

          else
          {
            v20 = @"left";
          }
        }

        else if (keyCode > 73)
        {
          if (keyCode == 74)
          {
            v20 = @"home";
          }

          else if (keyCode == 75)
          {
            v20 = @"pageup";
          }

          else
          {
            v14 = 0;
            if (keyCode != 77)
            {
              goto LABEL_47;
            }

            v20 = @"end";
          }
        }

        else if (keyCode != 40)
        {
          if (keyCode == 41)
          {
            v20 = @"escape";
          }

          else
          {
            v14 = 0;
            if (keyCode != 42)
            {
              goto LABEL_47;
            }

            v20 = @"backspace";
          }
        }

        goto LABEL_45;
      }

      v20 = [NSString stringWithFormat:@"F%i", (keyCode - 57)];
      if (v20)
      {
LABEL_45:
        v27 = [NSString stringWithFormat:@"VOSKey.%@", v20];
        v14 = VOSLocString();
        goto LABEL_46;
      }

LABEL_71:
      v28 = 0;
      v14 = 0;
      goto LABEL_47;
    }

    mediaKeyCode2 = [keyInfo mediaKeyCode];
    v28 = 0;
    if (mediaKeyCode2 > 183)
    {
      if (mediaKeyCode2 > 429)
      {
        if (mediaKeyCode2 == 430)
        {
          v20 = @"layout";
        }

        else if (mediaKeyCode2 == 433)
        {
          v20 = @"screensaver";
        }

        else
        {
          v14 = 0;
          if (mediaKeyCode2 != 545)
          {
            goto LABEL_47;
          }

          v20 = @"search";
        }
      }

      else if (mediaKeyCode2 == 184)
      {
        v20 = @"eject";
      }

      else if (mediaKeyCode2 == 205)
      {
        v20 = @"playPause";
      }

      else
      {
        v14 = 0;
        if (mediaKeyCode2 != 226)
        {
          goto LABEL_47;
        }

        v20 = @"mute";
      }

      goto LABEL_45;
    }

    if (mediaKeyCode2 > 180)
    {
      if (mediaKeyCode2 != 181)
      {
        if (mediaKeyCode2 != 182)
        {
          v20 = @"stop";
          goto LABEL_45;
        }

LABEL_85:
        v20 = @"previousTrack";
        goto LABEL_45;
      }
    }

    else
    {
      if (mediaKeyCode2 == 178)
      {
        v20 = @"record";
        goto LABEL_45;
      }

      if (mediaKeyCode2 != 179)
      {
        v14 = 0;
        if (mediaKeyCode2 != 180)
        {
          goto LABEL_47;
        }

        goto LABEL_85;
      }
    }

    v20 = @"nextTrack";
    goto LABEL_45;
  }

  v18 = changedModifiers;
  v14 = +[NSMutableString string];
  if ((v18 & 8) != 0)
  {
    v21 = VOSLocString();
    [v14 appendStringWithComma:v21];

    if ((v18 & 1) == 0)
    {
LABEL_13:
      if ((v18 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = VOSLocString();
  [v14 appendStringWithComma:v22];

  if ((v18 & 2) == 0)
  {
LABEL_14:
    if ((v18 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = VOSLocString();
  [v14 appendStringWithComma:v23];

  if ((v18 & 4) == 0)
  {
LABEL_15:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    v25 = VOSLocString();
    [v14 appendStringWithComma:v25];

    if ((v18 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = VOSLocString();
  [v14 appendStringWithComma:v24];

  if ((v18 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v26 = VOSLocString();
  [v14 appendStringWithComma:v26];

  if ([keyInfo isKeyboardSelectKey])
  {
    v27 = VOSLocString();
    [v14 appendStringWithComma:v27];
    v20 = 0;
LABEL_46:

    v28 = v20;
    goto LABEL_47;
  }

LABEL_33:
  v28 = 0;
LABEL_47:
  if (![v14 length])
  {
    if ([keyInfo isControlKeyPressed])
    {
      [keyInfo originalCharacters];
    }

    else
    {
      [keyInfo characters];
    }
    v30 = ;
    if ([v30 length])
    {
      if ([v30 length] == 1 && (+[NSCharacterSet uppercaseLetterCharacterSet](NSCharacterSet, "uppercaseLetterCharacterSet"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "characterIsMember:", objc_msgSend(v30, "characterAtIndex:", 0)), v31, v32))
      {
        v33 = sub_1000511CC(off_1001FDDD0, @"CapitalLetterFormat", 0);
        v34 = [NSString stringWithFormat:v33, v30];

        v14 = v33;
      }

      else
      {
        v34 = v30;
      }

      v14 = v34;
    }
  }

LABEL_59:

  return v14;
}

- (id)_stringForBrailleGestureCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:kVOTEventCommandNextElement] && self->_currentTypingMode == 1 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandPreviousElement) && !self->_currentTypingMode || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandPreviousElement) && self->_currentTypingMode == 1 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandNextElement) && !self->_currentTypingMode || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandSearchRotorDown) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandSearchRotorUp) & 1) != 0 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandMoveToLinkedUI) && self->_currentTypingMode == 1 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandCustomTwoFingerSwipeLeft) && !self->_currentTypingMode || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandReadAll) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandScrollLeftPage) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandScrollRightPage) & 1) != 0 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandCustomTwoFingerSwipeLeft) && self->_currentTypingMode == 1 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandMoveToLinkedUI) && !self->_currentTypingMode || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandScrollDownPage) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandScrollUpPage) & 1) != 0 || objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandTracking))
  {
    v5 = VOSLocString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)processHelpForEvent:(id)event
{
  eventCopy = event;
  command = [eventCopy command];
  Current = CFAbsoluteTimeGetCurrent();
  if (([command isEqualToString:kVOTEventCommandIdle] & 1) == 0 && (!objc_msgSend(command, "isEqualToString:", kVOTEventCommandTracking) || -[NSString isEqualToString:](self->_lastCommand, "isEqualToString:", kVOTEventCommandTracking) || Current - self->_lastCommandOutputTime >= 1.5) && (!objc_msgSend(command, "isEqualToString:", kVOTEventCommandSystemToggleQuickNote) || AXDeviceSupportsQuickNote()))
  {
    userCommandContext = [eventCopy userCommandContext];
    if (userCommandContext)
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v8 = &v31;
      v9 = &v30;
      [(VOTCommandHelper *)self _processHelpForEvent:eventCopy userCommandContext:userCommandContext commandHelpText:&v32 activationSpokenHelpText:&v31 activationDisplayedHelpText:&v30];
      v10 = v32;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v8 = &v28;
      v9 = &v27;
      [(VOTCommandHelper *)self _processFallbackHelpForEvent:eventCopy command:command commandHelpText:&v29 activationSpokenHelpText:&v28 activationDisplayedHelpText:&v27];
      v10 = v29;
    }

    v11 = v10;
    v12 = *v8;
    v13 = *v9;
    if (self->_practiceElement)
    {
      v14 = objc_allocWithZone(NSArray);
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = &stru_1001CBF90;
      }

      v16 = [v14 initWithObjects:{v15, v11, command, 0}];
      [(VOTElement *)self->_practiceElement setGesturePracticeInfo:v16];
    }

    if (![command isEqualToString:self->_lastCommand] || (+[VOTOutputManager outputManager](VOTOutputManager, "outputManager"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isSpeaking"), v17, (v18 & 1) == 0))
    {
      v19 = [objc_allocWithZone(VOTOutputRequest) init];
      if ([v12 length])
      {
        v20 = [v19 addString:v12];
      }

      if ([v11 length])
      {
        v21 = [v19 addString:v11];
      }

      practiceElement = self->_practiceElement;
      if (practiceElement)
      {
        shouldSpeakHelpInGestureArea = [(VOTElement *)practiceElement shouldSpeakHelpInGestureArea];
      }

      else
      {
        shouldSpeakHelpInGestureArea = 1;
      }

      if ([v19 containsActions] && shouldSpeakHelpInGestureArea)
      {
        [v19 setGeneratesBraille:1];
        [v19 send];
      }

      objc_storeStrong(&self->_lastCommand, command);
      self->_lastCommandOutputTime = Current;
      if ([command isEqualToString:kVOTEventCommandStartHelp] && !self->_practiceElement)
      {
        selectedLanguage = [VOTSharedWorkspace selectedLanguage];
        v25 = sub_1000516CC(off_1001FDDD0, @"stopping.help.mode", 0, selectedLanguage);
        v26 = sub_1000095FC(v25, 2, selectedLanguage);

        [(VOTCommandHelper *)self setHelpEnabled:0];
      }
    }
  }
}

- (void)_processHelpForEvent:(id)event userCommandContext:(id)context commandHelpText:(id *)text activationSpokenHelpText:(id *)helpText activationDisplayedHelpText:(id *)displayedHelpText
{
  contextCopy = context;
  command = [contextCopy command];
  localizedName = [command localizedName];

  gesture = [contextCopy gesture];

  if (gesture)
  {
    gesture2 = [contextCopy gesture];
    localizedName2 = [gesture2 localizedName];

    gesture3 = [contextCopy gesture];
    localizedName3 = [gesture3 localizedName];
LABEL_5:
    v18 = localizedName3;

    goto LABEL_6;
  }

  localizedName2 = [contextCopy keyChord];

  if (localizedName2)
  {
    keyChord = [contextCopy keyChord];
    localizedName2 = [keyChord displayValue];

    gesture3 = [contextCopy keyChord];
    localizedName3 = [gesture3 displayValue];
    goto LABEL_5;
  }

  v18 = 0;
LABEL_6:
  v19 = localizedName;
  *text = localizedName;
  v20 = localizedName2;
  *helpText = localizedName2;
  v21 = v18;
  *displayedHelpText = v18;
}

- (void)_processFallbackHelpForEvent:(id)event command:(id)command commandHelpText:(id *)text activationSpokenHelpText:(id *)helpText activationDisplayedHelpText:(id *)displayedHelpText
{
  eventCopy = event;
  commandCopy = command;
  v14 = +[AXSettings sharedInstance];
  voiceOverHelpMode = [v14 voiceOverHelpMode];

  if ([commandCopy isEqualToString:kVOTEventCommandTracking])
  {
    localizedName = VOSLocString();
    v17 = VOSLocString();
    v18 = v17;
LABEL_30:
    v29 = localizedName;
    *text = localizedName;
    v30 = v18;
    *helpText = v18;
    v31 = v17;
    *displayedHelpText = v17;

    goto LABEL_31;
  }

  if (voiceOverHelpMode > 1)
  {
    if (voiceOverHelpMode == 2)
    {
      localizedName = [(VOTCommandHelper *)self _stringForBrailleGestureCommand:commandCopy];
    }

    else
    {
      localizedName = 0;
    }
  }

  else
  {
    v19 = [VOSCommand commandForVOSEventCommand:commandCopy];
    localizedName = [v19 localizedName];
    if (![localizedName length])
    {
      v20 = VOTLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10012E068(v19, commandCopy, v20);
      }
    }
  }

  if ([VOTSharedWorkspace allowSingleLetterSearching] && objc_msgSend(eventCopy, "isKeyEvent") && objc_msgSend(commandCopy, "isEqualToString:", kVOTEventCommandSingleLetterSearch))
  {
    v21 = +[VOTKeyboardManager keyboardManager];
    keyInfo = [eventCopy keyInfo];
    v23 = [v21 singleLetterCommandForKeyInfo:keyInfo];

    if (v23)
    {
      v24 = [VOSCommand commandForVOSEventCommand:v23];
      localizedName2 = [v24 localizedName];

      if (![localizedName2 length])
      {
        v26 = VOTLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412802;
          v33 = v24;
          v34 = 2112;
          v35 = commandCopy;
          v36 = 2112;
          v37 = v23;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "No help text found for transformed command: '%@'. name: '%@' (actual: '%@')", &v32, 0x20u);
        }
      }

      localizedName = localizedName2;
    }
  }

  if (![commandCopy length] || objc_msgSend(localizedName, "length") || objc_msgSend(eventCopy, "isKeyEvent"))
  {
    origin = [eventCopy origin];
    if (origin == 5)
    {
      v28 = [eventCopy objectForIndex:105];
      v18 = [v28 componentsJoinedByString:{@", "}];
      v17 = [v28 componentsJoinedByString:@" + "];
    }

    else if (origin == 4)
    {
      v18 = [(VOTCommandHelper *)self _keyboardKeyStringForEvent:eventCopy spoken:1];
      v17 = [(VOTCommandHelper *)self _keyboardKeyStringForEvent:eventCopy spoken:0];
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (BOOL)_commandIsSupportedByTV:(id)v
{
  v3 = qword_1001FED70;
  vCopy = v;
  if (v3 != -1)
  {
    sub_10012E0F0();
  }

  v5 = [qword_1001FED68 containsObject:vCopy];

  return v5 ^ 1;
}

- (CGRect)practiceRegion
{
  x = self->_practiceRegion.origin.x;
  y = self->_practiceRegion.origin.y;
  width = self->_practiceRegion.size.width;
  height = self->_practiceRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end