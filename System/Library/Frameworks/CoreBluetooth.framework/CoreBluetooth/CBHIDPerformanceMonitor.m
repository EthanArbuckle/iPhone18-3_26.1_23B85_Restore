@interface CBHIDPerformanceMonitor
- (BOOL)_findDevicesAndReturnError:(id *)a3;
- (BOOL)_hidStartAndReturnError:(id *)a3;
- (BOOL)_hidStartPERAndRetunError:(id *)a3;
- (BOOL)_hidStopPERAndRetunError:(id *)a3;
- (BOOL)_isAppleOldHIDs:(unsigned int)a3;
- (CBHIDPerformanceMonitor)init;
- (double)_calculatePercentile:(id)a3 percentile:(double)a4;
- (void)_activateWithCompletion:(id)a3;
- (void)_hidStop;
- (void)_invalidate;
- (void)_invalidated;
- (void)_packetLoggerProcessPacketData:(id)a3;
- (void)_packetLoggerStart;
- (void)_packetLoggerStop;
- (void)_rssiAndHandleRead;
- (void)_showSummaryResult:(id)a3 isFinal:(BOOL)a4 packetMics:(unint64_t)a5 statsDelta:(id)a6 deltaMics:(unint64_t)a7 countActual:(unint64_t)a8;
- (void)_testEnd;
- (void)_testEnded;
- (void)_testStart;
- (void)_timerStart;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation CBHIDPerformanceMonitor

- (CBHIDPerformanceMonitor)init
{
  v14.receiver = self;
  v14.super_class = CBHIDPerformanceMonitor;
  v2 = [(CBHIDPerformanceMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = dispatch_get_global_queue(0, 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    v3->_hidManager = 0;
    targetBTAddrData = v3->_targetBTAddrData;
    v3->_targetBTAddrData = &stru_1F40009C8;

    targetBTAddrKey = v3->_targetBTAddrKey;
    v3->_targetBTAddrKey = &stru_1F40009C8;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    statsPacketDeltaMics = v3->_statsPacketDeltaMics;
    v3->_statsPacketDeltaMics = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    intrmPacketDeltaMics = v3->_intrmPacketDeltaMics;
    v3->_intrmPacketDeltaMics = v10;

    v12 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CBHIDPerformanceMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__CBHIDPerformanceMonitor__activateWithCompletion___block_invoke;
  v20[3] = &unk_1E811D350;
  v22 = &v23;
  v20[4] = self;
  v5 = v4;
  v21 = v5;
  v6 = MEMORY[0x1C68DF720](v20);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    v12 = *MEMORY[0x1E696A768];
    v13 = NSErrorF_safe();
    v14 = v24[5];
    v24[5] = v13;
  }

  else
  {
    self->_activateCalled = 1;
    testSeconds = self->_testSeconds;
    if (testSeconds <= 0.0)
    {
      testSeconds = 30.0;
    }

    self->_testSecondsActual = testSeconds;
    if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
    {
      devices = self->_devices;
      v9 = CUPrintNSObjectOneLine();
      v16 = self->_testSeconds;
      testSecondsActual = self->_testSecondsActual;
      v15 = v9;
      LogPrintF_safe();
    }

    v10 = v24;
    obj = v24[5];
    v11 = [(CBHIDPerformanceMonitor *)self _findDevicesAndReturnError:&obj, v15, *&v16, *&testSecondsActual];
    objc_storeStrong(v10 + 5, obj);
    if (v11)
    {
      (*(v5 + 2))(v5, 0);
      [(CBHIDPerformanceMonitor *)self _packetLoggerStart];
      [(CBHIDPerformanceMonitor *)self _activateWithCompletion:v18];
    }
  }

  v6[2](v6);

  _Block_object_dispose(&v23, 8);
}

uint64_t __51__CBHIDPerformanceMonitor__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 48) + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory_CBHIDPerf <= 90)
  {
    if (gLogCategory_CBHIDPerf == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v5 = *(*(*(a1 + 48) + 8) + 40);
    }

    v6 = CUPrintNSError();
    LogPrintF_safe();
  }

LABEL_7:
  [*(a1 + 32) _packetLoggerStop];
  [*(a1 + 32) _hidStop];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CBHIDPerformanceMonitor_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v10 = v3;
  v11 = v2;
  self->_invalidateCalled = 1;
  if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
  {
    [CBHIDPerformanceMonitor _invalidate];
    timeoutTimer = self->_timeoutTimer;
    if (!timeoutTimer)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
LABEL_6:
    v8 = timeoutTimer;
    dispatch_source_cancel(v8);
    v9 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

LABEL_7:
  [(CBHIDPerformanceMonitor *)self _packetLoggerStop:v10];
  [(CBHIDPerformanceMonitor *)self _hidStop];

  [(CBHIDPerformanceMonitor *)self _invalidated];
}

- (void)_invalidated
{
  hidManager = self->_hidManager;
  if (hidManager)
  {
    IOHIDManagerClose(hidManager, 0);
    CFRelease(self->_hidManager);
    self->_hidManager = 0;
  }

  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v9 = MEMORY[0x1C68DF720](self->_invalidationHandler, a2);
    excessiveIntervalHandler = self->_excessiveIntervalHandler;
    self->_excessiveIntervalHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    summaryHandler = self->_summaryHandler;
    self->_summaryHandler = 0;

    v8 = v9;
    if (v9)
    {
      v7 = (*(v9 + 16))(v9);
      v8 = v9;
    }

    self->_invalidateDone = 1;
    if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || (v7 = _LogCategory_Initialize(), v8 = v9, v7)))
    {
      v7 = [CBHIDPerformanceMonitor _invalidated];
      v8 = v9;
    }

    MEMORY[0x1EEE66BB8](v7, v8);
  }
}

- (void)_testStart
{
  v3 = *a1;
  v4 = CUDescriptionWithLevel();
  v5 = *(a2 + 200) / 1000.0;
  LogPrintF_safe();
}

