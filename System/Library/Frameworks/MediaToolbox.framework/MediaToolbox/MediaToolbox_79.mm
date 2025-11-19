uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  if (v4 && *(DerivedStorage + 56))
  {
    v5 = *(a2 + 16);
    v7[0] = *a2;
    v7[1] = v5;
    v8 = *(a2 + 32);
    v4(v7);
  }

  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 328);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererFreeLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 32) = a2;
  return 0;
}

uint64_t FigCaptionRendererFreeLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendererFreeLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigFairPlayAirPlaySessionCreateWithProtectionInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [FigCPEFPAirPlaySession alloc];
  v7 = [a3 objectForKey:@"RouteInfo"];
  v8 = [a3 objectForKey:@"EndpointPlaybackSession"];
  v9 = [a3 objectForKey:@"MediaControlUUID"];

  return [(FigCPEFPAirPlaySession *)v6 initWithFairPlayContext:a1 protectionInfo:a2 routeInfo:v7 playbackSession:v8 mediaControlUUID:v9];
}

uint64_t FigFairPlayAirPlaySessionCreateWithContentInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [FigCPEFPAirPlaySession alloc];
  v7 = [a3 objectForKey:@"RouteInfo"];
  v8 = [a3 objectForKey:@"EndpointPlaybackSession"];
  v9 = [a3 objectForKey:@"MediaControlUUID"];

  return [(FigCPEFPAirPlaySession *)v6 initWithFairPlayContext:a1 contentInfo:a2 routeInfo:v7 playbackSession:v8 mediaControlUUID:v9];
}

void FigFairPlayAirPlaySessionDestroy(void *a1)
{
  [a1 endSession];
}

uint64_t FigFairPlayAirPlaySessionBeginAsync(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigFairPlayAirPlaySessionBeginAsync_block_invoke;
  v4[3] = &unk_1E74998A8;
  v4[4] = a3;
  [a1 beginSessionWithCompletionQueue:a2 completionHandler:v4];
  return 0;
}

void authorizeItemCompletionHandler(CFTypeRef cf, CFTypeRef a2, int a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(*a4 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __authorizeItemCompletionHandler_block_invoke;
  v9[3] = &__block_descriptor_60_e5_v8__0l;
  v9[4] = a4;
  v9[5] = cf;
  v9[6] = a2;
  v10 = a3;
  dispatch_async(v8, v9);
}

void __authorizeItemCompletionHandler_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [**(a1 + 32) authorizeItemCompletionHandler_objc:*(a1 + 32) picData:*(a1 + 40) playerGUID:*(a1 + 48) error:*(a1 + 56)];

  dispatch_release(*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  if (v3[1])
  {
    CFRelease(v3[1]);
    v3 = *(a1 + 32);
  }

  free(v3);
  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t OUTLINED_FUNCTION_1_202(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return [v6 countByEnumeratingWithState:va objects:v7 - 232 count:16];
}

BOOL FigSpeedRampIsCMTimeMappingArrayDataContinuous(const __CFData *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v46.value = *BytePtr;
  v4 = *(BytePtr + 3);
  v46.timescale = *(BytePtr + 2);
  v5 = *(BytePtr + 2);
  v6 = MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 12);
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v9 = v7 & 0x1F;
  v10 = (v4 & 0x1F) == 3 || v9 == 3;
  if (!v10 || (memset(&time1, 0, 24), rhs.epoch = v8, lhs.value = v46.value, lhs.timescale = v46.timescale, lhs.flags = v4, lhs.epoch = v5, rhs.value = *MEMORY[0x1E6960CC0], rhs.timescale = *(MEMORY[0x1E6960CC0] + 8), rhs.flags = v7, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time) > 0))
  {
    time1.start.value = v46.value;
    time1.start.timescale = v46.timescale;
    time1.start.flags = v4;
    time1.start.epoch = v5;
    time.value = *v6;
    time.timescale = *(v6 + 8);
    time.flags = v7;
    time.epoch = v8;
    if (CMTimeCompare(&time1.start, &time))
    {
      return 0;
    }
  }

  if ((v46.value = *(BytePtr + 6), v11 = *(BytePtr + 15), v46.timescale = *(BytePtr + 14), v12 = *(BytePtr + 8), (v11 & 0x1F) != 3) && v9 != 3 || (memset(&time1, 0, 24), v13 = *(BytePtr + 6), rhs.epoch = v8, lhs.value = v13, lhs.timescale = *(BytePtr + 14), lhs.flags = v11, lhs.epoch = v12, rhs.value = *v6, rhs.timescale = *(v6 + 8), rhs.flags = v7, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1.start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &time) > 0))
  {
    time1.start.value = v46.value;
    time1.start.timescale = v46.timescale;
    time1.start.flags = v11;
    time1.start.epoch = v12;
    time.value = *v6;
    time.timescale = *(v6 + 8);
    time.flags = v7;
    time.epoch = v8;
    if (CMTimeCompare(&time1.start, &time))
    {
      return 0;
    }
  }

  v14 = *(BytePtr + 9);
  if ((v14 & 0x1D) != 1)
  {
    return 0;
  }

  v46.value = *(BytePtr + 3);
  v46.timescale = *(BytePtr + 8);
  v15 = *(BytePtr + 5);
  if ((~v14 & 3) == 0 || v9 == 3)
  {
    memset(&time1, 0, 24);
    v16 = *(BytePtr + 3);
    rhs.epoch = v8;
    lhs.value = v16;
    lhs.timescale = *(BytePtr + 8);
    lhs.flags = v14;
    lhs.epoch = v15;
    rhs.value = *v6;
    rhs.timescale = *(v6 + 8);
    rhs.flags = v7;
    CMTimeSubtract(&time, &lhs, &rhs);
    CMTimeAbsoluteValue(&time1.start, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1.start;
    if (CMTimeCompare(&lhs, &time) <= 0)
    {
      return 0;
    }
  }

  time1.start.value = v46.value;
  time1.start.timescale = v46.timescale;
  time1.start.flags = v14;
  time1.start.epoch = v15;
  v17 = *v6;
  time.value = *v6;
  v18 = *(v6 + 8);
  time.timescale = v18;
  time.flags = v7;
  time.epoch = v8;
  if (CMTimeCompare(&time1.start, &time) < 1)
  {
    return 0;
  }

  v19 = *(BytePtr + 21);
  if ((v19 & 0x1D) != 1)
  {
    return 0;
  }

  v46.value = *(BytePtr + 9);
  v46.timescale = *(BytePtr + 20);
  v20 = *(BytePtr + 11);
  if ((~v19 & 3) == 0 || v9 == 3)
  {
    memset(&time1, 0, 24);
    v21 = *(BytePtr + 9);
    rhs.epoch = v8;
    lhs.value = v21;
    lhs.timescale = *(BytePtr + 20);
    lhs.flags = v19;
    lhs.epoch = v20;
    rhs.value = v17;
    rhs.timescale = v18;
    rhs.flags = v7;
    CMTimeSubtract(&time, &lhs, &rhs);
    CMTimeAbsoluteValue(&time1.start, &time);
    CMTimeMake(&time, 1, 1000000000);
    lhs = time1.start;
    if (CMTimeCompare(&lhs, &time) <= 0)
    {
      return 0;
    }
  }

  time1.start.value = v46.value;
  time1.start.timescale = v46.timescale;
  time1.start.flags = v19;
  time1.start.epoch = v20;
  time.value = v17;
  time.timescale = v18;
  time.flags = v7;
  time.epoch = v8;
  if (CMTimeCompare(&time1.start, &time) < 1)
  {
    return 0;
  }

  if (Length >= 0xC0)
  {
    v22 = 0;
    v24 = (BytePtr + 184);
    v38 = 1 - Length / 0x60;
    v39 = Length / 0x60;
    v25 = 2;
    do
    {
      v26 = *(v24 - 23);
      v27 = *(v24 - 19);
      *&time1.start.epoch = *(v24 - 21);
      *&time1.duration.timescale = v27;
      *&time1.start.value = v26;
      CMTimeRangeGetEnd(&v46, &time1);
      v44 = *(v24 - 11);
      v28 = *(v24 - 19);
      v45 = *(v24 - 20);
      v29 = *(v24 - 9);
      if ((v46.flags & 0x1F) == 3 || (v28 & 0x1F) == 3)
      {
        memset(&time1, 0, 24);
        lhs = v46;
        rhs.value = v44;
        rhs.timescale = v45;
        rhs.flags = v28;
        rhs.epoch = v29;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          goto LABEL_47;
        }
      }

      time1.start = v46;
      time.value = v44;
      time.timescale = v45;
      time.flags = v28;
      time.epoch = v29;
      if (CMTimeCompare(&time1.start, &time))
      {
        break;
      }

LABEL_47:
      v46.value = *(v24 - 8);
      v46.timescale = *(v24 - 14);
      v30 = *(v24 - 13);
      v31 = *(v24 - 6);
      if ((v30 & 0x1F) == 3 || v9 == 3)
      {
        memset(&time1, 0, 24);
        rhs.epoch = v8;
        lhs.value = v46.value;
        lhs.timescale = v46.timescale;
        lhs.flags = v30;
        lhs.epoch = v31;
        rhs.value = v17;
        rhs.timescale = v18;
        rhs.flags = v7;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          break;
        }
      }

      time1.start.value = v46.value;
      time1.start.timescale = v46.timescale;
      time1.start.flags = v30;
      time1.start.epoch = v31;
      time.value = v17;
      time.timescale = v18;
      time.flags = v7;
      time.epoch = v8;
      if (CMTimeCompare(&time1.start, &time) < 1)
      {
        break;
      }

      v32 = *(v24 - 17);
      v33 = *(v24 - 13);
      *&time1.start.epoch = *(v24 - 15);
      *&time1.duration.timescale = v33;
      *&time1.start.value = v32;
      CMTimeRangeGetEnd(&v46, &time1);
      v44 = *(v24 - 5);
      v34 = *(v24 - 7);
      v45 = *(v24 - 8);
      v35 = *(v24 - 3);
      if ((v46.flags & 0x1F) == 3 || (v34 & 0x1F) == 3)
      {
        memset(&time1, 0, 24);
        lhs = v46;
        rhs.value = v44;
        rhs.timescale = v45;
        rhs.flags = v34;
        rhs.epoch = v35;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          goto LABEL_48;
        }
      }

      time1.start = v46;
      time.value = v44;
      time.timescale = v45;
      time.flags = v34;
      time.epoch = v35;
      if (CMTimeCompare(&time1.start, &time))
      {
        break;
      }

LABEL_48:
      v46.value = *(v24 - 2);
      v46.timescale = *(v24 - 2);
      v36 = *(v24 - 1);
      v37 = *v24;
      if ((v36 & 0x1F) == 3 || v9 == 3)
      {
        memset(&time1, 0, 24);
        rhs.epoch = v8;
        lhs.value = v46.value;
        lhs.timescale = v46.timescale;
        lhs.flags = v36;
        lhs.epoch = v37;
        rhs.value = v17;
        rhs.timescale = v18;
        rhs.flags = v7;
        CMTimeSubtract(&time, &lhs, &rhs);
        CMTimeAbsoluteValue(&time1.start, &time);
        CMTimeMake(&time, 1, 1000000000);
        lhs = time1.start;
        if (CMTimeCompare(&lhs, &time) <= 0)
        {
          break;
        }
      }

      time1.start.value = v46.value;
      time1.start.timescale = v46.timescale;
      time1.start.flags = v36;
      time1.start.epoch = v37;
      time.value = v17;
      time.timescale = v18;
      time.flags = v7;
      time.epoch = v8;
      if (CMTimeCompare(&time1.start, &time) <= 0)
      {
        break;
      }

      v22 = v39 <= v25;
      v24 += 12;
      ++v25;
    }

    while (v38 + v25 != 2);
  }

  else
  {
    return 1;
  }

  return v22;
}

__n128 FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData@<Q0>(CFDataRef theData@<X1>, __n128 *a2@<X0>, __n128 *a3@<X8>)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CMSpeedRampMapTimeFromTargetToSource();
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  return result;
}

__n128 FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData@<Q0>(CFDataRef theData@<X1>, __n128 *a2@<X0>, __n128 *a3@<X8>)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    CMSpeedRampMapTimeFromSourceToTarget();
  }

  else
  {
    result = *a2;
    *a3 = *a2;
    a3[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  return result;
}

uint64_t FigSpeedRampRenderPipelineCreate(const __CFAllocator *a1, const void *a2, CMTime *a3, const __CFDictionary *a4, void **a5)
{
  v42 = *MEMORY[0x1E69E9840];
  value = 0;
  refcon = 0;
  memset(&v37, 0, sizeof(v37));
  CMTimeMake(&rhs, 1, 2);
  lhs = *a3;
  CMTimeAdd(&v37, &lhs, &rhs);
  memset(&v36, 0, sizeof(v36));
  CMTimeMake(&rhs, 1, 2);
  lhs = v37;
  CMTimeAdd(&v36, &lhs, &rhs);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v34 = a5;
  if (!a5 || !a2)
  {
    return FigSignalErrorAtGM();
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1;
  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v9 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v9 |= 8u;
  }

  *&rhs.timescale = 0;
  rhs.value = v9;
  v11 = a2;
  if (sSpeedRampRenderPipelineVTableSetupOnce != -1)
  {
    FigSpeedRampRenderPipelineCreate_cold_1();
  }

  dispatch_sync_f(sSpeedRampRenderPipelineVTableQueue, &rhs, speedRamp_RenderPipeline_getVTableWithOptionalMethodsWork);
  FigRenderPipelineGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    goto LABEL_45;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 224) = 0;
  if (a4 && CFDictionaryGetValueIfPresent(a4, @"LoggingID", &value))
  {
    CFStringGetCString(value, (DerivedStorage + 224), 16, 0x600u);
  }

  v14 = *&a3->value;
  *(DerivedStorage + 64) = a3->epoch;
  *(DerivedStorage + 48) = v14;
  *(DerivedStorage + 72) = v37;
  *(DerivedStorage + 96) = v36;
  *(DerivedStorage + 44) = 1;
  CallbacksForUnsortedSampleBuffersWithOutputDuration = FigBufferQueueGetCallbacksForUnsortedSampleBuffersWithOutputDuration();
  v12 = CMBufferQueueCreate(v10, 0, CallbacksForUnsortedSampleBuffersWithOutputDuration, (DerivedStorage + 8));
  if (v12)
  {
    goto LABEL_45;
  }

  CFRetain(a2);
  *(DerivedStorage + 184) = a2;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a2);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v12 = v17(FigBaseObject, @"SourceSampleBufferQueue", v10, DerivedStorage + 192);
    if (v12)
    {
      goto LABEL_45;
    }

    v18 = FigRenderPipelineGetFigBaseObject(v11);
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v19)
    {
      v19(v18, @"ExpectScaledEdits", *MEMORY[0x1E695E4D0]);
    }

    v20 = FigSimpleMutexCreate();
    *(DerivedStorage + 120) = v20;
    if (!v20)
    {
      v33 = 2972;
      goto LABEL_49;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 4, &kFigSpeedRampUpcomingTransitionArrayCallbacks);
    *(DerivedStorage + 168) = Mutable;
    if (!Mutable)
    {
      v33 = 2975;
      goto LABEL_49;
    }

    v12 = FigActivitySchedulerCreateForNewThread(v10, 3, @"com.apple.coremedia.speedramp", (DerivedStorage + 32));
    if (v12)
    {
LABEL_45:
      value_low = v12;
      goto LABEL_37;
    }

    v23 = *(DerivedStorage + 32);
    v24 = refcon;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v12 = v25(v23, speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel, v24);
      if (!v12)
      {
        *(DerivedStorage + 40) = 1;
        v26 = *(DerivedStorage + 8);
        rhs = **&MEMORY[0x1E6960CC0];
        v12 = CMBufferQueueInstallTrigger(v26, speedramp_dataBecameReady, refcon, 7, &rhs, (DerivedStorage + 200));
        if (!v12)
        {
          v27 = *(DerivedStorage + 192);
          rhs = *a3;
          v12 = CMBufferQueueInstallTrigger(v27, speedramp_downstreamBufferQueueLowWater, refcon, 2, &rhs, (DerivedStorage + 208));
          if (!v12)
          {
            if (qword_1ED4CBCC8 != -1)
            {
              FigSpeedRampRenderPipelineCreate_cold_2();
            }

            v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _MergedGlobals_146);
            *(DerivedStorage + 216) = v28;
            if (v28)
            {
              dispatch_set_context(v28, refcon);
              dispatch_source_set_event_handler_f(*(DerivedStorage + 216), speedramp_wakeUpAndCheckTheTimebase);
              dispatch_resume(*(DerivedStorage + 216));
              CMNotificationCenterGetDefaultLocalCenter();
              v12 = FigNotificationCenterAddWeakListener();
              if (!v12)
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v12 = FigNotificationCenterAddWeakListener();
                if (!v12)
                {
                  if (dword_1EAF17C38)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  value_low = 0;
                  *v34 = refcon;
                  return value_low;
                }
              }

              goto LABEL_45;
            }

            v33 = 3009;
LABEL_49:
            FigSpeedRampRenderPipelineCreate_cold_3(v33, &rhs);
            value_low = LODWORD(rhs.value);
            goto LABEL_37;
          }
        }
      }

      goto LABEL_45;
    }
  }

  value_low = 4294954514;
LABEL_37:
  if (refcon)
  {
    CFRelease(refcon);
  }

  if (value_low && dword_1EAF17C38)
  {
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return value_low;
}

void speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(CMTime *a1)
{
  v175 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  memset(&start, 0, sizeof(start));
  CMTimebaseGetTime(&start, *(DerivedStorage + 24));
  FigSimpleMutexLock();
  v2 = MEMORY[0x1E6960C70];
  v112 = *(MEMORY[0x1E6960C70] + 12);
  v128 = *(MEMORY[0x1E6960C70] + 16);
  v113 = *(MEMORY[0x1E6960CC0] + 12);
  v122 = *(MEMORY[0x1E6960CC0] + 16);
  key = *MEMORY[0x1E6960550];
  allocator = *MEMORY[0x1E695E480];
  v117 = *MEMORY[0x1E6960510];
  v116 = *MEMORY[0x1E6960518];
  v115 = *MEMORY[0x1E6960490];
  v114 = *MEMORY[0x1E6960500];
  v123 = *MEMORY[0x1E6960540];
  while (1)
  {
    if (*(DerivedStorage + 128))
    {
      v3 = *(DerivedStorage + 136);
    }

    else
    {
      v4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(DerivedStorage + 8));
      *(DerivedStorage + 128) = v4;
      if (!v4)
      {
        FigSimpleMutexUnlock();
        v65 = 0;
        goto LABEL_189;
      }

      v3 = 0;
      *(DerivedStorage + 136) = 0;
    }

    v5 = *v2;
    value = *v2;
    v6 = *(v2 + 8);
    timescale = v6;
    v136 = start;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = v7;
    v9 = *(v7 + 44);
    v124 = v3;
    if (v9 == 1)
    {
      *&time1.start.value = *v2;
      time1.start.epoch = v128;
      *&rhs.value = *&time1.start.value;
      rhs.epoch = v128;
      v10 = *(v7 + 128);
      if (v10)
      {
        if (CMSampleBufferGetNumSamples(v10))
        {
          CMSampleBufferGetOutputDuration(&lhs, *(v8 + 128));
          v129 = *MEMORY[0x1E6960CC0];
          *&time2.value = *MEMORY[0x1E6960CC0];
          time2.epoch = v122;
          if (CMTimeCompare(&lhs, &time2) >= 1)
          {
            v171.value = *MEMORY[0x1E6960CC0];
            v171.timescale = *(MEMORY[0x1E6960CC0] + 8);
            flags = v113;
            epoch = v122;
            if ((*(v8 + 156) & 0x1D) == 1)
            {
              time2 = *(v8 + 144);
              v174 = v136;
              CMTimeSubtract(&lhs, &time2, &v174);
              v171.value = lhs.value;
              flags = lhs.flags;
              v171.timescale = lhs.timescale;
              epoch = lhs.epoch;
            }

            lhs.value = v171.value;
            lhs.timescale = v171.timescale;
            lhs.flags = flags;
            lhs.epoch = epoch;
            time2 = *(v8 + 72);
            if (CMTimeCompare(&lhs, &time2) <= 0)
            {
              if (flags)
              {
                lhs.value = v171.value;
                lhs.timescale = v171.timescale;
                lhs.flags = flags;
                lhs.epoch = epoch;
              }

              else
              {
                *&lhs.value = v129;
                lhs.epoch = v122;
              }

              time2 = *(v8 + 96);
              CMTimeSubtract(&time1.start, &time2, &lhs);
              goto LABEL_21;
            }

            lhs = *(v8 + 144);
            time2 = *(v8 + 48);
            CMTimeSubtract(&rhs, &lhs, &time2);
            value = rhs.value;
            v108 = rhs.flags;
            timescale = rhs.timescale;
LABEL_181:
            v128 = rhs.epoch;
            goto LABEL_182;
          }
        }

        else
        {
          *&time1.start.value = *MEMORY[0x1E6960C88];
          time1.start.epoch = *(MEMORY[0x1E6960C88] + 16);
        }

LABEL_21:
        *&v132.value = *&time1.start.value;
        v132.epoch = time1.start.epoch;
        value = rhs.value;
        timescale = rhs.timescale;
        goto LABEL_22;
      }

      value = v5;
      timescale = v6;
      v108 = rhs.flags;
      goto LABEL_181;
    }

    if (v9 || !CMBufferQueueTestTrigger(*(v7 + 192), *(v7 + 208)))
    {
      v108 = v112;
LABEL_182:
      v65 = 0;
      if (*(DerivedStorage + 44) != 1)
      {
        v59 = 0;
        goto LABEL_187;
      }

      v59 = 0;
      if ((v108 & 0x1D) != 1)
      {
        goto LABEL_187;
      }

      v109 = *(DerivedStorage + 24);
      v110 = *(DerivedStorage + 216);
      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = v108;
      time1.start.epoch = v128;
      CMTimebaseSetTimerDispatchSourceNextFireTime(v109, v110, &time1.start, 0);
      goto LABEL_185;
    }

    memset(&time1, 0, 24);
    CMBufferQueueGetDuration(&rhs, *(v8 + 192));
    lhs = *(v8 + 96);
    CMTimeSubtract(&time1.start, &lhs, &rhs);
    *&v132.value = *&time1.start.value;
    v132.epoch = time1.start.epoch;
LABEL_22:
    if (CMGetAttachment(*(DerivedStorage + 128), key, 0))
    {
      Count = CFArrayGetCount(*(DerivedStorage + 168));
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), i);
          if (FigCFEqual())
          {
            v17 = *(ValueAtIndex + 1);
            v18 = *(ValueAtIndex + 2);
            v19 = *(DerivedStorage + 24);
            *(ValueAtIndex + 2) = v19;
            if (v19)
            {
              CFRetain(v19);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            speedramp_setTimebase(a1, v17);
            CMTimebaseGetTime(&time1.start, *(DerivedStorage + 24));
            start = time1.start;
            v20 = *(ValueAtIndex + 6);
            v21 = *(DerivedStorage + 176);
            *(ValueAtIndex + 6) = v21;
            if (v21)
            {
              CFRetain(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            speedramp_setTransferAheadSpeedRampData(a1, *(ValueAtIndex + 5));
            v2 = MEMORY[0x1E6960C70];
          }
        }
      }
    }

    NumSamples = CMSampleBufferGetNumSamples(*(DerivedStorage + 128));
    v23 = NumSamples;
    v24 = *(DerivedStorage + 136);
    v25 = NumSamples - v24;
    v126 = NumSamples;
    if (NumSamples - v24 <= 1)
    {
      v29 = 1;
      goto LABEL_94;
    }

    v120 = NumSamples - v24;
    v161.value = v5;
    v161.timescale = v6;
    v26 = *(DerivedStorage + 128);
    time2.value = 0;
    *&time1.start.value = *v2;
    time1.start.epoch = v128;
    if (v24 < 0 || CMSampleBufferGetNumSamples(v26) <= v24)
    {
      v27 = 0;
      v33 = v128;
      v32 = v112;
      goto LABEL_50;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v26, 0, 0, &time2.value))
    {
      v27 = 0;
LABEL_198:
      v111 = v27;
      goto LABEL_199;
    }

    if (time2.value <= 0)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_3(&rhs);
      v27 = 0;
      goto LABEL_175;
    }

    v27 = malloc_type_malloc(72 * time2.value, 0x1000040FF89C88EuLL);
    if (!v27)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_2(&rhs);
      goto LABEL_175;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v26, time2.value, v27, 0))
    {
      goto LABEL_198;
    }

    if (time2.value == 1)
    {
      v28 = *&v27->duration.value;
      lhs.epoch = v27->duration.epoch;
      *&lhs.value = v28;
      CMTimeMultiply(&rhs, &lhs, v24);
      lhs = v27->presentationTimeStamp;
      CMTimeAdd(&time1.start, &lhs, &rhs);
    }

    else
    {
      if (time2.value <= v24)
      {
        speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_1(&rhs);
LABEL_175:
        v107 = rhs.value;
        free(v27);
        v32 = v112;
        v33 = v128;
        if (v107)
        {
          goto LABEL_185;
        }

        goto LABEL_51;
      }

      v30 = &v27[v24];
      v31 = *&v30->presentationTimeStamp.value;
      time1.start.epoch = v30->presentationTimeStamp.epoch;
      *&time1.start.value = v31;
    }

    v161.value = time1.start.value;
    v32 = time1.start.flags;
    v161.timescale = time1.start.timescale;
    v33 = time1.start.epoch;
