@interface MSCRODBrailleDisplayManager
+ (id)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (BOOL)_brailleConfigMatch:(id)a3 withConfig:(id)a4;
- (BOOL)_hasActiveDisplay;
- (BOOL)_hasUserInteractedWithDeviceRecently;
- (BOOL)_registerSleepNotifications;
- (BOOL)isConfigured;
- (MSCRODBrailleDisplayManager)init;
- (id)_displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5;
- (id)driverConfiguration;
- (id)newBrailleDisplayCommandDispatcher;
- (void)_delayedHandleSystemSleep;
- (void)_delayedPowerChangedNotification:(id)a3;
- (void)_eventQueue_begin;
- (void)_eventQueue_brailleDriverDisconnected:(id)a3;
- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)a3;
- (void)_loadBluetoothDriverFromPreferences;
- (void)_loadBluetoothDriverWithAddress:(id)a3;
- (void)_reallyDelayedWakeFromSleep;
- (void)_registerHasBlankedScreenNotification;
- (void)_removeBluetoothDriverWithAddress:(id)a3;
- (void)_removeBluetoothDriverWithIOElement:(id)a3 removeFromPreferences:(BOOL)a4;
- (void)_saveBluetoothDisplayConfiguration:(id)a3;
- (void)_setupBluetooth;
- (void)addToDisplays:(id)a3;
- (void)airplaneModeChanged;
- (void)handleSettingsChange:(id)a3;
- (void)invalidate;
- (void)removeBluetoothDriverWithAddress:(id)a3;
- (void)setLastUserInteractionTime:(double)a3;
@end

@implementation MSCRODBrailleDisplayManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [objc_allocWithZone(MSCRODBrailleDisplayManager) init];
    v3 = qword_100019898;
    qword_100019898 = v2;

    v4 = qword_100019898;

    [SCROBrailleDisplayManager _setSharedManager:v4];
  }
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (qword_100019898)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MSCRODBrailleDisplayManager;
  return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
}

- (MSCRODBrailleDisplayManager)init
{
  v2 = self;
  if (!qword_100019898)
  {
    v22.receiver = self;
    v22.super_class = MSCRODBrailleDisplayManager;
    v3 = [(MSCRODBrailleDisplayManager *)&v22 init];
    v2 = v3;
    if (v3)
    {
      [*&v3->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__managedDisplayQueue] setActiveQueueMaximumSize:32];
      v4 = objc_opt_new();
      displays = v2->_displays;
      v2->_displays = v4;

      v6 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [[BRLTTable alloc] initWithIdentifier:v6];
        v8 = +[SCROBrailleTranslationManager sharedManager];
        v9 = [v7 serviceIdentifier];
        [v8 loadTranslatorWithServiceIdentifier:v9];

        v10 = [v7 language];
        [v8 setDefaultLanguage:v10];
      }

      *&v2->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__inputAccessMode] = 0;
      v2->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__showDotsSevenAndEight] = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100002B74, kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v12, v2, sub_100002B74, kAXSVoiceOverTouchBrailleVirtualStatusAlignmentChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v13 = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
      v14 = OBJC_IVAR___SCROBrailleDisplayManager__status;
      [*&v2->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__status] setVirtualAlignment:v13];
      [*&v2->SCROBrailleDisplayManager_opaque[v14] setMasterStatusCellIndex:_AXSVoiceOverTouchBrailleMasterStatusCellIndex()];
      v2->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__isValid] = 1;
      v15 = objc_opt_new();
      [(MSCRODBrailleDisplayManager *)v2 setRadiosPrefs:v15];

      v16 = [(MSCRODBrailleDisplayManager *)v2 radiosPrefs];
      [v16 setDelegate:v2];

      v17 = [(MSCRODBrailleDisplayManager *)v2 radiosPrefs];
      -[MSCRODBrailleDisplayManager setAirplaneMode:](v2, "setAirplaneMode:", [v17 airplaneMode]);

      v18 = *&v2->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002B8C;
      block[3] = &unk_100014770;
      v2 = v2;
      v21 = v2;
      dispatch_async(v18, block);
    }
  }

  return v2;
}

