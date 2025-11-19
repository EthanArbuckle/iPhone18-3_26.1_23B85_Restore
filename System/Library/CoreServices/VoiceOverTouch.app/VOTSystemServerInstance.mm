@interface VOTSystemServerInstance
+ (id)serverInstance;
- (id)_initServer;
- (id)currentCursorFrame:(id)a3;
- (id)currentRotorName:(id)a3;
- (id)isBluetoothBrailleDisplayConnected:(id)a3;
- (id)isBrailleInputUIShowing:(id)a3;
- (id)isBrailleScreenInputInScreenAwayMode:(id)a3;
- (id)isHandwritingInputUIShowing:(id)a3;
- (id)isScreenCurtainEnabled:(id)a3;
- (id)lastScreenChange:(id)a3;
- (id)lastSoundsPlayed:(id)a3;
- (id)lastSpokenContents:(id)a3;
- (id)lastSpokenPhrases:(id)a3;
- (id)tutorialRecognizedGesture:(id)a3;
- (id)voiceOverCommandTriggered:(id)a3;
- (id)voiceOverCurrentFocusedElement:(id)a3;
- (id)voiceOverEventCommandTriggered:(id)a3;
- (id)voiceOverGestureTriggered:(id)a3;
- (void)_modifyRotorItems:(id)a3 shouldEnable:(BOOL)a4;
- (void)_updateRotorsForElementWithErrorMessage:(id *)a3;
- (void)dealloc;
- (void)handleAutomationTestingCommand:(id)a3 completion:(id)a4;
- (void)voiceOverTutorialEventCommandTriggered:(id)a3;
@end

@implementation VOTSystemServerInstance

+ (id)serverInstance
{
  if (qword_1001FF050 != -1)
  {
    sub_1001314C0();
  }

  v3 = qword_1001FF048;

  return v3;
}

- (id)_initServer
{
  v11.receiver = self;
  v11.super_class = VOTSystemServerInstance;
  v2 = [(VOTSystemServerInstance *)&v11 init];
  if (v2)
  {
    v3 = [AXIPCServer alloc];
    v4 = [v3 initWithServiceName:AXVoiceOverServerServiceName perPidService:0];
    server = v2->_server;
    v2->_server = v4;

    v6 = v2->_server;
    v10 = 0;
    [(AXIPCServer *)v6 startServerWithError:&v10];
    v7 = v10;
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"voiceOverCommandTriggered:" forKey:7000 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.api", @"com.apple.accessibility.AccessibilityUIServer", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"voiceOverGestureTriggered:" forKey:7010 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.api", @"com.apple.accessibility.AccessibilityUIServer", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"voiceOverEventCommandTriggered:" forKey:7013 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.api", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.AXUIViewService", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"voiceOverCurrentFocusedElement:" forKey:7001 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"lastSpokenPhrases:" forKey:7002 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"lastSpokenContents:" forKey:7008 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"lastSoundsPlayed:" forKey:7005 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"currentRotorName:" forKey:7003 possibleRequiredEntitlements:@"com.apple.accessibility.api", @"com.apple.AXUIViewService", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"lastScreenChange:" forKey:7004 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isBrailleInputUIShowing:" forKey:7006 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isHandwritingInputUIShowing:" forKey:7009 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isScreenCurtainEnabled:" forKey:7012 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isBluetoothBrailleDisplayConnected:" forKey:7011 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"handleAutomationTestingCommand:completion:" async:1 forKey:7007 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"tutorialRecognizedGesture:" forKey:7014 possibleRequiredEntitlements:@"com.apple.accessibility.api", @"com.apple.AXUIViewService", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"isBrailleScreenInputInScreenAwayMode:" forKey:7015 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    [(AXIPCServer *)v2->_server setHandlerWithTarget:v2 selector:"currentCursorFrame:" forKey:7016 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
    if (v7)
    {
      NSLog(@"error: %@", v7);
    }

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(AXIPCServer *)self->_server removeAllHandlersForTarget:self];
  v3.receiver = self;
  v3.super_class = VOTSystemServerInstance;
  [(VOTSystemServerInstance *)&v3 dealloc];
}

- (id)lastScreenChange:(id)a3
{
  v3 = [AXIPCMessage alloc];
  v8 = @"result";
  v4 = [VOTSharedWorkspace lastScreenChangeTime];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v3 initWithKey:7004 payload:v5];

  return v6;
}