LABEL_50:
    free(v27);
LABEL_51:
    memset(&v136, 0, sizeof(v136));
    v34 = *(DerivedStorage + 176);
    v164 = v161.value;
    v165 = v161.timescale;
    if (!v34 || (v32 & 0x1D) != 1)
    {
      v136 = **&MEMORY[0x1E6960C88];
      goto LABEL_69;
    }

    v118 = v24;
    BytePtr = CFDataGetBytePtr(v34);
    Length = CFDataGetLength(v34);
    if (Length < 0x60)
    {
LABEL_66:
      v136 = **&MEMORY[0x1E6960C88];
      goto LABEL_67;
    }

    v36 = 0;
    v127 = Length / 0x60;
    v37 = Length / 0x60 - 1;
    v38 = v32 & 3;
    v39 = v37;
    while (1)
    {
      v40 = v37 >> 1;
      v41 = &BytePtr[96 * (v37 >> 1)];
      v174.value = *v41;
      v174.timescale = *(v41 + 2);
      v42 = *(v41 + 3);
      v43 = *(v41 + 2);
      if (v38 != 3 && (*(v41 + 3) & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v164, lhs.timescale = v165, lhs.flags = v32, lhs.epoch = v33, time2.value = v174.value, time2.timescale = v174.timescale, time2.flags = v42, time2.epoch = v43, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
      {
        time1.start.value = v164;
        time1.start.timescale = v165;
        time1.start.flags = v32;
        time1.start.epoch = v33;
        rhs.value = v174.value;
        rhs.timescale = v174.timescale;
        rhs.flags = v42;
        rhs.epoch = v43;
        if (CMTimeCompare(&time1.start, &rhs) < 0)
        {
          v39 = v40 - 1;
          goto LABEL_65;
        }
      }

      if ((v44 = *v41, v45 = *(v41 + 2), *&time1.start.epoch = *(v41 + 1), *&time1.duration.timescale = v45, *&time1.start.value = v44, CMTimeRangeGetEnd(&v174, &time1), v38 != 3) && (v174.flags & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v164, lhs.timescale = v165, lhs.flags = v32, lhs.epoch = v33, time2 = v174, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
      {
        time1.start.value = v164;
        time1.start.timescale = v165;
        time1.start.flags = v32;
        time1.start.epoch = v33;
        rhs = v174;
        if (CMTimeCompare(&time1.start, &rhs) < 0)
        {
          break;
        }
      }

      v36 = v40 + 1;
LABEL_65:
      v37 = v36 + v39;
      if (v36 >= v127)
      {
        goto LABEL_66;
      }
    }

    v104 = *v41;
    v105 = *(v41 + 2);
    *&time1.start.epoch = *(v41 + 1);
    *&time1.duration.timescale = v105;
    *&time1.start.value = v104;
    CMTimeRangeGetEnd(&v136, &time1);
LABEL_67:
    v2 = MEMORY[0x1E6960C70];
    v23 = v126;
    v24 = v118;
LABEL_69:
    memset(&v174, 0, sizeof(v174));
    time1.start.value = v161.value;
    time1.start.timescale = v161.timescale;
    time1.start.flags = v32;
    time1.start.epoch = v33;
    rhs = v132;
    CMTimeAdd(&v174, &time1.start, &rhs);
    memset(&v171, 0, sizeof(v171));
    time1.start = v136;
    rhs = v174;
    CMTimeMinimum(&v171, &time1.start, &rhs);
    v46 = *(DerivedStorage + 128);
    v162 = v171.value;
    v47 = v171.flags;
    v163 = v171.timescale;
    v48 = v171.epoch;
    timingArrayEntriesNeededOut = 0;
    v49 = CMSampleBufferGetNumSamples(v46);
    if (CMSampleBufferGetOutputSampleTimingInfoArray(v46, 0, 0, &timingArrayEntriesNeededOut))
    {
      v50 = 0;
LABEL_196:
      v111 = v50;
LABEL_199:
      free(v111);
LABEL_185:
      v65 = 0;
      v59 = 0;
      goto LABEL_187;
    }

    if (timingArrayEntriesNeededOut <= 0)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_6(&time1);
      v50 = 0;
      goto LABEL_172;
    }

    v50 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (!v50)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_5(&time1);
LABEL_172:
      v106 = time1.start.value;
      free(v50);
      if (!v106)
      {
        v52 = 0;
        goto LABEL_89;
      }

      goto LABEL_185;
    }

    if (CMSampleBufferGetOutputSampleTimingInfoArray(v46, timingArrayEntriesNeededOut, v50, 0))
    {
      goto LABEL_196;
    }

    if (timingArrayEntriesNeededOut == 1)
    {
      memset(&time1, 0, 24);
      rhs.value = v162;
      rhs.timescale = v163;
      rhs.flags = v47;
      rhs.epoch = v48;
      lhs = v50->presentationTimeStamp;
      CMTimeSubtract(&time1.start, &rhs, &lhs);
      rhs = time1.start;
      v51 = vcvtmd_s64_f64(CMTimeGetSeconds(&rhs) * v50->duration.timescale / v50->duration.value + 1.0);
      if (v49 < v51)
      {
        v51 = v49;
      }

      v52 = v51 & ~(v51 >> 63);
      goto LABEL_88;
    }

    if (timingArrayEntriesNeededOut < 1)
    {
      speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel_cold_4(&time1);
      goto LABEL_172;
    }

    if (v49 < 1)
    {
      v52 = 0;
    }

    else
    {
      v119 = v24;
      v52 = 0;
      p_epoch = &v50->presentationTimeStamp.epoch;
      while (1)
      {
        if ((v168.value = *(p_epoch - 2), v168.timescale = *(p_epoch - 2), v54 = *(p_epoch - 1), v55 = *p_epoch, (v47 & 0x1F) != 3) && (*(p_epoch - 1) & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v162, lhs.timescale = v163, lhs.flags = v47, lhs.epoch = v48, time2.value = v168.value, time2.timescale = v168.timescale, time2.flags = v54, time2.epoch = v55, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) > 0))
        {
          time1.start.value = v162;
          time1.start.timescale = v163;
          time1.start.flags = v47;
          time1.start.epoch = v48;
          rhs.value = v168.value;
          rhs.timescale = v168.timescale;
          rhs.flags = v54;
          rhs.epoch = v55;
          if (CMTimeCompare(&time1.start, &rhs) < 0)
          {
            break;
          }
        }

        p_epoch += 9;
        if (v49 == ++v52)
        {
          v52 = v49;
          break;
        }
      }

      v2 = MEMORY[0x1E6960C70];
      v23 = v126;
      v24 = v119;
    }

LABEL_88:
    free(v50);
LABEL_89:
    v56 = *(DerivedStorage + 136);
    v57 = v52 - v56;
    if (v52 - v56 <= 1)
    {
      v57 = 1;
    }

    v25 = v120;
    if (v120 >= v57)
    {
      v25 = v57;
    }

    v29 = v25 + v56 >= v23;
LABEL_94:
    v58 = *(DerivedStorage + 128);
    if (v58)
    {
      v59 = CFRetain(v58);
    }

    else
    {
      v59 = 0;
    }

    if (v23 >= 1)
    {
      v176.location = *(DerivedStorage + 136);
      v176.length = v25;
      v60 = CMSampleBufferCopySampleBufferForRange(allocator, *(DerivedStorage + 128), v176, &sampleBufferOut);
      v61 = *(DerivedStorage + 136) + v25;
      *(DerivedStorage + 136) = v61;
      if (v61 >= v23)
      {
        v62 = *(DerivedStorage + 128);
        if (v62)
        {
          CFRelease(v62);
          *(DerivedStorage + 128) = 0;
        }
      }

      if (!v60)
      {
        if (v24 >= 1)
        {
          CMRemoveAttachment(sampleBufferOut, v117);
          CMRemoveAttachment(sampleBufferOut, v116);
          CMRemoveAttachment(sampleBufferOut, key);
        }

        if (!v29)
        {
          CMRemoveAttachment(sampleBufferOut, v115);
          CMRemoveAttachment(sampleBufferOut, v114);
        }

        v63 = 0;
        goto LABEL_134;
      }

      break;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v65 = CMCopyDictionaryOfAttachments(AllocatorForMedia, v59, 0);
    v66 = CMSampleBufferCreateCopy(allocator, v59, &sampleBufferOut);
    v67 = *(DerivedStorage + 128);
    if (v67)
    {
      CFRelease(v67);
      *(DerivedStorage + 128) = 0;
    }

    if (v66)
    {
      goto LABEL_187;
    }

    if (v65)
    {
      CMSetAttachments(sampleBufferOut, v65, 0);
    }

    v68 = FigGetAllocatorForMedia();
    v69 = CMCopyDictionaryOfAttachments(v68, v59, 1u);
    v70 = FigCFDictionaryGetCount() < 1 ? 0 : FigCFCopyCompactDescription();
    v71 = FigCFDictionaryGetCount() < 1 ? 0 : FigCFCopyCompactDescription();
    if (v70 | v71)
    {
      v72 = FigGetAllocatorForMedia();
      v73 = &stru_1F0B1AFB8;
      if (v70)
      {
        v74 = v70;
      }

      else
      {
        v74 = &stru_1F0B1AFB8;
      }

      if (v71)
      {
        v73 = v71;
      }

      v63 = CFStringCreateWithFormat(v72, 0, @"%@%@", v74, v73);
      if (!v69)
      {
        goto LABEL_128;
      }

LABEL_127:
      CFRelease(v69);
    }

    else
    {
      v63 = 0;
      if (v69)
      {
        goto LABEL_127;
      }
    }

LABEL_128:
    if (v70)
    {
      CFRelease(v70);
    }

    if (v71)
    {
      CFRelease(v71);
    }

    if (v65)
    {
      CFRelease(v65);
    }

LABEL_134:
    memset(&v161, 0, sizeof(v161));
    CMSampleBufferGetOutputPresentationTimeStamp(&v161, sampleBufferOut);
    v75 = sampleBufferOut;
    v76 = *(DerivedStorage + 176);
    if (v76)
    {
      CFDataGetBytePtr(*(DerivedStorage + 176));
      CFDataGetLength(v76);
      *&v174.value = *v2;
      v174.epoch = v128;
      *&v136.value = *&v174.value;
      v136.epoch = v128;
      valuePtr = 1.0;
      CMSampleBufferGetOutputPresentationTimeStamp(&v174, v75);
      CMSampleBufferGetOutputDuration(&time1.start, v75);
      v77 = time1.start.timescale;
      v78 = time1.start.flags;
      v173 = time1.start.timescale;
      v79 = time1.start.value;
      timingArrayEntriesNeededOut = time1.start.value;
      v80 = time1.start.epoch;
      time1.start = v174;
      rhs.value = v79;
      rhs.timescale = v77;
      rhs.flags = v78;
      rhs.epoch = v80;
      CMTimeAdd(&v136, &time1.start, &rhs);
      v171 = v174;
      time1.start = v174;
      CMSpeedRampMapTimeFromSourceToTarget();
      v168 = v136;
      time1.start = v136;
      CMSpeedRampMapTimeFromSourceToTarget();
      rhs = v168;
      lhs = v171;
      CMTimeSubtract(&time1.start, &rhs, &lhs);
      v81 = time1.start.flags;
      v170 = time1.start.timescale;
      v169 = time1.start.value;
      v82 = time1.start.epoch;
      *&rhs.value = *MEMORY[0x1E6960CC0];
      rhs.epoch = v122;
      if (CMTimeCompare(&time1.start, &rhs))
      {
        if ((v81 & 0x1F) != 3 && (v78 & 0x1F) != 3 || (memset(&time1, 0, 24), lhs.value = v169, lhs.timescale = v170, lhs.flags = v81, lhs.epoch = v82, time2.value = timingArrayEntriesNeededOut, time2.timescale = v173, time2.flags = v78, time2.epoch = v80, CMTimeSubtract(&rhs, &lhs, &time2), CMTimeAbsoluteValue(&time1.start, &rhs), CMTimeMake(&rhs, 1, 1000000000), lhs = time1.start, CMTimeCompare(&lhs, &rhs) >= 1))
        {
          time1.start.value = v169;
          time1.start.timescale = v170;
          time1.start.flags = v81;
          time1.start.epoch = v82;
          rhs.value = timingArrayEntriesNeededOut;
          rhs.timescale = v173;
          rhs.flags = v78;
          rhs.epoch = v80;
          if (CMTimeCompare(&time1.start, &rhs))
          {
            time1.start.value = v169;
            time1.start.timescale = v170;
            time1.start.flags = v81;
            time1.start.epoch = v82;
            Seconds = CMTimeGetSeconds(&time1.start);
            time1.start.value = timingArrayEntriesNeededOut;
            time1.start.timescale = v173;
            time1.start.flags = v78;
            time1.start.epoch = v80;
            v84 = CMTimeGetSeconds(&time1.start);
            v85 = CMGetAttachment(v75, v123, 0);
            if (v85)
            {
              v86 = v85;
              v87 = CFGetTypeID(v85);
              if (v87 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v86, kCFNumberDoubleType, &valuePtr);
              }
            }

            valuePtr = valuePtr / (Seconds / v84);
            v88 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
            if (v88)
            {
              v89 = v88;
              CMSetAttachment(v75, v123, v88, 1u);
              CFRelease(v89);
            }
          }
        }
      }

      time1.start = v171;
      CMSampleBufferSetOutputPresentationTimeStamp(v75, &time1.start);
      v75 = sampleBufferOut;
    }

    if (CMGetAttachment(v75, v123, 0))
    {
      FigCFNumberGetFloat64();
      v91 = v90;
    }

    else
    {
      v91 = 1.0;
    }

    if (dword_1EAF17C38)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(time2.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v93 = lhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value))
      {
        v94 = v93;
      }

      else
      {
        v94 = v93 & 0xFFFFFFFE;
      }

      if (v94)
      {
        v95 = *(DerivedStorage + 136);
        time1.start = v161;
        v96 = CMTimeGetSeconds(&time1.start);
        v97 = sampleBufferOut;
        CMSampleBufferGetDuration(&time1.start, sampleBufferOut);
        v98 = CMTimeGetSeconds(&time1.start);
        CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, sampleBufferOut);
        v99 = CMTimeGetSeconds(&time1.start);
        CMSampleBufferGetOutputPresentationTimeStamp(&time1.start, sampleBufferOut);
        v100 = CMTimeGetSeconds(&time1.start);
        time1.start = start;
        v101 = v100 - CMTimeGetSeconds(&time1.start);
        time1.start = start;
        v102 = CMTimeGetSeconds(&time1.start);
        LODWORD(time1.start.value) = 136318722;
        v103 = &stru_1F0B1AFB8;
        if (v63)
        {
          v103 = v63;
        }

        *(&time1.start.value + 4) = "speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel";
        LOWORD(time1.start.flags) = 2082;
        *(&time1.start.flags + 2) = DerivedStorage + 224;
        HIWORD(time1.start.epoch) = 2048;
        time1.duration.value = a1;
        LOWORD(time1.duration.timescale) = 2048;
        *(&time1.duration.timescale + 2) = v59;
        WORD1(time1.duration.epoch) = 1024;
        HIDWORD(time1.duration.epoch) = v124;
        v140 = 1024;
        v141 = v95;
        v142 = 1024;
        v143 = v126;
        v144 = 2048;
        v145 = v96;
        v146 = 2048;
        v147 = v97;
        v148 = 2048;
        v149 = v98;
        v150 = 2048;
        v151 = v99;
        v152 = 2048;
        v153 = v91;
        v154 = 2048;
        v155 = v101;
        v156 = 2048;
        v157 = v102;
        v158 = 2114;
        v159 = v103;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMBufferQueueEnqueue(*(DerivedStorage + 192), sampleBufferOut))
    {
      break;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, sampleBufferOut);
    CMSampleBufferGetOutputDuration(&lhs, sampleBufferOut);
    CMTimeAdd(&time1.start, &rhs, &lhs);
    *(DerivedStorage + 144) = *&time1.start.value;
    *(DerivedStorage + 160) = time1.start.epoch;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
      sampleBufferOut = 0;
    }

    if (v59)
    {
      CFRelease(v59);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  v65 = 0;
LABEL_187:
  FigSimpleMutexUnlock();
  if (v59)
  {
    CFRelease(v59);
  }

LABEL_189:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v65)
  {
    CFRelease(v65);
  }
}

uint64_t speedramp_dataBecameReady()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t speedramp_downstreamBufferQueueLowWater()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t speedRampRenderPipelineTimerQueueSetupOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t speedramp_wakeUpAndCheckTheTimebase()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 32);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

void speedramp_reflectNotificationFromDownstreamRenderPipeline(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"WarehousePleaseRetransmitFromTime", a3) && (v12 = *MEMORY[0x1E6960C70], v13 = *(MEMORY[0x1E6960C70] + 16), FigCFDictionaryGetCMTimeIfPresent()))
  {
    FigSimpleMutexLock();
    v10 = 0uLL;
    v11 = 0;
    v5 = *(DerivedStorage + 176);
    v8 = v12;
    v9 = v13;
    FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v5, &v8, &v10);
    FigSimpleMutexUnlock();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v8 = v10;
    v9 = v11;
    FigCFDictionarySetCMTime();
    v7 = MutableCopy;
  }

  else
  {
    v7 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t speedramp_reflectNotificationFromUpstreamBufferQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v1 = *(DerivedStorage + 128);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 128) = 0;
    }

    v2 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 144) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 160) = *(v2 + 16);
    CFArrayRemoveAllValues(*(DerivedStorage + 168));
    FigSimpleMutexUnlock();
    v3 = *(DerivedStorage + 32);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableDictionaryRef speedRampRenderPipelineSetupOnce()
{
  sSpeedRampRenderPipelineVTableQueue = dispatch_queue_create("com.apple.coremedia.speedramprenderpipeline.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sSpeedRampRenderPipelineVTableDictionary = result;
  return result;
}

void speedRamp_RenderPipeline_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sSpeedRampRenderPipelineVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_15;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0x78uLL, 0x10C00406FD3D2E8uLL);
  __copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(v4, kFigSpeedRampRenderPipeline_FigRenderPipelineClass);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[1] = 0;
    if ((v2 & 2) != 0)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4[10] = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v4[2] = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
LABEL_6:
    v4[11] = 0;
  }

LABEL_7:
  *Value = 0;
  Value[1] = &kFigSpeedRampRenderPipeline_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sSpeedRampRenderPipelineVTableDictionary, v2, Value);
LABEL_15:
  *(a1 + 1) = Value;
}

void *__copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  result[13] = a2[13];
  result[14] = a2[14];
  return result;
}

uint64_t figSpeedRampRenderPipelineSetRateAndAnchorTime(float a1, float a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 184);
  v14 = *a4;
  v15 = *(a4 + 2);
  v12 = *a5;
  v13 = *(a5 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v18 = v14;
  v19 = v15;
  v16 = v12;
  v17 = v13;
  return v10(v9, &v18, &v16, a1, a2);
}

uint64_t figSpeedRampRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a5)
  {
    if (a6)
    {
      v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v13)
      {
        figSpeedRampRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v24);
        return v24;
      }
    }
  }

  FigSimpleMutexLock();
  value[0] = a4;
  value[1] = a2;
  value[2] = 0;
  value[3] = a5;
  value[5] = 0;
  value[6] = 0;
  value[4] = v13;
  CFArrayAppendValue(*(DerivedStorage + 168), value);
  FigSimpleMutexUnlock();
  v14 = *(DerivedStorage + 184);
  v21 = *a3;
  v22 = *(a3 + 2);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    v19 = 4294954514;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  v16 = v15(v14, a2, &v24, a4, speedramp_timebaseTransitionCommitted, a1);
  if (v16)
  {
    v19 = v16;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v17 = *(DerivedStorage + 32);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17);
  }

  v19 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

  return v19;
}

uint64_t figSpeedRampRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 184);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figSpeedRampRenderPipelineStopOffline()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 184);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figSpeedRampRenderPipelinePretendOutputIsLow(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(a1);
  v3 = *(DerivedStorage + 184);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3);
}

