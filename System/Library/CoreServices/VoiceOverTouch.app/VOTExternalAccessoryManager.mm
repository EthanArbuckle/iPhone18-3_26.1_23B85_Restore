@interface VOTExternalAccessoryManager
+ (id)accessoryManager;
- (VOTExternalAccessoryManager)init;
- (id)accessibilityAccessory:(id)a3 currentValueForItemProperty:(int)a4 withElement:(id)a5;
- (id)accessibilityAccessory:(id)a3 currentValueForSystemProperty:(int)a4;
- (id)accessories;
- (id)accessoryTraitsFromElement:(id)a3;
- (void)_accessoryConnected:(id)a3;
- (void)_accessoryWantsStop:(id)a3;
- (void)_handleAccessoryShutdown;
- (void)_handleSpeakString:(id)a3;
- (void)_handleTextOperation:(int)a3;
- (void)_updateCurrentVoiceOverItem;
- (void)accessibilityAccessory:(id)a3 performAction:(int)a4 withObject:(id)a5;
- (void)accessibilityAccessory:(id)a3 setContext:(int)a4;
- (void)accessibilityAccessory:(id)a3 setValue:(id)a4 forSystemProperty:(int)a5;
- (void)accessoryDidDisconnect:(id)a3;
- (void)dealloc;
- (void)startListening;
- (void)stopListening;
- (void)updateCurrentItemProperties:(id)a3;
- (void)updateSpeakingRate;
- (void)updateVolume:(double)a3;
@end

@implementation VOTExternalAccessoryManager

+ (id)accessoryManager
{
  if (qword_1001FEE78 != -1)
  {
    sub_10012F0C4();
  }

  v3 = qword_1001FEE70;

  return v3;
}