- (void)_testEnd
{
  v1 = *(a1 + 80);
  v2 = CUDescriptionWithLevel();
  v3 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_testEnded
{
  if (gLogCategory_CBHIDPerf > 30 || gLogCategory_CBHIDPerf == -1 && !_LogCategory_Initialize())
  {
    timeoutTimer = self->_timeoutTimer;
    if (!timeoutTimer)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [CBHIDPerformanceMonitor _testEnded];
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
LABEL_5:
    v4 = timeoutTimer;
    dispatch_source_cancel(v4);
    v5 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

LABEL_6:
  [(CBHIDPerformanceMonitor *)self _hidStop];

  [(CBHIDPerformanceMonitor *)self _testStart];
}

- (BOOL)_isAppleOldHIDs:(unsigned int)a3
{
  result = 1;
  if ((a3 - 556 > 0x2B || ((1 << (a3 - 44)) & 0xE000000E007) == 0) && (a3 - 777 > 5 || ((1 << (a3 - 9)) & 0x39) == 0))
  {
    return a3 - 520 < 3;
  }

  return result;
}

- (BOOL)_hidStartAndReturnError:(id *)a3
{
  v153 = *MEMORY[0x1E69E9840];
  self->_hidProductID = [(CBDevice *)self->_targetDevice productID];
  if ([(CBHIDPerformanceMonitor *)self _isMac]&& (!_os_feature_enabled_impl() || [(CBHIDPerformanceMonitor *)self _isAppleOldHIDs:[(CBDevice *)self->_targetDevice productID]]))
  {
    existing = 0;
    v4 = *MEMORY[0x1E696CD58];
    v5 = IOServiceMatching([@"IOBluetoothHIDDriver" UTF8String]);
    MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
    if (existing)
    {
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __51__CBHIDPerformanceMonitor__hidStartAndReturnError___block_invoke;
      v143[3] = &__block_descriptor_36_e5_v8__0l;
      v144 = existing;
      v133 = MEMORY[0x1C68DF720](v143);
      entry = 0;
      while (1)
      {
        *theScore = 0;
        v150 = theScore;
        v151 = 0x2020000000;
        v152 = IOIteratorNext(existing);
        if (!v150[6])
        {
          break;
        }

        v142[0] = MEMORY[0x1E69E9820];
        v142[1] = 3221225472;
        v142[2] = __51__CBHIDPerformanceMonitor__hidStartAndReturnError___block_invoke_2;
        v142[3] = &unk_1E8122508;
        v142[4] = theScore;
        v12 = MEMORY[0x1C68DF720](v142);
        CFProperty = IORegistryEntryCreateCFProperty(v150[6], @"BD_ADDR", 0, 0);
        v14 = [(CBDevice *)self->_targetDevice btAddressData];
        v15 = [CFProperty isEqual:v14];

        if (v15)
        {
          entry = v150[6];
          v150[6] = 0;
        }

        v12[2](v12);
        _Block_object_dispose(theScore, 8);
        if (v15)
        {
          goto LABEL_29;
        }
      }

      _Block_object_dispose(theScore, 8);
LABEL_29:
      if (!entry)
      {
        if (a3)
        {
          *a3 = CBErrorF(-6727, "HID not found", v16, v17, v18, v19, v20, v21, byte7);
        }

        goto LABEL_101;
      }

      self->_hidService = entry;
      v70 = IORegistryEntryCreateCFProperty(entry, @"ProductID", 0, 0);
      self->_hidProductID = CFGetInt64Ranged();

      theScore[0] = 0;
      v71 = CFUUIDGetConstantUUIDWithBytes(0, 0xFAu, 0x12u, 0xFAu, 0x38u, 0x6Fu, 0x1Au, 0x11u, 0xD4u, 0xBAu, 0xCu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
      v72 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v73 = IOCreatePlugInInterfaceForService(entry, v71, v72, &self->_hidPluginInterface, theScore);
      hidPluginInterface = self->_hidPluginInterface;
      if (hidPluginInterface)
      {
        QueryInterface = (*hidPluginInterface)->QueryInterface;
        v82 = CFUUIDGetConstantUUIDWithBytes(0, 0x78u, 0xBDu, 0x42u, 0xCu, 0x6Fu, 0x14u, 0x11u, 0xD4u, 0x94u, 0x74u, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
        v83 = CFUUIDGetUUIDBytes(v82);
        v84 = (QueryInterface)(hidPluginInterface, *&v83.byte0, *&v83.byte8, &self->_hidInterface);
        hidInterface = self->_hidInterface;
        if (hidInterface)
        {
          v92 = ((*hidInterface)->open)(self->_hidInterface, 0);
          if (!v92)
          {
            v133[2]();

            goto LABEL_34;
          }

          if (!a3)
          {
            goto LABEL_101;
          }

          v128 = CBErrorF(v92, "Open HID interface failed", v93, v94, v95, v96, v97, v98, byte7);
          goto LABEL_100;
        }

        if (a3)
        {
          if (!v84)
          {
            v84 = -6700;
          }

          v128 = CBErrorF(v84, "Get HID interface failed", v85, v86, v87, v88, v89, v90, byte7);
LABEL_100:
          *a3 = v128;
        }
      }

      else if (a3)
      {
        if (!v73)
        {
          v73 = -6700;
        }

        v128 = CBErrorF(v73, "Get HID plugin failed", v74, v75, v76, v77, v78, v79, byte7a);
        goto LABEL_100;
      }

LABEL_101:
      v133[2]();

      goto LABEL_102;
    }

    [(CBHIDPerformanceMonitor *)a3 _hidStartAndReturnError:MatchingServices, v7, v8, v9, v10, v11];
LABEL_102:
    result = 0;
    goto LABEL_84;
  }

  if (!self->_hidManager)
  {
    v22 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
    self->_hidManager = v22;
    v23 = IOHIDManagerOpen(v22, 0);
    if (v23)
    {
      if (a3)
      {
        v129 = CBErrorF(v23, "Open HID Manager failed", v24, v25, v26, v27, v28, v29, byte7);
        v130 = v129;
        result = 0;
        *a3 = v129;
        goto LABEL_84;
      }

      goto LABEL_102;
    }
  }

  entrya = [MEMORY[0x1E695DF90] dictionary];
  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Transport"];
  [entrya setObject:@"Bluetooth" forKey:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:76];
  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"VendorID"];
  [entrya setObject:v31 forKey:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:65280];
  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PrimaryUsagePage"];
  [entrya setObject:v33 forKey:v34];

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:18];
  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PrimaryUsage"];
  [entrya setObject:v35 forKey:v36];

  v37 = [(CBDevice *)self->_targetDevice btAddressData];
  v38 = v37;
  if (v37)
  {
    *theScore = 0;
    v150 = 0;
    LOWORD(v151) = 0;
    [v37 bytes];
    HardwareAddressToCString();
    v39 = [MEMORY[0x1E696AEC0] stringWithCString:theScore encoding:4];
    targetBTAddrData = self->_targetBTAddrData;
    self->_targetBTAddrData = v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SerialNumber"];
    targetBTAddrKey = self->_targetBTAddrKey;
    self->_targetBTAddrKey = v41;

    [entrya setObject:self->_targetBTAddrData forKey:self->_targetBTAddrKey];
  }

  hidManager = self->_hidManager;
  v148 = entrya;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
  IOHIDManagerSetDeviceMatchingMultiple(hidManager, v44);

  v45 = IOHIDManagerCopyDevices(self->_hidManager);
  if (!v45)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SerialNumber"];
    [entrya removeObjectForKey:v46];

    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:0];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PrimaryUsagePage"];
    [entrya setObject:v47 forKey:v48];

    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:1];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PrimaryUsage"];
    [entrya setObject:v49 forKey:v50];

    v51 = [(NSString *)self->_targetBTAddrData stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v52 = self->_targetBTAddrData;
    self->_targetBTAddrData = v51;

    v53 = self->_targetBTAddrKey;
    self->_targetBTAddrKey = @"DeviceAddress";

    [entrya setObject:self->_targetBTAddrData forKey:self->_targetBTAddrKey];
    v54 = self->_hidManager;
    v147 = entrya;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
    IOHIDManagerSetDeviceMatchingMultiple(v54, v55);

    v45 = IOHIDManagerCopyDevices(self->_hidManager);
    if (!v45)
    {
      [(CBHIDPerformanceMonitor *)a3 _hidStartAndReturnError:v56, v57, v58, v59, v60, v61];
      goto LABEL_102;
    }
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v62 = v45;
  v63 = [(__CFSet *)v62 countByEnumeratingWithState:&v138 objects:v146 count:16];
  if (v63)
  {
    v64 = *v139;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v139 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = *(*(&v138 + 1) + 8 * i);
        v67 = IOHIDDeviceGetProperty(v66, self->_targetBTAddrKey);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v67 caseInsensitiveCompare:self->_targetBTAddrData])
        {
          v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ProductID"];
          Property = IOHIDDeviceGetProperty(v66, v68);
          self->_hidProductID = CFGetInt64Ranged();
        }
      }

      v63 = [(__CFSet *)v62 countByEnumeratingWithState:&v138 objects:v146 count:16];
    }

    while (v63);
  }