uint64_t figSpeedRampRenderPipelineSynchronizeToTimebase()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 184);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figSpeedRampRenderPipelineRequestDecodeForPreroll(CMTime *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  speedramp_remapAndTransferSampleBuffersUpToHighWaterLevel(a1);
  v5 = *(DerivedStorage + 184);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

uint64_t figSpeedRampRenderPipelineFinishSettingRate()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 184);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figSpeedRampRenderPipelineCancelAndFlushTransition(CMTime *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17C38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
LABEL_7:
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v7);
      if (FigCFEqual())
      {
        break;
      }

      if (Count == ++v7)
      {
        goto LABEL_7;
      }
    }

    v10 = *(ValueAtIndex + 2);
    if (v10)
    {
      if (dword_1EAF17C38)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = *(ValueAtIndex + 2);
      }

      speedramp_setTimebase(a1, v10);
      v15 = *(DerivedStorage + 128);
      if (v15)
      {
        CFRelease(v15);
        *(DerivedStorage + 128) = 0;
      }

      speedramp_setTransferAheadSpeedRampData(a1, *(ValueAtIndex + 6));
    }

    v17.length = Count - v7;
    v17.location = v7;
    CFArrayReplaceValues(*(DerivedStorage + 168), v17, 0, 0);
  }

  FigBufferQueueTwoPassFilter();
  FigSimpleMutexUnlock();
  v11 = *(DerivedStorage + 184);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v12)
  {
    return v12(v11, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t figSpeedRampRenderPipelineFlushFromTime(const void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[1] = a1;
  *v17 = 0;
  *&v17[4] = *a2;
  *&v17[20] = *(a2 + 16);
  memset(&v17[28], 0, 60);
  v16[0] = 0;
  if (dword_1EAF17C38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 128);
  if (v6)
  {
    time = *&v17[4];
    speedramp_copySampleBufferToKeepIfBeforeCutoff(a1, v6, &time, v16, v17);
    v7 = v16[0];
    if (v16[0])
    {
      ++*&v17[28];
    }

    else
    {
      ++*&v17[36];
      CMSampleBufferGetOutputPresentationTimeStamp(&v17[40], *(DerivedStorage + 128));
    }

    v8 = *(DerivedStorage + 128);
    if (v8)
    {
      CFRelease(v8);
    }

    *(DerivedStorage + 128) = v7;
  }

  FigBufferQueueTwoPassFilter();
  if (*&v17[36] + *&v17[32] >= 1 && dword_1EAF17C38)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *(DerivedStorage + 176);
  v18 = *a2;
  v19 = *(a2 + 16);
  FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData(v10, &v18, &time);
  *a2 = *&time.value;
  epoch = time.epoch;
  *(a2 + 16) = time.epoch;
  v12 = *(DerivedStorage + 184);
  v18 = *a2;
  v19 = epoch;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v13)
  {
    *&time.value = v18;
    time.epoch = v19;
    v14 = v13(v12, &time);
  }

  else
  {
    v14 = 4294954514;
  }

  FigSimpleMutexUnlock();
  return v14;
}

uint64_t figSpeedRampRenderPipelineDoesSupportTransitionToFormatDescription(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 184);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

uint64_t figSpeedRampRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    MutableCopy = 0;
LABEL_21:
    v17 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v5 = Value;
  v6 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == Value)
  {
    v7 = 0;
  }

  else
  {
    v7 = Value;
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v9 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), 0);
  if (!FigCFEqual())
  {
    v13 = 1;
    while (v9 != v13)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v13++);
      if (FigCFEqual())
      {
        v11 = v13 - 1 < v9;
        goto LABEL_13;
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  v11 = 1;
LABEL_13:
  v14 = ValueAtIndex[5];
  ValueAtIndex[5] = v7;
  if (v6 != v5)
  {
    CFRetain(v5);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"SpeedRampData");
  if (!v11)
  {
    goto LABEL_21;
  }

  v15 = *(DerivedStorage + 184);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v16)
  {
    v18 = 4294954514;
    if (!MutableCopy)
    {
      return v18;
    }

    goto LABEL_23;
  }

  v17 = v16(v15, a2, MutableCopy);
LABEL_22:
  v18 = v17;
  if (MutableCopy)
  {
LABEL_23:
    CFRelease(MutableCopy);
  }

  return v18;
}

void speedramp_timebaseTransitionCommitted(const void *a1, uint64_t a2, __int128 *a3, __int128 *a4, float a5)
{
  v25 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 168));
  if (Count < 1)
  {
LABEL_5:

    FigSimpleMutexUnlock();
  }

  else
  {
    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 168), v13);
      if (FigCFEqual())
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v20 = ValueAtIndex[1];
    ValueAtIndex[1] = 0;
    v15 = ValueAtIndex[3];
    if (ValueAtIndex[4])
    {
      v16 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v16)
      {
        if (dword_1EAF17C38)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v16 = 0;
        v15 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = ValueAtIndex[5];
    ValueAtIndex[5] = 0;
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 168), v13);
    CFRetain(a1);
    speedramp_setCommittedTimebase(a1, v20);
    v19 = *(DerivedStorage + 176);
    *(DerivedStorage + 176) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    FigSimpleMutexUnlock();
    if (v15)
    {
      v23 = *a3;
      v24 = *(a3 + 2);
      v21 = *a4;
      v22 = *(a4 + 2);
      v15(v16, a2, &v23, &v21, a5);
    }

    CFRelease(a1);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }
}

void speedramp_setCommittedTimebase(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

OpaqueCMTimebase *speedramp_setTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 24);
  if (result != a2)
  {
    if (dword_1EAF17C38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = *(DerivedStorage + 24);
    }

    if (result)
    {
      CMTimebaseRemoveTimerDispatchSource(result, *(DerivedStorage + 216));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 24);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    result = *(DerivedStorage + 24);
    if (result)
    {
      CMTimebaseAddTimerDispatchSource(result, *(DerivedStorage + 216));
      CMNotificationCenterGetDefaultLocalCenter();
      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

CFTypeRef speedramp_retainAndKeepSampleBuffersBeforeTransitionIDMarkerFilterCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a2 + 8))
  {
LABEL_9:
    if (CMSampleBufferGetNumSamples(a1) < 1)
    {
      ++*(a2 + 28);
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
      CMSampleBufferGetOutputPresentationTimeStamp(&v11, a1);
      memset(&v10, 0, sizeof(v10));
      CMSampleBufferGetOutputDuration(&v10, a1);
      memset(&v9, 0, sizeof(v9));
      type = v11;
      rhs = v10;
      CMTimeAdd(&v9, &type, &rhs);
      v6 = *(a2 + 32);
      if (!v6)
      {
        *(a2 + 36) = v11;
      }

      *(a2 + 60) = v9;
      *(a2 + 32) = v6 + 1;
    }

    return 0;
  }

  CMGetAttachment(a1, *MEMORY[0x1E6960550], 0);
  if (FigCFEqual())
  {
    if (dword_1EAF17C38)
    {
      LODWORD(v9.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a2 + 8) = 1;
    goto LABEL_9;
  }

  ++*(a2 + 24);

  return CFRetain(a1);
}

uint64_t speedramp_timebaseTimeJumped()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 32);
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 16);
  result = VTable + 16;
  v4 = *(v3 + 16);
  if (v4)
  {

    return v4(v0);
  }

  return result;
}

void speedramp_copySampleBufferToKeepIfBeforeCutoff(uint64_t a1, opaqueCMSampleBuffer *a2, CMTime *a3, CFTypeRef *a4, _BYTE *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  if (CMSampleBufferGetNumSamples(a2))
  {
    memset(&v32, 0, sizeof(v32));
    CMSampleBufferGetOutputPresentationTimeStamp(&v32, a2);
    memset(&v31, 0, sizeof(v31));
    CMSampleBufferGetOutputDuration(&v31, a2);
    memset(&v30, 0, sizeof(v30));
    lhs = v32;
    rhs = v31;
    CMTimeAdd(&v30, &lhs, &rhs);
    lhs = v30;
    rhs = *a3;
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      if (dword_1EAF17C38 >= 8)
      {
        LODWORD(v29.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v18 = 0;
      *a4 = CFRetain(a2);
      goto LABEL_37;
    }

    lhs = v32;
    rhs = *a3;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      v15 = *MEMORY[0x1E695E480];
      if (!CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], a2, &sampleBufferOut))
      {
        memset(&v29, 0, sizeof(v29));
        lhs = v30;
        rhs = *a3;
        CMTimeSubtract(&v29, &lhs, &rhs);
        v16 = *MEMORY[0x1E6960558];
        v17 = CMGetAttachment(sampleBufferOut, *MEMORY[0x1E6960558], 0);
        memset(&type, 0, sizeof(type));
        CMTimeMakeFromDictionary(&type, v17);
        if ((type.flags & 0x1D) != 1)
        {
          type = **&MEMORY[0x1E6960CC0];
        }

        memset(&v27, 0, sizeof(v27));
        lhs = type;
        rhs = v29;
        CMTimeAdd(&v27, &lhs, &rhs);
        lhs = v27;
        v18 = CMTimeCopyAsDictionary(&lhs, v15);
        CMSetAttachment(sampleBufferOut, v16, v18, 1u);
        *a4 = CFRetain(sampleBufferOut);
        *a5 = 1;
        if (dword_1EAF17C38)
        {
          v26 = 0;
          v25 = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_37;
      }
    }

    else
    {
      *a5 = 1;
      if (dword_1EAF17C38)
      {
        LODWORD(v29.value) = 0;
        LOBYTE(type.value) = 0;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v18 = 0;
LABEL_37:
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    return;
  }

  memset(&v32, 0, sizeof(v32));
  CMSampleBufferGetOutputPresentationTimeStamp(&v32, a2);
  if ((v32.flags & 0x1D) == 1)
  {
    lhs = v32;
    rhs = *a3;
    v10 = CMTimeCompare(&lhs, &rhs) >= 0;
  }

  else
  {
    v10 = 0;
  }

  if (dword_1EAF17C38)
  {
    v23 = v10;
    v24 = a4;
    v12 = *MEMORY[0x1E695E480];
    v13 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a2, 0);
    if (FigCFDictionaryGetCount() < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = FigCFCopyCompactDescription();
    }

    v20 = CMCopyDictionaryOfAttachments(v12, a2, 1u);
    if (FigCFDictionaryGetCount() < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = FigCFCopyCompactDescription();
    }

    a4 = v24;
    if (dword_1EAF17C38)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a4 = v24;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v10 = v23;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (!v10)
  {
    *a4 = CFRetain(a2);
  }
}

CFTypeRef speedramp_copyToSaveTrimOrDiscardFilterCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (*(a2 + 8))
  {
    if (dword_1EAF17C38 >= 8)
    {
      LODWORD(v10.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    time = *(a2 + 12);
    speedramp_copySampleBufferToKeepIfBeforeCutoff(v4, a1, &time, &v11, (a2 + 8));
    result = v11;
    if (v11)
    {
      ++*(a2 + 36);
      return result;
    }
  }

  if (CMSampleBufferGetNumSamples(a1) < 1)
  {
    result = 0;
    ++*(a2 + 40);
  }

  else
  {
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputDuration(&v12, a1);
    memset(&v10, 0, sizeof(v10));
    type = time;
    rhs = v12;
    CMTimeAdd(&v10, &type, &rhs);
    v7 = *(a2 + 44);
    if (!v7)
    {
      *(a2 + 48) = time;
    }

    result = 0;
    *(a2 + 72) = v10;
    *(a2 + 44) = v7 + 1;
  }

  return result;
}

uint64_t figSpeedRampRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 184))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      if (*(v1 + 8))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      v2 = *(v1 + 200);
      if (v2)
      {
        CMBufferQueueRemoveTrigger(*(v1 + 8), v2);
        *(v1 + 200) = 0;
      }

      v3 = *(v1 + 208);
      if (v3)
      {
        CMBufferQueueRemoveTrigger(*(v1 + 192), v3);
        *(v1 + 208) = 0;
      }

      v4 = *(v1 + 32);
      if (v4 && *(v1 + 40))
      {
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v5)
        {
          v5(v4, 0, 0);
        }

        *(v1 + 40) = 0;
      }

      v6 = *(v1 + 184);
      if (v6)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v6);
        if (FigBaseObject)
        {
          v8 = FigBaseObject;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v9)
          {
            v9(v8);
          }
        }
      }

      v10 = *(v1 + 216);
      if (v10)
      {
        v11 = *(v1 + 24);
        if (v11)
        {
          CMTimebaseRemoveTimerDispatchSource(v11, v10);
          v10 = *(v1 + 216);
        }

        dispatch_source_cancel(v10);
      }

      if (*(v1 + 24))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  return 0;
}

void figSpeedRampRenderPipelineFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSpeedRampRenderPipelineInvalidate();
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[4] = 0;
  }

  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  FigSimpleMutexDestroy();
  DerivedStorage[15] = 0;
  v5 = DerivedStorage[16];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[16] = 0;
  }

  v6 = DerivedStorage[21];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[21] = 0;
  }

  v7 = DerivedStorage[23];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[23] = 0;
  }

  v8 = DerivedStorage[24];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[24] = 0;
  }

  v9 = DerivedStorage[27];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[27] = 0;
  }

  v10 = DerivedStorage[22];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[22] = 0;
  }
}

__CFString *figSpeedRampRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSpeedRampRenderPipeline %p: ", a1);
  v4 = DerivedStorage[23];
  v5 = DerivedStorage[1];
  BufferCount = CMBufferQueueGetBufferCount(v5);
  CFStringAppendFormat(Mutable, 0, @"%s downstreamRenderPipeline %@, sourceSampleBufferQueue %p (%d sbufs)", DerivedStorage + 28, v4, v5, BufferCount);
  v7 = DerivedStorage[22];
  if (v7)
  {
    Length = CFDataGetLength(v7);
    CFStringAppendFormat(Mutable, 0, @", speedRampData with %d mappings", Length / 0x60);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figSpeedRampRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {

    return FigSignalErrorAtGM();
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v10 = *(v8 + 1);
    if (v10)
    {
LABEL_8:
      v11 = CFRetain(v10);
LABEL_9:
      v12 = v11;
LABEL_19:
      result = 0;
      *a4 = v12;
      return result;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    return 4294954446;
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    FigSimpleMutexLock();
    v13 = *(v8 + 22);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    goto LABEL_15;
  }

  if (CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    v10 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    FigSimpleMutexLock();
    memset(&v23, 0, sizeof(v23));
    CMBufferQueueGetEndPresentationTimeStamp(&v23, *(v8 + 1));
    flags = v23.flags;
    if ((v23.flags & 0x1D) != 1)
    {
      v15 = *(v8 + 16);
      if (v15)
      {
        memset(&v22, 0, sizeof(v22));
        CMSampleBufferGetOutputPresentationTimeStamp(&v22, v15);
        memset(&time, 0, sizeof(time));
        CMSampleBufferGetOutputDuration(&time, *(v8 + 16));
        lhs = v22;
        v18 = time;
        CMTimeAdd(&v20, &lhs, &v18);
        v23 = v20;
        flags = v20.flags;
      }
    }

    if ((flags & 1) == 0)
    {
      FigSimpleMutexUnlock();
      return FigRenderPipelineCopyProperty(*(v8 + 23), a2, a3, a4);
    }

    v22 = v23;
    v16 = *(v8 + 22);
    if (v16)
    {
      CFDataGetBytePtr(v16);
      CFDataGetLength(*(v8 + 22));
      time = v23;
      CMSpeedRampMapTimeFromSourceToTarget();
    }

    time = v22;
    v13 = CMTimeCopyAsDictionary(&time, a3);
LABEL_15:
    *a4 = v13;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (CFEqual(@"SpeedRampCommittedTimebase", a2))
  {
    v10 = *(v8 + 2);
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (CFEqual(@"SpeedRampTransferAheadTimebase", a2))
  {
    v10 = *(v8 + 3);
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (CFEqual(@"LoggingIdentifier", a2))
  {
    v11 = CFStringCreateWithCString(a3, v8 + 224, 0x600u);
    goto LABEL_9;
  }

  v17 = *(v8 + 23);

  return FigRenderPipelineCopyProperty(v17, a2, a3, a4);
}

uint64_t figSpeedRampRenderPipelineSetProperty(const void *a1, const void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *DerivedStorage))
  {
LABEL_3:

    return FigSignalErrorAtGM();
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a3))
      {
        goto LABEL_3;
      }
    }

    v17 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (a3 && !FigSpeedRampIsCMTimeMappingArrayDataContinuous(a3))
    {
      FigSimpleMutexUnlock();
      return 4294954444;
    }

    v40 = *MEMORY[0x1E6960CC0];
    *&v44.value = *MEMORY[0x1E6960CC0];
    v18 = *(MEMORY[0x1E6960CC0] + 16);
    v44.epoch = v18;
    v19 = *(v17 + 24);
    if (v19)
    {
      CMTimebaseGetTime(&v44, v19);
    }

    v20 = *(v17 + 44);
    if (v20 == 1)
    {
      if ((*(v17 + 156) & 0x1D) == 1)
      {
        if ((v42 = 0uLL, v43 = 0, v22 = *(v17 + 176), time1 = *(v17 + 144), FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v22, &time1, &v42), memset(&type, 0, sizeof(type)), time1 = *(v17 + 144), FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(a3, &time1, &type), epoch = type.epoch, v49 = v42.n128_u64[0], v24 = v42.n128_u32[3], v50 = v42.n128_i32[2], v25 = v43, v47 = type.value, flags = type.flags, timescale = type.timescale, (v42.n128_u8[12] & 0x1F) != 3) && (type.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), *&lhs.value = v42, lhs.epoch = v43, rhs = type, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) > 0))
        {
          time1.value = v49;
          time1.timescale = v50;
          time1.flags = v24;
          time1.epoch = v25;
          time.value = v47;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = epoch;
          if (CMTimeCompare(&time1, &time))
          {
            LODWORD(lhs.value) = 0;
            LOBYTE(rhs.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = lhs.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
            {
              v29 = value;
            }

            else
            {
              v29 = value & 0xFFFFFFFE;
            }

            if (v29)
            {
              *&time1.value = v42;
              time1.epoch = v43;
              Seconds = CMTimeGetSeconds(&time1);
              time1 = *(v17 + 144);
              v31 = CMTimeGetSeconds(&time1);
              time1 = type;
              v32 = CMTimeGetSeconds(&time1);
              time1 = *(v17 + 144);
              v33 = CMTimeGetSeconds(&time1);
              time1 = v44;
              v34 = CMTimeGetSeconds(&time1);
              LODWORD(time.value) = 136316930;
              *(&time.value + 4) = "figSpeedRampRenderPipelineSetSpeedRampData";
              LOWORD(time.flags) = 2082;
              *(&time.flags + 2) = v17 + 224;
              HIWORD(time.epoch) = 2048;
              v52 = a1;
              v53 = 2048;
              v54 = Seconds;
              v55 = 2048;
              v56 = v31;
              v57 = 2048;
              v58 = v32;
              v59 = 2048;
              v60 = v33;
              v61 = 2048;
              v62 = v34;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    else if (!v20 && (*(v17 + 156) & 0x1D) == 1)
    {
      v21 = *(v17 + 176);
      rhs = v44;
      lhs = **&MEMORY[0x1E6960C70];
      if (v21)
      {
        CFDataGetBytePtr(v21);
        CFDataGetLength(v21);
      }

      if (a3)
      {
        CFDataGetBytePtr(a3);
        CFDataGetLength(a3);
      }

      *&time1.value = v40;
      time1.epoch = v18;
      time = rhs;
      CMFindFirstDivergenceBetweenTimeMappingArrays();
      time1 = lhs;
      time = *(v17 + 144);
      Mutable = 0;
      v36 = 0;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        if (dword_1EAF17C38)
        {
          v42.n128_u32[0] = 0;
          LOBYTE(type.value) = 0;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        time1 = lhs;
        FigCFDictionarySetCMTime();
        v36 = @"WarehousePleaseRetransmitFromTime";
      }

      goto LABEL_53;
    }

    Mutable = 0;
    v36 = 0;
LABEL_53:
    v38 = *(v17 + 176);
    if (v38)
    {
      CFRelease(v38);
      *(v17 + 176) = 0;
    }

    if (a3)
    {
      v39 = CFGetAllocator(a1);
      *(v17 + 176) = CFDataCreateCopy(v39, a3);
    }

    FigSimpleMutexUnlock();
    if (v36)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 != CMTimebaseGetTypeID())
      {
        goto LABEL_3;
      }
    }

    speedramp_setCommittedTimebase(a1, a3);
    speedramp_setTimebase(a1, a3);
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v7 + 23));
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v13 = v12(FigBaseObject, a2, a3);
    }

    else
    {
      v13 = 4294954514;
    }

    v15 = *(v7 + 4);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v16)
    {
      v16(v15);
    }

    return v13;
  }

  if (CFEqual(@"ExpectScaledEdits", a2))
  {
    return 0;
  }

  if (CFEqual(@"WarehouseRetransmissionAvailable", a2) && *MEMORY[0x1E695E4D0] == a3)
  {
    v7[41] = 1;
    *(v7 + 11) = 0;
  }

  v14 = *(v7 + 23);

  return FigRenderPipelineSetProperty(v14, a2, a3);
}

uint64_t speedrampUpcomingTransition_retain(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 56, 0xE00409497B236, 0);
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  *(v3 + 48) = *(a2 + 6);
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  *v3 = v6;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *(v3 + 40);
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *(v3 + 48);
  if (v11)
  {
    CFRetain(v11);
  }

  return v3;
}

void speedrampUpcomingTransition_release(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
    ptr[4] = 0;
  }

  v7 = ptr[5];
  if (v7)
  {
    CFRelease(v7);
    ptr[5] = 0;
  }

  v8 = ptr[6];
  if (v8)
  {
    CFRelease(v8);
    ptr[6] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

Float64 OUTLINED_FUNCTION_0_220@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 timea, uint64_t time_16)
{
  time_16 = a1;
  timea = a2;

  return CMTimeGetSeconds(&timea);
}

CMTime *OUTLINED_FUNCTION_2_200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTimeRange *range, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __n128 rangea, __n128 range_16, __n128 range_32)
{
  range_16 = a10;
  range_32 = a11;
  rangea = a9;

  return CMTimeRangeGetEnd(&a26, &rangea);
}

uint64_t figTTMLIntervalTreeRegisterFigTTMLIntervalTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLIntervalTreeID = result;
  return result;
}

uint64_t FigTTMLIntervalTreeCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = Mutable;
  if (a3)
  {
    if (!Mutable)
    {
      FigTTMLIntervalTreeCreate_cold_2(&v20);
      return v20;
    }

    RootNode = FigTTMLTreeGetRootNode(a2);
    v8 = FigTTMLTreeWalkFromNode(RootNode, figTTMLIntervalCopyNodeToArray, 0, v6);
    if (v8)
    {
      v17 = v8;
      goto LABEL_13;
    }

    Count = CFArrayGetCount(v6);
    if (Count >= 2)
    {
      v10 = Count - 1;
      do
      {
        v11 = rand();
        CFArrayExchangeValuesAtIndices(v6, v10, v11 % (v10 + 1));
        --v10;
      }

      while (v10);
    }

    MEMORY[0x19A8D3660](&FigTTMLIntervalTreeGetTypeID_sRegisterFigTTMLIntervalTreeOnce, figTTMLIntervalTreeRegisterFigTTMLIntervalTree);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      Interval = figTTMLIntervalCreateInterval();
      if (CFArrayGetCount(v6) >= 1)
      {
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v15);
          figTTMLIntervalTreeInsert(Interval, ValueAtIndex);
          ++v15;
        }

        while (v15 < CFArrayGetCount(v6));
      }

      v17 = 0;
      *(v13 + 16) = Interval;
      *a3 = v13;
    }

    else
    {
      FigTTMLIntervalTreeCreate_cold_1(&v19);
      v17 = v19;
    }
  }

  else
  {
    FigTTMLIntervalTreeCreate_cold_3(&v21);
    v17 = v21;
  }

  if (v6)
  {
LABEL_13:
    CFRelease(v6);
  }

  return v17;
}

void *figTTMLIntervalCreateInterval()
{
  v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040DD9C6B3AuLL);
  v1 = MEMORY[0x1E6960C70];
  *v0 = *MEMORY[0x1E6960C70];
  v0[2] = *(v1 + 16);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  v0[3] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0[4] = CFArrayCreateMutable(v2, 0, v3);
  return v0;
}

void figTTMLIntervalReleaseInterval(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    figTTMLIntervalReleaseInterval(a1[5]);
    figTTMLIntervalReleaseInterval(a1[6]);

    free(a1);
  }
}

uint64_t FigTTMLIntervalTreeAppendActiveNodesToArray(uint64_t a1, __int128 *a2, __CFArray *a3)
{
  if (!a3)
  {
    FigTTMLIntervalTreeAppendActiveNodesToArray_cold_2(&v5);
    return v5;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    FigTTMLIntervalTreeAppendActiveNodesToArray_cold_1(&v5);
    return v5;
  }

  v3 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 2);
  figTTMLIntervalTreeAppendActiveNodesToArray(v3, &v5, a3);
  return 0;
}

