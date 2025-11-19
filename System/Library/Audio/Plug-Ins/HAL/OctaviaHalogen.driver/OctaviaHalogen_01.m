uint64_t sub_116F0(_DWORD *a1)
{
  fig_log_get_emitter();
  sub_7498();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_1174C()
{
  fig_log_get_emitter();
  sub_7498();

  return FigSignalErrorAtGM();
}

uint64_t sub_117AC()
{
  fig_log_get_emitter();
  sub_7498();

  return FigSignalErrorAtGM();
}

void sub_11820(id a1)
{
  v1 = sub_A61C();
  v9 = sub_A690(v1, v2, v3, v4, v5, v6, v7, v8, byte7, byte15, block, v85, v86, v87, v88, cf, v90, v91, v92);
  if (sub_A60C(v9))
  {
    sub_A5CC();
    sub_A5E8();
  }

  sub_8A04();
  sub_A6F0();
  v10 = &selRef_addLine_withColorIndex_;
  if (FigIsAirplaydEnabled())
  {
    v11 = getprogname();
    if (!strcmp(v11, "audiomxd"))
    {
      v22 = sub_A61C();
      v30 = sub_A690(v22, v23, v24, v25, v26, v27, v28, v29, byte7a, byte15a, block, v85, v86, v87, v88, cf, v90, v91, v92);
      if (sub_A60C(v30))
      {
        sub_A5CC();
        sub_A5E8();
      }

      sub_8A04();
      sub_A6F0();
      v70 = FigEndpointManagerRemoteCopyNeroManager();
      if (v70)
      {
        goto LABEL_46;
      }

LABEL_44:
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v70 = CMSessionMgrRegisterEndpointManager();
        if (v70)
        {
LABEL_46:
          v21 = v70;
          goto LABEL_52;
        }
      }

      if (_os_feature_enabled_impl())
      {
        if (!FigIsAirplaydEnabled())
        {
          if (!in_audio_mx_server_process())
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (FigServer_IsAirplayd())
        {
LABEL_50:
          FigTransportXPCConnectionServerStart();
        }
      }

LABEL_51:
      v21 = 0;
      goto LABEL_52;
    }
  }

  v12 = sub_A61C();
  v20 = sub_A690(v12, v13, v14, v15, v16, v17, v18, v19, byte7a, byte15a, block, v85, v86, v87, v88, cf, v90, v91, v92);
  if (sub_A60C(v20))
  {
    sub_A5CC();
    sub_A5E8();
  }

  sub_8A04();
  sub_A6F0();
  cf = 0;
  if (!FigGetCFPreferenceNumberWithDefault())
  {
    v21 = -12782;
    goto LABEL_52;
  }

  FigEndpointManagerGetClassID();
  v21 = CMDerivedObjectCreate();
  if (!v21)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v32 = dispatch_queue_create("NeroEndpointManager.queue", 0);
    DerivedStorage[1] = v32;
    if (v32)
    {
      dispatch_async(v32, &stru_1DA48);
      v33 = dispatch_queue_create("NeroEndpointManager.notification", 0);
      DerivedStorage[2] = v33;
      if (v33)
      {
        v96 = _NSConcreteStackBlock;
        v97 = 0x40000000;
        v98 = sub_11F90;
        v99 = &unk_1DA68;
        v100 = cf;
        SharedDiscovery = FigTransportDiscoveryGetSharedDiscovery();
        DerivedStorage[4] = FigTransportDiscoveryAddEventHandler();
        if (FigGetCFPreferenceNumberWithDefault())
        {
          v34 = dispatch_time(0, 5000000000);
          v35 = DerivedStorage[1];
          block = _NSConcreteStackBlock;
          v85 = 0x40000000;
          v86 = sub_90C4;
          v87 = &unk_1DA88;
          v88 = cf;
          dispatch_after(v34, v35, &block);
        }

        v102[0] = 0;
        if (qword_20158 != -1)
        {
          dispatch_once(&qword_20158, &stru_1DBB0);
        }

        FigCFWeakReferenceTableAddValueAndGetKey();
        DerivedStorage[10] = v102[0];
        if (!FigIsAirplaydEnabled())
        {
          goto LABEL_41;
        }

        v36 = dispatch_queue_create("NeroEndpointManager.pluginregister", 0);
        DerivedStorage[3] = v36;
        if (v36)
        {
          Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
          v91 = 0;
          CFStringAppendFormat(Mutable, 0, @"/System/Library/Audio/Plug-Ins/HAL/%@");
          v38 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
          if (v38)
          {
            v39 = v38;
            v40 = CFPlugInCreate(0, v38);
            if (v40)
            {
              v48 = v40;
              v49 = sub_A650(v40, v41, v42, v43, v44, v45, v46, v47, @"OctaviaHalogen.driver", @"OctaviaHalogen.driver" >> 32, 0xDBu);
              FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v49, v48);
              if (FactoriesForPlugInTypeInPlugIn)
              {
                v51 = FactoriesForPlugInTypeInPlugIn;
                if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) <= 0)
                {
                  HIDWORD(v90) = 0;
                  BYTE3(v90) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v76 = HIDWORD(v90);
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v90)))
                  {
                    v77 = v76;
                  }

                  else
                  {
                    v77 = v76 & 0xFFFFFFFE;
                  }

                  if (v77)
                  {
                    v92 = 136315138;
                    v93 = "nmanager_createFigNeroHALDriver";
                    sub_A684();
                    sub_A644();
                    _os_log_send_and_compose_impl();
                  }

                  sub_A6D8();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v10 = &selRef_addLine_withColorIndex_;
                }

                else
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v51, 0);
                  if (ValueAtIndex)
                  {
                    v60 = ValueAtIndex;
                    v61 = sub_A650(ValueAtIndex, v53, v54, v55, v56, v57, v58, v59, byte7b, byte7_4, 0xDBu);
                    v62 = CFPlugInInstanceCreate(0, v60, v61);
                    if (v62)
                    {
                      v63 = v62;
                      v64 = *(*v62 + 8);
                      v65 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
                      v66 = CFUUIDGetUUIDBytes(v65);
                      v64(v63, *&v66.byte0, *&v66.byte8, &v91);
                      (*(*v63 + 24))(v63);
                    }
                  }
                }

                CFRelease(v39);
              }

              else
              {
                v51 = v39;
              }

              CFRelease(v51);
            }

            else
            {
              v48 = v39;
            }

            CFRelease(v48);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v67 = v91;
          DerivedStorage[9] = v91;
          if (v67)
          {
            LODWORD(v91) = 0;
            BYTE4(v90) = 0;
            v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v69 = os_log_type_enabled(v68, BYTE4(v90));
            if (sub_A60C(v69))
            {
              v92 = 136315394;
              v93 = "nmanager_create";
              v94 = 2048;
              v95 = cf;
              sub_A5E8();
            }

            sub_8A04();
            sub_A6F0();
            sub_12190(cf, 0);
LABEL_41:
            v71 = cf;
            v72 = CMBaseObjectGetDerivedStorage();
            if (!*(v72 + 40))
            {
              v73 = v72;
              FigTransportDiscoveryGetSharedDiscovery();
              v74 = *(v73 + 8);
              v102[0] = _NSConcreteStackBlock;
              v102[1] = 0x40000000;
              v102[2] = sub_A5BC;
              v102[3] = &unk_1DD90;
              v102[4] = v71;
              dispatch_async(v74, v102);
              FigTransportDiscoveryStart();
              *(v73 + 40) = 1;
            }

            v10[41] = cf;
            goto LABEL_44;
          }
        }
      }
    }

    v21 = -16711;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_52:
  dword_20140 = v21;
}

