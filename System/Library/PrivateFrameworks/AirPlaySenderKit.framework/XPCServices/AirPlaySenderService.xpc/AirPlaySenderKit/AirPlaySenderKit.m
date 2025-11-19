CFTypeRef sub_100000F30()
{
  v5 = 0;
  FigVirtualDisplaySourceGetClassID();
  if (CMDerivedObjectCreate())
  {
    sub_100007A24();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 16) = CFStringCreateF();
    v1 = dispatch_queue_create("APMediaSenderFVDSourceQueue", 0);
    *(DerivedStorage + 8) = v1;
    v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v1);
    *(DerivedStorage + 80) = v2;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000010D0;
    handler[3] = &unk_100010748;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v2, handler);
    dispatch_source_set_timer(*(DerivedStorage + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 80));
    *(DerivedStorage + 116) = 1;
    if (!VTPixelTransferSessionCreate(kCFAllocatorDefault, (DerivedStorage + 24)))
    {
      if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
      {
        sub_100007A74((DerivedStorage + 16));
      }

      return v5;
    }

    sub_100007A4C();
  }

  if (v5)
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t sub_1000010D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 88))
  {
    return sub_100007AF0();
  }

  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100007AB4(v1);
  }

  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return sub_100001534(v1, v2, v3);
}

uint64_t sub_10000115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v6 = *(DerivedStorage + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100001200;
    block[3] = &unk_100010770;
    block[4] = a3;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v6, block);
    return 0;
  }

  else
  {
    sub_100007B04();
    return 4294955226;
  }
}

void sub_100001200(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  v5 = *(v4 + 32);
  if (v5)
  {
    _Block_release(v5);
    v4 = a1[5];
  }

  *(v4 + 32) = v3;
  if (a1[6])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = &_dispatch_main_q;
  }

  dispatch_retain(v6);
  v7 = a1[5];
  v8 = *(v7 + 40);
  if (v8)
  {
    dispatch_release(v8);
    v7 = a1[5];
  }

  *(v7 + 40) = v6;
}

uint64_t sub_100001284(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100001364;
  block[3] = &unk_100010798;
  v8 = a2;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v10 + 6))
  {
    APSLogErrorAt();
    v5 = *(v10 + 6);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t sub_100001364(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 112))
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 116) = *(result + 48);
  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1)
    {
LABEL_5:
      v3 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      v4 = *(v2 + 116);
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_100001438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1000014FC;
  v9[3] = &unk_1000107C0;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t sub_1000014FC(uint64_t a1)
{
  result = sub_100001534(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100001534(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  destinationBuffer = 0;
  v6 = *(a1 + 112);
  if (v6 != 2)
  {
    if (!v6)
    {
      APSLogErrorAt();
      goto LABEL_20;
    }

    v25 = -12072;
    goto LABEL_22;
  }

  if (!pixelBuffer)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100007B40(a1);
    }

    v20 = 0;
    v21 = height;
    v22 = width;
    v23 = y;
    v24 = CGRectZero.origin.x;
LABEL_18:
    v31 = *a1;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v32)
    {
      v33 = v32(v31, v20, a3, 0, 0, v24, v23, v22, v21, x, y, width, height);
      if (!v33)
      {
LABEL_20:
        sub_100002520(a1);
        v34 = 0;
        goto LABEL_34;
      }

      v25 = v33;
    }

    else
    {
      v25 = -12782;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 116))
  {
    destinationBuffer = CFRetain(pixelBuffer);
LABEL_15:
    v22 = CVPixelBufferGetWidth(destinationBuffer);
    v26 = CVPixelBufferGetHeight(destinationBuffer);
    v21 = v26;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = v27 / v22;
    if (v27 / v22 >= v28 / v26)
    {
      v29 = v28 / v26;
    }

    v30 = (1.0 - *(a1 + 64)) * v29;
    width = v30 * v22;
    height = v30 * v21;
    x = (v27 - v30 * v22) * 0.5;
    y = (v28 - v30 * v21) * 0.5;
    v23 = 0.0;
    v20 = destinationBuffer;
    v24 = 0.0;
    goto LABEL_18;
  }

  v7 = *a1;
  v8 = CVPixelBufferGetWidth(pixelBuffer);
  v9 = CVPixelBufferGetHeight(pixelBuffer);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v10)
  {
    v11 = v10(v7, 0, 1, &destinationBuffer, v8, v9);
    if (!v11)
    {
      v12 = VTPixelTransferSessionTransferImage(*(a1 + 24), pixelBuffer, destinationBuffer);
      if (v12)
      {
        v25 = v12;
        sub_100007B18();
        goto LABEL_23;
      }

      v13 = destinationBuffer;
      v14 = CVBufferCopyAttachment(pixelBuffer, @"FVDFrameUserData", 0);
      if (v14)
      {
        v15 = v14;
        CVBufferSetAttachment(v13, @"FVDFrameUserData", v14, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v15);
      }

      goto LABEL_15;
    }

    v25 = v11;
  }

  else
  {
    v25 = -12782;
  }

LABEL_22:
  APSLogErrorAt();
LABEL_23:
  v35 = *(a1 + 80);
  v36 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  v37 = *(a1 + 96);
  *(a1 + 96) = pixelBuffer;
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  *(a1 + 104) = a3;
  *(a1 + 88) = 1;
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    v39 = *(a1 + 16);
    LogPrintF();
  }

  if (v25 == -12073)
  {
    v34 = 0;
  }

  else
  {
    v34 = v25;
  }

LABEL_34:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v34;
}

void sub_100001974()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 112))
  {
    if (dword_100014248 > 100 || dword_100014248 == -1 && !_LogCategory_Initialize())
    {
LABEL_29:
      __break(1u);
LABEL_30:
      sub_100007BC0(v1);
      __break(1u);
      return;
    }

    sub_100007B7C(v1);
    __break(1u);
LABEL_26:
    if (v2 <= 100 && (v2 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v2 = dword_100014248;
  if (*DerivedStorage)
  {
    goto LABEL_26;
  }

  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100007C04(v1);
  }

  v3 = *(v1 + 80);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v1 + 80));
    *(v1 + 80) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 96) = 0;
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(v1 + 24) = 0;
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    CFRelease(v7);
    *(v1 + 16) = 0;
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    dispatch_release(v8);
    *(v1 + 40) = 0;
  }

  v9 = *(v1 + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(v1 + 8) = 0;
  }
}