CFIndex figTTMLIntervalTreeAppendActiveNodesToArray(uint64_t a1, uint64_t a2, __CFArray *a3)
{
  if ((*(a2 + 12) & 1) == 0)
  {
    return figTTMLIntervalTreeAppendActiveNodesToArray_cold_1();
  }

  *&time1.start.value = *a1;
  time1.start.epoch = *(a1 + 16);
  *&v15.start.value = *a2;
  v15.start.epoch = *(a2 + 16);
  v6 = CMTimeCompare(&time1.start, &v15.start);
  if (v6 < 1)
  {
    v10 = v6;
    result = CFArrayGetCount(*(a1 + 32));
    if (v10 < 0)
    {
      if (result >= 1)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v13);
          memset(&time1, 0, sizeof(time1));
          FigTTMLNodeGetActiveTimeRange(ValueAtIndex, &time1);
          v15 = time1;
          CMTimeRangeGetEnd(&time2, &v15);
          *&v15.start.value = *a2;
          v15.start.epoch = *(a2 + 16);
          if (CMTimeCompare(&time2, &v15.start) < 1)
          {
            break;
          }

          CFArrayAppendValue(a3, ValueAtIndex);
          ++v13;
        }

        while (v13 < CFArrayGetCount(*(a1 + 32)));
      }

      result = *(a1 + 48);
      if (result)
      {
        goto LABEL_8;
      }
    }

    else if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        v12 = CFArrayGetValueAtIndex(*(a1 + 32), i);
        CFArrayAppendValue(a3, v12);
        result = CFArrayGetCount(*(a1 + 32));
      }
    }
  }

  else
  {
    if (CFArrayGetCount(*(a1 + 24)) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 24), v7);
        memset(&time1, 0, sizeof(time1));
        FigTTMLNodeGetActiveTimeRange(v8, &time1);
        *&v15.start.value = *a2;
        v15.start.epoch = *(a2 + 16);
        time2 = time1.start;
        if (CMTimeCompare(&v15.start, &time2) < 0)
        {
          break;
        }

        CFArrayAppendValue(a3, v8);
        ++v7;
      }

      while (v7 < CFArrayGetCount(*(a1 + 24)));
    }

    result = *(a1 + 40);
    if (result)
    {
LABEL_8:
      *&time1.start.value = *a2;
      time1.start.epoch = *(a2 + 16);
      return figTTMLIntervalTreeAppendActiveNodesToArray(result, &time1, a3);
    }
  }

  return result;
}

void figTTMLIntervalTreeInsertToSortedArray(const __CFArray *a1, const void *a2, CFComparisonResult (__cdecl *a3)(const void *, const void *, void *))
{
  v8.length = CFArrayGetCount(a1);
  v8.location = 0;
  Count = CFArrayBSearchValues(a1, v8, a2, a3, 0);
  if (Count > CFArrayGetCount(a1))
  {
    Count = CFArrayGetCount(a1);
  }

  CFArrayInsertValueAtIndex(a1, Count, a2);
}

uint64_t figTTMLIntervalTreeCompareByStart(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  FigTTMLNodeGetActiveTimeRange(a1, &v9);
  FigTTMLNodeGetActiveTimeRange(a2, &v6);
  *&time1.value = v9;
  time1.epoch = v10;
  *&v4.value = v6;
  v4.epoch = v7;
  return CMTimeCompare(&time1, &v4);
}

uint64_t figTTMLIntervalTreeCompareByEnd(uint64_t a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  memset(&v7, 0, sizeof(v7));
  FigTTMLNodeGetActiveTimeRange(a1, &v8);
  FigTTMLNodeGetActiveTimeRange(a2, &v7);
  range = v7;
  CMTimeRangeGetEnd(&time1, &range);
  range = v8;
  CMTimeRangeGetEnd(&time2, &range);
  return CMTimeCompare(&time1, &time2);
}

uint64_t FigFairPlayCPEProtectorCloudInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 8) = 0;
    }

    v5 = *v3;
    if (*v3)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(v5, a1);
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      FigFairPlayAirPlaySessionDestroy(v7);
      *(v3 + 16) = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayCPEProtectorCloudCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = Mutable;
  if (DerivedStorage && Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPCCPEProtector: sharedContext<%@>", *DerivedStorage);
  }

  return v2;
}

uint64_t FigFairPlayCPEProtectorCloudSetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294955144;
  }

  else
  {
    return 4294955146;
  }
}

uint64_t FigFairPlayCPEProtectorCloudBeginAirPlaySessionAsync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    v12 = 4294955138;
    goto LABEL_11;
  }

  v8 = DerivedStorage;
  number = 0;
  valuePtr = 0;
  v9 = *DerivedStorage;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    if (!v10(v9, 0x1F0B529B8, *MEMORY[0x1E695E480], &number))
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  v11 = FigFairPlayAirPlaySessionCreateWithContentInfo(valuePtr, v8[1], a2);
  v8[2] = v11;
  if (!v11)
  {
    v12 = 4294955145;
    goto LABEL_11;
  }

  v12 = FigFairPlayAirPlaySessionBeginAsync(v11, a3, a4);
  if (v12)
  {
LABEL_11:
    FigFairPlayCPEProtectorCloudEndAirPlaySession();
  }

  return v12;
}

uint64_t RegisterFigFairPlayCPEProtectorCloudType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLProfileCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    FigTTMLProfileCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 193;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 196;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLProfileConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

void figTTMLProfile_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLProfile_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"profile: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLProfile_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 136);
    if (v7)
    {
      v8.length = CFArrayGetCount(*(DerivedStorage + 136));
    }

    else
    {
      v8.length = 0;
    }

    v8.location = 0;
    CFArrayAppendArray(Mutable, v7, v8);
    v9 = *(v6 + 144);
    if (v9)
    {
      v10.length = CFArrayGetCount(v9);
    }

    else
    {
      v10.length = 0;
    }

    v10.location = 0;
    CFArrayAppendArray(Mutable, v9, v10);
    v11 = 0;
    *a2 = Mutable;
  }

  else
  {
    v11 = FigSignalErrorAtGM();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v11;
}

uint64_t figTTMLProfile_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 15;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLStyling_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigManifoldCreateForMovieFragmentStream(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, CFTypeRef *a7)
{
  values = @"MovieFragmentManifoldMemoryPool";
  cf = 0;
  if (a2)
  {
    memset(v25, 0, sizeof(v25));
    v24 = 0;
    if (!FigAtomStreamInitWithBBuf())
    {
      FigAtomStreamGetCurrentAtomTypeAndDataLength();
    }

    v17 = 0;
    v20 = 4294951252;
    goto LABEL_20;
  }

  FigManifoldGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v20 = v13;
    v17 = 0;
    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = cf;
  *(DerivedStorage + 40) = a3;
  *(DerivedStorage + 48) = a5;
  *(DerivedStorage + 56) = a4;
  *(DerivedStorage + 64) = a6 & 1;
  *(DerivedStorage + 65) = (a6 & 2) != 0;
  *(DerivedStorage + 288) = 0;
  v15 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v15;
  if (!v15)
  {
    FigManifoldCreateForMovieFragmentStream_cold_3(v25);
    v17 = 0;
LABEL_18:
    v20 = LODWORD(v25[0]);
    goto LABEL_20;
  }

  v16 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69628C8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = v16;
  if (!v16)
  {
    FigManifoldCreateForMovieFragmentStream_cold_2(v25);
    goto LABEL_18;
  }

  v18 = CMMemoryPoolCreate(v16);
  *(DerivedStorage + 16) = v18;
  if (!v18)
  {
    FigManifoldCreateForMovieFragmentStream_cold_1(v25);
    goto LABEL_18;
  }

  Empty = CMBlockBufferCreateEmpty(a1, 8u, 0, (DerivedStorage + 80));
  if (Empty)
  {
    v20 = Empty;
  }

  else
  {
    v20 = MovieInformationCreate(a1, 4, (DerivedStorage + 144));
    if (!v20)
    {
      *a7 = cf;
      cf = 0;
LABEL_11:
      CFRelease(v17);
      return v20;
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    goto LABEL_11;
  }

  return v20;
}

uint64_t MovieFragmentManifoldInvalidate(const void *a1)
{
  CFRetain(a1);
  fragManifold_InvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t MovieFragmentManifoldFinalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  fragManifold_InvalidateGuts(a1);

  return FigSimpleMutexDestroy();
}

__CFString *MovieFragmentManifoldCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v1 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"FigMovieFragmentManifold :");
  }

  return v1;
}

uint64_t MovieFragmentManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    v8 = 0;
    Mutable = 0;
    v10 = 4294954511;
    goto LABEL_32;
  }

  if (!CFEqual(a2, @"FMFD_Asset"))
  {
    if (CFEqual(a2, @"FMFD_UnconsumedData"))
    {
      v22 = 0;
      v13 = CMBlockBufferCreateWithBufferReference(a3, *(DerivedStorage + 80), 0, *(DerivedStorage + 88), 0, &v22);
LABEL_10:
      v10 = v13;
      if (!v13)
      {
        *a4 = v22;
      }

      v8 = 0;
      Mutable = 0;
      goto LABEL_32;
    }

    if (!CFEqual(a2, @"FMFD_ParserState"))
    {
      if (!CFEqual(a2, @"FMFD_Type"))
      {
        if (CFEqual(a2, @"FMFD_IsCollectingMetaData"))
        {
          v10 = 0;
          v8 = 0;
          Mutable = 0;
          if (*(DerivedStorage + 304))
          {
            v21 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v21 = MEMORY[0x1E695E4C0];
          }

          *a4 = *v21;
          goto LABEL_32;
        }

        if (!CFEqual(a2, @"FMFD_TrackReferenceDictionary"))
        {
          v8 = 0;
          Mutable = 0;
          v10 = 4294954512;
          goto LABEL_32;
        }

        v22 = 0;
        v13 = MovieInformationCreateTrackReferenceDictionary(*MEMORY[0x1E695E480], *(DerivedStorage + 144), &v22);
        goto LABEL_10;
      }

      v11 = CFStringCreateWithCString(a3, "FMP4", 0x8000100u);
LABEL_30:
      v10 = 0;
      v8 = 0;
      Mutable = 0;
      goto LABEL_31;
    }

    LODWORD(v22) = 0;
    if (*(DerivedStorage + 138) || *(DerivedStorage + 112) == 2)
    {
      v19 = 2;
    }

    else
    {
      if (!*(DerivedStorage + 136) && !*(DerivedStorage + 137))
      {
        goto LABEL_25;
      }

      v19 = 1;
    }

    LODWORD(v22) = v19;
LABEL_25:
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v22);
    goto LABEL_30;
  }

  v12 = (DerivedStorage + 104);
  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    Mutable = 0;
    v8 = 0;
LABEL_6:
    v11 = CFRetain(v11);
LABEL_7:
    v10 = 0;
LABEL_31:
    *a4 = v11;
    goto LABEL_32;
  }

  if (!*(DerivedStorage + 96))
  {
    Mutable = 0;
    v8 = 0;
    v11 = 0;
    v10 = 4294954513;
    goto LABEL_31;
  }

  LODWORD(v22) = 1450143565;
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"assetOption_RequiresInProcessOperation", *MEMORY[0x1E695E4D0]);
  v15 = CMByteStreamCreateForBlockBuffer();
  if (v15)
  {
    v10 = v15;
    v8 = 0;
  }

  else
  {
    v8 = CFNumberCreate(v14, kCFNumberSInt32Type, &v22);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v17)
    {
      v10 = 4294954514;
      goto LABEL_32;
    }

    v18 = v17(CMBaseObject, *MEMORY[0x1E6960DC8], v8);
    if (!v18)
    {
      v18 = FigAssetCreateWithByteStream(a3, cf, 1, Mutable, (DerivedStorage + 104));
      if (!v18)
      {
        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v10 = v18;
  }

LABEL_32:
  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t MovieFragmentManifoldSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    MovieFragmentManifoldSetProperty_cold_1(&v10);
    v8 = v10;
  }

  else if (CFEqual(a2, @"FMFD_ProhibitPrimingTrim"))
  {
    if (a3 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      Value = CFBooleanGetValue(a3);
      v8 = 0;
      *(DerivedStorage + 288) = Value;
    }

    else
    {
      v8 = 4294951256;
    }
  }

  else
  {
    v8 = 4294954512;
  }

  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t fragManifold_InvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    fragManifold_EndAllTracks(a1, 4294954511);
    fragManifold_DisposeTracks(DerivedStorage);
    v3 = *(DerivedStorage + 144);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 144) = 0;
    }

    v4 = *(DerivedStorage + 80);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(DerivedStorage + 96);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(DerivedStorage + 104);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(DerivedStorage + 248);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 248) = 0;
    }

    v8 = *(DerivedStorage + 256);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 256) = 0;
    }

    free(*(DerivedStorage + 224));
    free(*(DerivedStorage + 232));
    v9 = *(DerivedStorage + 296);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 296) = 0;
    }

    v10 = *(DerivedStorage + 304);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 304) = 0;
    }

    v11 = *(DerivedStorage + 16);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 16) = 0;
    }
  }

  --*(DerivedStorage + 32);

  return FigSimpleMutexUnlock();
}

uint64_t fragManifold_EndAllTracks(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (*(result + 160))
  {
    result = MovieInformationGetTrackCount(*(result + 144));
    if (result >= 1)
    {
      v5 = 0;
      for (i = 0; i < result; ++i)
      {
        fragManifold_EndTrack(v4, (v4[20] + v5), a2);
        result = MovieInformationGetTrackCount(v4[18]);
        v5 += 256;
      }
    }
  }

  v7 = v4[34];
  if (v7)
  {
    result = fragManifold_EndTrack(v4, v7, a2);
  }

  v8 = v4[35];
  if (v8)
  {

    return fragManifold_EndTrack(v4, v8, a2);
  }

  return result;
}

void fragManifold_DisposeTracks(uint64_t *a1)
{
  if (a1[20])
  {
    fragManifold_UnprepareTracksForSampleEmission(a1);
    if (MovieInformationGetTrackCount(a1[18]) >= 1)
    {
      v2 = 0;
      v3 = 144;
      do
      {
        v4 = a1[20];
        v5 = *(v4 + v3 - 88);
        if (v5)
        {
          CFRelease(v5);
          v4 = a1[20];
          *(v4 + v3 - 88) = 0;
        }

        v6 = *(v4 + v3 - 80);
        if (v6)
        {
          CFRelease(v6);
          v4 = a1[20];
          *(v4 + v3 - 80) = 0;
        }

        v7 = *(v4 + v3 - 72);
        if (v7)
        {
          CFRelease(v7);
          *(a1[20] + v3 - 72) = 0;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        v8 = a1[20];
        v9 = *(v8 + v3);
        if (v9)
        {
          CFRelease(v9);
          v8 = a1[20];
          *(v8 + v3) = 0;
        }

        v10 = *(v8 + v3 + 8);
        if (v10)
        {
          CFRelease(v10);
          v8 = a1[20];
          *(v8 + v3 + 8) = 0;
        }

        v11 = *(v8 + v3 - 104);
        if (v11)
        {
          CFRelease(v11);
          *(a1[20] + v3 - 104) = 0;
        }

        ++v2;
        v3 += 256;
      }

      while (v2 < MovieInformationGetTrackCount(a1[18]));
    }

    v12 = a1[34];
    if (v12)
    {
      if (v12[8])
      {
        CFRelease(v12[8]);
        v12 = a1[34];
        v12[8] = 0;
      }

      a1[34] = 0;
      free(v12);
    }

    v13 = a1[35];
    if (v13)
    {
      if (v13[8])
      {
        CFRelease(v13[8]);
        v13 = a1[35];
        v13[8] = 0;
      }

      a1[35] = 0;
      free(v13);
    }

    v14 = a1[20];
    if (v14)
    {
      a1[20] = 0;

      free(v14);
    }
  }
}

uint64_t fragManifold_EndTrack(uint64_t result, unsigned int *a2, uint64_t a3)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v6 = result;
    *(a2 + 3) = 0;
    v7 = *(result + 32);
    *(result + 32) = 0;
    if (v7 >= 1)
    {
      v8 = v7;
      do
      {
        FigSimpleMutexUnlock();
        --v8;
      }

      while (v8);
    }

    v3(*(v6 + 8), *a2, *(a2 + 4), a3);
    do
    {
      result = FigSimpleMutexLock();
      v9 = *(v6 + 32) + 1;
      *(v6 + 32) = v9;
    }

    while (v9 < v7);
  }

  return result;
}

uint64_t fragManifold_UnprepareTracksForSampleEmission(uint64_t result)
{
  if (*(result + 160))
  {
    v1 = result;
    result = MovieInformationGetTrackCount(*(result + 144));
    if (result >= 1)
    {
      v2 = 0;
      for (i = 0; i < result; ++i)
      {
        v4 = v1[20];
        v5 = *(v4 + v2 + 40);
        if (v5)
        {
          MovieTrackDisposeFragments(v5);
          v4 = v1[20];
        }

        MovieSampleAccessorDispose(*(v4 + v2 + 168));
        *(v1[20] + v2 + 168) = 0;
        result = MovieInformationGetTrackCount(v1[18]);
        v2 += 256;
      }
    }

    *(v1[18] + 184) = 0;
    v1[22] = 0;
    v1[23] = 0;
  }

  return result;
}

uint64_t fragManifold_ObtainTrackByID(uint64_t *a1, int a2, void *a3)
{
  v6 = a1[34];
  if (v6 && *v6 == a2 || (v6 = a1[35]) != 0 && *v6 == a2)
  {
LABEL_11:
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (MovieInformationGetTrackCount(a1[18]) < 1)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = a1[20];
    if (v9)
    {
      if (*(v9 + v7) == a2)
      {
        break;
      }
    }

    ++v8;
    v7 += 256;
    if (MovieInformationGetTrackCount(a1[18]) <= v8)
    {
      goto LABEL_10;
    }
  }

  v6 = (v9 + v7);
  if (a3)
  {
LABEL_12:
    *a3 = v6;
  }

LABEL_13:
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294951254;
  }
}

uint64_t MovieFragmentManifoldInjectData(const void *a1, uint64_t a2, char a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    MovieFragmentManifoldInjectData_cold_3(v23);
    return v23[0];
  }

  v8 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v8 + 32);
  if (*v8)
  {
    MovieFragmentManifoldInjectData_cold_1(v23);
LABEL_46:
    v21 = v23[0];
    goto LABEL_40;
  }

  if (*(v8 + 1))
  {
    MovieFragmentManifoldInjectData_cold_2(v23);
    goto LABEL_46;
  }

  *(v8 + 1) = 1;
  if (a3)
  {
    v9 = ConsumeBufferedBytes(v8, *(v8 + 88));
    if (v9)
    {
      goto LABEL_42;
    }

    *(v8 + 72) = 0;
    fragManifold_UnprepareTracksForSampleEmission(v8);
    *(v8 + 112) = 0;
    *(v8 + 138) = 0;
  }

  v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  v11 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
  if (!FigCFEqual() || !FigCFEqual())
  {
    v12 = *(v8 + 248);
    *(v8 + 248) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(v8 + 256);
    *(v8 + 256) = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(v8 + 264);
    *(v8 + 264) = 0;
    if (*(v8 + 248))
    {
      FigBasicAESCPECryptorGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        *(v8 + 264) = 1;
        if (MovieInformationGetTrackCount(*(v8 + 144)) >= 1)
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v9 = fragManifold_SetTrackLatestFormatDescription(v8, *(v8 + 160) + v15, *(*(v8 + 160) + v15 + 64));
            if (v9)
            {
              goto LABEL_42;
            }

            v9 = fragManifold_CallFormatDescriptionCallback(v8, (*(v8 + 160) + v15));
            if (v9)
            {
              goto LABEL_42;
            }

            ++v16;
            v15 += 256;
          }

          while (v16 < MovieInformationGetTrackCount(*(v8 + 144)));
        }
      }

      else if (*(v8 + 160) && MovieInformationGetTrackCount(*(v8 + 144)) >= 1)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(v8 + 160) + v17;
          *(v19 + 82) = 1;
          if (v14)
          {
            v9 = fragManifold_SetTrackLatestFormatDescription(v8, v19, *(v19 + 56));
            if (v9)
            {
              goto LABEL_42;
            }
          }

          ++v18;
          v17 += 256;
        }

        while (v18 < MovieInformationGetTrackCount(*(v8 + 144)));
      }
    }
  }

  if (CMBlockBufferGetDataLength(a4))
  {
    v9 = fragManifold_PushBytes(v8);
    if (!v9)
    {
      if ((a3 & 2) != 0 && (*(v8 + 88) || *(v8 + 176)))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_39;
    }

LABEL_42:
    v21 = v9;
    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
LABEL_40:
  *(v8 + 1) = 0;
  --*(v8 + 32);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v21;
}

uint64_t MovieFragmentManifoldNoteStreamEnd(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 32);
  if (*DerivedStorage)
  {
    MovieFragmentManifoldNoteStreamEnd_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 2) = 1;
    fragManifold_EndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t ConsumeBufferedBytes(CMBlockBufferRef *blockBufferOut, OpaqueCMBlockBuffer *a2)
{
  if (blockBufferOut[11] == a2)
  {
    v5 = blockBufferOut + 10;
    v4 = blockBufferOut[10];
    if (v4)
    {
      CFRelease(v4);
      *v5 = 0;
    }

    CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, blockBufferOut + 10);
  }

  else
  {
    blockBufferOuta = 0;
    v6 = blockBufferOut[10];
    CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOuta);
    result = CMBlockBufferAppendBufferReference(blockBufferOuta, v6, a2, 0, 0);
    if (result)
    {
      return result;
    }

    blockBufferOut[10] = blockBufferOuta;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v8 = blockBufferOut[10];
  blockBufferOut[9] = (a2 + blockBufferOut[9]);
  DataLength = CMBlockBufferGetDataLength(v8);
  result = 0;
  blockBufferOut[11] = DataLength;
  return result;
}

uint64_t fragManifold_SelectEligibleTrackForEmitting(uint64_t *a1)
{
  if (a1[20])
  {
    TrackCount = MovieInformationGetTrackCount(a1[18]);
    if (TrackCount < 1)
    {
      return 0;
    }

    v3 = 0;
    v4 = a1[20];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (*(v4 + 168))
      {
        if (*(v4 + 184) < v5)
        {
          v3 = v4;
          v5 = *(v4 + 184);
        }
      }

      v4 += 256;
      --TrackCount;
    }

    while (TrackCount);
    if (v3)
    {
      result = 0;
      a1[21] = v3;
      *(v3 + 248) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fragManifold_SelectEligibleTrackForEmitting_cold_1(&v7);
    return v7;
  }

  return result;
}

CMTime *OUTLINED_FUNCTION_2_201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, CMTime *rhs, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 rhsa, CMTime *lhs, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61, CMTime *a62, uint64_t a63)
{
  rhsa = a61;
  lhs = a62;

  return CMTimeAdd((v64 - 160), &lhsa, &rhsa);
}

void *OUTLINED_FUNCTION_13_62(size_t a1)
{

  return malloc_type_calloc(a1, 0x100uLL, 0x10E00401C2CD5CEuLL);
}

uint64_t OUTLINED_FUNCTION_15_62(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMBlockBufferCreateWithMemoryBlock(v68, 0, v67, v68, 0, 0, a1, 1u, &a67);
}

