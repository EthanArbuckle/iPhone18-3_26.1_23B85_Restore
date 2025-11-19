@interface SCATSwitchControlServerInstance
+ (id)serverInstance;
- (BOOL)_handleRemoteSCATAction:(int64_t)a3;
- (id)_automationSwitches;
- (id)_initServer;
- (id)clearSpokenPhrases:(id)a3;
- (id)currentFocusedElement:(id)a3;
- (id)getPointerFocusContext:(id)a3;
- (id)getPointerPoint:(id)a3;
- (id)headTrackingPoint:(id)a3;
- (id)isAutoScanEnabled:(id)a3;
- (id)isDwellEnabled:(id)a3;
- (id)isManualScanEnabled:(id)a3;
- (id)isScannerActive:(id)a3;
- (id)isScannerPaused:(id)a3;
- (id)lastSpokenPhrases:(id)a3;
- (id)setPointerPoint:(id)a3;
- (id)switchControlActionTriggered:(id)a3;
- (id)switchControlAutomationCommandTriggered:(id)a3;
- (void)_removeAutomationSwitches;
- (void)_setupAutomationSwitches;
- (void)dealloc;
@end

@implementation SCATSwitchControlServerInstance

+ (id)serverInstance
{
  if (qword_100218978 != -1)
  {
    sub_1001281A0();
  }

  v3 = qword_100218970;

  return v3;
}

- (id)_initServer
{
  v14.receiver = self;
  v14.super_class = SCATSwitchControlServerInstance;
  v2 = [(SCATSwitchControlServerInstance *)&v14 init];
  p_isa = &v2->super.isa;
  if (v2)
  {
    v2->_switchesLoadedForAutomation = 0;
    v4 = +[SCATSwitchControlWorkspace sharedWorkspace];
    v5 = [AXIPCServer alloc];
    v6 = [v5 initWithServiceName:AXSwitchControlServerServiceName perPidService:0];
    v7 = p_isa[1];
    p_isa[1] = v6;

    v8 = p_isa[1];
    v13 = 0;
    [v8 startServerWithError:&v13];
    v9 = v13;
    [p_isa[1] setHandlerWithTarget:p_isa selector:"switchControlActionTriggered:" forKey:6500 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"switchControlAutomationCommandTriggered:" forKey:6509 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"currentFocusedElement:" forKey:6501 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"isScannerActive:" forKey:6507 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"isScannerPaused:" forKey:6508 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"isAutoScanEnabled:" forKey:6504 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"isManualScanEnabled:" forKey:6505 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"isDwellEnabled:" forKey:6506 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"headTrackingPoint:" forKey:6510 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"lastSpokenPhrases:" forKey:6503 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"clearSpokenPhrases:" forKey:6511 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"setPointerPoint:" forKey:6512 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"getPointerPoint:" forKey:6513 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    [p_isa[1] setHandlerWithTarget:p_isa selector:"getPointerFocusContext:" forKey:6514 possibleRequiredEntitlements:{@"com.apple.accessibility.api", 0}];
    if (v9)
    {
      v10 = ASTLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001281B4(v9, v10);
      }
    }

    v11 = p_isa;
  }

  return p_isa;
}

- (void)dealloc
{
  if (self->_switchesLoadedForAutomation)
  {
    [(SCATSwitchControlServerInstance *)self _removeAutomationSwitches];
  }

  [(AXIPCServer *)self->_server removeAllHandlersForTarget:self];
  v3.receiver = self;
  v3.super_class = SCATSwitchControlServerInstance;
  [(SCATSwitchControlServerInstance *)&v3 dealloc];
}