- (void)handleSettingsChange:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kAXSVoiceOverTouchBrailleContractionModeChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setContractionMode:_AXSVoiceOverTouchBrailleContractionMode()];
  }

  else if ([v4 isEqualToString:kAXSVoiceOverTouchBrailleEightDotModeChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setShowEightDotBraille:_AXSVoiceOverTouchBrailleEightDotMode() != 0];
  }

  else if ([v4 isEqualToString:kAXSVoiceOverTouchBrailleVirtualStatusAlignmentChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setVirtualStatusAlignment:_AXSVoiceOverTouchBrailleVirtualStatusAlignment()];
  }

  else if ([v4 isEqualToString:kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setMasterStatusCellIndex:_AXSVoiceOverTouchBrailleMasterStatusCellIndex()];
  }
}

- (void)_eventQueue_begin
{
  dispatch_assert_queue_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  if (self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__isValid] == 1)
  {
    [(MSCRODBrailleDisplayManager *)self _registerHasBlankedScreenNotification];
    [(MSCRODBrailleDisplayManager *)self _registerSleepNotifications];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002D48;
    block[3] = &unk_100014770;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    [(MSCRODBrailleDisplayManager *)self _loadStealthDisplay];
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_eventQueue_brailleDriverDisconnected:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v6 _eventQueue_brailleDriverDisconnected:v4];
  v5 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)a3
{
  v5 = OBJC_IVAR___SCROBrailleDisplayManager__status;
  v6 = [*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__status] masterStatusCellIndex];
  v7.receiver = self;
  v7.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v7 _eventQueue_setMasterStatusCellIndex:a3];
  if (v6 != a3 && [*&self->SCROBrailleDisplayManager_opaque[v5] masterStatusCellIndex] == a3)
  {
    _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
  }
}

- (void)_setupBluetooth
{
  v3 = +[BluetoothManager sharedInstance];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"powerChangedNotification:" name:BluetoothPowerChangedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"powerChangedNotification:" name:BluetoothAvailabilityChangedNotification object:0];
}

- (void)_delayedPowerChangedNotification:(id)a3
{
  v4 = a3;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handing power change: %@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = +[BluetoothManager sharedInstance];
  if ([v6 enabled] && !self->_isScreenBlank)
  {
    v17 = [(MSCRODBrailleDisplayManager *)self airplaneMode];

    if ((v17 & 1) == 0)
    {
      [(MSCRODBrailleDisplayManager *)self _loadBluetoothDriverFromPreferences];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = v4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSMutableArray *)self->_displays copy];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 ioElement];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = AXLogBrailleHW();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Call _removeBluetoothDriverWithIOElement for Display: %@", buf, 0xCu);
          }

          v16 = [v12 ioElement];
          [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:v16 removeFromPreferences:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v4 = v18;
LABEL_18:
}