uint64_t OUTLINED_FUNCTION_19_49()
{
  --*(v0 + 32);

  return FigSimpleMutexUnlock();
}

void *OUTLINED_FUNCTION_21_42(uint64_t a1)
{
  *(v1 + 224) = a1;
  v3 = 8 * *(v1 + 216);

  return malloc_type_malloc(v3, 0x100004000313F17uLL);
}

CMTime *OUTLINED_FUNCTION_22_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CMTime *lhs, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, CMTime *a61, uint64_t a62, uint64_t a63)
{
  *(v72 - 128) = *(v71 + 96);
  *(v72 - 112) = *(v71 + 112);

  return CMTimeAdd(&a71, &lhsa, (v72 - 128));
}

uint64_t OUTLINED_FUNCTION_26_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(*(v71 + 168) + 168);
  a71 = 0;
  v74 = *v73;
  v75 = *(v73 + 8);

  return MovieSampleAccessorCreate(v74, v75, &a71);
}

uint64_t OUTLINED_FUNCTION_30_31(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, size_t a4, uint64_t a5, CMBlockBufferRef *a6)
{

  return CMBlockBufferCreateWithBufferReference(v6, a2, 0, a4, 0, a6);
}

__n128 OUTLINED_FUNCTION_32_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a43, uint64_t a44)
{
  result = a43;
  *(v44 - 160) = a43;
  *(v44 - 144) = a44;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_31()
{

  return CMBaseObjectGetVTable();
}

BOOL OUTLINED_FUNCTION_39_26(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, os_log_type_t type, int a62, int a63)
{

  return os_log_type_enabled(a1, type);
}

void FigMovieGetSampleDependencyFlagsFromSampleAttachments(uint64_t a1, char *a2, _BYTE *a3, _BYTE *a4)
{
  if (a2)
  {
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 |= 8u;
    }

    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v7 |= 0x20u;
    }

    *a2 = v7;
  }

  if (a3)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *a3 = 0;
  }

  if (a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
    *a4 = 0;
  }
}

double FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(const opaqueCMFormatDescription *a1, int a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (!a2)
  {
    if (MediaSubType <= 1685480223)
    {
      if (MediaSubType == 1685468526)
      {
        return CMVideoFormatDescriptionGetDimensions(a1).width;
      }

      v8 = 13680;
    }

    else
    {
      if (MediaSubType == 1685480224 || MediaSubType == 1685483632)
      {
        return CMVideoFormatDescriptionGetDimensions(a1).width;
      }

      v8 = 25456;
    }

    if (MediaSubType != (v8 | 0x64760000))
    {
      v5 = a1;
      v6 = 0;
      goto LABEL_3;
    }

    return CMVideoFormatDescriptionGetDimensions(a1).width;
  }

  v5 = a1;
  v6 = 1;
LABEL_3:

  *&result = *&CMVideoFormatDescriptionGetPresentationDimensions(v5, 1u, v6);
  return result;
}

uint64_t FigMovieCreateContiguousBBufFromNonContiguousAudioSample(opaqueCMSampleBuffer *a1, const __CFAllocator *a2, CMBlockBufferRef *a3, const __CFAllocator *a4, uint64_t *a5, void *a6)
{
  v40 = 0;
  packetDescriptionsPointerOut = 0;
  blockBufferOut = 0;
  packetDescriptionsSizeOut = 0;
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        if (a6)
        {
          FormatDescription = CMSampleBufferGetFormatDescription(a1);
          MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
          DataBuffer = CMSampleBufferGetDataBuffer(a1);
          if (MediaType == 1936684398)
          {
            v15 = DataBuffer;
            if (DataBuffer)
            {
              AudioStreamPacketDescriptionsPtr = isNonInterleavedPCMAudioFormatDescription(FormatDescription, &v40);
              if (AudioStreamPacketDescriptionsPtr)
              {
                goto LABEL_33;
              }

              if (!v40)
              {
                AudioStreamPacketDescriptionsPtr = CMBlockBufferCreateEmpty(a2, 0, 0, &blockBufferOut);
                if (!AudioStreamPacketDescriptionsPtr)
                {
                  AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a1, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
                  if (!AudioStreamPacketDescriptionsPtr)
                  {
                    if (packetDescriptionsSizeOut <= 0xF)
                    {
                      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_4(&v41);
                    }

                    else
                    {
                      v17 = packetDescriptionsSizeOut >> 4;
                      v18 = 8 * (packetDescriptionsSizeOut >> 4);
                      v19 = MEMORY[0x19A8CC720](a4, v18, 1400899305, 0);
                      if (v19)
                      {
                        v20 = v19;
                        v34 = a3;
                        v35 = a5;
                        v36 = a6;
                        allocator = a4;
                        v21 = 0;
                        v22 = 0;
                        v23 = 0;
                        v24 = 0;
                        v25 = 0;
                        v26 = 1;
                        while (1)
                        {
                          mStartOffset = packetDescriptionsPointerOut[v21].mStartOffset;
                          mDataByteSize = packetDescriptionsPointerOut[v21].mDataByteSize;
                          if (!v22 || v23 != mStartOffset)
                          {
                            if (v24)
                            {
                              appended = CMBlockBufferAppendBufferReference(blockBufferOut, v15, v25, v24, 0);
                              if (appended)
                              {
                                v30 = appended;
                                goto LABEL_32;
                              }

                              v24 = 0;
                            }

                            v25 = mStartOffset;
                          }

                          v20[v22 / 8] = mDataByteSize;
                          if (v26)
                          {
                            if (*v20 != mDataByteSize)
                            {
                              v26 = 0;
                            }
                          }

                          else
                          {
                            v26 = 0;
                          }

                          v24 += mDataByteSize;
                          v23 = mStartOffset + mDataByteSize;
                          v22 += 8;
                          ++v21;
                          if (v18 == v22)
                          {
                            v30 = CMBlockBufferAppendBufferReference(blockBufferOut, v15, v25, v24, 0);
                            if (!v30)
                            {
                              *v34 = blockBufferOut;
                              if (v26)
                              {
                                v31 = 1;
                              }

                              else
                              {
                                v31 = v17;
                              }

                              *v35 = v31;
                              *v36 = v20;
                              return v30;
                            }

LABEL_32:
                            CFAllocatorDeallocate(allocator, v20);
                            goto LABEL_44;
                          }
                        }
                      }

                      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_3(&v41);
                    }

                    goto LABEL_43;
                  }
                }

LABEL_33:
                v30 = AudioStreamPacketDescriptionsPtr;
                goto LABEL_44;
              }

              FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_2(&v41);
            }

            else
            {
              MTSidebandVideoPropertiesSetValue_cold_4(&v41);
            }
          }

          else
          {
            FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_1(&v41);
          }
        }

        else
        {
          FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_6(&v41);
        }
      }

      else
      {
        FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_7(&v41);
      }
    }

    else
    {
      FigMovieCreateContiguousBBufFromNonContiguousAudioSample_cold_8(&v41);
    }
  }

  else
  {
    FigTTMLDocumentWriterRegionTimelineWriteAttributesAndSetElements_cold_1(&v41);
  }

LABEL_43:
  v30 = v41;
LABEL_44:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v30;
}

uint64_t isNonInterleavedPCMAudioFormatDescription(const opaqueCMFormatDescription *a1, _BYTE *a2)
{
  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    goto LABEL_5;
  }

  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (!MostCompatibleFormat)
  {
    fcd_ttml_createStylePropertyFromTTMLStyle_color_cold_1(&v7);
    return v7;
  }

  if (MostCompatibleFormat->mASBD.mFormatID == 1819304813)
  {
    v5 = (LOBYTE(MostCompatibleFormat->mASBD.mFormatFlags) >> 5) & 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v5) = 0;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t FigMovieIsNonInterleavedPCMAudioSample(opaqueCMSampleBuffer *a1, _BYTE *a2)
{
  if (a1)
  {
    if (a2)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a1);

      return isNonInterleavedPCMAudioFormatDescription(FormatDescription, a2);
    }

    else
    {
      FigTTMLSerializerCreateForByteStream_cold_4(&v5);
      return v5;
    }
  }

  else
  {
    FigMovieIsNonInterleavedPCMAudioSample_cold_2(&v6);
    return v6;
  }
}

uint64_t FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(uint64_t a1, _WORD *a2, BOOL *a3, _BYTE *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v7 = FigCFDictionaryGetInt16IfPresent() != 0;
          FigCFDictionaryGetBooleanIfPresent();
          result = 0;
          *a2 = 0;
          *a3 = v7;
          *a4 = 0;
          return result;
        }

        FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_1(&v9);
      }

      else
      {
        FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_2(&v9);
      }
    }

    else
    {
      FigTTMLDocumentWriterMapPropertyToAttribute_ZIndex_cold_1(&v9);
    }
  }

  else
  {
    FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment_cold_4(&v9);
  }

  return v9;
}

uint64_t FigMovieCopySeamIdentifierFromSampleAttachment(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    FigMovieCopySeamIdentifierFromSampleAttachment_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    FigMovieCopySeamIdentifierFromSampleAttachment_cold_1(&v8);
    return v8;
  }

  if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E6962DD8], &cf))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    v5 = CFRetain(cf);
    result = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(const __CFArray *a1, CFIndex a2, CFUUIDBytes *a3)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (FigMovieCopySeamIdentifierFromSampleAttachment(ValueAtIndex, &cf))
  {
    goto LABEL_3;
  }

  if (!cf)
  {
    return 0;
  }

  if (CFStringGetLength(cf) >= 36)
  {
    v7 = CFGetAllocator(cf);
    v8 = CFUUIDCreateFromString(v7, cf);
    v6 = v8;
    if (v8)
    {
      *a3 = CFUUIDGetUUIDBytes(v8);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(uint64_t a1, _WORD *a2, _BYTE *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (FigCFDictionaryGetInt16IfPresent())
        {
          FigCFDictionaryGetBooleanIfPresent();
        }

        result = 0;
        *a2 = 0;
        *a3 = 0;
      }

      else
      {
        FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigMovieGetVideoSyncSampleEntryFromSampleAttachment(uint64_t a1, _BYTE *a2, BOOL *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = FigCFDictionaryGetIntIfPresent() != 0;
        result = 0;
        *a2 = 0;
        *a3 = v5;
        return result;
      }

      FigMovieGetVideoSyncSampleEntryFromSampleAttachment_cold_2(&v7);
    }

    else
    {
      FigMovieGetVideoSyncSampleEntryFromSampleAttachment_cold_3(&v7);
    }
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v7);
  }

  return v7;
}

uint64_t FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(const __CFDictionary *a1, uint64_t a2, char *a3)
{
  v17 = 0;
  v16 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6960438]);
        if (!Value)
        {
          v12 = 0;
          v14 = 0;
          goto LABEL_18;
        }

        if (FigCFDictionaryGetIntIfPresent())
        {
          if (FigCFDictionaryGetIntIfPresent())
          {
            if (FigCFDictionaryGetIntIfPresent())
            {
              if (FigCFDictionaryGetIntIfPresent())
              {
                v6 = CFDictionaryGetValue(Value, *MEMORY[0x1E69601A0]);
                if (v6 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFDataGetTypeID()))
                {
                  if (CFDataGetLength(v7) == 4)
                  {
                    v9 = CFDictionaryGetValue(Value, *MEMORY[0x1E6960190]);
                    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFDataGetTypeID()))
                    {
                      if (CFDataGetLength(v10) == 6)
                      {
                        if (FigCFDictionaryGetIntIfPresent())
                        {
                          LOBYTE(Value) = 0;
                          v12 = *CFDataGetBytePtr(v7);
                          BytePtr = CFDataGetBytePtr(v10);
                          v16 = *BytePtr;
                          v17 = *(BytePtr + 2);
                          v14 = 1;
LABEL_18:
                          result = 0;
                          *a2 = Value;
                          *(a2 + 1) = 0;
                          *(a2 + 2) = v12;
                          *(a2 + 6) = v16;
                          *(a2 + 10) = v17;
                          *(a2 + 12) = 0;
                          *(a2 + 13) = 0;
                          *(a2 + 16) = 0;
                          *a3 = v14;
                          return result;
                        }

                        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_4(&v18);
                      }

                      else
                      {
                        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_2(&v18);
                      }
                    }

                    else
                    {
                      FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_5(&v18);
                    }
                  }

                  else
                  {
                    FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_1(&v18);
                  }
                }

                else
                {
                  FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_6(&v18);
                }
              }

              else
              {
                FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_8(&v18);
              }
            }

            else
            {
              FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_10(&v18);
            }
          }

          else
          {
            FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_12(&v18);
          }
        }

        else
        {
          FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_14(&v18);
        }
      }

      else
      {
        FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_15(&v18);
      }
    }

    else
    {
      FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_16(&v18);
    }
  }

  else
  {
    FigMovieGetVideoTemporalLayerEntryFromSampleAttachment_cold_17(&v18);
  }

  return v18;
}

uint64_t FigMetricErrorEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, char a5, const void *a6, void *a7)
{
  ensureMetricEventTrace();
  if (a7)
  {
    FigMetricEventGetClassID();
    v14 = CMDerivedObjectCreate();
    if (!v14)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v16 = FigSimpleMutexCreate();
      *(DerivedStorage + 72) = v16;
      if (v16)
      {
        *DerivedStorage = 1;
        *(DerivedStorage + 8) = 13;
        if (a3)
        {
          v17 = CFRetain(a3);
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v17 = CFDateCreate(a1, Current);
        }

        *(DerivedStorage + 16) = v17;
        v19 = *a2;
        *(DerivedStorage + 48) = *(a2 + 2);
        *(DerivedStorage + 32) = v19;
        if (a4)
        {
          v20 = CFRetain(a4);
        }

        else
        {
          v20 = 0;
        }

        *(DerivedStorage + 24) = v20;
        if (a6)
        {
          v21 = CFRetain(a6);
        }

        else
        {
          v21 = 0;
        }

        v14 = 0;
        *(DerivedStorage + 64) = v21;
        *(DerivedStorage + 56) = a5;
        *a7 = 0;
      }

      else
      {
        return FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    FigMetricErrorEventCreateInternal_cold_1(&v23);
    return v23;
  }

  return v14;
}

uint64_t mee_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[8];
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mee_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mee_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef mee_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t mee_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    mee_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mee_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mee_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    mee_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

BOOL closedCaptionHasPrefix(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  if (Length < CFStringGetLength(a2))
  {
    return 0;
  }

  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v8);
  v5 = CFStringCompare(v6, a2, 1uLL) == kCFCompareEqualTo;
  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

__n128 FigCaptionLayoutClearMAXCaptionSettings(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 88) = 0;
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 96) = 0;
  }

  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 120) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 104) = result;
  *(a1 + 136) = 0;
  return result;
}

void FigCaptionLayoutCopyMAXCaptionSystemSettings(uint64_t a1)
{
  v43 = kMACaptionAppearanceBehaviorUseValue;
  behavior[0] = kMACaptionAppearanceBehaviorUseValue;
  v41 = kMACaptionAppearanceBehaviorUseValue;
  v42 = 1;
  v39 = kMACaptionAppearanceBehaviorUseValue;
  v40 = kMACaptionAppearanceBehaviorUseValue;
  v37 = kMACaptionAppearanceBehaviorUseValue;
  v38 = kMACaptionAppearanceBehaviorUseValue;
  v2 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, behavior);
  cf = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &v43);
  v35 = MACaptionAppearanceCopyStrokeColor();
  v34 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &v41);
  WindowRoundedCornerRadius = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, 0);
  v4 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleDefault);
  v33 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleMonospacedWithSerif);
  v5 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleProportionalWithSerif);
  v6 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleMonospacedWithoutSerif);
  v7 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleProportionalWithoutSerif);
  v8 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleCasual);
  v9 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleCursive);
  v10 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, 0, kMACaptionAppearanceFontStyleSmallCapital);
  ForegroundOpacity = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, 0);
  BackgroundOpacity = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &v40);
  WindowOpacity = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &v39);
  RelativeCharacterSize = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &v38);
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &v37);
  v15 = *a1;
  *a1 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 16);
  *(a1 + 16) = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 24);
  *(a1 + 24) = v34;
  if (v34)
  {
    CFRetain(v34);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 48);
  *(a1 + 48) = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 80);
  *(a1 + 80) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 88);
  *(a1 + 88) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 96);
  *(a1 + 96) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  *(a1 + 32) = WindowRoundedCornerRadius;
  *(a1 + 120) = BackgroundOpacity;
  *(a1 + 128) = WindowOpacity;
  *(a1 + 104) = RelativeCharacterSize;
  *(a1 + 112) = ForegroundOpacity;
  v27 = v43;
  v28 = behavior[0];
  *(a1 + 136) = TextEdgeStyle;
  *(a1 + 144) = v28;
  v29 = v42;
  *(a1 + 152) = v27;
  *(a1 + 160) = v29;
  v30 = v41;
  *(a1 + 168) = v40;
  *(a1 + 176) = v30;
  v31 = v38;
  *(a1 + 184) = v39;
  *(a1 + 192) = v31;
  *(a1 + 200) = v37;
  if (v4)
  {
    CFRelease(v4);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

int64x2_t FigCaptionLayoutGetMAXSettingsForPreferringContentAsAuthored@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 104) = _Q0;
  *(a1 + 120) = _Q0;
  *(a1 + 136) = xmmword_196E73090;
  result = vdupq_n_s64(1uLL);
  *(a1 + 152) = result;
  *(a1 + 168) = result;
  *(a1 + 184) = result;
  *(a1 + 200) = 1;
  return result;
}

double FigCaptionLayoutCellSizeForRect(int a1, double a2, double a3, double a4, double a5)
{
  v5 = 16.0;
  if (a1 != 1)
  {
    v5 = 4.0;
  }

  v6 = 9.0;
  if (a1 != 1)
  {
    v6 = 3.0;
  }

  v7 = a5 * v5 / v6;
  if (v7 > a4)
  {
    v7 = v5 * (a4 * v6 / v5) / v6;
  }

  v8 = v7 * 0.800000012;
  v9 = 32.0;
  if (a1 == 1)
  {
    v9 = 42.0;
  }

  return v8 / v9;
}

CTFontRef FigCaptionLayoutCreateCTFontWithOptions(__CFString *a1, int a2, CGFloat a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v4 = a2 != 0;
  v5 = *MEMORY[0x1E6965808];
  v6 = @"CourierNewPSMT";
  if (a1)
  {
    v6 = a1;
  }

  values = v6;
  keys[0] = v5;
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = CTFontDescriptorCreateWithAttributes(v7);
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v8, v4, 3u);
  if (!CopyWithSymbolicTraits)
  {
    if (!v8)
    {
      v11 = CTFontCreateWithFontDescriptor(0, a3, 0);
      if (!v7)
      {
        return v11;
      }

      goto LABEL_11;
    }

    v12 = CFRetain(v8);
    v11 = CTFontCreateWithFontDescriptor(v12, a3, 0);
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_9;
  }

  v10 = CopyWithSymbolicTraits;
  v11 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, a3, 0);
  CFRelease(v10);
  if (v8)
  {
LABEL_9:
    CFRelease(v8);
  }

  if (v7)
  {
LABEL_11:
    CFRelease(v7);
  }

  return v11;
}

CGFloat FigCaptionLayoutStandardCaptionRect(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = 16.0;
  if (a1 == 1)
  {
    v10 = 9.0;
  }

  else
  {
    v9 = 4.0;
    v10 = 3.0;
  }

  v11 = a5 * v9 / v10;
  v12 = a5;
  if (v11 > a4)
  {
    v12 = a4 * v10 / v9;
    v11 = v9 * v12 / v10;
  }

  v13 = v12 * 0.800000012;
  v14 = v11 * 0.800000012;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  Width = CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = v14;
  v19.size.height = v13;
  v16 = a2 + (Width - CGRectGetWidth(v19)) * 0.5;
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetHeight(v20);
  v21.origin.x = v16;
  v21.origin.y = a3;
  v21.size.width = v14;
  v21.size.height = v13;
  CGRectGetHeight(v21);
  return v16;
}

double FigCaptionLayoutExpandedCaptionRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetWidth(*&a1) * 0.1;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v9 = CGRectGetHeight(v16) * 0.1;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;

  *&result = CGRectInset(*&v10, v8, v9);
  return result;
}

uint64_t cclayout_printCFDataRects(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      result = fprintf(*MEMORY[0x1E69E9858], "numValues %d\n", Count);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          result = cclayout_printCFDataRects(ValueAtIndex);
        }
      }
    }

    else
    {
      return fprintf(*MEMORY[0x1E69E9858], "numValues %d\n");
    }
  }

  else
  {
    v7 = CFGetTypeID(a1);
    result = CFDataGetTypeID();
    if (v7 == result)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v9 = *BytePtr;
      v10 = *(BytePtr + 1);
      v11 = *(BytePtr + 2);
      v12 = *(BytePtr + 3);
      v13 = *MEMORY[0x1E69E9858];
      v14.origin.x = *BytePtr;
      v14.origin.y = v10;
      v14.size.width = v11;
      v14.size.height = v12;
      CGRectGetMinX(v14);
      v15.origin.x = v9;
      v15.origin.y = v10;
      v15.size.width = v11;
      v15.size.height = v12;
      CGRectGetMinY(v15);
      v16.origin.x = v9;
      v16.origin.y = v10;
      v16.size.width = v11;
      v16.size.height = v12;
      CGRectGetMaxX(v16);
      v17.origin.x = v9;
      v17.origin.y = v10;
      v17.size.width = v11;
      v17.size.height = v12;
      CGRectGetMaxY(v17);
      v18.origin.x = v9;
      v18.origin.y = v10;
      v18.size.width = v11;
      v18.size.height = v12;
      CGRectGetWidth(v18);
      v19.origin.x = v9;
      v19.origin.y = v10;
      v19.size.width = v11;
      v19.size.height = v12;
      CGRectGetHeight(v19);
      return fprintf(v13, "Rect minX:%f minY:%f maxX:%f maxY:%f width:%f height:%f\n");
    }
  }

  return result;
}