void sub_11F90(uint64_t a1, int a2, const __CFDictionary *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    switch(a2)
    {
      case 3:
        v11 = dispatch_time(0, 10000000000);
        v12 = *(v8 + 1);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_A0BC;
        block[3] = &unk_1DCF0;
        block[4] = v6;
        dispatch_after(v11, v12, block);
        break;
      case 2:

        sub_9BB0(v5, 0);
        break;
      case 1:
        v9 = sub_A6B0();
        if (os_log_type_enabled(v9, type))
        {
          v10 = v14;
        }

        else
        {
          v10 = v14 & 0xFFFFFFFE;
        }

        if (v10)
        {
          sub_A684();
          sub_A644();
          _os_log_send_and_compose_impl();
        }

        sub_8A04();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (!*(v8 + 6))
        {
          sub_90DC(v5, 0, a3, 0, 0);
        }

        break;
    }
  }
}

void sub_12190(const void *a1, unsigned int a2)
{
  if (a1)
  {
    CFRetain(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    dispatch_time(0, 1000000000 * a2);
    sub_89E4();
    v7[1] = 0x40000000;
    v7[2] = sub_A170;
    v7[3] = &unk_1DD70;
    v7[4] = DerivedStorage;
    v7[5] = a1;
    dispatch_after(v5, v6, v7);
  }
}

uint64_t sub_1222C()
{
  SharedDiscovery = FigTransportDiscoveryGetSharedDiscovery();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    if (SharedDiscovery)
    {
      v3 = CMBaseObjectGetDerivedStorage();
      if (*(v3 + 40))
      {
        v4 = v3;
        FigTransportDiscoveryGetSharedDiscovery();
        sub_969C();
        FigTransportDiscoveryStop();
        *(v4 + 40) = 0;
      }

      sub_89E4();
      v13[1] = 0x40000000;
      v13[2] = sub_968C;
      v13[3] = &unk_1DB30;
      v13[4] = SharedDiscovery;
      v13[5] = v2;
      dispatch_sync(v5, v13);
    }

    v6 = *(v2 + 6);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v6);
      }

      v8 = *(v2 + 6);
      if (v8)
      {
        CFRelease(v8);
        *(v2 + 6) = 0;
      }
    }

    v9 = *(v2 + 7);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(v9);
      }

      v11 = *(v2 + 7);
      if (v11)
      {
        CFRelease(v11);
        *(v2 + 7) = 0;
      }
    }
  }

  return 0;
}

void sub_123EC()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[2];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[2] = 0;
  }

  sub_1222C();
  v2 = DerivedStorage[3];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[3] = 0;
  }

  if (qword_20158 != -1)
  {
    dispatch_once(&qword_20158, &stru_1DBB0);
  }

  FigCFWeakReferenceTableRemoveValue();
  v3 = DerivedStorage[9];
  if (v3)
  {
    (*(*v3 + 24))(v3);
    DerivedStorage[9] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[1] = 0;
  }
}