LABEL_34:
  intervalMs = self->_intervalMs;
  if (intervalMs <= 0.0)
  {
    self->_statsPacketIntervalMicsExpected = 0;
    v100 = objc_alloc_init(CBDeviceRequest);
    [(CBDeviceRequest *)v100 setRequestFlags:512];
    targetDevice = self->_targetDevice;
    v137 = 0;
    v102 = [CBController performDeviceRequest:v100 device:targetDevice error:&v137];
    v103 = v137;
    v104 = [v102 sniffInterval];
    if (v104)
    {
      self->_statsPacketIntervalMicsExpected = v104;
    }

    else
    {
      if (gLogCategory_CBHIDPerf <= 90 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
      {
        [CBHIDPerformanceMonitor _hidStartAndReturnError:];
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:5.0];
    }

    if (!self->_statsPacketIntervalMicsExpected)
    {
      v105 = objc_alloc_init(CBDeviceRequest);
      [(CBDeviceRequest *)v105 setRequestFlags:512];
      v106 = self->_targetDevice;
      v137 = 0;
      v107 = [CBController performDeviceRequest:v105 device:v106 error:&v137];
      v108 = v137;
      v109 = [v107 sniffInterval];
      if (v109)
      {
        self->_statsPacketIntervalMicsExpected = v109;
      }

      else
      {
        if (gLogCategory_CBHIDPerf <= 90 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
        {
          [CBHIDPerformanceMonitor _hidStartAndReturnError:];
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:5.0];
      }

      if (!self->_statsPacketIntervalMicsExpected)
      {
        v110 = objc_alloc_init(CBDeviceRequest);
        [(CBDeviceRequest *)v110 setRequestFlags:512];
        v111 = self->_targetDevice;
        v137 = 0;
        v112 = [CBController performDeviceRequest:v110 device:v111 error:&v137];
        v113 = v137;
        v114 = [v112 sniffInterval];
        if (v114)
        {
          self->_statsPacketIntervalMicsExpected = v114;
        }

        else
        {
          if (gLogCategory_CBHIDPerf <= 90 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
          {
            [CBHIDPerformanceMonitor _hidStartAndReturnError:];
          }

          [MEMORY[0x1E696AF00] sleepForTimeInterval:5.0];
        }

        if (!self->_statsPacketIntervalMicsExpected)
        {
          v115 = objc_alloc_init(CBDeviceRequest);
          [(CBDeviceRequest *)v115 setRequestFlags:512];
          v116 = self->_targetDevice;
          v137 = 0;
          v117 = [CBController performDeviceRequest:v115 device:v116 error:&v137];
          v118 = v137;
          v119 = [v117 sniffInterval];
          if (v119)
          {
            self->_statsPacketIntervalMicsExpected = v119;
          }

          else
          {
            if (gLogCategory_CBHIDPerf <= 90 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
            {
              [CBHIDPerformanceMonitor _hidStartAndReturnError:];
            }

            [MEMORY[0x1E696AF00] sleepForTimeInterval:5.0];
          }

          if (!self->_statsPacketIntervalMicsExpected)
          {
            [CBHIDPerformanceMonitor _hidStartAndReturnError:?];
            result = theScore[0];
            goto LABEL_84;
          }
        }
      }
    }
  }

  else
  {
    self->_statsPacketIntervalMicsExpected = (intervalMs * 1000.0);
  }

  if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
  {
    [CBHIDPerformanceMonitor _hidStartAndReturnError:?];
  }

  excessiveMs = self->_excessiveMs;
  if (excessiveMs <= 15.0)
  {
    statsPacketExcessiveInterval = 3 * self->_statsPacketIntervalMicsExpected;
    self->_statsPacketExcessiveInterval = statsPacketExcessiveInterval;
    v122 = gLogCategory_CBHIDPerf;
    if (gLogCategory_CBHIDPerf > 30)
    {
      goto LABEL_79;
    }
  }

  else
  {
    statsPacketExcessiveInterval = (excessiveMs * 1000.0);
    self->_statsPacketExcessiveInterval = statsPacketExcessiveInterval;
    v122 = gLogCategory_CBHIDPerf;
    if (gLogCategory_CBHIDPerf > 30)
    {
      goto LABEL_79;
    }
  }

  if (v122 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_79;
    }

    statsPacketExcessiveInterval = self->_statsPacketExcessiveInterval;
  }

  byte7 = statsPacketExcessiveInterval;
  LogPrintF_safe();
LABEL_79:
  slideWindowSec = self->_slideWindowSec;
  if (slideWindowSec <= 0.0)
  {
    slideWindowSec = self->_testSecondsActual + 5.0;
  }

  v124 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{slideWindowSec, byte7}];
  slidingWindowDate = self->_slidingWindowDate;
  self->_slidingWindowDate = v124;

  [(NSMutableArray *)self->_statsPacketDeltaMics removeAllObjects];
  [(NSMutableArray *)self->_intrmPacketDeltaMics removeAllObjects];
  if ([(CBHIDPerformanceMonitor *)self _hidStartPERAndRetunError:a3])
  {
    result = 1;
  }

  else
  {
    [(CBHIDPerformanceMonitor *)self _hidStopPERAndRetunError:0];
    result = [(CBHIDPerformanceMonitor *)self _hidStartPERAndRetunError:a3];
  }

LABEL_84:
  v127 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __51__CBHIDPerformanceMonitor__hidStartAndReturnError___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

- (void)_hidStop
{
  if (self->_hidStartedErrorRateMode)
  {
    [(CBHIDPerformanceMonitor *)self _hidStopPERAndRetunError:0];
    self->_hidStartedErrorRateMode = 0;
  }

  hidInterface = self->_hidInterface;
  if (hidInterface)
  {
    ((*hidInterface)->close)(hidInterface);
    ((*self->_hidInterface)->Release)(self->_hidInterface);
    self->_hidInterface = 0;
  }

  hidPluginInterface = self->_hidPluginInterface;
  if (hidPluginInterface)
  {
    ((*hidPluginInterface)->Release)(hidPluginInterface);
    self->_hidPluginInterface = 0;
  }

  hidService = self->_hidService;
  if (hidService)
  {
    IOObjectRelease(hidService);
    self->_hidService = 0;
  }

  hidManager = self->_hidManager;
  if (hidManager)
  {
    IOHIDManagerClose(hidManager, 0);
    CFRelease(self->_hidManager);
    self->_hidManager = 0;
  }
}

- (BOOL)_hidStopPERAndRetunError:(id *)a3
{
  self->_hidStartedErrorRateMode = 0;
  hidProductID = self->_hidProductID;
  if (hidProductID <= 665)
  {
    v10 = hidProductID - 57;
    if ((hidProductID - 569) <= 0x33)
    {
      if (((1 << v10) & 0x70000007) == 0)
      {
        if (((1 << v10) & 0x9500000000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }

LABEL_13:
      v12 = 213;
      goto LABEL_14;
    }

LABEL_17:
    if (a3)
    {
      *a3 = CBErrorF(-6735, "Unsupported HID: PID 0x%04X", a3, v3, v4, v5, v6, v7, self->_hidProductID);
    }

    return 0;
  }

  if ((hidProductID - 800) >= 5 && ((hidProductID - 666) > 5 || ((1 << (hidProductID + 102)) & 0x25) == 0))
  {
    if ((hidProductID - 781) < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_11:
  v12 = 214;
LABEL_14:

  return [(CBHIDPerformanceMonitor *)self _hidSetFeatureWithReportID:v12 value:0 error:a3];
}

- (void)_packetLoggerStart
{
  v3 = self->_packetLoggerClient;
  if (v3)
  {
  }

  else
  {
    v4 = objc_alloc_init(CBPacketLoggerClient);
    packetLoggerClient = self->_packetLoggerClient;
    self->_packetLoggerClient = v4;

    [(CBPacketLoggerClient *)v4 setDispatchQueue:self->_dispatchQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke;
    v11[3] = &unk_1E811D620;
    v6 = v4;
    v12 = v6;
    v13 = self;
    [(CBPacketLoggerClient *)v6 setRawPacketHandler:v11];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke_2;
    v8[3] = &unk_1E8122530;
    v7 = v6;
    v9 = v7;
    v10 = self;
    [(CBPacketLoggerClient *)v7 activateWithCompletion:v8];
  }
}

void *__45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[8])
  {
    return [result _packetLoggerProcessPacketData:a2];
  }

  return result;
}

void __45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(a1 + 32) == *(*(a1 + 40) + 64))
  {
    v6 = v3;
    if (gLogCategory_CBHIDPerf <= 90 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
    {
      __45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke_2_cold_1();
    }

    [*(a1 + 32) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;

    v3 = v6;
  }
}

- (void)_packetLoggerStop
{
  [(CBPacketLoggerClient *)self->_packetLoggerClient invalidate];
  packetLoggerClient = self->_packetLoggerClient;
  self->_packetLoggerClient = 0;
}

void __45__CBHIDPerformanceMonitor__rssiAndHandleRead__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v6 = [*(a1 + 40) btAddressData];
  v7 = [*(*(a1 + 48) + 80) btAddressData];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v13 rssi];
    v10 = v9;
    if (v9)
    {
      *(*(a1 + 48) + 136) = v9;
    }

    v11 = [v13 connectionHandle];
    v12 = v11;
    if (v11)
    {
      *(*(a1 + 48) + 138) = v11;
    }

    if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
    {
      __45__CBHIDPerformanceMonitor__rssiAndHandleRead__block_invoke_cold_1(v10, v12, (a1 + 40));
    }

    [*(a1 + 56) invalidate];
  }
}

- (void)_timerStart
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v4 = timeoutTimer;
    dispatch_source_cancel(v4);
    v5 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_workQueue);
  v7 = self->_timeoutTimer;
  self->_timeoutTimer = v6;
  v8 = v6;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CBHIDPerformanceMonitor__timerStart__block_invoke;
  v10[3] = &unk_1E811CF50;
  v10[4] = v8;
  v10[5] = self;
  dispatch_source_set_event_handler(v8, v10);
  testSecondsActual = self->_testSecondsActual;
  CUDispatchTimerSet();
  dispatch_activate(v8);
}