CFAttributedStringRef FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(CFArrayRef theArray, const __CFString *a2)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v4 = *MEMORY[0x1E695E480];
  aStr = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFAttributedStringBeginEditing(aStr);
  if (Count < 1)
  {
    goto LABEL_74;
  }

  v5 = 0;
  v51 = v2;
  alloc = v4;
  v54 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    v7 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v8 = CFArrayGetCount(ValueAtIndex);
    }

    else
    {
      v8 = 0;
    }

    Mutable = CFAttributedStringCreateMutable(v4, 0);
    CFAttributedStringBeginEditing(Mutable);
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = CFArrayGetValueAtIndex(v7, i);
        Value = CFDictionaryGetValue(v11, @"S");
        v71.location = CFAttributedStringGetLength(Mutable);
        v71.length = 0;
        CFAttributedStringReplaceAttributedString(Mutable, v71, Value);
      }
    }

    CFAttributedStringEndEditing(Mutable);
    String = CFAttributedStringGetString(Mutable);
    Length = CFStringGetLength(String);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    theString = String;
    v67 = 0;
    v68 = Length;
    CharactersPtr = CFStringGetCharactersPtr(String);
    CStringPtr = 0;
    v65 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(String, 0x600u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *buffer = 0u;
    v57 = 0u;
    v66 = CStringPtr;
    v69 = 0;
    v70 = 0;
    if (Length < 1)
    {
      v19 = 0;
      v31 = 0;
      goto LABEL_66;
    }

    v18 = 0;
    v19 = 0;
    v20 = 64;
    while (1)
    {
      v21 = v19 >= 4 ? 4 : v19;
      v22 = v68;
      if (v68 <= v19)
      {
        v24 = 0;
      }

      else
      {
        if (v65)
        {
          v23 = &v65[v67];
LABEL_22:
          v24 = v23[v19];
          goto LABEL_24;
        }

        if (!v66)
        {
          v25 = v69;
          if (v70 <= v19 || v69 > v19)
          {
            v27 = v21 + v18;
            v28 = v20 - v21;
            v29 = v19 - v21;
            v30 = v29 + 64;
            if (v29 + 64 >= v68)
            {
              v30 = v68;
            }

            v69 = v29;
            v70 = v30;
            if (v68 >= v28)
            {
              v22 = v28;
            }

            v72.location = v29 + v67;
            v72.length = v22 + v27;
            CFStringGetCharacters(theString, v72, buffer);
            v25 = v69;
          }

          v23 = &buffer[-v25];
          goto LABEL_22;
        }

        v24 = v66[v67 + v19];
      }

LABEL_24:
      if (!CFCharacterSetIsCharacterMember(Predefined, v24))
      {
        break;
      }

      ++v19;
      --v18;
      ++v20;
      if (Length == v19)
      {
        goto LABEL_41;
      }
    }

    if (Length == v19)
    {
LABEL_41:
      v31 = 0;
      v19 = Length;
      goto LABEL_66;
    }

    v31 = 0;
    v32 = -Length;
    v33 = Length + 64;
    v34 = Length;
    while (1)
    {
      v35 = v34 >= 5 ? 5 : v34;
      v36 = v68;
      if (v68 >= v34)
      {
        if (v65)
        {
          v37 = v65[v67 - 1 + v34];
        }

        else if (v66)
        {
          v37 = v66[v67 - 1 + v34];
        }

        else
        {
          v38 = v69;
          if (v70 < v34 || v69 >= v34)
          {
            v40 = v35 + v32;
            v41 = v33 - v35;
            v42 = v34 - v35;
            v43 = v42 + 64;
            if (v42 + 64 >= v68)
            {
              v43 = v68;
            }

            v69 = v42;
            v70 = v43;
            if (v68 >= v41)
            {
              v36 = v41;
            }

            v73.location = v42 + v67;
            v73.length = v36 + v40;
            CFStringGetCharacters(theString, v73, buffer);
            v38 = v69;
          }

          v37 = buffer[v34 - 1 - v38];
        }
      }

      else
      {
        v37 = 0;
      }

      if (!CFCharacterSetIsCharacterMember(Predefined, v37))
      {
        break;
      }

      ++v31;
      ++v32;
      --v33;
      if (!--v34)
      {
        v31 = Length;
        break;
      }
    }

    v2 = v51;
LABEL_66:
    v76.length = Length - (v19 + v31);
    v4 = alloc;
    v76.location = v19;
    v44 = CFAttributedStringCreateWithSubstring(alloc, Mutable, v76);
    if (v5)
    {
      Attributes = CFAttributedStringGetAttributes(Mutable, 0, 0);
      v46 = CFAttributedStringCreate(alloc, a2, Attributes);
      v47 = aStr;
      v74.location = CFAttributedStringGetLength(aStr);
      v74.length = 0;
      CFAttributedStringReplaceAttributedString(v47, v74, v46);
      if (v46)
      {
        CFRelease(v46);
      }
    }

    v48 = aStr;
    v75.location = CFAttributedStringGetLength(aStr);
    v75.length = 0;
    CFAttributedStringReplaceAttributedString(v48, v75, v44);
    if (v44)
    {
      CFRelease(v44);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v5;
  }

  while (v5 != v54);
LABEL_74:
  v49 = aStr;
  CFAttributedStringEndEditing(aStr);
  return v49;
}

uint64_t FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(const __CFArray *a1)
{
  if (!a1)
  {
    return 2;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 2)
  {
    return 2;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 7;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      v10 = CFArrayGetCount(ValueAtIndex);
      if (v10)
      {
        v11 = v10;
        v12 = CFArrayGetValueAtIndex(v9, 0);
        v23 = 0;
        if (cclayout_getLocationFromCommandData(v12, &v23, 0))
        {
          v13 = CFArrayGetValueAtIndex(v9, v11 - 1);
          v22 = 0;
          if (cclayout_getLocationFromCommandData(v13, &v22, 0))
          {
            Value = CFDictionaryGetValue(v13, @"S");
            Length = CFAttributedStringGetLength(Value);
            v16 = v23;
            v17 = (Length + v22 - 1);
            if (v4)
            {
              v18 = v7 & 0xFFFFFFFE;
              if (v5 == v23)
              {
                v18 = v7;
              }

              if (v6 == v17)
              {
                v7 = v18;
              }

              else
              {
                v7 = v18 & 0xFFFFFFFB;
              }
            }
          }

          else
          {
            v17 = v6;
            v16 = v5;
          }

          v6 = v17;
          v5 = v16;
        }
      }
    }

    ++v4;
  }

  while (v3 != v4);
  v20 = v7 & 2;
  if ((v7 & 4) != 0)
  {
    v20 = 4;
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v7)
  {
    return v21;
  }

  else
  {
    return v20;
  }
}

double FigCaptionLayoutGetBackgroundPathRectFromDictionary(const __CFDictionary *a1)
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  v3[0] = *MEMORY[0x1E695F050];
  v3[1] = v1;
  CFDictionaryApplyFunction(a1, cclayout_GetRectFromPathDictionaryApplier, v3);
  return *v3;
}

__CFString *FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(const void *a1, int a2, const __CFArray *a3, const __CFArray *a4, int a5, CFTypeRef cf, const void *a7, int a8, double a9, double a10, double a11, double a12, uint64_t a13, const __CFArray *a14, const __CFDictionary **a15, _BYTE *a16, double *a17, void *a18, void *a19, __CFArray **a20, double *a21, double *a22)
{
  v565 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v24 = CFRetain(cf);
  }

  else
  {
    v24 = 0;
  }

  if (a7)
  {
    cfa = CFRetain(a7);
  }

  else
  {
    cfa = 0;
  }

  if (a16)
  {
    v434 = *a16;
  }

  else
  {
    v434 = 0;
  }

  if (a17)
  {
    v25 = *a17;
  }

  else
  {
    v25 = 0.0;
  }

  TypographicBounds = v25;
  LODWORD(values) = -1;
  LODWORD(v545[0]) = -1;
  if (a3)
  {
    if (CFArrayGetCount(a3) && (ValueAtIndex = CFArrayGetValueAtIndex(a3, 0), (Value = CFDictionaryGetValue(ValueAtIndex, @"R")) != 0) && (v28 = Value, CFArrayGetCount(Value)) && (v29 = CFArrayGetValueAtIndex(v28, 0)) != 0 && (v30 = v29, CFArrayGetCount(v29)) && (v31 = CFArrayGetValueAtIndex(v30, 0)) != 0 && (v32 = CFDictionaryGetValue(v31, @"S")) != 0 && (CFAttributedStringGetAttributes(v32, 0, 0), FigCFDictionaryGetInt32IfPresent(), FigCFDictionaryGetInt32IfPresent(), (values - 1) <= 6))
    {
      v33 = (8 * (values - 1) + 48);
    }

    else
    {
      v33 = 40;
    }

    v34 = *(a13 + v33);
    v35 = a13;
  }

  else
  {
    v35 = a13;
    v34 = *(a13 + 40);
  }

  v36 = *(v35 + 104);
  if (!a4 || !CFArrayGetCount(a4))
  {
    if (!v34)
    {
      goto LABEL_29;
    }

LABEL_32:
    v37 = CTFontDescriptorCopyAttribute(v34, *MEMORY[0x1E6965808]);
    goto LABEL_33;
  }

  CFArrayGetValueAtIndex(a4, 0);
  FigCFDictionaryGetInt32IfPresent();
  if (v34)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (!a1)
  {
    v433 = 0;
    goto LABEL_34;
  }

  v37 = CFRetain(a1);
LABEL_33:
  v433 = v37;
LABEL_34:
  v38 = v24;
  v39 = MEMORY[0x1E695E480];
  v40 = MEMORY[0x1E695F050];
  v41 = a13;
  if (v36 <= 0.0)
  {
    Mutable = 0;
    v444 = 0;
    v467 = *MEMORY[0x1E695F060];
    v451 = *(MEMORY[0x1E695F060] + 8);
    v351 = 0.0;
    goto LABEL_425;
  }

  v42 = a14;
  *&v449 = FigCaptionLayoutCellSizeForRect(0, a9, a10, a11, a12);
  Mutable = 0;
  v444 = 0;
  v427 = v43 * 0.8;
  v511 = *MEMORY[0x1E69659D8];
  v496 = *MEMORY[0x1E6965B48];
  v494 = *MEMORY[0x1E6965A28];
  color = *MEMORY[0x1E6965A18];
  name = *MEMORY[0x1E695F1C0];
  v465 = v43;
  v44 = v43 * -0.5;
  v452 = v40[3];
  v453 = v40[2];
  v45 = -1.0;
  allocator = *v39;
  v489 = *MEMORY[0x1E6965658];
  v46 = v36;
  v454 = v40[1];
  v455 = *v40;
  v456 = v44;
  do
  {
    v47 = floor(v46 * v427);
    if (v47 == 0.0)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = v47;
    }

    v49 = v46;
    if (!v38)
    {
      goto LABEL_42;
    }

    if (CTFontGetSize(v38) != v48 || !FigCFEqual())
    {
      CFRelease(v38);
LABEL_42:
      if (cfa)
      {
        CFRelease(cfa);
      }

      CTFontWithOptions = FigCaptionLayoutCreateCTFontWithOptions(v433, 0, v48);
      *&values = CTFontWithOptions;
      v51 = FigCaptionLayoutCreateCTFontWithOptions(v433, 1, v48);
      SymbolicTraits = CTFontGetSymbolicTraits(CTFontWithOptions);
      v53 = CFDictionaryCreate(allocator, MEMORY[0x1E6965658], &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      v54 = CFAttributedStringCreate(allocator, @" ", v53);
      v55 = CTLineCreateWithAttributedString(v54);
      TypographicBounds = CTLineGetTypographicBounds(v55, 0, 0, 0);
      if (v55)
      {
        CFRelease(v55);
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v53)
      {
        CFRelease(v53);
      }

      v41 = a13;
      if (values)
      {
        v56 = CFRetain(values);
        if (v51)
        {
LABEL_52:
          cfa = CFRetain(v51);
LABEL_55:
          if (values)
          {
            CFRelease(values);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          v57 = (SymbolicTraits >> 10) & 1;
          v38 = v56;
          goto LABEL_60;
        }
      }

      else
      {
        v56 = 0;
        if (v51)
        {
          goto LABEL_52;
        }
      }

      cfa = 0;
      goto LABEL_55;
    }

    v57 = v434;
LABEL_60:
    v434 = v57;
    if (a8)
    {
      v58 = 1;
    }

    else
    {
      v58 = v57 == 0;
    }

    v59 = !v58;
    v60 = *&v449 > TypographicBounds;
    v61 = v49 * *&v449;
    v436 = v49;
    if (v49 >= 1.0)
    {
      v61 = *&v449;
    }

    if ((v59 & v60) != 0)
    {
      v62 = v61 - TypographicBounds;
    }

    else
    {
      v62 = 0.0;
    }

    if ((v59 & v60) == 0)
    {
      v61 = TypographicBounds;
    }

    v467 = v61;
    if (v444)
    {
      CFRelease(v444);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v63 = FigCaptionLayoutStandardCaptionRect(0, a9, a10, a11, a12);
    v447 = v64;
    v448 = v63;
    v445 = v66;
    v446 = v65;
    v67 = FigCaptionLayoutExpandedCaptionRect(a9, a10, a11, a12);
    v457 = v68;
    v458 = v67;
    v459 = v70;
    v460 = v69;
    if (a4)
    {
      Count = CFArrayGetCount(a4);
    }

    else
    {
      Count = 0;
    }

    v72 = a3;
    v73 = v456;
    v74 = v38;
    if (a3)
    {
      v72 = CFArrayGetCount(a3);
    }

    v451 = v436 * v465;
    if (Count >= v72)
    {
      v75 = v72;
    }

    else
    {
      v75 = Count;
    }

    v76 = allocator;
    v77 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(allocator, v75, MEMORY[0x1E695E9C0]);
    v444 = CFArrayCreateMutable(allocator, v75, v77);
    v438 = v75;
    v509 = v74;
    v441 = v62;
    if (v75 > 0)
    {
      v78 = 0;
      if (v434)
      {
        v79 = 1;
      }

      else
      {
        v79 = 3;
      }

      v437 = v79;
      do
      {
        CFArrayGetValueAtIndex(a4, v78);
        v450 = v78;
        v80 = CFArrayGetValueAtIndex(a3, v78);
        v81 = CFDictionaryGetValue(v80, @"R");
        *v540 = *MEMORY[0x1E695F050];
        *&v540[16] = *(MEMORY[0x1E695F050] + 16);
        v461 = v81;
        if (v81)
        {
          v82 = CFArrayGetCount(v81);
        }

        else
        {
          v82 = 0;
        }

        v83 = v74;
        v462 = v82;
        v463 = CFArrayCreateMutable(v76, v82, MEMORY[0x1E695E9C0]);
        if (v42)
        {
          rect = CFArrayGetCount(v42);
        }

        else
        {
          rect = 0;
        }

        if (v462 >= 1)
        {
          v84 = 0;
          while (1)
          {
            v464 = v84;
            v85 = CFArrayGetValueAtIndex(v461, v84);
            if (v85)
            {
              break;
            }

            v88 = CFArrayCreateMutable(v76, 0, MEMORY[0x1E695E9C0]);
LABEL_275:
            v172 = v88;
            CFArrayAppendValue(v463, v88);
            if (v172)
            {
              CFRelease(v172);
            }

            v84 = v464 + 1;
            if (v464 + 1 == v462)
            {
              goto LABEL_278;
            }
          }

          v469 = v85;
          v86 = CFArrayGetCount(v85);
          v87 = CFArrayCreateMutable(v76, v86, MEMORY[0x1E695E9C0]);
          v88 = v87;
          v468 = v86;
          if (v86 < 1)
          {
            goto LABEL_275;
          }

          v470 = v87;
          v89 = 0;
          while (1)
          {
            v472 = v89;
            theDict = CFArrayGetValueAtIndex(v469, v89);
            v90 = CFDictionaryGetValue(theDict, @"S");
            v543 = v62;
            Length = CFAttributedStringGetLength(v90);
            longestEffectiveRange.length = 0;
            longestEffectiveRange.location = 0;
            v532 = v90;
            MutableCopy = CFAttributedStringCreateMutableCopy(v76, Length, v90);
            CFAttributedStringBeginEditing(MutableCopy);
            aStr = MutableCopy;
            String = CFAttributedStringGetString(MutableCopy);
            v94 = CFStringCreateMutableCopy(v76, 0, String);
            v573.length = CFStringGetLength(v94);
            v573.location = 0;
            CFStringFindAndReplace(v94, @"’", @"'", v573, 0);
            v95 = FigCFStringFind();
            if (!FigCFStringFind())
            {
              goto LABEL_104;
            }

            if (v95)
            {
              break;
            }

            if (!FigCFStringFind())
            {
LABEL_122:
              v501 = 0;
              goto LABEL_126;
            }

LABEL_105:
            v96 = CFStringGetLength(v94);
            *&values = 0;
            *(&values + 1) = v96;
            v501 = CFStringCreateMutableCopy(allocator, 0, v94);
            CFStringTransform(v94, &values, @"[']Any-Publishing", 0);
            v97.length = *(&values + 1);
            if (*(&values + 1) < 1)
            {
              goto LABEL_120;
            }

            v98 = 0;
            v99 = 0;
            v100 = 1;
            do
            {
              if (CFStringGetCharacterAtIndex(v94, v98) == 8221 || CFStringGetCharacterAtIndex(v94, v98) == 8220)
              {
                ++v99;
              }

              v98 = v100;
              v97.length = *(&values + 1);
              v101 = *(&values + 1) <= v100++;
            }

            while (!v101);
            if (v99 == 2)
            {
              if (*(&values + 1) >= 1)
              {
                v102 = 0;
                v103 = 1;
                while (CFStringGetCharacterAtIndex(v94, v102) != 8220)
                {
                  if (CFStringGetCharacterAtIndex(v94, v102) == 8221)
                  {
                    v574.location = v102;
                    v574.length = 1;
                    CFStringFindAndReplace(v94, @"”", @"“", v574, 0);
                    break;
                  }

                  v102 = v103;
                  v101 = *(&values + 1) <= v103++;
                  if (v101)
                  {
                    break;
                  }
                }
              }

              v97 = values;
              v104 = aStr;
              v105 = v94;
            }

            else
            {
LABEL_120:
              v97.location = values;
              v104 = aStr;
              v105 = v501;
            }

            CFAttributedStringReplaceString(v104, v97, v105);
LABEL_126:
            if (FigCFRangeGetLimit() < Length)
            {
              v526 = v94;
              while (1)
              {
                if ((*&v554 = 0, v552 = 0u, v553 = 0u, values = 0u, v551 = 0, v549 = 0, v548 = 0u, v546 = 0, v547 = 0u, *v545 = 0u, Limit = FigCFRangeGetLimit(), v568.location = 0, v568.length = Length, AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(v532, Limit, v568, &longestEffectiveRange), v108 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"i"), v109 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"u"), LODWORD(v541) = -1, valuePtr = -1, v110 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"t"), *(v41 + 144) == 1) && v110 || (v110 = *v41) != 0)
                {
                  DeviceRGBColor = CFRetain(v110);
                }

                else
                {
                  DeviceRGBColor = cclayout_createDeviceRGBColor(1.0, 1.0, 1.0, 1.0);
                }

                v112 = DeviceRGBColor;
                Alpha = CGColorGetAlpha(DeviceRGBColor);
                v114 = *(v41 + 112);
                if (Alpha != v114)
                {
                  break;
                }

                if (v112)
                {
                  v115 = CFRetain(v112);
LABEL_136:
                  CFRelease(v112);
                  goto LABEL_138;
                }

                v115 = 0;
LABEL_138:
                v116 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"b");
                if (v116)
                {
                  v117 = v116;
                  v118 = CGColorGetAlpha(v116);
                  if (*(v41 + 152) == 1)
                  {
                    v119 = v117;
                    goto LABEL_143;
                  }
                }

                else
                {
                  v118 = -1.0;
                }

                v119 = *(v41 + 8);
                if (!v119)
                {
                  v120 = cclayout_createDeviceRGBColor(0.0, 0.0, 0.0, 1.0);
                  goto LABEL_145;
                }

LABEL_143:
                v120 = CFRetain(v119);
LABEL_145:
                v121 = v120;
                if (*(v41 + 168) != 1 || v118 == v45)
                {
                  v118 = *(v41 + 120);
                }

                if (CGColorGetAlpha(v120) != v118)
                {
                  CopyWithAlpha = CGColorCreateCopyWithAlpha(v121, v118);
                  if (!v121)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_152;
                }

                if (v121)
                {
                  CopyWithAlpha = CFRetain(v121);
LABEL_152:
                  CFRelease(v121);
                  goto LABEL_154;
                }

                CopyWithAlpha = 0;
LABEL_154:
                FigCFDictionaryGetInt32IfPresent();
                if (*(v41 + 200) != 1 || (v123 = v541, v541 == -1))
                {
                  v124 = *(v41 + 136) - 2;
                  if (v124 > 3)
                  {
                    v123 = 0;
                  }

                  else
                  {
                    v123 = dword_196E7C010[v124];
                  }
                }

                v125 = Length;
                valuePtr = v123;
                v126 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
                v127 = CFDictionaryGetValue(AttributesAndLongestEffectiveRange, @"e");
                if (*(v41 + 160) == 1 && (v128 = v127) != 0)
                {
                  v129 = CGColorGetAlpha(v115);
                  v130 = CGColorCreateCopyWithAlpha(v128, v129);
                }

                else
                {
                  v131 = *(v41 + 16);
                  if (v131)
                  {
                    v130 = CFRetain(v131);
                  }

                  else
                  {
                    v132 = CGColorGetAlpha(v115);
                    v130 = cclayout_createDeviceRGBColor(0.0, 0.0, 0.0, v132);
                  }
                }

                v133 = v130;
                if (!v108 || (v134 = cfa, !CFBooleanGetValue(v108)))
                {
                  v134 = v509;
                }

                if (v109)
                {
                  if (CFBooleanGetValue(v109))
                  {
                    LODWORD(v541) = 1;
                    v109 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v541);
                  }

                  else
                  {
                    v109 = 0;
                  }
                }

                if (v543 == 0.0)
                {
                  v135 = 0;
                  v136 = 0;
                }

                else
                {
                  LODWORD(v541) = 0;
                  v135 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v541);
                  v136 = CFNumberCreate(allocator, kCFNumberCGFloatType, &v543);
                }

                CTFontGetSize(v134);
                MACaptionAppearanceGetStrokeWidth();
                v541 = v137;
                v138 = CFNumberCreate(allocator, kCFNumberCGFloatType, &v541);
                v139 = v138;
                if (v134)
                {
                  *&values = v489;
                  v545[0] = v134;
                  v140 = &v545[1];
                  p_values = (&values + 8);
                  v142 = 1;
                }

                else
                {
                  v142 = 0;
                  p_values = &values;
                  v140 = v545;
                }

                if (v115)
                {
                  p_values->location = v511;
                  *v140 = v115;
                  ++v142;
                }

                if (v109)
                {
                  *(&values + v142) = v496;
                  v545[v142++] = v109;
                }

                if (v135)
                {
                  *(&values + v142) = v494;
                  v545[v142++] = v135;
                }

                if (v136)
                {
                  *(&values + v142) = color;
                  v545[v142++] = v136;
                }

                if (CopyWithAlpha)
                {
                  *(&values + v142) = 0x1F0B1E578;
                  v545[v142++] = CopyWithAlpha;
                }

                if (v133)
                {
                  *(&values + v142) = 0x1F0B1E598;
                  v545[v142++] = v133;
                }

                if (v126)
                {
                  *(&values + v142) = 0x1F0B1E5B8;
                  v545[v142++] = v126;
                }

                if (v138)
                {
                  *(&values + v142) = 0x1F0B1E7F8;
                  v545[v142++] = v138;
                }

                v143 = CFDictionaryCreate(allocator, &values, v545, v142, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
                CFAttributedStringSetAttributes(aStr, longestEffectiveRange, v143, 0);
                if (v143)
                {
                  CFRelease(v143);
                }

                if (v135)
                {
                  CFRelease(v135);
                }

                if (v139)
                {
                  CFRelease(v139);
                }

                v41 = a13;
                if (v136)
                {
                  CFRelease(v136);
                }

                if (v109)
                {
                  CFRelease(v109);
                }

                v42 = a14;
                if (v126)
                {
                  CFRelease(v126);
                }

                if (v133)
                {
                  CFRelease(v133);
                }

                Length = v125;
                if (CopyWithAlpha)
                {
                  CFRelease(CopyWithAlpha);
                }

                v94 = v526;
                if (v115)
                {
                  CFRelease(v115);
                }

                if (FigCFRangeGetLimit() >= v125)
                {
                  goto LABEL_214;
                }
              }

              v115 = CGColorCreateCopyWithAlpha(v112, v114);
              if (!v112)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }

LABEL_214:
            CFAttributedStringEndEditing(aStr);
            v76 = allocator;
            if (v94)
            {
              CFRelease(v94);
            }

            v83 = v509;
            if (v501)
            {
              CFRelease(v501);
            }

            v471 = CFDictionaryCreateMutableCopy(allocator, 0, theDict);
            if (rect >= 1)
            {
              for (i = 0; i != rect; ++i)
              {
                v145 = CFArrayGetValueAtIndex(v42, i);
                if (v145)
                {
                  v146 = v145;
                  if (CFDictionaryGetValue(v145, @"CMTextHighlightAttributeKey_StringToHighlight"))
                  {
                    v147 = *a15;
                    v148 = CFAttributedStringGetString(aStr);
                    v149 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_CueID");
                    if (!v149 || CFStringCompare(v148, v149, 0) == kCFCompareEqualTo)
                    {
                      theDicta = v147;
                      v150 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_StringToHighlight");
                      LODWORD(v545[0]) = 0;
                      values = 0u;
                      v551 = 0;
                      v151 = CGColorSpaceCreateWithName(name);
                      v152 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_ForegroundColor");
                      for (j = 0; j != 4; ++j)
                      {
                        if (v152)
                        {
                          if (!FigCFArrayGetFloatAtIndex())
                          {
                            v155 = 0;
                            v162 = 0;
                            v171 = 0;
                            v156 = 0;
                            goto LABEL_252;
                          }

                          v154 = *v545;
                        }

                        else
                        {
                          v154 = dbl_196E7C030[j];
                        }

                        *(&values + j) = v154;
                      }

                      v502 = v151;
                      v155 = CGColorCreate(v151, &values);
                      v156 = CGColorCreateCopyWithAlpha(v155, 0.5);
                      v157 = CFDictionaryGetValue(v146, @"CMTextHighlightAttributeKey_BackgroundColor");
                      for (k = 0; k != 4; ++k)
                      {
                        if (v157)
                        {
                          if (!FigCFArrayGetFloatAtIndex())
                          {
                            v162 = 0;
                            v171 = 0;
                            v151 = v502;
                            goto LABEL_252;
                          }

                          v159 = *v545;
                        }

                        else
                        {
                          v159 = dbl_196E7C050[k];
                        }

                        *(&values + k) = v159;
                      }

                      v151 = v502;
                      v160 = v150;
                      v161 = CGColorCreate(v502, &values);
                      v162 = CGColorCreateCopyWithAlpha(v161, 0.7);
                      LODWORD(longestEffectiveRange.location) = 0;
                      FigCFDictionaryGetIntIfPresent();
                      LODWORD(v543) = -1;
                      FigCFDictionaryGetIntIfPresent();
                      v575.length = CFStringGetLength(v148);
                      v575.location = 0;
                      Results = CFStringCreateArrayWithFindResults(allocator, v148, v160, v575, SLODWORD(longestEffectiveRange.location));
                      if (Results)
                      {
                        v164 = Results;
                        v480 = i;
                        if (CFArrayGetCount(Results) >= 1)
                        {
                          v165 = 0;
                          do
                          {
                            v166 = CFArrayGetValueAtIndex(v164, v165);
                            v167 = v166;
                            v168 = LODWORD(v543) == -1 || (theDicta + v165) == SLODWORD(v543);
                            if (v168)
                            {
                              v169 = v155;
                            }

                            else
                            {
                              v169 = v156;
                            }

                            if (v168)
                            {
                              v170 = v161;
                            }

                            else
                            {
                              v170 = v162;
                            }

                            CFAttributedStringSetAttribute(aStr, *v166, v511, v169);
                            CFAttributedStringSetAttribute(aStr, *v167, @"b", v170);
                            ++v165;
                          }

                          while (v165 < CFArrayGetCount(v164));
                        }

                        v147 = (theDicta + CFArrayGetCount(v164));
                        CFRelease(v164);
                        v151 = v502;
                        i = v480;
                      }

                      else
                      {
                        v147 = theDicta;
                      }

                      v171 = v161;
LABEL_252:
                      v76 = allocator;
                      if (v151)
                      {
                        CFRelease(v151);
                      }

                      if (v155)
                      {
                        CFRelease(v155);
                      }

                      if (v156)
                      {
                        CFRelease(v156);
                      }

                      if (v171)
                      {
                        CFRelease(v171);
                      }

                      if (v162)
                      {
                        CFRelease(v162);
                      }

                      v42 = a14;
                    }

                    *a15 = v147;
                    v83 = v509;
                  }
                }
              }
            }

            CFDictionarySetValue(v471, @"S", aStr);
            if (aStr)
            {
              CFRelease(aStr);
            }

            CFArrayAppendValue(v470, v471);
            if (v471)
            {
              CFRelease(v471);
            }

            v89 = (v472 + 1);
            v41 = a13;
            if (v472 + 1 == v468)
            {
              v88 = v470;
              goto LABEL_275;
            }
          }

          v95 = 1;
LABEL_104:
          if (!v95)
          {
            goto LABEL_122;
          }

          goto LABEL_105;
        }