- (id)_displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol])
  {
    v10 = MSCRODMobileBrailleDisplay;
LABEL_5:
    v11 = [(__objc2_class *)v10 displayWithIOElement:v7 driverIdentifier:v8 delegate:v9];
    goto LABEL_6;
  }

  if (v7)
  {
    v10 = SCROBrailleDisplay;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)_loadBluetoothDriverWithAddress:(id)a3
{
  v39 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = +[BluetoothManager sharedInstance];
  v4 = [v3 pairedDevices];

  v5 = [v4 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v5)
  {
    v6 = *v56;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v56 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v55 + 1) + 8 * v7);
      v9 = [v8 address];
      v10 = [v9 isEqualToString:v39];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_35;
    }

    v38 = v11;
    v36 = +[NSBundle brailleDriverDeviceDetectionInfo];
    if ([v36 count])
    {
      v40 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);
      v12 = [v38 name];
      v45 = +[NSExpression expressionForEvaluatedObject];
      v77 = 0u;
      v78 = 0u;
      *buf = 0u;
      v76 = 0u;
      obj = v36;
      v42 = [obj countByEnumeratingWithState:buf objects:&v69 count:16];
      if (v42)
      {
        v41 = *v76;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v76 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*&buf[8] + 8 * i);
            v14 = [obj objectForKey:?];
            v15 = [v14 objectForKey:kSCROBrailleDriverBluetoothSearchDictionary];

            if (v15)
            {
              if (v12)
              {
                v16 = [v15 objectForKey:kSCROBrailleDriverBluetoothDeviceNameRegexPatterns];
                v61 = 0u;
                v62 = 0u;
                v59 = 0u;
                v60 = 0u;
                v17 = v16;
                v18 = [v17 countByEnumeratingWithState:&v59 objects:&v65 count:16];
                if (v18)
                {
                  v19 = *v60;
                  while (2)
                  {
                    for (j = 0; j != v18; j = j + 1)
                    {
                      if (*v60 != v19)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v21 = [objc_allocWithZone(NSConstantValueExpression) initWithObject:*(*(&v59 + 1) + 8 * j)];
                      v22 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v45 rightExpression:v21 modifier:0 type:6 options:0];
                      v23 = [v22 evaluateWithObject:v12];

                      if (v23)
                      {

                        [v40 insertObject:v43 atIndex:0];
                        goto LABEL_31;
                      }
                    }

                    v18 = [v17 countByEnumeratingWithState:&v59 objects:&v65 count:16];
                    if (v18)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_31:
              }

              else
              {
                [v40 addObject:v43];
              }
            }
          }

          v42 = [obj countByEnumeratingWithState:buf objects:&v69 count:16];
        }

        while (v42);
      }
    }

    else
    {
      v40 = 0;
    }

    if ([v40 count] && (v24 = objc_msgSend(objc_allocWithZone(MSCRODIOBluetoothElement), "initWithAddress:", v39)) != 0)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v69 = 0;
      v70 = &v69;
      v71 = 0x3032000000;
      v72 = sub_100003BDC;
      v73 = sub_100003BEC;
      v74 = 0;
      v25 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003BF4;
      block[3] = &unk_1000147C0;
      block[4] = self;
      v26 = v24;
      v51 = v26;
      v53 = &v65;
      v54 = &v69;
      v52 = v40;
      dispatch_sync(v25, block);
      if ((v66[3] & 1) == 0)
      {
        [(MSCRODBrailleDisplayManager *)self _loadNextDriverForIOElement:v26];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = [*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__managedDisplayQueue] loadingDisplays];
        v28 = [v27 countByEnumeratingWithState:&v46 objects:v63 count:16];
        if (v28)
        {
          v29 = *v47;
          while (2)
          {
            for (k = 0; k != v28; k = k + 1)
            {
              if (*v47 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v46 + 1) + 8 * k);
              v32 = [v31 ioElement];
              v33 = [v32 isEqual:v26];

              if (v33)
              {
                [(NSMutableArray *)self->_displays addObject:v31];
                v34 = AXLogBrailleHW();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v31;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Adding BT display: %@", buf, 0xCu);
                }

                goto LABEL_53;
              }
            }

            v28 = [v27 countByEnumeratingWithState:&v46 objects:v63 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

LABEL_53:

        v35 = self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__automaticBrailleTranslation];
        _updateNewlyActiveDisplay();
        [v70[5] configurationDidChange];
      }

      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v65, 8);
    }

    else
    {
      v26 = [(MSCRODBrailleDisplayManager *)self delegate];
      [v26 handleFailedToLoadBluetoothDevice:v39];
    }
  }

  else
  {
LABEL_9:

LABEL_35:
    v38 = [(MSCRODBrailleDisplayManager *)self delegate];
    [v38 handleFailedToLoadBluetoothDevice:v39];
  }
}

