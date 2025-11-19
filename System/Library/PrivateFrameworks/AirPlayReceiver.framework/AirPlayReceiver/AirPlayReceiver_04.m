double aprstats_Init(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t APReceiverStatsCollectorCreate()
{
  if (!IsAppleInternalBuild() || !FigGetCFPreferenceNumberWithDefault())
  {
    return 0;
  }

  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (APReceiverStatsCollectorGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v1 = dispatch_queue_create("com.apple.airplay.receiver.statscollector", 0);
    *(Instance + 16) = v1;
    if (v1)
    {
      *(Instance + 260) = 0;
      *(Instance + 88) = APSScreenLatencyMs();
      *(Instance + 96) = xmmword_23EAA1840;
      *(Instance + 112) = 0;
      if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return Instance;
    }
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverStatsCollector <= 90 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Instance)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void APReceiverStatsCollectorSetScreenOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 16);
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __APReceiverStatsCollectorSetScreenOptions_block_invoke;
      v3[3] = &__block_descriptor_48_e5_v8__0l;
      v3[4] = a1;
      v3[5] = a2;
      dispatch_sync(v2, v3);
    }
  }
}

uint64_t __APReceiverStatsCollectorSetScreenOptions_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigCFDictionaryGetInt32IfPresent();
  *(v1 + 248) = 0;
  v2 = *(v1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 120) = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendF();
  CFStringAppendF();
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v5 = Count >= 0x10 ? 16 : Count;
    if (Count)
    {
      v6 = 0;
      do
      {
        CFDictionaryGetTypeID();
        if (CFArrayGetTypedValueAtIndex())
        {
          CFStringGetTypeID();
          v7 = CFDictionaryGetTypedValue();
          if (v7)
          {
            CFEqual(v7, @"HIDIn");
            CFStringAppendF();
            ++*(v1 + 248);
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  *(v1 + 252) += 4;
  if (FigSupportsIOSurfaceTimingInfo())
  {
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
    CFStringAppendF();
  }

  CFStringAppendF();
  CFStringAppendF();
  CFStringAppendF();
  return CFStringAppendF();
}

void APReceiverStatsCollectorSetIfName(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetIfName_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorSetHUDOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetHUDOptions_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorSetHUDOptions_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void aprstats_logEnable(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __aprstats_logEnable_block_invoke;
    v3[3] = &__block_descriptor_41_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorEnableHUD(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorEnableHUD_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a2;
    v3[5] = a1;
    dispatch_sync(v2, v3);
  }
}

uint64_t __APReceiverStatsCollectorEnableHUD_block_invoke(uint64_t result)
{
  v1 = result;
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (!v3)
  {
    v3 = *(v2 + 48);
  }

  if (*(v2 + 256))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v6 = *(v2 + 260);
    Value = CFDictionaryGetValue(v3, @"PresentationLayer");
    if (Value)
    {
      v8 = Value;
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      *(v2 + 24) = v8;
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v10 = objc_alloc_init(APHUDLayer);
      *(v2 + 32) = v10;
      [(APHUDLayer *)v10 setName:@"HUDLayer"];
      [*(v2 + 32) setFrame:{40.0, 40.0, 400.0, 470.0}];
      [*(v2 + 32) setEdgeAntialiasingMask:0];
      if (Int32IfPresent)
      {
        [*(v2 + 32) setZPosition:0];
      }

      [*(v2 + 32) addLine:@" Version:\t" withColorIndex:14];
      [*(v2 + 32) addLine:@" Interface:\t" withColorIndex:14];
      v11 = *(v2 + 32);
      if (v6)
      {
        v12 = @" TReg(R):\t";
      }

      else
      {
        [v11 addLine:@" TReg(S):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" TReg(R):\t" withColorIndex:14];
        v11 = *(v2 + 32);
        v12 = @" S WxH:\t";
      }

      [v11 addLine:v12 withColorIndex:14];
      [*(v2 + 32) addLine:@" D WxH:\t" withColorIndex:14];
      [*(v2 + 32) addLine:@" Codec:\t" withColorIndex:14];
      v13 = *(v2 + 32);
      if (v6)
      {
        [v13 addLine:@" TV-FPS:\t" withColorIndex:0];
        [*(v2 + 32) addLine:@" TV-DPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" RSSI(R):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Chan(R):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Seq(R1):\t" withColorIndex:14];
        v14 = *(v2 + 32);
        v15 = @" Seq(R2):\t";
        v16 = 14;
      }

      else
      {
        [v13 addLine:@" Chroma:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" P-FPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" W-FPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" SubS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" B4En:\t" withColorIndex:1];
        [*(v2 + 32) addLine:@" FPS Th:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Q-FPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" S-FPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" R-FPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" TV-FPS:\t" withColorIndex:0];
        [*(v2 + 32) addLine:@" TV-DPS:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Est BW:\t" withColorIndex:3];
        [*(v2 + 32) addLine:@" Act BW:\t" withColorIndex:4];
        [*(v2 + 32) addLine:@" Loss:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" RTT:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Latency:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Ahead:\t" withColorIndex:2];
        [*(v2 + 32) addLine:@" EnDp:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" IdEn:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" IdDp:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" CPU:\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" RSSI(S):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" RSSI(R):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Chan(S):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Chan(R):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Seq(S1):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Seq(S2):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Seq(R1):\t" withColorIndex:14];
        [*(v2 + 32) addLine:@" Seq(R2):\t" withColorIndex:14];
        v14 = *(v2 + 32);
        v15 = @" SO Drops:\t";
        v16 = 5;
      }

      [v14 addLine:v15 withColorIndex:v16];
      [*(v2 + 32) addLine:@" A Buff\t" withColorIndex:14];
      [*(v2 + 32) addLine:@" A Lost:\t" withColorIndex:14];
      [*(v2 + 32) addLine:@" A Unrec:\t" withColorIndex:14];
      [*(v2 + 32) addLine:@" A Late:\t" withColorIndex:14];
      v17 = CGColorCreateWithRGB();
      [*(v2 + 32) setBackgroundColor:v17];
      CFRelease(v17);
      [*(v2 + 32) setGeometryFlipped:{objc_msgSend(*(v2 + 24), "contentsAreFlipped") ^ 1}];
      [*(v2 + 24) addSublayer:*(v2 + 32)];
      v18 = objc_alloc_init(APGraphLayer);
      *(v2 + 40) = v18;
      [(APGraphLayer *)v18 setName:@"GraphLayer"];
      [*(v2 + 40) setFrame:{40.0, 520.0, 195.0, 150.0}];
      [*(v2 + 40) setBorderWidth:1.0];
      [*(v2 + 40) setEdgeAntialiasingMask:0];
      if (Int32IfPresent)
      {
        [*(v2 + 40) setZPosition:0];
      }

      [*(v2 + 40) setUpGraphs:6];
      LODWORD(v19) = 1116471296;
      [*(v2 + 40) setUpGraph:0 min:30 max:0.0 numValues:v19];
      if (!v6)
      {
        LODWORD(v20) = 1116471296;
        [*(v2 + 40) setUpGraph:1 min:30 max:0.0 numValues:v20];
        LODWORD(v21) = 1120403456;
        LODWORD(v22) = -20.0;
        [*(v2 + 40) setUpGraph:2 min:30 max:v22 numValues:v21];
        LODWORD(v23) = 20.0;
        [*(v2 + 40) setUpGraph:3 min:30 max:0.0 numValues:v23];
        LODWORD(v24) = 25.0;
        [*(v2 + 40) setUpGraph:4 min:30 max:0.0 numValues:v24];
        LODWORD(v25) = 30.0;
        [*(v2 + 40) setUpGraph:5 min:30 max:0.0 numValues:v25];
      }

      [*(v2 + 40) setGeometryFlipped:{objc_msgSend(*(v2 + 24), "contentsAreFlipped") ^ 1}];
      [*(v2 + 24) addSublayer:*(v2 + 40)];
      if (FigGetCFPreferenceNumberWithDefault())
      {
        v26 = [APLatencyVisualizationLayer alloc];
        [*(v2 + 40) zPosition];
        v28 = [(APLatencyVisualizationLayer *)v26 init:aprstats_getSynchronizedNetworkTime timeContext:v2 zPosition:(v27 + 3.0)];
        [v28 setFrame:{*(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184)}];
        [*(v2 + 24) addSublayer:v28];
        *(v2 + 264) = [[APLatencyVisualizationTrackingController alloc] init:v28];

        if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      [MEMORY[0x277CD9FF0] commit];
      if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        [*(v2 + 32) frame];
        v30 = v29;
        [*(v2 + 32) frame];
        v32 = v31;
        [*(v2 + 32) frame];
        v34 = v33;
        [*(v2 + 32) frame];
        v38 = v34;
        v39 = v35;
        v36 = v30;
        v37 = v32;
        LogPrintF();
      }

      result = [v5 drain];
      *(*(v1 + 40) + 256) = 1;
    }

    else
    {
      APSLogErrorAt();
      return [v5 drain];
    }
  }

  return result;
}

double aprstats_getSynchronizedNetworkTime(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v2)
    {
      if (!v2(v1, &v4))
      {
        return v6 + v5 * 5.42101086e-20;
      }
    }
  }

  APSLogErrorAt();
  return 0.0;
}

void APReceiverStatsCollectorSetMirroringMode(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetMirroringMode_block_invoke;
    v3[3] = &__block_descriptor_44_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorShowStats(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorShowStats_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

void __APReceiverStatsCollectorShowStats_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 257) || *(v1 + 256))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = Current - *(v1 + 232);
    if (v3 >= 0.5)
    {
      v4 = *(v1 + 104);
      v5 = *(v1 + 260);
      *(v1 + 232) = Current;
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      v46 = *(v1 + 72);
      v6 = v46 - *(v1 + 76);
      *(v1 + 76) = v46;
      v7 = *(v1 + 136);
      if (v7)
      {
        Value = CFDictionaryGetValue(*(v1 + 136), *MEMORY[0x277CD64B8]);
        if (Value)
        {
          v9 = Value;
          v10 = CFGetTypeID(Value);
          if (v10 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v9);
            if (Count >= 1)
            {
              v12 = Count;
              v13 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
                v52 = 0;
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  break;
                }

                if (v12 == ++v13)
                {
                  goto LABEL_13;
                }
              }

              v7 = ValueAtIndex;
            }
          }
        }
      }

LABEL_13:
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v45 = ((v46 - *(v1 + 80)) / v3 + 0.5);
        *(v1 + 80) = v46;
      }

      else
      {
        v45 = 0;
      }

      if (FigCFDictionaryGetInt32IfPresent())
      {
        v44 = ((v46 - *(v1 + 84)) / v3 + 0.5);
        *(v1 + 84) = v46;
      }

      else
      {
        v44 = 0;
      }

      if (v7)
      {
        CFDictionaryGetValue(v7, *MEMORY[0x277CD64B0]);
      }

      v42 = (v6 / v3 + 0.5);
      v41 = *(v1 + 88) - (v4 & (v4 >> 31));
      add_explicit = atomic_fetch_add_explicit((v1 + 60), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 60), -add_explicit, memory_order_relaxed);
      v16 = atomic_fetch_add_explicit((v1 + 64), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 64), -v16, memory_order_relaxed);
      v17 = atomic_fetch_add_explicit((v1 + 68), 0, memory_order_relaxed);
      atomic_fetch_add_explicit((v1 + 68), -v17, memory_order_relaxed);
      if (*(v1 + 256))
      {
        v43 = v4;
        v40 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        v50 = 0;
        v51 = 0;
        v49 = 0;
        v48 = 0;
        if (*(v1 + 128))
        {
          CFDictionaryGetValue(*(v1 + 128), @"trafficRegistration");
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(v47) = 0;
        }

        v47 = 0;
        APTransportGetSharedTransport();
        CMBaseObject = FigTransportGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19 && !v19(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &v47))
        {
          APTransportTrafficRegistrarGetRegistration();
          APTransportTrafficRegistrarGetRSSI();
          APTransportTrafficRegistrarGetWifiChannel();
          APTransportTrafficRegistrarGetAWDLChannelSequence();
        }

        if (v47)
        {
          CFRelease(v47);
        }

        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        if (*(v1 + 260))
        {
          v20 = "Mirroring 2";
        }

        else
        {
          v20 = "Mirroring 1";
        }

        [*(v1 + 32) setValueAtIndex:0 format:{@"%s", v20}];
        [*(v1 + 32) setValueAtIndex:1 format:{@"%s", v1 + 208}];
        if (v5)
        {
          v21 = 2;
        }

        else
        {
          [*(v1 + 32) setValueAtIndex:2 format:{@"%s%s", "", ""}];
          v21 = 3;
        }

        v22 = (v21 + 1);
        [*(v1 + 32) setValueAtIndex:v21 format:{@"%s%s", "", ""}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v21 + 1) format:{@"%.0fx%.0f", *(v1 + 144), *(v1 + 152)}];
          v22 = (v21 + 2);
        }

        [*(v1 + 32) setValueAtIndex:v22 format:{@"%.0fx%.0f", *(v1 + 176), *(v1 + 184)}];
        v23 = (v22 + 2);
        [*(v1 + 32) setValueAtIndex:(v22 + 1) format:{@"%c%c%c%c", HIBYTE(*(v1 + 192)), BYTE2(*(v1 + 192)), BYTE1(*(v1 + 192)), *(v1 + 192)}];
        if (!v5)
        {
          v24 = *(v1 + 200);
          if (!v24)
          {
            v24 = &stru_28512F888;
          }

          [*(v1 + 32) setValueAtIndex:(v22 + 2) format:{@"%@", v24}];
          [*(v1 + 32) setValueAtIndex:(v22 + 3) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v22 + 4) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v22 + 5) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v22 + 6) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v22 + 7) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:v22 | 8 format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v22 + 9) format:{@"%u", 0}];
          v23 = (v22 + 11);
          [*(v1 + 32) setValueAtIndex:(v22 + 10) format:{@"%u", v42}];
        }

        [*(v1 + 32) setValueAtIndex:v23 format:{@"%u", v45}];
        v25 = (v23 + 2);
        [*(v1 + 32) setValueAtIndex:(v23 + 1) format:{@"%u", v44}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v23 + 2) format:{@"%.2f", 0.0 / 1000000.0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 3) format:{@"%.2f", 0.0 / 1000000.0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 4) format:{@"%u%%", (0.0 * 100.0)}];
          [*(v1 + 32) setValueAtIndex:(v23 + 5) format:{@"%u ms", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 6) format:{@"%d", v41}];
          [*(v1 + 32) setValueAtIndex:(v23 + 7) format:{@"%d", v43}];
          [*(v1 + 32) setValueAtIndex:(v23 + 8) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 9) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 10) format:{@"%u", 0}];
          [*(v1 + 32) setValueAtIndex:(v23 + 11) format:{@"%u", 0.0}];
          v25 = (v23 + 13);
          [*(v1 + 32) setValueAtIndex:(v23 + 12) format:{@"%d", 0}];
        }

        v26 = (v25 + 1);
        [*(v1 + 32) setValueAtIndex:v25 format:{@"%d", 0}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v25 + 1) format:{@"%d", 0}];
          v26 = (v25 + 2);
        }

        v27 = (v26 + 1);
        [*(v1 + 32) setValueAtIndex:v26 format:{@"%d", 0}];
        if (!v5)
        {
          v28 = v50;
          if (!v50)
          {
            v28 = "N/A";
          }

          [*(v1 + 32) setValueAtIndex:(v26 + 1) format:{@"%s", v28}];
          v27 = (v26 + 3);
          v29 = v51;
          if (!v51)
          {
            v29 = "N/A";
          }

          [*(v1 + 32) setValueAtIndex:(v26 + 2) format:{@"%s", v29}];
        }

        v30 = v48;
        if (!v48)
        {
          v30 = "N/A";
        }

        [*(v1 + 32) setValueAtIndex:v27 format:{@"%s", v30}];
        v31 = (v27 + 2);
        v32 = v49;
        if (!v49)
        {
          v32 = "N/A";
        }

        [*(v1 + 32) setValueAtIndex:(v27 + 1) format:{@"%s", v32}];
        if (!v5)
        {
          [*(v1 + 32) setValueAtIndex:(v27 + 2) format:{@"%u", 0}];
          v31 = (v27 + 3);
        }

        [*(v1 + 32) setValueAtIndex:v31 format:{@"%u ms", *(v1 + 56)}];
        [*(v1 + 32) setValueAtIndex:(v31 + 1) format:{@"%u", add_explicit}];
        [*(v1 + 32) setValueAtIndex:(v31 + 2) format:{@"%u", v16}];
        [*(v1 + 32) setValueAtIndex:(v31 + 3) format:{@"%u", v17}];
        [*(v1 + 32) setNeedsDisplay];
        [*(v1 + 32) display];
        *&v33 = v45;
        [*(v1 + 40) updateValue:0 value:v33];
        if (!v5)
        {
          *&v34 = 0;
          [*(v1 + 40) updateValue:1 value:v34];
          *&v35 = v43;
          [*(v1 + 40) updateValue:2 value:v35];
          HIDWORD(v36) = 0;
          *&v36 = 0.0 / 1000000.0;
          [*(v1 + 40) updateValue:3 value:v36];
          HIDWORD(v37) = 0;
          *&v37 = 0.0 / 1000000.0;
          [*(v1 + 40) updateValue:4 value:v37];
          *&v38 = 0;
          [*(v1 + 40) updateValue:5 value:v38];
        }

        [*(v1 + 40) setNeedsDisplay];
        [*(v1 + 40) display];
        v39 = *(v1 + 264);
        if (v39)
        {
          [objc_msgSend(v39 "layer")];
        }

        [MEMORY[0x277CD9FF0] commit];
        free(v50);
        free(v51);
        free(v48);
        free(v49);
        [v40 drain];
      }

      if (*(v1 + 257) && gLogCategory_APReceiverStatsCollector <= 50 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }
}

uint64_t aprstats_createAWDLSequenceLines(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = AirPlayCreateAWDLChannelSequenceString();
  if (a3 >= 9)
  {

    return AirPlayCreateAWDLChannelSequenceString();
  }

  return result;
}

uint64_t APReceiverStatsCollectorUpdateAudioBufferDuration(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioLostPacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 60), a2, memory_order_relaxed);
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioUnrecoveredPacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 64), a2, memory_order_relaxed);
  }

  return result;
}

uint64_t APReceiverStatsCollectorAddAudioLatePacketCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 68), a2, memory_order_relaxed);
  }

  return result;
}

void APReceiverStatsCollectorUpdateVideoSizes(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorUpdateVideoSizes_block_invoke;
    block[3] = &__block_descriptor_88_e5_v8__0l;
    block[4] = a1;
    *&block[5] = a2;
    *&block[6] = a3;
    *&block[7] = a4;
    *&block[8] = a5;
    *&block[9] = a6;
    *&block[10] = a7;
    dispatch_sync(v7, block);
  }
}

void APReceiverStatsCollectorUpdateVideoCodec(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateVideoCodec_block_invoke;
    v3[3] = &__block_descriptor_44_e5_v8__0l;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void APReceiverStatsCollectorUpdateVideoFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  if (a1 && a2)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    Extension = CMFormatDescriptionGetExtension(a2, *MEMORY[0x277CC03B0]);
    v15 = 0;
    if (Extension)
    {
      v6 = Extension;
      if (CFDictionaryGetValue(Extension, @"hvcC"))
      {
        v13 = 0;
        v14 = 0;
        v12 = 0;
        if (!FigHEVCBridge_GetHEVCParameterSetAtIndex() && !FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
        {
          if (v15 > 3uLL)
          {
            CFStringAppendFormat(Mutable, 0, @"??? (%d)", v15);
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @"%s", off_278C5F938[v15]);
          }

          if (HIBYTE(v12) == v12)
          {
            CFStringAppendFormat(Mutable, 0, @" (%d-bit)", HIBYTE(v12));
          }

          else
          {
            CFStringAppendFormat(Mutable, 0, @" (%d-bit luma %d-bit chroma)", HIBYTE(v12), v12);
          }
        }

        goto LABEL_22;
      }

      Value = CFDictionaryGetValue(v6, @"avcC");
      if (Value)
      {
        v8 = CFDataGetBytePtr(Value)[1];
        switch(v8)
        {
          case 100:
            v9 = 1;
            goto LABEL_20;
          case 244:
            v9 = 3;
            goto LABEL_20;
          case 122:
            v9 = 2;
LABEL_20:
            CFStringAppendFormat(Mutable, 0, @"%s", off_278C5F938[v9]);
            goto LABEL_22;
        }

        CFStringAppendFormat(Mutable, 0, @"???");
      }
    }

LABEL_22:
    v10 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APReceiverStatsCollectorUpdateVideoFormatDescription_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = Mutable;
    block[6] = a2;
    dispatch_sync(v10, block);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t __APReceiverStatsCollectorUpdateVideoFormatDescription_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = CMFormatDescriptionGetMediaSubType(*(a1 + 48));
  *(*(a1 + 32) + 192) = result;
  return result;
}

void APReceiverStatsCollectorUpdateVideoPerformanceStats(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateVideoPerformanceStats_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorUpdateVideoPerformanceStats_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverStatsCollectorUpdateSenderStats(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorUpdateSenderStats_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorUpdateSenderStats_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverStatsCollectorGetFrameCounters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __APReceiverStatsCollectorGetFrameCounters_block_invoke;
    v5[3] = &__block_descriptor_64_e5_v8__0l;
    v5[4] = a2;
    v5[5] = a1;
    v5[6] = a3;
    v5[7] = a4;
    dispatch_sync(v4, v5);
  }
}

void *__APReceiverStatsCollectorGetFrameCounters_block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    *v1 = *(result[5] + 72);
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = *(result[5] + 80);
  }

  v3 = result[7];
  if (v3)
  {
    *v3 = *(result[5] + 84);
  }

  return result;
}