uint64_t sub_100001AD4(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(kFigVirtualDisplaySourceProperty_Type, a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"APMediaSenderFVDSource");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t sub_100001B30(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100001FD4;
    block[3] = &unk_100010880;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_100007C40(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_100001C24(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000202C;
    block[3] = &unk_1000108A8;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_100007C84(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_100001D18(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000208C;
  block[3] = &unk_1000108D0;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v9 + 6))
  {
    APSLogErrorAt();
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_100001DF8()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100002478;
  block[3] = &unk_100010918;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t sub_100001E74()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100002578;
  v4[3] = &unk_100010940;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100001F24()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000269C;
  v4[3] = &unk_100010968;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef *sub_100001FD4(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[28] || *v2)
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *v1[5] = v1[6];
  }

  return result;
}

void sub_10000202C(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 112) && (v3 = *v2, *v2 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *a1[5] = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void sub_10000208C(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 28) || (v3 = *v2) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return;
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  v25 = xmmword_10000A3F0;
  v24 = 60;
  v23 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v14 = -12782;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v5 = v4(v3, &v28, &v27);
  if (v5)
  {
    v14 = v5;
    goto LABEL_18;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex();
  if (v6)
  {
    v14 = v6;
    sub_100007CC8();
    goto LABEL_19;
  }

  v7 = *v2;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    v14 = -12782;
    goto LABEL_18;
  }

  v9 = v8(v7, v26, v26);
  if (v9)
  {
    v14 = v9;
    goto LABEL_18;
  }

  DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode();
  if (DimensionsFromTimingMode)
  {
    v14 = DimensionsFromTimingMode;
    sub_100007CF0();
  }

  else
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode();
    FigDisplayModes_ExtractVSyncRateFromTimingMode();
    *(v2 + 3) = v25;
    v11 = v24;
    *(v2 + 18) = v24;
    v2[8] = 0;
    v12 = v2[4];
    if (v12)
    {
      v13 = v2[5];
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100002454;
      block[3] = &unk_1000108F8;
      block[4] = v12;
      v21 = v25;
      v22 = v11;
      dispatch_async(v13, block);
    }

    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      v18 = v2[2];
      LogPrintF();
    }

    v14 = 0;
  }

LABEL_19:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  *(*(a1[4] + 8) + 24) = v14;
  if (!*(*(a1[4] + 8) + 24))
  {
    LOBYTE(block[0]) = 0;
    v15 = a1[6];
    FigCFDictionaryGetBooleanIfPresent();
    v16 = LOBYTE(block[0]) ? 1 : 2;
    v17 = a1[5];
    *(v17 + 112) = v16;
    if (dword_100014248 <= 50)
    {
      if (dword_100014248 != -1)
      {
LABEL_29:
        v19 = *(v17 + 16);
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v17 = a1[5];
        goto LABEL_29;
      }
    }
  }
}

void sub_100002478(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    sub_100002520(v2);
    v3 = *(a1 + 32);
    *(v3 + 112) = 0;
    if (dword_100014248 <= 50)
    {
      if (dword_100014248 != -1)
      {
LABEL_4:
        v4 = *(v3 + 16);
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v3 = *(a1 + 32);
        goto LABEL_4;
      }
    }
  }
}

void sub_100002520(uint64_t a1)
{
  if (*(a1 + 88))
  {
    dispatch_source_set_timer(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }

    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
  }
}

uint64_t sub_100002578(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (!*(v2 + 112))
  {
    if (dword_100014248 <= 90)
    {
      if (dword_100014248 == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_11;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      v5 = *(v2 + 16);
      result = LogPrintF();
    }

LABEL_11:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 1;
  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1)
    {
LABEL_4:
      v4 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_10000269C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 112) != 1)
  {
    if (dword_100014248 <= 90)
    {
      if (dword_100014248 == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_11;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      v5 = *(v2 + 16);
      result = LogPrintF();
    }

LABEL_11:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 2;
  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1)
    {
LABEL_4:
      v4 = *(v2 + 16);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1000027D4()
{

  return LogPrintF();
}

void sub_1000030C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 136));
  objc_destroyWeak((v33 - 128));
  _Unwind_Resume(a1);
}

void sub_10000313C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAuthRequired:a2];
}

void sub_10000318C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStartCompletion:a2];
}

void sub_1000031DC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFailure:a2];
}

void sub_10000322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedDisplayWidth:a2 height:a3 refreshRate:a4];
}

void sub_100003294(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"APMediaSender_Status"];
  v6 = [v5 intValue];

  [WeakRetained handleVideoStreamErrorNotification:v6];
}

uint64_t sub_10000369C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v12 = OpCode;
    sub_1000084A8();
  }

  else
  {
    xpc_dictionary_get_uint64(v6, kFigCommonXPCMsgParam_ObjectID);
    v10 = FigXPCServerLookupAndRetainAssociatedObject();
    if (v10)
    {
      v12 = v10;
      sub_1000084D0();
    }

    else
    {
      if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v12 = 4294960591;
    }
  }

  objc_autoreleasePoolPop(v8);

  return v12;
}

uint64_t sub_10000395C()
{
  if (qword_1000143C0 != -1)
  {
    sub_100008718();
  }

  return qword_1000143B8;
}

void sub_100003994(id a1)
{
  qword_100014358 = 0;
  unk_100014360 = "APMediaSender";
  qword_100014368 = 0;
  unk_100014370 = 0;
  qword_100014378 = sub_1000039F0;
  unk_100014380 = 0;
  qword_100014388 = 0;
  unk_100014390 = 0;
  qword_100014398 = sub_100003B60;
  qword_1000143B8 = _CFRuntimeRegisterClass();
}