- (id)lastSoundsPlayed:(id)a3
{
  v3 = [AXIPCMessage alloc];
  v8 = @"result";
  v4 = +[VOTOutputManager previousSoundsPlayed];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v3 initWithKey:7005 payload:v5];

  return v6;
}

- (id)lastSpokenPhrases:(id)a3
{
  v21 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = +[VOTOutputRequest previousRequests];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v20 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = +[NSMutableString string];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [v6 outputActions];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              v14 = [v13 string];
              if ([v14 length] && !objc_msgSend(v13, "component"))
              {
                if ([v7 length])
                {
                  [v7 appendString:@" "];
                }

                [v7 appendString:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v10);
        }

        [v21 axSafelyAddObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v4);
  }

  v15 = [AXIPCMessage alloc];
  v30 = @"result";
  v31 = v21;
  v16 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v17 = [v15 initWithKey:7002 payload:v16];

  return v17;
}

- (id)lastSpokenContents:(id)a3
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[VOTOutputRequest previousRequests];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = [AXIPCMessage alloc];
  v18 = @"result";
  v19 = v3;
  v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v12 = [v10 initWithKey:7008 payload:v11];

  return v12;
}

- (id)currentRotorName:(id)a3
{
  v4 = [VOTSharedWorkspace currentElement];
  v5 = [VOTSharedWorkspace elementManager];
  v6 = [v5 elementRotor];
  v7 = [v6 currentRotorElement];
  v8 = [v4 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(VOTSystemServerInstance *)self _updateRotorsForElementWithErrorMessage:0];
  }

  v9 = [AXIPCMessage alloc];
  v14 = @"result";
  v10 = [VOTSharedWorkspace currentElementRotorString];
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v9 initWithKey:7001 payload:v11];

  return v12;
}

- (id)voiceOverCurrentFocusedElement:(id)a3
{
  v3 = [VOTSharedWorkspace currentElement];
  v4 = [v3 uiElement];
  v5 = [v4 axElement];

  if (v5)
  {
    Data = _AXUIElementCreateData();
    v7 = [AXIPCMessage alloc];
    v11 = @"result";
    v12 = Data;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v7 initWithKey:7001 payload:v8];
  }

  else
  {
    v9 = [[AXIPCMessage alloc] initWithKey:7001 payload:0];
  }

  return v9;
}

- (id)voiceOverGestureTriggered:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKey:@"gesture"];

  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
  if (v5)
  {
    v6 = +[VOTWorkspace sharedWorkspace];
    v7 = [v6 userCommandManager];

    v8 = +[VOSCommandResolver resolverForCurrentHost];
    v9 = [v7 eventForTouchGesture:v5 resolver:v8];

    [VOTSharedWorkspace dispatchCommand:v9];
  }

  v10 = [AXIPCMessage alloc];
  v15 = @"result";
  v11 = [NSNumber numberWithBool:v5 != 0];
  v16 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 initWithKey:7010 payload:v12];

  return v13;
}