uint64_t __38__CBHIDPerformanceMonitor__timerStart__block_invoke(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 128))
  {
    if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || (v2 = result, v3 = _LogCategory_Initialize(), result = v2, v3)))
    {
      v5 = result;
      __38__CBHIDPerformanceMonitor__timerStart__block_invoke_cold_1();
      v4 = *(v5 + 40);
    }

    else
    {
      v4 = *(result + 40);
    }

    return [v4 _testEnd];
  }

  return result;
}

- (double)_calculatePercentile:(id)a3 percentile:(double)a4
{
  v5 = a3;
  v6 = [v5 count];
  __y = 0.0;
  v7 = modf(a4 * (v6 - 1) + 1.0, &__y);
  v8 = __y;
  if (__y >= 0.0 && __y < v6)
  {
    v10 = __y;
    v11 = [v5 objectAtIndexedSubscript:__y - 1];
    if (v6 <= v10)
    {
      v12 = v8 - 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = [v5 objectAtIndexedSubscript:v12];
    if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
    {
      [v11 doubleValue];
      v15 = v14;
      [v13 doubleValue];
      v27 = v15;
      v28 = v16;
      v25 = v8;
      v26 = v7;
      v24 = a4;
      LogPrintF_safe();
    }

    [v11 doubleValue];
    v18 = v17;
    [v13 doubleValue];
    v20 = v19;
    [v11 doubleValue];
    v23 = v18 + v7 * (v20 - v21);
  }

  else
  {
    [CBHIDPerformanceMonitor _calculatePercentile:? percentile:?];
    v23 = v30;
  }

  return v23;
}

- (void)_showSummaryResult:(id)a3 isFinal:(BOOL)a4 packetMics:(unint64_t)a5 statsDelta:(id)a6 deltaMics:(unint64_t)a7 countActual:(unint64_t)a8
{
  v51 = a6;
  statsPacketIntervalMicsExpected = self->_statsPacketIntervalMicsExpected;
  if (statsPacketIntervalMicsExpected)
  {
    statsPacketIntervalMicsExpected = (10 * a7 / statsPacketIntervalMicsExpected + 5) / 0xA + 1;
  }

  v14 = statsPacketIntervalMicsExpected - a8;
  if ((statsPacketIntervalMicsExpected - a8) < 0)
  {
    statsPacketIntervalMicsExpected = a8;
  }

  self->_statsPacketCountExpected = statsPacketIntervalMicsExpected;
  v15 = a3;
  v16 = objc_alloc_init(CBHIDPerformanceSummary);
  [(CBHIDPerformanceSummary *)v16 setDevice:v15];

  v17 = 0.0;
  if (v14 >= 1)
  {
    statsPacketCountExpected = self->_statsPacketCountExpected;
    if (statsPacketCountExpected)
    {
      v17 = v14 / statsPacketCountExpected;
    }
  }

  [(CBHIDPerformanceSummary *)v16 setErrorRate:v17];
  [(CBHIDPerformanceSummary *)v16 setIntervalSecondsExpected:self->_statsPacketIntervalMicsExpected / 1000000.0];
  [(CBHIDPerformanceSummary *)v16 setIntervalSecondsMax:self->_statsPacketIntervalMicsMax / 1000000.0];
  [(CBHIDPerformanceSummary *)v16 setRssi:self->_statsLastRSSI];
  [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.5];
  [(CBHIDPerformanceSummary *)v16 setP50:v19 / 1000.0];
  if (a4)
  {
    [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.75];
    [(CBHIDPerformanceSummary *)v16 setP75:v20 / 1000.0];
  }

  else
  {
    statsPacketP50Max = self->_statsPacketP50Max;
    [(CBHIDPerformanceSummary *)v16 P50];
    if (statsPacketP50Max < v22)
    {
      [(CBHIDPerformanceSummary *)v16 P50];
      self->_statsPacketP50Max = v23;
    }

    [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.75];
    [(CBHIDPerformanceSummary *)v16 setP75:v24 / 1000.0];
    statsPacketP75Max = self->_statsPacketP75Max;
    [(CBHIDPerformanceSummary *)v16 P75];
    if (statsPacketP75Max < v26)
    {
      [(CBHIDPerformanceSummary *)v16 P75];
      self->_statsPacketP75Max = v27;
    }
  }

  [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.9];
  [(CBHIDPerformanceSummary *)v16 setP90:v28 / 1000.0];
  if (a4)
  {
    [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.95];
    [(CBHIDPerformanceSummary *)v16 setP95:v29 / 1000.0];
  }

  else
  {
    statsPacketP90Max = self->_statsPacketP90Max;
    [(CBHIDPerformanceSummary *)v16 P90];
    if (statsPacketP90Max < v31)
    {
      [(CBHIDPerformanceSummary *)v16 P90];
      self->_statsPacketP90Max = v32;
    }

    [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.95];
    [(CBHIDPerformanceSummary *)v16 setP95:v33 / 1000.0];
    statsPacketP95Max = self->_statsPacketP95Max;
    [(CBHIDPerformanceSummary *)v16 P95];
    if (statsPacketP95Max < v35)
    {
      [(CBHIDPerformanceSummary *)v16 P95];
      self->_statsPacketP95Max = v36;
    }
  }

  [(CBHIDPerformanceMonitor *)self _calculatePercentile:v51 percentile:0.99];
  [(CBHIDPerformanceSummary *)v16 setP99:v37 / 1000.0];
  if (a4)
  {
    [(CBHIDPerformanceSummary *)v16 setFinalSummary:1];
    [(CBHIDPerformanceSummary *)v16 setP50Max:self->_statsPacketP50Max];
    [(CBHIDPerformanceSummary *)v16 setP75Max:self->_statsPacketP75Max];
    [(CBHIDPerformanceSummary *)v16 setP90Max:self->_statsPacketP90Max];
    [(CBHIDPerformanceSummary *)v16 setP95Max:self->_statsPacketP95Max];
    [(CBHIDPerformanceSummary *)v16 setP99Max:self->_statsPacketP99Max];
    [(CBHIDPerformanceSummary *)v16 P50Max];
    if (v38 != 0.0)
    {
LABEL_30:
      if (gLogCategory_CBHIDPerf > 30 || gLogCategory_CBHIDPerf == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_35;
      }

      v47 = self->_statsPacketCountExpected;
      [(CBHIDPerformanceSummary *)v16 errorRate];
      [(CBHIDPerformanceSummary *)v16 intervalSecondsExpected];
      [(CBHIDPerformanceSummary *)v16 intervalSecondsMax];
      [(CBHIDPerformanceSummary *)v16 rssi];
      [(CBHIDPerformanceSummary *)v16 P50];
      [(CBHIDPerformanceSummary *)v16 P50Max];
      [(CBHIDPerformanceSummary *)v16 P75];
      [(CBHIDPerformanceSummary *)v16 P75Max];
      [(CBHIDPerformanceSummary *)v16 P90];
      [(CBHIDPerformanceSummary *)v16 P90Max];
      [(CBHIDPerformanceSummary *)v16 P95];
      [(CBHIDPerformanceSummary *)v16 P95Max];
      [(CBHIDPerformanceSummary *)v16 P99];
      [(CBHIDPerformanceSummary *)v16 P99Max];
LABEL_33:
      LogPrintF_safe();
      goto LABEL_35;
    }
  }

  else
  {
    statsPacketP99Max = self->_statsPacketP99Max;
    [(CBHIDPerformanceSummary *)v16 P99];
    if (statsPacketP99Max < v40)
    {
      [(CBHIDPerformanceSummary *)v16 P99];
      self->_statsPacketP99Max = v41;
    }

    [(CBHIDPerformanceSummary *)v16 setFinalSummary:0];
    [(CBHIDPerformanceSummary *)v16 setP99Max:0.0];
    [(CBHIDPerformanceSummary *)v16 setP95Max:0.0];
    [(CBHIDPerformanceSummary *)v16 setP90Max:0.0];
    [(CBHIDPerformanceSummary *)v16 setP75Max:0.0];
    [(CBHIDPerformanceSummary *)v16 setP50Max:0.0];
    [(CBHIDPerformanceSummary *)v16 P50Max];
    if (v42 != 0.0)
    {
      goto LABEL_30;
    }
  }

  [(CBHIDPerformanceSummary *)v16 P75Max];
  if (v43 != 0.0)
  {
    goto LABEL_30;
  }

  [(CBHIDPerformanceSummary *)v16 P90Max];
  if (v44 != 0.0)
  {
    goto LABEL_30;
  }

  [(CBHIDPerformanceSummary *)v16 P95Max];
  if (v45 != 0.0)
  {
    goto LABEL_30;
  }

  [(CBHIDPerformanceSummary *)v16 P99Max];
  if (v46 != 0.0)
  {
    goto LABEL_30;
  }

  if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
  {
    v50 = self->_statsPacketCountExpected;
    [(CBHIDPerformanceSummary *)v16 errorRate];
    [(CBHIDPerformanceSummary *)v16 intervalSecondsExpected];
    [(CBHIDPerformanceSummary *)v16 intervalSecondsMax];
    [(CBHIDPerformanceSummary *)v16 rssi];
    [(CBHIDPerformanceSummary *)v16 P50];
    [(CBHIDPerformanceSummary *)v16 P75];
    [(CBHIDPerformanceSummary *)v16 P90];
    [(CBHIDPerformanceSummary *)v16 P95];
    [(CBHIDPerformanceSummary *)v16 P99];
    goto LABEL_33;
  }

LABEL_35:
  v48 = MEMORY[0x1C68DF720](self->_summaryHandler);
  v49 = v48;
  if (v48)
  {
    (*(v48 + 16))(v48, v16);
  }
}

- (BOOL)_findDevicesAndReturnError:(id *)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = [CBDiscovery devicesWithDiscoveryFlags:0x200000 error:a3];
  if (!v44)
  {
LABEL_46:
    v35 = 0;
    goto LABEL_47;
  }

  v41 = a3;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_devices;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v43 = *v54;
    v40 = self;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v10 = v44;
        v11 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (!v11)
        {
LABEL_42:

LABEL_43:
          if (v41)
          {
            *v41 = CBErrorF(-6727, "Device not found: %@", v17, v18, v19, v20, v21, v22, v9);
          }

          goto LABEL_46;
        }

        v12 = v11;
        v13 = *v50;
LABEL_9:
        v14 = 0;
        while (1)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v49 + 1) + 8 * v14);
          if ([v15 connectedServices] & 0x20) != 0 && objc_msgSend(v15, "deviceType") != 26 && (objc_msgSend(v15, "isEquivalentToCBDevice:compareFlags:", v9, 8))
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v12)
            {
              goto LABEL_9;
            }

            goto LABEL_42;
          }
        }

        v16 = v15;

        if (!v16)
        {
          goto LABEL_43;
        }

        [v5 addObject:v16];
        if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
        {
          v38 = CUDescriptionWithLevel();
          LogPrintF_safe();
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      self = v40;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (![v5 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v44;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v45 + 1) + 8 * j);
          if (([v28 connectedServices] & 0x20) != 0 && objc_msgSend(v28, "deviceType") != 26)
          {
            [v5 addObject:v28];
            if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
            {
              v38 = CUDescriptionWithLevel();
              LogPrintF_safe();
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v25);
    }
  }

  if (![v5 count])
  {
    if (v41)
    {
      CBErrorF(-6727, "No devices found", v29, v30, v31, v32, v33, v34, v39);
      *v41 = v35 = 0;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  objc_storeStrong(&self->_targetDevices, v5);
  v35 = 1;
LABEL_47:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)_hidStartPERAndRetunError:(id *)a3
{
  v10 = a3;
  hidProductID = self->_hidProductID;
  if (!(!v4 & v3))
  {
    switch(hidProductID)
    {
      case 0x265u:
        goto LABEL_14;
      case 0x266u:
      case 0x268u:
      case 0x26Au:
      case 0x26Bu:
        goto LABEL_18;
      case 0x267u:
      case 0x26Cu:
        goto LABEL_16;
      case 0x269u:
        goto LABEL_17;
      default:
        JUMPOUT(0);
    }
  }

  a3 = 213;
  v5 = 7;
  if (hidProductID - 569 >= 3 && hidProductID - 597 >= 3)
  {
    if (hidProductID - 666 <= 5 && ((1 << (hidProductID + 102)) & 0x25) != 0 || hidProductID - 800 < 3)
    {
LABEL_16:
      a3 = 214;
      v5 = 10;
    }

    else
    {
      switch(hidProductID)
      {
        case 0x324u:
LABEL_14:
          a3 = 214;
          v5 = 48;
          break;
        case 0x30Eu:
          v5 = 15;
          break;
        case 0x323u:
LABEL_17:
          a3 = 214;
          v5 = 45;
          break;
        case 0x30Du:
          v5 = 12;
          break;
        default:
LABEL_18:
          if (v10)
          {
            v13 = CBErrorF(-6735, "Unsupported HID: PID 0x%04X", a3, v5, v6, v7, v8, v9, self->_hidProductID);
            v14 = v13;
            LOBYTE(v14) = 0;
            *v10 = v13;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          return v14;
      }
    }
  }

  self->_startWait = 0;
  LODWORD(v14) = [(CBHIDPerformanceMonitor *)self _hidSetFeatureWithReportID:a3 value:v5 error:v10];
  if (v14)
  {
    LOBYTE(v14) = 1;
    self->_hidStartedErrorRateMode = 1;
    *&self->_statsPacketMicsStart = 0u;
    *&self->_statsPacketMicsStartInterim = 0u;
    *&self->_statsPacketCountActual = 0u;
    self->_statsPacketCountInterim = 0;
    self->_statsPacketIntervalMicsMax = 0;
    self->_statsPacketP50Max = 0.0;
    self->_statsPacketP95Max = 0.0;
    self->_statsPacketP99Max = 0.0;
    self->_statsPacketP90Max = 0.0;
  }

  return v14;
}

- (void)_packetLoggerProcessPacketData:(id)a3
{
  xdata = a3;
  v4 = self->_targetDevice;
  if (!v4)
  {
    goto LABEL_68;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  length = xpc_data_get_length(xdata);
  if (length < 12)
  {
    goto LABEL_68;
  }

  if (length == 12 || (bytes_ptr[13] | ((bytes_ptr[14] & 0xF) << 8)) != self->_statsLastConnectionHandle)
  {
    goto LABEL_68;
  }

  v8 = bswap32(*(bytes_ptr + 2)) + 1000000 * bswap32(*(bytes_ptr + 1));
  v9 = bytes_ptr[12];
  if (v9 == 3)
  {
    if (length >= 0x10 && self->_startWait)
    {
      v10 = bytes_ptr[15];
      if (v10 == 5)
      {
        self->_statsPacketIntervalMicsMax = 0;
        self->_statsPacketP50Max = 0.0;
        self->_statsPacketMicsStart = v8;
        self->_statsPacketMicsEnd = v8;
        self->_statsPacketMicsStartInterim = v8;
        self->_statsPacketMicsPrevious = v8;
        self->_statsPacketCountActual = 0;
        self->_statsPacketCountInterim = 0;
        self->_startWait = 0;
        self->_statsPacketP95Max = 0.0;
        self->_statsPacketP99Max = 0.0;
        self->_statsPacketP90Max = 0.0;
        if (gLogCategory_CBHIDPerf > 10 || gLogCategory_CBHIDPerf == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_68;
        }

LABEL_20:
        LogPrintF_safe();
        goto LABEL_68;
      }
    }

    else
    {
      if (length < 0x10)
      {
        goto LABEL_68;
      }

      v10 = bytes_ptr[15];
    }

    if ((v10 > 0x36 || ((1 << v10) & 0x6C000000008080) == 0) && v10 != 81 && (v10 != 27 || (bytes_ptr[14] & 0x20) == 0))
    {
      goto LABEL_68;
    }

    if (!self->_statsPacketMicsStart)
    {
      self->_statsPacketMicsStart = v8;
    }

    if (!self->_statsPacketMicsStartInterim)
    {
      self->_statsPacketMicsStartInterim = v8;
    }

    statsPacketMicsPrevious = self->_statsPacketMicsPrevious;
    v14 = v8;
    if (statsPacketMicsPrevious)
    {
      if (v8 < statsPacketMicsPrevious)
      {
        if (gLogCategory_CBHIDPerf > 90)
        {
          goto LABEL_68;
        }

        if (gLogCategory_CBHIDPerf == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_68;
          }

          v31 = self->_statsPacketMicsPrevious;
        }

        goto LABEL_20;
      }

      v14 = self->_statsPacketMicsPrevious;
    }

    v15 = v8 - v14;
    statsPacketIntervalMicsMax = self->_statsPacketIntervalMicsMax;
    if (v8 - v14 > statsPacketIntervalMicsMax)
    {
      self->_statsPacketIntervalMicsMax = v15;
    }

    self->_statsPacketMicsEnd = v8;
    v17 = self->_statsPacketCountActual + 1;
    self->_statsPacketMicsPrevious = v8;
    self->_statsPacketCountActual = v17;
    ++self->_statsPacketCountInterim;
    statsPacketDeltaMics = self->_statsPacketDeltaMics;
    v19 = (v8 - v14) / 1000000.0;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 - v14];
    [(NSMutableArray *)statsPacketDeltaMics addObject:v20];

    intrmPacketDeltaMics = self->_intrmPacketDeltaMics;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
    [(NSMutableArray *)intrmPacketDeltaMics addObject:v22];

    if (v15 >= self->_statsPacketExcessiveInterval)
    {
      if (gLogCategory_CBHIDPerf <= 30 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
      {
        statsPacketCountActual = self->_statsPacketCountActual;
        OUTLINED_FUNCTION_1_11();
        LogPrintF_safe();
      }

      v26 = MEMORY[0x1C68DF720](self->_excessiveIntervalHandler);
      v27 = v26;
      if (v26)
      {
        (*(v26 + 16))(v26, v4, v15 > statsPacketIntervalMicsMax, v19);
      }
    }

    else if (gLogCategory_CBHIDPerf <= 10 && (gLogCategory_CBHIDPerf != -1 || _LogCategory_Initialize()))
    {
      v23 = self->_statsPacketCountActual;
      OUTLINED_FUNCTION_1_11();
      LogPrintF_safe();
    }

    v28 = [MEMORY[0x1E695DF00] date];
    if ([v28 compare:self->_slidingWindowDate] == 1)
    {
      [(NSMutableArray *)self->_intrmPacketDeltaMics sortUsingComparator:&__block_literal_global_184];
      if ([(NSMutableArray *)self->_intrmPacketDeltaMics count])
      {
        [(CBHIDPerformanceMonitor *)self _showSummaryResult:v4 isFinal:0 packetMics:v8 statsDelta:self->_intrmPacketDeltaMics deltaMics:self->_statsPacketMicsEnd - self->_statsPacketMicsStartInterim countActual:self->_statsPacketCountInterim];
      }

      self->_statsPacketMicsStartInterim = v8;
      self->_statsPacketCountInterim = 0;
      v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_slideWindowSec];
      slidingWindowDate = self->_slidingWindowDate;
      self->_slidingWindowDate = v29;

      [(NSMutableArray *)self->_intrmPacketDeltaMics removeAllObjects];
    }

    goto LABEL_68;
  }

  if (v9 != 2)
  {
    goto LABEL_68;
  }

  if (length >= 0x18 && self->_finishWait)
  {
    if (bytes_ptr[15] != 7)
    {
      goto LABEL_68;
    }

    if (!bytes_ptr[23])
    {
      [(NSMutableArray *)self->_statsPacketDeltaMics sortUsingComparator:&__block_literal_global_8];
      [(CBHIDPerformanceMonitor *)self _showSummaryResult:v4 isFinal:1 packetMics:v8 statsDelta:self->_statsPacketDeltaMics deltaMics:self->_statsPacketMicsEnd - self->_statsPacketMicsStart countActual:self->_statsPacketCountActual];
      goto LABEL_68;
    }
  }

  else if (length < 0x18 || bytes_ptr[15] != 7)
  {
    goto LABEL_68;
  }

  v11 = bytes_ptr[22];
  if (v11 != 214)
  {
    if (v11 != 213)
    {
      goto LABEL_68;
    }

    v12 = bytes_ptr[23];
    if (v12 > 0xF || ((1 << v12) & 0x9080) == 0)
    {
      goto LABEL_68;
    }

LABEL_54:
    self->_startWait = 1;
    goto LABEL_68;
  }

  v25 = bytes_ptr[23];
  if (v25 <= 0x30 && ((1 << v25) & 0x1200000000400) != 0)
  {
    goto LABEL_54;
  }

LABEL_68:
}

- (void)_rssiAndHandleRead
{
  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    self->_statsLastRSSI = 0;
    self->_statsLastConnectionHandle = 0;
    v4 = targetDevice;
    v5 = dispatch_semaphore_create(0);
    v6 = objc_alloc_init(CBController);
    [(CBController *)v6 setDispatchQueue:self->_dispatchQueue];
    v7 = objc_alloc_init(CBDeviceRequest);
    [(CBDeviceRequest *)v7 setRequestFlags:9];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__CBHIDPerformanceMonitor__rssiAndHandleRead__block_invoke;
    v10[3] = &unk_1E8122578;
    v11 = v5;
    v12 = v4;
    v13 = self;
    v14 = v6;
    v8 = v5;
    [(CBController *)v6 performDeviceRequest:v7 device:v4 completion:v10];
    v9 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v8, v9);
  }
}

