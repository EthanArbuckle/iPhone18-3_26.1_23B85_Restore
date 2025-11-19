@interface AXBEventManager
+ (id)sharedManager;
- (AXBEventManager)init;
- (int)systemAppPid;
- (unsigned)machPortForPoint:(CGPoint)a3;
- (unsigned)systemEventPort;
- (void)_normalizeEventForContext:(id)a3;
- (void)clearLastRecordPostedThrougHID;
- (void)dispatchEventRepresentationToClient:(id)a3;
- (void)postEvent:(id)a3 systemEvent:(BOOL)a4 afterNamedTap:(id)a5 namedTaps:(id)a6;
@end

@implementation AXBEventManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[AXBEventManager sharedManager];
  }

  v3 = sharedManager_SharedManager_0;

  return v3;
}

uint64_t __32__AXBEventManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager_0 = objc_alloc_init(AXBEventManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBEventManager)init
{
  v9.receiver = self;
  v9.super_class = AXBEventManager;
  v2 = [(AXBEventManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBBAE0] serverIfRunning];
    v4 = [v3 displays];

    v5 = [v4 count];
    if (v5)
    {
      v5 = [v4 objectAtIndex:0];
    }

    v6 = _WindowDisplay;
    _WindowDisplay = v5;

    _AXSystemEventPort = GSGetPurpleSystemEventPort();
    v7 = v2;
  }

  return v2;
}

- (int)systemAppPid
{
  v2 = [MEMORY[0x29EDBDFB0] server];
  v3 = [v2 pid];

  return v3;
}

- (unsigned)systemEventPort
{
  result = _AXSystemEventPort;
  if (!_AXSystemEventPort)
  {
    result = GSGetPurpleSystemEventPort();
    _AXSystemEventPort = result;
  }

  return result;
}

- (void)_normalizeEventForContext:(id)a3
{
  v15 = a3;
  v4 = [v15 type] == 3001;
  v5 = v15;
  if (!v4)
  {
    [v15 windowLocation];
    v6 = AXRotateToScreen();
    v8 = [_WindowDisplay contextIdAtPosition:{fmax(v6, 0.0), fmax(v7, 0.0)}];
    v9 = [v15 handInfo];
    [v15 windowLocation];
    [(AXBEventManager *)self convertPoint:v8 toContextId:0 displayId:?];
    [v15 setWindowLocation:?];
    v10 = [v9 paths];
    v11 = [v10 count];

    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [v9 paths];
        v14 = [v13 objectAtIndexedSubscript:i];

        [v14 pathLocation];
        [(AXBEventManager *)self convertPoint:v8 toContextId:0 displayId:?];
        [v14 setPathLocation:?];
        [v14 setPathWindowContextID:v8];
      }
    }

    v5 = v15;
  }
}

- (void)dispatchEventRepresentationToClient:(id)a3
{
  v63 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = +[AXBackBoardGlue hidClientConnectionManager];
  v6 = [v4 fakeTouchScaleEventRepresentation:0];

  v7 = [v6 newHIDEventRef];
  if (v7)
  {
    v8 = v7;
    if ([v6 type] == 3001)
    {
      if (BKSHIDDigitizerEventIsFirstTouchDown())
      {
        IOHIDEventGetTimeStamp();
        if (dispatchEventRepresentationToClient__onceToken != -1)
        {
          [AXBEventManager dispatchEventRepresentationToClient:];
        }
      }

      v9 = [v6 handInfo];
      v10 = [v9 paths];
      v11 = [v10 firstObject];

      if (v11)
      {
        v59 = 0;
        v12 = [v11 pathIndex];
        v13 = [MEMORY[0x29EDBDF58] touchCounter];
        [v11 pathLocation];
        v15 = v14;
        [v11 pathLocation];
        *&v17 = v16;
        [v11 pathLocation];
        *&v19 = v18;
        [v11 pathLocation];
        v21 = v20;
        v58 = __PAIR64__(v13, v12);
        LODWORD(v60) = 0;
        *(&v60 + 1) = v15;
        v61 = __PAIR64__(v19, v17);
        v62 = v21;
        [v6 contextId];
        BKSHIDEventSetDigitizerInfoWithSubEventInfos();
      }

      else
      {
        [v6 contextId];
        BKSHIDEventSetDigitizerInfo();
      }

      goto LABEL_17;
    }

    [v6 type];
    if (AXEventTypeIsKeyboardKey())
    {
      v23 = [MEMORY[0x29EDBBAE0] server];
      v24 = [v23 displayWithDisplayId:{objc_msgSend(v6, "displayId")}];

      v25 = [v24 uniqueId];
      [v6 contextId];
      BKSHIDEventSetSimpleInfo();

      goto LABEL_17;
    }

    [v6 type];
    if (!AXEventTypeShouldLetBackboardProcess())
    {
LABEL_17:
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0;
      if (![v6 contextId])
      {
        v26 = [v6 clientId];
        if (!v26)
        {
          if ([v6 taskPort])
          {
            goto LABEL_21;
          }

          v42 = [NSClassFromString(&cfstr_Bksystemshells.isa) safeValueForKey:@"sharedInstance"];
          v26 = [v42 safeValueForKey:@"primarySystemShell"];

          if (!v26)
          {
            v43 = [MEMORY[0x29EDBD6B8] sharedInstance];
            v44 = [v43 ignoreLogging];

            if ((v44 & 1) == 0)
            {
              v45 = [MEMORY[0x29EDBD6B8] identifier];
              v46 = AXLoggerForFacility();

              v47 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v46, v47))
              {
                v48 = AXColorizeFormatLog();
                v49 = _AXStringForArgs();
                if (os_log_type_enabled(v46, v47))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v49;
                  _os_log_impl(&dword_29BBBD000, v46, v47, "%{public}@", &buf, 0xCu);
                }
              }
            }
          }

          v50 = [v26 safeValueForKey:@"bundleIdentifier"];
          [v6 setClientId:v50];
        }
      }