- (void)voiceOverTutorialEventCommandTriggered:(id)a3
{
  v24 = a3;
  if ([v24 isEqualToString:@"VO.Tutorial.Activate"])
  {
    v3 = +[VOTWorkspace sharedWorkspace];
    v4 = [v3 elementManager];
    v5 = v4;
    v6 = 1;
LABEL_5:
    [v4 setTutorialListeningForGestureNotifications:v6];
    goto LABEL_6;
  }

  if ([v24 isEqualToString:@"VO.Tutorial.Deactivate"])
  {
    v3 = +[VOTWorkspace sharedWorkspace];
    v4 = [v3 elementManager];
    v5 = v4;
    v6 = 0;
    goto LABEL_5;
  }

  v7 = [v24 isEqualToString:@"VO.Tutorial.Reset"];
  v8 = +[VOTWorkspace sharedWorkspace];
  v9 = [v8 elementManager];
  v10 = v9;
  if (v7)
  {
    [v9 setTutorialActiveRestrictionType:0];

    v3 = +[VOTWorkspace sharedWorkspace];
    v5 = [v3 elementManager];
    [v5 setTutorialRestrictedCommands:0];
    goto LABEL_6;
  }

  v11 = [v9 tutorialRestrictedCommands];

  if (!v11)
  {
    v12 = +[VOTWorkspace sharedWorkspace];
    v13 = [v12 elementManager];
    v14 = objc_alloc_init(NSMutableArray);
    [v13 setTutorialRestrictedCommands:v14];
  }

  if ([v24 containsString:@"VO.Tutorial.Deny"])
  {
    v3 = [v24 substringFromIndex:{objc_msgSend(@"VO.Tutorial.Deny", "length")}];
    v15 = +[VOTWorkspace sharedWorkspace];
    v16 = [v15 elementManager];
    v17 = [v16 tutorialRestrictedCommands];
    [v17 addObject:v3];

    v5 = +[VOTWorkspace sharedWorkspace];
    v18 = [v5 elementManager];
    v19 = v18;
    v20 = 1;
LABEL_17:
    [v18 setTutorialActiveRestrictionType:v20];

    goto LABEL_6;
  }

  if ([v24 containsString:@"VO.Tutorial.Allow"])
  {
    v3 = [v24 substringFromIndex:{objc_msgSend(@"VO.Tutorial.Allow", "length")}];
    v21 = +[VOTWorkspace sharedWorkspace];
    v22 = [v21 elementManager];
    v23 = [v22 tutorialRestrictedCommands];
    [v23 addObject:v3];

    v5 = +[VOTWorkspace sharedWorkspace];
    v18 = [v5 elementManager];
    v19 = v18;
    v20 = 2;
    goto LABEL_17;
  }

  v3 = +[VOTWorkspace sharedWorkspace];
  v5 = [v3 elementManager];
  [v5 setTutorialPage:v24];
LABEL_6:
}

- (id)voiceOverEventCommandTriggered:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"eventCommand"];

  if ([v5 containsString:@"VO.Tutorial"])
  {
    [(VOTSystemServerInstance *)self voiceOverTutorialEventCommandTriggered:v5];
    v6 = [[AXIPCMessage alloc] initWithKey:7013 payload:&off_1001DBBD8];
  }

  else
  {
    v7 = [v5 length];
    if (v7)
    {
      v8 = [VOTEvent systemServerEventWithCommand:v5 info:0];
      [VOTSharedWorkspace dispatchCommand:v8];
    }

    v9 = [AXIPCMessage alloc];
    v13 = @"result";
    v10 = [NSNumber numberWithBool:v7 != 0];
    v14 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [v9 initWithKey:7013 payload:v11];
  }

  return v6;
}