- (void)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 304);
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __51__CBHIDPerformanceMonitor__activateWithCompletion___block_invoke_2;
  a2[3] = &unk_1E811D130;
  a2[4] = a1;
  dispatch_async(v2, a2);
}

- (void)_hidStartAndReturnError:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = CBErrorF(-6762, "No HID devices", a3, a4, a5, a6, a7, a8, v10);
  }
}

- (void)_hidStartAndReturnError:.cold.2()
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_9();
  LogPrintF_safe();
}

- (uint64_t)_hidStartAndReturnError:(uint64_t)result .cold.6(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CBHIDPerf <= 90)
  {
    if (gLogCategory_CBHIDPerf != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_hidStartAndReturnError:(uint64_t)a3 .cold.8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = -6700;
    }

    result = CBErrorF(v9, "Get HID services failed", a3, a4, a5, a6, a7, a8, v10);
    *v8 = result;
  }

  return result;
}

- (void)_hidSetFeatureWithReportID:(uint64_t)a3 value:(uint64_t)a4 error:(uint64_t)a5 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = CBErrorF(-6762, "No HID devices", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

void __45__CBHIDPerformanceMonitor__packetLoggerStart__block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

void __45__CBHIDPerformanceMonitor__rssiAndHandleRead__block_invoke_cold_1(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = [*a3 name];
  v3 = CUPrintNSError();
  LogPrintF_safe();
}

- (uint64_t)_calculatePercentile:(uint64_t)result percentile:.cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CBHIDPerf <= 30)
  {
    if (gLogCategory_CBHIDPerf != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

@end