uint64_t sub_124A0(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294950584;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, kFigEndpointManagerProperty_AvailableEndpoints))
  {
    v10 = *(v8 + 6);
    v9 = (v8 + 48);
    if (v10)
    {
LABEL_4:
      v11 = a3;
      v12 = v9;
      v13 = 1;
LABEL_8:
      SInt64 = CFArrayCreate(v11, v12, v13, &kCFTypeArrayCallBacks);
LABEL_9:
      v16 = 0;
LABEL_10:
      *a4 = SInt64;
      return v16;
    }

LABEL_7:
    v11 = a3;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  if (CFEqual(a2, kFigEndpointManagerProperty_AvailableCameraPreviewEndpoint))
  {
    v14 = *(v8 + 7);
    v9 = (v8 + 56);
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, kFigEndpointManagerProperty_Name))
  {
    SInt64 = CFRetain(kFigEndpointManagerType_Nero);
    goto LABEL_9;
  }

  if (CFEqual(a2, kFigEndpointManagerProperty_SupportedFeatures))
  {
    SupportedFeatures = FigEndpointManagerGetSupportedFeatures();
  }

  else
  {
    if (!CFEqual(a2, kFigEndpointManagerProperty_SupportedDiscoveryFeatures))
    {
      return 4294954512;
    }

    SupportedFeatures = FigEndpointManagerGetSupportedDiscoveryFeatures();
  }

  v16 = SupportedFeatures;
  if (!SupportedFeatures)
  {
    SInt64 = FigCFNumberCreateSInt64();
    goto LABEL_10;
  }

  return v16;
}

void sub_12628(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = sub_A6B0();
  if (os_log_type_enabled(v3, type))
  {
    v4 = v9;
  }

  else
  {
    v4 = v9 & 0xFFFFFFFE;
  }

  if (v4)
  {
    sub_A684();
    sub_A644();
    _os_log_send_and_compose_impl();
  }

  sub_8A04();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v5 = 10;
  while (1)
  {
    v6 = lockdown_copy_trustedHostAttached();
    v7 = v6;
    if (v6 == kCFBooleanTrue)
    {
      break;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    FigUSleep();
    if (!--v5)
    {
      v7 = 0;
      break;
    }
  }

  if (v7 == kCFBooleanTrue)
  {
    if (!*(DerivedStorage + 48))
    {
      if (FigIsAirplaydEnabled())
      {
        sub_12824();
        if (!*(DerivedStorage + 64) || NeroTransportStartAcceptingConnections())
        {
          goto LABEL_16;
        }

        NeroTransportSetAsConnected();
      }

      sub_90DC(a1, 1, 0, 0, 0);
    }
  }

  else
  {
    sub_127D8(a1);
  }

LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_127D8(const void *a1)
{
  if (CMBaseObjectGetDerivedStorage())
  {

    sub_9BB0(a1, 0);
  }
}

void sub_12824()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 64))
  {
    v1 = DerivedStorage;
    if (!FigTransportConnectionUSBCreate())
    {
      CMBaseObject = NeroTransportConnectionGetCMBaseObject();
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v3)
      {
        if (!v3(CMBaseObject, kFigTransportConnectionUSBProperty_InterfaceName, kFigTransportConnectionUSBInterfaceName_Valeria) && !NeroTransportCreate())
        {
          sub_89E4();
          FigTransportGetLocalRootObject();
          if (!NeroTransportRegisterObject())
          {
            *(v1 + 64) = 0;
          }
        }
      }
    }
  }
}

void sub_129DC(uint64_t a1, int a2, const void *a3)
{
  v5 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v7 = DerivedStorage;
    if (a2 == 1684628836)
    {
      v9 = *(DerivedStorage + 48);
      if (v9)
      {
        sub_7724(v9, 1684628836, a3);
      }

      sub_127D8(v5);
    }

    else
    {
      if (a2 == 1651470958)
      {
        sub_12628(v5);
      }

      v8 = *(v7 + 48);
      if (v8)
      {

        sub_7724(v8, a2, a3);
      }
    }
  }
}

uint64_t sub_12AE0()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v1 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  if (sub_A60C(v1))
  {
    sub_A684();
    sub_A644();
    _os_log_send_and_compose_impl();
  }

  sub_A6D8();
  return sub_A6F0();
}