void sub_1000039F0(uint64_t a1)
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_10000872C();
  }

  if (*(a1 + 182))
  {
    if (dword_100014248 <= 100 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100008768();
    }

    __break(1u);
  }

  else
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      _Block_release(v2);
      *(a1 + 120) = 0;
    }

    v3 = *(a1 + 128);
    if (v3)
    {
      _Block_release(v3);
      *(a1 + 128) = 0;
    }

    if (*(a1 + 136))
    {
      FigSimpleMutexDestroy();
      *(a1 + 136) = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 32) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 48) = 0;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 112) = 0;
    }

    v10 = *(a1 + 152);
    if (v10)
    {
      dispatch_release(v10);
      *(a1 + 152) = 0;
    }

    v11 = *(a1 + 144);
    if (v11)
    {
      dispatch_release(v11);
      *(a1 + 144) = 0;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 24) = 0;
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 16) = 0;
    }
  }
}

CFStringRef sub_100003B60(uint64_t a1)
{
  ASPrintF();
  v2 = CFGetAllocator(a1);
  v3 = "yes";
  if (!*(a1 + 182))
  {
    v3 = "no";
  }

  v4 = CFStringCreateWithFormat(v2, 0, @"<APMediaSender %p %s>{ active: %s, usage modes: 0x%x }", a1, 0, v3, *(a1 + 168));
  free(0);
  return v4;
}

void *sub_100003BF4()
{
  if (qword_1000143C0 != -1)
  {
    sub_100008718();
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (!Instance)
  {
    sub_1000087D0();
LABEL_14:
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_1000087E4();
      if (!v1)
      {
        return v1;
      }
    }

    else if (!v1)
    {
      return v1;
    }

    CFRelease(v1);
    return 0;
  }

  *(Instance + 32) = 0u;
  *(Instance + 176) = 0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = dispatch_queue_create("APMediaSenderQueue", 0);
  v1[3] = dispatch_queue_create("APMediaSenderCallbackQueue", 0);
  v1[19] = dispatch_semaphore_create(0);
  v1[17] = FigSimpleMutexCreate();
  if (APEndpointManagerCreate())
  {
    sub_1000087AC();
    goto LABEL_14;
  }

  v2 = sub_100000F30();
  v1[6] = v2;
  if (!v2)
  {
    sub_1000087BC();
    goto LABEL_14;
  }

  if (dword_100014248 <= 50)
  {
    if (dword_100014248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v1;
      }

      v4 = v1[6];
    }

    LogPrintF();
  }

  return v1;
}

uint64_t sub_100003DB4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100003E64;
  block[3] = &unk_100010A58;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_100003E64(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    sub_100008828(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 120) = v4;
  }
}

uint64_t sub_100003ECC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100003F7C;
  block[3] = &unk_100010A80;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_100003F7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    sub_10000884C(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 128);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 128) = v4;
  }
}

uint64_t sub_100003FE4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100004094;
  block[3] = &unk_100010AA8;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_100004094(uint64_t *a1)
{
  v2 = a1[6];
  if (*(v2 + 182))
  {
    return sub_100008870(a1);
  }

  *(*(a1[5] + 8) + 24) = sub_10000115C(*(v2 + 48), *(v2 + 24), a1[4]);
  result = *(*(a1[5] + 8) + 24);
  if (result)
  {
    return sub_100008894();
  }

  return result;
}

uint64_t sub_100004100(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000041AC;
  v4[3] = &unk_100010AD0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_1000041AC(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(v2 + 182))
  {
    return sub_1000088A4(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = sub_100001284(*(v2 + 48), 0);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return sub_1000088C8();
  }

  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1)
    {
      return sub_1000088D8(v3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000088D8(v3);
    }
  }

  return result;
}

uint64_t sub_100004254(uint64_t a1, CFTypeRef cf)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (IsAppleInternalBuild())
      {
        v5 = *(a1 + 16);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100004338;
        block[3] = &unk_100010AF8;
        block[4] = &v9;
        block[5] = a1;
        block[6] = cf;
        dispatch_sync(v5, block);
      }
    }
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_100004338(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (*(v1 + 182))
  {
    sub_100008918(a1);
  }

  else
  {
    v3 = *(v1 + 104);
    v5 = (a1 + 48);
    v4 = *(a1 + 48);
    *(v1 + 104) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_10000893C(v2, v5);
    }
  }
}