LABEL_278:
        FigCFDictionaryGetCGRectIfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        PixelRectForCellRect = cclayout_getPixelRectForCellRect(v463, v437, 1, a2, v173, v174, v175, v176, *v540, *&v540[8], *&v540[16], *&v540[24], v448, v447, v446, v445, v449, *&v465, v458, *&v457, *&v460, *&v459, *&v467, *&v451);
        v179 = v178;
        v181 = v180;
        v183 = v182;
        v576.origin.x = v458;
        v576.origin.y = v457;
        v576.size.height = v459;
        v576.size.width = v460;
        Width = CGRectGetWidth(v576);
        v503 = PixelRectForCellRect;
        v577.origin.x = PixelRectForCellRect;
        *&theDictb = v179;
        v577.origin.y = v179;
        v481 = v181;
        v577.size.width = v181;
        v473 = v183;
        v577.size.height = v183;
        if (Width >= CGRectGetWidth(v577))
        {
          v227 = v463;
          v229 = v457;
          v228 = v458;
          v231 = v459;
          v230 = v460;
        }

        else
        {
          v185 = v452;
          v186 = v453;
          v187 = v463;
          if (!v463 || (v188 = CFArrayGetCount(v463), v187 = v463, v188 < 1))
          {
LABEL_293:
            v581.origin.y = v457;
            v581.origin.x = v458;
            v581.size.height = v459;
            v581.size.width = v460;
            v204 = v187;
            v205 = CGRectGetWidth(v581);
            JoinedStringFromElementWithSeparator = FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(v204, @" ");
            v207 = CTLineCreateWithAttributedString(JoinedStringFromElementWithSeparator);
            v208 = CFAttributedStringGetLength(JoinedStringFromElementWithSeparator);
            Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
            v210 = v76;
            v211 = JoinedStringFromElementWithSeparator;
            v534 = CFArrayCreateMutable(v210, 0, MEMORY[0x1E695E9C0]);
            v212 = CFAttributedStringGetString(JoinedStringFromElementWithSeparator);
            theString = v212;
            v561 = 0;
            v562 = v208;
            CharactersPtr = CFStringGetCharactersPtr(v212);
            CStringPtr = 0;
            v559 = CharactersPtr;
            if (!CharactersPtr)
            {
              CStringPtr = CFStringGetCStringPtr(v212, 0x600u);
            }

            v556 = 0u;
            v557 = 0u;
            v554 = 0u;
            v555 = 0u;
            v552 = 0u;
            v553 = 0u;
            values = 0u;
            v551 = 0;
            v560 = CStringPtr;
            v563 = 0;
            v564 = 0;
            if (v208 < 1)
            {
              v216 = 0;
              v217 = -1;
              v73 = v456;
              v218 = allocator;
LABEL_326:
              OffsetForStringIndex = CTLineGetOffsetForStringIndex(v207, v216, 0);
              if (CTLineGetOffsetForStringIndex(v207, v208, 0) - OffsetForStringIndex <= v205 || v217 == -1)
              {
                v239 = v534;
              }

              else
              {
                v570.length = v217 - v216;
                v570.location = v216;
                v238 = CFAttributedStringCreateWithSubstring(v218, v211, v570);
                v239 = v534;
                CFArrayAppendValue(v534, v238);
                if (v238)
                {
                  CFRelease(v238);
                }

                v216 = v217 + 1;
              }

              v240 = CTLineGetOffsetForStringIndex(v207, v216, 0);
              v83 = v509;
              if (CTLineGetOffsetForStringIndex(v207, v208, 0) - v240 != 0.0)
              {
                v571.length = v208 - v216;
                v571.location = v216;
                v241 = CFAttributedStringCreateWithSubstring(allocator, v211, v571);
                CFArrayAppendValue(v239, v241);
                if (v241)
                {
                  CFRelease(v241);
                }
              }

              v242 = v211;
              if (v207)
              {
                CFRelease(v207);
              }

              v76 = allocator;
              theDictc = v242;
              if (v239)
              {
                v243 = CFArrayGetCount(v239);
              }

              else
              {
                v243 = 0;
              }

              v244 = v437;
              CGRectGetMinY(*v540);
              v245 = CFArrayCreateMutable(allocator, v243, MEMORY[0x1E695E9C0]);
              v227 = v245;
              if (v243 < 1)
              {
                v255 = 0.0;
              }

              else
              {
                v528 = v245;
                v246 = 0;
                v247 = 0;
                for (aStrb = v243; aStrb != v246; v243 = aStrb)
                {
                  v248 = CFArrayGetValueAtIndex(v534, v246);
                  v249 = CFAttributedStringGetLength(v248);
                  v250 = CFArrayCreateMutable(v76, 0, MEMORY[0x1E695E9C0]);
                  v251 = MEMORY[0x1E695E9D8];
                  v252 = MEMORY[0x1E695E9E8];
                  v253 = CFDictionaryCreateMutable(v76, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v254 = CFDictionaryCreateMutable(v76, 0, v251, v252);
                  CFDictionarySetValue(v253, @"S", v248);
                  FigCFDictionarySetInt32();
                  FigCFDictionarySetInt32();
                  CFDictionarySetValue(v253, @"L", v254);
                  if (v254)
                  {
                    CFRelease(v254);
                  }

                  CFArrayAppendValue(v250, v253);
                  if (v253)
                  {
                    CFRelease(v253);
                  }

                  CFArrayAppendValue(v528, v250);
                  v83 = v509;
                  v76 = allocator;
                  if (v250)
                  {
                    CFRelease(v250);
                  }

                  if (v247 <= v249)
                  {
                    v247 = v249;
                  }

                  ++v246;
                }

                v255 = v247;
                v42 = a14;
                v244 = v437;
                v239 = v534;
                v227 = v528;
              }

              MinY = CGRectGetMinY(*v540);
              if (v239)
              {
                CFRelease(v239);
              }

              if (theDictc)
              {
                CFRelease(theDictc);
              }

              if (v463)
              {
                CFRelease(v463);
              }

              v231 = v459;
              v230 = v460;
              v229 = v457;
              v228 = v458;
              v232 = cclayout_getPixelRectForCellRect(v227, v244, 1, a2, v256, v257, v258, v259, 0.0, MinY, v255, v243, v448, v447, v446, v445, v449, *&v465, v458, *&v457, *&v460, *&v459, *&v467, *&v451);
              v41 = a13;
              goto LABEL_363;
            }

            v215 = 0;
            v216 = 0;
            v217 = -1;
            v73 = v456;
            v218 = allocator;
            while (2)
            {
              if (v215 < 0 || (v219 = v562, v562 <= v215))
              {
                v220 = 0;
              }

              else if (v559)
              {
                v220 = v559[v561 + v215];
              }

              else if (v560)
              {
                v220 = v560[v561 + v215];
              }

              else
              {
                if (v564 <= v215 || (v225 = v563, v563 > v215))
                {
                  v226 = v215 - 4;
                  if (v215 < 4)
                  {
                    v226 = 0;
                  }

                  if (v226 + 64 < v562)
                  {
                    v219 = v226 + 64;
                  }

                  v563 = v226;
                  v564 = v219;
                  v566.length = v219 - v226;
                  v566.location = v561 + v226;
                  CFStringGetCharacters(theString, v566, &values);
                  v225 = v563;
                }

                v220 = *(&values + v215 - v225);
              }

              if (CFCharacterSetIsCharacterMember(Predefined, v220))
              {
                v221 = CTLineGetOffsetForStringIndex(v207, v216, 0);
                v222 = CTLineGetOffsetForStringIndex(v207, v215, 0);
                v223 = v215;
                if (v222 - v221 > v205)
                {
                  if (v217 == -1)
                  {
                    v217 = v215;
                  }

                  v569.length = v217 - v216;
                  v569.location = v216;
                  v224 = CFAttributedStringCreateWithSubstring(v218, v211, v569);
                  CFArrayAppendValue(v534, v224);
                  if (v224)
                  {
                    CFRelease(v224);
                  }

                  v216 = v217 + 1;
                  v217 = -1;
                  v215 = v216;
                  v218 = allocator;
LABEL_311:
                  if (v215 >= v208)
                  {
                    goto LABEL_326;
                  }

                  continue;
                }
              }

              else
              {
                v223 = v217;
              }

              break;
            }

            ++v215;
            v217 = v223;
            goto LABEL_311;
          }

          v189 = 0;
          while (1)
          {
            v190 = CFArrayGetValueAtIndex(v187, v189);
            if (v190)
            {
              v191 = v190;
              v192 = CFArrayGetCount(v190);
              if (v192 >= 2)
              {
                break;
              }
            }

LABEL_292:
            ++v189;
            v187 = v463;
            if (v189 == v188)
            {
              goto LABEL_293;
            }
          }

          v193 = v192;
          v194 = 0;
          v195 = v185;
          v196 = v186;
          v197 = v454;
          v198 = v455;
          while (1)
          {
            recta = v198;
            aStra = *&v197;
            v527 = v196;
            v533 = v195;
            v199 = CFArrayGetValueAtIndex(v191, v194);
            LODWORD(values) = 0;
            LODWORD(v545[0]) = 0;
            v195 = v185;
            v200 = v186;
            v197 = v454;
            v198 = v455;
            if (cclayout_getLocationFromCommandData(v199, &values, v545))
            {
              v201 = CFDictionaryGetValue(v199, @"S");
              v195 = v185;
              v200 = v186;
              v197 = v454;
              v198 = v455;
              if (v201)
              {
                v202 = CFAttributedStringGetLength(v201);
                v195 = v185;
                v200 = v186;
                v197 = v454;
                v198 = v455;
                if (v202)
                {
                  v198 = (values - 1);
                  v197 = (LODWORD(v545[0]) - 1);
                  v200 = v202;
                  v195 = 1.0;
                }
              }
            }

            v578.origin.x = recta;
            *&v578.origin.y = aStra;
            v578.size.width = v527;
            v578.size.height = v533;
            if (!CGRectIsNull(v578))
            {
              v579.origin.x = recta;
              *&v579.origin.y = aStra;
              v579.size.width = v527;
              v579.size.height = v533;
              MaxX = CGRectGetMaxX(v579);
              v580.origin.x = v198;
              v580.origin.y = v197;
              v580.size.width = v200;
              v580.size.height = v195;
              if (MaxX < CGRectGetMinX(v580))
              {
                break;
              }
            }

            ++v194;
            v196 = v200;
            v185 = v452;
            v186 = v453;
            v45 = -1.0;
            v76 = allocator;
            if (v193 == v194)
            {
              goto LABEL_292;
            }
          }

          v227 = v463;
          v41 = a13;
          v73 = v456;
          v45 = -1.0;
          v76 = allocator;
          v229 = v457;
          v228 = v458;
          v231 = v459;
          v230 = v460;
        }

        v232 = v503;
        v233 = *&theDictb;
        v234 = v481;
        v235 = v473;
LABEL_363:
        v261 = cclayout_offsetRectToFitBoundary(v232, v233, v234, v235, v228, v229, v230, v231);
        v263 = v262;
        v265 = v264;
        v267 = v266;
        CFArrayAppendValue(Mutable, v227);
        if (v227)
        {
          CFRelease(v227);
        }

        v74 = v83;
        *&values = v261;
        *(&values + 1) = v263;
        v551.width = v265;
        v551.height = v267;
        v268 = CFDataCreateMutable(v76, 32);
        CFDataSetLength(v268, 32);
        v567.location = 0;
        v567.length = 32;
        CFDataReplaceBytes(v268, v567, &values, 32);
        CFArrayAppendValue(v444, v268);
        if (v268)
        {
          CFRelease(v268);
        }

        v78 = v450 + 1;
        v62 = v441;
        v76 = allocator;
      }

      while (v450 + 1 != v438);
    }

    if (v444)
    {
      v269 = CFRetain(v444);
    }

    else
    {
      v269 = 0;
    }

    v270 = v467 * -0.5;
    do
    {
      while (1)
      {
        if (v269)
        {
          v271 = CFArrayGetCount(v269);
          v272 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (v271 >= 1)
          {
            for (m = 0; m != v271; ++m)
            {
              v274 = CFArrayGetValueAtIndex(v269, m);
              v275 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              CFArrayAppendValue(v275, v274);
              CFArrayAppendValue(v272, v275);
              if (v275)
              {
                CFRelease(v275);
              }
            }

            v41 = a13;
          }

          if (!v272)
          {
LABEL_407:
            v342 = 1;
            if (v269)
            {
              goto LABEL_411;
            }

            goto LABEL_412;
          }
        }

        else
        {
          v272 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!v272)
          {
            goto LABEL_407;
          }
        }

LABEL_382:
        v276 = CFArrayGetCount(v272);
        v277 = v276;
        if (v276 > 1)
        {
          v278 = 0;
          v279 = v276 - 2;
          while (2)
          {
            v280 = v278;
            v281 = CFArrayGetValueAtIndex(v272, v278);
            v582.origin.x = cclayout_unionCFDataRects(v281);
            v583 = CGRectInset(v582, v270, v73);
            x = v583.origin.x;
            y = v583.origin.y;
            v284 = v583.size.width;
            height = v583.size.height;
            v286 = ++v278;
            do
            {
              v287 = CFArrayGetValueAtIndex(v272, v286);
              v584.origin.x = cclayout_unionCFDataRects(v287);
              v614 = CGRectInset(v584, v270, v73);
              v585.origin.x = x;
              v585.origin.y = y;
              v585.size.width = v284;
              v585.size.height = height;
              if (CGRectIntersectsRect(v585, v614))
              {
                if (v287)
                {
                  v288.length = CFArrayGetCount(v287);
                }

                else
                {
                  v288.length = 0;
                }

                v288.location = 0;
                CFArrayAppendArray(v281, v287, v288);
                CFArrayRemoveValueAtIndex(v272, v286);
                goto LABEL_382;
              }

              ++v286;
            }

            while (v286 < v277);
            if (v280 != v279)
            {
              continue;
            }

            break;
          }
        }

        v289 = CFArrayGetCount(v272);
        if (v289 < 1)
        {
          v342 = 1;
        }

        else
        {
          v290 = v289;
          v291 = 0;
          for (n = 0; n != v290; ++n)
          {
            v293 = CFArrayGetValueAtIndex(v272, n);
            if (v293)
            {
              v294 = v293;
              if (CFArrayGetCount(v293) >= 2)
              {
                v295 = CFArrayGetCount(v294);
                v535 = cclayout_unionCFDataRects(v294);
                v529 = v296;
                aStrc = v297;
                rectb = v298;
                if (v295 >= 2)
                {
                  for (ii = 1; ii != v295; ++ii)
                  {
                    v300 = CFArrayGetValueAtIndex(v294, ii - 1);
                    v301 = CFArrayGetValueAtIndex(v294, ii);
                    v302 = cclayout_unionCFDataRects(v300);
                    v304 = v303;
                    v306 = v305;
                    v308 = v307;
                    v309 = cclayout_unionCFDataRects(v301);
                    v313 = v309;
                    v314 = v310;
                    v315 = v311;
                    v316 = v312;
                    if (a2 == 1)
                    {
                      v586.origin.x = v302;
                      v586.origin.y = v304;
                      v586.size.width = v306;
                      v586.size.height = v308;
                      MaxY = CGRectGetMaxY(v586);
                      v587.origin.x = v313;
                      v587.origin.y = v314;
                      v587.size.width = v315;
                      v587.size.height = v316;
                      v318 = v465 + MaxY - CGRectGetMinY(v587);
                    }

                    else
                    {
                      v319 = CGRectGetMaxY(*&v309);
                      v588.origin.x = v302;
                      v588.origin.y = v304;
                      v588.size.width = v306;
                      v588.size.height = v308;
                      v318 = -(v465 + v319 - CGRectGetMinY(v588));
                    }

                    cclayout_offsetCFDataRects(v301, 0.0, v318);
                  }
                }

                v320 = cclayout_unionCFDataRects(v294);
                v322 = v321;
                v324 = v323;
                v326 = v325;
                v589.origin.x = v535;
                v589.origin.y = v529;
                *&v589.size.width = aStrc;
                v589.size.height = rectb;
                MidY = CGRectGetMidY(v589);
                v590.origin.x = v320;
                v590.origin.y = v322;
                v590.size.width = v324;
                v590.size.height = v326;
                v328 = CGRectGetMidY(v590);
                cclayout_offsetCFDataRects(v294, 0.0, MidY - v328);
                v329 = cclayout_unionCFDataRects(v294);
                v331 = v330;
                v333 = v332;
                v335 = v334;
                v591.origin.x = cclayout_offsetRectToFitBoundary(v329, v330, v332, v334, v458, v457, v460, v459);
                v336 = v591.origin.x;
                v337 = v591.origin.y;
                v338 = v591.size.width;
                v339 = v591.size.height;
                MinX = CGRectGetMinX(v591);
                v592.origin.x = v329;
                v592.origin.y = v331;
                v592.size.width = v333;
                v592.size.height = v335;
                v537 = MinX - CGRectGetMinX(v592);
                v593.origin.x = v336;
                v593.origin.y = v337;
                v593.size.width = v338;
                v593.size.height = v339;
                v340 = CGRectGetMinY(v593);
                v594.origin.x = v329;
                v594.origin.y = v331;
                v594.size.width = v333;
                v594.size.height = v335;
                v341 = CGRectGetMinY(v594);
                cclayout_offsetCFDataRects(v294, v537, v340 - v341);
                v291 = 1;
                v73 = v456;
                v45 = -1.0;
                v270 = v467 * -0.5;
              }
            }
          }

          v342 = v291 == 0;
        }

        CFRetain(v272);
        v41 = a13;
        if (v269)
        {
LABEL_411:
          CFRelease(v269);
        }

LABEL_412:
        if (v272)
        {
          break;
        }

        v269 = 0;
        if (v342)
        {
          goto LABEL_416;
        }
      }

      CFRelease(v272);
      v269 = v272;
    }

    while (!v342);
    CFRelease(v272);
LABEL_416:
    v595.origin.y = v457;
    v595.origin.x = v458;
    v595.size.height = v459;
    v595.size.width = v460;
    v596 = CGRectIntegral(v595);
    v343 = v596.origin.x;
    v344 = v596.origin.y;
    v345 = v596.size.width;
    v346 = v596.size.height;
    v615.origin.x = cclayout_unionCFDataRects(v444);
    v615.origin.y = v347;
    v615.size.width = v348;
    v615.size.height = v349;
    v597.origin.x = v343;
    v597.origin.y = v344;
    v597.size.width = v345;
    v597.size.height = v346;
    v350 = CGRectContainsRect(v597, v615);
    v46 = v436;
    if (!v350)
    {
      v46 = v436 + -0.1;
    }

    if (v350)
    {
      v38 = v509;
      v351 = v441;
      break;
    }

    v38 = v509;
    v351 = v441;
  }

  while (v46 > 0.0);