void __APReceiverStatsCollectorUpdateAndCopyFrameStats_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = mach_absolute_time();
  ++*(v1 + 72);
  if (*v2 >= v4)
  {
    v5 = UpTicksToMilliseconds();
  }

  else
  {
    v5 = -UpTicksToMilliseconds();
  }

  if (*(v1 + 112))
  {
    *(v1 + 104) = *(v1 + 104) + *(v1 + 96) * (v5 - *(v1 + 104));
  }

  else
  {
    *(v1 + 104) = v5;
    *(v1 + 112) = 1;
  }

  if (v5 < -*(v1 + 88) && gLogCategory_APReceiverStatsCollector <= 50 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v3)
  {
    v21 = v3;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = *(v2 + 16);
    if (!v8)
    {
      v8 = *(v2 + 8);
    }

    v20 = Mutable;
    snprintf_add();
    *(v1 + 240) = v8;
    v9 = *(v2 + 8);
    v10 = *(v1 + 248);
    if (v10 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 - 1;
    }

    if (v11 >= *(v2 + 40))
    {
      v11 = *(v2 + 40);
    }

    if (v11 >= 1)
    {
      v12 = *(v2 + 24);
      v13 = &v12[v11];
      do
      {
        snprintf_add();
        v14 = *v12++;
        v9 += ((v14 << 32) * 0x4189374BC6A7F0uLL) >> 64;
      }

      while (v12 < v13);
    }

    v19 = v6;
    if (*(v2 + 44) >= 1)
    {
      v15 = 0;
      do
      {
        snprintf_add();
        ++v15;
      }

      while (v15 < *(v2 + 44));
    }

    CFDictionarySetCString();
    FigCFDictionarySetInt32();
    v16 = CFStringCreateMutable(v19, 0);
    UpTicksToMilliseconds();
    CFStringAppendF();
    CFDictionarySetValue(v20, @"preLine", v16);
    CFRelease(v16);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt64();
    v17 = *(v1 + 120);
    if (v17)
    {
      HIDWORD(v18) = -1030792151 * *(v1 + 72);
      LODWORD(v18) = HIDWORD(v18);
      if ((v18 >> 2) <= 0x28F5C28)
      {
        CFDictionarySetValue(v20, @"header", v17);
      }
    }

    *v21 = v20;
  }
}

uint64_t APReceiverStatsCollectorLogFrameStats(uint64_t result, const __CFDictionary *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v3 = result;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  v15 = 0;
  if (a2)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    FigCFDictionaryGetInt64IfPresent();
    v11 = 0;
    if (CFDictionaryGetValue(a2, *MEMORY[0x277CD6338]))
    {
      FigGetIOSurfaceTimingStatsFromTimingInfoDictionary();
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&v11 + v4);
      if (!v6)
      {
        *(&v11 + v4) = v5;
        v6 = v5;
      }

      v4 += 8;
      v5 = v6;
    }

    while (v4 != 48);
    FigCFDictionaryGetInt64IfPresent();
    if (v11)
    {
      v7 = UpTicksToMilliseconds();
    }

    else
    {
      v7 = 0;
    }

    snprintf_add();
    v8 = 0;
    v10 = v7;
    do
    {
      if (*(&v11 + v8 + 8) <= *(&v11 + v8))
      {
        v9 = 0;
      }

      else
      {
        v9 = UpTicksToMilliseconds();
      }

      snprintf_add();
      v10 += v9;
      v8 += 8;
    }

    while (v8 != 32);
  }

  snprintf_add();
  snprintf_add();
  snprintf_add();
  snprintf_add();
  result = CFDictionaryGetValue(v3, @"header");
  if (!result)
  {
    goto LABEL_31;
  }

  if (gLogCategory_APReceiverStatsCollector <= 50)
  {
    if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }

    if (gLogCategory_APReceiverStatsCollector <= 50)
    {
      if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }

      if (gLogCategory_APReceiverStatsCollector <= 50)
      {
        if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF();
        }

LABEL_31:
        if (gLogCategory_APReceiverStatsCollector <= 50)
        {
          if (gLogCategory_APReceiverStatsCollector != -1 || (result = _LogCategory_Initialize(), result))
          {
            CFDictionaryGetValue(v3, @"preLine");
            CFDictionaryGetValue(v3, @"deltasMs");
            return LogPrintF();
          }
        }
      }
    }
  }

  return result;
}

void APReceiverStatsCollectorSetNetworkClock(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __APReceiverStatsCollectorSetNetworkClock_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void __APReceiverStatsCollectorSetNetworkClock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  *(v2 + 272) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void AirPlayManagedDefaultsLogging_HandleReceiverManagedDefaultsLoggingChanged()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  v0 = APSSettingsCopyValue();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 != CFStringGetTypeID() || CFStringGetLength(v1) < 1)
    {
      ___HandleManagedDefaultsLoggingChanged_block_invoke();
LABEL_11:
      CFRelease(v1);
      return;
    }

    LogControlCF();
    v3 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControlCF");
    if (v3)
    {
      v3(v1);
    }

    CFRelease(v1);
    v4 = APSSettingsCopyValue();
    if (v4)
    {
      v1 = v4;
      v5 = CFGetTypeID(v4);
      if (v5 == CFStringGetTypeID() && CFStringGetLength(v1) >= 1)
      {
        LogControlCF();
      }

      goto LABEL_11;
    }
  }

  else
  {
    ___HandleManagedDefaultsLoggingChanged_block_invoke();
  }
}

uint64_t APReceiverScreenSinkCreateFileWriter(uint64_t a1, void *a2)
{
  if (!IsAppleInternalBuild())
  {
    return 4294954514;
  }

  if (a2)
  {
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (APReceiverScreenSinkGetClassID_once != -1)
    {
      dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
    }

    v3 = CMDerivedObjectCreate();
    if (v3)
    {
      v4 = v3;
      APSLogErrorAt();
    }

    else
    {
      if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = 0;
      *a2 = 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895165;
  }

  return v4;
}

uint64_t fwsink_updateVideoConfig(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 16))
  {
    v7 = 4294895164;
    goto LABEL_13;
  }

  if (!a2)
  {
    APSLogErrorAt();
    v7 = 4294895165;
LABEL_14:
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v7;
  }

  v6 = *(DerivedStorage + 8);
  v5 = (DerivedStorage + 8);
  v4 = v6;
  if (v6)
  {
    CFRelease(v4);
    *v5 = 0;
  }

  v7 = APSVideoFormatDescriptionCreateFromBlockBuffer();
  if (v7)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  return v7;
}

uint64_t fwsink_updateH264VideoConfig(uint64_t a1, const __CFData *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(DerivedStorage + 16))
  {
    v7 = 4294895164;
    goto LABEL_13;
  }

  if (!a2)
  {
    APSLogErrorAt();
    v7 = 4294895165;
LABEL_14:
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return v7;
  }

  v6 = *(DerivedStorage + 8);
  v5 = (DerivedStorage + 8);
  v4 = v6;
  if (v6)
  {
    CFRelease(v4);
    *v5 = 0;
  }

  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  v7 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
  if (v7)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  return v7;
}

uint64_t fwsink_enqueueFrame(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  sampleSizeArray = 0;
  if (*(DerivedStorage + 16))
  {
    if (*(DerivedStorage + 8))
    {
      *&sampleTimingArray.duration.value = *MEMORY[0x277CC0898];
      sampleTimingArray.duration.epoch = *(MEMORY[0x277CC0898] + 16);
      sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
      CMClockMakeHostTimeFromSystemUnits(&sampleTimingArray.presentationTimeStamp, a3);
      sampleSizeArray = CMBlockBufferGetDataLength(a2);
      v9 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], a2, 1u, 0, 0, *(DerivedStorage + 8), 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v20);
      if (v9)
      {
        v16 = v9;
      }

      else
      {
        if (!a5)
        {
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v20, 1u);
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          CFDictionarySetValue(ValueAtIndex, *MEMORY[0x277CC06A0], *MEMORY[0x277CBED28]);
        }

        v12 = *DerivedStorage;
        v13 = v20;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v14)
        {
          v15 = v14(v12, v13, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
          v16 = 0;
          if (!v15)
          {
            goto LABEL_15;
          }

          v16 = v15;
        }

        else
        {
          v16 = 4294954514;
        }
      }
    }

    else
    {
      v16 = 4294895164;
    }
  }

  else
  {
    v16 = 4294895164;
  }

  APSLogErrorAt();
LABEL_15:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v16 && gLogCategory_APReceiverScreenSinkFileWriter <= 60 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v16;
}

uint64_t fwsink_Stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v1 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *v1;
    if (*v1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v3)
      {
        v3(v2, 0);
      }

      if (*v1)
      {
        CFRelease(*v1);
        *v1 = 0;
      }
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 8) = 0;
    }

    *(v1 + 16) = 0;
  }

  return 0;
}

uint64_t fwsink_Start(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v15 = 4294895165;
    goto LABEL_17;
  }

  v5 = DerivedStorage;
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Value = CFDictionaryGetValue(a2, @"FilePath");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFStringGetTypeID()))
  {
    v15 = 4294895165;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (!*(v5 + 16))
  {
    *(v5 + 16) = 1;
    v9 = FigVirtualDisplaySinkFileWriterCreate();
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v11(CMBaseObject, *MEMORY[0x277CD66F8], v7);
        if (v12)
        {
          v15 = v12;
        }

        else
        {
          v13 = *v5;
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v14)
          {
            v15 = v14(v13, 0, 0);
            if (!v15)
            {
              return v15;
            }
          }

          else
          {
            v15 = 4294954514;
          }
        }
      }

      else
      {
        v15 = 4294954514;
      }
    }

    goto LABEL_17;
  }

  APSLogErrorAt();
  v15 = 4294895164;
LABEL_18:
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 90 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v16)
  {
    v16(a1);
  }

  return v15;
}

CFStringRef fwsink_CopyDebugDescription(const void *a1)
{
  ASPrintF();
  v2 = CFGetAllocator(a1);
  v3 = CFStringCreateWithFormat(v2, 0, @"<APReceiverScreenSinkFileWriter %p %s>", a1, 0);
  free(0);
  return v3;
}

uint64_t fwsink_Finalize(uint64_t a1)
{
  if (gLogCategory_APReceiverScreenSinkFileWriter <= 30 && (gLogCategory_APReceiverScreenSinkFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

uint64_t _APReceiverNTPClientGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverNTPClientTypeID = result;
  return result;
}

void _APReceiverNTPClientFinalize(uint64_t a1)
{
  APReceiverNTPClientStop(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

uint64_t APReceiverNTPClientStop(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 88))
  {
    SendSelfConnectedLoopbackMessage();
    v3 = pthread_join(*(a1 + 80), 0);
    *(a1 + 88) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(a1 + 72) = -1;
  }

  v5 = *(a1 + 24);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(a1 + 24) = -1;
  }

  if ((v2 & 0x80000000) == 0 && gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

uint64_t ntpClient_sendRequest(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 117494400;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  AirTunesClock_GetSynchronizedTime(*(a1 + 16), &v10);
  v2 = HIDWORD(v11);
  v3 = v10 - 2085978496;
  *(a1 + 96) = v10 - 2085978496;
  *(a1 + 100) = v2;
  v16 = bswap32(v3);
  v17 = bswap32(v2);
  v4 = *(a1 + 24);
  if (*(a1 + 68))
  {
    v5 = send(v4, &v12, 0x20uLL, 0);
  }

  else
  {
    v5 = sendto(v4, &v12, 0x20uLL, 0, (a1 + 36), *(a1 + 64));
  }

  if (v5 == 32)
  {
LABEL_7:
    v6 = 0;
    v7 = *(a1 + 104);
    if ((v7 + 1) > 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 1;
    }

    *(a1 + 104) = v8;
    return v6;
  }

  if (*__error())
  {
    v6 = *__error();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 4294960596;
  }

  if (gLogCategory_APReceiverNTPClient <= 50 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6;
}

uint64_t ntpClient_receiveResponse()
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0;
  v4 = 0;
  v0 = SocketRecvFrom();
  v1 = v0;
  if (v0 != 35)
  {
    if (v0)
    {
      APSLogErrorAt();
    }

    else
    {
      return 4294960553;
    }
  }

  return v1;
}

uint64_t ntpClient_thread(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 72);
  pthread_setname_np("AirPlayTimeSyncClient");
  SetCurrentThreadPriority();
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  memset(&v14, 0, 32);
  if (v1 <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  memset(&v14.fds_bits[8], 0, 32);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  v5 = v2 >> 5;
  memset(&v14.fds_bits[16], 0, 64);
  v6 = 1 << v1;
  v7 = v1 >> 5;
  v8 = 1 << v2;
  do
  {
    while (1)
    {
      if (__darwin_check_fd_set_overflow(v1, &v14, 0))
      {
        v14.fds_bits[v7] |= v6;
      }

      if (__darwin_check_fd_set_overflow(v2, &v14, 0))
      {
        v14.fds_bits[v5] |= v8;
      }

      v13.tv_sec = 2;
      v13.tv_usec = arc4random() % 0xF4240;
      v9 = select(v4 + 1, &v14, 0, 0, &v13);
      if (v9 > 0)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

      if (*__error())
      {
        v10 = *__error();
        if (v10 != 4)
        {
          if (!v10)
          {
            break;
          }

          if (v10 != -6722)
          {
            goto LABEL_29;
          }

LABEL_28:
          ntpClient_sendRequest(a1);
        }
      }

      else
      {
LABEL_29:
        usleep(0x186A0u);
      }
    }

    if (__darwin_check_fd_set_overflow(v1, &v14, 0) && (v14.fds_bits[v7] & v6) != 0)
    {
      ntpClient_receiveResponse();
    }
  }

  while (!__darwin_check_fd_set_overflow(v2, &v14, 0) || (v14.fds_bits[v5] & v8) == 0);
  if (gLogCategory_APReceiverNTPClient <= 30 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APReceiverScreenSessionGetClassID()
{
  if (APReceiverScreenSessionGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
  }

  return APReceiverScreenSessionGetClassID_classID;
}

uint64_t __APReceiverScreenSessionGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APReceiverScreenSessionGetClassID_classDesc, ClassID, 1, &APReceiverScreenSessionGetClassID_classID);
}

uint64_t APReceiverScreenSessionGetTypeID()
{
  if (APReceiverScreenSessionGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t APReceiverScreenSessionCreate(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  v24 = 1;
  if (a2)
  {
    if (a4)
    {
      if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (APReceiverScreenSessionGetClassID_once != -1)
      {
        dispatch_once(&APReceiverScreenSessionGetClassID_once, &__block_literal_global_994);
      }

      v7 = CMDerivedObjectCreate();
      if (v7)
      {
        v20 = v7;
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 228) = -1;
        *(DerivedStorage + 144) = CFRetain(a2);
        *(DerivedStorage + 200) = FigSimpleMutexCreate();
        *(DerivedStorage + 208) = FigSimpleMutexCreate();
        *(DerivedStorage + 240) = FigSimpleMutexCreate();
        v9 = FigDispatchQueueCreateWithPriority();
        *(DerivedStorage + 216) = v9;
        if (!v9)
        {
          APSLogErrorAt();
          v20 = 4294895176;
          goto LABEL_51;
        }

        *(DerivedStorage + 186) = 256;
        *(DerivedStorage + 192) = -1;
        if (!a3)
        {
          goto LABEL_22;
        }

        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        Value = CFDictionaryGetValue(a3, @"NetworkClock");
        *(DerivedStorage + 128) = Value;
        if (Value && (CFRetain(Value), (v11 = *(DerivedStorage + 128)) != 0) && (v12 = CFGetTypeID(v11), v12 != APSNetworkClockGetTypeID()))
        {
          v20 = 4294895175;
        }

        else
        {
          v13 = CFDictionaryGetValue(a3, @"StatsCollector");
          *(DerivedStorage + 136) = v13;
          if (!v13)
          {
            goto LABEL_21;
          }

          CFRetain(v13);
          v13 = *(DerivedStorage + 136);
          if (!v13)
          {
            goto LABEL_21;
          }

          v14 = CFGetTypeID(v13);
          if (APReceiverStatsCollectorGetTypeID_once != -1)
          {
            dispatch_once(&APReceiverStatsCollectorGetTypeID_once, &__block_literal_global_536);
          }

          if (v14 == APReceiverStatsCollectorGetTypeID_typeID)
          {
            v13 = *(DerivedStorage + 136);
LABEL_21:
            APReceiverStatsCollectorSetNetworkClock(v13, *(DerivedStorage + 128));
LABEL_22:
            if (!v24)
            {
LABEL_28:
              v16 = *(DerivedStorage + 136);
              v17 = *(DerivedStorage + 144);
              v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v18)
              {
                v18(v17, @"StatsCollector", v16);
              }

              if (introspector_getCollectionOfScreenSessions_once != -1)
              {
                dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
              }

              if (introspector_getCollectionOfScreenSessions_coll)
              {
                v19 = *introspector_getCollectionOfScreenSessions_coll;
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __APReceiverScreenSessionCreate_block_invoke;
                block[3] = &__block_descriptor_tmp_60;
                block[4] = introspector_getCollectionOfScreenSessions_coll;
                block[5] = cf;
                dispatch_sync(v19, block);
                if (introspector_getCollectionOfScreenSessions_once != -1)
                {
                  dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
                }
              }

              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 0x40000000;
              v26[2] = __aprscreen_captureAddIntrospectorCmd_block_invoke;
              v26[3] = &__block_descriptor_tmp_130;
              v26[4] = introspector_getCollectionOfScreenSessions_coll;
              if (aprscreen_captureAddIntrospectorCmd_once != -1)
              {
                dispatch_once(&aprscreen_captureAddIntrospectorCmd_once, v26);
              }

              APTTrafficMetricsCreate();
              if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v20 = 0;
              *a4 = cf;
              return v20;
            }

            LODWORD(v26[0]) = 0;
            v23 = 2;
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            v15 = ServerSocketOpen();
            if (!v15)
            {
              if (*(DerivedStorage + 186))
              {
                SocketSetP2P();
              }

              if (*(DerivedStorage + 187))
              {
                SocketSetQoS();
              }

              goto LABEL_28;
            }

            v20 = v15;
            goto LABEL_50;
          }

          v20 = 4294895175;
        }
      }
    }

    else
    {
      v20 = 4294895175;
    }
  }

  else
  {
    v20 = 4294895175;
  }

LABEL_50:
  APSLogErrorAt();
LABEL_51:
  if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t __aprscreen_captureAddIntrospectorCmd_block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return MEMORY[0x28213C3C0](@"recordScreenSessions");
  }

  return result;
}

void aprscreen_captureIntrospectorCmd(NSObject **a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  v8 = *(a4 + 8);
  if (!strcmp(v8, "start"))
  {
    if (a3 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a4 + 16);
    }

    v10 = 1;
  }

  else
  {
    if (strcmp(v8, "stop"))
    {
LABEL_4:
      FPrintF();
      return;
    }

    v9 = 0;
    v10 = 0;
  }

  v11 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __aprscreen_captureIntrospectorCmd_block_invoke;
  block[3] = &__block_descriptor_tmp_143;
  v13 = v10;
  block[4] = a1;
  block[5] = v9;
  block[6] = a2;
  dispatch_sync(v11, block);
}

uint64_t __aprscreen_captureIntrospectorCmd_block_invoke(uint64_t a1)
{
  if (CFSetGetCount(*(*(a1 + 32) + 8)) >= 1)
  {
    return CFSetApplyBlock();
  }

  return FPrintF();
}

void __aprscreen_captureIntrospectorCmd_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    cf = 0;
    v2 = aprscreen_captureStart(a2, *(a1 + 32), &cf);
    if (!v2)
    {
      FPrintF();
      CFRelease(cf);
    }
  }

  else
  {
    v2 = aprscreen_captureStop();
  }

  if (v2)
  {
    FPrintF();
  }
}

uint64_t aprscreen_captureStart(uint64_t a1, const char *a2, CFStringRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = (DerivedStorage + 168);
  if (*(DerivedStorage + 168))
  {
    if (gLogCategory_APReceiverScreenSession > 90)
    {
      Mutable = 0;
      v12 = 0;
      v13 = 4294895173;
    }

    else
    {
      if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      Mutable = 0;
      v12 = 0;
      v13 = 4294895173;
    }

    goto LABEL_36;
  }

  if (*(DerivedStorage + 344))
  {
    if (!*(DerivedStorage + 706))
    {
      v13 = 4294895172;
      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_33;
    }

    if (!*(DerivedStorage + 152))
    {
      if (gLogCategory_APReceiverScreenSession > 90)
      {
        Mutable = 0;
        v12 = 0;
        v13 = 4294895175;
      }

      else
      {
        if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        Mutable = 0;
        v12 = 0;
        v13 = 4294895175;
      }

      goto LABEL_36;
    }
  }

  v8 = *MEMORY[0x277CBECE8];
  FileWriter = APReceiverScreenSinkCreateFileWriter(*MEMORY[0x277CBECE8], (DerivedStorage + 168));
  if (FileWriter)
  {
    v13 = FileWriter;
    APSLogErrorAt();
LABEL_33:
    Mutable = 0;
    v12 = 0;
    goto LABEL_36;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (a2)
  {
    v11 = CFStringCreateWithCString(v8, a2, 0x8000100u);
  }

  else
  {
    TempDirectory = FVDUtilsGetTempDirectory();
    v15 = getpid();
    v11 = CFStringCreateWithFormat(v8, 0, @"%@aprcapture-%d-%d.mov", TempDirectory, v15, atomic_fetch_add_explicit(aprscreen_captureStart_count, 1u, memory_order_relaxed) + 1);
  }

  v16 = v11;
  CFDictionarySetValue(Mutable, @"FilePath", v11);
  v17 = *v7;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v18)
  {
    v13 = 4294954514;
    goto LABEL_23;
  }

  v19 = v18(v17, Mutable);
  if (v19)
  {
    v13 = v19;
LABEL_23:
    APSLogErrorAt();
    if (*v7)
    {
      CFRelease(*v7);
      v12 = 0;
      *v7 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  *(DerivedStorage + 176) = 0;
  v12 = *(DerivedStorage + 344) != 0;
  v13 = 0;
  if (a3)
  {
    *a3 = v16;
LABEL_36:
    FigSimpleMutexUnlock();
    goto LABEL_37;
  }

LABEL_29:
  FigSimpleMutexUnlock();
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    v20 = *(DerivedStorage + 152);
    if (v20)
    {
      v20(a1, @"ForceKeyFrameNeeded", 0, *(DerivedStorage + 160));
    }
  }

  return v13;
}

uint64_t aprscreen_captureStop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 168);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      v2(v1);
    }

    v3 = *(DerivedStorage + 168);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 168) = 0;
    }

    v4 = 0;
    *(DerivedStorage + 176) = 0;
  }

  else
  {
    v4 = 4294895173;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t __introspector_getCollectionOfScreenSessions_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfScreenSessions_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfScreenSessions_coll = dispatch_queue_create("CollectionOfScreenSessions", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = introspector_getCollectionOfScreenSessions_coll;
    *(introspector_getCollectionOfScreenSessions_coll + 8) = Mutable;
    *(v2 + 16) = "ScreenSessions";

    return MEMORY[0x28213C3C0](@"showScreenSessions");
  }

  return result;
}

uint64_t aprscreen_SetSecurityInfoAES()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[185] || DerivedStorage[184])
  {
    v1 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (DerivedStorage[704])
    {
      AES_CTR_Final();
      DerivedStorage[704] = 0;
    }

    v1 = AES_CTR_Init();
    DerivedStorage[704] = v1 == 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t aprscreen_SetSecurityInfoChaCha(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3 == 32)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v6 + 185) || *(v6 + 184))
    {
      v7 = 4294895173;
      if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      for (i = 0; i != 304; ++i)
      {
        *(v6 + 352 + i) = 0;
      }

      v7 = 0;
      v9 = a2[1];
      *(v6 + 616) = *a2;
      *(v6 + 632) = v9;
      *(v6 + 352) = 1;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v7;
}