uint64_t sub_1000043DC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10000449C;
    v6[3] = &unk_100010B20;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t sub_10000449C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 182))
  {
    return sub_100008980(result);
  }

  v3 = *(result + 48);
  v4 = *v3;
  v5 = v3[1];
  *(v2 + 96) = *(v3 + 4);
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(*(result + 40) + 180) = *(result + 56);
  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1)
    {
LABEL_4:
      v7 = *(v1 + 48);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(v1 + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100004564(uint64_t a1, const void *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = *(a1 + 136);
  FigSimpleMutexLock();
  v5 = *(a1 + 144);
  if (v5)
  {
    dispatch_retain(*(a1 + 144));
    v6 = *(a1 + 112);
    *(a1 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 136);
    FigSimpleMutexUnlock();
    dispatch_semaphore_signal(v5);
    dispatch_release(v5);
  }

  else
  {
    v8 = *(a1 + 136);
    FigSimpleMutexUnlock();
    v9 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000046A4;
    block[3] = &unk_100010B48;
    block[4] = &v13;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v9, block);
  }

  if (*(v14 + 6))
  {
    APSLogErrorAt();
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1000046A4(void *a1)
{
  v1 = a1[5];
  if (*(v1 + 182))
  {
    *(*(a1[4] + 8) + 24) = -6709;
  }

  else
  {
    v2 = *(v1 + 112);
    v3 = a1[6];
    *(v1 + 112) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void sub_100004714(uint64_t a1, CFTypeRef cf, int a3, int a4, int a5, uint64_t a6)
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_1000089A4();
    if (!cf)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (cf)
  {
LABEL_5:
    CFRetain(cf);
  }

LABEL_6:
  v12 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000480C;
  block[3] = &unk_100010B98;
  v14 = a4;
  v15 = a5;
  block[5] = a1;
  block[6] = cf;
  v16 = a3;
  block[4] = a6;
  dispatch_async(v12, block);
}

void sub_10000480C(uint64_t a1)
{
  v1 = a1;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v2 + 168) = v4;
  if (*(a1 + 60))
  {
    v5 = *(a1 + 60);
  }

  else
  {
    v5 = 30;
  }

  *(v2 + 172) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v57 = 0;
  cf = 0;
  memset(v56, 0, sizeof(v56));
  if (!v6)
  {
    sub_100008D98();
LABEL_147:
    v11 = -6705;
    goto LABEL_116;
  }

  if (*(v2 + 182))
  {
    sub_1000089E0();
    v6 = 0;
    v11 = -6709;
    goto LABEL_116;
  }

  if ((v4 & 3) == 0)
  {
    sub_100008D84();
    v6 = 0;
    goto LABEL_147;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID())
        {
          v53 = v1;
          if (dword_100014248 <= 50)
          {
            if (dword_100014248 == -1)
            {
              v9 = 0;
              if (!_LogCategory_Initialize())
              {
                goto LABEL_60;
              }
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_29;
          }

LABEL_30:
          v9 = 0;
          goto LABEL_60;
        }

        sub_100008A1C();
LABEL_158:
        v11 = -6705;
        goto LABEL_115;
      }

LABEL_20:
      v11 = -6705;
      goto LABEL_114;
    }

    v12 = CFGetTypeID(v6);
    if (v12 != CFStringGetTypeID())
    {
      sub_100008B50();
      goto LABEL_158;
    }

    v53 = v1;
    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x2000000000;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
    CFDictionarySetValue(TestInfoDictionary, kAPAdvertiserInfoProperty_DeviceName, v6);
    v15 = CFDictionaryCopyCString();
    if (*(v69 + 6))
    {
      sub_100008B64();
    }

    else
    {
      TextToHardwareAddressScalar();
      v16 = APAdvertiserInfoCreate();
      *(v69 + 6) = v16;
      if (!v16)
      {
        theArray = _NSConcreteStackBlock;
        v60 = 0x40000000;
        v61 = sub_1000062B8;
        v62 = &unk_100010C58;
        v63 = &v68;
        v64 = v67;
        CFDictionaryApplyBlock();
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetInt64();
        CFDictionarySetValue(Mutable, kAPBrowserEventInfoKey_DeviceInfo, v67);
        CFDictionarySetValue(Mutable, kAPBrowserEventInfoKey_IsLegacyPresent, kCFBooleanTrue);
        CFDictionarySetValue(Mutable, kAPBrowserEventInfoKey_IsModernPresent, kCFBooleanTrue);
        v18 = APSNetworkAddressCreateWithString();
        *(v69 + 6) = v18;
        if (v18)
        {
          sub_100008BB4();
        }

        else
        {
          v19 = APTransportDeviceCreateWithNetworkAddress();
          *(v69 + 6) = v19;
          if (!v19)
          {
            v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v21 = APEndpointCreateWithTransportDevice();
            *(v69 + 6) = v21;
            if (v21)
            {
              sub_100008C04();
            }

            else if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
            {
              sub_100008C2C();
            }

LABEL_45:
            free(v15);
            if (TestInfoDictionary)
            {
              CFRelease(TestInfoDictionary);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (v67)
            {
              CFRelease(v67);
            }

            if (v66)
            {
              CFRelease(v66);
            }

            if (v65)
            {
              CFRelease(v65);
            }

            v11 = *(v69 + 6);
            _Block_object_dispose(&v68, 8);
            if (v11)
            {
              sub_100008C68();
              goto LABEL_161;
            }

            v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v6, kAPEndpointActivationOptionKey_SkipAudioHALDeviceCreation, kCFBooleanTrue);
            if (*(v2 + 168))
            {
              CFDictionarySetValue(v6, kAPEndpointActivationOptionKey_ForceTCPScreenMirroring, kCFBooleanTrue);
              CFDictionarySetValue(v6, kFigEndpointActivateOptionKey_PrimaryUsage, kFigEndpointPrimaryUsage_Screen);
              CFDictionarySetValue(v6, kAPEndpointActivationOptionKey_ScreenSource, *(v2 + 48));
              v33 = *(v2 + 104);
              if (v33)
              {
                CFDictionarySetValue(v6, kAPEndpointActivationOptionKey_ScreenOverrides, v33);
              }
            }

            if ((*(v2 + 168) & 2) != 0)
            {
              if (!*(v2 + 72))
              {
                sub_100008C90();
                v11 = -6705;
                goto LABEL_110;
              }

              if (*(v2 + 180))
              {
                CFDictionarySetValue(v6, kFigEndpointActivateOptionKey_PrimaryUsage, kFigEndpointPrimaryUsage_Screen);
              }
            }

            v34 = *(v2 + 112);
            if (!v34)
            {
              goto LABEL_97;
            }

            v35 = *(v2 + 40);
            CMBaseObject = FigEndpointGetCMBaseObject();
            v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v37)
            {
              v38 = v37(CMBaseObject, kFigEndpointProperty_Password, v34);
              if (!v38)
              {
LABEL_97:
                memset(&v56[1] + 8, 0, 40);
                *&v56[0] = v2;
                *(&v56[0] + 1) = sub_100005C98;
                *&v56[1] = sub_100005DFC;
                v39 = *(v2 + 40);
                v40 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v40)
                {
                  v40(v39, v56);
                }

                v41 = *(v2 + 40);
                v42 = FigEndpointActivateSync();
                if (v42)
                {
                  v11 = v42;
                  sub_100008CBC();
                }

                else
                {
                  v43 = *(v2 + 168);
                  if (v43)
                  {
                    v44 = *(v2 + 40);
                    StreamOfType = FigEndpointCopyFirstStreamOfType();
                    if (StreamOfType)
                    {
                      v11 = StreamOfType;
                      sub_100008CE4();
                      goto LABEL_110;
                    }

                    CMNotificationCenterGetDefaultLocalCenter();
                    CMNotificationCenterAddListener();
                    v46 = FigEndpointStreamResume();
                    if (v46)
                    {
                      v11 = v46;
                      sub_100008D0C();
                      goto LABEL_110;
                    }

                    v43 = *(v2 + 168);
                  }

                  if ((v43 & 2) != 0)
                  {
                    v47 = *(v2 + 40);
                    v48 = FigEndpointCopyFirstStreamOfType();
                    if (v48)
                    {
                      v11 = v48;
                      sub_100008D34();
                      goto LABEL_110;
                    }

                    v49 = sub_1000067AC(v57, v2 + 64, 0, (v2 + 56));
                    if (v49)
                    {
                      v11 = v49;
                      sub_100008D5C();
                      goto LABEL_110;
                    }
                  }

                  v11 = 0;
                  *(v2 + 182) = 1;
                }

LABEL_110:
                v1 = v53;
                goto LABEL_116;
              }

              v11 = v38;
            }

            else
            {
              v11 = -12782;
            }

            APSLogErrorAt();
            goto LABEL_110;
          }

          sub_100008BDC();
        }

LABEL_166:
        v20 = 0;
        goto LABEL_45;
      }

      sub_100008B8C();
    }

    Mutable = 0;
    goto LABEL_166;
  }

  if (v7 == 2)
  {
    v13 = CFGetTypeID(v6);
    if (v13 != CFStringGetTypeID())
    {
      sub_100008A08();
      goto LABEL_158;
    }

    v53 = v1;
    if (dword_100014248 > 50)
    {
      goto LABEL_30;
    }

    if (dword_100014248 == -1)
    {
      v9 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_60;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (v7 != 3)
    {
      goto LABEL_20;
    }

    v10 = CFGetTypeID(v6);
    if (v10 != CFDictionaryGetTypeID())
    {
      sub_1000089F4();
      goto LABEL_158;
    }

    v53 = v1;
    if (dword_100014248 > 50 || dword_100014248 == -1 && !_LogCategory_Initialize())
    {
      v9 = v6;
      goto LABEL_60;
    }

    v9 = v6;
  }

LABEL_29:
  LogPrintF();
LABEL_60:
  if (qword_1000143D0 != -1)
  {
    sub_100008A30();
  }

  v22 = *(v2 + 172);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = -1;
  }

  else
  {
    v23 = dispatch_time(0, 1000000000 * v22);
  }

  while (1)
  {
    v24 = qword_1000143C8;
    v25 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(v24, v25))
    {
      break;
    }

    if (v23 <= dispatch_time(0, 0))
    {
      sub_100008A44();
      v11 = -6722;
LABEL_113:
      v1 = v53;
LABEL_114:
      APSLogErrorAt();
      goto LABEL_115;
    }

    if (*(v2 + 181))
    {
      sub_100008A58();
      v11 = -6723;
      goto LABEL_113;
    }
  }

  *(v2 + 160) = qword_1000143C8;
  CMNotificationCenterGetDefaultLocalCenter();
  v26 = *(v2 + 32);
  CMNotificationCenterAddListener();
  if (v9)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (dword_100014248 > 50 || dword_100014248 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_73;
    }

    goto LABEL_137;
  }

  v29 = *(v2 + 32);
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v30)
  {
    v11 = -12782;
LABEL_112:
    APSLogErrorAt();
    goto LABEL_113;
  }

  v31 = v30(v29, kFigEndpointManagerDiscoveryMode_DetailedDiscovery, 0);
  if (v31)
  {
    v11 = v31;
    goto LABEL_112;
  }

  if (dword_100014248 > 50 || dword_100014248 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_73;
  }