LABEL_425:
  v352 = floor(v451 * 0.2);
  v353 = 1.0;
  if (v352 != 0.0)
  {
    v353 = v352;
  }

  v354 = *(v41 + 32);
  v476 = v353;
  if (v354 >= v353)
  {
    v354 = v353;
  }

  v475 = v354;
  if (a4)
  {
    v355 = CFArrayGetCount(a4);
  }

  else
  {
    v355 = 0;
  }

  v356 = a3;
  if (a3)
  {
    v356 = CFArrayGetCount(a3);
  }

  if (v355 >= v356)
  {
    v355 = v356;
  }

  aStrd = *MEMORY[0x1E695E480];
  v477 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v474 = v355;
  if (v355 >= 1)
  {
    v357 = 0;
    v490 = *(MEMORY[0x1E695F050] + 16);
    v491 = *MEMORY[0x1E695F050];
    v510 = v38;
    v442 = v351;
    while (1)
    {
      v358 = v357;
      v359 = CFArrayGetValueAtIndex(a3, v357);
      namea = CFDictionaryGetValue(v359, @"R");
      v360 = CFArrayGetValueAtIndex(a4, v358);
      colora = CFDictionaryGetValue(v360, @"C");
      v361 = CFArrayGetValueAtIndex(Mutable, v358);
      v483 = v358;
      theDictd = CFArrayGetValueAtIndex(v444, v358);
      *v545 = v491;
      v546 = v490;
      LODWORD(v543) = 0;
      v362 = MEMORY[0x19A8CC720](aStrd, 148, 0x10600409A2A7F50, 0);
      *v362 = 0u;
      *(v362 + 16) = 0u;
      *(v362 + 32) = 0u;
      *(v362 + 48) = 0u;
      *(v362 + 64) = 0u;
      *(v362 + 80) = 0u;
      *(v362 + 96) = 0u;
      *(v362 + 112) = 0u;
      *(v362 + 128) = 0u;
      v482 = v362;
      *(v362 + 144) = 0;
      FigCFDictionaryGetCGRectIfPresent();
      FigCFDictionaryGetInt32IfPresent();
      if (v361)
      {
        v363 = CFArrayGetCount(v361);
      }

      else
      {
        v363 = 0;
      }

      BytePtr = CFDataGetBytePtr(theDictd);
      v598.origin.x = *BytePtr;
      v365 = BytePtr[1];
      v598.size.width = BytePtr[2];
      v598.size.height = BytePtr[3];
      v505 = *BytePtr;
      v598.origin.y = v365;
      v504 = v598.size.width;
      v499 = v598.size.height;
      v366 = CGRectGetWidth(v598);
      v367 = CFDictionaryCreateMutable(aStrd, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      longestEffectiveRange.location = 0;
      if (v363 >= 1)
      {
        v368 = 0;
        v369 = v505;
        v518 = v451;
        v498 = v361;
        v497 = v363;
        v495 = v365;
        do
        {
          v370 = CFArrayGetValueAtIndex(v361, v368);
          v371 = v370;
          if (!v368)
          {
            CFArrayGetValueAtIndex(v370, 0);
            FigCFDictionaryGetCGFloatIfPresent();
          }

          if (a2 == 1)
          {
            v372 = v365 + v368 * v451 + *&longestEffectiveRange.location;
          }

          else
          {
            v599.origin.x = v505;
            v599.origin.y = v365;
            v599.size.width = v504;
            v599.size.height = v499;
            v372 = v365 + CGRectGetHeight(v599) - (v368 + 1) * v451 - *&longestEffectiveRange.location;
          }

          v373 = v369;
          v374 = v366;
          v375 = v518;
          v600 = CGRectIntegral(*(&v372 - 1));
          v369 = v600.origin.x;
          v376 = v600.origin.y;
          v366 = v600.size.width;
          v518 = v600.size.height;
          allocatora = CGRectGetHeight(v600);
          if (v371)
          {
            v513 = CFArrayGetCount(v371);
            if (v513 >= 1)
            {
              v507 = v368;
              v508 = v366;
              v377 = 0;
              v378 = 0;
              v538 = 0;
              v379 = v369 - v467;
              v380 = 0.0;
              v506 = v369;
              v381 = v518;
              v512 = v371;
              do
              {
                rectc = v377;
                v382 = CFArrayGetValueAtIndex(v371, v377);
                v530 = CFDictionaryGetValue(v382, @"S");
                v383 = CFAttributedStringGetLength(v530);
                *(&values + 1) = 0;
                *&values = 0;
                FigCFDictionaryGetCGFloatIfPresent();
                v369 = v369 + 0.0;
                v384 = FigCFRangeGetLimit();
                if (v384 < FigCFRangeGetLimit())
                {
                  v385 = v379;
                  do
                  {
                    v386 = FigCFRangeGetLimit();
                    v572.location = 0;
                    v572.length = v383;
                    v387 = CFAttributedStringGetAttributesAndLongestEffectiveRange(v530, v386, v572, &values);
                    v388 = CFDictionaryGetValue(v387, @"d");
                    v389 = CFAttributedStringCreateWithSubstring(aStrd, v530, values);
                    v390 = CTLineCreateWithAttributedString(v389);
                    v391 = *(&values + 1);
                    v392 = CTLineGetOffsetForStringIndex(v390, 0, 0);
                    v393 = CTLineGetOffsetForStringIndex(v390, v391, 0);
                    v394 = CFAttributedStringGetString(v389);
                    CharacterAtIndex = CFStringGetCharacterAtIndex(v394, 0);
                    v396 = CFStringGetCharacterAtIndex(v394, *(&values + 1) - 1);
                    if (v388)
                    {
                      v397 = CFBooleanGetValue(v388);
                      v398 = v397 == 0;
                      LODWORD(v388) = v397 != 0;
                    }

                    else
                    {
                      v398 = 1;
                    }

                    v399 = CFDictionaryGetValue(v387, @"b");
                    v400 = v369 - v385;
                    if (v378 && v400 > 0.0)
                    {
                      if (v400 >= v467)
                      {
                        v401 = v467;
                      }

                      else
                      {
                        v401 = v369 - v385;
                      }

                      v601.origin.x = v385;
                      v601.origin.y = v376;
                      v601.size.width = v401;
                      v601.size.height = allocatora;
                      v602 = CGRectIntegral(v601);
                      cclayout_AddRectWithColorAsPath(v367, v538, v602.origin.x, v602.origin.y, v602.size.width, v602.size.height);
                      v603.origin.x = v385;
                      v603.origin.y = v376;
                      v603.size.width = v401;
                      v603.size.height = allocatora;
                      v379 = v385 + CGRectGetWidth(v603);
                      v400 = v369 - v379;
                    }

                    else
                    {
                      v379 = v385;
                      v385 = v380;
                    }

                    if (CharacterAtIndex == 32)
                    {
                      v402 = 0;
                    }

                    else
                    {
                      v402 = v388;
                    }

                    if (v402 == 1 && v400 > 0.0)
                    {
                      if (v400 >= v467)
                      {
                        v403 = v467;
                      }

                      else
                      {
                        v403 = v400;
                      }

                      v604.origin.x = v385;
                      v604.origin.y = v376;
                      v604.size.width = v403;
                      v604.size.height = allocatora;
                      v380 = v369 - CGRectGetWidth(v604);
                      v605.origin.x = v380;
                      v605.origin.y = v376;
                      v605.size.width = v403;
                      v381 = v518;
                      v605.size.height = allocatora;
                      v606 = CGRectIntegral(v605);
                      cclayout_AddRectWithColorAsPath(v367, v399, v606.origin.x, v606.origin.y, v606.size.width, v606.size.height);
                    }

                    else
                    {
                      v380 = v385;
                    }

                    v404 = v393 - v392;
                    v607.origin.x = v369;
                    v607.origin.y = v376;
                    v607.size.width = v404;
                    v607.size.height = v381;
                    v608 = CGRectIntegral(v607);
                    cclayout_AddRectWithColorAsPath(v367, v399, v608.origin.x, v608.origin.y, v608.size.width, v608.size.height);
                    if (!v398)
                    {
                      v609.origin.x = v369;
                      v609.origin.y = v376;
                      v609.size.width = v404;
                      v609.size.height = v381;
                      v379 = CGRectGetMaxX(v609);
                    }

                    v405 = v538;
                    if ((v388 & (v396 != 32)) != 0)
                    {
                      v405 = v399;
                    }

                    v538 = v405;
                    if ((v388 & (v396 != 32)) != 0)
                    {
                      v378 = 1;
                    }

                    if (v390)
                    {
                      CFRelease(v390);
                    }

                    if (v389)
                    {
                      CFRelease(v389);
                    }

                    v369 = v369 + v404;
                    v406 = FigCFRangeGetLimit();
                    v385 = v379;
                  }

                  while (v406 < FigCFRangeGetLimit());
                }

                v377 = rectc + 1;
                v371 = v512;
              }

              while (rectc + 1 != v513);
              v58 = v378 == 0;
              v41 = a13;
              v361 = v498;
              v363 = v497;
              v365 = v495;
              v366 = v508;
              v368 = v507;
              v369 = v506;
              if (!v58)
              {
                v610.origin.x = v379;
                v610.origin.y = v376;
                v610.size.width = v467;
                v610.size.height = allocatora;
                v611 = CGRectIntegral(v610);
                cclayout_AddRectWithColorAsPath(v367, v538, v611.origin.x, v611.origin.y, v611.size.width, v611.size.height);
              }
            }
          }

          ++v368;
        }

        while (v368 != v363);
      }

      values = v491;
      v551 = v490;
      CFDictionaryApplyFunction(v367, cclayout_GetRectFromPathDictionaryApplier, &values);
      v407 = *&values;
      v408 = *(&values + 1);
      v409 = v551;
      v612.origin.x = v505;
      v612.origin.y = v365;
      v612.size.width = v504;
      v612.size.height = v499;
      v410 = CGRectGetMinX(v612);
      v613.origin.x = v407;
      v613.origin.y = v408;
      v613.size = v409;
      v411 = CGRectGetMinX(v613);
      if (v363 >= 1)
      {
        v412 = v410 - v411;
        if (v412 > 0.0)
        {
          for (jj = 0; jj != v363; ++jj)
          {
            v414 = CFArrayGetValueAtIndex(v361, jj);
            if (v414)
            {
              v415 = v414;
              if (CFArrayGetCount(v414))
              {
                CFArrayGetValueAtIndex(v415, 0);
                *&values = 0;
                FigCFDictionaryGetCGFloatIfPresent();
                *&values = v412 + *&values;
                FigCFDictionarySetCGFloat();
              }
            }
          }
        }
      }

      values = v491;
      v551 = v490;
      CFDictionaryApplyFunction(v367, cclayout_GetRectFromPathDictionaryApplier, &values);
      *v531 = v551;
      *v539 = values;
      v416 = v546;
      *v482 = *v545;
      v482[1] = v416;
      v417 = CFDataGetBytePtr(theDictd);
      v418 = *(v417 + 1);
      v482[2] = *v417;
      v482[3] = v418;
      v482[4] = *v539;
      v482[5] = *v531;
      *(v482 + 12) = v367;
      v419 = namea;
      if (namea)
      {
        v419 = CFRetain(namea);
      }

      v351 = v442;
      *(v482 + 13) = v419;
      v420 = v361 ? CFRetain(v361) : 0;
      v38 = v510;
      *(v482 + 14) = v420;
      if (!colora)
      {
        break;
      }

      v421 = colora;
      v422 = CGColorGetAlpha(colora);
      if (*(v41 + 176) != 1)
      {
        goto LABEL_504;
      }

LABEL_505:
      if (*(v41 + 184) != 1 || v422 == -1.0)
      {
        v422 = *(v41 + 128);
      }

      if (CGColorGetAlpha(v421) == v422)
      {
        if (v421)
        {
          v423 = CFRetain(v421);
        }

        else
        {
          v423 = 0;
        }
      }

      else
      {
        v423 = CGColorCreateCopyWithAlpha(v421, v422);
      }

      *(v482 + 15) = v423;
      *(v482 + 16) = v476;
      *(v482 + 17) = v475;
      *(v482 + 36) = LODWORD(v543);
      CFArrayAppendValue(v477, v482);
      v357 = (v483 + 1);
      if (v483 + 1 == v474)
      {
        goto LABEL_514;
      }
    }

    v422 = -1.0;
LABEL_504:
    v421 = *(v41 + 24);
    goto LABEL_505;
  }

LABEL_514:
  if (a18)
  {
    if (v38)
    {
      v424 = CFRetain(v38);
    }

    else
    {
      v424 = 0;
    }

    *a18 = v424;
  }

  if (a19)
  {
    v425 = cfa;
    if (cfa)
    {
      v425 = CFRetain(cfa);
    }

    *a19 = v425;
  }

  *a20 = v477;
  if (a16)
  {
    *a16 = v434;
  }

  if (a17)
  {
    *a17 = TypographicBounds;
  }

  if (a22)
  {
    *a22 = v351;
  }

  if (a21)
  {
    *a21 = v467;
    a21[1] = v451;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v444)
  {
    CFRelease(v444);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v433;
}

void FigCaptionLayoutReleaseCaptionElementArray(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        v7 = ValueAtIndex[12];
        if (v7)
        {
          CFRelease(v7);
        }

        v8 = ValueAtIndex[13];
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = ValueAtIndex[14];
        if (v9)
        {
          CFRelease(v9);
        }

        v10 = ValueAtIndex[15];
        if (v10)
        {
          CFRelease(v10);
        }

        CFAllocatorDeallocate(v5, ValueAtIndex);
        ++v4;
      }

      while (v3 != v4);
    }

    CFRelease(a1);
  }
}

__CFArray *FigCaptionLayoutCopyCaptionElementArray(CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, 0);
  if (Mutable)
  {
    v5 = Count < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      v8 = MEMORY[0x19A8CC720](v3, 148, 0x10600409A2A7F50, 0);
      v8[36] = 0;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 5) = 0u;
      *(v8 + 6) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 4) = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *v8 = 0u;
      v9 = *(ValueAtIndex + 1);
      *v8 = *ValueAtIndex;
      *(v8 + 1) = v9;
      v10 = *(ValueAtIndex + 3);
      *(v8 + 2) = *(ValueAtIndex + 2);
      *(v8 + 3) = v10;
      v11 = *(ValueAtIndex + 5);
      *(v8 + 4) = *(ValueAtIndex + 4);
      *(v8 + 5) = v11;
      v12 = *(ValueAtIndex + 12);
      if (v12)
      {
        v12 = CFRetain(v12);
      }

      *(v8 + 12) = v12;
      v13 = *(ValueAtIndex + 13);
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      *(v8 + 13) = v13;
      v14 = *(ValueAtIndex + 14);
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *(v8 + 14) = v14;
      *(v8 + 15) = CGColorRetain(*(ValueAtIndex + 15));
      *(v8 + 8) = *(ValueAtIndex + 8);
      v8[36] = *(ValueAtIndex + 36);
      CFArrayAppendValue(Mutable, v8);
      ++v6;
    }

    while (Count != v6);
  }

  return Mutable;
}

double cclayout_getPixelRectForCellRect(CFArrayRef theArray, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = theArray;
  v26 = a12;
  v104 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v31 = Count;
    v101 = 0;
    v32 = 15;
    if (Count < 15)
    {
      v32 = Count;
    }

    v97 = v25;
    v99 = v32;
    if (a2 != 1)
    {
      v40 = 0.0;
      if ((a2 & 0xFFFFFFFE) == 2)
      {
        v84 = a2;
        v89 = a3;
        v85 = a4;
        v103 = 0;
        memset(v102, 0, sizeof(v102));
        v87 = Count;
        if (Count >= 1)
        {
          v41 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v25, v41);
            if (ValueAtIndex)
            {
              v43 = ValueAtIndex;
              v44 = CFArrayGetCount(ValueAtIndex);
              v108.origin.x = a9;
              v108.origin.y = a10;
              v108.size.width = a11;
              v108.size.height = v26;
              MinX = CGRectGetMinX(v108);
              if (v44 < 1)
              {
                v57 = 0.0;
                v25 = v97;
              }

              else
              {
                v46 = 0;
                v47 = 0;
                v48 = (MinX + 1.0);
                do
                {
                  v49 = CFArrayGetValueAtIndex(v43, v47);
                  if (cclayout_getLocationFromCommandData(v49, &v101, 0))
                  {
                    Value = CFDictionaryGetValue(v49, @"S");
                    Length = CFAttributedStringGetLength(Value);
                    v52 = CTLineCreateWithAttributedString(Value);
                    v53 = CFAttributedStringGetLength(Value);
                    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v52, 0, 0);
                    v55 = CTLineGetOffsetForStringIndex(v52, v53, 0) - OffsetForStringIndex;
                    if (v47)
                    {
                      v56 = *&a23 * (v101 - v48);
                    }

                    else
                    {
                      v56 = 0.0;
                    }

                    FigCFDictionarySetCGFloat();
                    v48 = v101 + Length;
                    v46 = (v55 + v56 + v46);
                    if (v52)
                    {
                      CFRelease(v52);
                    }

                    v26 = a12;
                  }

                  ++v47;
                }

                while (v44 != v47);
                v57 = v46;
                v25 = v97;
              }
            }

            else
            {
              v109.origin.x = a9;
              v109.origin.y = a10;
              v109.size.width = a11;
              v109.size.height = v26;
              CGRectGetMinX(v109);
              v57 = 0.0;
            }

            *(v102 + v41) = v57;
            if (v40 <= v57)
            {
              v40 = v57;
            }

            ++v41;
          }

          while (v41 != v99);
        }

        if (v84 == 2)
        {
          v58 = FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(v25);
          v31 = v87;
          a4 = v85;
          a3 = v89;
          v59 = a13;
          if (v87 >= 1 && v58 != 1)
          {
            v60 = 0;
            do
            {
              v61 = CFArrayGetValueAtIndex(v25, v60);
              if (v61)
              {
                v62 = v61;
                if (CFArrayGetCount(v61))
                {
                  CFArrayGetValueAtIndex(v62, 0);
                  FigCFDictionarySetCGFloat();
                }
              }

              ++v60;
            }

            while (v99 != v60);
            v59 = a13;
          }
        }

        else
        {
          a4 = v85;
          a3 = v89;
          v59 = a13;
          v31 = v87;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (Count >= 1)
    {
      v86 = Count;
      v88 = a3;
      v33 = 0;
      do
      {
        v34 = CFArrayGetValueAtIndex(v25, v33);
        if (v34)
        {
          v35 = v34;
          v36 = CFArrayGetCount(v34);
          v105.origin.x = a9;
          v105.origin.y = a10;
          v105.size.width = a11;
          v105.size.height = v26;
          CGRectGetMinX(v105);
          if (v36 >= 1)
          {
            for (i = 0; i != v36; ++i)
            {
              v38 = CFArrayGetValueAtIndex(v35, i);
              if (cclayout_getLocationFromCommandData(v38, &v101, 0))
              {
                v39 = CFDictionaryGetValue(v38, @"S");
                CFAttributedStringGetLength(v39);
                FigCFDictionarySetCGFloat();
                v25 = v97;
              }
            }
          }
        }

        else
        {
          v106.origin.x = a9;
          v106.origin.y = a10;
          v106.size.width = a11;
          v106.size.height = v26;
          CGRectGetMinX(v106);
        }

        ++v33;
      }

      while (v33 != v99);
      a3 = v88;
      v31 = v86;
    }

LABEL_19:
    v107.origin.x = a9;
    v107.origin.y = a10;
    v107.size.width = a11;
    v107.size.height = v26;
    v40 = *&a23 * CGRectGetWidth(v107);
LABEL_49:
    v59 = a13;
    goto LABEL_50;
  }

  v101 = 0;
  if (a2 == 1)
  {
    v31 = 0;
    goto LABEL_19;
  }

  v40 = 0.0;
  v59 = a13;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_58;
  }

  if (a2 == 2)
  {
    FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(0);
  }

  v31 = 0;
LABEL_50:
  if (v31)
  {
    v63 = CFArrayGetValueAtIndex(v25, 0);
    if (v63)
    {
      v64 = v63;
      if (CFArrayGetCount(v63))
      {
        cclayout_getPixelRectForCellRect_cold_1(v64, a10);
      }
    }
  }

LABEL_58:
  v98 = v40;
  v110.origin.x = a9;
  v110.origin.y = a10;
  v110.size.width = a11;
  v110.size.height = v26;
  key = CGRectGetHeight(v110);
  v65 = MEMORY[0x1E695F050];
  v90 = *(MEMORY[0x1E695F050] + 8);
  v111.origin.x = a9;
  v111.origin.y = a10;
  v111.size.width = a11;
  v111.size.height = v26;
  v92 = *&a17 * CGRectGetWidth(v111);
  v112.origin.x = a9;
  v112.origin.y = a10;
  v112.size.width = a11;
  v112.size.height = v26;
  v66 = *&a18 * CGRectGetHeight(v112);
  v113.origin.x = a9;
  v113.origin.y = a10;
  v113.size.width = a11;
  v113.size.height = v26;
  v67 = v59 + CGRectGetMinX(v113) * *&a17;
  v68 = a9;
  v114.origin.x = a9;
  v114.origin.y = a10;
  v69 = a11;
  v114.size.width = a11;
  v114.size.height = v26;
  MinY = CGRectGetMinY(v114);
  v100 = v67;
  if (a4 == 1)
  {
    v71 = a14 + MinY * *&a18;
    v72 = v92;
  }

  else
  {
    v73 = a14 + (15.0 - MinY) * *&a18;
    v115.origin.x = v67;
    v115.origin.y = v90;
    v72 = v92;
    v115.size.width = v92;
    v115.size.height = v66;
    v71 = v73 - CGRectGetHeight(v115);
  }

  if (a3 != 2)
  {
    keya = *&a24 * key;
    if (a3 != 1)
    {
      if (a3 != 3)
      {
        return *v65;
      }

      v100 = a19;
    }

    v118.origin.x = v68;
    v118.origin.y = a10;
    v118.size.width = v69;
    v118.size.height = a12;
    if (CGRectGetMinY(v118) >= 7.0)
    {
      v79 = *&a19;
      if (a4 == 1)
      {
        CGRectGetMaxY(*&v79);
        v120.origin.x = v68;
        v120.origin.y = a10;
        v120.size.width = v69;
        v120.size.height = a12;
        CGRectGetMinY(v120);
        return v100;
      }

      CGRectGetMinY(*&v79);
      v122.origin.x = v68;
      v122.origin.y = a10;
      v122.size.width = v69;
      v122.size.height = a12;
      CGRectGetMinY(v122);
    }

    else
    {
      v75 = *&a19;
      if (a4 == 1)
      {
        CGRectGetMinY(*&v75);
        v119.origin.x = v68;
        v119.origin.y = a10;
        v119.size.width = v69;
        v119.size.height = a12;
        CGRectGetMinY(v119);
        return v100;
      }

      CGRectGetMaxY(*&v75);
      v121.origin.x = v68;
      v121.origin.y = a10;
      v121.size.width = v69;
      v121.size.height = a12;
      CGRectGetMinY(v121);
    }

    v74 = v100;
    v123.origin.x = v100;
    v123.origin.y = v90;
    v123.size.width = v98;
    v123.size.height = keya;
    CGRectGetHeight(v123);
    return v74;
  }

  v116.origin.x = v100;
  v116.origin.y = v71;
  v116.size.width = v72;
  v116.size.height = v66;
  v74 = v100 + (CGRectGetWidth(v116) - v98) * 0.5;
  v117.origin.x = v100;
  v117.origin.y = v71;
  v117.size.width = v72;
  v117.size.height = v66;
  CGRectGetHeight(v117);
  return v74;
}