- (id)voiceOverCommandTriggered:(id)a3
{
  v3 = a3;
  v4 = [v3 payload];
  v5 = [v4 objectForKey:@"command"];
  v6 = [v5 intValue];

  v7 = [objc_allocWithZone(AXIndexMap) init];
  LOBYTE(v50) = 1;
  _AXLogWithFacility();
  x = CGPointZero.x;
  y = CGPointZero.y;
  switch(v6)
  {
    case 1:
    case 48:
      v10 = &kVOTEventCommandToggleMute;
      goto LABEL_71;
    case 2:
      v10 = &kVOTEventCommandToggleScreenCurtain;
      goto LABEL_71;
    case 3:
      v10 = &kVOTEventCommandScrollUpPage;
      goto LABEL_71;
    case 4:
      v10 = &kVOTEventCommandScrollDownPage;
      goto LABEL_71;
    case 5:
      v10 = &kVOTEventCommandScrollLeftPage;
      goto LABEL_71;
    case 6:
      v10 = &kVOTEventCommandScrollRightPage;
      goto LABEL_71;
    case 7:
      v10 = &kVOTEventCommandOutputElementSummary;
      goto LABEL_71;
    case 8:
      v10 = &kVOTEventCommandPreviousElement;
      goto LABEL_71;
    case 9:
      v10 = &kVOTEventCommandNextElement;
      goto LABEL_71;
    case 10:
      v10 = &kVOTEventCommandFirstElement;
      goto LABEL_71;
    case 11:
      v10 = &kVOTEventCommandLastElement;
      goto LABEL_71;
    case 12:
      v10 = &kVOTEventCommandMoveToStatusBar;
      goto LABEL_71;
    case 13:
      v10 = &kVOTEventCommandEscape;
      goto LABEL_71;
    case 14:
      v10 = &kVOTEventCommandSearchRotorRight;
      goto LABEL_71;
    case 15:
      v10 = &kVOTEventCommandSearchRotorLeft;
      goto LABEL_71;
    case 16:
      v10 = &kVOTEventCommandSearchRotorUp;
      goto LABEL_71;
    case 17:
      v10 = &kVOTEventCommandSearchRotorDown;
      goto LABEL_71;
    case 18:
      v10 = &kVOTEventCommandItemChooser;
      goto LABEL_71;
    case 19:
      v10 = &kVOTEventCommandSimpleTap;
      goto LABEL_71;
    case 20:
      v10 = &kVOTEventCommandPauseSpeaking;
      goto LABEL_71;
    case 21:
      v10 = &kVOTEventCommandToggleCrownNaviation;
      goto LABEL_71;
    case 22:
      v36 = [VOTKeyboardManager keyboardManager:v50];
      v37 = [v36 isQuickNavOn];

      if (!v37)
      {
        goto LABEL_67;
      }

      goto LABEL_57;
    case 23:
      v38 = [VOTKeyboardManager keyboardManager:v50];
      v39 = [v38 isQuickNavOn];

      if (v39)
      {
        goto LABEL_67;
      }

LABEL_57:
      v10 = &kVOTEventCommandToggleQuickNav;
      goto LABEL_71;
    case 24:
      v28 = [v3 payload];
      v22 = [v28 objectForKey:@"argument"];

      if ([v22 count] != 2)
      {
        goto LABEL_66;
      }

      v29 = [v22 objectAtIndexedSubscript:0];
      [v29 pointValue];
      x = v30;
      y = v31;

      v26 = [v22 objectAtIndexedSubscript:1];
      v27 = &kVOTEventCommandTouchDown;
      goto LABEL_64;
    case 25:
      v21 = [v3 payload];
      v22 = [v21 objectForKey:@"argument"];

      if ([v22 count] != 2)
      {
        goto LABEL_66;
      }

      v23 = [v22 objectAtIndexedSubscript:0];
      [v23 pointValue];
      x = v24;
      y = v25;

      v26 = [v22 objectAtIndexedSubscript:1];
      v27 = &kVOTEventCommandTouchMove;
      goto LABEL_64;
    case 26:
      v40 = [v3 payload];
      v22 = [v40 objectForKey:@"argument"];

      if ([v22 count] == 1)
      {
        v26 = [v22 objectAtIndexedSubscript:0];
        v27 = &kVOTEventCommandTouchUp;
LABEL_64:
        v19 = *v27;

LABEL_65:
        v41 = [objc_allocWithZone(AXIndexMap) init];
        [v41 setObject:v26 forIndex:114];
        v42 = [VOTEvent systemServerEventWithCommand:v19 info:v41];
        [v42 setTouchPoint:{x, y}];
        [VOTSharedWorkspace dispatchCommand:v42];

        goto LABEL_73;
      }

LABEL_66:

LABEL_67:
      v26 = 0;
      v19 = 0;
      goto LABEL_77;
    case 27:
      v11 = &kVOTEventCommandTouchCancel;
      goto LABEL_59;
    case 28:
      v11 = &kVOTEventCommandStartStopToggle;
LABEL_59:
      v19 = *v11;
      v26 = 0;
      goto LABEL_65;
    case 29:
      v10 = &kVOTEventCommandCopySpeechToClipboard;
      goto LABEL_71;
    case 30:
      v35 = [v3 payload];
      v16 = [v35 objectForKey:@"argument"];

      if ([v16 length])
      {
        v19 = kVOTEventCommandAnnouncement;
        [v7 setObject:v16 forIndex:116];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_75;
    case 31:
      v32 = [v3 payload];
      v33 = [v32 objectForKey:@"argument"];
      v34 = [v33 BOOLValue];

      [VOTSharedWorkspace setInPerformanceTestMode:v34];
      goto LABEL_35;
    case 32:
      [VOTSharedWorkspace setInPerformanceTestMode:{1, v50, @"Got command %d", v6}];
      v19 = kVOTEventCommandAnnouncement;
      [v7 setObject:@"A reasonably long piece of text to announce!" forIndex:116];
      if (!v19)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    case 33:
      v15 = [v3 payload];
      v16 = [v15 objectForKey:@"argument"];

      v17 = [VOTSharedWorkspace systemVisualizationState];
      v18 = [v16 integerValue];
      [VOTSharedWorkspace setSystemVisualizationState:v18];
      v19 = 0;
      if (v18 == 3 && v17 != 3)
      {
        v19 = kVOTEventCommandAnnouncement;
        v20 = sub_1000511CC(off_1001FDDD0, @"apple.care.starting.diagnostics", 0);
        [v7 setObject:v20 forIndex:116];
      }

LABEL_75:

      if (!v19)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    case 34:
      v12 = [v3 payload];
      v13 = [v12 objectForKey:@"argument"];

      if (v13)
      {
        v14 = [v13 BOOLValue];
        [VOTSharedWorkspace setSystemVolumeControlsAvailablity:v14];
      }

      goto LABEL_67;
    case 35:
      [VOTSharedWorkspace _testFetchWebElementRects];
LABEL_35:
      v26 = 0;
      v19 = 0;
      goto LABEL_73;
    case 36:
      v10 = &kVOTEventCommandNextElementCommunity;
      goto LABEL_71;
    case 37:
      v10 = &kVOTEventCommandPreviousElementCommunity;
      goto LABEL_71;
    case 38:
      v10 = &kVOTEventCommandReadAll;
      goto LABEL_71;
    case 39:
      v10 = &kVOTEventCommandShowEditingHUD;
      goto LABEL_71;
    case 40:
      v10 = &kVOTEventCommandCopy;
      goto LABEL_71;
    case 41:
      v10 = &kVOTEventCommandPaste;
      goto LABEL_71;
    case 42:
      v10 = &kVOTEventCommandUndo;
      goto LABEL_71;
    case 43:
      v10 = &kVOTEventCommandRedo;
      goto LABEL_71;
    case 44:
      v10 = &kVOTEventCommandSystemSwitchToNextApp;
      goto LABEL_71;
    case 45:
      v10 = &kVOTEventCommandSystemSwitchToPreviousApp;
      goto LABEL_71;
    case 46:
      v10 = &kVOTEventCommandToggleSettingsHUD;
      goto LABEL_71;
    case 47:
      v10 = &kVOTEventCommandStartHelp;
      goto LABEL_71;
    case 49:
      v10 = &kVOTEventCommandDescribeCameraScene;
      goto LABEL_71;
    case 50:
      v10 = &kVOTEventCommandShowDetectionUIWithMagnifierService;
      goto LABEL_71;
    case 51:
      v10 = &kVOTEventCommandHideDetectionUIWithMagnifierService;
      goto LABEL_71;
    case 52:
      v10 = &kVOTEventCommandActivateBrailleScreenInput;
      goto LABEL_71;
    case 53:
      v10 = &kVOTEventCommandBSIExit;
LABEL_71:
      v19 = *v10;
      if (v19)
      {
LABEL_72:
        v43 = [VOTEvent systemServerEventWithCommand:v19 info:v7, v50];
        [VOTSharedWorkspace dispatchCommand:v43];

        v26 = 0;
LABEL_73:
        v44 = 1;
      }

      else
      {
LABEL_76:
        v26 = 0;
LABEL_77:
        v44 = 0;
      }

      v45 = [AXIPCMessage alloc];
      v51 = @"result";
      v46 = [NSNumber numberWithBool:v44];
      v52 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v48 = [v45 initWithKey:7000 payload:v47];

      return v48;
    default:
      goto LABEL_67;
  }
}

- (void)_updateRotorsForElementWithErrorMessage:(id *)a3
{
  v4 = dispatch_time(0, 2000000000);
  v5 = dispatch_semaphore_create(0);
  v6 = +[VOTWorkspace sharedWorkspace];
  v7 = [v6 elementManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100110534;
  v10[3] = &unk_1001C76E8;
  v11 = v5;
  v8 = v5;
  [v7 updateRotorForCurrentElement:1 completion:v10];

  v9 = dispatch_semaphore_wait(v8, v4);
  if (a3 && v9)
  {
    *a3 = @"ElementManager timeout occurred";
  }
}

- (void)handleAutomationTestingCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001108CC;
  v46[3] = &unk_1001CB620;
  v48 = v49;
  v7 = a4;
  v47 = v7;
  v8 = objc_retainBlock(v46);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10011096C;
  v43[3] = &unk_1001CB648;
  v45 = v49;
  v9 = v7;
  v44 = v9;
  v10 = objc_retainBlock(v43);
  v11 = [v6 payload];
  v12 = [v11 objectForKeyedSubscript:@"timeout"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v6 payload];
  v16 = [v15 objectForKeyedSubscript:@"command"];
  v17 = [v16 integerValue];
  v30 = v9;
  v18 = v8;

  v19 = [v6 payload];
  v20 = [v19 objectForKeyedSubscript:@"userInfo"];

  v21 = dispatch_time(0, (v14 * 1000000000.0));
  v22 = dispatch_semaphore_create(0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100110A58;
  v41 = sub_100110A68;
  v42 = 0;
  v23 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110A70;
  block[3] = &unk_1001CB670;
  v36 = v17;
  v24 = v20;
  v35 = &v37;
  v32 = v24;
  v33 = self;
  v25 = v22;
  v34 = v25;
  dispatch_async(v23, block);

  if (dispatch_semaphore_wait(v25, v21))
  {
    v26 = @"Timeout occurred";
    v27 = v10;
    v28 = v10;
  }

  else
  {
    v29 = v38[5];
    v27 = v10;
    if (v29)
    {
      v28 = v10;
    }

    else
    {
      v28 = v18;
    }

    if (v29)
    {
      v26 = v38[5];
    }

    else
    {
      v26 = &__NSDictionary0__struct;
    }
  }

  (v28[2])(v28, v26);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v49, 8);
}

- (id)isBrailleInputUIShowing:(id)a3
{
  v3 = +[VOTWorkspace sharedWorkspace];
  v4 = [v3 brailleInputActive];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7006 payload:v7];

  return v8;
}