LABEL_21:
      v27 = [v6 clientId];
      v28 = v27 == 0;

      if (!v28)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v56 = 0x2020000000;
        v57 = 0;
        v29 = v5;
        v54 = v6;
        AXPerformSafeBlock();
        v30 = *(*(&buf + 1) + 24);

        _Block_object_dispose(&buf, 8);
        if (v30 >= 1)
        {
          v53 = v29;
          AXPerformSafeBlock();
        }
      }

      if (v59[3])
      {
        goto LABEL_29;
      }

      if (![v6 taskPort] && objc_msgSend(v6, "contextId"))
      {
        v31 = [MEMORY[0x29EDBBAE0] serverIfRunning];
        [v6 setTaskPort:{objc_msgSend(v31, "taskNamePortOfContextId:", objc_msgSend(v6, "contextId"))}];
      }

      v52 = v5;
      v32 = v6;
      AXPerformSafeBlock();

      if (v59[3])
      {
LABEL_29:
        CFAbsoluteTimeGetCurrent();
        v51 = v6;
        AXPerformSafeBlock();
        v33 = v59[3];
        IOHIDEventSystemConnectionDispatchEvent();
        CFRelease(v59[3]);
        v34 = v51;
      }

      else
      {
        v36 = [MEMORY[0x29EDBD6B8] sharedInstance];
        v37 = [v36 ignoreLogging];

        if (v37)
        {
          goto LABEL_31;
        }

        v38 = [MEMORY[0x29EDBD6B8] identifier];
        v34 = AXLoggerForFacility();

        v39 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v34, v39))
        {
          v40 = AXColorizeFormatLog();
          v41 = _AXStringForArgs();
          if (os_log_type_enabled(v34, v39))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v41;
            _os_log_impl(&dword_29BBBD000, v34, v39, "%{public}@", &buf, 0xCu);
          }
        }
      }

LABEL_31:
      CFRelease(v8);
      _Block_object_dispose(&v58, 8);
      goto LABEL_32;
    }

    [(AXBEventManager *)self _processHIDEvent:v8];
    CFRelease(v8);
  }

  else
  {
    v22 = AXLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(AXBEventManager *)v6 dispatchEventRepresentationToClient:v22];
    }
  }

LABEL_32:

  v35 = *MEMORY[0x29EDCA608];
}

double __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 * 0.000000001;
    dispatchEventRepresentationToClient__timeScale = *&result;
  }

  return result;
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_303(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientId];
  *(*(*(a1 + 48) + 8) + 24) = [v2 pidForBundleID:v3];
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_2(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Bkshideventdef.isa);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_3;
  v4[3] = &__block_descriptor_36_e8_v16__0_8l;
  v5 = *(a1 + 48);
  v3 = [(objc_class *)v2 build:v4];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) copyClientForDestination:v3];
}