LABEL_137:
  sub_100008A6C();
LABEL_73:
  theArray = 0;
  v27 = *(v2 + 172);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = dispatch_time(0, 1000000000 * v27);
  }

  while (1)
  {
    if (v28 <= dispatch_time(0, 0))
    {
      sub_100008AA4();
LABEL_141:
      v11 = -6722;
      goto LABEL_86;
    }

    if (dispatch_semaphore_wait(*(v2 + 152), v28))
    {
      sub_100008AD0();
      goto LABEL_141;
    }

    if (*(v2 + 181))
    {
      break;
    }

    v32 = *(v2 + 32);
    FigEndpointManagerCopyEndpointsForType();
  }

  sub_100008AFC();
  v11 = -6723;
LABEL_86:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  sub_100008B28();
LABEL_161:
  v1 = v53;
LABEL_115:
  APSLogErrorAt();
  v6 = 0;
LABEL_116:
  sub_100006090(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    sub_10000582C(v2, 0);
    APSLogErrorAt();
  }

  else if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100008DAC(v3);
  }

  *(v1[5] + 176) = v11;
  v50 = v1[6];
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = v1[4];
  if (v51)
  {
    v52 = *(*v3 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000570C;
    block[3] = &unk_100010B70;
    block[4] = v51;
    v55 = v11;
    dispatch_async(v52, block);
  }
}

void sub_100005724(uint64_t a1)
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100008DEC();
  }

  *(a1 + 181) = 1;
  dispatch_semaphore_signal(*(a1 + 152));
  v2 = *(a1 + 136);
  FigSimpleMutexLock();
  v3 = *(a1 + 144);
  if (v3)
  {
    if (*(a1 + 112))
    {
      CFRelease(*(a1 + 112));
      *(a1 + 112) = 0;
      v3 = *(a1 + 144);
    }

    dispatch_semaphore_signal(v3);
  }

  v4 = *(a1 + 136);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100005820;
  block[3] = &unk_100010BB8;
  block[4] = a1;
  dispatch_sync(v5, block);
}

void sub_10000582C(intptr_t a1, int a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  sub_100006090(a1);
  if (*(a1 + 40))
  {
    FigEndpointDeactivate();
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  if (a2)
  {
    *(a1 + 181) = 0;
    *(a1 + 176) = 0;
  }
}

uint64_t sub_1000058AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10000595C;
  v6[3] = &unk_100010BE0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sub_10000595C(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return sub_100008E80(a1);
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    return sub_100008E5C(a1);
  }

  v3 = *(v2 + 176);
  if (v3)
  {
    return sub_100008E28(a1, v3);
  }

  *(*(a1[4] + 8) + 24) = sub_100001438(*(v2 + 48), a1[6], a1[7]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return sub_100008E4C();
  }

  return result;
}

