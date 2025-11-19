@interface VOTCommandHelper
+ (id)commandHelper;
- (BOOL)_commandIsSupportedByTV:(id)a3;
- (CGRect)practiceRegion;
- (VOTCommandHelper)init;
- (id)_keyboardKeyStringForEvent:(id)a3 spoken:(BOOL)a4;
- (id)_stringForBrailleGestureCommand:(id)a3;
- (void)_processFallbackHelpForEvent:(id)a3 command:(id)a4 commandHelpText:(id *)a5 activationSpokenHelpText:(id *)a6 activationDisplayedHelpText:(id *)a7;
- (void)_processHelpForEvent:(id)a3 userCommandContext:(id)a4 commandHelpText:(id *)a5 activationSpokenHelpText:(id *)a6 activationDisplayedHelpText:(id *)a7;
- (void)_updateAccelerometerDataIfNeededAndAnnounce:(BOOL)a3;
- (void)dealloc;
- (void)processHelpForEvent:(id)a3;
- (void)setHelpEnabled:(BOOL)a3;
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

- (void)setHelpEnabled:(BOOL)a3
{
  self->_helpEnabled = a3;
  [(VOTCommandHelper *)self _updateAccelerometerDataIfNeededAndAnnounce:0];
  if (!self->_helpEnabled)
  {
    [(VOTCommandHelper *)self setPracticeRegion:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(VOTCommandHelper *)self setPracticeElement:0];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VOTHelpEnabledChangedNotification" object:0];
}

- (void)_updateAccelerometerDataIfNeededAndAnnounce:(BOOL)a3
{
  if (self->_helpEnabled && (v4 = a3, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 voiceOverHelpMode], v5, v6 == 2))
  {
    [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:1];
    currentTypingMode = self->_currentTypingMode;
    self->_currentTypingMode = [(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]== 5;
    if (v4)
    {
      v8 = [(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation];
      if (self->_currentTypingMode != currentTypingMode)
      {
        v10 = v8;
        v11 = [VOTSharedWorkspace selectedLanguage];
        v15 = v11;
        if (v10 == 5)
        {
          v12 = @"braille.table.top";
        }

        else
        {
          v12 = @"braille.screen.away";
        }

        v13 = sub_1000516CC(off_1001FDDD0, v12, 0, v11);
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

- (id)_keyboardKeyStringForEvent:(id)a3 spoken:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 objectForIndex:103];
  v7 = @" + ";
  if (v4)
  {
    v7 = @", ";
  }

  v8 = v7;
  if (v6)
  {
    v9 = +[NSMutableString string];
    v10 = [v6 integerValue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B6D6C;
    v37[3] = &unk_1001C9D88;
    v11 = v9;
    v38 = v11;
    v39 = v8;
    v12 = objc_retainBlock(v37);
    v13 = v12;
    if (v10)
    {
      (v12[2])(v12, @"VOSKey.left");
      if ((v10 & 2) == 0)
      {
LABEL_6:
        if ((v10 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_6;
    }

    (v13)[2](v13, @"VOSKey.right");
    if ((v10 & 4) == 0)
    {
LABEL_7:
      if ((v10 & 8) == 0)
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
    if ((v10 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = [v5 keyInfo];
  v16 = [v15 eventRecord];
  v17 = [v15 changedModifiers];
  if (!v17)
  {
    if ([v15 isAppleVendorKey])
    {
      v19 = [v15 mediaKeyCode];
      if (v19 == 32)
      {
        v20 = @"brightnessUp";
        goto LABEL_45;
      }

      if (v19 == 33)
      {
        v20 = @"brightnessDown";
        goto LABEL_45;
      }

      goto LABEL_71;
    }

    if (![v15 isMediaKey])
    {
      if (v16)
      {
        if ([v16 originalType] == 1007)
        {
          v20 = @"volumeUp";
          goto LABEL_45;
        }

        if ([v16 originalType] == 1009)
        {
          v20 = @"volumeDown";
          goto LABEL_45;
        }
      }

      v36 = [v15 keyCode];
      if ((v36 - 58) >= 0xC)
      {
        v28 = 0;
        v20 = @"enter";
        if (v36 > 77)
        {
          if (v36 > 80)
          {
            if (v36 == 81)
            {
              v20 = @"down";
            }

            else if (v36 == 82)
            {
              v20 = @"up";
            }

            else
            {
              v14 = 0;
              if (v36 != 88)
              {
                goto LABEL_47;
              }
            }
          }

          else if (v36 == 78)
          {
            v20 = @"pagedown";
          }

          else if (v36 == 79)
          {
            v20 = @"right";
          }

          else
          {
            v20 = @"left";
          }
        }

        else if (v36 > 73)
        {
          if (v36 == 74)
          {
            v20 = @"home";
          }

          else if (v36 == 75)
          {
            v20 = @"pageup";
          }

          else
          {
            v14 = 0;
            if (v36 != 77)
            {
              goto LABEL_47;
            }

            v20 = @"end";
          }
        }

        else if (v36 != 40)
        {
          if (v36 == 41)
          {
            v20 = @"escape";
          }

          else
          {
            v14 = 0;
            if (v36 != 42)
            {
              goto LABEL_47;
            }

            v20 = @"backspace";
          }
        }

        goto LABEL_45;
      }

      v20 = [NSString stringWithFormat:@"F%i", (v36 - 57)];
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

    v29 = [v15 mediaKeyCode];
    v28 = 0;
    if (v29 > 183)
    {
      if (v29 > 429)
      {
        if (v29 == 430)
        {
          v20 = @"layout";
        }

        else if (v29 == 433)
        {
          v20 = @"screensaver";
        }

        else
        {
          v14 = 0;
          if (v29 != 545)
          {
            goto LABEL_47;
          }

          v20 = @"search";
        }
      }

      else if (v29 == 184)
      {
        v20 = @"eject";
      }

      else if (v29 == 205)
      {
        v20 = @"playPause";
      }

      else
      {
        v14 = 0;
        if (v29 != 226)
        {
          goto LABEL_47;
        }

        v20 = @"mute";
      }

      goto LABEL_45;
    }

    if (v29 > 180)
    {
      if (v29 != 181)
      {
        if (v29 != 182)
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
      if (v29 == 178)
      {
        v20 = @"record";
        goto LABEL_45;
      }

      if (v29 != 179)
      {
        v14 = 0;
        if (v29 != 180)
        {
          goto LABEL_47;
        }

        goto LABEL_85;
      }
    }

    v20 = @"nextTrack";
    goto LABEL_45;
  }

  v18 = v17;
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

  if ([v15 isKeyboardSelectKey])
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
    if ([v15 isControlKeyPressed])
    {
      [v15 originalCharacters];
    }

    else
    {
      [v15 characters];
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

- (id)_stringForBrailleGestureCommand:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kVOTEventCommandNextElement] && self->_currentTypingMode == 1 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandPreviousElement) && !self->_currentTypingMode || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandPreviousElement) && self->_currentTypingMode == 1 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandNextElement) && !self->_currentTypingMode || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandSearchRotorDown) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandSearchRotorUp) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandMoveToLinkedUI) && self->_currentTypingMode == 1 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandCustomTwoFingerSwipeLeft) && !self->_currentTypingMode || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandReadAll) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandScrollLeftPage) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandScrollRightPage) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandCustomTwoFingerSwipeLeft) && self->_currentTypingMode == 1 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandMoveToLinkedUI) && !self->_currentTypingMode || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandScrollDownPage) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kVOTEventCommandScrollUpPage) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", kVOTEventCommandTracking))
  {
    v5 = VOSLocString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)processHelpForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 command];
  Current = CFAbsoluteTimeGetCurrent();
  if (([v5 isEqualToString:kVOTEventCommandIdle] & 1) == 0 && (!objc_msgSend(v5, "isEqualToString:", kVOTEventCommandTracking) || -[NSString isEqualToString:](self->_lastCommand, "isEqualToString:", kVOTEventCommandTracking) || Current - self->_lastCommandOutputTime >= 1.5) && (!objc_msgSend(v5, "isEqualToString:", kVOTEventCommandSystemToggleQuickNote) || AXDeviceSupportsQuickNote()))
  {
    v7 = [v4 userCommandContext];
    if (v7)
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v8 = &v31;
      v9 = &v30;
      [(VOTCommandHelper *)self _processHelpForEvent:v4 userCommandContext:v7 commandHelpText:&v32 activationSpokenHelpText:&v31 activationDisplayedHelpText:&v30];
      v10 = v32;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v8 = &v28;
      v9 = &v27;
      [(VOTCommandHelper *)self _processFallbackHelpForEvent:v4 command:v5 commandHelpText:&v29 activationSpokenHelpText:&v28 activationDisplayedHelpText:&v27];
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

      v16 = [v14 initWithObjects:{v15, v11, v5, 0}];
      [(VOTElement *)self->_practiceElement setGesturePracticeInfo:v16];
    }

    if (![v5 isEqualToString:self->_lastCommand] || (+[VOTOutputManager outputManager](VOTOutputManager, "outputManager"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isSpeaking"), v17, (v18 & 1) == 0))
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
        v23 = [(VOTElement *)practiceElement shouldSpeakHelpInGestureArea];
      }

      else
      {
        v23 = 1;
      }

      if ([v19 containsActions] && v23)
      {
        [v19 setGeneratesBraille:1];
        [v19 send];
      }

      objc_storeStrong(&self->_lastCommand, v5);
      self->_lastCommandOutputTime = Current;
      if ([v5 isEqualToString:kVOTEventCommandStartHelp] && !self->_practiceElement)
      {
        v24 = [VOTSharedWorkspace selectedLanguage];
        v25 = sub_1000516CC(off_1001FDDD0, @"stopping.help.mode", 0, v24);
        v26 = sub_1000095FC(v25, 2, v24);

        [(VOTCommandHelper *)self setHelpEnabled:0];
      }
    }
  }
}