- (VOTExternalAccessoryManager)init
{
  v12.receiver = self;
  v12.super_class = VOTExternalAccessoryManager;
  v2 = [(VOTExternalAccessoryManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.voiceovertouch.ea", 0);
    eaQueue = v2->_eaQueue;
    v2->_eaQueue = v3;

    [sub_1000EC064() registerCapabilities:2];
    v5 = +[NSNotificationCenter defaultCenter];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v6 = qword_1001FEEB0;
    v21 = qword_1001FEEB0;
    if (!qword_1001FEEB0)
    {
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000F02A0;
      v16 = &unk_1001C8370;
      v17 = &v18;
      v7 = sub_1000F0134();
      v8 = dlsym(v7, "EAAccessoryDidConnectNotification");
      *(v17[1] + 24) = v8;
      qword_1001FEEB0 = *(v17[1] + 24);
      v6 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v6)
    {
      sub_10012F0D8();
    }

    [v5 addObserver:v2 selector:"_accessoryConnected:" name:*v6 object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000EC144, kAXSVoiceOverTouchEnabledThroughAccessoryNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VOTExternalAccessoryManager;
  [(VOTExternalAccessoryManager *)&v4 dealloc];
}

- (void)_handleAccessoryShutdown
{
  v2 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemVoiceOverIAP identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = [VOTSharedWorkspace wasEnabledThroughAccessory];
      v25 = _AXSVoiceOverTouchEnabledThroughAccessory();
      v26 = _AXSVoiceOverTouchUIEnabled();
      v24 = v8;
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v28 = v9;
        _os_log_impl(&_mh_execute_header, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([VOTSharedWorkspace wasEnabledThroughAccessory] && !_AXSVoiceOverTouchUIEnabled())
  {
    v10 = +[AXSubsystemVoiceOverIAP sharedInstance];
    v11 = [v10 ignoreLogging];

    if ((v11 & 1) == 0)
    {
      v12 = +[AXSubsystemVoiceOverIAP identifier];
      v13 = AXLoggerForFacility();

      v14 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = AXColorizeFormatLog();
        v16 = _AXStringForArgs();
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 138543362;
          v28 = v16;
          _os_log_impl(&_mh_execute_header, v13, v14, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (([VOTSharedWorkspace accessoryShutdownInProgress] & 1) == 0)
    {
      _AXSVoiceOverTouchSetEnabledThroughAccessory();
      _AXSVoiceOverTouchSetEnabled();
      v17 = +[AXSubsystemVoiceOverIAP sharedInstance];
      v18 = [v17 ignoreLogging];

      if ((v18 & 1) == 0)
      {
        v19 = +[AXSubsystemVoiceOverIAP identifier];
        v20 = AXLoggerForFacility();

        v21 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = AXColorizeFormatLog();
          v23 = _AXStringForArgs();
          if (os_log_type_enabled(v20, v21))
          {
            *buf = 138543362;
            v28 = v23;
            _os_log_impl(&_mh_execute_header, v20, v21, "%{public}@", buf, 0xCu);
          }
        }
      }

      AXPerformBlockOnMainThreadAfterDelay();
      [VOTSharedWorkspace setAccessoryShutdownInProgress:1];
    }
  }
}

- (void)_accessoryWantsStop:(id)a3
{
  v4 = [(VOTExternalAccessoryManager *)self eaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC600;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_accessoryConnected:(id)a3
{
  v4 = a3;
  v5 = [(VOTExternalAccessoryManager *)self eaQueue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000EC6CC;
  v10 = &unk_1001C7778;
  v11 = v4;
  v12 = self;
  v6 = v4;
  dispatch_async(v5, &v7);

  [NSThread cancelPreviousPerformRequestsWithTarget:self, v7, v8, v9, v10];
}

- (void)accessoryDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(VOTExternalAccessoryManager *)self eaQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECA2C;
  v7[3] = &unk_1001C7778;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)startListening
{
  v3 = [(VOTExternalAccessoryManager *)self eaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ECEB4;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopListening
{
  v3 = [(VOTExternalAccessoryManager *)self eaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED2F4;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_handleSpeakString:(id)a3
{
  v3 = a3;
  v4 = +[VOTOutputManager outputManager];
  [v4 speakSimpleString:v3];
}

- (void)_handleTextOperation:(int)a3
{
  if ((a3 - 12) <= 2)
  {
    v4 = **(&off_1001CAE88 + (a3 - 12));
    if (v4)
    {
      v6 = v4;
      v5 = [(VOTElementManager *)self->_elementManager currentElement];
      [v5 performTextOperation:v6];
    }
  }
}

- (void)accessibilityAccessory:(id)a3 performAction:(int)a4 withObject:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v9 = [v8 ignoreLogging];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSubsystemVoiceOverIAP identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v37 = v5;
      v38 = v7;
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  v15 = [objc_allocWithZone(AXIndexMap) init];
  switch(v5)
  {
    case 1:
      v20 = sub_1000EDB64();
      v21 = [v7 objectForKey:v20];
      v22 = [v21 intValue];
      v23 = sub_1000EDC68();
      v24 = [v7 objectForKey:v23];
      [v24 intValue];

      v25 = [VOTEvent touchEventWithCommand:kVOTEventCommandTracking info:0];
      [v25 setTouchPoint:sub_1000517DC(v22 / 65535.0)];
      [VOTSharedWorkspace dispatchCommand:v25];
      goto LABEL_53;
    case 2:
      v19 = &kVOTEventCommandFirstElement;
      goto LABEL_51;
    case 3:
      v19 = &kVOTEventCommandLastElement;
      goto LABEL_51;
    case 4:
    case 5:
      context = self->_context;
      if (context > 4)
      {
        if (context > 6)
        {
          if (context == 7)
          {
            v35 = 1;
          }

          else
          {
            if (context != 8)
            {
              goto LABEL_49;
            }

            v35 = 20;
          }
        }

        else if (context == 5)
        {
          v35 = 3;
        }

        else
        {
          v35 = 7;
        }

        goto LABEL_48;
      }

      if (context > 2)
      {
        if (context == 3)
        {
          v35 = 9;
        }

        else
        {
          v35 = 10;
        }

LABEL_48:
        [(VOTElementManager *)self->_elementManager setElementRotorToType:v35 saveToPreferences:1 userInitiated:1, v37, v38];
        goto LABEL_49;
      }

      if (context >= 2)
      {
        if (context != 2)
        {
          goto LABEL_49;
        }

        v35 = 8;
        goto LABEL_48;
      }

      v17 = &kVOTEventCommandPreviousElement;
      if (v5 != 5)
      {
        v17 = &kVOTEventCommandNextElement;
      }

      v18 = *v17;
      if (v18)
      {
LABEL_52:
        v25 = v18;
        v36 = [VOTEvent externalDeviceEventWithCommand:v18 info:v15, v37, v38];
        [VOTSharedWorkspace dispatchCommand:v36];

LABEL_53:
        goto LABEL_54;
      }

LABEL_49:
      v19 = &kVOTEventCommandSearchRotorUp;
      if (v5 != 5)
      {
        v19 = &kVOTEventCommandSearchRotorDown;
      }

LABEL_51:
      v18 = *v19;
      if (v18)
      {
        goto LABEL_52;
      }

LABEL_54:

      return;
    case 6:
      v19 = &kVOTEventCommandScrollLeftPage;
      goto LABEL_51;
    case 7:
      v19 = &kVOTEventCommandScrollRightPage;
      goto LABEL_51;
    case 8:
      v19 = &kVOTEventCommandScrollUpPage;
      goto LABEL_51;
    case 9:
      v19 = &kVOTEventCommandScrollDownPage;
      goto LABEL_51;
    case 10:
      v26 = sub_1000EDB64();
      v27 = [v7 objectForKey:v26];
      v28 = [v27 intValue];
      v29 = sub_1000EDC68();
      v30 = [v7 objectForKey:v29];
      v31 = [v30 intValue];

      v32 = [NSValue valueWithPoint:v28 / 65535.0, v31 / 65535.0];
      [v15 setObject:v32 forIndex:101];

      v19 = &kVOTEventCommandScrollToPoint;
      goto LABEL_51;
    case 11:
      v33 = sub_1000EDD6C();
      v34 = [v7 objectForKey:v33];
      [(VOTExternalAccessoryManager *)self _handleInputText:v34];
      goto LABEL_33;
    case 12:
    case 13:
    case 14:
      [(VOTExternalAccessoryManager *)self _handleTextOperation:v5];
      goto LABEL_54;
    case 15:
      v19 = &kVOTEventCommandHomeButtonPress;
      goto LABEL_51;
    case 16:
      v19 = &kVOTEventCommandSimpleTap;
      goto LABEL_51;
    case 19:
      v19 = &kVOTEventCommandPauseSpeaking;
      goto LABEL_51;
    case 20:
      v19 = &kVOTEventCommandContinueSpeaking;
      goto LABEL_51;
    case 21:
      v19 = &kVOTEventCommandReadAll;
      goto LABEL_51;
    case 22:
      v19 = &kVOTEventCommandReadFromTop;
      goto LABEL_51;
    case 23:
      v33 = sub_1000EDD6C();
      v34 = [v7 objectForKey:v33];
      [(VOTExternalAccessoryManager *)self _handleSpeakString:v34];
LABEL_33:

      goto LABEL_54;
    case 24:
      v19 = &kVOTEventCommandEscape;
      goto LABEL_51;
    case 25:
      [(VOTExternalAccessoryManager *)self _updateCurrentVoiceOverItem];
      goto LABEL_54;
    default:
      goto LABEL_54;
  }
}

- (void)accessibilityAccessory:(id)a3 setContext:(int)a4
{
  v6 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v7 = [v6 ignoreLogging];

  if ((v7 & 1) == 0)
  {
    v8 = +[AXSubsystemVoiceOverIAP identifier];
    v9 = AXLoggerForFacility();

    v10 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = AXColorizeFormatLog();
      v12 = _AXStringForArgs();
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 138543362;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v9, v10, "%{public}@", buf, 0xCu);
      }
    }
  }

  self->_context = a4;
}

- (id)accessoryTraitsFromElement:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 traits];
  if ((kAXButtonTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v6 = qword_1001FEED8;
    v42 = qword_1001FEED8;
    if (!qword_1001FEED8)
    {
      v7 = sub_1000F0134();
      v40[3] = dlsym(v7, "EAAccessoryAccessibilityTraitButton");
      qword_1001FEED8 = v40[3];
      v6 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v6)
    {
      sub_10012F330();
    }

    [v4 addObject:*v6];
  }

  if ((kAXLinkTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v8 = qword_1001FEEE0;
    v42 = qword_1001FEEE0;
    if (!qword_1001FEEE0)
    {
      v9 = sub_1000F0134();
      v40[3] = dlsym(v9, "EAAccessoryAccessibilityTraitLink");
      qword_1001FEEE0 = v40[3];
      v8 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v8)
    {
      sub_10012F3A8();
    }

    [v4 addObject:*v8];
  }

  if ((kAXImageTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v10 = qword_1001FEEE8;
    v42 = qword_1001FEEE8;
    if (!qword_1001FEEE8)
    {
      v11 = sub_1000F0134();
      v40[3] = dlsym(v11, "EAAccessoryAccessibilityTraitImage");
      qword_1001FEEE8 = v40[3];
      v10 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v10)
    {
      sub_10012F420();
    }

    [v4 addObject:*v10];
  }

  if ((kAXSearchFieldTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v12 = qword_1001FEEF0;
    v42 = qword_1001FEEF0;
    if (!qword_1001FEEF0)
    {
      v13 = sub_1000F0134();
      v40[3] = dlsym(v13, "EAAccessoryAccessibilityTraitSearchField");
      qword_1001FEEF0 = v40[3];
      v12 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v12)
    {
      sub_10012F498();
    }

    [v4 addObject:*v12];
  }

  if ((kAXSelectedTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v14 = qword_1001FEEF8;
    v42 = qword_1001FEEF8;
    if (!qword_1001FEEF8)
    {
      v15 = sub_1000F0134();
      v40[3] = dlsym(v15, "EAAccessoryAccessibilityTraitSelected");
      qword_1001FEEF8 = v40[3];
      v14 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v14)
    {
      sub_10012F510();
    }

    [v4 addObject:*v14];
  }

  if ((kAXPlaysSoundTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v16 = qword_1001FEF00;
    v42 = qword_1001FEF00;
    if (!qword_1001FEF00)
    {
      v17 = sub_1000F0134();
      v40[3] = dlsym(v17, "EAAccessoryAccessibilityTraitSound");
      qword_1001FEF00 = v40[3];
      v16 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v16)
    {
      sub_10012F588();
    }

    [v4 addObject:*v16];
  }

  if ((kAXKeyboardKeyTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v18 = qword_1001FEF08;
    v42 = qword_1001FEF08;
    if (!qword_1001FEF08)
    {
      v19 = sub_1000F0134();
      v40[3] = dlsym(v19, "EAAccessoryAccessibilityTraitKeyboardKey");
      qword_1001FEF08 = v40[3];
      v18 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v18)
    {
      sub_10012F600();
    }

    [v4 addObject:*v18];
  }

  if ((kAXStaticTextTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v20 = qword_1001FEF10;
    v42 = qword_1001FEF10;
    if (!qword_1001FEF10)
    {
      v21 = sub_1000F0134();
      v40[3] = dlsym(v21, "EAAccessoryAccessibilityTraitStaticText");
      qword_1001FEF10 = v40[3];
      v20 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v20)
    {
      sub_10012F678();
    }

    [v4 addObject:*v20];
  }

  if ((kAXSummaryElementTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v22 = qword_1001FEF18;
    v42 = qword_1001FEF18;
    if (!qword_1001FEF18)
    {
      v23 = sub_1000F0134();
      v40[3] = dlsym(v23, "EAAccessoryAccessibilityTraitSummaryElement");
      qword_1001FEF18 = v40[3];
      v22 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v22)
    {
      sub_10012F6F0();
    }

    [v4 addObject:*v22];
  }

  if ((kAXNotEnabledTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v24 = qword_1001FEF20;
    v42 = qword_1001FEF20;
    if (!qword_1001FEF20)
    {
      v25 = sub_1000F0134();
      v40[3] = dlsym(v25, "EAAccessoryAccessibilityTraitNotEnabled");
      qword_1001FEF20 = v40[3];
      v24 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v24)
    {
      sub_10012F768();
    }

    [v4 addObject:*v24];
  }

  if ((kAXUpdatesFrequentlyTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v26 = qword_1001FEF28;
    v42 = qword_1001FEF28;
    if (!qword_1001FEF28)
    {
      v27 = sub_1000F0134();
      v40[3] = dlsym(v27, "EAAccessoryAccessibilityTraitUpdatesFrequently");
      qword_1001FEF28 = v40[3];
      v26 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v26)
    {
      sub_10012F7E0();
    }

    [v4 addObject:*v26];
  }

  if ((kAXAdjustableTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v28 = qword_1001FEF30;
    v42 = qword_1001FEF30;
    if (!qword_1001FEF30)
    {
      v29 = sub_1000F0134();
      v40[3] = dlsym(v29, "EAAccessoryAccessibilityTraitAdjustable");
      qword_1001FEF30 = v40[3];
      v28 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v28)
    {
      sub_10012F858();
    }

    [v4 addObject:*v28];
  }

  if ((kAXBackButtonTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v30 = qword_1001FEF38;
    v42 = qword_1001FEF38;
    if (!qword_1001FEF38)
    {
      v31 = sub_1000F0134();
      v40[3] = dlsym(v31, "EAAccessoryAccessibilityTraitBackButton");
      qword_1001FEF38 = v40[3];
      v30 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v30)
    {
      sub_10012F8D0();
    }

    [v4 addObject:*v30];
  }

  if ((kAXMapTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v32 = qword_1001FEF40;
    v42 = qword_1001FEF40;
    if (!qword_1001FEF40)
    {
      v33 = sub_1000F0134();
      v40[3] = dlsym(v33, "EAAccessoryAccessibilityTraitMap");
      qword_1001FEF40 = v40[3];
      v32 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v32)
    {
      sub_10012F948();
    }

    [v4 addObject:*v32];
  }

  if ((kAXStartsMediaSessionTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v34 = qword_1001FEF48;
    v42 = qword_1001FEF48;
    if (!qword_1001FEF48)
    {
      v35 = sub_1000F0134();
      v40[3] = dlsym(v35, "EAAccessoryAccessibilityTraitStartsMediaSession");
      qword_1001FEF48 = v40[3];
      v34 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v34)
    {
      sub_10012F9C0();
    }

    [v4 addObject:*v34];
  }

  if ((kAXDeleteKeyTrait & v5) != 0)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v36 = qword_1001FEF50;
    v42 = qword_1001FEF50;
    if (!qword_1001FEF50)
    {
      v37 = sub_1000F0134();
      v40[3] = dlsym(v37, "EAAccessoryAccessibilityTraitDeleteKey");
      qword_1001FEF50 = v40[3];
      v36 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v36)
    {
      sub_10012FA38();
    }

    [v4 addObject:*v36];
  }

  return v4;
}

- (id)accessibilityAccessory:(id)a3 currentValueForItemProperty:(int)a4 withElement:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(VOTElementManager *)self->_elementManager currentElement];
  }

  v12 = v11;
  v13 = 0;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v14 = [v11 label];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_22;
      }

      v14 = [v11 value];
    }

    goto LABEL_21;
  }

  if (a4 == 3)
  {
    v14 = [v11 hint];
LABEL_21:
    v13 = v14;
    goto LABEL_22;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_22;
    }

    v14 = [(VOTExternalAccessoryManager *)self accessoryTraitsFromElement:v11];
    goto LABEL_21;
  }

  [v11 frame];
  v16 = v15;
  v17 = xmmword_1001FF150;
  v19 = v18 / *&xmmword_1001FF150;
  v21 = v20 / *(&xmmword_1001FF150 + 1);
  v23 = v22 / *&xmmword_1001FF150;
  *&v19 = v19;
  v24 = [NSNumber numberWithFloat:v19];
  v25 = sub_1000EDB64();
  *&v26 = v21;
  v27 = [NSNumber numberWithFloat:v26];
  v39 = sub_1000EDC68();
  *&v28 = v23;
  v38 = [NSNumber numberWithFloat:v28];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v29 = qword_1001FEF58;
  v43 = qword_1001FEF58;
  if (!qword_1001FEF58)
  {
    v30 = sub_1000F0134();
    v41[3] = dlsym(v30, "EAAccessoryAccessibilityWidthKey");
    qword_1001FEF58 = v41[3];
    v29 = v41[3];
  }

  v37 = v24;
  _Block_object_dispose(&v40, 8);
  if (!v29)
  {
    sub_10012FB28();
  }

  v31 = *v29;
  *&v32 = v16 / *(&v17 + 1);
  v33 = [NSNumber numberWithFloat:v32];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v34 = qword_1001FEF60;
  v43 = qword_1001FEF60;
  if (!qword_1001FEF60)
  {
    v35 = sub_1000F0134();
    v41[3] = dlsym(v35, "EAAccessoryAccessibilityHeightKey");
    qword_1001FEF60 = v41[3];
    v34 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v34)
  {
    sub_10012FAB0();
  }

  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v37, v25, v27, v39, v38, v31, v33, *v34, 0];

LABEL_22:

  return v13;
}

- (id)accessories
{
  v2 = [sub_1000EC064() sharedAccessoryManager];
  v3 = [v2 connectedAccessories];

  return v3;
}

- (void)_updateCurrentVoiceOverItem
{
  v3 = qword_1001FEE88;
  qword_1001FEE88 = 0;
  v4 = v3;

  [(VOTExternalAccessoryManager *)self updateCurrentItemProperties:v4];
}

- (void)updateCurrentItemProperties:(id)a3
{
  v4 = qword_1001FEE98;
  v5 = a3;
  if (v4 != -1)
  {
    sub_10012FBA0();
  }

  v6 = [v5 copyWithCache];

  v7 = [(VOTExternalAccessoryManager *)self eaQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EF2D0;
  v9[3] = &unk_1001C7778;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)updateVolume:(double)a3
{
  v5 = [(VOTExternalAccessoryManager *)self eaQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EF5A0;
  v6[3] = &unk_1001C7900;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)updateSpeakingRate
{
  v3 = [(VOTExternalAccessoryManager *)self eaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EF758;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)accessibilityAccessory:(id)a3 setValue:(id)a4 forSystemProperty:(int)a5
{
  v5 = *&a5;
  v7 = a3;
  v8 = a4;
  v9 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = +[AXSubsystemVoiceOverIAP identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = AXColorizeFormatLog();
      v42 = v8;
      v43 = v5;
      v15 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v13))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}@", &buf, 0xCu);
      }
    }
  }

  switch(v5)
  {
    case 1:
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v25 = qword_1001FEF78;
      v51 = qword_1001FEF78;
      if (!qword_1001FEF78)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v54 = sub_1000F0A70;
        v55 = &unk_1001C8370;
        v56 = &v48;
        v26 = sub_1000F0134();
        v27 = dlsym(v26, "EAAccessoryAccessibilitySystemPropertyVoiceOverEnabledKey");
        *(v56[1] + 24) = v27;
        qword_1001FEF78 = *(v56[1] + 24);
        v25 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v25)
      {
        sub_10012FBB4();
      }

      v28 = [v8 objectForKey:*v25];
      v29 = [v28 BOOLValue];

      if ((v29 & 1) == 0)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v30 = [sub_1000EC064() sharedAccessoryManager];
        v31 = [v30 connectedAccessories];

        v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v32)
        {
          v33 = *v45;
          while (2)
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v45 != v33)
              {
                objc_enumerationMutation(v31);
              }

              if ([*(*(&v44 + 1) + 8 * i) supportsAccessibility])
              {
                [v7 setDelegate:0];
                goto LABEL_32;
              }
            }

            v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

LABEL_32:

        v35 = +[AXSubsystemVoiceOverIAP sharedInstance];
        v36 = [v35 ignoreLogging];

        if ((v36 & 1) == 0)
        {
          v37 = +[AXSubsystemVoiceOverIAP identifier];
          v38 = AXLoggerForFacility();

          v39 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = AXColorizeFormatLog();
            v41 = _AXStringForArgs();
            if (os_log_type_enabled(v38, v39))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v41;
              _os_log_impl(&_mh_execute_header, v38, v39, "%{public}@", &buf, 0xCu);
            }
          }
        }

        _AXSVoiceOverTouchSetEnabledThroughAccessory();
        _AXSVoiceOverTouchSetEnabled();
      }

      break;
    case 3:
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v21 = qword_1001FEF70;
      v51 = qword_1001FEF70;
      if (!qword_1001FEF70)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v54 = sub_1000F0A20;
        v55 = &unk_1001C8370;
        v56 = &v48;
        v22 = sub_1000F0134();
        v23 = dlsym(v22, "EAAccessoryAccessibilitySystemPropertySpeakingRateKey");
        *(v56[1] + 24) = v23;
        qword_1001FEF70 = *(v56[1] + 24);
        v21 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v21)
      {
        sub_10012FC2C();
      }

      v24 = [v8 objectForKey:*v21];
      [v24 floatValue];

      _AXSVoiceOverTouchSetSpeakingRate();
      break;
    case 2:
      v16 = +[VOTOutputManager outputManager];
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v17 = qword_1001FEF68;
      v51 = qword_1001FEF68;
      if (!qword_1001FEF68)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v54 = sub_1000F09D0;
        v55 = &unk_1001C8370;
        v56 = &v48;
        v18 = sub_1000F0134();
        v19 = dlsym(v18, "EAAccessoryAccessibilitySystemPropertyVoiceOverVolumeKey");
        *(v56[1] + 24) = v19;
        qword_1001FEF68 = *(v56[1] + 24);
        v17 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v17)
      {
        sub_10012FCA4();
      }

      v20 = [v8 objectForKey:*v17];
      [v20 floatValue];
      [v16 setSystemVolume:?];

      break;
  }
}

- (id)accessibilityAccessory:(id)a3 currentValueForSystemProperty:(int)a4
{
  v5 = +[AXSubsystemVoiceOverIAP sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemVoiceOverIAP identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  switch(a4)
  {
    case 1:
      v15 = [NSNumber numberWithBool:1];
      goto LABEL_13;
    case 3:
      [VOTSharedWorkspace speechRateFromSettings];
      *&v14 = v14;
      v15 = [NSNumber numberWithFloat:v14];
LABEL_13:
      v13 = v15;
      break;
    case 2:
      v12 = +[VOTOutputManager outputManager];
      [v12 systemVolume];
      v13 = [NSNumber numberWithFloat:?];

      break;
    default:
      v13 = 0;
      break;
  }

  return v13;
}

@end