- (void)_loadBluetoothDriverFromPreferences
{
  v42 = self;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v2 = +[AXSettings sharedInstance];
  obj = [v2 voiceOverBrailleDisplays];

  v45 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v45)
  {
    v44 = *v79;
    do
    {
      v3 = 0;
      do
      {
        if (*v79 != v44)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v46 = v3;
        v5 = *(*(&v78 + 1) + 8 * v3);
        v6 = AXLogBrailleHW();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processing BT device: %@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v5 objectForKey:kSCROBrailleDisplayBluetoothAddress];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v5 objectForKey:kSCROBrailleDisplayTransport];
            v9 = [v8 intValue];

            v10 = AXLogBrailleHW();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [NSNumber numberWithUnsignedInt:v9];
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BT transport type: %@", buf, 0xCu);
            }

            if (v9 == 2)
            {
              v47 = [objc_allocWithZone(MSCRODIOBluetoothElement) initWithAddress:v7];
              if (!v47)
              {
                goto LABEL_35;
              }

LABEL_37:
              v30 = AXLogBrailleHW();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                displays = v42->_displays;
                *buf = 138412290;
                *&buf[4] = displays;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "In _loadBluetoothDriverFromPreferences: _displays = %@", buf, 0xCu);
              }

              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v32 = v42->_displays;
              v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v66 objects:v90 count:16];
              if (v33)
              {
                v34 = *v67;
                while (2)
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v67 != v34)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v36 = [*(*(&v66 + 1) + 8 * i) ioElement];
                    v37 = [v36 isEqual:v47];

                    if (v37)
                    {

                      v41 = AXLogBrailleHW();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = v7;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Not remaking display, we already have a cached version: %@", buf, 0xCu);
                      }

                      goto LABEL_55;
                    }
                  }

                  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v66 objects:v90 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v87 = sub_100003BDC;
              v88 = sub_100003BEC;
              v89 = 0;
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v65 = 0;
              v56 = 0;
              v57 = &v56;
              v58 = 0x3032000000;
              v59 = sub_100003BDC;
              v60 = sub_100003BEC;
              v61 = 0;
              v38 = *&v42->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000045BC;
              block[3] = &unk_1000147E8;
              block[4] = v42;
              v47 = v47;
              v51 = v47;
              v52 = v5;
              v53 = buf;
              v54 = &v62;
              v55 = &v56;
              dispatch_sync(v38, block);
              v39 = AXLogBrailleHW();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [NSNumber numberWithBool:*(v63 + 24)];
                *v82 = 138412546;
                v83 = v40;
                v84 = 2112;
                v85 = v47;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding new display element? %@ %@", v82, 0x16u);
              }

              if (*(v63 + 24) == 1)
              {
                [(NSMutableArray *)v42->_displays addObject:*(*&buf[8] + 40)];
                [v57[5] configurationDidChange];
              }

              _Block_object_dispose(&v56, 8);
              _Block_object_dispose(&v62, 8);
              _Block_object_dispose(buf, 8);

LABEL_55:
            }

            else
            {
              if (v9 == 8)
              {
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v12 = +[BluetoothManager sharedInstance];
                v47 = [v12 pairedDevices];

                v49 = [v47 countByEnumeratingWithState:&v74 objects:v92 count:16];
                if (v49)
                {
                  v48 = *v75;
                  do
                  {
                    for (j = 0; j != v49; j = j + 1)
                    {
                      if (*v75 != v48)
                      {
                        objc_enumerationMutation(v47);
                      }

                      v14 = *(*(&v74 + 1) + 8 * j);
                      v15 = [v14 address];
                      v16 = [v15 isEqualToString:v7];

                      if (v16)
                      {
                        v72 = 0u;
                        v73 = 0u;
                        v70 = 0u;
                        v71 = 0u;
                        v17 = +[BluetoothManager sharedInstance];
                        v18 = [v17 connectingDevices];

                        v19 = 0;
                        v20 = [v18 countByEnumeratingWithState:&v70 objects:v91 count:16];
                        if (v20)
                        {
                          v21 = *v71;
                          do
                          {
                            for (k = 0; k != v20; k = k + 1)
                            {
                              if (*v71 != v21)
                              {
                                objc_enumerationMutation(v18);
                              }

                              v23 = [*(*(&v70 + 1) + 8 * k) address];
                              v24 = [v23 isEqualToString:v7];

                              v19 |= v24;
                            }

                            v20 = [v18 countByEnumeratingWithState:&v70 objects:v91 count:16];
                          }

                          while (v20);
                        }

                        if ((([v14 connected] | v19) & 1) == 0)
                        {
                          [v14 device];
                          v25 = BTDeviceConnectServices();
                          v26 = AXLogBrailleHW();
                          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                          {
                            v27 = [NSNumber numberWithInt:v25];
                            *buf = 138412546;
                            *&buf[4] = v27;
                            *&buf[12] = 2112;
                            *&buf[14] = v14;
                            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Connected to device[%@]: %@", buf, 0x16u);
                          }
                        }
                      }
                    }

                    v49 = [v47 countByEnumeratingWithState:&v74 objects:v92 count:16];
                  }

                  while (v49);
                }

                goto LABEL_55;
              }

LABEL_35:
              v28 = +[BluetoothManager sharedInstance];
              v29 = [v28 available];

              if ((v29 & 1) == 0)
              {
                v47 = 0;
                goto LABEL_37;
              }
            }
          }
        }

        v3 = v46 + 1;
      }

      while ((v46 + 1) != v45);
      v45 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v45);
  }
}

