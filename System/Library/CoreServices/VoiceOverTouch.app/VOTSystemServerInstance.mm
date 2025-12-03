@interface VOTSystemServerInstance
+ (id)serverInstance;
- (id)_initServer;
- (id)currentCursorFrame:(id)frame;
- (id)currentRotorName:(id)name;
- (id)isBluetoothBrailleDisplayConnected:(id)connected;
- (id)isBrailleInputUIShowing:(id)showing;
- (id)isBrailleScreenInputInScreenAwayMode:(id)mode;
- (id)isHandwritingInputUIShowing:(id)showing;
- (id)isScreenCurtainEnabled:(id)enabled;
- (id)lastScreenChange:(id)change;
- (id)lastSoundsPlayed:(id)played;
- (id)lastSpokenContents:(id)contents;
- (id)lastSpokenPhrases:(id)phrases;
- (id)tutorialRecognizedGesture:(id)gesture;
- (id)voiceOverCommandTriggered:(id)triggered;
- (id)voiceOverCurrentFocusedElement:(id)element;
- (id)voiceOverEventCommandTriggered:(id)triggered;
- (id)voiceOverGestureTriggered:(id)triggered;
- (void)_modifyRotorItems:(id)items shouldEnable:(BOOL)enable;
- (void)_updateRotorsForElementWithErrorMessage:(id *)message;
- (void)dealloc;
- (void)handleAutomationTestingCommand:(id)command completion:(id)completion;
- (void)voiceOverTutorialEventCommandTriggered:(id)triggered;
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

- (id)lastScreenChange:(id)change
{
  v3 = [AXIPCMessage alloc];
  v8 = @"result";
  lastScreenChangeTime = [VOTSharedWorkspace lastScreenChangeTime];
  v9 = lastScreenChangeTime;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v3 initWithKey:7004 payload:v5];

  return v6;
}

- (id)lastSoundsPlayed:(id)played
{
  v3 = [AXIPCMessage alloc];
  v8 = @"result";
  v4 = +[VOTOutputManager previousSoundsPlayed];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v3 initWithKey:7005 payload:v5];

  return v6;
}

- (id)lastSpokenPhrases:(id)phrases
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
        outputActions = [v6 outputActions];
        v9 = [outputActions countByEnumeratingWithState:&v22 objects:v32 count:16];
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
                objc_enumerationMutation(outputActions);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              string = [v13 string];
              if ([string length] && !objc_msgSend(v13, "component"))
              {
                if ([v7 length])
                {
                  [v7 appendString:@" "];
                }

                [v7 appendString:string];
              }
            }

            v10 = [outputActions countByEnumeratingWithState:&v22 objects:v32 count:16];
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

- (id)lastSpokenContents:(id)contents
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

        dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
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

- (id)currentRotorName:(id)name
{
  currentElement = [VOTSharedWorkspace currentElement];
  elementManager = [VOTSharedWorkspace elementManager];
  elementRotor = [elementManager elementRotor];
  currentRotorElement = [elementRotor currentRotorElement];
  v8 = [currentElement isEqual:currentRotorElement];

  if ((v8 & 1) == 0)
  {
    [(VOTSystemServerInstance *)self _updateRotorsForElementWithErrorMessage:0];
  }

  v9 = [AXIPCMessage alloc];
  v14 = @"result";
  currentElementRotorString = [VOTSharedWorkspace currentElementRotorString];
  v15 = currentElementRotorString;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v9 initWithKey:7001 payload:v11];

  return v12;
}