uint64_t sub_1000059EC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100005A9C;
  block[3] = &unk_100010C08;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_100005A9C(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return sub_100008EFC(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return sub_100008ED8(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return sub_100008EA4(a1, v4);
  }

  *(*(a1[4] + 8) + 24) = sub_100006BA0(v3, a1[6]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return sub_100008EC8();
  }

  return result;
}

uint64_t sub_100005B28(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100005BEC;
  v8[3] = &unk_100010C30;
  v8[4] = &v12;
  v8[5] = a1;
  v9 = *a3;
  v10 = *(a3 + 2);
  v8[6] = a2;
  v8[7] = a4;
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t sub_100005BEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 182))
  {
    return sub_100008F90(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return sub_100008F6C(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return sub_100008F20(a1, v4);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  *(*(*(a1 + 32) + 8) + 24) = sub_100006FE4(v3, v5, &v9, v6, v7);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return sub_100008F44();
  }

  return result;
}

void sub_100005C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, CFTypeRef, uint64_t, uint64_t), uint64_t a7)
{
  FigCFEqual();
  if (!*(a4 + 120))
  {
    v17 = 0;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v11 = *(a4 + 136);
  FigSimpleMutexLock();
  *(a4 + 144) = dispatch_semaphore_create(0);
  v12 = *(a4 + 112);
  if (v12)
  {
    CFRelease(v12);
    *(a4 + 112) = 0;
  }

  v13 = *(a4 + 136);
  FigSimpleMutexUnlock();
  (*(*(a4 + 120) + 16))();
  v14 = *(a4 + 144);
  v15 = *(a4 + 172);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = -1;
  }

  else
  {
    v16 = dispatch_time(0, 1000000000 * v15);
  }

  dispatch_semaphore_wait(v14, v16);
  v18 = *(a4 + 136);
  FigSimpleMutexLock();
  v19 = *(a4 + 144);
  if (v19)
  {
    dispatch_release(v19);
    *(a4 + 144) = 0;
  }

  v20 = *(a4 + 112);
  if (v20)
  {
    v17 = CFRetain(v20);
  }

  else
  {
    v17 = 0;
  }

  v21 = *(a4 + 136);
  FigSimpleMutexUnlock();
  if (a6)
  {
LABEL_15:
    if (v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4294950568;
    }

    a6(a1, v17, v22, a7);
  }

LABEL_19:
  if (v17)
  {

    CFRelease(v17);
  }
}

void sub_100005DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Int64 = CFDictionaryGetInt64();
  if (dword_100014248 <= 100 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a4 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000063B0;
  block[3] = &unk_100010CE0;
  if (Int64)
  {
    v7 = Int64;
  }

  else
  {
    v7 = -6762;
  }

  block[4] = a4;
  v9 = v7;
  dispatch_sync(v6, block);
}

void sub_100005F0C(int a1, const void *a2, int a3, int a4, const __CFDictionary *cf)
{
  Mutable = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      CFDictionaryGetInt64();
      CFDictionaryGetValue(Mutable, kFigEndpointStreamNotificationKey_Reason);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      FigCFDictionarySetInt32();
    }

    else
    {
      Mutable = 0;
    }
  }

  if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"APMediaSender_VideoStreamFailed", a2, Mutable, 1u);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

intptr_t sub_100006090(intptr_t result)
{
  v1 = *(result + 160);
  if (v1)
  {
    v2 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(v2 + 32);
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 8);
    if (v5)
    {
      v6 = *(VTable + 16) + 8;
      v5(v3, kFigEndpointManagerDiscoveryMode_None, 0);
    }

    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100008FB4();
    }

    *(v2 + 160) = 0;

    return dispatch_semaphore_signal(v1);
  }

  return result;
}

BOOL sub_1000061B8(const void *a1)
{
  cf = 0;
  v1 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    if (!v4(CMBaseObject, kFigEndpointProperty_AutoconnectEnabled, v1, &cf))
    {
      v6 = cf;
      v7 = cf == kCFBooleanTrue;
      if (!cf)
      {
        return v7;
      }

      goto LABEL_6;
    }
  }

  APSLogErrorAt();
  v7 = 0;
  v6 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_1000062B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = APAdvertiserInfoSetProperty();
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24) && dword_100014248 <= 90)
  {
    if (dword_100014248 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000063B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (*(v2 + 176))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = *(v2 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100006458;
    v6[3] = &unk_100010CC0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    dispatch_async(v5, v6);
    v2 = *(a1 + 32);
  }

  *(v2 + 176) = *(a1 + 40);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006514();
  sub_100006600();
  xpc_main(sub_10000663C);
}

uint64_t sub_100006514()
{
  bzero(v1, 0x400uLL);
  _set_user_dir_suffix();
  result = confstr(65537, v1, 0x400uLL);
  if (result)
  {
    if (dword_100014248 <= 50)
    {
      if (dword_100014248 != -1)
      {
        return sub_100008FF0();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_100008FF0();
      }
    }
  }

  else if (dword_100014248 <= 90)
  {
    if (dword_100014248 != -1)
    {
      return sub_100009034();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100009034();
    }
  }

  return result;
}

uint64_t sub_100006600()
{
  result = IsAppleInternalBuild();
  if (result)
  {

    return _LogControl("?AirPlayClientCore:level=info,AirPlayEndpointCore:level=info,APAudioEngine:level=info,APBrowser:level=info,APBrowserBTLEManager:level=info,APBonjourBrowser:level=info,APBrowserController:level=info,APEndpoint:level=info,APEndpointManager:level=info,APEndpointStreamAudio:level=info,APEndpointStreamScreen:level=info,APSenderSessionAirPlay:level=info,AirPlayPairing:level=info");
  }

  return result;
}

void sub_10000663C(_xpc_connection_s *a1)
{
  if (qword_1000143D8)
  {
    sub_100009084();
  }

  else
  {
    if (!FigXPCServerStartWithClientXPCConnection())
    {
      if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
      {
        sub_1000090F4(a1);
      }

      return;
    }

    sub_10000909C();
  }

  if (dword_100014248 <= 100 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_1000090B0();
  }

  xpc_connection_cancel(a1);
}

uint64_t sub_10000674C()
{
  if (qword_1000143E0 != -1)
  {
    sub_10000913C();
  }

  return qword_1000143E8;
}

uint64_t sub_100006784()
{
  result = _CFRuntimeRegisterClass();
  qword_1000143E8 = result;
  return result;
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (qword_1000143E0 != -1)
  {
    sub_10000913C();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    sub_1000091C0();
    return 4294960568;
  }

  v8 = Instance;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v9 = (Instance + 32);
  *(Instance + 24) = CFStringCreateF();
  SNPrintF();
  *(v8 + 16) = dispatch_queue_create(label, 0);
  SNPrintF();
  v10 = dispatch_queue_create(label, 0);
  *(v8 + 112) = *&kCMTimeZero.value;
  *(v8 + 128) = kCMTimeZero.epoch;
  *(v8 + 136) = v10;
  v11 = *(a2 + 32);
  v12 = *(a2 + 16);
  *&v9->mSampleRate = *a2;
  *(v8 + 48) = v12;
  *(v8 + 64) = v11;
  *(v8 + 80) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (a3 <= 0)
  {
    v13 = 5;
  }

  else
  {
    v13 = a3;
  }

  *(v8 + 148) = v13;
  v14 = CMAudioFormatDescriptionCreate(kCFAllocatorDefault, v9, 0, 0, 0, 0, 0, (v8 + 72));
  if (v14)
  {
    v20 = v14;
    sub_100009148();
    goto LABEL_17;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v20 = 4294954514;
LABEL_16:
    APSLogErrorAt();
LABEL_17:
    CFRelease(v8);
    return v20;
  }

  v17 = v16(CMBaseObject, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, v8 + 88);
  if (v17)
  {
    v20 = v17;
    goto LABEL_16;
  }

  v18 = FigEndpointAudioSourceBufferQueueCreate();
  if (v18)
  {
    v20 = v18;
    sub_100009170();
    goto LABEL_17;
  }

  v19 = sub_100006AE0(*(v8 + 96), kFigEndpointAudioSourceBufferQueueProperty_BufferQueue, kCFAllocatorDefault, v8 + 104);
  if (v19)
  {
    v20 = v19;
    sub_100009198();
    goto LABEL_17;
  }

  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    v23 = *(v8 + 96);
    v22 = *(v8 + 24);
    LogPrintF();
  }

  v20 = 0;
  *a4 = v8;
  return v20;
}