- (void)removeBluetoothDriverWithAddress:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004860;
  v4[3] = &unk_100014798;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_removeBluetoothDriverWithAddress:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = [objc_allocWithZone(MSCRODIOBluetoothElement) initWithAddress:v4];

  v5 = v6;
  if (v6)
  {
    [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:v6 removeFromPreferences:1];
    v5 = v6;
  }
}

- (void)_removeBluetoothDriverWithIOElement:(id)a3 removeFromPreferences:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing BT driver: %@", &buf, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v104 = 0x3032000000;
    v105 = sub_100003BDC;
    v106 = sub_100003BEC;
    v107 = 0;
    v96[0] = 0;
    v96[1] = v96;
    v96[2] = 0x2020000000;
    v97 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = sub_100003BDC;
    v94 = sub_100003BEC;
    v95 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = sub_100003BDC;
    v88 = sub_100003BEC;
    v89 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = sub_100003BDC;
    v82 = sub_100003BEC;
    v83 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 2;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100003BDC;
    v56 = sub_100003BEC;
    v57 = 0;
    displays = self->_displays;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10000510C;
    v50[3] = &unk_100014810;
    v9 = v6;
    v51 = v9;
    v10 = [(NSMutableArray *)displays indexOfObjectPassingTest:v50];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 >= [(NSMutableArray *)self->_displays count])
    {
      goto LABEL_24;
    }

    v11 = [(NSMutableArray *)self->_displays objectAtIndexedSubscript:v10];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v11;

    v13 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005150;
    block[3] = &unk_100014838;
    block[4] = self;
    p_buf = &buf;
    v40 = &v70;
    v41 = &v78;
    v42 = &v74;
    v43 = &v66;
    v44 = &v62;
    v45 = &v58;
    v46 = &v52;
    v47 = v96;
    v38 = v9;
    v48 = &v90;
    v49 = &v84;
    dispatch_sync(v13, block);
    if (!*(*(&buf + 1) + 40))
    {
LABEL_23:
      [v91[5] handleBrailleDriverDisconnected];
      [v85[5] configurationDidChange];

LABEL_24:
      _Block_object_dispose(&v52, 8);

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(&v66, 8);
      _Block_object_dispose(&v70, 8);
      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v78, 8);

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(&v90, 8);

      _Block_object_dispose(v96, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_25;
    }

    [(NSMutableArray *)self->_displays removeObject:?];
    v14 = AXLogBrailleHW();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(&buf + 1) + 40);
      LODWORD(v100) = 138412290;
      *(&v100 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing BT display: %@", &v100, 0xCu);
    }

    *&v100 = 0;
    *(&v100 + 1) = &v100;
    v101 = 0x2020000000;
    v102 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = [*(*(&buf + 1) + 40) configuration];
    v17 = +[AXSettings sharedInstance];
    v18 = [v17 voiceOverBrailleDisplays];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000053FC;
    v34[3] = &unk_100014860;
    v34[4] = self;
    v19 = v16;
    v35 = v19;
    v36 = &v100;
    [v18 enumerateObjectsUsingBlock:v34];

    if (v4 && *(*(&v100 + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = +[AXSettings sharedInstance];
      v21 = [v20 voiceOverBrailleDisplays];
      v22 = [v21 mutableCopy];

      [v22 removeObjectAtIndex:*(*(&v100 + 1) + 24)];
      v23 = +[AXSettings sharedInstance];
      [v23 setVoiceOverBrailleDisplays:v22];

      v24 = AXLogBrailleHW();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 138412290;
        v99 = v19;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removed display from list: %@", v98, 0xCu);
      }
    }

    [*(*(&buf + 1) + 40) invalidate];
    if (*(v71 + 24) != 1)
    {
      [(MSCRODBrailleDisplayManager *)self setUIDisplayMode];
      [(MSCRODBrailleDisplayManager *)self performSelector:"_loadStealthDisplay" withObject:0 afterDelay:0.0];
LABEL_22:

      _Block_object_dispose(&v100, 8);
      goto LABEL_23;
    }

    v25 = *(v75 + 24);
    if (*(v59 + 6))
    {
      v26 = v79[5];
      v27 = v53[5];
      if ((v75[3] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = v79[5];
      v29 = v53[5];
      if ((v75[3] & 1) == 0)
      {
LABEL_21:
        v31 = v63[3];
        v32 = *(v67 + 6);
        v33 = self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__automaticBrailleTranslation];
        _updateNewlyActiveDisplay();
        goto LABEL_22;
      }
    }

    v30 = self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__lineDescriptorDisplayCallbackEnabled];
    goto LABEL_21;
  }