- (id)voiceOverCurrentFocusedElement:(id)element
{
  currentElement = [VOTSharedWorkspace currentElement];
  uiElement = [currentElement uiElement];
  axElement = [uiElement axElement];

  if (axElement)
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

- (id)voiceOverGestureTriggered:(id)triggered
{
  payload = [triggered payload];
  v4 = [payload objectForKey:@"gesture"];

  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
  if (v5)
  {
    v6 = +[VOTWorkspace sharedWorkspace];
    userCommandManager = [v6 userCommandManager];

    v8 = +[VOSCommandResolver resolverForCurrentHost];
    v9 = [userCommandManager eventForTouchGesture:v5 resolver:v8];

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

- (void)voiceOverTutorialEventCommandTriggered:(id)triggered
{
  triggeredCopy = triggered;
  if ([triggeredCopy isEqualToString:@"VO.Tutorial.Activate"])
  {
    v3 = +[VOTWorkspace sharedWorkspace];
    elementManager = [v3 elementManager];
    elementManager3 = elementManager;
    v6 = 1;
LABEL_5:
    [elementManager setTutorialListeningForGestureNotifications:v6];
    goto LABEL_6;
  }

  if ([triggeredCopy isEqualToString:@"VO.Tutorial.Deactivate"])
  {
    v3 = +[VOTWorkspace sharedWorkspace];
    elementManager = [v3 elementManager];
    elementManager3 = elementManager;
    v6 = 0;
    goto LABEL_5;
  }

  v7 = [triggeredCopy isEqualToString:@"VO.Tutorial.Reset"];
  v8 = +[VOTWorkspace sharedWorkspace];
  elementManager2 = [v8 elementManager];
  v10 = elementManager2;
  if (v7)
  {
    [elementManager2 setTutorialActiveRestrictionType:0];

    v3 = +[VOTWorkspace sharedWorkspace];
    elementManager3 = [v3 elementManager];
    [elementManager3 setTutorialRestrictedCommands:0];
    goto LABEL_6;
  }

  tutorialRestrictedCommands = [elementManager2 tutorialRestrictedCommands];

  if (!tutorialRestrictedCommands)
  {
    v12 = +[VOTWorkspace sharedWorkspace];
    elementManager4 = [v12 elementManager];
    v14 = objc_alloc_init(NSMutableArray);
    [elementManager4 setTutorialRestrictedCommands:v14];
  }

  if ([triggeredCopy containsString:@"VO.Tutorial.Deny"])
  {
    v3 = [triggeredCopy substringFromIndex:{objc_msgSend(@"VO.Tutorial.Deny", "length")}];
    v15 = +[VOTWorkspace sharedWorkspace];
    elementManager5 = [v15 elementManager];
    tutorialRestrictedCommands2 = [elementManager5 tutorialRestrictedCommands];
    [tutorialRestrictedCommands2 addObject:v3];

    elementManager3 = +[VOTWorkspace sharedWorkspace];
    v5ElementManager = [elementManager3 elementManager];
    v19 = v5ElementManager;
    v20 = 1;
LABEL_17:
    [v5ElementManager setTutorialActiveRestrictionType:v20];

    goto LABEL_6;
  }

  if ([triggeredCopy containsString:@"VO.Tutorial.Allow"])
  {
    v3 = [triggeredCopy substringFromIndex:{objc_msgSend(@"VO.Tutorial.Allow", "length")}];
    v21 = +[VOTWorkspace sharedWorkspace];
    elementManager6 = [v21 elementManager];
    tutorialRestrictedCommands3 = [elementManager6 tutorialRestrictedCommands];
    [tutorialRestrictedCommands3 addObject:v3];

    elementManager3 = +[VOTWorkspace sharedWorkspace];
    v5ElementManager = [elementManager3 elementManager];
    v19 = v5ElementManager;
    v20 = 2;
    goto LABEL_17;
  }

  v3 = +[VOTWorkspace sharedWorkspace];
  elementManager3 = [v3 elementManager];
  [elementManager3 setTutorialPage:triggeredCopy];
LABEL_6:
}

- (id)voiceOverEventCommandTriggered:(id)triggered
{
  payload = [triggered payload];
  v5 = [payload objectForKey:@"eventCommand"];

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

- (id)voiceOverCommandTriggered:(id)triggered
{
  triggeredCopy = triggered;
  payload = [triggeredCopy payload];
  v5 = [payload objectForKey:@"command"];
  intValue = [v5 intValue];

  v7 = [objc_allocWithZone(AXIndexMap) init];
  LOBYTE(v50) = 1;
  _AXLogWithFacility();
  x = CGPointZero.x;
  y = CGPointZero.y;
  switch(intValue)
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
      isQuickNavOn = [v36 isQuickNavOn];

      if (!isQuickNavOn)
      {
        goto LABEL_67;
      }

      goto LABEL_57;
    case 23:
      v38 = [VOTKeyboardManager keyboardManager:v50];
      isQuickNavOn2 = [v38 isQuickNavOn];

      if (isQuickNavOn2)
      {
        goto LABEL_67;
      }

LABEL_57:
      v10 = &kVOTEventCommandToggleQuickNav;
      goto LABEL_71;
    case 24:
      payload2 = [triggeredCopy payload];
      v22 = [payload2 objectForKey:@"argument"];

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
      payload3 = [triggeredCopy payload];
      v22 = [payload3 objectForKey:@"argument"];

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
      payload4 = [triggeredCopy payload];
      v22 = [payload4 objectForKey:@"argument"];

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
      payload5 = [triggeredCopy payload];
      v16 = [payload5 objectForKey:@"argument"];

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
      payload6 = [triggeredCopy payload];
      v33 = [payload6 objectForKey:@"argument"];
      bOOLValue = [v33 BOOLValue];

      [VOTSharedWorkspace setInPerformanceTestMode:bOOLValue];
      goto LABEL_35;
    case 32:
      [VOTSharedWorkspace setInPerformanceTestMode:{1, v50, @"Got command %d", intValue}];
      v19 = kVOTEventCommandAnnouncement;
      [v7 setObject:@"A reasonably long piece of text to announce!" forIndex:116];
      if (!v19)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    case 33:
      payload7 = [triggeredCopy payload];
      v16 = [payload7 objectForKey:@"argument"];

      systemVisualizationState = [VOTSharedWorkspace systemVisualizationState];
      integerValue = [v16 integerValue];
      [VOTSharedWorkspace setSystemVisualizationState:integerValue];
      v19 = 0;
      if (integerValue == 3 && systemVisualizationState != 3)
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
      payload8 = [triggeredCopy payload];
      v13 = [payload8 objectForKey:@"argument"];

      if (v13)
      {
        bOOLValue2 = [v13 BOOLValue];
        [VOTSharedWorkspace setSystemVolumeControlsAvailablity:bOOLValue2];
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

- (void)_updateRotorsForElementWithErrorMessage:(id *)message
{
  v4 = dispatch_time(0, 2000000000);
  v5 = dispatch_semaphore_create(0);
  v6 = +[VOTWorkspace sharedWorkspace];
  elementManager = [v6 elementManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100110534;
  v10[3] = &unk_1001C76E8;
  v11 = v5;
  v8 = v5;
  [elementManager updateRotorForCurrentElement:1 completion:v10];

  v9 = dispatch_semaphore_wait(v8, v4);
  if (message && v9)
  {
    *message = @"ElementManager timeout occurred";
  }
}

- (void)handleAutomationTestingCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001108CC;
  v46[3] = &unk_1001CB620;
  v48 = v49;
  completionCopy = completion;
  v47 = completionCopy;
  v8 = objc_retainBlock(v46);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10011096C;
  v43[3] = &unk_1001CB648;
  v45 = v49;
  v9 = completionCopy;
  v44 = v9;
  v10 = objc_retainBlock(v43);
  payload = [commandCopy payload];
  v12 = [payload objectForKeyedSubscript:@"timeout"];
  [v12 doubleValue];
  v14 = v13;

  payload2 = [commandCopy payload];
  v16 = [payload2 objectForKeyedSubscript:@"command"];
  integerValue = [v16 integerValue];
  v30 = v9;
  v18 = v8;

  payload3 = [commandCopy payload];
  v20 = [payload3 objectForKeyedSubscript:@"userInfo"];

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
  v36 = integerValue;
  v24 = v20;
  v35 = &v37;
  v32 = v24;
  selfCopy = self;
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

- (id)isBrailleInputUIShowing:(id)showing
{
  v3 = +[VOTWorkspace sharedWorkspace];
  brailleInputActive = [v3 brailleInputActive];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:brailleInputActive];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7006 payload:v7];

  return v8;
}

- (id)isHandwritingInputUIShowing:(id)showing
{
  v3 = +[VOTWorkspace sharedWorkspace];
  handwritingInputActive = [v3 handwritingInputActive];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:handwritingInputActive];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7009 payload:v7];

  return v8;
}

- (id)isScreenCurtainEnabled:(id)enabled
{
  v3 = +[VOTWorkspace sharedWorkspace];
  screenCurtainEnabled = [v3 screenCurtainEnabled];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:screenCurtainEnabled];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7012 payload:v7];

  return v8;
}

- (id)isBluetoothBrailleDisplayConnected:(id)connected
{
  v3 = +[VOTBrailleManager manager];
  bluetoothBrailleDisplayConnected = [v3 bluetoothBrailleDisplayConnected];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:bluetoothBrailleDisplayConnected];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:7011 payload:v7];

  return v8;
}

- (id)tutorialRecognizedGesture:(id)gesture
{
  v3 = +[VOTWorkspace sharedWorkspace];
  elementManager = [v3 elementManager];
  tutorialRecognizedGesture = [elementManager tutorialRecognizedGesture];

  v10 = tutorialRecognizedGesture;
  v11 = @"result";
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v8 = [[AXIPCMessage alloc] initWithKey:7014 payload:v7];

  return v8;
}

- (id)isBrailleScreenInputInScreenAwayMode:(id)mode
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

- (id)currentCursorFrame:(id)frame
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

- (void)_modifyRotorItems:(id)items shouldEnable:(BOOL)enable
{
  enableCopy = enable;
  itemsCopy = items;
  v6 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = +[AXSettings sharedInstance];
  voiceOverRotorItems = [v7 voiceOverRotorItems];

  obj = voiceOverRotorItems;
  v9 = [voiceOverRotorItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        if (([itemsCopy containsObject:v15] & 1) != 0 || objc_msgSend(itemsCopy, "containsObject:", @"all"))
        {
          v16 = [NSNumber numberWithBool:enableCopy];
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