uint64_t sub_100006AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(CMBaseObject, a2, a3, a4);
}

uint64_t sub_100006BA0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100006C50;
  block[3] = &unk_100010D38;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_100006C50(uint64_t a1)
{
  Length = CFDataGetLength(*(a1 + 40));
  v3 = *(a1 + 48);
  CMTimeMake(&rhs, Length / *(v3 + 48), *(v3 + 32));
  v8 = *(v3 + 112);
  CMTimeAdd(&v10, &v8, &rhs);
  *(v3 + 112) = v10;
  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  rhs = v10;
  v8 = *(v5 + 112);
  result = sub_100006D1C(v5, v6, &rhs.value, &v8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100006D1C(uint64_t a1, CFDataRef theData, __int128 *a3, CMTime *a4)
{
  if (*(a1 + 40) != 1819304813)
  {
    sub_1000091D4();
    return 4294960591;
  }

  if (theData)
  {
    v5 = atomic_load((a1 + 144));
    if (v5)
    {
      sub_1000091E8();
      return v5;
    }

    v21 = *a4;
    v23 = 0;
    sampleBufferOut = 0;
    Length = CFDataGetLength(theData);
    v8 = *(a1 + 48);
    v9 = Length / v8;
    if (!(Length % v8))
    {
      BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
      if (BlockBufferWithCFDataNoCopy)
      {
        v5 = BlockBufferWithCFDataNoCopy;
        sub_10000920C();
      }

      else
      {
        v11 = *(a1 + 72);
        presentationTimeStamp = v21;
        v5 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(kCFAllocatorDefault, v23, v11, v9, &presentationTimeStamp, 0, &sampleBufferOut);
        if (!v5)
        {
          v12 = sampleBufferOut;
          sampleBufferOut = 0;
LABEL_8:
          if (v23)
          {
            CFRelease(v23);
          }

          if (v5)
          {
            sub_100009234();
          }

          else
          {
            v13 = CMBufferQueueEnqueue(*(a1 + 104), v12);
            if (v13)
            {
              v5 = v13;
              sub_10000925C();
            }

            else
            {
              if (!*(a1 + 152))
              {
                *(a1 + 152) = 1;
                CFRetain(a1);
                v14 = *(a1 + 136);
                block[0] = _NSConcreteStackBlock;
                block[1] = 0x40000000;
                block[2] = sub_1000071D4;
                block[3] = &unk_100010DE0;
                block[4] = a1;
                v19 = *a3;
                v20 = *(a3 + 2);
                dispatch_async(v14, block);
              }

              v5 = 0;
            }
          }

          if (v12)
          {
            CFRelease(v12);
          }

          return v5;
        }

        APSLogErrorAt();
        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }

      v12 = 0;
      goto LABEL_8;
    }

    sub_1000091F8();
    v12 = 0;
    v5 = 4294960591;
    goto LABEL_8;
  }

  if (!*(a1 + 152))
  {
    return 0;
  }

  *(a1 + 152) = 0;
  *(a1 + 112) = *&kCMTimeZero.value;
  *(a1 + 128) = kCMTimeZero.epoch;
  v15 = *(a1 + 136);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = sub_100007480;
  v17[3] = &unk_100010E00;
  v17[4] = a1;
  dispatch_sync(v15, v17);
  CMBufferQueueReset(*(a1 + 104));
  v5 = atomic_load((a1 + 144));
  if (v5)
  {
    sub_100009284();
  }

  return v5;
}

uint64_t sub_100006FE4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1000070A8;
  v8[3] = &unk_100010D60;
  v8[4] = &v12;
  v8[5] = a1;
  v8[6] = a4;
  v8[7] = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t sub_1000070A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMTimeMake(&v7, *(a1 + 48), *(v2 + 32));
  *(v2 + 112) = v7;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(v3 + 112);
  result = sub_100006D1C(v3, v4, &v7.value, &v6);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100007134(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
    a1[9] = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
    a1[10] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
    a1[13] = 0;
  }

  v8 = a1[17];
  if (v8)
  {
    dispatch_release(v8);
    a1[17] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
    a1[2] = 0;
  }
}

void sub_1000071D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v19.value = *(a1 + 40);
  v19.epoch = *(a1 + 56);
  v3 = *(v2 + 80);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_100014248 > 50 || dword_100014248 == -1 && !_LogCategory_Initialize())
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_22:
    sub_10000939C();
    v18 = -6709;
    goto LABEL_20;
  }

  sub_1000092AC(v2);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_5:
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, kFigEndpointStreamAudioEngineResumeOption_AudioSource, *(v2 + 96));
  time = v19;
  v6 = FigCFDictionarySetCMTime();
  if (v6)
  {
    v18 = v6;
    sub_1000092E8();
LABEL_27:
    v13 = 0;
    goto LABEL_16;
  }

  v7 = *(v2 + 88);
  v8 = *(v2 + 148);
  v9 = FigEndpointStreamAudioEngineResumeSync();
  if (v9)
  {
    v18 = v9;
    sub_100009310();
    goto LABEL_27;
  }

  v10 = *(v2 + 88);
  v11 = *(v2 + 148);
  v12 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
  if (v12)
  {
    v18 = v12;
    sub_100009338();
    goto LABEL_27;
  }

  time = kCMTimeZero;
  v13 = CMTimeCopyAsDictionary(&time, kCFAllocatorDefault);
  v14 = *(v2 + 88);
  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v17 = v16(CMBaseObject, kAPAudioEngineProperty_AudioSourceFirstFrameAnchorTime, v13);
    if (!v17)
    {
      if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
      {
        sub_100009360(v2);
      }

      v18 = 0;
      goto LABEL_16;
    }

    v18 = v17;
  }

  else
  {
    v18 = -12782;
  }

  APSLogErrorAt();