LABEL_25:
}

- (id)driverConfiguration
{
  dispatch_assert_queue_not_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  v3 = [(MSCRODBrailleDisplayManager *)&v6 driverConfiguration];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005520;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);

  return v3;
}

- (BOOL)_brailleConfigMatch:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v8 = [v6 objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v12 = [v6 objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v10 = [v11 isEqualToString:v12];
  }

  return v10;
}

- (void)_saveBluetoothDisplayConfiguration:(id)a3
{
  v4 = [a3 mutableCopyWithZone:0];
  [v4 removeObjectForKey:kSCROBrailleDisplayToken];
  v20 = v4;
  v5 = [v4 copyWithZone:0];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 voiceOverBrailleDisplays];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableArray array];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100005A74;
  v25[3] = &unk_100014860;
  v25[4] = self;
  v9 = v5;
  v26 = v9;
  v27 = &v28;
  [v8 enumerateObjectsUsingBlock:v25];
  v10 = v29[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addObject:v9];
  }

  else
  {
    [v8 replaceObjectAtIndex:v10 withObject:v9];
  }

  v11 = +[AXSettings sharedInstance];
  [v11 setVoiceOverBrailleDisplays:v8];

  v12 = AXLogBrailleHW();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving VO braille configs: %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = AXLogBrailleHW();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "-- Braille configs: %@", buf, 0xCu);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(&v28, 8);
}

- (BOOL)isConfigured
{
  dispatch_assert_queue_not_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  v3 = [(MSCRODBrailleDisplayManager *)&v6 isConfigured];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B84;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return v3;
}

- (BOOL)_registerSleepNotifications
{
  p_sleepWake = &self->_sleepWake;
  v3 = IORegisterForSystemPower(0, &self->_sleepWake.notifyPortRef, sub_100005D18, &self->_sleepWake.notifierObject);
  p_sleepWake->rootPort = v3;
  if (v3)
  {
    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(p_sleepWake->notifyPortRef);
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
  }

  else
  {
    NSLog(@"Error: IORegisterForSystemPower failed");
  }

  return v3 != 0;
}

- (void)setLastUserInteractionTime:(double)a3
{
  v7.receiver = self;
  v7.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v7 setLastUserInteractionTime:a3];
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CDC8(self, v4);
  }

  if ([(MSCRODBrailleDisplayManager *)self isBrailleSystemSleeping])
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received user interaction but system was asleep - rewaking", buf, 2u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (BOOL)_hasUserInteractedWithDeviceRecently
{
  Current = CFAbsoluteTimeGetCurrent();
  [(MSCRODBrailleDisplayManager *)self lastUserInteractionTime];
  v5 = Current - v4;
  v6 = AXLogBrailleHW();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Last interaction time happened: %f", &v8, 0xCu);
  }

  return v5 < 2.0;
}