uint64_t aprscreen_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 185) || *(DerivedStorage + 184))
  {
    v6 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v6 = 0;
    *(DerivedStorage + 152) = a2;
    *(DerivedStorage + 160) = a3;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t aprscreen_Shutdown(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (introspector_getCollectionOfScreenSessions_once != -1)
  {
    dispatch_once(&introspector_getCollectionOfScreenSessions_once, &__block_literal_global_115);
  }

  if (introspector_getCollectionOfScreenSessions_coll)
  {
    v3 = *introspector_getCollectionOfScreenSessions_coll;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __aprscreen_Shutdown_block_invoke;
    block[3] = &__block_descriptor_tmp_105;
    block[4] = introspector_getCollectionOfScreenSessions_coll;
    block[5] = a1;
    dispatch_sync(v3, block);
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 185))
    {
      if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = *(DerivedStorage + 228);
      if ((v4 & 0x80000000) == 0)
      {
        if (close(v4) && *__error())
        {
          __error();
        }

        *(DerivedStorage + 228) = -1;
      }

      v5 = CMBaseObjectGetDerivedStorage();
      if (*(v5 + 240))
      {
        FigSimpleMutexLock();
        *(v5 + 248) = 1;
        if (*(v5 + 232))
        {
          NetSocket_Cancel();
        }

        FigSimpleMutexUnlock();
      }

      if (*(DerivedStorage + 184))
      {
        dispatch_sync(*(DerivedStorage + 216), &__block_literal_global_109);
      }

      *(DerivedStorage + 185) = 1;
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t aprscreen_Start(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 185))
  {
    v5 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
LABEL_12:
      LogPrintF();
    }
  }

  else if (*(DerivedStorage + 184))
  {
    v5 = 4294895173;
    if (gLogCategory_APReceiverScreenSession <= 90 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v6 = *(DerivedStorage + 216);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __aprscreen_Start_block_invoke;
    block[3] = &__block_descriptor_tmp_78;
    block[4] = a1;
    block[5] = a2;
    dispatch_async(v6, block);
    v5 = 0;
    *(DerivedStorage + 184) = 1;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t aprscreen_ntpTimestamp()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v1 = *(DerivedStorage + 136);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(DerivedStorage + 128);
  if (!v2)
  {
    v1 = 0;
    goto LABEL_6;
  }

  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  v1(v2, &v6);
  v3 = v8;
  v1 = v7;
LABEL_7:
  *(&v5 + 1) = v3;
  *&v5 = v1;
  return v5 >> 32;
}

uint64_t aprscreen_decryptBuffer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    return 0;
  }

  v6 = DerivedStorage;
  result = 0;
  if (a2 && a3)
  {
    LODWORD(v8) = *a3;
    if (*(v6 + 352))
    {
      v9 = v8 >= 0x10;
      v8 = (v8 - 16);
      if (!v9)
      {
        return 0;
      }

      v10 = v6 + 648;
      chacha20_poly1305_init_64x64();
      chacha20_poly1305_add_aad();
      v11 = chacha20_poly1305_decrypt();
      if (chacha20_poly1305_verify() + v11 == v8)
      {
        v12 = 0;
        do
        {
          if (++*(v10 + v12))
          {
            v14 = 1;
          }

          else
          {
            v14 = v12 == 7;
          }

          ++v12;
        }

        while (!v14);
        goto LABEL_17;
      }

      APSLogErrorAt();
      result = 4294960534;
      v18 = -6762;
    }

    else
    {
      if (!*(v6 + 704) || (v15 = AES_CTR_Update(), (v18 = v15) == 0))
      {
LABEL_17:
        result = 0;
        *a3 = v8;
        return result;
      }

      v16 = v15;
      APSLogErrorAt();
      result = v16;
    }

    if (gLogCategory_APReceiverScreenSession <= 90)
    {
      if (gLogCategory_APReceiverScreenSession != -1 || (v17 = _LogCategory_Initialize(), result = v18, v17))
      {
        LogPrintF();
        return v18;
      }
    }
  }

  return result;
}

uint64_t aprscreen_SetProperty(uint64_t a1, uint64_t a2)
{
  v2 = 4294895174;
  if (a2)
  {
    v3 = gLogCategory_APReceiverScreenSession;
    if (gLogCategory_APReceiverScreenSession <= 30)
    {
      if (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v3 = gLogCategory_APReceiverScreenSession;
    }

    if (v3 <= 50 && (v3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v2;
}

uint64_t aprscreen_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a4)
  {
    v8 = DerivedStorage;
    if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (CFEqual(a2, @"ListenPort"))
    {
      v9 = CFNumberCreate(a3, kCFNumberSInt32Type, (v8 + 224));
      *a4 = v9;
      if (v9)
      {
        return 0;
      }

      else
      {
        APSLogErrorAt();
        return 4294895176;
      }
    }

    else
    {
      v10 = 4294895174;
      if (gLogCategory_APReceiverScreenSession <= 50 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895175;
  }

  return v10;
}

CFStringRef aprscreen_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 352);
  v4 = *(DerivedStorage + 704);
  ASPrintF();
  ASPrintF();
  v5 = CFGetAllocator(a1);
  v6 = "yes";
  if (*(DerivedStorage + 185))
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (*(DerivedStorage + 184))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*(DerivedStorage + 186))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (*(DerivedStorage + 188))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (v3)
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if (!v4)
  {
    v6 = "no";
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"<APReceiverScreenSession %p %s>{\n\tShut down:          %s\n\tStarted:            %s\n\tAllow P2P:          %s\n\tIgnore timestamps:  %s\n\tPeer address:       %s\n\tConfigs processed:  %u\n\tFrames processed:   %u\n\tChaCha used:        %s\n\tAES used:           %s\n\tNetworkClock:      %p\n\tSink:               %@\n}", a1, 0, v7, v8, v9, v10, 0, *(DerivedStorage + 344), *(DerivedStorage + 336), v11, v6, *(DerivedStorage + 128), *(DerivedStorage + 144));
  free(0);
  free(0);
  return v12;
}

uint64_t aprscreen_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSession <= 30 && (gLogCategory_APReceiverScreenSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v3)
  {
    v3(a1);
  }

  v4 = *(DerivedStorage + 228);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(DerivedStorage + 228) = -1;
  }

  if (*(DerivedStorage + 232))
  {
    NetSocket_Delete();
    *(DerivedStorage + 232) = 0;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  v6 = *(DerivedStorage + 168);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 168) = 0;
  }

  v7 = *(DerivedStorage + 136);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 136) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 712);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 712) = 0;
  }

  if (*(DerivedStorage + 352))
  {
    v10 = 0;
    *(DerivedStorage + 352) = 0;
    do
    {
      *(DerivedStorage + 352 + v10++) = 0;
    }

    while (v10 != 304);
  }

  if (*(DerivedStorage + 704))
  {
    *(DerivedStorage + 704) = 0;
    AES_CTR_Final();
  }

  v11 = *(DerivedStorage + 216);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 216) = 0;
  }

  if (*(DerivedStorage + 240))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 240) = 0;
  }

  if (*(DerivedStorage + 208))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 208) = 0;
  }

  result = *(DerivedStorage + 200);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  return result;
}

uint64_t mcProcessor_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    a3 = 4294895345;
    goto LABEL_51;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"rp_startedVideo"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 384) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
LABEL_51:
    APSLogErrorAt();
    return a3;
  }

  if (CFEqual(a2, @"rp_clientDeviceID"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 144) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_videoSessionID"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 376) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_transportDelegate"))
  {
    if (!a3)
    {
      *(v6 + 320) = 0u;
      *(v6 + 336) = 0u;
      *(v6 + 345) = 0u;
      return a3;
    }

    v8 = CFGetTypeID(a3);
    if (v8 == CFDataGetTypeID())
    {
      if (CFDataGetLength(a3) == 40)
      {
        BytePtr = CFDataGetBytePtr(a3);
        a3 = 0;
        v10 = *(BytePtr + 4);
        v11 = *(BytePtr + 1);
        *(v6 + 320) = *BytePtr;
        *(v6 + 336) = v11;
        *(v6 + 352) = v10;
        *(v6 + 360) = 1;
        return a3;
      }

      a3 = 4294895345;
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_beingReversed"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 385) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_oldClient"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 313) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_sessionUUID"))
  {
    if (!a3)
    {
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      return a3;
    }

    v12 = CFGetTypeID(a3);
    if (v12 == CFDataGetTypeID())
    {
      if (CFDataGetLength(a3) == 16)
      {
        v13 = CFDataGetBytePtr(a3);
        a3 = 0;
        *(v6 + 104) = *v13;
        return a3;
      }

      a3 = 4294895345;
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_sessionToken"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 96) = CFGetInt64();
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_purpose"))
  {
    if (a3)
    {
      a3 = CFStringCopyUTF8CString();
      if (!a3)
      {
        *(v6 + 297) = MEMORY[0];
        free(0);
        return a3;
      }
    }

    else
    {
      a3 = 4294895345;
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_encrypted"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 260) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  if (CFEqual(a2, @"rp_authenticated"))
  {
    if (a3)
    {
      a3 = 0;
      *(v6 + 176) = CFGetInt64() != 0;
      return a3;
    }

    a3 = 4294895345;
    goto LABEL_51;
  }

  a3 = 4294895342;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return a3;
}

void *mcProcessor_CopyProperty(uint64_t a1, const void *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    APSLogErrorAt();
    result = 0;
    v10 = -71951;
    goto LABEL_17;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"rp_startedVideo"))
  {
    v7 = MEMORY[0x277CBED28];
    v8 = *(v6 + 384);
LABEL_8:
    if (!v8)
    {
      v7 = MEMORY[0x277CBED10];
    }

    result = CFRetain(*v7);
    goto LABEL_16;
  }

  if (!CFEqual(a2, @"rp_clientDeviceID"))
  {
    if (CFEqual(a2, @"rp_videoSessionID"))
    {
      result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v6 + 376));
      if (!result)
      {
        v10 = -71950;
        goto LABEL_48;
      }
    }

    else
    {
      if (CFEqual(a2, @"rp_beingReversed"))
      {
        v7 = MEMORY[0x277CBED28];
        v8 = *(v6 + 385);
        goto LABEL_8;
      }

      if (CFEqual(a2, @"rp_oldClient"))
      {
        v7 = MEMORY[0x277CBED28];
        v8 = *(v6 + 313);
        goto LABEL_8;
      }

      if (CFEqual(a2, @"rp_sessionUUID"))
      {
        result = CFDataCreate(*MEMORY[0x277CBECE8], (v6 + 104), 16);
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else if (CFEqual(a2, @"rp_sessionToken"))
      {
        result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (v6 + 96));
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else if (CFEqual(a2, @"rp_purpose"))
      {
        result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v6 + 297), 0x8000100u);
        if (!result)
        {
          v10 = -71950;
          goto LABEL_48;
        }
      }

      else
      {
        if (CFEqual(a2, @"rp_encrypted"))
        {
          v7 = MEMORY[0x277CBED28];
          v8 = *(v6 + 260);
          goto LABEL_8;
        }

        if (CFEqual(a2, @"rp_authenticated"))
        {
          v7 = MEMORY[0x277CBED28];
          v8 = *(v6 + 176);
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"rp_receiverUI"))
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v10 = -71954;
          goto LABEL_48;
        }

        v11 = *(v6 + 392);
        if (!v11 || (result = CFRetain(v11)) == 0)
        {
          APSLogErrorAt();
          result = 0;
          v10 = -71952;
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, (v6 + 144));
  if (result)
  {
    goto LABEL_16;
  }

  v10 = -71950;
LABEL_48:
  APSLogErrorAt();
  result = 0;
LABEL_17:
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t mcProcessor_GetTransportDelegate(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 360))
  {
    v4 = DerivedStorage + 320;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 0;
}

uint64_t mcProcessor_SetTransportDelegate(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *a2;
    v5 = a2[1];
    *(DerivedStorage + 352) = *(a2 + 4);
    *(DerivedStorage + 320) = v4;
    *(DerivedStorage + 336) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *(DerivedStorage + 360) = v6;
  return 0;
}

uint64_t mcProcessor_HandleRequest()
{
  v0 = MEMORY[0x28223BE20]();
  v223 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v253 = *MEMORY[0x277D85DE8];
  v7 = 4294895362;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = mach_absolute_time();
  v9 = 4294895361;
  if (v5 <= 1886283374)
  {
    if (v5 <= 1735616869)
    {
      if (v5 <= 1735422065)
      {
        if (v5 != 1633907822)
        {
          if (v5 != 1735222134)
          {
            return v9;
          }

          LODWORD(valuePtr) = 0;
          v251 = 0u;
          v252 = 0u;
          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          v245 = 0u;
          v246 = 0u;
          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v239 = 0u;
          v240 = 0u;
          v238 = 0u;
          *theDict = 0u;
          number.value = 0;
          v10 = *(CMBaseObjectGetDerivedStorage() + 392);
          if (v10)
          {
            v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
            if (v11 && !v11(v10, @"volume", 0, &number))
            {
              CFNumberGetValue(number.value, kCFNumberFloatType, &valuePtr);
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 20 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v170 = snprintf(theDict, 0x100uLL, "volume: %f\n", *&valuePtr);
              if (!APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v170, v223))
              {
                v9 = 0;
LABEL_360:
                value = number.value;
                if (!number.value)
                {
                  return v9;
                }

LABEL_631:
                CFRelease(value);
                return v9;
              }
            }

            APSLogErrorAt();
          }

          else
          {
            APSLogErrorAt();
          }

          v9 = 4294895362;
          goto LABEL_360;
        }

        v54 = CMBaseObjectGetDerivedStorage();
        LODWORD(v227) = 0;
        number.value = 0;
        valuePtr = 0;
        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        v56 = TypedValue;
        if (!TypedValue)
        {
          goto LABEL_160;
        }

        CFDataGetBytePtr(TypedValue);
        CFDataGetLength(v56);
        CFDictionaryGetTypeID();
        v57 = CFCreateWithPlistBytes();
        v56 = v57;
        if (!v57)
        {
          APSLogErrorAt();
          v107 = 0;
          v108 = 0;
          v9 = 4294895354;
          goto LABEL_622;
        }

        v58 = CFDictionaryGetValue(v57, @"type");
        v59 = CFDictionaryGetValue(v56, @"params");
        if (!v58)
        {
          if (!*(v54 + 408))
          {
            goto LABEL_160;
          }

          goto LABEL_546;
        }

        if (!CFEqual(v58, @"playlistInsert") || (CFDictionaryGetTypeID(), !CFDictionaryGetTypedValue()) || (CFDictionaryGetTypeID(), (v60 = CFDictionaryGetTypedValue()) == 0))
        {
LABEL_545:
          if (!*(v54 + 408))
          {
            v209 = CFGetTypeID(v58);
            if (v209 == CFStringGetTypeID())
            {
              if (CFEqual(v58, @"requestForStreamingKey"))
              {
                cf1a = @"requestForStreamingKey";
              }

              else
              {
                v211 = CFEqual(v58, @"unhandledURLResponse");
                v212 = v58;
                if (v211)
                {
                  v212 = @"failedURLResponse";
                }

                cf1a = v212;
              }

              if (!v59 || (v213 = CFGetTypeID(v59), v213 == CFDictionaryGetTypeID()))
              {
                v214 = *(v54 + 392);
                if (!v214)
                {
                  APSLogErrorAt();
                  v107 = 0;
                  v108 = 0;
                  goto LABEL_720;
                }

                v215 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (!v215)
                {
                  v198 = -12782;
                  goto LABEL_590;
                }

                inserted = v215(v214, cf1a, v59, &number);
LABEL_588:
                v198 = inserted;
LABEL_590:
                v108 = 0;
                goto LABEL_607;
              }
            }

LABEL_160:
            APSLogErrorAt();
            v107 = 0;
            v108 = 0;
            v9 = 4294895366;
            goto LABEL_622;
          }

LABEL_546:
          if (FigCFEqual())
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v108 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"kind", @"request");
              CFDictionarySetValue(v108, @"type", @"streamingKey");
              FigCFDictionarySetValue();
              if (v59)
              {
                v194 = CFGetTypeID(v59);
                if (v194 == CFDictionaryGetTypeID())
                {
                  FigCFDictionarySetValueFromKeyInDict();
                }
              }

              v195 = CMBaseObjectGetDerivedStorage();
              v196 = v195;
              theDict[0] = 0;
              if (*(v195 + 384))
              {
                ++*(v195 + 424);
                UInt64 = FigCFNumberCreateUInt64();
                if (UInt64)
                {
                  CFDictionarySetValue(v108, @"messageID", UInt64);
                  v198 = mcProcessor_createAndWrapDataDictionaryForV2(v108, 0, theDict);
                  if (v198)
                  {
                    APSLogErrorAt();
                    v201 = theDict[0];
                  }

                  else
                  {
                    v199 = FigSemaphoreCreate();
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v196 + 416), UInt64, v199);
                    FigSimpleMutexUnlock();
                    v200 = *(v196 + 392);
                    v201 = theDict[0];
                    v202 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                    if (v202)
                    {
                      v198 = v202(v200, v201, 0);
                      if (!v198)
                      {
                        v198 = FigSemaphoreWaitRelative();
                        if (v198)
                        {
                          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 90 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          FigSimpleMutexLock();
                          CFDictionaryRemoveValue(*(v196 + 416), UInt64);
                          FigSimpleMutexUnlock();
                        }

                        FigSimpleMutexLock();
                        v219 = CFDictionaryGetValue(*(v196 + 440), UInt64);
                        if (v219)
                        {
                          v220 = CFRetain(v219);
                        }

                        else
                        {
                          v220 = 0;
                        }

                        CFDictionaryRemoveValue(*(v196 + 440), UInt64);
                        FigSimpleMutexUnlock();
                        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        number.value = v220;
                        goto LABEL_605;
                      }
                    }

                    else
                    {
                      v198 = -12782;
                    }

                    APSLogErrorAt();
                  }

LABEL_605:
                  FigSemaphoreDestroy();
                  CFRelease(UInt64);
                  if (v201)
                  {
                    CFRelease(v201);
                  }

                  goto LABEL_607;
                }

                v198 = -6728;
              }

              else
              {
                v198 = -6709;
              }

              APSLogErrorAt();
              FigSemaphoreDestroy();
LABEL_607:
              LODWORD(v227) = v198;
              goto LABEL_608;
            }

            goto LABEL_739;
          }

          if (FigCFEqual())
          {
            v203 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v108 = v203;
            if (v203)
            {
              CFDictionarySetValue(v203, @"kind", @"request");
              CFDictionarySetValue(v108, @"type", @"unhandledURL");
              FigCFDictionarySetValue();
              if (v59)
              {
                v204 = CFGetTypeID(v59);
                if (v204 == CFDictionaryGetTypeID())
                {
                  FigCFDictionarySetValueFromKeyInDict();
                }
              }

              LODWORD(v227) = mcProcessor_createAndWrapDataDictionaryForV2(v108, 0, &valuePtr);
              if (!v227)
              {
                v205 = *(v54 + 392);
                v206 = valuePtr;
                v207 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (!v207)
                {
                  v198 = -12782;
                  goto LABEL_607;
                }

                v208 = v207(v205, v206, 0);
LABEL_579:
                v198 = v208;
                goto LABEL_607;
              }

              goto LABEL_741;
            }

            goto LABEL_739;
          }

          if (FigCFEqual())
          {
            CFDictionaryGetTypeID();
            CFDictionaryGetTypedValue();
            v108 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v108)
            {
              CFDictionaryGetTypeID();
              v210 = CFDictionaryGetTypedValue();
              if (!v210)
              {
                APSLogErrorAt();
LABEL_668:
                v107 = 0;
LABEL_720:
                v9 = 4294895362;
                goto LABEL_622;
              }

              CFDictionarySetValue(v108, @"item", v210);
              CFDictionarySetValue(v108, @"type", @"removePlayQueueItem");
              FigCFDictionarySetValueFromKeyInDict();
              LODWORD(v227) = mcProcessor_createAndWrapDataDictionaryForV2(v108, 0, &valuePtr);
              if (!v227)
              {
                v208 = APReceiverUIControllerControlVideoPlayback(*(v54 + 392), valuePtr);
                goto LABEL_579;
              }

LABEL_741:
              APSLogErrorAt();
              v107 = 0;
              goto LABEL_742;
            }

LABEL_739:
            APSLogErrorAt();
            v107 = 0;
            v108 = 0;
LABEL_742:
            v9 = 4294895350;
LABEL_622:
            if (number.value)
            {
              CFRelease(number.value);
            }

            if (v107)
            {
              CFRelease(v107);
            }

            if (v56)
            {
              CFRelease(v56);
            }

            if (v108)
            {
              CFRelease(v108);
            }

            value = valuePtr;
            if (!valuePtr)
            {
              return v9;
            }

            goto LABEL_631;
          }

          if (!FigCFEqual())
          {
            v108 = 0;
            v198 = v227;
LABEL_608:
            if (v198 && gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
            {
              if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize())
              {
                LogPrintF();
              }

              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }
            }

            v107 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v107)
            {
              CFDictionarySetNumber();
              if (number.value)
              {
                CFDictionarySetValue(v107, @"params", number.value);
              }

              if (!APReceiverRequestProcessorPreparePlistResponse(v107, v223))
              {
                v9 = 0;
                goto LABEL_622;
              }

              APSLogErrorAt();
              goto LABEL_720;
            }

            APSLogErrorAt();
            goto LABEL_668;
          }

          CFDictionaryGetTypeID();
          if (CFDictionaryGetTypedValue())
          {
            CFDictionaryGetTypeID();
            v217 = CFDictionaryGetTypedValue();
            if (v217)
            {
              CFDictionaryGetTypeID();
              v218 = CFDictionaryGetTypedValue();
              inserted = mcProcessor_insertPlayQueueItemV2(v6, v217, v218, 0);
              goto LABEL_588;
            }
          }

          goto LABEL_160;
        }

        v61 = v60;
        Int64 = CFDictionaryGetInt64();
        if (Int64 > 1)
        {
          if (Int64 == 2)
          {
            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              CFDictionaryGetValue(v61, @"uuid");
              if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
              {
                _LogCategory_Initialize();
              }

              CFDictionaryGetValue(v61, @"path");
              if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
              {
                _LogCategory_Initialize();
              }

              LogPrintF();
            }

            ++*(v54 + 248);
          }

          else
          {
            if (Int64 != 3)
            {
LABEL_450:
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              goto LABEL_537;
            }

            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              CFDictionaryGetValue(v61, @"uuid");
              if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
              {
                _LogCategory_Initialize();
              }

              CFDictionaryGetValue(v61, @"Content-Location");
              if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
              {
                _LogCategory_Initialize();
              }

              LogPrintF();
            }

            ++*(v54 + 256);
          }
        }

        else
        {
          if (Int64)
          {
            if (Int64 == 1)
            {
              if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                CFDictionaryGetValue(v61, @"uuid");
                if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
                {
                  _LogCategory_Initialize();
                }

                CFDictionaryGetValue(v61, @"Content-Location");
                if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
                {
                  _LogCategory_Initialize();
                }

                LogPrintF();
              }

              ++*(v54 + 252);
              goto LABEL_537;
            }

            goto LABEL_450;
          }

          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            CFDictionaryGetValue(v61, @"uuid");
            if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
            {
              _LogCategory_Initialize();
            }

            CFDictionaryGetValue(v61, @"path");
            if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
            {
              _LogCategory_Initialize();
            }

            LogPrintF();
          }

          ++*(v54 + 244);
        }