- (id)isHandwritingInputUIShowing:(id)a3
{
  v3 = +[VOTWorkspace sharedWorkspace];
  v4 = [v3 handwritingInputActive];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7009 payload:v7];

  return v8;
}

- (id)isScreenCurtainEnabled:(id)a3
{
  v3 = +[VOTWorkspace sharedWorkspace];
  v4 = [v3 screenCurtainEnabled];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7012 payload:v7];

  return v8;
}

- (id)isBluetoothBrailleDisplayConnected:(id)a3
{
  v3 = +[VOTBrailleManager manager];
  v4 = [v3 bluetoothBrailleDisplayConnected];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7011 payload:v7];

  return v8;
}

- (id)tutorialRecognizedGesture:(id)a3
{
  v3 = +[VOTWorkspace sharedWorkspace];
  v4 = [v3 elementManager];
  v5 = [v4 tutorialRecognizedGesture];

  v10 = v5;
  v11 = @"result";
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v8 = [[AXIPCMessage alloc] initWithKey:7014 payload:v7];

  return v8;
}

- (id)isBrailleScreenInputInScreenAwayMode:(id)a3
{
  v3 = +[VOTWorkspace sharedWorkspace];
  v4 = [v3 brailleInputTypingMode] == 0;

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7015 payload:v7];

  return v8;
}

- (id)currentCursorFrame:(id)a3
{
  v3 = +[VOTDisplayManager displayManager];
  [v3 currentCursorFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [AXIPCMessage alloc];
  v17 = @"result";
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v13 = NSStringFromCGRect(v20);
  v18 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [v12 initWithKey:7016 payload:v14];

  return v15;
}

- (void)_modifyRotorItems:(id)a3 shouldEnable:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 voiceOverRotorItems];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 mutableCopy];
        v15 = [v13 objectForKeyedSubscript:@"RotorItem"];
        if (([v5 containsObject:v15] & 1) != 0 || objc_msgSend(v5, "containsObject:", @"all"))
        {
          v16 = [NSNumber numberWithBool:v4];
          [v14 setObject:v16 forKeyedSubscript:@"Enabled"];
        }

        [v6 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = +[AXSettings sharedInstance];
  [v17 setVoiceOverRotorItems:v6];
}

@end