LABEL_16:
  CFRelease(v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_20:
  atomic_store(v18, (v2 + 144));
  CFRelease(*(a1 + 32));
}

uint64_t sub_100007480(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_1000093B0(v1);
  }

  v2 = *(v1 + 88);
  v3 = *(v1 + 148);
  result = FigEndpointStreamAudioEngineSuspendSync();
  v5 = result;
  if (result)
  {
    result = sub_1000093EC();
  }

  else if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1000093FC(v1);
    }
  }

  atomic_store(v5, (v1 + 144));
  return result;
}

uint64_t sub_100007574(__CVBuffer *a1, uint64_t a2, void *a3)
{
  v14 = 0u;
  v15 = 0u;
  empty = xpc_dictionary_create_empty();
  v7 = empty;
  bytes = a2;
  if (!a1)
  {
    xpc_dictionary_set_data(empty, "data", &bytes, 0x28uLL);
    goto LABEL_9;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    XPCObject = IOSurfaceCreateXPCObject(IOSurface);
    if (XPCObject)
    {
      xpc_dictionary_set_value(v7, "surface", XPCObject);
      CVPixelBufferGetExtendedPixels(a1, &v14, &v14 + 1, &v15, &v15 + 1);
      v10 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
      xpc_dictionary_set_data(v7, "data", &bytes, 0x28uLL);
      if (v10)
      {
        v11 = FigXPCMessageSetCFDictionary();
        if (v11)
        {
          sub_100009438();
        }

        else
        {
          *a3 = v7;
        }

        CFRelease(v10);
        goto LABEL_10;
      }

LABEL_9:
      v11 = 0;
      *a3 = v7;
      goto LABEL_10;
    }

    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100009460();
    }

    v11 = 4294960534;
  }

  else
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_10000947C();
    }

    v11 = 4294960591;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t sub_100007744(void *a1, CVPixelBufferRef *a2, void *a3)
{
  length = 0;
  pixelBufferOut = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  if (!data)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100009558();
    }

    goto LABEL_38;
  }

  if (length != 40)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100009498();
    }

    goto LABEL_38;
  }

  v7 = data;
  value = xpc_dictionary_get_value(a1, "surface");
  if (!value)
  {
    v15 = 0;
    Mutable = 0;
    *a3 = *v7;
    *a2 = 0;
    pixelBufferOut = 0;
    goto LABEL_23;
  }

  v9 = IOSurfaceLookupFromXPCObject(value);
  if (!v9)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_100009520();
    }

LABEL_38:
    Mutable = 0;
    v15 = 4294960591;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = FigXPCMessageCopyCFDictionary();
  if (v11)
  {
    v15 = v11;
    sub_1000094D0();
    Mutable = 0;
  }

  else
  {
    if (v7[1] || v7[2] || v7[3] || v7[4])
    {
      v12 = kCFAllocatorDefault;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v7[1])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[2])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[3])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[4])
      {
        FigCFDictionarySetInt64();
      }
    }

    else
    {
      Mutable = 0;
      v12 = kCFAllocatorDefault;
    }

    v14 = CVPixelBufferCreateWithIOSurface(v12, v10, Mutable, &pixelBufferOut);
    if (v14)
    {
      v15 = v14;
      sub_1000094F8();
    }

    else
    {
      v15 = 0;
      *a3 = *v7;
      *a2 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  CFRelease(v10);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

LABEL_23:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t sub_100007C40(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t sub_100007C84(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t sub_1000084F8(const void *a1, const void *a2)
{
  cf1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, kFigEndpointProperty_Name, v3, &cf1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!cf1)
    {
      return 0;
    }

    v6 = CFEqual(cf1, a2);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v6;
}

BOOL sub_100008604(const void *a1, const __CFString *a2)
{
  theString1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, kFigEndpointProperty_ID, v3, &theString1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!theString1)
    {
      return 0;
    }

    v6 = CFStringCompare(theString1, a2, 1uLL) == kCFCompareEqualTo;
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  return v6;
}

uint64_t sub_10000893C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return sub_1000027D4();
}

uint64_t sub_100009034()
{
  v0 = __error();
  strerror(*v0);
  return LogPrintF();
}