LABEL_537:
        v192 = *(v54 + 24);
        if (v192 == 4 || v192 == 128 || v192 == 64)
        {
          CFDictionarySetValue(v61, @"allowP2P", *MEMORY[0x277CBED28]);
        }

        LODWORD(v227) = mcProcessor_addTLSInfo();
        if (v227)
        {
          APSLogErrorAt();
          v107 = 0;
          v108 = 0;
          v9 = 4294895353;
          goto LABEL_622;
        }

        if (*(v54 + 120))
        {
          CFDictionaryGetInt64();
        }

        mcProcessor_fixIPAddressURL();
        LODWORD(v227) = APReceiverFairPlayHelperProcessFPInfo(*(v54 + 400), v61, 0);
        if (v227)
        {
          APSLogErrorAt();
          v107 = 0;
          v108 = 0;
          v9 = 4294895352;
          goto LABEL_622;
        }

        goto LABEL_545;
      }

      if (v5 != 1735422066)
      {
        if (v5 != 1735615346)
        {
          return v9;
        }

        v243 = 0u;
        v244 = 0u;
        v241 = 0u;
        v242 = 0u;
        v239 = 0u;
        v240 = 0u;
        v238 = 0u;
        *theDict = 0u;
        number.value = 0;
        v18 = *(CMBaseObjectGetDerivedStorage() + 392);
        if (v18)
        {
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v19 && !v19(v18, @"playbackInfo", 0, &number))
          {
            CFDictionaryGetDouble();
            v21 = v20;
            CFDictionaryGetDouble();
            v22 = v21;
            v24 = v23;
            if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v172 = snprintf(theDict, 0x80uLL, "duration: %f\nposition: %f\n", v24, v22);
            if (!APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v172, v223))
            {
              v9 = 0;
LABEL_365:
              value = number.value;
              if (!number.value)
              {
                return v9;
              }

              goto LABEL_631;
            }
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
        }

        v9 = 4294895362;
        goto LABEL_365;
      }

      v68 = CMBaseObjectGetDerivedStorage();
      LODWORD(v227) = 0;
      theDict[0] = 0;
      number.value = 0;
      valuePtr = 0;
      CFStringGetTypeID();
      v69 = CFDictionaryGetTypedValue();
      if (!v69)
      {
        APSLogErrorAt();
        v9 = 4294895362;
        goto LABEL_438;
      }

      CFDataGetTypeID();
      v70 = CFDictionaryGetTypedValue();
      v71 = v70;
      if (v70)
      {
        if (CFDataGetLength(v70) >= 1)
        {
          v72 = CFPropertyListCreateWithData(0, v71, 0, 0, 0);
          v71 = v72;
          if (!v72 || (v137 = CFGetTypeID(v72), v137 != CFDictionaryGetTypeID()))
          {
            APSLogErrorAt();
            v73 = 0;
            v7 = 4294895354;
LABEL_433:
            if (v71)
            {
              CFRelease(v71);
            }

            if (v73)
            {
              CFRelease(v73);
            }

            v9 = v7;
LABEL_438:
            if (valuePtr)
            {
              CFRelease(valuePtr);
            }

            if (number.value)
            {
              CFRelease(number.value);
            }

            value = theDict[0];
            if (!theDict[0])
            {
              return v9;
            }

            goto LABEL_631;
          }

          v117 = CFDictionaryGetValue(v71, @"qualifier");
LABEL_247:
          v138 = *(v68 + 392);
          if (!v138)
          {
            APSLogErrorAt();
            goto LABEL_713;
          }

          if (*(v68 + 408))
          {
            v139 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v73 = v139;
            if (v139)
            {
              CFDictionarySetValue(v139, @"kind", @"request");
              CFDictionarySetValue(v73, @"type", @"property");
              CFDictionarySetValue(v73, @"property", v69);
              if (v117 && (v140 = CFGetTypeID(v117), v140 == CFDictionaryGetTypeID()))
              {
                mcProcessor_qualifierToRendererParameters(v117, v73);
                FigCFDictionarySetValueFromKeyInDict();
                FigCFDictionarySetValueFromKeyInDict();
              }

              else
              {
                v141 = FigCFEqual();
                v142 = v117 == 0;
                if (!v141)
                {
                  v142 = 1;
                }

                if (!v142)
                {
                  v143 = CFGetTypeID(v117);
                  if (v143 == CFNumberGetTypeID())
                  {
                    FigCFDictionarySetValue();
                  }
                }
              }

              LODWORD(v227) = mcProcessor_createAndWrapDataDictionaryForV2(v73, 1, &valuePtr);
              if (!v227)
              {
                v144 = *(v68 + 392);
                v145 = valuePtr;
                v146 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (v146)
                {
                  v147 = v146(v144, v145, &number);
                  LODWORD(v227) = v147;
                  if (v147 == -6727 || !v147)
                  {
LABEL_368:
                    if (v147)
                    {
                      goto LABEL_688;
                    }

                    v174 = number.value;
                    goto LABEL_431;
                  }
                }

                else
                {
                  LODWORD(v227) = -12782;
                }

                if (gLogCategory_APReceiverRequestProcessorMediaControl > 50)
                {
                  goto LABEL_688;
                }

                if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (v173 = _LogCategory_Initialize(), v147 = v227, v173))
                {
                  LogPrintF();
                  v147 = v227;
                }

                goto LABEL_368;
              }

              APSLogErrorAt();
            }

            else
            {
              APSLogErrorAt();
              v73 = 0;
            }

            v7 = 4294895350;
            goto LABEL_433;
          }

          v148 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v148)
          {
            v149 = v148(v138, v69, v71, theDict);
            LODWORD(v227) = v149;
            if (v149 == -6727 || !v149)
            {
LABEL_427:
              v174 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v174)
              {
                CFDictionarySetNumber();
                if (theDict[0])
                {
                  CFDictionarySetValue(v174, @"value", theDict[0]);
                }

                v73 = 0;
                number.value = v174;
LABEL_431:
                if (!APReceiverRequestProcessorPreparePlistResponse(v174, v223))
                {
                  v7 = 0;
                  goto LABEL_433;
                }

LABEL_688:
                APSLogErrorAt();
                goto LABEL_433;
              }

              APSLogErrorAt();
LABEL_713:
              v73 = 0;
              goto LABEL_433;
            }
          }

          else
          {
            LODWORD(v227) = -12782;
          }

          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_427;
        }

        v71 = 0;
      }

      v117 = 0;
      goto LABEL_247;
    }

    if (v5 <= 1885435251)
    {
      if (v5 != 1735616870)
      {
        v12 = 1735684980;
LABEL_26:
        if (v5 != v12)
        {
          return v9;
        }

LABEL_274:
        *v223 = 0;
        return v9;
      }

      v63 = CMBaseObjectGetDerivedStorage();
      LODWORD(v226) = 0;
      v64 = CFDictionaryCopyCString();
      v65 = v64;
      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = "00000000-0000-0000-0000-000000000000";
      }

      strlen(v66);
      v67 = StringToUUID();
      LODWORD(v226) = v67;
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        v67 = v226;
      }

      if (v67 && gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v163 = *(*(v63 + 128) + 160);
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v238 = 0u;
      *theDict = 0u;
      v164 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v164)
      {
        CFObjectGetPropertyInt64Sync();
        FigCFDictionarySetInt64();
        LODWORD(v227) = *(v163 + 96);
        WORD2(v227) = *(v163 + 100);
        HardwareAddressToCString();
        CFDictionarySetCString();
        valuePtr = 0;
        p_valuePtr = &valuePtr;
        v235 = 0x2020000000;
        v236 = 0;
        v165 = *(v163 + 16);
        number.value = MEMORY[0x277D85DD0];
        *&number.timescale = 3221225472;
        number.epoch = __APReceiverSystemInfoCopyFeatures_block_invoke;
        v230 = &unk_278C60738;
        v231 = &valuePtr;
        v232 = v163;
        dispatch_sync(v165, &number);
        v166 = p_valuePtr[3];
        _Block_object_dispose(&valuePtr, 8);
        if (v166 && APSFeaturesGetLegacyFlags())
        {
          CFDictionarySetInt64();
        }

        LOBYTE(theDict[0]) = 0;
        GetDeviceModelString();
        CFDictionarySetCString();
        if (IsAppleInternalBuild())
        {
          LOBYTE(theDict[0]) = 0;
          GetDeviceInternalModelString();
          CFDictionarySetCString();
        }

        LOBYTE(theDict[0]) = 0;
        GetSystemBuildVersionString();
        CFDictionarySetCString();
        LOBYTE(theDict[0]) = 0;
        HardwareAddressToCString();
        CFDictionarySetCString();
        CFDictionarySetValue(v164, @"protovers", @"1.0");
        APSVersionUtilsGetShortVersionLength();
        CFDictionarySetCString();
        if (IsAppleInternalBuild())
        {
          LOBYTE(theDict[0]) = 0;
          GetDeviceUniqueID();
          CFDictionarySetCString();
        }

        if (v166)
        {
          CFRelease(v166);
        }

        LODWORD(v226) = 0;
        v167 = CFDictionaryCopyCString();
        v168 = v167;
        if (v167)
        {
          strlen(v167);
        }

        LODWORD(theDict[0]) = 0;
        SNScanF();
        LODWORD(theDict[0]) = wmhYOjgJkR();
        CFDictionarySetInt64();
        if (!APReceiverRequestProcessorPrepareXMLPlistResponse(v164, v223))
        {
          v9 = 0;
          if (!v65)
          {
            goto LABEL_336;
          }

          goto LABEL_335;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        LODWORD(v226) = -6728;
        APSLogErrorAt();
        v168 = 0;
      }

      v9 = 4294895362;
      if (!v65)
      {
LABEL_336:
        free(v168);
        if (v164)
        {
          CFRelease(v164);
        }

        return v9;
      }

LABEL_335:
      free(v65);
      goto LABEL_336;
    }

    if (v5 != 1885435252)
    {
      if (v5 != 1886151033)
      {
        return v9;
      }

      cf1 = CMBaseObjectGetDerivedStorage();
      started = 0;
      number.value = 0;
      *&number.timescale = 0;
      v226 = 0;
      v227 = 0;
      v239 = 0u;
      v240 = 0u;
      v238 = 0u;
      *theDict = 0u;
      cf = 0;
      Current = CFAbsoluteTimeGetCurrent();
      gettimeofday(&number, 0);
      v26 = CFDictionaryCopyCString();
      v27 = v26;
      if (v26)
      {
        strlen(v26);
      }

      if (strnicmpx())
      {
        v224 = 0;
        valuePtr = 0;
        v101 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v101)
        {
          APSLogErrorAt();
          v103 = 0;
LABEL_723:
          v132 = 0;
          v9 = v7;
          goto LABEL_351;
        }

        CFStringGetTypeID();
        v102 = CFDictionaryGetTypedValue();
        CFDictionarySetValue(v101, @"Content-Location", v102);
        v103 = CFDictionaryCopyCString();
        if (v103)
        {
          v104 = strlen(v103);
          if (v104 >= 0x40)
          {
            APSLogErrorAt();
LABEL_722:
            v7 = 4294895366;
            goto LABEL_723;
          }
        }

        else
        {
          v104 = 0;
        }

        __memcpy_chk();
        *(theDict + v104) = 0;
        if (sscanf(theDict, "%f", &v224) != 1)
        {
          goto LABEL_721;
        }

        started = CFDictionarySetNumber();
        if (started)
        {
LABEL_684:
          APSLogErrorAt();
          goto LABEL_723;
        }

        free(v103);
        v121 = CFDictionaryCopyCString();
        v103 = v121;
        if (v121)
        {
          strlen(v121);
        }

        if (!started)
        {
          started = Base64DecodeCopy();
          if (started)
          {
            goto LABEL_721;
          }

          CFDictionarySetData();
        }

        started = 0;
      }

      else
      {
        CFDataGetTypeID();
        v105 = CFDictionaryGetTypedValue();
        v106 = v105;
        if (!v105)
        {
          APSLogErrorAt();
          v103 = 0;
          v101 = 0;
          v132 = 0;
          goto LABEL_350;
        }

        CFDataGetBytePtr(v105);
        CFDataGetLength(v106);
        CFDictionaryGetTypeID();
        v101 = CFCreateWithPlistBytes();
        if (!v101)
        {
          APSLogErrorAt();
          v103 = 0;
          v101 = 0;
          goto LABEL_710;
        }

        v103 = 0;
      }

      v122 = CFDictionaryGetValue(v101, @"Start-Estimated-Date");
      v123 = v122;
      if (!v122)
      {
        goto LABEL_213;
      }

      v124 = CFGetTypeID(v122);
      if (v124 == CFDateGetTypeID())
      {
        free(v27);
        v125 = CFDictionaryCopyCString();
        v27 = v125;
        if (v125)
        {
          strlen(v125);
          valuePtr = 0;
          p_valuePtr = 0;
          v126 = CFGetTypeID(v123);
          if (v126 == CFDateGetTypeID())
          {
            started = ParseFractionalDateString();
            if (!started)
            {
              v127 = valuePtr;
              v128 = p_valuePtr;
              v129 = number.value;
              timescale = number.timescale;
              v131 = MEMORY[0x23EF199B0](v123);
              v132 = CFDateCreate(0, v131 + (1000000 * (v129 - v127) - v128 + timescale) / 1000000.0);
              if (v132)
              {
                CFDictionarySetValue(v101, @"Start-Estimated-Date", v132);
LABEL_214:
                v133 = CFDictionaryGetValue(v101, @"Start-Position");
                if (!v133)
                {
                  v133 = CFDictionaryGetValue(v101, @"Start-Date");
                  if (!v133)
                  {
                    v133 = CFDictionaryGetValue(v101, @"Start-Estimated-Date");
                  }
                }

                if (gMediaControlVideoDisabled)
                {
                  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  goto LABEL_350;
                }

                v134 = cf1[49];
                v135 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                if (v135)
                {
                  started = v135(v134, 0, 0);
                  if (!started)
                  {
                    v136 = *(cf1 + 6);
                    if (v136 == 4 || v136 == 128 || v136 == 64)
                    {
                      CFDictionarySetValue(v101, @"allowP2P", *MEMORY[0x277CBED28]);
                    }

                    if (cf1[15])
                    {
                      CFDictionaryGetInt64();
                    }

                    mcProcessor_fixIPAddressURL();
                    v185 = CFDictionaryGetValue(v101, @"Content-Location");
                    if (v185)
                    {
                      v186 = CFGetTypeID(v185);
                      if (v186 == CFStringGetTypeID())
                      {
                        if (CFDictionaryGetValue(v101, @"cookies") && !*(cf1 + 176))
                        {
                          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          CFDictionaryRemoveValue(v101, @"cookies");
                        }

                        if (CFDictionaryGetValue(v101, @"purchaseBundle") && !*(cf1 + 176))
                        {
                          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                          {
                            LogPrintF();
                          }

                          CFDictionaryRemoveValue(v101, @"purchaseBundle");
                        }

                        if (IsAppleInternalBuild() && CFDictionaryGetInt64())
                        {
                          APReceiverSystemInfoClearVideoCache();
                        }

                        started = mcProcessor_addTLSInfo();
                        if (started)
                        {
                          APSLogErrorAt();
                          v9 = 4294895353;
                          goto LABEL_351;
                        }

                        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
                        {
                          CFDictionaryGetValue(v101, @"uuid");
                          v190 = gLogCategory_APReceiverRequestProcessorMediaControl;
                          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 10)
                          {
                            if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (_LogCategory_Initialize(), v190 = gLogCategory_APReceiverRequestProcessorMediaControl, gLogCategory_APReceiverRequestProcessorMediaControl <= 10))
                            {
                              if (v190 == -1)
                              {
                                _LogCategory_Initialize();
                              }
                            }
                          }

                          LogPrintF();
                        }

                        CFDictionarySetInt64();
                        if (cf1[49])
                        {
                          if (*(cf1 + 408))
                          {
                            started = mcProcessor_startVideoPlaybackV2(v6);
                            if (!started)
                            {
                              started = mcProcessor_insertPlayQueueItemV2(v6, v101, 0, v133);
                              if (!started)
                              {
                                goto LABEL_489;
                              }
                            }
                          }

                          else
                          {
                            v226 = "?";
                            started = APReceiverFairPlayHelperProcessFPInfo(cf1[50], v101, &v226);
                            if (started)
                            {
                              APSLogErrorAt();
                              v9 = 4294895352;
                              goto LABEL_351;
                            }

                            v191 = APReceiverUIControllerStartVideoPlaybackV1(cf1[49], cf1[16], v101, &cf);
                            started = v191;
                            v9 = 4294895359;
                            if (v191 <= 452)
                            {
                              if (v191 == -6721)
                              {
                                goto LABEL_351;
                              }

                              if (!v191)
                              {
                                if (!cf)
                                {
                                  APSLogErrorAt();
                                  v9 = 4294960534;
                                  goto LABEL_351;
                                }

                                *(cf1 + 94) = CFDictionaryGetInt64();
LABEL_489:
                                mcProcessor_addTrafficRegistration();
                                if (!*(cf1 + 384))
                                {
                                  mcProcessor_logVideoStarted(Current, v6, v101);
                                }

                                _mcProcessor_StartKeepAliveTimer(v6);
                                *(cf1 + 384) = 1;
                                AirPlayReceiverServerHoldPowerAssertion(cf1[16]);
                                v9 = 0;
                                if (v223)
                                {
                                  *v223 = 0;
                                }

                                goto LABEL_351;
                              }
                            }

                            else if (v191 == 453 || v191 == 200453)
                            {
                              goto LABEL_351;
                            }
                          }
                        }

                        goto LABEL_244;
                      }
                    }

                    APSLogErrorAt();
LABEL_711:
                    v9 = 4294895366;
                    goto LABEL_351;
                  }
                }

                else
                {
                  started = -12782;
                }

LABEL_244:
                APSLogErrorAt();
LABEL_350:
                v9 = 4294895362;
LABEL_351:
                free(v103);
                free(v227);
                free(v27);
                if (v132)
                {
                  CFRelease(v132);
                }

                if (v101)
                {
                  CFRelease(v101);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                return v9;
              }

              goto LABEL_684;
            }
          }

LABEL_721:
          APSLogErrorAt();
          goto LABEL_722;
        }

LABEL_213:
        v132 = 0;
        goto LABEL_214;
      }

      APSLogErrorAt();
LABEL_710:
      v132 = 0;
      goto LABEL_711;
    }

    LODWORD(v226) = 0;
    v74 = CMBaseObjectGetDerivedStorage();
    number.value = 0;
    bzero(theDict, 0x1E000uLL);
    valuePtr = 0;
    v227 = 0;
    CFStringGetTypeID();
    v75 = CFDictionaryGetTypedValue();
    if (!*(v74 + 408))
    {
      v98 = APReceiverFairPlayHelperCopyAuthorizeItemResponseIntoBuffer(*(v74 + 400), v3, v75, theDict, 0x1E000uLL, &number);
      if (v98)
      {
        v9 = v98;
        APSLogErrorAt();
        goto LABEL_424;
      }

      v99 = 0;
      v75 = 0;
      v80 = 0;
      v78 = 0;
      v100 = number.value;
LABEL_413:
      if (APReceiverRequestProcessorPrepareBinaryDataResponse(theDict, v100, v223))
      {
        APSLogErrorAt();
      }

      else
      {
        v7 = 0;
      }

      if (!v78)
      {
        goto LABEL_417;
      }

      goto LABEL_416;
    }

    LODWORD(v226) = mcProcessor_startVideoPlaybackV2(v6);
    if (v226)
    {
      APSLogErrorAt();
      v9 = 4294895362;
      goto LABEL_424;
    }

    v76 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v3);
    v78 = MutableCopy;
    if (!MutableCopy)
    {
      APSLogErrorAt();
      v9 = 4294895350;
      goto LABEL_424;
    }

    CFDictionarySetValue(MutableCopy, @"type", @"authorizeItem");
    CFDictionarySetValue(v78, @"kind", @"request");
    if (v75)
    {
      v79 = CFDictionaryCreateMutable(v76, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v80 = v79;
      if (!v79)
      {
        APSLogErrorAt();
        v75 = 0;
        v80 = 0;
        goto LABEL_696;
      }

      CFDictionarySetValue(v79, @"uuid", v75);
      CFDictionarySetValue(v78, @"item", v80);
      v75 = CFDictionaryGetValue(v3, @"PIC-Request");
      if (v75)
      {
        v75 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v75 options:0];
        FigCFDictionarySetValue();
      }

      FigCFDictionarySetValueFromKeyInDict();
    }

    else
    {
      v80 = 0;
    }

    LODWORD(v226) = mcProcessor_createAndWrapDataDictionaryForV2(v78, 1, &valuePtr);
    if (!v226)
    {
      v118 = *(v74 + 392);
      v99 = valuePtr;
      v119 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v119)
      {
        if (!v119(v118, v99, &v227))
        {
          v120 = v227;
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (v120)
          {
            v187 = CFDictionaryGetValue(v120, @"PIC-Data");
            v188 = CFDictionaryGetValue(v120, @"playerGUID");
            v189 = snprintf(theDict, 0x1E000uLL, "%s: %s\n%s: %s\n", "PIC-Data", [objc_msgSend(v187 base64EncodedStringWithOptions:{0), "cStringUsingEncoding:", 4}], "Player-GUID", objc_msgSend(v188, "cStringUsingEncoding:", 4));
            if (v189 - 122880 >= 0xFFFE2001)
            {
              v100 = v189;
              number.value = v189;
              goto LABEL_413;
            }
          }

          APSLogErrorAt();
          APSLogErrorAt();
LABEL_416:
          CFRelease(v78);
          v99 = valuePtr;
LABEL_417:
          if (v99)
          {
            CFRelease(v99);
          }

          if (v80)
          {
            CFRelease(v80);
          }

          if (v75)
          {
            CFRelease(v75);
          }

          v9 = v7;
LABEL_424:
          v184 = v227;
          if (!v227)
          {
            return v9;
          }

          goto LABEL_394;
        }
      }

      else
      {
        LODWORD(v226) = -12782;
      }

      APSLogErrorAt();
      goto LABEL_416;
    }

    APSLogErrorAt();