- (id)_automationSwitches
{
  v2 = SCATSwitchSourceAutomation;
  v3 = SCATSwitchTypeOptional;
  v32 = [AXSwitch switchWithAction:100 name:@"AX Activate" source:SCATSwitchSourceAutomation type:SCATSwitchTypeOptional];
  v33[0] = v32;
  v31 = [AXSwitch switchWithAction:101 name:@"AX Menu" source:v2 type:v3];
  v33[1] = v31;
  v30 = [AXSwitch switchWithAction:102 name:@"AX Run" source:v2 type:v3];
  v33[2] = v30;
  v29 = [AXSwitch switchWithAction:103 name:@"AX Select" source:v2 type:v3];
  v33[3] = v29;
  v28 = [AXSwitch switchWithAction:104 name:@"AX Step Next" source:v2 type:v3];
  v33[4] = v28;
  v27 = [AXSwitch switchWithAction:105 name:@"AX Step Previous" source:v2 type:v3];
  v33[5] = v27;
  v26 = [AXSwitch switchWithAction:106 name:@"AX Stop" source:v2 type:v3];
  v33[6] = v26;
  v25 = [AXSwitch switchWithAction:107 name:@"AX Siri Shortcuts" source:v2 type:v3];
  v33[7] = v25;
  v24 = [AXSwitch switchWithAction:200 name:@"AX App Switcher" source:v2 type:v3];
  v33[8] = v24;
  v23 = [AXSwitch switchWithAction:201 name:@"AX Home" source:v2 type:v3];
  v33[9] = v23;
  v22 = [AXSwitch switchWithAction:202 name:@"AX Notification Center" source:v2 type:v3];
  v33[10] = v22;
  v21 = [AXSwitch switchWithAction:203 name:@"AX Siri" source:v2 type:v3];
  v33[11] = v21;
  v20 = [AXSwitch switchWithAction:204 name:@"AX Volume Down" source:v2 type:v3];
  v33[12] = v20;
  v19 = [AXSwitch switchWithAction:205 name:@"AX Volume Up" source:v2 type:v3];
  v33[13] = v19;
  v18 = [AXSwitch switchWithAction:206 name:@"AX Force Touch" source:v2 type:v3];
  v33[14] = v18;
  v17 = [AXSwitch switchWithAction:207 name:@"AX Dictation" source:v2 type:v3];
  v33[15] = v17;
  v16 = [AXSwitch switchWithAction:208 name:@"AX Triple Click" source:v2 type:v3];
  v33[16] = v16;
  v15 = [AXSwitch switchWithAction:209 name:@"AX Control Center" source:v2 type:v3];
  v33[17] = v15;
  v14 = [AXSwitch switchWithAction:210 name:@"AX Escape" source:v2 type:v3];
  v33[18] = v14;
  v4 = [AXSwitch switchWithAction:215 name:@"AX Scroll Up" source:v2 type:v3];
  v33[19] = v4;
  v5 = [AXSwitch switchWithAction:216 name:@"AX Scroll Down" source:v2 type:v3];
  v33[20] = v5;
  v6 = [AXSwitch switchWithAction:217 name:@"AX Scroll Left" source:v2 type:v3];
  v33[21] = v6;
  v7 = [AXSwitch switchWithAction:218 name:@"AX Scroll Right" source:v2 type:v3];
  v33[22] = v7;
  v8 = [AXSwitch switchWithAction:211 name:@"AX Camera Button" source:v2 type:v3];
  v33[23] = v8;
  v9 = [AXSwitch switchWithAction:212 name:@"AX Camera Button Light Press" source:v2 type:v3];
  v33[24] = v9;
  v10 = [AXSwitch switchWithAction:213 name:@"AX Camera Button Double Light Press" source:v2 type:v3];
  v33[25] = v10;
  v11 = [AXSwitch switchWithAction:214 name:@"AX Visual Intelligence" source:v2 type:v3];
  v33[26] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:27];

  return v12;
}

- (void)_setupAutomationSwitches
{
  if (!self->_switchesLoadedForAutomation)
  {
    v3 = [(SCATSwitchControlServerInstance *)self _automationSwitches];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 setAccessibilityEventUsagePage:5];
          [v8 setAccessibilityEventUsage:{objc_msgSend(v8, "action")}];
          SCATAddOrUpdateSwitchToSettings();
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    self->_switchesLoadedForAutomation = 1;
  }
}

- (void)_removeAutomationSwitches
{
  if (self->_switchesLoadedForAutomation)
  {
    v3 = [(SCATSwitchControlServerInstance *)self _automationSwitches];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          SCATRemoveSwitchFromSettings();
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_switchesLoadedForAutomation = 0;
  }
}

- (BOOL)_handleRemoteSCATAction:(int64_t)a3
{
  if (!self->_switchesLoadedForAutomation)
  {
    v4 = 6;
    if (!a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = [AXEventRepresentation accessibilityEventRepresentationWithSender:2 usagePage:v4 usage:a3];
    v14 = +[AXEventTapManager sharedManager];
    [v14 sendHIDSystemEvent:v13 senderID:0x8000000817319375];

    return 1;
  }

  if (!_AXSAutomationEnabled())
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100128264(v5, v16, v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_10;
  }

  v4 = 5;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10012822C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

LABEL_10:

  return 0;
}

- (id)switchControlActionTriggered:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKey:@"action"];
  v6 = [v5 intValue];

  if (v6)
  {
    v7 = [(SCATSwitchControlServerInstance *)self _handleRemoteSCATAction:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [AXIPCMessage alloc];
  v13 = @"result";
  v9 = [NSNumber numberWithBool:v7];
  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v8 initWithKey:6500 payload:v10];

  return v11;
}