uint64_t __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) copyClientForTaskPort:{objc_msgSend(*(a1 + 40), "taskPort")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_5(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if ([*(a1 + 32) type] == 3001)
  {
    v2 = *(a1 + 48);
    v3 = BKSHIDEventGetDigitizerAttributes();
    v4 = [v3 pathAttributes];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          [v9 preciseLocationX];
          v11 = v10;
          [v9 preciseLocationY];
          [*(a1 + 40) convertPoint:objc_msgSend(*(a1 + 32) fromContextId:"contextId") displayId:{objc_msgSend(*(a1 + 32), "displayId"), v11, v12}];
          +[AXBackBoardGlue _applyExtendedHitTestInformationForCAScreenCoordinates:displayUUID:toPathAttributes:secureName:excludeContextIDs:](AXBackBoardGlue, "_applyExtendedHitTestInformationForCAScreenCoordinates:displayUUID:toPathAttributes:secureName:excludeContextIDs:", 0, v9, [*(a1 + 32) secureName], 0, v13, v14);
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v15 = *(a1 + 48);
    BKSHIDEventSetAttributes();
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)postEvent:(id)a3 systemEvent:(BOOL)a4 afterNamedTap:(id)a5 namedTaps:(id)a6
{
  v8 = a4;
  v26 = a3;
  v10 = a5;
  v11 = a6;
  if ([v26 type] == 3001)
  {
    v12 = [v26 handInfo];
    if ([v12 eventType] == 2 || objc_msgSend(v12, "eventType") == 6 || objc_msgSend(v12, "eventType") == 8)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = [v12 eventType] == 1;
      v14 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  v15 = [v26 type];
  v16 = 0;
  if (v15 <= 3000)
  {
    if (((v15 - 1000) > 0x33 || ((1 << (v15 + 24)) & 0xFFC007E603FC3) == 0) && (v15 - 10) >= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v15 - 4000) < 2 || v15 == 3001)
  {
LABEL_11:
    v16 = [v26 newHIDEventRef];
  }

LABEL_12:
  if ([v26 type] == 50)
  {
    v17 = [(AXBEventManager *)self systemEventPort];
    v18 = 1;
  }

  else
  {
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    if (v19 == 1)
    {
      if (v8)
      {
        v20 = [(AXBEventManager *)self systemEventPort];
      }

      else
      {
        [v26 windowLocation];
        v20 = [(AXBEventManager *)self machPortForPoint:?];
      }

      v17 = v20;
      if (v13)
      {
        v18 = 0;
        postEvent_systemEvent_afterNamedTap_namedTaps__DownPort = v20;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = postEvent_systemEvent_afterNamedTap_namedTaps__DownPort;
    }
  }

  +[AXBackBoardGlue sendUserEventOccurred];
  -[AXBEventManager setHomeIsDown:](self, "setHomeIsDown:", [v26 type] == 1000);
  if (!v11 && v16)
  {
    v21 = [v26 copy];
    lastHIDRecord = self->_lastHIDRecord;
    self->_lastHIDRecord = v21;

    if (!IOHIDEventGetSenderID())
    {
      IOHIDEventSetSenderID();
      NSLog(&cfstr_NoIohidsenderi.isa, v26);
    }

    [(AXBEventManager *)self _processHIDEvent:v16];
LABEL_35:
    CFRelease(v16);
    goto LABEL_36;
  }

  if (!v8)
  {
    [(AXBEventManager *)self _normalizeEventForContext:v26];
  }

  [v26 setTaskPort:v17];
  v23 = [MEMORY[0x29EDBDF60] sharedManager];
  v24 = v23;
  eventTapIdentifier = v10;
  if (!v10)
  {
    eventTapIdentifier = self->_eventTapIdentifier;
  }

  [v23 sendEvent:v26 afterTap:eventTapIdentifier useGSEvent:v16 == 0 namedTaps:v11 options:v18];

  if (v16)
  {
    goto LABEL_35;
  }

LABEL_36:
}

- (void)clearLastRecordPostedThrougHID
{
  lastHIDRecord = self->_lastHIDRecord;
  self->_lastHIDRecord = 0;
  MEMORY[0x2A1C71028]();
}

- (unsigned)machPortForPoint:(CGPoint)a3
{
  result = [_WindowDisplay clientPortAtPosition:AXRotateToScreen()];
  if (!result)
  {

    return [(AXBEventManager *)self systemEventPort];
  }

  return result;
}

- (void)dispatchEventRepresentationToClient:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Could not create an event ref from: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end