LABEL_696:
    v7 = 4294895350;
    goto LABEL_416;
  }

  if (v5 <= 1918989412)
  {
    if (v5 > 1886809963)
    {
      if (v5 == 1886809964)
      {
        v45 = CMBaseObjectGetDerivedStorage();
        LODWORD(theDict[0]) = 0;
        v46 = CFDictionaryGetValue(v3, @"volume");
        if (v46)
        {
          v47 = v46;
          CFNumberGetValue(v46, kCFNumberFloatType, theDict);
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v150 = *(v45 + 392);
          if (v150)
          {
            v151 = *(*(CMBaseObjectGetVTable() + 16) + 120);
            if (v151 && !v151(v150, @"volume", 0, v47))
            {
              v7 = 0;
              *v223 = 0;
            }
          }

          else
          {
            APSLogErrorAt();
          }
        }

        else
        {
          APSLogErrorAt();
          return 4294895366;
        }

        return v7;
      }

      else if (v5 == 1918984564)
      {
        CFDataGetTypeID();
        v13 = CFDictionaryGetTypedValue();
        if (v13 && (v14 = v13, CFDataGetLength(v13) > 0) && (v15 = CFPropertyListCreateWithData(0, v14, 0, 0, 0)) != 0)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            v9 = mcProcessor_processSetRateInternal(v6, v16, v223);
          }

          else
          {
            APSLogErrorAt();
            v9 = 4294895354;
          }

          CFRelease(v16);
        }

        else
        {
          APSLogErrorAt();
          return 4294895354;
        }
      }

      return v9;
    }

    if (v5 != 1886283375)
    {
      v12 = 1886679924;
      goto LABEL_26;
    }

    v34 = CMBaseObjectGetDerivedStorage();
    v35 = v34;
    LODWORD(v227) = 0;
    theDict[0] = 0;
    number.value = 0;
    valuePtr = 0;
    if (*(v34 + 408))
    {
      v36 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v37 = v36;
      if (!v36 || (CFDictionarySetValue(v36, @"type", @"playbackInfo"), CFDictionarySetValue(v37, @"kind", @"request"), LODWORD(v227) = mcProcessor_createAndWrapDataDictionaryForV2(v37, 1, &number), v227))
      {
        APSLogErrorAt();
        v43 = 0;
        v9 = 4294895350;
        goto LABEL_233;
      }

      v38 = *(v35 + 392);
      v39 = number.value;
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v40)
      {
        LODWORD(v227) = v40(v38, v39, &valuePtr);
        if (!v227)
        {
          v41 = FigCFDictionaryGetValue();
          if (v41)
          {
            v42 = CFDictionaryCreateMutableCopy(0, 0, v41);
            v43 = v42;
            if (v42)
            {
              mcProcessor_replaceV2RangeKeysWithV1(v42, *MEMORY[0x277CC10A8]);
              mcProcessor_replaceV2RangeKeysWithV1(v43, *MEMORY[0x277CC1070]);
              v44 = APReceiverRequestProcessorPrepareXMLPlistResponse(v43, v223);
LABEL_146:
              LODWORD(v227) = v44;
              if (!v44)
              {
                v9 = 0;
LABEL_233:
                if (theDict[0])
                {
                  CFRelease(theDict[0]);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                if (number.value)
                {
                  CFRelease(number.value);
                }

                if (valuePtr)
                {
                  CFRelease(valuePtr);
                }

                if (v43)
                {
                  CFRelease(v43);
                }

                return v9;
              }

              APSLogErrorAt();
LABEL_232:
              v9 = 4294895362;
              goto LABEL_233;
            }
          }
        }
      }

      else
      {
        LODWORD(v227) = -12782;
      }

      APSLogErrorAt();
LABEL_231:
      v43 = 0;
      goto LABEL_232;
    }

    v37 = *(v34 + 392);
    if (!v37)
    {
      APSLogErrorAt();
      goto LABEL_231;
    }

    v90 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v90)
    {
      LODWORD(v227) = v90(v37, @"playbackInfo", 0, theDict);
      if (theDict[0])
      {
        CFDictionaryGetDouble();
        if (v227)
        {
LABEL_137:
          v94 = CFDictionaryGetInt64();
          if (!v227)
          {
            *(v35 + 212) = v94;
          }

          CFDictionaryGetDouble();
          if (!v227)
          {
            *(v35 + 216) = v95;
          }

          CFDictionaryGetDouble();
          if (!v227)
          {
            *(v35 + 224) = v96;
          }

          CFDictionaryGetDouble();
          if (!v227)
          {
            *(v35 + 232) = v97;
          }

          v44 = APReceiverRequestProcessorPrepareXMLPlistResponse(theDict[0], v223);
          v37 = 0;
          v43 = 0;
          goto LABEL_146;
        }

        v92 = v91;
        v93 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
        if (v93)
        {
          if (theDict[0])
          {
            CFRelease(theDict[0]);
            theDict[0] = 0;
          }

          CFDictionaryRemoveValue(v93, @"playbackLikelyToKeepUpTime");
          if (!*(v35 + 208))
          {
            *(v35 + 208) = ((v92 - *(v35 + 200)) * 1000.0);
            CFDictionarySetInt64();
          }

          theDict[0] = v93;
          goto LABEL_137;
        }
      }
    }

    else
    {
      LODWORD(v227) = -12782;
    }

    APSLogErrorAt();
    v37 = 0;
    goto LABEL_231;
  }

  if (v5 > 1936748657)
  {
    if (v5 != 1936748658)
    {
      if (v5 != 1936941938)
      {
        if (v5 == 1937010544)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (mcProcessor_handleStop())
          {
            APSLogErrorAt();
            return 4294895362;
          }

          v9 = 0;
          goto LABEL_274;
        }

        return v9;
      }

      v48 = CMBaseObjectGetDerivedStorage();
      LODWORD(v227) = 0;
      valuePtr = 0;
      CFDataGetTypeID();
      v49 = CFDictionaryGetTypedValue();
      v50 = v49;
      if (v49)
      {
        CFDataGetBytePtr(v49);
        CFDataGetLength(v50);
        CFDictionaryGetTypeID();
        v50 = CFCreateWithPlistBytes();
        if (!v50)
        {
          APSLogErrorAt();
          v9 = 4294895366;
          goto LABEL_393;
        }
      }

      v51 = CFDictionaryGetValue(v3, @"position");
      v52 = v51;
      if (!v51)
      {
        APSLogErrorAt();
        v178 = 0;
        v7 = 4294895366;
        goto LABEL_386;
      }

      CFNumberGetValue(v51, kCFNumberFloatType, &v227);
      v53 = gLogCategory_APReceiverRequestProcessorMediaControl;
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_373;
          }

          v53 = gLogCategory_APReceiverRequestProcessorMediaControl;
        }

        if (v53 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

LABEL_373:
      v175 = *(v48 + 392);
      if (!v175)
      {
        APSLogErrorAt();
        v52 = 0;
        v178 = 0;
        goto LABEL_386;
      }

      if (*(v48 + 408))
      {
        v176 = *MEMORY[0x277CBECE8];
        v177 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v52 = v177;
        if (!v177)
        {
          APSLogErrorAt();
          v52 = 0;
          v178 = 0;
          v7 = 4294895350;
          goto LABEL_386;
        }

        CFDictionarySetValue(v177, @"type", @"seek");
        CFDictionarySetValue(v52, @"kind", @"request");
        theDict[0] = 0;
        theDict[1] = 0;
        *&v238 = 0;
        CMTimeMakeWithSeconds(theDict, *&v227, 10000);
        *&number.value = *theDict;
        number.epoch = v238;
        v178 = CMTimeCopyAsDictionary(&number, v176);
        FigCFDictionarySetValue();
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValue();
        FigCFDictionarySetValueFromKeyInDict();
        if (mcProcessor_createAndWrapDataDictionaryForV2(v52, 0, &valuePtr))
        {
          goto LABEL_385;
        }

        v179 = *(v48 + 392);
        v180 = valuePtr;
        v181 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v181)
        {
          v182 = v181(v179, v180, 0);
        }

        else
        {
          v182 = -12782;
        }
      }

      else
      {
        v183 = *(*(CMBaseObjectGetVTable() + 16) + 120);
        if (!v183)
        {
          v178 = 0;
          v52 = 0;
          goto LABEL_385;
        }

        v182 = v183(v175, @"position", v50, v52);
        v52 = 0;
        v178 = 0;
      }

      if (!v182)
      {
        v7 = 0;
        *v223 = 0;
LABEL_386:
        if (v50)
        {
          CFRelease(v50);
        }

        if (v178)
        {
          CFRelease(v178);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        v9 = v7;
LABEL_393:
        v184 = valuePtr;
        if (!valuePtr)
        {
          return v9;
        }

LABEL_394:
        CFRelease(v184);
        return v9;
      }

LABEL_385:
      APSLogErrorAt();
      goto LABEL_386;
    }

    v81 = CMBaseObjectGetDerivedStorage();
    LODWORD(number.value) = 0;
    theDict[0] = 0;
    CFStringGetTypeID();
    v82 = CFDictionaryGetTypedValue();
    if (v82)
    {
      CFDataGetTypeID();
      v83 = CFDictionaryGetTypedValue();
      v84 = v83;
      if (!v83)
      {
        v87 = 0;
        v88 = 0;
        goto LABEL_185;
      }

      if (CFDataGetLength(v83) < 1)
      {
        v87 = 0;
        v88 = 0;
        v84 = 0;
        goto LABEL_185;
      }

      v85 = CFPropertyListCreateWithData(0, v84, 0, 0, 0);
      v84 = v85;
      if (v85)
      {
        v86 = CFGetTypeID(v85);
        if (v86 != CFDictionaryGetTypeID())
        {
          APSLogErrorAt();
          v153 = 0;
          v9 = 4294895354;
LABEL_344:
          CFRelease(v84);
LABEL_345:
          if (v153)
          {
            CFRelease(v153);
          }

          goto LABEL_347;
        }

        v87 = CFDictionaryGetValue(v84, @"qualifier");
        v88 = CFDictionaryGetValue(v84, @"value");
LABEL_185:
        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v152 = *(v81 + 392);
        if (!v152)
        {
          APSLogErrorAt();
          v153 = 0;
          goto LABEL_343;
        }

        if (!*(v81 + 408))
        {
          v159 = *(*(CMBaseObjectGetVTable() + 16) + 120);
          if (v159)
          {
            v158 = v159(v152, v82, v87, v88);
          }

          else
          {
            v158 = -12782;
          }

          v153 = 0;
          goto LABEL_312;
        }

        v153 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v153)
        {
          if (v87)
          {
            v154 = CFGetTypeID(v87);
            if (v154 == CFDictionaryGetTypeID())
            {
              mcProcessor_qualifierToRendererParameters(v87, v153);
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
            }
          }

          if (FigCFEqual())
          {
            CFDictionarySetValue(v153, @"type", @"seek");
            FigCFDictionarySetValue();
            LODWORD(number.value) = mcProcessor_createAndWrapDataDictionaryForV2(v153, 0, theDict);
            if (!LODWORD(number.value))
            {
              v155 = *(v81 + 392);
              v156 = theDict[0];
              v157 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v157)
              {
LABEL_299:
                v158 = v157(v155, v156, 0);
                goto LABEL_312;
              }

LABEL_309:
              v158 = -12782;
LABEL_312:
              LODWORD(number.value) = v158;
              if (v158 && gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v169 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v169)
              {
                CFDictionarySetNumber();
                if (APReceiverRequestProcessorPreparePlistResponse(v169, v223))
                {
                  APSLogErrorAt();
                }

                else
                {
                  v7 = 0;
                }

                CFRelease(v169);
              }

              else
              {
                APSLogErrorAt();
              }

LABEL_343:
              v9 = v7;
              if (!v84)
              {
                goto LABEL_345;
              }

              goto LABEL_344;
            }
          }

          else
          {
            CFDictionarySetValue(v153, @"type", @"setProperty");
            CFDictionarySetValue(v153, @"kind", @"request");
            CFDictionarySetValue(v153, @"property", v82);
            FigCFDictionarySetValue();
            v160 = FigCFEqual();
            v161 = v87 == 0;
            if (!v160)
            {
              v161 = 1;
            }

            if (!v161)
            {
              v162 = CFGetTypeID(v87);
              if (v162 == CFNumberGetTypeID())
              {
                FigCFDictionarySetValue();
              }
            }

            FigCFDictionaryGetValue();
            FigCFDictionarySetValue();
            LODWORD(number.value) = mcProcessor_createAndWrapDataDictionaryForV2(v153, 0, theDict);
            if (!LODWORD(number.value))
            {
              v155 = *(v81 + 392);
              v156 = theDict[0];
              v157 = *(*(CMBaseObjectGetVTable() + 16) + 64);
              if (v157)
              {
                goto LABEL_299;
              }

              goto LABEL_309;
            }
          }

          APSLogErrorAt();
        }

        else
        {
          APSLogErrorAt();
          v153 = 0;
        }

        v7 = 4294895350;
        goto LABEL_343;
      }

      APSLogErrorAt();
      v9 = 4294895354;
    }

    else
    {
      APSLogErrorAt();
      v9 = 4294895362;
    }

LABEL_347:
    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }

    return v9;
  }

  if (v5 != 1918989413)
  {
    if (v5 != 1920365171)
    {
      return v9;
    }

    LODWORD(number.value) = 0;
    theDict[0] = 0;
    v28 = CMBaseObjectGetDerivedStorage();
    CFStringGetTypeID();
    v29 = CFDictionaryGetTypedValue();
    if (!v29)
    {
      goto LABEL_664;
    }

    LODWORD(number.value) = CFStringCopyUTF8CString();
    if (!LODWORD(number.value))
    {
      CFStringGetLength(v29);
      if (strnicmpx())
      {
        goto LABEL_664;
      }

      theDict[0] = 0;
      CFStringGetTypeID();
      v30 = CFDictionaryGetTypedValue();
      if (!v30)
      {
        goto LABEL_664;
      }

      LODWORD(number.value) = CFStringCopyUTF8CString();
      if (!LODWORD(number.value))
      {
        CFStringGetLength(v30);
        if (strnicmpx())
        {
          goto LABEL_664;
        }

        theDict[0] = 0;
        CFStringGetTypeID();
        v31 = CFDictionaryGetTypedValue();
        if (!v31)
        {
          goto LABEL_664;
        }

        LODWORD(number.value) = CFStringCopyUTF8CString();
        if (!LODWORD(number.value))
        {
          CFStringGetLength(v31);
          if (strncasestr())
          {
            *(v28 + 313) = 1;
          }

          if (theDict[0])
          {
            free(theDict[0]);
          }

          theDict[0] = 0;
          if (*(v28 + 104) != 0)
          {
            goto LABEL_664;
          }

          CFStringGetTypeID();
          v32 = CFDictionaryGetTypedValue();
          if (v32)
          {
            LODWORD(number.value) = CFStringCopyUTF8CString();
            if (LODWORD(number.value))
            {
              goto LABEL_685;
            }

            CFStringGetLength(v32);
            v33 = StringToUUID();
            LODWORD(number.value) = v33;
            theDict[0] = 0;
          }

          else
          {
            v33 = StringToUUID();
            LODWORD(number.value) = v33;
          }

          if (v33)
          {
            goto LABEL_664;
          }

          CFStringGetTypeID();
          v109 = CFDictionaryGetTypedValue();
          if (!v109)
          {
            *(v28 + 301) = 116;
            *(v28 + 297) = 1852143205;
            Length = 5;
            goto LABEL_168;
          }

          LODWORD(number.value) = CFStringCopyUTF8CString();
          if (!LODWORD(number.value))
          {
            Length = CFStringGetLength(v109);
            if (Length < 0x10)
            {
              memcpy((v28 + 297), theDict[0], Length);
              theDict[0] = 0;
LABEL_168:
              *(v28 + Length + 297) = 0;
              v111 = *(v28 + 128);
              v112 = *(v28 + 32);
              CFObjectSetValue();
              CFRetain(v111);
              dispatch_retain(*(v112 + 120));
              CFRetain(v6);
              v113 = HTTPConnectionDetach();
              if (v113)
              {
                APSLogErrorAt();
              }

              LODWORD(number.value) = v113;
              goto LABEL_171;
            }

LABEL_664:
            APSLogErrorAt();
LABEL_171:
            v114 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!v114)
            {
              APSLogErrorAt();
              v114 = 0;
              LODWORD(number.value) = -71950;
              goto LABEL_175;
            }

            LODWORD(number.value) = CFDictionarySetInt64();
            if (LODWORD(number.value))
            {
              APSLogErrorAt();
              goto LABEL_175;
            }

            *v223 = v114;
LABEL_174:
            v114 = 0;
LABEL_175:
            v115 = *(v28 + 392);
            v116 = *(*(CMBaseObjectGetVTable() + 16) + 80);
            if (v116)
            {
              v116(v115, 0);
            }

            if (theDict[0])
            {
              free(theDict[0]);
            }

            if (v114)
            {
              CFRelease(v114);
            }

            return LODWORD(number.value);
          }
        }
      }
    }

LABEL_685:
    APSLogErrorAt();
    goto LABEL_174;
  }

  return mcProcessor_processSetRateInternal(v6, v3, v223);
}

uint64_t mcProcessor_addTLSInfo()
{
  v9 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 120) || (v1 = DerivedStorage, !CFDictionaryGetInt64()))
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

LABEL_10:
    LogPrintF();
    return 0;
  }

  v2 = *(v1 + 120);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    v4 = v3(v2, "Pair-TLS-PSK", 12, 0, 0, 16, v8);
    if (!v4)
    {
      CFDictionarySetData();
      __s[0] = 0;
      SockAddrToString();
      strlen(__s);
      CFDictionarySetData();
      if (gLogCategory_APReceiverRequestProcessorMediaControl > 50 || gLogCategory_APReceiverRequestProcessorMediaControl == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }

      goto LABEL_10;
    }

    v5 = v4;
  }

  else
  {
    v5 = 4294954514;
  }

  APSLogErrorAt();
  return v5;
}

uint64_t mcProcessor_createAndWrapDataDictionaryForV2(uint64_t a1, int a2, CFMutableDictionaryRef *a3)
{
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v8 = CFDataFromCFPropertyList;
      APSLogErrorAt();
      CFRelease(v6);
    }

    else
    {
      CFDictionarySetValue(v6, @"data", 0);
      if (a2)
      {
        CFDictionarySetValue(v6, @"PerformSync", *MEMORY[0x277CBED28]);
      }

      v8 = 0;
      *a3 = v6;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895346;
  }

  return v8;
}

uint64_t APReceiverUIControllerControlVideoPlayback(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0);
}

uint64_t mcProcessor_insertPlayQueueItemV2(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v10 = Mutable;
  MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, a2);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    CFRelease(v10);
    return 4294960568;
  }

  v12 = MutableCopy;
  if (a4 || CFDictionaryGetValue(a2, @"Start-Position"))
  {
    v13 = 0;
  }

  else if (CFDictionaryGetValue(a2, @"Start-Date") || CFDictionaryGetValue(a2, @"Start-Estimated-Date"))
  {
    v13 = 0;
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    memset(&v23, 0, sizeof(v23));
    CMTimeMakeWithSeconds(&v23, Int64, 10000);
    v22 = v23;
    v13 = CMTimeCopyAsDictionary(&v22, v8);
  }

  CFDictionaryGetValue(a2, @"uuid");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"Content-Location");
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"HLS-Content-Location");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"textMarkupArray");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"referenceRestrictions");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"outOfBandAlternateTracks");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"inheritURIQueryComponentFromReferencingURI");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"audioOnly");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"tlsPSKEnabled");
  FigCFDictionarySetValue();
  v14 = *MEMORY[0x277CC0F68];
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F68]);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"buyParams");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"dsid");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"itemID");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"itemType");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"PD-Info");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"Play-Info");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"fpSessionID");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"mz_at");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"purchasedMediaKind");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"userAgent");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, @"audioMode");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F00]);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F08]);
  FigCFDictionarySetValue();
  CFDictionarySetValue(v10, @"type", @"insertPlayQueueItem");
  FigCFDictionarySetValue();
  if (a3)
  {
    FigCFDictionarySetValue();
  }

  CFDictionaryGetValue(a2, @"tlsPSKEnabled");
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, v14);
  FigCFDictionarySetValue();
  CFDictionaryGetValue(a2, *MEMORY[0x277CC0F38]);
  FigCFDictionarySetValue();
  v15 = mcProcessor_createAndWrapDataDictionaryForV2(v10, 0, &cf);
  if (v15)
  {
    v19 = v15;
    APSLogErrorAt();
  }

  else
  {
    v16 = *(DerivedStorage + 392);
    v17 = cf;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v18)
    {
      v19 = v18(v16, v17, 0);
    }

    else
    {
      v19 = 4294954514;
    }
  }

  CFRelease(v10);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t APReceiverRequestProcessorPreparePlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895344;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

uint64_t mcProcessor_startVideoPlaybackV2(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 384))
  {
    return 0;
  }

  v3 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v5 = Mutable;
  do
  {
    add_explicit = atomic_fetch_add_explicit(mcProcessor_getUniqueSessionID_sessionID, 1u, memory_order_relaxed);
  }

  while (add_explicit == -1);
  *(v3 + 376) = add_explicit + 1;
  CFDictionarySetInt64();
  CFDictionarySetNumber();
  FigCFDictionarySetValue();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(v3 + 392);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(v7, mcProcessor_UIControllerVideoPlaybackCallback, mcProcessor_UIControllerCopyTLSInfoCallback, a1, v5);
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  *(v3 + 384) = 1;
LABEL_14:
  CFRelease(v5);
  return v9;
}

uint64_t APReceiverRequestProcessorPrepareBinaryDataResponse(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895346;
  }

  v5 = Mutable;
  v6 = CFDictionarySetData();
  if (v6)
  {
    v7 = v6;
    goto LABEL_8;
  }

  v7 = CFDictionarySetCString();
  if (v7)
  {
LABEL_8:
    APSLogErrorAt();
    CFRelease(v5);
    return v7;
  }

  *a3 = v5;
  return v7;
}

void mcProcessor_qualifierToRendererParameters(uint64_t a1, __CFDictionary *a2)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v4 = Value;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"uuid", v4);
    CFDictionarySetValue(a2, @"item", Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

uint64_t APReceiverUIControllerStartVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, mcProcessor_handleMediaControlEvent, a2, a3, a4);
}