- (id)switchControlAutomationCommandTriggered:(id)a3
{
  v4 = [a3 payload];
  v5 = [v4 objectForKeyedSubscript:@"command"];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    [(SCATSwitchControlServerInstance *)self _removeAutomationSwitches];
    v9 = +[SCATSwitchControlWorkspace sharedWorkspace];
    [v9 setIsMonitoring:0];

    v8 = 1;
  }

  else if (v6)
  {
    v10 = ASTLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10012829C(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v8 = 0;
  }

  else
  {
    [(SCATSwitchControlServerInstance *)self _setupAutomationSwitches];
    v7 = +[SCATSwitchControlWorkspace sharedWorkspace];
    v8 = 1;
    [v7 setIsMonitoring:1];
  }

  v18 = [AXIPCMessage alloc];
  v23 = @"result";
  v19 = [NSNumber numberWithBool:v8];
  v24 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v21 = [v18 initWithKey:6509 payload:v20];

  return v21;
}

- (id)currentFocusedElement:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 currentElement];

  if (v4 && ([v4 scatIsAXElement] & 1) != 0 && (objc_msgSend(v4, "uiElement"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "axElement"), v5, v6))
  {
    Data = _AXUIElementCreateData();
    v8 = [AXIPCMessage alloc];
    v12 = @"result";
    v13 = Data;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v8 initWithKey:6501 payload:v9];
  }

  else
  {
    v10 = [[AXIPCMessage alloc] initWithKey:6501 payload:0];
  }

  return v10;
}

- (id)isScannerActive:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 isScannerActive];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:6507 payload:v7];

  return v8;
}

- (id)isScannerPaused:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 isScannerPaused];

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:6508 payload:v7];

  return v8;
}

- (id)isAutoScanEnabled:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 scannerType] == 0;

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:6504 payload:v7];

  return v8;
}

- (id)isManualScanEnabled:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 scannerType] == 1;

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:6505 payload:v7];

  return v8;
}

- (id)isDwellEnabled:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 scannerType] == 2;

  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [NSNumber numberWithBool:v4];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [v5 initWithKey:6506 payload:v7];

  return v8;
}

- (id)headTrackingPoint:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  [v3 headTrackingPoint];
  v4 = [NSValue valueWithPoint:?];

  v5 = [AXIPCMessage alloc];
  v9 = @"result";
  v10 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v5 initWithKey:6510 payload:v6];

  return v7;
}

- (id)lastSpokenPhrases:(id)a3
{
  v3 = +[SCATScannerManager sharedManager];
  v4 = [v3 recentSpeechOutputStrings];

  v5 = [AXIPCMessage alloc];
  v6 = v5;
  if (v4)
  {
    v12 = @"result";
    v7 = [v3 recentSpeechOutputStrings];
    v8 = [v7 copy];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v6 initWithKey:6503 payload:v9];
  }

  else
  {
    v10 = [v5 initWithKey:6503 payload:0];
  }

  return v10;
}

- (id)clearSpokenPhrases:(id)a3
{
  v3 = +[SCATScannerManager sharedManager];
  [v3 clearRecentSpeech];
  v4 = [[AXIPCMessage alloc] initWithKey:6503 payload:0];

  return v4;
}

- (id)setPointerPoint:(id)a3
{
  v3 = [a3 payload];
  v4 = [v3 objectForKeyedSubscript:@"point"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pointValue];
    x = v5;
    y = v7;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v9 = +[SCATSwitchControlWorkspace sharedWorkspace];
  [v9 setPointerPoint:{x, y}];

  v10 = [AXIPCMessage alloc];
  v15 = @"result";
  v11 = [NSNumber numberWithBool:1];
  v16 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 initWithKey:6512 payload:v12];

  return v13;
}

- (id)getPointerPoint:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  [v3 pointerPoint];
  v4 = [NSValue valueWithPoint:?];

  v5 = [AXIPCMessage alloc];
  v9 = @"result";
  v10 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v5 initWithKey:6513 payload:v6];

  return v7;
}

- (id)getPointerFocusContext:(id)a3
{
  v3 = +[SCATSwitchControlWorkspace sharedWorkspace];
  v4 = [v3 curFocusContext];

  v5 = [AXIPCMessage alloc];
  v9 = @"result";
  v10 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v5 initWithKey:6514 payload:v6];

  return v7;
}

@end