uint64_t sub_12C10(int a1, CFDictionaryRef theDict, const void *a3, const void *a4, void *a5)
{
  if (!a5)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  Value = CFDictionaryGetValue(theDict, @"DisplaySize");
  if (!Value)
  {
    return 4294950536;
  }

  v10 = Value;
  v11 = CFDictionaryGetValue(theDict, @"IsOverscanned");
  FigEndpointStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    return v12;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = kCFBooleanFalse;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = CFRetain(v10);
  *(DerivedStorage + 16) = CFRetain(v13);
  if (a3)
  {
    v15 = CFRetain(a3);
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 56) = v15;
  *(DerivedStorage + 72) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  v16 = dispatch_queue_create("NeroEndpointScreenStream.queue", 0);
  *(DerivedStorage + 32) = v16;
  if (!v16)
  {
    return 4294950535;
  }

  v17 = dispatch_queue_create("NeroEndpointScreenStream.notification", 0);
  *(DerivedStorage + 40) = v17;
  if (!v17)
  {
    return 4294950535;
  }

  CFDictionaryGetValue(theDict, @"Valeria");
  *(DerivedStorage + 48) = sub_AD94();
  CFDictionaryGetValue(theDict, @"CameraPreview");
  *(DerivedStorage + 80) = sub_AD94();
  CFDictionaryGetValue(theDict, @"H264DecoderSupports444");
  *(DerivedStorage + 49) = sub_AD94();
  CFDictionaryGetValue(theDict, @"HEVCDecoderSupports444");
  *(DerivedStorage + 50) = sub_AD94();
  CFDictionaryGetValue(theDict, @"HEVCDecoderSupports44410");
  *(DerivedStorage + 51) = sub_AD94();
  size = CGSizeZero;
  v18 = CMBaseObjectGetDerivedStorage();
  v19 = sub_A6B0();
  if (os_log_type_enabled(v19, type))
  {
    v20 = v50;
  }

  else
  {
    v20 = v50 & 0xFFFFFFFE;
  }

  if (v20)
  {
    v52 = 136315394;
    v53 = "nscreen_activateInternal";
    v54 = 2048;
    v55 = 0;
    _os_log_send_and_compose_impl();
  }

  v21 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v22 = sub_ADAC();
  Mutable = CFDictionaryCreateMutable(v22, v23, v24, v25);
  v27 = Mutable;
  if (!*(v18 + 80))
  {
    if (*(v18 + 48))
    {
      v28 = kFigVirtualDisplayUsage_Valeria;
    }

    else
    {
      Mutable = sub_EF8();
      if (!Mutable)
      {
        goto LABEL_28;
      }

      v28 = kFigVirtualDisplayUsage_Stevenote;
      if (!*(v18 + 49) || (Mutable = FVDUtilsH264EncoderSupports444(), !Mutable))
      {
        v21 = 0;
      }
    }

    if (v28)
    {
      CFDictionarySetValue(v27, kFigVirtualDisplayOption_Usage, v28);
    }
  }

LABEL_28:
  if (*(v18 + 49))
  {
    sub_ADB8(Mutable, kFigVirtualDisplayOption_ReceiverWants444H264);
  }

  if (*(v18 + 50))
  {
    sub_ADB8(Mutable, kFigVirtualDisplayOption_ReceiverWants444HEVC);
  }

  if (*(v18 + 51))
  {
    sub_ADB8(Mutable, kFigVirtualDisplayOption_ReceiverWants44410HEVC);
  }

  if (*(v18 + 48))
  {
    sub_ADB8(Mutable, kFigVirtualDisplayOption_ScreenRecording);
    FigCFDictionarySetInt();
    CFDictionarySetValue(v27, kFigVirtualDisplayOption_DisplayLabel, @"iOSScreenCaptureForMac");
  }

  if (sub_EF8())
  {
    FigCFDictionarySetInt();
    CFDictionarySetValue(v27, kFigVirtualDisplayOption_DisplayLabel, @"Stevenote");
  }

  CFDictionarySetValue(v27, kFigVirtualDisplayOption_ClientName, @"NeroScreen");
  v29 = sub_ADAC();
  v33 = CFDictionaryCreateMutable(v29, v30, v31, v32);
  v34 = v33;
  if (*(v18 + 48))
  {
    v35 = kCFBooleanTrue;
  }

  else
  {
    v35 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v33, kFigVirtualDisplaySinkProperty_IsValeria, v35);
  if (v21)
  {
    v36 = kCFBooleanFalse;
  }

  else
  {
    v36 = kCFBooleanTrue;
  }

  CFDictionarySetValue(v34, kFigVirtualDisplaySinkProperty_ShouldUseStevenoteJPEG, v36);
  v37 = sub_37A4(kCFAllocatorDefault, v34, *(v18 + 72), (v18 + 64));
  if (!v37)
  {
    if (CGSizeMakeWithDictionaryRepresentation(*(v18 + 8), &size))
    {
      v39 = sub_ADAC();
      v43 = CFDictionaryCreateMutable(v39, v40, v41, v42);
      v38 = v43;
      if (!v43)
      {
        v12 = 4294954510;
        goto LABEL_52;
      }

      CFDictionarySetValue(v43, kFigVirtualDisplaySinkDeviceInfoKey_DisplaySizeInPixels, *(v18 + 8));
      CFDictionarySetValue(v38, kFigVirtualDisplaySinkDeviceInfoKey_Overscanned, *(v18 + 16));
      CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject();
      v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v45)
      {
        v12 = 4294954514;
        goto LABEL_52;
      }

      v46 = v45(CMBaseObject, kFigVirtualDisplaySinkProperty_DeviceInfo, v38);
      if (v46)
      {
        goto LABEL_50;
      }

      if (*(v18 + 56))
      {
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
      }

      else if (sub_20AC())
      {
        sub_ADAC();
        v46 = FigVirtualDisplayProcessorAccessoryCreate();
        if (v46 || (CFDictionarySetValue(v27, kFigVirtualDisplayOption_CustomProcessor, 0), v46 = FigVirtualDisplaySourceNullCreate(), v46))
        {
LABEL_50:
          v12 = v46;
          goto LABEL_52;
        }
      }

      else
      {
        FigVirtualDisplaySourceScreenGetCurrent();
      }

      v48 = FigVirtualDisplaySessionActivateWithSourceAndSink();
      *(v18 + 24) = v48;
      if (v48)
      {
        CFRetain(v48);
        if (*(v18 + 48))
        {
          g87kjbhgf();
        }

        v12 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v38 = 0;
    }

    v12 = 4294950536;
    goto LABEL_52;
  }

  v12 = v37;
  v38 = 0;
LABEL_52:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (!v12)
  {
    *a5 = 0;
  }

  return v12;
}