void mcProcessor_addTrafficRegistration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v10 = 0;
  cf = 0;
  APTransportGetSharedTransport();
  CMBaseObject = FigTransportGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    PeerMACAddress = -12782;
    goto LABEL_11;
  }

  PeerMACAddress = v2(CMBaseObject, *MEMORY[0x277CE4F30], *MEMORY[0x277CBECE8], &cf);
  if (PeerMACAddress)
  {
LABEL_11:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v3 = *(DerivedStorage + 24);
  if (v3 != 4 && v3 != 128 && v3 != 64)
  {
LABEL_18:
    v8 = *(DerivedStorage + 168);
    v7 = (DerivedStorage + 168);
    v6 = v8;
    if (v8)
    {
      CFRelease(v6);
      *v7 = 0;
    }

    PeerMACAddress = APTransportTrafficRegistrarInfraTransactionCreate();
    if (!PeerMACAddress)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  CFDictionaryGetHardwareAddress();
  if (!PeerMACAddress)
  {
    goto LABEL_14;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 40 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  PeerMACAddress = GetPeerMACAddress();
  if (!PeerMACAddress)
  {
LABEL_14:
    Int64 = CFDictionaryGetInt64();
    v5 = *(DerivedStorage + 160);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 160) = 0;
    }

    PeerMACAddress = APTransportTrafficRegistrarAWDLTrafficRegistrationCreate();
    if (PeerMACAddress)
    {
      goto LABEL_11;
    }

    if ((Int64 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mcProcessor_logVideoStarted(double a1, uint64_t a2, const __CFDictionary *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 200) != 0.0)
  {
    return result;
  }

  v6 = result;
  *(result + 244) = 0;
  v7 = (result + 244);
  *(result + 200) = a1;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 252) = 0;
  UUIDGet();
  CFDictionaryGetInt64();
  if (!CFDictionaryGetValue(a3, @"Start-Position") && !CFDictionaryGetValue(a3, @"Start-Date"))
  {
    CFDictionaryGetValue(a3, @"Start-Estimated-Date");
  }

  result = CFDictionaryGetInt64();
  if (result > 1)
  {
    if (result == 2)
    {
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (result = _LogCategory_Initialize(), result))
        {
          CFDictionaryGetValue(a3, @"uuid");
          if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
          {
            _LogCategory_Initialize();
          }

          CFDictionaryGetValue(a3, @"path");
          if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
          {
            _LogCategory_Initialize();
          }

          result = LogPrintF();
        }
      }

      ++v6[62];
    }

    else
    {
      if (result != 3)
      {
LABEL_18:
        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl != -1)
          {
            return LogPrintF();
          }

          result = _LogCategory_Initialize();
          if (result)
          {
            return LogPrintF();
          }
        }

        return result;
      }

      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (result = _LogCategory_Initialize(), result))
        {
          CFDictionaryGetValue(a3, @"uuid");
          if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
          {
            _LogCategory_Initialize();
          }

          CFDictionaryGetValue(a3, @"Content-Location");
          if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
          {
            _LogCategory_Initialize();
          }

          result = LogPrintF();
        }
      }

      ++v6[64];
    }
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
        {
          if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (result = _LogCategory_Initialize(), result))
          {
            CFDictionaryGetValue(a3, @"uuid");
            if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
            {
              _LogCategory_Initialize();
            }

            CFDictionaryGetValue(a3, @"Content-Location");
            if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
            {
              _LogCategory_Initialize();
            }

            result = LogPrintF();
          }
        }

        ++v6[63];
        return result;
      }

      goto LABEL_18;
    }

    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50)
    {
      if (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || (result = _LogCategory_Initialize(), result))
      {
        CFDictionaryGetValue(a3, @"uuid");
        if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
        {
          _LogCategory_Initialize();
        }

        CFDictionaryGetValue(a3, @"path");
        if (gLogCategory_APReceiverRequestProcessorMediaControl == -1)
        {
          _LogCategory_Initialize();
        }

        result = LogPrintF();
      }
    }

    ++*v7;
  }

  return result;
}

void _mcProcessor_StartKeepAliveTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    dispatch_source_cancel(*(DerivedStorage + 264));
    dispatch_release(v4);
    *(v3 + 264) = 0;
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 152));
  *(v3 + 264) = v5;
  if (v5)
  {
    dispatch_set_context(v5, a1);
    dispatch_source_set_event_handler_f(*(v3 + 264), _mcProcessor_KeepAliveTimer);
    v6 = *(v3 + 264);
    v7 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v6, v7, 0x2540BE400uLL, 0x5F5E100uLL);
    v8 = *(v3 + 264);

    dispatch_resume(v8);
  }

  else
  {

    APSLogErrorAt();
  }
}

void mcProcessor_replaceV2RangeKeysWithV1(__CFDictionary *a1, const void *a2)
{
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v8 = Mutable;
      v18 = a1;
      if (Count < 1)
      {
LABEL_12:
        CFDictionarySetValue(v18, a2, v8);
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x277CC11A0];
        v11 = *MEMORY[0x277CC1198];
        while (1)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          if (!TypedValueAtIndex)
          {
            break;
          }

          v13 = TypedValueAtIndex;
          MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, TypedValueAtIndex);
          if (!MutableCopy)
          {
            break;
          }

          v15 = MutableCopy;
          Value = CFDictionaryGetValue(v13, v10);
          if (Value)
          {
            CFDictionarySetValue(v15, @"startCMTime", Value);
            CFDictionaryRemoveValue(v15, v10);
          }

          v17 = CFDictionaryGetValue(v13, v11);
          if (v17)
          {
            CFDictionarySetValue(v15, @"durationCMTime", v17);
            CFDictionaryRemoveValue(v15, v11);
          }

          CFArrayAppendValue(v8, v15);
          CFRelease(v15);
          if (Count == ++v9)
          {
            goto LABEL_12;
          }
        }

        APSLogErrorAt();
      }

      CFRelease(v8);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

uint64_t APReceiverRequestProcessorPrepareXMLPlistResponse(const void *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895345;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v9 = 4294895346;
    APSLogErrorAt();
    return v9;
  }

  v5 = Mutable;
  Data = CFPropertyListCreateData(0, a1, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 4294895346;
    APSLogErrorAt();
LABEL_14:
    v10 = v5;
    goto LABEL_7;
  }

  v7 = Data;
  CFDataGetBytePtr(Data);
  CFDataGetLength(v7);
  v8 = CFDictionarySetData();
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v9 = CFDictionarySetCString();
  if (v9)
  {
LABEL_13:
    APSLogErrorAt();
    CFRelease(v7);
    goto LABEL_14;
  }

  *a2 = v5;
  v10 = v7;
LABEL_7:
  CFRelease(v10);
  return v9;
}

uint64_t mcProcessor_processSetRateInternal(void *a1, const __CFDictionary *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0.0;
  v21 = 0;
  Value = CFDictionaryGetValue(a2, @"rate");
  if (!Value)
  {
    v10 = 4294895362;
LABEL_32:
    APSLogErrorAt();
    return v10;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    v10 = 4294895362;
    goto LABEL_32;
  }

  CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr);
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = 4294895362;
  if (!*(DerivedStorage + 392))
  {
    goto LABEL_32;
  }

  v11 = *(DerivedStorage + 264);
  if (valuePtr == 0.0)
  {
    if (v11)
    {
      dispatch_source_cancel(*(DerivedStorage + 264));
      dispatch_release(v11);
      *(DerivedStorage + 264) = 0;
    }
  }

  else if (!v11)
  {
    _mcProcessor_StartKeepAliveTimer(a1);
  }

  if (!*(DerivedStorage + 408))
  {
    v18 = *(DerivedStorage + 392);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (!v19)
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_24;
    }

    v17 = v19(v18, @"rate", a2, v8);
    v15 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    return 4294895350;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"type", @"setRate");
  FigCFDictionarySetFloat32();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  if (!mcProcessor_createAndWrapDataDictionaryForV2(v13, 0, &v21))
  {
    v14 = *(DerivedStorage + 392);
    v15 = v21;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16(v14, v15, 0);
LABEL_20:
    if (v17 == -6745)
    {
      goto LABEL_25;
    }

    if (!v17)
    {
      v10 = 0;
      *a3 = 0;
      goto LABEL_25;
    }

LABEL_24:
    APSLogErrorAt();
LABEL_25:
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  APSLogErrorAt();
LABEL_26:
  CFRelease(v13);
  v15 = v21;
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

uint64_t mcProcessor_handleStop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  v2 = *(v1 + 264);
  if (v2)
  {
    v3 = v1;
    dispatch_source_cancel(*(v1 + 264));
    dispatch_release(v2);
    *(v3 + 264) = 0;
  }

  if (!*(DerivedStorage + 384))
  {
    return 0;
  }

  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 200) != 0.0)
  {
    *(v4 + 200) = 0;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 392))
  {
    if (*(DerivedStorage + 408))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      v7 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v8 = *(DerivedStorage + 392);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v5 = v9(v8, v7);
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v5 = 4294954514;
      }
    }

    else
    {
      v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v11 = *(DerivedStorage + 392);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v12)
      {
        v12(v11, v10);
      }

      v5 = 0;
      v7 = 0;
    }

    v13 = *(DerivedStorage + 128);
    v14 = *(v13 + 204) - 1;
    *(v13 + 204) = v14;
    if (!v14)
    {
      v19 = *(v13 + 208);
      if (v19)
      {
        IOPMAssertionRelease(v19);
        *(v13 + 208) = 0;
        if (gLogCategory_AirPlayReceiverServer <= 40 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }

    v15 = CMBaseObjectGetDerivedStorage();
    v16 = *(v15 + 160);
    if (v16)
    {
      CFRelease(v16);
      *(v15 + 160) = 0;
    }

    v17 = *(v15 + 168);
    if (v17)
    {
      CFRelease(v17);
      *(v15 + 168) = 0;
    }

    *(DerivedStorage + 384) = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v5 = 4294960534;
    APSLogErrorAt();
  }

  return v5;
}

void _mcProcessor_KeepAliveTimer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = mach_absolute_time() - *(DerivedStorage + 272);
  if (v1 <= SecondsToUpTicks())
  {
    if (v1 > SecondsToUpTicks() && gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      UpTicksToSeconds();
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 60 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      UpTicksToSeconds();
      LogPrintF();
    }

    v2 = *(DerivedStorage + 264);
    if (v2)
    {
      dispatch_source_cancel(*(DerivedStorage + 264));
      dispatch_release(v2);
      *(DerivedStorage + 264) = 0;
    }
  }
}

uint64_t mcProcessor_handleMediaControlEvent(dispatch_queue_t *a1, const void *a2)
{
  result = AirPlayReceiverServerPostMediaControlEvent(a1, a2);
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30)
  {
    if (gLogCategory_APReceiverRequestProcessorMediaControl != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t mcProcessor_UIControllerCopyTLSInfoCallback(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1)
  {
    APSLogErrorAt();
    return a1;
  }

  a1 = *(DerivedStorage + 120);
  if (a1)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v7 = v6(a1, "Pair-TLS-PSK", 12, 0, 0, 16, v12);
      if (!v7)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v9 = Mutable;
          CFDictionarySetData();
          __s[0] = 0;
          SockAddrToString();
          strlen(__s);
          CFDictionarySetData();
          a1 = 0;
          *a3 = v9;
          return a1;
        }

        APSLogErrorAt();
        a1 = 4294960568;
        goto LABEL_13;
      }

      a1 = v7;
    }

    else
    {
      a1 = 4294954514;
    }

    APSLogErrorAt();
LABEL_13:
    if (gLogCategory_APReceiverRequestProcessorMediaControl <= 90 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return a1;
}

void mcProcessor_UIControllerVideoPlaybackCallback(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a1 || !a3 || (Value = CFDictionaryGetValue(a3, @"data")) == 0 || (v8 = *MEMORY[0x277CBECE8], (v9 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], Value, 0, 0, 0)) == 0))
  {

    APSLogErrorAt();
    return;
  }

  v10 = v9;
  CFDictionaryGetValue(v9, @"kind");
  CFDictionaryGetValue(v10, @"type");
  if (!FigCFEqual())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v10);
    v14 = CFDictionaryGetValue(v10, @"name");
    CFDictionarySetValue(MutableCopy, @"sessionID", a2);
    CFDictionaryGetValue(MutableCopy, @"type");
    if (FigCFEqual())
    {
      v15 = CFDictionaryGetValue(MutableCopy, @"item");
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, @"uuid");
      }

      else
      {
        v16 = 0;
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0E68], v14);
      CFDictionaryRemoveValue(MutableCopy, @"kind");
      CFDictionaryRemoveValue(MutableCopy, @"name");
      if (v16)
      {
        CFDictionarySetValue(MutableCopy, @"uuid", v16);
      }

      v22 = CFDictionaryGetValue(v10, @"params");
      if (v22)
      {
        v23 = CFDictionaryCreateMutableCopy(v8, 0, v22);
        v21 = v23;
        if (v23)
        {
          mcProcessor_replaceV2RangeKeysWithV1(v23, *MEMORY[0x277CC10A8]);
          mcProcessor_replaceV2RangeKeysWithV1(v21, *MEMORY[0x277CC1070]);
          CFDictionarySetValue(MutableCopy, @"params", v21);
        }

        goto LABEL_54;
      }

LABEL_53:
      v21 = 0;
LABEL_54:
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      AirPlayReceiverServerPostMediaControlEvent(*(DerivedStorage + 128), MutableCopy);
      Mutable = 0;
      v20 = 0;
      goto LABEL_62;
    }

    CFDictionaryGetValue(MutableCopy, @"type");
    if (!FigCFEqual())
    {
      CFDictionaryGetValue(MutableCopy, @"type");
      if (FigCFEqual())
      {
        CFDictionaryRemoveValue(MutableCopy, @"type");
        CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0E70], *MEMORY[0x277CC0ED0]);
      }

      goto LABEL_53;
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Mutable = 0;
      v20 = 0;
      v21 = 0;
LABEL_62:
      CFRelease(v10);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v21)
      {
        v24 = v21;
LABEL_70:

        CFRelease(v24);
        return;
      }

      return;
    }

    v26 = CFDictionaryGetValue(MutableCopy, @"item");
    if (v26 || (v26 = CFDictionaryGetValue(MutableCopy, @"itemCurrent")) != 0)
    {
      v27 = CFDictionaryGetValue(v26, @"uuid");
      CFDictionarySetValue(MutableCopy, @"type", v14);
      if (!v27)
      {
LABEL_87:
        CFDictionaryRemoveValue(MutableCopy, @"kind");
        CFDictionaryRemoveValue(MutableCopy, @"name");
        goto LABEL_53;
      }

      v28 = @"uuid";
      v29 = MutableCopy;
      v30 = v27;
    }

    else
    {
      v28 = @"type";
      v29 = MutableCopy;
      v30 = v14;
    }

    CFDictionarySetValue(v29, v28, v30);
    goto LABEL_87;
  }

  v11 = CFDictionaryGetValue(v10, @"messageID");
  if (!v11 || (v12 = v11, !FigCFEqual()) && (FigSimpleMutexLock(), v17 = CFDictionaryGetValue(*(DerivedStorage + 416), v12), CFDictionaryRemoveValue(*(DerivedStorage + 416), v12), FigSimpleMutexUnlock(), !v17))
  {
    APSLogErrorAt();
    v24 = v10;
    goto LABEL_70;
  }

  if (FigCFEqual())
  {
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      MutableCopy = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_38;
    }

    v19 = CFDictionaryGetValue(v10, @"key");
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v19 options:0];
      FigCFDictionarySetValue();
    }

    else
    {
      v20 = 0;
    }

    CFDictionaryGetValue(v10, @"error");
    FigCFDictionarySetValue();
    FigSimpleMutexLock();
    CFDictionarySetValue(*(DerivedStorage + 440), v12, Mutable);
    MutableCopy = 0;
    goto LABEL_36;
  }

  if (FigCFEqual())
  {
    CFDictionaryGetValue(v10, @"info");
    v21 = FigCFDictionaryCreateMutableCopy();
    if (!v21)
    {
      MutableCopy = 0;
      Mutable = 0;
      v20 = 0;
LABEL_38:
      if (FigSemaphoreSignal())
      {
        APSLogErrorAt();
      }

      goto LABEL_62;
    }

    CFDictionaryGetValue(v10, @"error");
    FigCFDictionarySetValue();
    FigSimpleMutexLock();
    FigCFDictionarySetValue();
    MutableCopy = 0;
    Mutable = 0;
    v20 = 0;
LABEL_37:
    FigSimpleMutexUnlock();
    goto LABEL_38;
  }

  if (!FigCFEqual())
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v10);
    CFDictionaryRemoveValue(MutableCopy, @"type");
    CFDictionaryRemoveValue(MutableCopy, @"kind");
    FigSimpleMutexLock();
    CFDictionarySetValue(*(DerivedStorage + 440), v12, MutableCopy);
    Mutable = 0;
    v20 = 0;
LABEL_36:
    v21 = 0;
    goto LABEL_37;
  }

  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v25 = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(v25, @"sessionID", a2);
  AirPlayReceiverServerPostMediaControlEvent(*(DerivedStorage + 128), v25);
  CFRelease(v10);
  if (v25)
  {
    v24 = v25;
    goto LABEL_70;
  }
}

uint64_t mcProcessor_Start()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 30 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t mcProcessor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = CMBaseObjectGetDerivedStorage();
  *(v1 + 176) = 0;
  APReceiverFairPlayHelperRemoveAllFPSessions(*(v1 + 400));
  *(v1 + 185) = 0;
  *(v1 + 177) = 0;
  v2 = 0uLL;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 225) = 0u;
  *(v1 + 252) = 0;
  *(v1 + 244) = 0;
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  *(v1 + 144) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v3 = *(v1 + 152);
  if (v3)
  {
    CFRelease(v3);
    v2 = 0uLL;
  }

  *(v1 + 176) = 0;
  *(v1 + 260) = 0;
  *(v1 + 360) = 0;
  *(v1 + 272) = v2;
  *(v1 + 288) = v2;
  *(v1 + 299) = v2;
  v4 = *(v1 + 368);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 368) = 0;
  }

  *(v1 + 384) = 0;
  *(v1 + 376) = 0;
  if (gLogCategory_APReceiverRequestProcessorMediaControl <= 50 && (gLogCategory_APReceiverRequestProcessorMediaControl != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = *(DerivedStorage + 120);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 392);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 392) = 0;
  }

  v7 = *(DerivedStorage + 400);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 400) = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 128) = 0;
  }

  v9 = *(DerivedStorage + 136);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 136) = 0;
  }

  v10 = *(DerivedStorage + 416);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 416) = 0;
  }

  v11 = *(DerivedStorage + 440);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 440) = 0;
  }

  v12 = *(DerivedStorage + 160);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 160) = 0;
  }

  v13 = *(DerivedStorage + 168);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 168) = 0;
  }

  FigSimpleMutexDestroy();
  result = FigSimpleMutexDestroy();
  if (*(DerivedStorage + 360))
  {
    v15 = *(DerivedStorage + 336);
    if (v15)
    {
      result = v15(*(DerivedStorage + 320));
    }
  }

  *(DerivedStorage + 360) = 0;
  return result;
}

uint64_t mcProcessor_initOnce()
{
  result = APSSettingsGetInt64();
  gMediaControlVideoDisabled = result != 0;
  return result;
}

uint64_t _APReceiverAudioSessionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverAudioSessionTypeID = result;
  return result;
}

void _APReceiverAudioSessionFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  APReceiverAudioSessionInvalidate(a1);
  v4 = *(a1 + 296);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 216);
  if (v8)
  {
    APReceiverAudioSessionPlatformFinalize(v8);
    *(a1 + 216) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v9(*(a1 + 40));
  }

  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    if (gLogCategory_APReceiverAudioSession > 50)
    {
      goto LABEL_25;
    }

    if (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_25:
  if (v3)
  {

    CFRelease(v3);
  }
}

void APReceiverAudioSessionInvalidate(uint64_t a1)
{
  if (a1 && !atomic_exchange((a1 + 16), 1u))
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 280) = 0;
    }

    if (*(a1 + 272))
    {
      FigPKDStopAirPlayReceiverSession();
      *(a1 + 272) = 0;
    }

    v3 = *(a1 + 296);
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_sync_f(*(a1 + 288), 0, audioSession_sinkFlush);
    }

    if (*(a1 + 216))
    {
      APReceiverAudioSessionPlatformControl(a1, @"RASP::FlushAudio");
      APReceiverAudioSessionPlatformControl(a1, @"RASP::StopAudioIO");
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v4(*(a1 + 40));
    }

    if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