- (void)_processHelpForEvent:(id)a3 userCommandContext:(id)a4 commandHelpText:(id *)a5 activationSpokenHelpText:(id *)a6 activationDisplayedHelpText:(id *)a7
{
  v22 = a4;
  v10 = [v22 command];
  v11 = [v10 localizedName];

  v12 = [v22 gesture];

  if (v12)
  {
    v13 = [v22 gesture];
    v14 = [v13 localizedName];

    v15 = [v22 gesture];
    v16 = [v15 localizedName];
LABEL_5:
    v18 = v16;

    goto LABEL_6;
  }

  v14 = [v22 keyChord];

  if (v14)
  {
    v17 = [v22 keyChord];
    v14 = [v17 displayValue];

    v15 = [v22 keyChord];
    v16 = [v15 displayValue];
    goto LABEL_5;
  }

  v18 = 0;
LABEL_6:
  v19 = v11;
  *a5 = v11;
  v20 = v14;
  *a6 = v14;
  v21 = v18;
  *a7 = v18;
}

- (void)_processFallbackHelpForEvent:(id)a3 command:(id)a4 commandHelpText:(id *)a5 activationSpokenHelpText:(id *)a6 activationDisplayedHelpText:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = +[AXSettings sharedInstance];
  v15 = [v14 voiceOverHelpMode];

  if ([v13 isEqualToString:kVOTEventCommandTracking])
  {
    v16 = VOSLocString();
    v17 = VOSLocString();
    v18 = v17;
LABEL_30:
    v29 = v16;
    *a5 = v16;
    v30 = v18;
    *a6 = v18;
    v31 = v17;
    *a7 = v17;

    goto LABEL_31;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = [(VOTCommandHelper *)self _stringForBrailleGestureCommand:v13];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v19 = [VOSCommand commandForVOSEventCommand:v13];
    v16 = [v19 localizedName];
    if (![v16 length])
    {
      v20 = VOTLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10012E068(v19, v13, v20);
      }
    }
  }

  if ([VOTSharedWorkspace allowSingleLetterSearching] && objc_msgSend(v12, "isKeyEvent") && objc_msgSend(v13, "isEqualToString:", kVOTEventCommandSingleLetterSearch))
  {
    v21 = +[VOTKeyboardManager keyboardManager];
    v22 = [v12 keyInfo];
    v23 = [v21 singleLetterCommandForKeyInfo:v22];

    if (v23)
    {
      v24 = [VOSCommand commandForVOSEventCommand:v23];
      v25 = [v24 localizedName];

      if (![v25 length])
      {
        v26 = VOTLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412802;
          v33 = v24;
          v34 = 2112;
          v35 = v13;
          v36 = 2112;
          v37 = v23;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "No help text found for transformed command: '%@'. name: '%@' (actual: '%@')", &v32, 0x20u);
        }
      }

      v16 = v25;
    }
  }

  if (![v13 length] || objc_msgSend(v16, "length") || objc_msgSend(v12, "isKeyEvent"))
  {
    v27 = [v12 origin];
    if (v27 == 5)
    {
      v28 = [v12 objectForIndex:105];
      v18 = [v28 componentsJoinedByString:{@", "}];
      v17 = [v28 componentsJoinedByString:@" + "];
    }

    else if (v27 == 4)
    {
      v18 = [(VOTCommandHelper *)self _keyboardKeyStringForEvent:v12 spoken:1];
      v17 = [(VOTCommandHelper *)self _keyboardKeyStringForEvent:v12 spoken:0];
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

- (BOOL)_commandIsSupportedByTV:(id)a3
{
  v3 = qword_1001FED70;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10012E0F0();
  }

  v5 = [qword_1001FED68 containsObject:v4];

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