uint64_t sub_1332C(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294950534;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, kFigEndpointStreamProperty_Type))
  {
    v8 = &kFigEndpointStreamType_Screen;
LABEL_4:
    v9 = *v8;
LABEL_5:
    Mutable = CFRetain(v9);
LABEL_6:
    result = 0;
    *a4 = Mutable;
    return result;
  }

  v12 = kFigEndpointStreamProperty_DisplaySize;
  if (CFEqual(a2, kFigEndpointStreamProperty_DisplaySize))
  {
    v9 = *(v7 + 1);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_15:
    Mutable = 0;
    goto LABEL_6;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_DisplaySink))
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_IsOverscanned))
  {
    v9 = *(v7 + 2);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v13 = kFigEndpointStreamProperty_SupportsVideo;
  if (CFEqual(a2, kFigEndpointStreamProperty_SupportsVideo))
  {
    v14 = sub_EF8();
    v8 = &kCFBooleanFalse;
    if (!v14 && !v7[48])
    {
      v8 = &kCFBooleanTrue;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_NeroTransport))
  {
    v9 = *(v7 + 9);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_NeroScreenStreamInfo))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = sub_EF8();
    v16 = &kCFBooleanFalse;
    if (!v15 && !v7[48])
    {
      v16 = &kCFBooleanTrue;
    }

    CFDictionarySetValue(Mutable, v13, *v16);
    CFDictionarySetValue(Mutable, v12, *(v7 + 1));
    goto LABEL_6;
  }

  return 4294954512;
}

void sub_13518()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = sub_A6B0();
  if (os_log_type_enabled(v1, type))
  {
    v2 = v5;
  }

  else
  {
    v2 = v5 & 0xFFFFFFFE;
  }

  if (v2)
  {
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*(DerivedStorage + 24))
  {
    if (*(DerivedStorage + 48))
    {
      g87kjbhgf();
    }

    FigVirtualDisplaySessionDeactivate();
    v3 = *(DerivedStorage + 24);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 24) = 0;
    }
  }
}

void sub_1366C(_BYTE *a1, uint64_t a2, uint64_t a3, void ***a4)
{
  *a1 = 1;
  sub_13518();
  if (*(*a3 + 40))
  {
    CFRetain(*(a2 + 40));
    v7 = *(*a3 + 40);
    *a4 = _NSConcreteStackBlock;
    a4[1] = 0x40000000;
    a4[2] = sub_AD40;
    a4[3] = &unk_1DF18;
    a4[4] = *(a2 + 40);
    dispatch_async(v7, a4);
  }
}