- (BOOL)_hasActiveDisplay
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_displays;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006220;
      block[3] = &unk_100014888;
      block[5] = v7;
      block[6] = &v16;
      block[4] = self;
      dispatch_sync(v8, block);
      if (v17[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v9;
}

- (void)_reallyDelayedWakeFromSleep
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Processing wake from sleep to auto detect", buf, 2u);
  }

  if ([(MSCRODBrailleDisplayManager *)self _hasActiveDisplay])
  {
    v4 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006378;
    block[3] = &unk_100014770;
    block[4] = self;
    dispatch_async(v4, block);
  }

  [(MSCRODBrailleDisplayManager *)self _enableAutoDetect];
  [(MSCRODBrailleDisplayManager *)self powerChangedNotification:0];
  [0 configurationDidChange];
  [(MSCRODBrailleDisplayManager *)self setIsBrailleSystemSleeping:0];
}

- (void)_delayedHandleSystemSleep
{
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handled system sleep in Braille", buf, 2u);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyDelayedWakeFromSleep" object:0];
  [(MSCRODBrailleDisplayManager *)self _disableAutoDetect];
  v4 = [(MSCRODBrailleDisplayManager *)self _hasActiveDisplay];
  v5 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000689C;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(v5, block);
  if (v4)
  {
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.25, 0);
    if (_AXSVoiceOverTouchBrailleDisplayDisconnectOnSleep())
    {
      v6 = AXLogBrailleHW();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        displays = self->_displays;
        *buf = 138412290;
        v27 = displays;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "In _delayedHandleSystemSleep: remove certain drivers in _displays: %@", buf, 0xCu);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [(NSMutableArray *)self->_displays copy];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v21;
        *&v10 = 138412290;
        v19 = v10;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if (([(NSMutableArray *)v14 requiresPersistentConnection]& 1) == 0)
            {
              v15 = [(NSMutableArray *)v14 ioElement];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v17 = [(NSMutableArray *)v14 ioElement];
                [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:v17 removeFromPreferences:0];

                v18 = AXLogBrailleHW();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v19;
                  v27 = v14;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Call _removeBluetoothDriverWithIOElement for Display: %@", buf, 0xCu);
                }
              }
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    [NSThread sleepForTimeInterval:0.25];
  }

  [(MSCRODBrailleDisplayManager *)self setIsBrailleSystemSleeping:1];
}

- (void)_registerHasBlankedScreenNotification
{
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000074B8;
  v23[3] = &unk_1000148D8;
  objc_copyWeak(&v24, &location);
  v3 = objc_retainBlock(v23);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000075C0;
  v21[3] = &unk_1000148D8;
  objc_copyWeak(&v22, &location);
  v4 = objc_retainBlock(v21);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000076D0;
  v19 = &unk_1000148D8;
  objc_copyWeak(&v20, &location);
  v5 = objc_retainBlock(&v16);
  v6 = &_dispatch_main_q;
  v7 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_keybagLockStateToken, &_dispatch_main_q, v3) == 0;

  if (v7)
  {
    (v3[2])(v3, self->_keybagLockStateToken);
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [NSNumber numberWithInt:self->_keybagLockStateToken, v16, v17, v18, v19];
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered keybag lock state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_keybagLockStateToken = -1;
  }

  v10 = notify_register_dispatch("com.apple.springboard.lockstate", &self->_notifyLockStateToken, &_dispatch_main_q, v4) == 0;

  if (v10)
  {
    (v4[2])(v4, self->_notifyLockStateToken);
    v11 = AXLogBrailleHW();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithInt:self->_notifyLockStateToken];
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registered lock state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_notifyLockStateToken = -1;
  }

  v13 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_blankScreenToken, &_dispatch_main_q, v5) == 0;

  if (v13)
  {
    (v5[2])(v5, self->_blankScreenToken);
    v14 = AXLogBrailleHW();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [NSNumber numberWithInt:self->_blankScreenToken];
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registered blank screen state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_blankScreenToken = -1;
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)airplaneModeChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007854;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)newBrailleDisplayCommandDispatcher
{
  v2 = objc_allocWithZone(SCROBrailleDisplayCommandDispatcher);

  return [v2 init];
}

- (void)addToDisplays:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000079A4;
  v4[3] = &unk_100014798;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

@end