uint64_t APReceiverAudioSessionCreate(int a1, _OWORD *a2, char *a3, const void *a4, uint64_t *a5)
{
  v172 = *MEMORY[0x277D85DE8];
  mSampleRate_low = 0;
  cf = 0;
  value = 0;
  if (gLogCategory_APReceiverAudioSession <= 30 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (!Instance)
  {
    APSLogErrorAt();
    Mutable = 0;
LABEL_377:
    mSampleRate_low = -6728;
    goto LABEL_246;
  }

  *(Instance + 320) = 0;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  Int64 = CFDictionaryGetInt64();
  v13 = CFDictionaryGetInt64();
  v150 = CFDictionaryGetInt64();
  *(v10 + 20) = v13 != 0;
  *(v10 + 24) = a1;
  *(v10 + 216) = 0;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_376:
    APSLogErrorAt();
    goto LABEL_377;
  }

  if (Int64)
  {
    v146 = v10;
    v16 = CFStringCreateF();
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_368;
    }
  }

  else if (v13)
  {
    v146 = v10;
    v16 = CFStringCreateF();
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_368;
    }
  }

  else
  {
    v146 = v10;
    v16 = CFStringCreateF();
    *(v10 + 32) = v16;
    if (mSampleRate_low)
    {
      goto LABEL_368;
    }
  }

  v17 = Int64Ranged;
  CFDictionarySetValue(Mutable, @"RASP::LogPrefix", v16);
  if (!v150)
  {
    v18 = &unk_27E37D000;
    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v18 = &unk_27E37D000;
  if (gLogCategory_APReceiverAudioSession <= 50)
  {
    if (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize())
    {
      v146 = *(v10 + 32);
      LogPrintF();
    }

LABEL_23:
    v19 = v18[944];
    if (v19 <= 50 && (v19 != -1 || _LogCategory_Initialize()))
    {
      v146 = *(v10 + 32);
      LogPrintF();
    }
  }

  CFDictionarySetValue(Mutable, @"RASP::DisablePlatformRendering", *MEMORY[0x277CBED28]);
LABEL_28:
  v20 = *(v10 + 24);
  if (v20 == 103)
  {
    if (!v17)
    {
      *&inSourceFormat.mSampleRate = *a3;
      *&inSourceFormat.mFormatFlags = *(a3 + 12);
      mSampleRate_low = audioSession_setupGhostAudio(v10, &inSourceFormat, a4);
      if (mSampleRate_low)
      {
        goto LABEL_368;
      }

      goto LABEL_138;
    }

    if (!v150 && APSSettingsGetIntWithDefault())
    {
      v24 = v18[944];
      if (v24 <= 50 && (v24 != -1 || _LogCategory_Initialize()))
      {
        v146 = *(v10 + 32);
        LogPrintF();
      }

      if (CFDictionaryGetValue(a4, @"PKDDeviceContext"))
      {
        mSampleRate_low = FigPKDStartAirPlayReceiverSession();
        if (mSampleRate_low)
        {
          goto LABEL_368;
        }

        *(v10 + 272) = 0;
        *(v10 + 280) = CFRetain(0);
      }

      *&inSourceFormat.mSampleRate = *a3;
      *&inSourceFormat.mFormatFlags = *(a3 + 12);
      v38 = APReceiverAudioSessionBufferedHoseCreate(v10, *(v10 + 32), &inSourceFormat, a4, 0, (v10 + 40));
      if (v38)
      {
        v143 = v38;
        APSLogErrorAt();
        mSampleRate_low = v143;
        goto LABEL_368;
      }

      *(v10 + 56) = APReceiverAudioSessionBufferedHoseInvalidate;
      *(v10 + 64) = 0;
      *(v10 + 72) = APReceiverAudioSessionBufferedHoseStartPacketProcesser;
      *(v10 + 80) = APReceiverAudioSessionBufferedHoseStopPacketProcesser;
      *(v10 + 88) = APReceiverAudioSessionBufferedHoseFlushAudio;
      *(v10 + 96) = APReceiverAudioSessionBufferedHoseGetAnchor;
      *(v10 + 104) = APReceiverAudioSessionBufferedHoseSetRate;
      *(v10 + 112) = APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 120) = APReceiverAudioSessionBufferedHoseConvertProgressRTPTimeToSecond;
      *(v10 + 144) = APReceiverAudioSessionBufferedHoseCopyProperty;
      *(v10 + 152) = APReceiverAudioSessionBufferedHoseSetProperty;
      *(v10 + 160) = APReceiverAudioSessionBufferedHoseCopyMetrics;
      *(v10 + 168) = APReceiverAudioSessionBufferedHoseLogEnded;
      *(v10 + 176) = 0;
      *(v10 + 48) = APReceiverAudioSessionBufferedHoseFinalize;
      *(v10 + 184) = APReceiverAudioSessionBufferedHoseApplyVolumeFade;
      *(v10 + 192) = 0;
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      v39 = v18[944];
      if (v39 <= 50 && (v39 != -1 || _LogCategory_Initialize()))
      {
        v146 = *(v10 + 32);
        LogPrintF();
      }

      mSampleRate_low = 0;
      CFDictionarySetValue(Mutable, @"RASP::DisablePlatformRendering", *MEMORY[0x277CBED28]);
      goto LABEL_138;
    }

    v147 = *a3;
    v148 = a3[1];
    v171[0] = *(a3 + 2);
    *(v171 + 10) = *(a3 + 12);
    v23 = *(v10 + 32);
    AudioFormatIndex = 0;
    v157 = 0;
    if (gLogCategory_APReceiverAudioSessionBuffered <= 30 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      v146 = v23;
      LogPrintF();
    }

    v25 = malloc_type_calloc(1uLL, 0x508uLL, 0x10F0040D1BE82D6uLL);
    if (!v25)
    {
      v52 = -72150;
      APSLogErrorAt();
      goto LABEL_387;
    }

    v26 = v25;
    *v25 = v10;
    v25[3] = CFRetain(v23);
    *(v26 + 4) = 103;
    v27 = CFDictionaryGetValue(a4, @"ClientID");
    if (v27)
    {
      v27 = CFRetain(v27);
    }

    v26[4] = v27;
    v158 = APSRTCReportingAgentCreate();
    if (v158)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 90 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        v146 = v26[3];
        LogPrintF();
      }

      v158 = 0;
    }

    else if (gLogCategory_APReceiverAudioSessionBuffered <= 40 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
    {
      v146 = v26[3];
      LogPrintF();
    }

    v28 = FigSimpleMutexCreate();
    v26[141] = v28;
    if (!v28)
    {
      APSLogErrorAt();
      v33 = 0;
      v34 = -72150;
      goto LABEL_128;
    }

    v29 = dispatch_queue_create("APReceiverAudioSessionQueue", 0);
    v26[149] = v29;
    if (!v29 || (v30 = dispatch_queue_create("APReceiverAudioSessionLogQueue", 0), (v26[155] = v30) == 0))
    {
      APSLogErrorAt();
      v33 = 0;
      v158 = APSSignalErrorAt();
      goto LABEL_129;
    }

    *(v26 + 1225) = CFDictionaryGetInt64() != 0;
    if (v158)
    {
      APSLogErrorAt();
      v33 = 0;
      goto LABEL_129;
    }

    if (CFDictionaryGetInt64Ranged() != 1381257248)
    {
      if (gLogCategory_APReceiverAudioSessionBuffered <= 90 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        v146 = v26[3];
        LogPrintF();
      }

      v33 = 0;
      goto LABEL_80;
    }

    if (CFDictionaryContainsKey(a4, @"MediaDataControl"))
    {
      CFArrayGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      Count = CFArrayGetCount(TypedValue);
      if (Count)
      {
        if (Count != 1)
        {
          if (Count != 2)
          {
            v33 = 0;
            v37 = -6705;
            goto LABEL_89;
          }

          CFDataGetTypeID();
          CFArrayGetTypedValueAtIndex();
        }

        CFDataGetTypeID();
        CFArrayGetTypedValueAtIndex();
      }

      v35 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v33 = v35;
      if (!v35)
      {
        APSLogErrorAt();
        v37 = -6728;
        goto LABEL_89;
      }

      v36 = MEMORY[0x277CBED28];
      if (!*(v26 + 1225))
      {
        v36 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v35, @"MDC::AllowP2P", *v36);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      CFDictionarySetValue(v33, @"MDC::Label", @"BUF");
      CFDictionarySetInt64();
      FigCFDictionarySetInt32();
      *&v154 = v10;
      *(&v154 + 1) = audioSession_handleMediaDataControlRequest_6044;
      v155 = 0;
      LOBYTE(inSourceFormat.mSampleRate) = v147;
      BYTE1(inSourceFormat.mSampleRate) = v148;
      *(&inSourceFormat.mSampleRate + 2) = v171[0];
      *&inSourceFormat.mFormatFlags = *(v171 + 10);
      v158 = APMediaDataControlServerCreate(&inSourceFormat, v33, &v154, v26 + 5);
      if (v158)
      {
        goto LABEL_424;
      }

      v18 = &unk_27E37D000;
      if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
      {
        v146 = v26[3];
        LogPrintF();
      }
    }

    else
    {
      v33 = 0;
    }

    *(v26 + 22) = CFDictionaryGetInt64();
    if (v158)
    {
      goto LABEL_419;
    }

    v40 = CFDictionaryGetValue(a4, @"AudioFormat");
    if (v40)
    {
      v41 = CFRetain(v40);
      v26[142] = v41;
      if (v41)
      {
        v42 = (v26 + 142);
        AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
        if (AudioFormatIndex)
        {
          goto LABEL_519;
        }

        v158 = APCompressionTypeToAPAudioFormatIndex();
        if (!v158)
        {
          if (*v42)
          {
            CFRelease(*v42);
            *v42 = 0;
          }

          v158 = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
          if (!v158)
          {
LABEL_519:
            ASBD = APSAudioFormatDescriptionGetASBD();
            if (!v158)
            {
              *(v26 + 27) = APAudioFormatIndexGetBitsPerChannel();
              if (!*(v26 + 22))
              {
                *(v26 + 22) = APAudioFormatIDToAPCompressionType();
              }

              *(v26 + 23) = *ASBD;
              v44 = *(ASBD + 28);
              *(v26 + 24) = v44;
              v45 = *(ASBD + 24);
              *(v26 + 25) = v45;
              if (!v45)
              {
                *(v26 + 25) = (((*(v26 + 27) + 7) & 0xFFFFFFF8) * v44) >> 3;
              }

              v46 = CFDictionaryGetValue(a4, @"NetworkClock");
              v26[143] = v46;
              if (v46)
              {
                v47 = CFGetTypeID(v46);
                if (v47 != APSNetworkClockGetTypeID())
                {
LABEL_416:
                  APSLogErrorAt();
LABEL_80:
                  v34 = -72151;
LABEL_128:
                  v158 = v34;
                  goto LABEL_129;
                }

                v48 = v26[143];
                if (v48)
                {
                  CFRetain(v48);
                }
              }

              *(v26 + 1152) = CFDictionaryGetInt64() != 0;
              if (!v158)
              {
                v49 = CFDictionaryGetValue(a4, @"StatsCollector");
                v26[148] = v49;
                if (v49)
                {
                  CFRetain(v49);
                }

                APTTrafficMetricsCreate();
                v50 = CFDictionaryGetInt64();
                if (v50)
                {
                  v51 = *(v26 + 23) * v50 / 0x3E8u;
                  *(v26 + 116) = v51;
                }

                else
                {
                  *(v26 + 116) = CFDictionaryGetInt64();
                  v51 = CFDictionaryGetInt64();
                }

                *(v26 + 117) = v51;
                *(v26 + 118) = 0;
                *(v26 + 26) = CFDictionaryGetInt64();
                CFDictionaryGetData();
                if (v158 == -6727)
                {
                  v158 = 0;
LABEL_261:
                  v98 = UpTicksPerSecond();
                  v99 = mach_absolute_time();
                  v26[86] = SecondsToUpTicks();
                  v26[87] = v99;
                  v26[100] = 60 * v98;
                  v26[99] = v99 + 60 * v98;
                  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
                  *(v26 + 216) = CFPreferenceNumberWithDefault;
                  v26[102] = v99;
                  v26[103] = v98 * CFPreferenceNumberWithDefault;
                  v26[104] = v98;
                  v26[105] = 0;
                  v26[106] = v99;
                  v26[107] = 10 * v98;
                  inSourceFormat.mSampleRate = 0.0;
                  CMBaseObject = APSNetworkClockGetCMBaseObject();
                  v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v102)
                  {
                    v102(CMBaseObject, *MEMORY[0x277CEA260], v14, &inSourceFormat);
                    mSampleRate = inSourceFormat.mSampleRate;
                  }

                  else
                  {
                    mSampleRate = 0.0;
                  }

                  v104 = *MEMORY[0x277CEA278];
                  if (*&mSampleRate == *MEMORY[0x277CEA278])
                  {
                    v105 = -1;
                  }

                  else
                  {
                    v105 = 4410;
                    if (mSampleRate != 0.0 && v104)
                    {
                      v106 = CFEqual(*&mSampleRate, v104);
                      mSampleRate = inSourceFormat.mSampleRate;
                      if (v106)
                      {
                        v105 = -1;
                      }

                      else
                      {
                        v105 = 4410;
                      }
                    }
                  }

                  if (mSampleRate != 0.0)
                  {
                    CFRelease(*&mSampleRate);
                  }

                  *(v26 + 219) = v105;
                  *(v26 + 219) = FigGetCFPreferenceNumberWithDefault();
                  if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                  {
                    v146 = v26[3];
                    LogPrintF();
                  }

                  *(v26 + 1224) = 1;
                  if (!v158)
                  {
                    if (FigGetCFPreferenceNumberWithDefault())
                    {
                      v107 = ServerSocketOpen();
                      v158 = v107;
                      if (gLogCategory_APReceiverAudioSessionBuffered <= 50)
                      {
                        if (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize())
                        {
                          v146 = v26[3];
                          LogPrintF();
                        }

                        v107 = v158;
                      }
                    }

                    else
                    {
                      v107 = ServerSocketOpen();
                      v158 = v107;
                    }

                    if (!v107)
                    {
                      if (*(v26 + 1225))
                      {
                        SocketSetP2P();
                      }

                      v108 = CFDictionaryGetInt64();
                      *(v26 + 1226) = v108 != 0;
                      if (!v158)
                      {
                        if (!v108)
                        {
                          SocketSetQoS();
                        }

                        v158 = OpenSelfConnectedLoopbackSocket();
                        if (!v158)
                        {
                          v109 = FigGetCFPreferenceNumberWithDefault();
                          if (v109)
                          {
                            *(v26 + 119) = v109;
                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                            {
                              v146 = v26[3];
                              LogPrintF();
                            }
                          }

                          else
                          {
                            v110 = *(v26 + 22);
                            if (v110 == 8 || v110 == 4)
                            {
                              v111 = 5200;
                            }

                            else
                            {
                              v111 = 15034;
                            }

                            *(v26 + 119) = v111;
                          }

                          v112 = FigGetCFPreferenceNumberWithDefault();
                          if (v112)
                          {
                            v26[60] = v112;
                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                            {
                              v146 = v26[3];
                              LogPrintF();
                            }
                          }

                          else
                          {
                            v26[60] = 0xFFFFLL;
                          }

                          v113 = malloc_type_calloc(1uLL, v26[60], 0x100004077774924uLL);
                          v26[61] = v113;
                          if (!v113)
                          {
                            goto LABEL_516;
                          }

                          v114 = FigGetCFPreferenceNumberWithDefault();
                          if (v114)
                          {
                            v26[62] = v114;
                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                            {
                              v146 = v26[3];
                              LogPrintF();
                            }
                          }

                          else
                          {
                            v115 = *(v26 + 22);
                            if (v115 == 8 || v115 == 4)
                            {
                              v116 = 5000000;
                            }

                            else
                            {
                              v116 = 21168000;
                            }

                            v26[62] = v116;
                          }

                          v26[63] = 12;
                          APSAllocatorGetDefaultAirPlayMallocZone();
                          v158 = APSContiguousAllocatorCreate();
                          if (!v158)
                          {
                            v117 = malloc_type_malloc(*(v26 + 119) << 6, 0x10700404D6600FEuLL);
                            v26[64] = v117;
                            if (v117)
                            {
                              v118 = (*(v26 + 119) - 1);
                              if (*(v26 + 119) != 1)
                              {
                                v119 = (v118 + 1) & 0x1FFFFFFFELL;
                                v120 = vdupq_n_s64(v118 - 1);
                                v121 = xmmword_23EAA1810;
                                v122 = v117 + 8;
                                v123 = vdupq_n_s64(1uLL);
                                v124 = vdupq_n_s64(2uLL);
                                do
                                {
                                  v125 = vmovn_s64(vcgeq_u64(v120, v121));
                                  v126 = vaddq_s64(v121, v123);
                                  if (v125.i8[0])
                                  {
                                    *(v122 - 8) = &v117[8 * v126.i64[0]];
                                  }

                                  if (v125.i8[4])
                                  {
                                    *v122 = &v117[8 * v126.i64[1]];
                                  }

                                  v121 = vaddq_s64(v121, v124);
                                  v122 += 16;
                                  v119 -= 2;
                                }

                                while (v119);
                              }

                              v117[8 * v118] = 0;
                              v26[74] = v117;
                              *(v26 + 150) = 0;
                              v26[66] = v26 + 65;
                              v26[65] = v26 + 65;
                              v26[73] = v26 + 65;
                              v127 = FigGetCFPreferenceNumberWithDefault();
                              if (v127)
                              {
                                BufferSize = v127;
                                if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                {
                                  v146 = v26[3];
                                  LogPrintF();
                                }
                              }

                              else
                              {
                                BufferSize = APCompressionTypeGetBufferSize();
                                if (!BufferSize)
                                {
                                  APSLogErrorAt();
                                  v37 = -6735;
                                  goto LABEL_89;
                                }
                              }

                              if (*(v26 + 22) == 1)
                              {
                                goto LABEL_341;
                              }

                              memset(&inSourceFormat, 0, sizeof(inSourceFormat));
                              v129 = APCompressionTypeFillStreamDescription();
                              if (v129)
                              {
                                v144 = v129;
                              }

                              else
                              {
                                LODWORD(v130) = *(v26 + 23);
                                inDestinationFormat.mSampleRate = v130;
                                *&inDestinationFormat.mFormatID = 0xC6C70636DLL;
                                v131 = *(v26 + 24);
                                v132 = *(v26 + 27);
                                inDestinationFormat.mBytesPerPacket = (v132 >> 3) * v131;
                                inDestinationFormat.mFramesPerPacket = 1;
                                inDestinationFormat.mBytesPerFrame = inDestinationFormat.mBytesPerPacket;
                                inDestinationFormat.mChannelsPerFrame = v131;
                                inDestinationFormat.mBitsPerChannel = v132;
                                inDestinationFormat.mReserved = 0;
                                v133 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, v26 + 91);
                                if (v133)
                                {
                                  v144 = v133;
                                }

                                else
                                {
                                  if (inSourceFormat.mFormatID != 1634492771 || (inPropertyData = bswap32(inSourceFormat.mFramesPerPacket), v161 = *(v26 + 27), v162 = 2600, v163 = 14, v134 = *(v26 + 23), v164 = *(v26 + 24), v165 = -256, v160 = 0, v166 = 0, v167 = 0, v168 = bswap32(v134), (v135 = AudioConverterSetProperty(v26[91], 0x646D6763u, 0x18u, &inPropertyData)) == 0))
                                  {
                                    v158 = 0;
LABEL_341:
                                    v26[77] = BufferSize;
                                    v136 = malloc_type_malloc(BufferSize, 0x100004077774924uLL);
                                    v26[76] = v136;
                                    if (v136)
                                    {
                                      v137 = malloc_type_malloc(v26[77], 0x100004077774924uLL);
                                      v26[80] = v137;
                                      if (v137)
                                      {
                                        v26[79] = BufferSize;
                                        v138 = malloc_type_malloc(BufferSize, 0x100004077774924uLL);
                                        v26[78] = v138;
                                        if (v138)
                                        {
                                          gAirPlayAudioStats = xmmword_23EAA1830;
                                          byte_27E37EED0 = 0;
                                          qword_27E37EED8 = 0;
                                          dword_27E37EEE0 = 0;
                                          v139 = CFDictionaryGetValue(a4, @"ReceiverSession");
                                          if (v139)
                                          {
                                            *(v26 + 319) = v139[124];
                                            APSCopyClusterInfo();
                                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                            {
                                              v146 = v26[3];
                                              LogPrintF();
                                            }

                                            v26[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                                            PIDInit();
                                            *(v26 + 1036) = CFDictionaryGetInt64() != 0;
                                            v18 = &unk_27E37D000;
                                            if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                            {
                                              v140 = v26[3];
                                              if (APSAudioFormatDescriptionGetAudioFormatIndex() != 6
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 10
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 11
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 15
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 18
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 22
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 24
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 2
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 3
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 4
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 5
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 7
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 8
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 9
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 12
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 13
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 14
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 16
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 17
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 45
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 46
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 44
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 38
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 78
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 80
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 82
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 84
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 93
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 47
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 48
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 79
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 81
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 83
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 69
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 94
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 85
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 19
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 20
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 86
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 21
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 40
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 39
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 90
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 23
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 42
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 41
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 25
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 26
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 27
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 28
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 29
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 30
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 31
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 32
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 43
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 49
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 50
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 51
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 52
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 53
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 54
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 55
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 56
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 57
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 58
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 60
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 89
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 61
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 62
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 63
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 33
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 34
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 35
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 87
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 88
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 91
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 64
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 65
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 66
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 67
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 76
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 77
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 68
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 92
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 70
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 71
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 72
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 73
                                                && APSAudioFormatDescriptionGetAudioFormatIndex() != 74)
                                              {
                                                APSAudioFormatDescriptionGetAudioFormatIndex();
                                              }

                                              v146 = v140;
                                              LogPrintF();
                                            }

                                            v26[83] = 8;
                                            v145 = malloc_type_calloc(1uLL, 8uLL, 0xED05D5E3uLL);
                                            v26[82] = v145;
                                            if (v145)
                                            {
                                              *(v26 + 1228) = CFPrefs_GetInt64() != 0;
                                              *(v26 + 1124) = 0;
                                              if (gLogCategory_APReceiverAudioSessionBuffered <= 50 && (gLogCategory_APReceiverAudioSessionBuffered != -1 || _LogCategory_Initialize()))
                                              {
                                                v146 = v26[3];
                                                LogPrintF();
                                              }

                                              APTTrafficMetricsConnectionFormed();
                                              *(v10 + 40) = v26;
                                              if (!v33)
                                              {
LABEL_131:
                                                v52 = v158;
                                                if (!v158)
                                                {
                                                  *(v10 + 56) = 0;
                                                  *(v10 + 64) = APReceiverAudioSessionBufferedSetSecurityInfo;
                                                  *(v10 + 72) = APReceiverAudioSessionBufferedStartPacketProcesser;
                                                  *(v10 + 80) = APReceiverAudioSessionBufferedStopPacketProcesser;
                                                  *(v10 + 96) = 0;
                                                  *(v10 + 104) = 0;
                                                  *(v10 + 88) = APReceiverAudioSessionBufferedFlushAudio;
                                                  *(v10 + 112) = APReceiverAudioSessionBufferedSetRateAndAnchorTime;
                                                  *(v10 + 120) = APReceiverAudioSessionBufferedConvertProgressRTPTimeToSecond;
                                                  *(v10 + 128) = APReceiverAudioSessionBufferedReadAudio;
                                                  *(v10 + 136) = APReceiverAudioSessionBufferedUpdateLatency;
                                                  *(v10 + 144) = APReceiverAudioSessionBufferedCopyProperty;
                                                  *(v10 + 152) = APReceiverAudioSessionBufferedSetProperty;
                                                  *(v10 + 160) = APReceiverAudioSessionBufferedCopyMetrics;
                                                  *(v10 + 168) = APReceiverAudioSessionBufferedLogEnded;
                                                  *(v10 + 48) = APReceiverAudioSessionBufferedFinalize;
                                                  *(v10 + 176) = APReceiverAudioSessionBufferedCopyAudioBufferInfo;
                                                  *(v10 + 184) = 0u;
                                                  *(v10 + 200) = 0u;
                                                  v53 = v18[944];
                                                  if (v53 > 50 || v53 == -1 && !_LogCategory_Initialize())
                                                  {
                                                    goto LABEL_137;
                                                  }

                                                  v146 = *(v10 + 32);
LABEL_135:
                                                  LogPrintF();
LABEL_137:
                                                  mSampleRate_low = 0;
                                                  goto LABEL_138;
                                                }

LABEL_387:
                                                APSLogErrorAt();
                                                mSampleRate_low = v52;
                                                goto LABEL_368;
                                              }

LABEL_130:
                                              CFRelease(v33);
                                              goto LABEL_131;
                                            }

                                            goto LABEL_516;
                                          }

                                          APSLogErrorAt();
                                          v158 = APSSignalErrorAt();
LABEL_90:
                                          v18 = &unk_27E37D000;
                                          goto LABEL_129;
                                        }
                                      }
                                    }

                                    APSLogErrorAt();
                                    v37 = -72150;
LABEL_89:
                                    v158 = v37;
                                    goto LABEL_90;
                                  }

                                  v144 = v135;
                                }
                              }

                              APSLogErrorAt();
                              v158 = v144;
LABEL_424:
                              APSLogErrorAt();
                              goto LABEL_90;
                            }

LABEL_516:
                            APSLogErrorAt();
                            v34 = -6728;
                            goto LABEL_128;
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_419;
                }

                if (!v158)
                {
                  if (v157 == 32)
                  {
                    for (i = 112; i != 416; ++i)
                    {
                      *(v26 + i) = 0;
                    }

                    __memcpy_chk();
                    *(v26 + 112) = 1;
                    goto LABEL_261;
                  }

                  goto LABEL_416;
                }
              }
            }
          }
        }

LABEL_419:
        APSLogErrorAt();
LABEL_129:
        free(v26);
        if (!v33)
        {
          goto LABEL_131;
        }

        goto LABEL_130;
      }
    }

    else
    {
      v26[142] = 0;
    }

    APSLogErrorAt();
    v34 = -6705;
    goto LABEL_128;
  }

  if (v20 == 96)
  {
    if (v17)
    {
      *&inSourceFormat.mSampleRate = *a2;
      *&inSourceFormat.mFormatFlags = *(a2 + 12);
      *&inDestinationFormat.mSampleRate = *a3;
      *&inDestinationFormat.mFormatFlags = *(a3 + 12);
      v21 = APReceiverAudioSessionRealTimeCreate(v10, *(v10 + 32), &inSourceFormat, &inDestinationFormat, a4, (v10 + 40));
      if (v21)
      {
        v142 = v21;
        APSLogErrorAt();
        mSampleRate_low = v142;
        goto LABEL_368;
      }

      *(v10 + 56) = APReceiverAudioSessionRealTimeInvalidate;
      *(v10 + 64) = APReceiverAudioSessionRealTimeSetSecurityInfo;
      *(v10 + 72) = APReceiverAudioSessionRealTimeStartPacketProcesser;
      *(v10 + 80) = APReceiverAudioSessionRealTimeStopPacketProcesser;
      *(v10 + 88) = APReceiverAudioSessionRealTimeFlushAudio;
      *(v10 + 96) = 0;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 120) = APReceiverAudioSessionRealTimeConvertProgressRTPTimeToSecond;
      *(v10 + 128) = APReceiverAudioSessionRealTimeReadAudio;
      *(v10 + 136) = APReceiverAudioSessionRealTimeUpdateLatency;
      *(v10 + 144) = APReceiverAudioSessionRealTimeCopyProperty;
      *(v10 + 152) = APReceiverAudioSessionRealTimeSetProperty;
      *(v10 + 160) = APReceiverAudioSessionRealTimeCopyMetrics;
      *(v10 + 168) = APReceiverAudioSessionRealTimeLogEnded;
      *(v10 + 48) = APReceiverAudioSessionRealTimeFinalize;
      *(v10 + 176) = APReceiverAudioSessionRealTimeCopyAudioBufferInfo;
      *(v10 + 184) = 0u;
      *(v10 + 200) = 0u;
      v22 = v18[944];
      if (v22 > 50 || v22 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_137;
      }

      v146 = *(v10 + 32);
      goto LABEL_135;
    }

    *&inSourceFormat.mSampleRate = *a3;
    *&inSourceFormat.mFormatFlags = *(a3 + 12);
    mSampleRate_low = audioSession_setupGhostAudio(v10, &inSourceFormat, a4);
    if (mSampleRate_low)
    {
      goto LABEL_368;
    }
  }

LABEL_138:
  v54 = v18[944];
  if (v54 <= 50 && (v54 != -1 || _LogCategory_Initialize()))
  {
    v146 = *(v10 + 32);
    LogPrintF();
  }

  CFDictionaryGetTypeID();
  v55 = CFDictionaryGetTypedValue();
  CFDictionarySetInt64();
  v58 = APReceiverAudioSessionCopyProperty(v10, v56, @"AudioFormat", v57, &mSampleRate_low);
  cf = v58;
  if (mSampleRate_low)
  {
    goto LABEL_368;
  }

  CFDictionarySetValue(Mutable, @"RASP::AudioFormat", v58);
  if (CFDictionaryGetValueIfPresent(a4, @"ReceiverSession", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::ReceiverSession", value);
  }

  if (CFDictionaryGetValueIfPresent(a4, @"IsMedia", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::IsMedia", value);
  }

  if (!CFDictionaryGetValueIfPresent(a4, @"NetworkClock", &value))
  {
    v59 = 0;
    goto LABEL_165;
  }

  v59 = value;
  v60 = APSNetworkClockGetCMBaseObject();
  v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v61)
  {
    v61(v60, *MEMORY[0x277CEA260], v14, &value);
  }

  v62 = value;
  v63 = *MEMORY[0x277CEA268];
  if (value == *MEMORY[0x277CEA268])
  {
    goto LABEL_154;
  }

  if (value && v63)
  {
    if (CFEqual(value, v63))
    {
LABEL_154:
      v64 = @"NTP";
LABEL_162:
      CFDictionarySetValue(Mutable, @"RASP::TimingProtocol", v64);
      goto LABEL_163;
    }

    v62 = value;
  }

  v65 = *MEMORY[0x277CEA278];
  if (v62 == *MEMORY[0x277CEA278] || v62 && v65 && CFEqual(v62, v65))
  {
    v64 = @"PTP";
    goto LABEL_162;
  }

LABEL_163:
  if (value)
  {
    CFRelease(value);
  }

LABEL_165:
  if (CFDictionaryGetValueIfPresent(a4, @"UsingScreen", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::UsingScreen", value);
  }

  if (CFDictionaryGetValueIfPresent(v55, @"audioLoopback", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioLookback", value);
  }

  if (CFDictionaryGetValueIfPresent(v55, @"audioType", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioType", value);
  }

  if (CFDictionaryGetValueIfPresent(v55, @"audioMode", &value))
  {
    CFDictionarySetValue(Mutable, @"RASP::AudioMode", value);
  }

  FigCFDictionarySetValueFromKeyInDict();
  if (!APSAudioFormatDescriptionGetAudioFormatIndex())
  {
    if (v58)
    {
      CFRelease(v58);
      cf = 0;
    }

    mSampleRate_low = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
    if (mSampleRate_low)
    {
      goto LABEL_368;
    }
  }

  APSAudioFormatDescriptionGetAudioFormatIndex();
  mSampleRate_low = APAudioFormatIndexToPCMASBD();
  if (mSampleRate_low)
  {
    goto LABEL_368;
  }

  LODWORD(inSourceFormat.mSampleRate) = 0;
  v66 = CFDictionaryGetValue(Mutable, @"RASP::LogPrefix");
  v67 = CFGetTypeID(v10);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v67 != gAPReceiverAudioSessionTypeID)
  {
    v141 = -6705;
LABEL_367:
    APSLogErrorAt();
    mSampleRate_low = v141;
LABEL_368:
    APSLogErrorAt();
    goto LABEL_246;
  }

  v68 = CFGetTypeID(Mutable);
  if (v68 != CFDictionaryGetTypeID())
  {
    v141 = -6705;
    goto LABEL_367;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    v146 = v66;
    LogPrintF();
  }

  if (gAPReceiverAudioSessionPlatformInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionPlatformInitOnce, 0, _APReceiverAudioSessionPlatformGetTypeID);
  }

  v69 = _CFRuntimeCreateInstance();
  if (!v69)
  {
    v141 = -6728;
    goto LABEL_367;
  }

  v70 = v69;
  *(v69 + 16) = 0u;
  v71 = (v69 + 16);
  *(v69 + 256) = 0;
  *(v69 + 224) = 0u;
  *(v69 + 240) = 0u;
  *(v69 + 192) = 0u;
  *(v69 + 208) = 0u;
  *(v69 + 160) = 0u;
  *(v69 + 176) = 0u;
  *(v69 + 128) = 0u;
  *(v69 + 144) = 0u;
  *(v69 + 96) = 0u;
  *(v69 + 112) = 0u;
  *(v69 + 64) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  v72 = APSSettingsGetInt64();
  v73 = APSSettingsGetInt64();
  v74 = v71[3];
  if (v66)
  {
    CFRetain(v66);
  }

  *(v70 + 40) = v66;
  if (v74)
  {
    CFRelease(v74);
  }

  *(v70 + 24) = v10;
  if (gAirPlayReceiverSessionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverSessionInitOnce, 0, _GetTypeID_6322);
  }

  *v71 = CFDictionaryGetTypedValue();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_381;
  }

  *(v70 + 48) = CFDictionaryGetInt64();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_381;
  }

  v75 = CFDictionaryGetValue(Mutable, @"RASP::AudioFormat");
  if (v75)
  {
    v75 = CFRetain(v75);
  }

  *(v70 + 56) = v75;
  v76 = (v70 + 56);
  if (!APSAudioFormatDescriptionGetAudioFormatIndex())
  {
    if (*v76)
    {
      CFRelease(*v76);
      *v76 = 0;
    }

    LODWORD(inSourceFormat.mSampleRate) = APSAudioFormatDescriptionCreateWithAudioFormatIndex();
    if (LODWORD(inSourceFormat.mSampleRate))
    {
      goto LABEL_381;
    }
  }

  APSAudioFormatDescriptionGetAudioFormatIndex();
  LODWORD(inSourceFormat.mSampleRate) = APAudioFormatIndexToPCMASBD();
  if (LODWORD(inSourceFormat.mSampleRate))
  {
    goto LABEL_381;
  }

  *(v70 + 64) = CFDictionaryGetInt64() != 0;
  *(v70 + 69) = CFDictionaryGetInt64() != 0;
  CFStringGetTypeID();
  v77 = CFDictionaryGetTypedValue();
  if (v77 && !CFEqual(v77, @"NTP"))
  {
    v80 = 0;
  }

  else
  {
    v78 = *(v70 + 48);
    v80 = v78 == 96 || v78 == 103;
  }

  *(v70 + 65) = v80;
  CFObjectGetPropertyDoubleSync();
  APSVolumeConvertDBToLinearGain();
  *(v70 + 236) = v81;
  v82 = *(v70 + 48);
  v84 = v82 == 96 || v82 == 103;
  *(v70 + 68) = v84;
  *(v70 + 66) = 0;
  CFStringGetTypeID();
  v85 = CFDictionaryGetTypedValue();
  if (v85)
  {
    if ((v86 = v85, v72) && CFEqual(v85, @"speechRecognition") || v73 && CFEqual(v86, @"telephony"))
    {
      *(v70 + 66) = 1;
    }
  }

  *(v70 + 67) = 0;
  CFStringGetTypeID();
  v87 = CFDictionaryGetTypedValue();
  if (v87 && CFEqual(v87, @"moviePlayback"))
  {
    *(v70 + 67) = 1;
  }

  v88 = CFDictionaryGetInt64();
  if (LODWORD(inSourceFormat.mSampleRate) || (!v88 ? (v89 = +[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager, "ambientSessionManager", v146)) : (v89 = +[APAVAudioSessionManager mediaSessionManager]), (*(v70 + 32) = v89, *(v70 + 67)) ? (v90 = @"moviePlayback") : (v90 = @"default"), _UpdateAVAudioSessionAudioMode_5424(v70, v90), (LODWORD(inSourceFormat.mSampleRate) = _MainAudioEnsureSetup(v70, Mutable)) != 0))
  {
LABEL_381:
    APSLogErrorAt();
    APReceiverAudioSessionPlatformFinalize(v70);
    mSampleRate_low = LODWORD(inSourceFormat.mSampleRate);
    if (LODWORD(inSourceFormat.mSampleRate))
    {
      goto LABEL_368;
    }
  }

  else
  {
    *(v10 + 216) = v70;
    mSampleRate_low = 0;
  }

  if (!v150)
  {
    goto LABEL_244;
  }

  if (v59)
  {
    v91 = CFRetain(v59);
  }

  else
  {
    v91 = 0;
  }

  *(v10 + 320) = v91;
  v92 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v93 = dispatch_queue_create("APReceiverAudioSessionSink", v92);
  *(v10 + 288) = v93;
  if (!v93)
  {
    goto LABEL_376;
  }

  v94 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v93);
  *(v10 + 296) = v94;
  if (!v94)
  {
    goto LABEL_376;
  }

  dispatch_set_context(v94, v10);
  dispatch_source_set_event_handler_f(*(v10 + 296), audioSession_sinkTimer);
  dispatch_source_set_timer(*(v10 + 296), 0, 0x1312D00uLL, 0);
  v95 = audioSession_getCurrentNetworkTime(v10, 0) * *(v10 + 224);
  *(v10 + 304) = v95;
  *(v10 + 312) = v95;
  dispatch_resume(*(v10 + 296));
LABEL_244:
  if (a5)
  {
    *a5 = v10;
    v10 = 0;
  }

LABEL_246:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return mSampleRate_low;
}