uint64_t sub_13718(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294950534;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, kFigEndpointStreamProperty_Type))
  {
    Value = kFigEndpointStreamType_Audio;
LABEL_6:
    v11 = CFRetain(Value);
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_ID))
  {
    Value = *(v9 + 3);
    goto LABEL_6;
  }

  if (!CFEqual(a2, kFigEndpointStreamProperty_SupportedPCMFormats))
  {
    if (CFEqual(a2, @"edidAC3Support"))
    {
      Value = CFDictionaryGetValue(*(v9 + 2), @"EDIDAC3Support");
      goto LABEL_6;
    }

    if (CFEqual(a2, kFigEndpointStreamProperty_OutputLatency))
    {
      sub_B854(a1, a3, a4);
    }

    else
    {
      if (!CFEqual(a2, @"screenLatency"))
      {
        return 4294954512;
      }

      sub_B904(a1, a3, a4);
    }

    return 0;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a3, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 4294950535;
  }

  v15 = Mutable;
  v16 = CFDictionaryGetValue(*(v13 + 16), @"formats");
  CFDictionarySetValue(v15, @"default", v16);
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t sub_138C8(uint64_t a1, const void *a2, const void *a3)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294950534;
  }

  if (CFEqual(a2, kFigEndpointStreamProperty_AudioSource))
  {
    if (!a3 || (v6 = CFGetTypeID(a3), v6 == FigEndpointAudioSourceGetTypeID()))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 3))
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      v8 = DerivedStorage;
      v9 = *(DerivedStorage + 56);
      if (v9)
      {
        sub_6440(v9, 0, 0);
        CFRelease(*(v8 + 56));
      }

      *(v8 + 56) = a3;
      if (a3)
      {
        CFRetain(a3);
        sub_BDAC();
        v17 = 0x40000000;
        v18 = sub_B9B4;
        v19 = &unk_1E088;
        v20 = a1;
        sub_6440(v10, v11, v16);
      }

      return 0;
    }

    return 4294950536;
  }

  if (!CFEqual(a2, kFigEndpointStreamProperty_AudioSink))
  {
    return 4294954512;
  }

  if (a3)
  {
    v12 = CFGetTypeID(a3);
    if (v12 != FigEndpointAudioSinkGetTypeID())
    {
      return 4294950536;
    }
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (!*(v13 + 3))
  {
    v14 = *(v13 + 64);
    *(v13 + 64) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_13AE4(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    v4 = *(DerivedStorage + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_13E0C;
    block[3] = &unk_1E128;
    block[4] = a1;
    dispatch_sync(v4, block);
    sub_B79C();
    v5 = v3[7];
    if (v5)
    {
      CFRelease(v5);
      v3[7] = 0;
    }

    v3[6] = 0;
    v6 = v3[12];
    if (v6)
    {
      CFRelease(v6);
      v3[12] = 0;
    }

    if (v3[4])
    {
      CFRetain(a1);
      v7 = v3[4];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = sub_BCC8;
      v9[3] = &unk_1E148;
      v9[4] = a1;
      dispatch_async(v7, v9);
    }
  }

  return 0;
}

uint64_t sub_13C0C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theSourceBuffer = 0;
  destination = 0;
  if (*(DerivedStorage + 3))
  {
    v1 = DerivedStorage;
    v2 = NeroTransportSendSyncMessageCreatingReply();
    if (v2 || (v2 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = destination;
      if (!destination)
      {
        *(v1 + 3) = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (theSourceBuffer)
  {
    CFRelease(theSourceBuffer);
  }

  return v3;
}

void sub_13CAC(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  destination = 0;
  v16 = 0;
  v14 = 0;
  if (*DerivedStorage)
  {
    v5 = -16762;
  }

  else
  {
    v3 = DerivedStorage;
    if (DerivedStorage[3])
    {
      v5 = 0;
    }

    else
    {
      LODWORD(destination) = 1;
      BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
      if (BlockBufferCopyingMemoryBlock || (BlockBufferCopyingMemoryBlock = NeroTransportSendSyncMessageCreatingReply()) != 0 || (BlockBufferCopyingMemoryBlock = CMBlockBufferCopyDataBytes(v16, 0, 4uLL, &destination + 4)) != 0)
      {
        v5 = BlockBufferCopyingMemoryBlock;
      }

      else
      {
        v5 = HIDWORD(destination);
        if (!HIDWORD(destination))
        {
          v3[3] = 1;
        }
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (*(a1 + 40))
  {
    CFRetain(*(a1 + 32));
    sub_BDAC();
    v8 = 0x40000000;
    v9 = sub_BC84;
    v10 = &unk_1E0E8;
    v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v13 = v5;
    v12 = *(a1 + 56);
    dispatch_async(v6, block);
  }

  CFRelease(*(a1 + 32));
}

uint64_t sub_13E0C()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 2))
  {
    v1 = result;
    result = sub_13C0C();
    *(v1 + 2) = 0;
  }

  return result;
}

uint64_t sub_13E4C(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_13EBC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, CFTypeRef *a7)
{
  v72 = 0;
  v71 = 0;
  cf1 = 0;
  cf = 0;
  v67 = 0;
  theDict = 0;
  v66 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_58;
  }

  v14 = v13(CMBaseObject, kFigEndpointProperty_IsActivated, kCFAllocatorDefault, &cf);
  if (v14)
  {
LABEL_75:
    v64 = v14;
    goto LABEL_59;
  }

  if (cf != kCFBooleanTrue)
  {
    fig_log_get_emitter();
    sub_D6CC();
LABEL_74:
    v14 = FigSignalErrorAtGM();
    goto LABEL_75;
  }

  v15 = FigEndpointStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_58;
  }

  v14 = v16(v15, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &v66);
  if (v14)
  {
    goto LABEL_75;
  }

  if (!FigCFEqual())
  {
LABEL_73:
    fig_log_get_emitter();
    sub_D6CC();
    goto LABEL_74;
  }

  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
LABEL_58:
    v64 = 4294954514;
    goto LABEL_59;
  }

  v14 = v18(v17, @"subType", kCFAllocatorDefault, &cf1);
  if (v14)
  {
    goto LABEL_75;
  }

  FigHALAudioDeviceGetClassID();
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    goto LABEL_75;
  }

  v14 = FigHALAudioObjectMapperAddMapping();
  if (v14)
  {
    goto LABEL_75;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = a2;
  *DerivedStorage = v71;
  if (a4)
  {
    v20 = CFRetain(a4);
  }

  else
  {
    v20 = 0;
  }

  *(DerivedStorage + 48) = v20;
  if (a5)
  {
    v21 = CFRetain(a5);
  }

  else
  {
    v21 = 0;
  }

  *(DerivedStorage + 56) = v21;
  *(DerivedStorage + 40) = 1751412073;
  if (CFEqual(cf1, @"Valeria"))
  {
    v22 = 1986818665;
  }

  else
  {
    if (!CFEqual(cf1, @"Messalina"))
    {
      goto LABEL_22;
    }

    v22 = 1970496032;
  }

  *(DerivedStorage + 40) = v22;
LABEL_22:
  if (qword_20160 != -1)
  {
    dispatch_once(&qword_20160, &stru_1E310);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(DerivedStorage + 64) = Instance;
  }

  else
  {
    fig_log_get_emitter();
    sub_D6CC();
    v14 = FigSignalErrorAtGM();
    if (v14)
    {
      goto LABEL_75;
    }
  }

  v24 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 72) = v24;
  if (!v24)
  {
    v64 = 4294950406;
    goto LABEL_59;
  }

  v25 = FigEndpointStreamGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    goto LABEL_58;
  }

  v14 = v26(v25, kFigEndpointStreamProperty_ID, kCFAllocatorDefault, DerivedStorage + 24);
  if (v14)
  {
    goto LABEL_75;
  }

  if (!*(DerivedStorage + 24))
  {
    goto LABEL_73;
  }

  v27 = FigEndpointStreamGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    goto LABEL_58;
  }

  v29 = kFigEndpointStreamProperty_SupportedPCMFormats;
  v14 = v28(v27, kFigEndpointStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &theDict);
  if (v14)
  {
    goto LABEL_75;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"default");
    *(*(DerivedStorage + 64) + 80) = CFRetain(Value);
  }

  v31 = FigEndpointStreamGetCMBaseObject();
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v32)
  {
    goto LABEL_58;
  }

  v14 = v32(v31, v29, kCFAllocatorDefault, &v67);
  if (v14)
  {
    goto LABEL_75;
  }

  if (!v67)
  {
    goto LABEL_73;
  }

  v33 = CFDictionaryGetValue(v67, @"default");
  *(*(DerivedStorage + 64) + 72) = CFRetain(v33);
  v34 = CMBaseObjectGetDerivedStorage();
  v35 = *(v34 + 64);
  v36 = v35[11];
  if (v36)
  {
    CFRelease(v36);
    v35 = *(v34 + 64);
    v35[11] = 0;
  }

  v37 = v35[10];
  if (v37)
  {
    v35[11] = v37;
  }

  else
  {
    v37 = v35[9];
    v35[11] = v37;
    if (!v37)
    {
      goto LABEL_52;
    }
  }

  CFRetain(v37);
  v38 = CMBaseObjectGetDerivedStorage();
  v39 = *(*(v38 + 64) + 88);
  if (v39)
  {
    v40 = v38;
    MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v39);
    if (MutableCopy)
    {
      v42 = MutableCopy;
      Length = CFDataGetLength(MutableCopy);
      if (Length <= 0x37)
      {
        fig_log_get_emitter();
        sub_D6CC();
        FigSignalErrorAtGM();
      }

      else
      {
        v44 = Length / 0x38;
        v45 = CFDataGetBytePtr(v42) + 12;
        do
        {
          if (*(v45 - 1) == 1819304813)
          {
            *v45 &= ~0x40u;
          }

          v45 += 56;
          --v44;
        }

        while (v44);
        v46 = *(v40 + 64);
        v47 = *(v46 + 88);
        *(v46 + 88) = v42;
        CFRetain(v42);
        if (v47)
        {
          CFRelease(v47);
        }
      }

      CFRelease(v42);
    }
  }

  else
  {
    fig_log_get_emitter();
    sub_D6CC();
    FigSignalErrorAtGM();
  }

LABEL_52:
  v48 = sub_D6EC();
  v14 = sub_2CC8(v48, v49, v50, v51, v52, v53, v54);
  if (v14)
  {
    goto LABEL_75;
  }

  v55 = FigEndpointGetCMBaseObject();
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v56)
  {
    goto LABEL_58;
  }

  v14 = v56(v55, kFigEndpointProperty_Name, kCFAllocatorDefault, DerivedStorage + 32);
  if (v14)
  {
    goto LABEL_75;
  }

  v57 = sub_D6EC();
  v14 = sub_6880(v57, v58, v59, v60, v61, v62, v63);
  if (v14)
  {
    goto LABEL_75;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v64 = FigNotificationCenterAddWeakListener();
  if (!v64)
  {
    *a7 = v72;
    v72 = 0;
  }

LABEL_59:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  return v64;
}

uint64_t sub_147A8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  v13 = *a2;
  if (*a2 == 1634429294)
  {
    sub_D6BC();
    if (!v14)
    {
      return 0;
    }

    v15 = 0;
    v16 = *v12;
LABEL_114:
    *a7 = v16;
    return v15;
  }

  switch(v13)
  {
    case 1634759532:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v33 = sub_CAC8();
      goto LABEL_107;
    case 1969841184:
      goto LABEL_44;
    case 1668047219:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = 1633969526;
      goto LABEL_114;
    case 1668049764:
      goto LABEL_35;
    case 1668575852:
      v34 = a2[1];
      if (v34 == 1869968496 || v34 == 1768845428 || v34 == 1735159650)
      {
        v27 = 0;
      }

      else
      {
        v27 = a5 & 0xFFFFFFFC;
      }

      v15 = 0;
      goto LABEL_134;
    case 1668641652:
      *a6 = 24;
      if (a5 >= 0x18)
      {
        v15 = 0;
        *a7 = *"lspawwar";
        *(a7 + 16) = 1918990199;
        return v15;
      }

      return 561211770;
    case 1684236338:
      if (a5 >= 8)
      {
        v15 = 0;
        *a7 = 0x200000001;
        v27 = 8;
LABEL_134:
        *a6 = v27;
        return v15;
      }

      return 561211770;
    case 1684434036:
LABEL_38:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = 1;
      goto LABEL_114;
    case 1698775859:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v33 = sub_14DC4();
LABEL_107:
      v15 = 0;
      *a7 = v33;
      return v15;
    case 1718839674:
      goto LABEL_41;
    case 1735354734:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = *(v12 + 24) > 0;
      goto LABEL_114;
    case 1751737454:
LABEL_35:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      *a7 = 0;
      return v15;
    case 1818850926:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = *(v12 + 100) == 0;
      goto LABEL_114;
    case 1819107691:
      sub_D6DC();
      if (!v14)
      {
        return 561211770;
      }

      v17 = @"Apple, Inc.";
LABEL_88:
      v17 = CFRetain(v17);
LABEL_89:
      v15 = 0;
      *a7 = v17;
      return v15;
    case 1819173229:
      v25 = DerivedStorage[4];
      if (!v25 || (v26 = CFRetain(v25)) == 0)
      {
        v26 = CFRetain(@"No Name Endpoint");
      }

      sub_D6DC();
      if (v14)
      {
        v15 = 0;
        *a7 = CFRetain(v26);
      }

      else
      {
        v15 = 561211770;
      }

      CFRelease(v26);
      return v15;
    case 1819569763:
      goto LABEL_35;
    case 1836411236:
LABEL_44:
      sub_D6DC();
      if (!v14)
      {
        return 561211770;
      }

      v17 = v12[3];
      if (!v17)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    case 1853059619:
      goto LABEL_100;
    case 1853059700:
      sub_D6DC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      *a7 = *(v12[8] + 16);
      return v15;
    case 1869180523:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = -1;
      goto LABEL_114;
    case 1870098020:
LABEL_48:
      v18 = a2[1];
      if (v18 == 1869968496)
      {
        if (a5 < 4)
        {
LABEL_130:
          v19 = 0;
          goto LABEL_131;
        }

        v35 = DerivedStorage[11];
      }

      else
      {
        v19 = a5 >> 2;
        if (v18 != 1768845428)
        {
          if (v18 == 1735159650)
          {
            if (a5 >= 4)
            {
              v21 = DerivedStorage[10];
              v20 = DerivedStorage[11];
              if (v21)
              {
                v22 = 2;
              }

              else
              {
                v22 = 1;
              }

              if (v19 >= v22)
              {
                v23 = v22;
              }

              else
              {
                v23 = a5 >> 2;
              }

              *a7 = sub_C084(v20);
              v19 = 1;
              if (v23 >= 2)
              {
                v24 = v12[10];
                if (v24)
                {
                  *(a7 + 4) = sub_C084(v24);
                }

                v19 = 2;
              }

              goto LABEL_131;
            }

            goto LABEL_130;
          }

LABEL_131:
          v15 = 0;
          v27 = 4 * v19;
          goto LABEL_134;
        }

        v35 = DerivedStorage[10];
        if (v19 >= (v35 != 0))
        {
          v19 = v35 != 0;
        }

        if (!v19)
        {
          goto LABEL_131;
        }

        if (!v35)
        {
LABEL_129:
          v19 = 1;
          goto LABEL_131;
        }
      }

      *a7 = sub_C084(v35);
      goto LABEL_129;
    case 1919512167:
LABEL_41:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = (*(v12[8] + 16) * 0.25);
      goto LABEL_114;
    case 1935763060:
      goto LABEL_35;
    case 1936092276:
      goto LABEL_38;
    case 1936876644:
      v31 = *(DerivedStorage[8] + 56);
      if (v31)
      {
        if (CFDataGetLength(v31) <= a5)
        {
          Length = CFDataGetLength(*(v12[8] + 56));
          sub_D700(Length);
          v30 = *(v12[8] + 56);
          goto LABEL_99;
        }

        return 561211770;
      }

LABEL_100:
      v15 = 0;
      *a6 = 0;
      return v15;
    case 1936879204:
      v28 = *(DerivedStorage[8] + 64);
      if (v28)
      {
        if (CFDataGetLength(v28) <= a5)
        {
          v29 = CFDataGetLength(*(v12[8] + 64));
          sub_D700(v29);
          v30 = *(v12[8] + 64);
LABEL_99:
          v15 = 0;
          *a6 = CFDataGetLength(v30);
          return v15;
        }

        return 561211770;
      }

      goto LABEL_100;
    case 1937007734:
      goto LABEL_38;
    case 1937009955:
      goto LABEL_48;
    case 1953653102:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = *(v12 + 10);
      goto LABEL_114;
    case 1650682995:
      sub_D6BC();
      if (!v14)
      {
        return 561211770;
      }

      v15 = 0;
      v16 = 1634689642;
      goto LABEL_114;
  }

  return 2003332927;
}