uint64_t audioSession_setupGhostAudio(uint64_t a1, _OWORD *a2, CFTypeRef cf)
{
  v3 = *(a1 + 32);
  *v19 = *a2;
  *&v19[12] = *(a2 + 12);
  v23 = 0;
  if (!v3)
  {
    v16 = 4294960591;
LABEL_31:
    APSLogErrorAt();
    goto LABEL_32;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    v16 = 4294960591;
    goto LABEL_31;
  }

  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x1060040987D7E9EuLL);
  if (!v7)
  {
    v16 = 4294895146;
    goto LABEL_31;
  }

  v8 = v7;
  *(v7 + 32) = 0;
  *v7 = CFDictionaryGetInt64Ranged();
  if (v23)
  {
    goto LABEL_42;
  }

  v8[1] = a1;
  v8[2] = CFRetain(v3);
  Value = CFDictionaryGetValue(cf, @"AudioFormat");
  if (!Value)
  {
    APSLogErrorAt();
    goto LABEL_35;
  }

  v8[3] = CFRetain(Value);
  if (CFDictionaryGetInt64Ranged())
  {
    APSLogErrorAt();
    v23 = -72151;
    if (gLogCategory_APReceiverAudioSessionGhost <= 90 && (gLogCategory_APReceiverAudioSessionGhost != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_43;
  }

  if (!CFDictionaryContainsKey(cf, @"MediaDataControl"))
  {
    v13 = 0;
    goto LABEL_19;
  }

  Int64 = CFDictionaryGetInt64();
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (v23)
  {
LABEL_42:
    APSLogErrorAt();
LABEL_43:
    v13 = 0;
    goto LABEL_37;
  }

  Count = CFArrayGetCount(TypedValue);
  if (!Count)
  {
    goto LABEL_15;
  }

  if (Count != 1)
  {
    if (Count == 2)
    {
      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
      goto LABEL_13;
    }

LABEL_35:
    v13 = 0;
    v18 = -6705;
LABEL_36:
    v23 = v18;
    goto LABEL_37;
  }

LABEL_13:
  CFDataGetTypeID();
  CFArrayGetTypedValueAtIndex();
LABEL_15:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v18 = -6728;
    goto LABEL_36;
  }

  v15 = MEMORY[0x277CBED28];
  if (!Int64)
  {
    v15 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MDC::AllowP2P", *v15);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v13, @"MDC::Label", @"GHOST");
  CFDictionarySetInt64();
  FigCFDictionarySetInt32();
  *&v21 = a1;
  *(&v21 + 1) = audioSession_handleMediaDataControlRequest_3715;
  v22 = 0;
  v20[0] = *v19;
  *(v20 + 12) = *&v19[12];
  v23 = APMediaDataControlServerCreate(v20, v13, &v21, v8 + 5);
  if (!v23)
  {
LABEL_19:
    *(a1 + 40) = v8;
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  APSLogErrorAt();
LABEL_37:
  APReceiverAudioSessionGhostFinalize(v8);
  if (v13)
  {
LABEL_20:
    CFRelease(v13);
  }

LABEL_21:
  v16 = v23;
  if (v23)
  {
LABEL_32:
    APSLogErrorAt();
    return v16;
  }

  *(a1 + 48) = APReceiverAudioSessionGhostFinalize;
  *(a1 + 56) = 0;
  *(a1 + 64) = APReceiverAudioSessionGhostSetSecurityInfo;
  *(a1 + 72) = APReceiverAudioSessionGhostStartPacketProcesser;
  *(a1 + 80) = APReceiverAudioSessionGhostStopPacketProcesser;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = APReceiverAudioSessionGhostFlushAudio;
  *(a1 + 112) = APReceiverAudioSessionGhostSetRateAndAnchorTime;
  *(a1 + 120) = APReceiverAudioSessionGhostConvertProgressRTPTimeToSecond;
  *(a1 + 128) = APReceiverAudioSessionGhostReadAudio;
  *(a1 + 136) = APReceiverAudioSessionGhostUpdateLatency;
  *(a1 + 144) = APReceiverAudioSessionGhostCopyProperty;
  *(a1 + 152) = APReceiverAudioSessionGhostSetProperty;
  *(a1 + 160) = APReceiverAudioSessionGhostCopyMetrics;
  *(a1 + 168) = APReceiverAudioSessionGhostLogEnded;
  *(a1 + 176) = APReceiverAudioSessionGhostCopyAudioBufferInfo;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  if (gLogCategory_APReceiverAudioSession <= 50 && (gLogCategory_APReceiverAudioSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

CFNumberRef APReceiverAudioSessionCopyProperty(const __CFNumber *a1, int a2, __CFString *cf1, uint64_t a4, _DWORD *a5)
{
  v6 = a1;
  v18 = 0;
  if (a1)
  {
    if (cf1)
    {
      if (cf1 == @"AirPlayArrivalToRenderLatencyMs" || CFEqual(cf1, @"AirPlayArrivalToRenderLatencyMs"))
      {
        valuePtr = 0;
        v18 = audioSession_airPlayArrivalToRenderLatencyMs(v6, &valuePtr);
        if (!v18)
        {
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          if (v6)
          {
            goto LABEL_7;
          }

LABEL_38:
          APSLogErrorAt();
          v14 = -6728;
          goto LABEL_39;
        }

LABEL_36:
        APSLogErrorAt();
LABEL_37:
        v6 = 0;
        goto LABEL_7;
      }

      if (cf1 == @"WifiArrivalToRenderLatencyMs" || CFEqual(cf1, @"WifiArrivalToRenderLatencyMs"))
      {
        valuePtr = 0;
        IntWithDefault = APSSettingsGetIntWithDefault();
        v18 = audioSession_airPlayArrivalToRenderLatencyMs(v6, &valuePtr);
        if (!v18)
        {
          v16 = valuePtr + IntWithDefault;
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &v16);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        goto LABEL_36;
      }

      if (cf1 == @"IsMedia" || CFEqual(cf1, @"IsMedia"))
      {
        v10 = MEMORY[0x277CBED28];
        if (!*(v6 + 20))
        {
          v10 = MEMORY[0x277CBED10];
        }

        v11 = *v10;
      }

      else
      {
        if (cf1 == @"PlatformIOBufferSize" || CFEqual(cf1, @"PlatformIOBufferSize"))
        {
          v13 = atomic_load(v6 + 66);
          valuePtr = v13;
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        if (cf1 == @"StreamType" || CFEqual(cf1, @"StreamType"))
        {
          v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, v6 + 24);
          if (v6)
          {
            goto LABEL_7;
          }

          goto LABEL_38;
        }

        if (cf1 != @"PKDReceiverContext" && !CFEqual(cf1, @"PKDReceiverContext"))
        {
          v15 = *(v6 + 18);
          if (!v15)
          {
            APSLogErrorAt();
            v6 = 0;
            v14 = -12782;
            goto LABEL_39;
          }

          v12 = v15(*(v6 + 5), cf1, &v18);
LABEL_21:
          v6 = v12;
          goto LABEL_7;
        }

        v11 = *(v6 + 35);
        if (!v11)
        {
          goto LABEL_37;
        }
      }

      v12 = CFRetain(v11);
      goto LABEL_21;
    }

    APSLogErrorAt();
    v6 = 0;
    v14 = -72151;
  }

  else
  {
    APSLogErrorAt();
    v14 = -72152;
  }

LABEL_39:
  v18 = v14;
LABEL_7:
  if (a5)
  {
    *a5 = v18;
  }

  return v6;
}

double audioSession_getCurrentNetworkTime(uint64_t a1, uint64_t *a2)
{
  v4 = mach_absolute_time();
  v10 = *MEMORY[0x277CEA280];
  v11 = *(MEMORY[0x277CEA280] + 16);
  UpTicksToSecondsF();
  v6 = v5;
  v7 = *(a1 + 320);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v8 || v8(v7, v4, &v10))
    {
      APSLogErrorAt();
      if (!a2)
      {
        return v6;
      }

      goto LABEL_6;
    }

    v6 = v11 + *(&v10 + 1) * 5.42101086e-20;
  }

  if (a2)
  {
LABEL_6:
    *a2 = v4;
  }

  return v6;
}

void audioSession_sinkTimer(uint64_t a1)
{
  v12 = 0;
  CurrentNetworkTime = audioSession_getCurrentNetworkTime(a1, &v12);
  v3 = *(a1 + 224);
  v4 = *(a1 + 312);
  v5 = *(a1 + 304);
  v6 = *(a1 + 248);
  if (dispatch_source_get_data(*(a1 + 296)))
  {
    v7 = (CurrentNetworkTime * v3);
    v8 = (v7 - v4) * v6;
    v9 = malloc_type_malloc(v8, 0xED26B195uLL);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 128);
      if (!v11 || v11(*(a1 + 40), (v4 - v5), v12, v9, v8))
      {
        APSLogErrorAt();
      }

      else
      {
        *(a1 + 312) = v7;
      }

      free(v10);
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

uint64_t APReceiverAudioSessionReadAudio(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      v3 = *(a1 + 40);

      return v2(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }
}

uint64_t audioSession_airPlayArrivalToRenderLatencyMs(uint64_t a1, _DWORD *a2)
{
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  *a2 = ((*(a1 + 224) * 0.5 + (1000 * (CFObjectGetPropertyInt64Sync() + PropertyInt64Sync))) / *(a1 + 224));
  return 0;
}

uint64_t APReceiverAudioSessionApplyVolumeFade(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (a1)
  {
    time1 = *a3;
    v10 = **&MEMORY[0x277CC08F0];
    result = CMTimeCompare(&time1, &v10);
    if (result <= 0)
    {
      return APSLogErrorAt();
    }

    else
    {
      v8 = *(a1 + 184);
      if (v8)
      {
        v9 = *(a1 + 40);
        time1 = *a3;
        return v8(v9, a2, &time1);
      }
    }
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

uint64_t APReceiverAudioSessionSetProperty(uint64_t a1, __CFString *cf1, uint64_t a3)
{
  if (!a1)
  {
    v6 = 4294895144;
    APSLogErrorAt();
    return v6;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (cf1 == @"PlatformIOBufferSize" || CFEqual(cf1, @"PlatformIOBufferSize"))
  {
    v6 = 0;
    atomic_store(CFGetInt64Ranged(), (a1 + 264));
    return v6;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    APSLogErrorAt();
    return 4294954514;
  }

  v9 = *(a1 + 40);

  return v8(v9, cf1, a3);
}