uint64_t sub_14DC4()
{
  CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  number = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1 || v1(CMBaseObject, @"edidAC3Support", kCFAllocatorDefault, &number))
  {
    return 0;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

uint64_t sub_14E94(const void *a1, void *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 64);
  if (!*(v9 + 196))
  {
    return 1937010544;
  }

  v10 = DerivedStorage;
  v11 = *(v9 + 152);
  v12 = *(v9 + 160);
  UpTime = FigGetUpTime();
  v14 = *(v10 + 64);
  v15 = *(v14 + 172);
  if (v15)
  {
    v16 = *(v14 + 164);
  }

  else
  {
    v16 = FigNanosecondsToHostTime();
    v14 = *(v10 + 64);
    *(v14 + 164) = v16;
    *(v14 + 180) = UpTime;
    v15 = v16 + UpTime;
    *(v14 + 172) = v16 + UpTime;
    *(v14 + 188) = 0;
  }

  if (UpTime <= v15 + 2 * v16)
  {
    if (UpTime >= v15)
    {
      *(v14 + 180) = v15;
      if (v11 != v12)
      {
        v16 = (v11 * v16 / v12 + 0.5);
      }

      *(v14 + 172) = v16 + v15;
      *(v14 + 188) = *(v14 + 188) + (v11 / 4);
      CFRetain(a1);
      v18 = *(v10 + 72);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_D584;
      block[3] = &unk_1E2D0;
      block[4] = a1;
      dispatch_async(v18, block);
    }
  }

  else
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
  v20 = *(v10 + 64);
  *a2 = *(v20 + 188);
  *a3 = *(v20 + 180);
  *a4 = 0;
  return result;
}

uint64_t sub_1515C(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(DerivedStorage + 64) + 196))
  {
    return 1937010544;
  }

  if (a2 == 1919246692)
  {
    v9 = *(DerivedStorage + 80);
    if (v9)
    {
      v13 = 0;
      v11 = *"tcasbolg";
      v12 = 0;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v8(v9, &v11, 0, 0, 4, &v13, &v13 + 4);
        LOBYTE(v8) = HIDWORD(v13) != 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = a2 == 1919513701;
  }

  result = 0;
  *a3 = v8;
  *a4 = v8;
  return result;
}

BOOL sub_15290(_DWORD *a1)
{
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}