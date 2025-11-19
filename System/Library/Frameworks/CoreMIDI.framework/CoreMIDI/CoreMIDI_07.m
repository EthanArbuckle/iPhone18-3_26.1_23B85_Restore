OSStatus MIDIDestinationCreate(MIDIClientRef client, CFStringRef name, MIDIReadProc readProc, void *refCon, MIDIEndpointRef *outDest)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __MIDIDestinationCreate_block_invoke;
  v6[3] = &__block_descriptor_tmp_6;
  v6[4] = readProc;
  v6[5] = refCon;
  return MIDIDestinationCreateInternal(*&client, name, 1, outDest, v6, 0);
}

uint64_t MIDIDestinationCreateInternal(MIDIServer *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v47 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v12 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316930;
    v34 = "MIDIClientLib.cpp";
    v35 = 1024;
    v36 = 853;
    v37 = 2080;
    v38 = "MIDIDestinationCreateInternal";
    v39 = 1024;
    *v40 = a1;
    *&v40[4] = 2112;
    *&v40[6] = a2;
    v41 = 1024;
    v42 = a3;
    v43 = 2048;
    v44 = a5;
    v45 = 2048;
    v46 = a6;
    _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@, protocol %d, block %p %p", buf, 0x46u);
  }

  if (gInMIDIServer)
  {
    v14 = _MIDIDestinationCreate(a1);
    if (!a4)
    {
LABEL_25:
      gMIDIClientLog();
      v29 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v32, v14);
        *buf = 136315906;
        v34 = "MIDIClientLib.cpp";
        v35 = 1024;
        v36 = 870;
        v37 = 2080;
        v38 = "MIDIDestinationCreateInternal";
        v39 = 2080;
        *v40 = v32;
        v26 = "%25s:%-5d <-%s: (null ptr)%s";
        v27 = v29;
        v28 = 38;
        goto LABEL_27;
      }

      return v14;
    }

    goto LABEL_22;
  }

  if ((CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed & 0x80000000) == 0)
  {
    v15 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
    goto LABEL_14;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle || (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes")) == 0 || (v18 = ValueForInfoDictionaryKey, v19 = CFGetTypeID(ValueForInfoDictionaryKey), v19 != CFArrayGetTypeID()) || (v48.length = CFArrayGetCount(v18), v48.location = 0, !CFArrayContainsValue(v18, v48, @"audio")))
  {
    v15 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
LABEL_14:
    v14 = 4294956452;
    if (v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = -10844;
    }

    v31 = v20;
    if (!v15)
    {
      return v14;
    }

    goto LABEL_18;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
  v31 = 0;
LABEL_18:
  if (!a4)
  {
    v14 = 4294967246;
    goto LABEL_25;
  }

  v21 = MIDIProcess::CheckInitialization(&v31, v13);
  v14 = v31;
  if (!v31)
  {
    v22 = v21;
    v23 = ClientInterface::global(v21);
    v14 = ((*v23)[43])(v23, a1, a2, a3, a4);
    ObjectTreeCache::Invalidate((v22 + 36));
    if (!v14)
    {
      LocalMIDIReceiverList::Add((v22 + 21));
    }
  }

LABEL_22:
  gMIDIClientLog();
  v24 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v25 = *a4;
    ErrorFormatter::ErrorFormatter(v32, v14);
    *buf = 136316162;
    v34 = "MIDIClientLib.cpp";
    v35 = 1024;
    v36 = 870;
    v37 = 2080;
    v38 = "MIDIDestinationCreateInternal";
    v39 = 1024;
    *v40 = v25;
    *&v40[4] = 2080;
    *&v40[6] = v32;
    v26 = "%25s:%-5d <-%s: 0x%x%s";
    v27 = v24;
    v28 = 44;
LABEL_27:
    _os_log_impl(&dword_2371C2000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
  }

  return v14;
}

OSStatus MIDISourceCreateWithProtocol(MIDIClientRef client, CFStringRef name, MIDIProtocolID protocol, MIDIEndpointRef *outSrc)
{
  v5 = *&protocol;
  v7 = *&client;
  *&v36[13] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v30 = "MIDIClientLib.cpp";
    v31 = 1024;
    v32 = 904;
    v33 = 2080;
    v34 = "MIDISourceCreateWithProtocol";
    v35 = 1024;
    *v36 = v7;
    v36[2] = 2112;
    *&v36[3] = name;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@", buf, 0x2Cu);
  }

  if (gInMIDIServer)
  {
    v10 = _MIDISourceCreate(v7);
    if (!outSrc)
    {
LABEL_24:
      gMIDIClientLog();
      v25 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v28, v10);
        *buf = 136315906;
        v30 = "MIDIClientLib.cpp";
        v31 = 1024;
        v32 = 916;
        v33 = 2080;
        v34 = "MIDISourceCreateWithProtocol";
        v35 = 2080;
        *v36 = v28;
        v22 = "%25s:%-5d <-%s: (null ptr)%s";
        v23 = v25;
        v24 = 38;
        goto LABEL_26;
      }

      return v10;
    }

    goto LABEL_21;
  }

  if ((CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed & 0x80000000) == 0)
  {
    v11 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
    goto LABEL_14;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle || (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes")) == 0 || (v14 = ValueForInfoDictionaryKey, v15 = CFGetTypeID(ValueForInfoDictionaryKey), v15 != CFArrayGetTypeID()) || (v37.length = CFArrayGetCount(v14), v37.location = 0, !CFArrayContainsValue(v14, v37, @"audio")))
  {
    v11 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
LABEL_14:
    v10 = -10844;
    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = -10844;
    }

    v27 = v16;
    if (!v11)
    {
      return v10;
    }

    goto LABEL_18;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
  v27 = 0;
LABEL_18:
  if (!outSrc)
  {
    v10 = -50;
    goto LABEL_24;
  }

  v17 = MIDIProcess::CheckInitialization(&v27, v9);
  v10 = v27;
  if (!v27)
  {
    v18 = v17;
    v19 = ClientInterface::global(v17);
    v10 = ((*v19)[8])(v19, v7, name, v5, outSrc);
    ObjectTreeCache::Invalidate((v18 + 36));
  }

LABEL_21:
  gMIDIClientLog();
  v20 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v21 = *outSrc;
    ErrorFormatter::ErrorFormatter(v28, v10);
    *buf = 136316162;
    v30 = "MIDIClientLib.cpp";
    v31 = 1024;
    v32 = 916;
    v33 = 2080;
    v34 = "MIDISourceCreateWithProtocol";
    v35 = 1024;
    *v36 = v21;
    v36[2] = 2080;
    *&v36[3] = v28;
    v22 = "%25s:%-5d <-%s: 0x%x%s";
    v23 = v20;
    v24 = 44;
LABEL_26:
    _os_log_impl(&dword_2371C2000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
  }

  return v10;
}

OSStatus MIDIEndpointDispose(MIDIEndpointRef endpt)
{
  v1 = *&endpt;
  v21 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v14 = "MIDIClientLib.cpp";
    v15 = 1024;
    v16 = 923;
    v17 = 2080;
    v18 = "MIDIEndpointDispose";
    v19 = 1024;
    LODWORD(v20) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDIEndpointDispose(v1);
  }

  else
  {
    v11 = 0;
    v5 = MIDIProcess::CheckInitialization(&v11, v3);
    v4 = v11;
    if (!v11)
    {
      v6 = v5;
      v7 = LocalMIDIReceiverList::Remove((v5 + 21), v1);
      v8 = ClientInterface::global(v7);
      v4 = ((*v8)[9])(v8, v1);
      ObjectTreeCache::Invalidate((v6 + 36));
    }
  }

  gMIDIClientLog();
  v9 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v12, v4);
    *buf = 136315906;
    v14 = "MIDIClientLib.cpp";
    v15 = 1024;
    v16 = 932;
    v17 = 2080;
    v18 = "MIDIEndpointDispose";
    v19 = 2080;
    v20 = v12;
    _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

OSStatus MIDISend(MIDIPortRef port, MIDIEndpointRef dest, const MIDIPacketList *pktlist)
{
  v16[127] = *MEMORY[0x277D85DE8];
  v10 = dest;
  v11 = port;
  v9 = 0;
  if (!pktlist)
  {
    return -50;
  }

  if (gInMIDIServer)
  {
    v8[0] = &v9;
    v8[1] = &v11;
    v8[2] = &v10;
    v13 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<std::reference_wrapper<MIDISend::$_0>>;
    v14 = v8;
    v15[0] = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<std::reference_wrapper<MIDISend::$_0>>;
    v15[1] = v8;
    v15[8] = 1;
    v15[7] = v16;
    v12 = v15;
    MIDI::LegacyPacketList::traverse<MIDI::MIDIPacketList_to_MIDIEventList(MIDIPacketList const*,caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>)::{lambda(MIDIPacket const*)#1}>(&pktlist->numPackets, &v12);
    MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(v15);
    (v13[3])(&v14);
    return v9;
  }

  else
  {
    v7 = MIDIProcess::CheckInitialization(&v9, *&dest);
    result = v9;
    if (!v9)
    {
      v15[0] = __PAIR64__(dest, port);
      MIDIProcess::WriteOutput<MIDI::LegacyPacketList>(v7, v15, &pktlist->numPackets);
      return 0;
    }
  }

  return result;
}

void sub_237246C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD ***caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<std::reference_wrapper<MIDISend::$_0>>(caulk::inplace_function_detail::wrapper<std::reference_wrapper<MIDISend::$_0>>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(_DWORD ***result, const MIDI::EventList **a2)
{
  v2 = *result;
  if (!***result)
  {
    result = _MIDISend(*v2[1], *v2[2], *a2);
    **v2 = result;
  }

  return result;
}

OSStatus MIDISendEventList(MIDIPortRef port, MIDIEndpointRef dest, const MIDIEventList *evtlist)
{
  if (!evtlist)
  {
    return -50;
  }

  if ((gInMIDIServer & 1) == 0)
  {
    v10 = 0;
    v8 = MIDIProcess::CheckInitialization(&v10, *&dest);
    v7 = v10;
    if (!v10)
    {
      v9 = __PAIR64__(dest, port);
      MIDIProcess::WriteOutput<MIDI::EventList>(v8, &v9, evtlist->protocol, evtlist);
      return 0;
    }

    return v7;
  }

  return _MIDISend(*&port, dest, evtlist);
}

OSStatus MIDIReceived(MIDIEndpointRef src, const MIDIPacketList *pktlist)
{
  v15[127] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = src;
  if (!pktlist)
  {
    return -50;
  }

  if (gInMIDIServer)
  {
    v9 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIReceived::$_0>;
    *&v10 = &v6;
    *(&v10 + 1) = &v7;
    v11 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIReceived::$_0>;
    v12 = v10;
    v14 = 1;
    v13 = v15;
    v8 = &v11;
    MIDI::LegacyPacketList::traverse<MIDI::MIDIPacketList_to_MIDIEventList(MIDIPacketList const*,caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>)::{lambda(MIDIPacket const*)#1}>(&pktlist->numPackets, &v8);
    MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v11);
    (v9[3])(&v10);
    return v6;
  }

  else
  {
    v5 = MIDIProcess::CheckInitialization(&v6, pktlist);
    result = v6;
    if (!v6)
    {
      LODWORD(v11) = 0;
      HIDWORD(v11) = src;
      MIDIProcess::WriteOutput<MIDI::LegacyPacketList>(v5, &v11, &pktlist->numPackets);
      return 0;
    }
  }

  return result;
}

void sub_237246EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIReceived::$_0>(caulk::inplace_function_detail::wrapper<MIDIReceived::$_0>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIReceived::$_0>(caulk::inplace_function_detail::wrapper<MIDIReceived::$_0>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD **caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIReceived::$_0>(caulk::inplace_function_detail::wrapper<MIDIReceived::$_0>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(_DWORD **result, MIDIEventPacket **a2)
{
  if (!**result)
  {
    v2 = result;
    result = _MIDIReceived(*result[1], *a2);
    **v2 = result;
  }

  return result;
}

OSStatus MIDIReceivedEventList(MIDIEndpointRef src, const MIDIEventList *evtlist)
{
  if (!evtlist)
  {
    return -50;
  }

  if ((gInMIDIServer & 1) == 0)
  {
    v8 = 0;
    v6 = MIDIProcess::CheckInitialization(&v8, evtlist);
    v5 = v8;
    if (!v8)
    {
      LODWORD(v7) = 0;
      HIDWORD(v7) = src;
      MIDIProcess::WriteOutput<MIDI::EventList>(v6, &v7, evtlist->protocol, evtlist);
      return 0;
    }

    return v5;
  }

  return _MIDIReceived(*&src, evtlist);
}

uint64_t MIDISetupInstall_Priv(MIDIServer *a1, int *a2)
{
  if (gInMIDIServer)
  {

    return _MIDISetupInstall(a1);
  }

  else
  {
    LODWORD(v7) = 0;
    v4 = MIDIProcess::CheckInitialization(&v7, a2);
    result = v7;
    if (!v7)
    {
      v5 = ClientInterface::global(0);
      v6 = ((*v5)[40])(v5, a1);
      ObjectTreeCache::Invalidate((v4 + 36));
      return v6;
    }
  }

  return result;
}

uint64_t MIDISetupGetCurrent_Priv(uint64_t a1, int *a2)
{
  while ((gInMIDIServer & 1) != 0)
  {
  }

  if (!a1)
  {
    return 4294967246;
  }

  LODWORD(v4) = 0;
  MIDIProcess::CheckInitialization(&v4, a2);
  result = v4;
  if (!v4)
  {
    v3 = (*ClientInterface::global(0))[39];

    return v3();
  }

  return result;
}

OSStatus MIDIExternalDeviceCreate(CFStringRef name, CFStringRef manufacturer, CFStringRef model, MIDIDeviceRef *outDevice)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((gInMIDIServer & 1) == 0)
  {
    v21 = 0;
    gMIDIClientLog();
    v9 = gMIDIClientLog(void)::clilib;
    if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v24 = "MIDIClientLib.cpp";
      v25 = 1024;
      v26 = 1129;
      v27 = 2080;
      v28 = "MIDIExternalDeviceCreate";
      v29 = 2112;
      *v30 = name;
      *&v30[8] = 2112;
      *&v30[10] = manufacturer;
      v31 = 2112;
      v32 = model;
      _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %@, manuf %@, model %@", buf, 0x3Au);
    }

    if (outDevice)
    {
      v11 = MIDIProcess::CheckInitialization(&v21, v10);
      v12 = v21;
      if (!v21)
      {
        v13 = v11;
        v14 = ClientInterface::global(v11);
        v12 = ((*v14)[25])(v14, name, manufacturer, model, outDevice);
        ObjectTreeCache::Invalidate((v13 + 36));
      }

      gMIDIClientLog();
      v15 = gMIDIClientLog(void)::clilib;
      if (!os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        return v12;
      }

      v16 = *outDevice;
      ErrorFormatter::ErrorFormatter(__str, v12);
      *buf = 136316162;
      v24 = "MIDIClientLib.cpp";
      v25 = 1024;
      v26 = 1139;
      v27 = 2080;
      v28 = "MIDIExternalDeviceCreate";
      v29 = 1024;
      *v30 = v16;
      *&v30[4] = 2080;
      *&v30[6] = __str;
      v17 = "%25s:%-5d <-%s: 0x%x%s";
      v18 = v15;
      v19 = 44;
    }

    else
    {
      gMIDIClientLog();
      v20 = gMIDIClientLog(void)::clilib;
      if (!os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        return -50;
      }

      v12 = -50;
      CAX4CCString::CAX4CCString(buf, 0xFFFFFFCE);
      snprintf(__str, 0x20uLL, " *** error %s", buf);
      *buf = 136315906;
      v24 = "MIDIClientLib.cpp";
      v25 = 1024;
      v26 = 1139;
      v27 = 2080;
      v28 = "MIDIExternalDeviceCreate";
      v29 = 2080;
      *v30 = __str;
      v17 = "%25s:%-5d <-%s: (null ptr)%s";
      v18 = v20;
      v19 = 38;
    }

    _os_log_impl(&dword_2371C2000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
    return v12;
  }

  return MIDIDeviceCreate(0, name, manufacturer, model, outDevice);
}

OSStatus MIDIDeviceNewEntity(MIDIDeviceRef device, CFStringRef name, MIDIProtocolID protocol, Boolean embedded, ItemCount numSourceEndpoints, ItemCount numDestinationEndpoints, MIDIEntityRef *newEntity)
{
  v10 = embedded;
  v11 = *&protocol;
  v13 = *&device;
  v43 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v14 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316930;
    v30 = "MIDIClientLib.cpp";
    v31 = 1024;
    v32 = 1148;
    v33 = 2080;
    v34 = "MIDIDeviceNewEntity";
    v35 = 1024;
    *v36 = v13;
    *&v36[4] = 2112;
    *&v36[6] = name;
    v37 = 1024;
    v38 = v10;
    v39 = 1024;
    v40 = numSourceEndpoints;
    v41 = 1024;
    v42 = numDestinationEndpoints;
    _os_log_impl(&dword_2371C2000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@ embedded %d, %d sources, %d dests", buf, 0x3Eu);
  }

  if (gInMIDIServer)
  {
    v16 = _MIDIDeviceAddEntity(v13, name, v11, v10, numSourceEndpoints, numDestinationEndpoints, newEntity);
    if (!newEntity)
    {
LABEL_12:
      gMIDIClientLog();
      v25 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v28, v16);
        *buf = 136315906;
        v30 = "MIDIClientLib.cpp";
        v31 = 1024;
        v32 = 1157;
        v33 = 2080;
        v34 = "MIDIDeviceNewEntity";
        v35 = 2080;
        *v36 = v28;
        v22 = "%25s:%-5d <-%s: (null ptr)%s";
        v23 = v25;
        v24 = 38;
        goto LABEL_14;
      }

      return v16;
    }
  }

  else
  {
    if (!newEntity)
    {
      v16 = -50;
      goto LABEL_12;
    }

    v27 = 0;
    v17 = MIDIProcess::CheckInitialization(&v27, v15);
    v16 = v27;
    if (!v27)
    {
      v18 = v17;
      v19 = ClientInterface::global(v17);
      v16 = ((*v19)[26])(v19, v13, name, v11, v10, numSourceEndpoints, numDestinationEndpoints, newEntity);
      ObjectTreeCache::Invalidate((v18 + 36));
    }
  }

  gMIDIClientLog();
  v20 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v21 = *newEntity;
    ErrorFormatter::ErrorFormatter(v28, v16);
    *buf = 136316162;
    v30 = "MIDIClientLib.cpp";
    v31 = 1024;
    v32 = 1157;
    v33 = 2080;
    v34 = "MIDIDeviceNewEntity";
    v35 = 1024;
    *v36 = v21;
    *&v36[4] = 2080;
    *&v36[6] = v28;
    v22 = "%25s:%-5d <-%s: 0x%x%s";
    v23 = v20;
    v24 = 44;
LABEL_14:
    _os_log_impl(&dword_2371C2000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
  }

  return v16;
}

OSStatus MIDIDeviceRemoveEntity(MIDIDeviceRef device, MIDIEntityRef entity)
{
  v2 = *&entity;
  v3 = *&device;
  *&v21[5] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v15 = "MIDIClientLib.cpp";
    v16 = 1024;
    v17 = 1169;
    v18 = 2080;
    v19 = "MIDIDeviceRemoveEntity";
    v20 = 1024;
    *v21 = v3;
    v21[2] = 1024;
    *&v21[3] = v2;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x 0x%x", buf, 0x28u);
  }

  if (gInMIDIServer)
  {
    v6 = _MIDIDeviceRemoveEntity(v3, v2);
  }

  else
  {
    v12 = 0;
    v7 = MIDIProcess::CheckInitialization(&v12, v5);
    v6 = v12;
    if (!v12)
    {
      v8 = v7;
      v9 = ClientInterface::global(v7);
      v6 = ((*v9)[27])(v9, v3, v2);
      ObjectTreeCache::Invalidate((v8 + 36));
    }
  }

  gMIDIClientLog();
  v10 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v13, v6);
    *buf = 136315906;
    v15 = "MIDIClientLib.cpp";
    v16 = 1024;
    v17 = 1177;
    v18 = 2080;
    v19 = "MIDIDeviceRemoveEntity";
    v20 = 2080;
    *v21 = v13;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v6;
}

OSStatus MIDIEntityAddOrRemoveEndpoints(MIDIEntityRef entity, ItemCount numSourceEndpoints, ItemCount numDestinationEndpoints)
{
  v5 = *&entity;
  v26 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v17 = "MIDIClientLib.cpp";
    v18 = 1024;
    v19 = 1184;
    v20 = 2080;
    v21 = "MIDIEntityAddOrRemoveEndpoints";
    v22 = 1024;
    *v23 = v5;
    *&v23[4] = 1024;
    *&v23[6] = numSourceEndpoints;
    v24 = 1024;
    v25 = numDestinationEndpoints;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %d sources, %d dests", buf, 0x2Eu);
  }

  if (gInMIDIServer)
  {
    v8 = _MIDIEntityAddOrRemoveEndpoints(v5, numSourceEndpoints, numDestinationEndpoints);
  }

  else
  {
    v14 = 0;
    v9 = MIDIProcess::CheckInitialization(&v14, v7);
    v8 = v14;
    if (!v14)
    {
      v10 = v9;
      v11 = ClientInterface::global(v9);
      v8 = ((*v11)[28])(v11, v5, numSourceEndpoints, numDestinationEndpoints);
      ObjectTreeCache::Invalidate((v10 + 36));
    }
  }

  gMIDIClientLog();
  v12 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v15, v8);
    *buf = 136315906;
    v17 = "MIDIClientLib.cpp";
    v18 = 1024;
    v19 = 1192;
    v20 = 2080;
    v21 = "MIDIEntityAddOrRemoveEndpoints";
    v22 = 2080;
    *v23 = v15;
    _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v8;
}

OSStatus MIDISetupAddExternalDevice(MIDIDeviceRef device)
{
  v1 = *&device;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1199;
    v16 = 2080;
    v17 = "MIDISetupAddExternalDevice";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDISetupAddExternalDevice(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v4 = v10;
    if (!v10)
    {
      v6 = v5;
      v7 = ClientInterface::global(v5);
      v4 = ((*v7)[29])(v7, v1);
      ObjectTreeCache::Invalidate((v6 + 36));
    }
  }

  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v4);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1207;
    v16 = 2080;
    v17 = "MIDISetupAddExternalDevice";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

OSStatus MIDISetupRemoveExternalDevice(MIDIDeviceRef device)
{
  v1 = *&device;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1214;
    v16 = 2080;
    v17 = "MIDISetupRemoveExternalDevice";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDISetupRemoveExternalDevice(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v4 = v10;
    if (!v10)
    {
      v6 = v5;
      v7 = ClientInterface::global(v5);
      v4 = ((*v7)[30])(v7, v1);
      ObjectTreeCache::Invalidate((v6 + 36));
    }
  }

  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v4);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1222;
    v16 = 2080;
    v17 = "MIDISetupRemoveExternalDevice";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

OSStatus MIDIRestart(void)
{
  v19 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v0 = gMIDIClientLog(void)::clilib;
  v1 = os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG);
  if (v1)
  {
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 1229;
    v15 = 2080;
    v16 = "MIDIRestart";
    v17 = 2080;
    v18 = "";
    _os_log_impl(&dword_2371C2000, v0, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %s", buf, 0x26u);
  }

  if (gInMIDIServer)
  {
    v3 = _MIDIRestart(v1);
  }

  else
  {
    v9 = 0;
    v4 = MIDIProcess::CheckInitialization(&v9, v2);
    v5 = v9;
    if (v9)
    {
      goto LABEL_8;
    }

    v6 = ClientInterface::global(v4);
    v3 = ((*v6)[22])(v6);
  }

  v5 = v3;
LABEL_8:
  gMIDIClientLog();
  v7 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v10, v5);
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 1236;
    v15 = 2080;
    v16 = "MIDIRestart";
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v5;
}

OSStatus MIDIObjectGetProperties(MIDIObjectRef obj, CFPropertyListRef *outProperties, Boolean deep)
{
  v3 = deep;
  v5 = *&obj;
  v30 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v22 = "MIDIClientLib.cpp";
    v24 = 1243;
    v25 = 2080;
    v23 = 1024;
    v26 = "MIDIObjectGetProperties";
    v27 = 1024;
    *v28 = v5;
    *&v28[4] = 1024;
    *&v28[6] = v3;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x deep %d", buf, 0x28u);
  }

  if (outProperties)
  {
    *outProperties = 0;
    if (gInMIDIServer)
    {
      Properties = _MIDIObjectGetProperties(v5, outProperties, v3);
    }

    else
    {
      v19 = 0;
      v10 = MIDIProcess::CheckInitialization(&v19, v7);
      v9 = v19;
      if (v19)
      {
        goto LABEL_11;
      }

      v11 = ClientInterface::global(v10);
      Properties = ((*v11)[18])(v11, v5, outProperties, v3);
    }

    v9 = Properties;
LABEL_11:
    gMIDIClientLog();
    v12 = gMIDIClientLog(void)::clilib;
    if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
    {
      if (*outProperties)
      {
        v13 = *outProperties;
      }

      else
      {
        v13 = @"(null)";
      }

      ErrorFormatter::ErrorFormatter(v20, v9);
      *buf = 136316162;
      v22 = "MIDIClientLib.cpp";
      v23 = 1024;
      v24 = 1252;
      v25 = 2080;
      v26 = "MIDIObjectGetProperties";
      v27 = 2112;
      *v28 = v13;
      *&v28[8] = 2080;
      v29 = v20;
      v14 = "%25s:%-5d <-%s: %@%s";
      v15 = v12;
      v16 = 48;
      goto LABEL_19;
    }

    return v9;
  }

  if (gInMIDIServer == 1)
  {
    v9 = _MIDIObjectGetProperties(v5, 0, v3);
  }

  else
  {
    v9 = -50;
  }

  gMIDIClientLog();
  v17 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v20, v9);
    *buf = 136315906;
    v22 = "MIDIClientLib.cpp";
    v23 = 1024;
    v24 = 1252;
    v25 = 2080;
    v26 = "MIDIObjectGetProperties";
    v27 = 2080;
    *v28 = v20;
    v14 = "%25s:%-5d <-%s: (null ptr)%s";
    v15 = v17;
    v16 = 38;
LABEL_19:
    _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
  }

  return v9;
}

OSStatus MIDISetupAddDevice(MIDIDeviceRef device)
{
  v1 = *&device;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1259;
    v16 = 2080;
    v17 = "MIDISetupAddDevice";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDISetupAddDevice(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v4 = v10;
    if (!v10)
    {
      v6 = v5;
      v7 = ClientInterface::global(v5);
      v4 = ((*v7)[31])(v7, v1);
      ObjectTreeCache::Invalidate((v6 + 36));
    }
  }

  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v4);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1267;
    v16 = 2080;
    v17 = "MIDISetupAddDevice";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

OSStatus MIDISetupRemoveDevice(MIDIDeviceRef device)
{
  v1 = *&device;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1274;
    v16 = 2080;
    v17 = "MIDISetupRemoveDevice";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDISetupRemoveDevice(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v4 = v10;
    if (!v10)
    {
      v6 = v5;
      v7 = ClientInterface::global(v5);
      v4 = ((*v7)[32])(v7, v1);
      ObjectTreeCache::Invalidate((v6 + 36));
    }
  }

  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v4);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1282;
    v16 = 2080;
    v17 = "MIDISetupRemoveDevice";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

OSStatus MIDIFlushOutput(MIDIEndpointRef dest)
{
  v1 = *&dest;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1306;
    v16 = 2080;
    v17 = "MIDIFlushOutput";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDIFlushOutput(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v6 = v10;
    if (v10)
    {
      goto LABEL_8;
    }

    v7 = ClientInterface::global(v5);
    v4 = ((*v7)[21])(v7, v1);
  }

  v6 = v4;
LABEL_8:
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v6);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1313;
    v16 = 2080;
    v17 = "MIDIFlushOutput";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v6;
}

OSStatus MIDIThruConnectionCreate(CFStringRef inPersistentOwnerID, CFDataRef inConnectionParams, MIDIThruConnectionRef *outConnection)
{
  v30 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"(null)";
    *buf = 136316162;
    v23 = "MIDIClientLib.cpp";
    v24 = 1024;
    if (inPersistentOwnerID)
    {
      v9 = inPersistentOwnerID;
    }

    else
    {
      v9 = @"(null)";
    }

    v25 = 1320;
    v26 = 2080;
    v27 = "MIDIThruConnectionCreate";
    if (inConnectionParams)
    {
      v8 = inConnectionParams;
    }

    v28 = 2112;
    *v29 = v9;
    *&v29[8] = 2112;
    *&v29[10] = v8;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s owner %@, %@", buf, 0x30u);
  }

  if (gInMIDIServer)
  {
    v10 = _MIDIThruConnectionCreate(0, inPersistentOwnerID, inConnectionParams, outConnection);
    if (!outConnection)
    {
LABEL_17:
      gMIDIClientLog();
      v18 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v21, v10);
        *buf = 136315906;
        v23 = "MIDIClientLib.cpp";
        v24 = 1024;
        v25 = 1330;
        v26 = 2080;
        v27 = "MIDIThruConnectionCreate";
        v28 = 2080;
        *v29 = v21;
        v15 = "%25s:%-5d <-%s: (null ptr)%s";
        v16 = v18;
        v17 = 38;
        goto LABEL_19;
      }

      return v10;
    }
  }

  else
  {
    if (!outConnection)
    {
      v10 = -50;
      goto LABEL_17;
    }

    v20 = 0;
    v11 = MIDIProcess::CheckInitialization(&v20, v7);
    v10 = v20;
    if (!v20)
    {
      v12 = ClientInterface::global(v11);
      v10 = ((*v12)[33])(v12, inPersistentOwnerID, inConnectionParams, outConnection);
    }
  }

  gMIDIClientLog();
  v13 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v14 = *outConnection;
    ErrorFormatter::ErrorFormatter(v21, v10);
    *buf = 136316162;
    v23 = "MIDIClientLib.cpp";
    v24 = 1024;
    v25 = 1330;
    v26 = 2080;
    v27 = "MIDIThruConnectionCreate";
    v28 = 1024;
    *v29 = v14;
    *&v29[4] = 2080;
    *&v29[6] = v21;
    v15 = "%25s:%-5d <-%s: 0x%x%s";
    v16 = v13;
    v17 = 44;
LABEL_19:
    _os_log_impl(&dword_2371C2000, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
  }

  return v10;
}

OSStatus MIDIThruConnectionDispose(MIDIThruConnectionRef connection)
{
  v1 = *&connection;
  v20 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1337;
    v16 = 2080;
    v17 = "MIDIThruConnectionDispose";
    v18 = 1024;
    LODWORD(v19) = v1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _MIDIThruConnectionDispose(v1);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, v3);
    v6 = v10;
    if (v10)
    {
      goto LABEL_8;
    }

    v7 = ClientInterface::global(v5);
    v4 = ((*v7)[34])(v7, v1);
  }

  v6 = v4;
LABEL_8:
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v6);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1344;
    v16 = 2080;
    v17 = "MIDIThruConnectionDispose";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v6;
}

OSStatus MIDIThruConnectionGetParams(MIDIThruConnectionRef connection, CFDataRef *outConnectionParams)
{
  v3 = *&connection;
  v28 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 1351;
    v22 = 2080;
    v23 = "MIDIThruConnectionGetParams";
    v24 = 1024;
    LODWORD(v25) = v3;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    Params = _MIDIThruConnectionGetParams(v3, outConnectionParams);
    if (!outConnectionParams)
    {
LABEL_15:
      gMIDIClientLog();
      v14 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v17, Params);
        *buf = 136315906;
        v19 = "MIDIClientLib.cpp";
        v20 = 1024;
        v21 = 1359;
        v22 = 2080;
        v23 = "MIDIThruConnectionGetParams";
        v24 = 2080;
        v25 = v17;
        v11 = "%25s:%-5d <-%s: (null ptr)%s";
        v12 = v14;
        v13 = 38;
LABEL_17:
        _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, v11, buf, v13);
        return Params;
      }

      return Params;
    }
  }

  else
  {
    if (!outConnectionParams)
    {
      Params = -50;
      goto LABEL_15;
    }

    v16 = 0;
    v7 = MIDIProcess::CheckInitialization(&v16, v5);
    Params = v16;
    if (!v16)
    {
      v8 = ClientInterface::global(v7);
      Params = ((*v8)[35])(v8, v3, outConnectionParams);
    }
  }

  gMIDIClientLog();
  v9 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (*outConnectionParams)
    {
      v10 = *outConnectionParams;
    }

    else
    {
      v10 = @"(null)";
    }

    ErrorFormatter::ErrorFormatter(v17, Params);
    *buf = 136316162;
    v19 = "MIDIClientLib.cpp";
    v20 = 1024;
    v21 = 1359;
    v22 = 2080;
    v23 = "MIDIThruConnectionGetParams";
    v24 = 2112;
    v25 = v10;
    v26 = 2080;
    v27 = v17;
    v11 = "%25s:%-5d <-%s: %@%s";
    v12 = v9;
    v13 = 48;
    goto LABEL_17;
  }

  return Params;
}

OSStatus MIDIThruConnectionSetParams(MIDIThruConnectionRef connection, CFDataRef inConnectionParams)
{
  v3 = *&connection;
  *&v22[13] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"(null)";
    *buf = 136316162;
    if (inConnectionParams)
    {
      v6 = inConnectionParams;
    }

    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 1366;
    v19 = 2080;
    v20 = "MIDIThruConnectionSetParams";
    v21 = 1024;
    *v22 = v3;
    v22[2] = 2112;
    *&v22[3] = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %@", buf, 0x2Cu);
  }

  if (gInMIDIServer)
  {
    v7 = _MIDIThruConnectionSetParams(v3, inConnectionParams);
  }

  else
  {
    v13 = 0;
    v8 = MIDIProcess::CheckInitialization(&v13, v5);
    v9 = v13;
    if (v13)
    {
      goto LABEL_10;
    }

    v10 = ClientInterface::global(v8);
    v7 = ((*v10)[36])(v10, v3, inConnectionParams);
  }

  v9 = v7;
LABEL_10:
  gMIDIClientLog();
  v11 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v14, v9);
    *buf = 136315906;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 1373;
    v19 = 2080;
    v20 = "MIDIThruConnectionSetParams";
    v21 = 2080;
    *v22 = v14;
    _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v9;
}

OSStatus MIDIThruConnectionFind(CFStringRef inPersistentOwnerID, CFDataRef *outConnectionList)
{
  v29 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"(null)";
    *buf = 136315906;
    v20 = "MIDIClientLib.cpp";
    if (inPersistentOwnerID)
    {
      v6 = inPersistentOwnerID;
    }

    v21 = 1024;
    v22 = 1380;
    v23 = 2080;
    v24 = "MIDIThruConnectionFind";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s %@", buf, 0x26u);
  }

  if (gInMIDIServer)
  {
    v7 = _MIDIThruConnectionFind(inPersistentOwnerID, outConnectionList);
    if (!outConnectionList)
    {
LABEL_17:
      gMIDIClientLog();
      v15 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v18, v7);
        *buf = 136315906;
        v20 = "MIDIClientLib.cpp";
        v21 = 1024;
        v22 = 1388;
        v23 = 2080;
        v24 = "MIDIThruConnectionFind";
        v25 = 2080;
        v26 = v18;
        v12 = "%25s:%-5d <-%s: (null ptr)%s";
        v13 = v15;
        v14 = 38;
LABEL_19:
        _os_log_impl(&dword_2371C2000, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
        return v7;
      }

      return v7;
    }
  }

  else
  {
    if (!outConnectionList)
    {
      v7 = -50;
      goto LABEL_17;
    }

    v17 = 0;
    v8 = MIDIProcess::CheckInitialization(&v17, v5);
    v7 = v17;
    if (!v17)
    {
      v9 = ClientInterface::global(v8);
      v7 = ((*v9)[37])(v9, inPersistentOwnerID, outConnectionList);
    }
  }

  gMIDIClientLog();
  v10 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (*outConnectionList)
    {
      v11 = *outConnectionList;
    }

    else
    {
      v11 = @"(null)";
    }

    ErrorFormatter::ErrorFormatter(v18, v7);
    *buf = 136316162;
    v20 = "MIDIClientLib.cpp";
    v21 = 1024;
    v22 = 1388;
    v23 = 2080;
    v24 = "MIDIThruConnectionFind";
    v25 = 2112;
    v26 = v11;
    v27 = 2080;
    v28 = v18;
    v12 = "%25s:%-5d <-%s: %@%s";
    v13 = v10;
    v14 = 48;
    goto LABEL_19;
  }

  return v7;
}

OSStatus MIDIObjectFindByUniqueID(MIDIUniqueID inUniqueID, MIDIObjectRef *outObject, MIDIObjectType *outObjectType)
{
  v5 = *&inUniqueID;
  v29 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v18 = "MIDIClientLib.cpp";
    v19 = 1024;
    v20 = 1395;
    v21 = 2080;
    v22 = "MIDIObjectFindByUniqueID";
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v8 = _MIDIObjectFindByUniqueID(v5, outObject, outObjectType);
  }

  else
  {
    v16 = 0;
    v9 = MIDIProcess::CheckInitialization(&v16, v7);
    v10 = v16;
    if (v16)
    {
      goto LABEL_8;
    }

    v11 = ClientInterface::global(v9);
    v8 = ((*v11)[20])(v11, v5, outObject, outObjectType);
  }

  v10 = v8;
LABEL_8:
  gMIDIClientLog();
  v12 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    if (outObject)
    {
      v13 = *outObject;
      if (outObjectType)
      {
LABEL_11:
        v14 = *outObjectType;
LABEL_14:
        *buf = 136316418;
        v18 = "MIDIClientLib.cpp";
        v19 = 1024;
        v20 = 1402;
        v21 = 2080;
        v22 = "MIDIObjectFindByUniqueID";
        v23 = 1024;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        v27 = 1024;
        v28 = v10;
        _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s: obj 0x%x, type 0x%x, err %d", buf, 0x2Eu);
        return v10;
      }
    }

    else
    {
      v13 = 0;
      if (outObjectType)
      {
        goto LABEL_11;
      }
    }

    v14 = kMIDIObjectType_Device;
    goto LABEL_14;
  }

  return v10;
}

OSStatus MIDIBluetoothDriverActivateAllConnections(void)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((gInMIDIServer & 1) != 0 || (v5 = 0, MIDIProcess::CheckInitialization(&v5, v0), (v1 = v5) == 0))
  {
    NullDevice = FindNullDevice();
    if (!NullDevice)
    {
      return -10833;
    }

    v1 = MIDIObjectSetIntegerProperty(NullDevice, @"activate all devices", 1);
  }

  gMIDIClientLog();
  v3 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "MIDIClientLib.cpp";
    v8 = 1024;
    v9 = 1432;
    v10 = 2080;
    v11 = "MIDIBluetoothDriverActivateAllConnections";
    v12 = 1024;
    v13 = v1;
    _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d <-%s: err %d", buf, 0x22u);
  }

  return v1;
}

uint64_t FindNullDevice(void)
{
  v0 = MIDIGetNumberOfDevices();
  if (v0)
  {
    v1 = v0;
    for (i = 0; i != v1; ++i)
    {
      v3 = MIDIGetDevice(i);
      if (v3)
      {
        v4 = v3;
        str = 0;
        MIDIObjectGetStringProperty(v3, kMIDIPropertyDriverOwner, &str);
        if (str)
        {
          if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
          {
            CFRelease(str);
            outValue = 0;
            MIDIObjectGetIntegerProperty(v4, @"is BLE MIDI null device", &outValue);
            if (outValue)
            {
              return v4;
            }
          }

          else if (str)
          {
            CFRelease(str);
          }
        }
      }
    }
  }

  return 0;
}

OSStatus MIDIBluetoothDriverDisconnect(CFStringRef uuid)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((gInMIDIServer & 1) != 0 || (v7 = 0, MIDIProcess::CheckInitialization(&v7, v1), (v3 = v7) == 0))
  {
    NullDevice = FindNullDevice();
    if (!NullDevice)
    {
      return -10833;
    }

    v3 = MIDIObjectSetStringProperty(NullDevice, @"disconnect device", uuid);
  }

  gMIDIClientLog();
  v5 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "MIDIClientLib.cpp";
    v10 = 1024;
    v11 = 1448;
    v12 = 2080;
    v13 = "MIDIBluetoothDriverDisconnect";
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d <-%s: err %d", buf, 0x22u);
  }

  return v3;
}

uint64_t UMPCIObjectCreate(uint64_t a1, const void *a2, int *a3)
{
  *&v33[13] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v27 = "MIDIClientLib.cpp";
    v28 = 1024;
    v29 = 1457;
    v30 = 2080;
    v31 = "UMPCIObjectCreate";
    v32 = 1024;
    *v33 = a1;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v8 = _UMPCIObjectCreate(0, a1, a2, a3);
    if (!a3)
    {
LABEL_24:
      gMIDIClientLog();
      v22 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
      {
        ErrorFormatter::ErrorFormatter(v25, v8);
        *buf = 136315906;
        v27 = "MIDIClientLib.cpp";
        v28 = 1024;
        v29 = 1469;
        v30 = 2080;
        v31 = "UMPCIObjectCreate";
        v32 = 2080;
        *v33 = v25;
        v19 = "%25s:%-5d <-%s: (null ptr)%s";
        v20 = v22;
        v21 = 38;
        goto LABEL_26;
      }

      return v8;
    }

    goto LABEL_21;
  }

  if ((CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed & 0x80000000) == 0)
  {
    v9 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
    goto LABEL_14;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 0;
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle || (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes")) == 0 || (v12 = ValueForInfoDictionaryKey, v13 = CFGetTypeID(ValueForInfoDictionaryKey), v13 != CFArrayGetTypeID()) || (v34.length = CFArrayGetCount(v12), v34.location = 0, !CFArrayContainsValue(v12, v34, @"audio")))
  {
    v9 = CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed;
LABEL_14:
    v8 = 4294956452;
    if (v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = -10844;
    }

    v24 = v14;
    if (!v9)
    {
      return v8;
    }

    goto LABEL_18;
  }

  CheckVirtualEndpointCreation(void)::virtualEndpointsAllowed = 1;
  v24 = 0;
LABEL_18:
  if (!a3)
  {
    v8 = 4294967246;
    goto LABEL_24;
  }

  v15 = MIDIProcess::CheckInitialization(&v24, v7);
  v8 = v24;
  if (!v24)
  {
    v16 = ClientInterface::global(v15);
    v8 = ((*v16)[44])(v16, a1, a2, a3);
  }

LABEL_21:
  gMIDIClientLog();
  v17 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a3;
    ErrorFormatter::ErrorFormatter(v25, v8);
    *buf = 136316162;
    v27 = "MIDIClientLib.cpp";
    v28 = 1024;
    v29 = 1469;
    v30 = 2080;
    v31 = "UMPCIObjectCreate";
    v32 = 1024;
    *v33 = v18;
    v33[2] = 2080;
    *&v33[3] = v25;
    v19 = "%25s:%-5d <-%s: 0x%x%s";
    v20 = v17;
    v21 = 44;
LABEL_26:
    _os_log_impl(&dword_2371C2000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
  }

  return v8;
}

void UMPCIObjectDispose(MIDIServer *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v2 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 1476;
    v15 = 2080;
    v16 = "UMPCIObjectDispose";
    v17 = 1024;
    LODWORD(v18) = a1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v4 = _UMPCIObjectDispose(a1);
  }

  else
  {
    v9 = 0;
    v5 = MIDIProcess::CheckInitialization(&v9, v3);
    v6 = v9;
    if (v9)
    {
      goto LABEL_8;
    }

    v7 = ClientInterface::global(v5);
    v4 = ((*v7)[45])(v7, a1);
  }

  v6 = v4;
LABEL_8:
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v10, v6);
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 1484;
    v15 = 2080;
    v16 = "UMPCIObjectDispose";
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }
}

uint64_t UMPCIObjectSetDescription(MIDIServer *a1, const void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v15 = "MIDIClientLib.cpp";
    v16 = 1024;
    v17 = 1497;
    v18 = 2080;
    v19 = "UMPCIObjectSetDescription";
    v20 = 1024;
    LODWORD(v21) = a1;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x", buf, 0x22u);
  }

  if (gInMIDIServer)
  {
    v6 = _UMPCIObjectSetDescription(a1, a2);
  }

  else
  {
    v12 = 0;
    v7 = MIDIProcess::CheckInitialization(&v12, v5);
    v8 = v12;
    if (v12)
    {
      goto LABEL_8;
    }

    v9 = ClientInterface::global(v7);
    v6 = ((*v9)[47])(v9, a1, a2);
  }

  v8 = v6;
LABEL_8:
  gMIDIClientLog();
  v10 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v13, v8);
    *buf = 136315906;
    v15 = "MIDIClientLib.cpp";
    v16 = 1024;
    v17 = 1505;
    v18 = 2080;
    v19 = "UMPCIObjectSetDescription";
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v8;
}

uint64_t UMPCIObjectSetEnableState(MIDIServer *a1, uint64_t a2)
{
  *&v22[13] = *MEMORY[0x277D85DE8];
  gMIDIClientLog();
  v4 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    v6 = "true";
    *buf = 136316162;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    if (!a2)
    {
      v6 = "false";
    }

    v18 = 1513;
    v19 = 2080;
    v20 = "UMPCIObjectSetEnableState";
    v21 = 1024;
    *v22 = a1;
    v22[2] = 2080;
    *&v22[3] = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s 0x%x %s", buf, 0x2Cu);
  }

  if (gInMIDIServer)
  {
    v7 = _UMPCIObjectSetEnableState(a1, a2);
  }

  else
  {
    v13 = 0;
    v8 = MIDIProcess::CheckInitialization(&v13, v5);
    v9 = v13;
    if (v13)
    {
      goto LABEL_10;
    }

    v10 = ClientInterface::global(v8);
    v7 = ((*v10)[48])(v10, a1, a2);
  }

  v9 = v7;
LABEL_10:
  gMIDIClientLog();
  v11 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v14, v9);
    *buf = 136315906;
    v16 = "MIDIClientLib.cpp";
    v17 = 1024;
    v18 = 1521;
    v19 = 2080;
    v20 = "UMPCIObjectSetEnableState";
    v21 = 2080;
    *v22 = v14;
    _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v9;
}

uint64_t UMPCIGlobalState(MIDIServer *a1, int *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gInMIDIServer)
  {
    v3 = _UMPCIGlobalState(a1);
  }

  else
  {
    v9 = 0;
    v4 = MIDIProcess::CheckInitialization(&v9, a2);
    v5 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

    v6 = ClientInterface::global(v4);
    v3 = ((*v6)[49])(v6, a1);
  }

  v5 = v3;
LABEL_6:
  gMIDIClientLog();
  v7 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v10, v5);
    *buf = 136315906;
    v12 = "MIDIClientLib.cpp";
    v13 = 1024;
    v14 = 1536;
    v15 = 2080;
    v16 = "UMPCIGlobalState";
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v5;
}

uint64_t UMPCIDiscover(MIDIServer *a1, int *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (gInMIDIServer)
  {
    v2 = _UMPCIDiscover(a1);
  }

  else
  {
    v8 = 0;
    v3 = MIDIProcess::CheckInitialization(&v8, a2);
    v4 = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    v5 = ClientInterface::global(v3);
    v2 = ((*v5)[50])(v5);
  }

  v4 = v2;
LABEL_6:
  gMIDIClientLog();
  v6 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v9, v4);
    *buf = 136315906;
    v11 = "MIDIClientLib.cpp";
    v12 = 1024;
    v13 = 1550;
    v14 = 2080;
    v15 = "UMPCIDiscover";
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v4;
}

uint64_t UMPCIServerSideMIDICITransaction(MIDIServer *a1, MIDIServer **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gInMIDIServer)
  {
    v4 = _UMPCIServerSideMIDICITransaction(a1, a2);
  }

  else
  {
    v10 = 0;
    v5 = MIDIProcess::CheckInitialization(&v10, a2);
    v6 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

    v7 = ClientInterface::global(v5);
    v4 = ((*v7)[51])(v7, a1, a2);
  }

  v6 = v4;
LABEL_6:
  gMIDIClientLog();
  v8 = gMIDIClientLog(void)::clilib;
  if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_DEBUG))
  {
    ErrorFormatter::ErrorFormatter(v11, v6);
    *buf = 136315906;
    v13 = "MIDIClientLib.cpp";
    v14 = 1024;
    v15 = 1564;
    v16 = 2080;
    v17 = "UMPCIServerSideMIDICITransaction";
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
  }

  return v6;
}

void FlushManager::~FlushManager(FlushManager *this)
{
  FlushManager::~FlushManager(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46DC0;
  v2 = *(this + 1);
  if (v2 != *(this + 2))
  {
    do
    {
      v3 = *v2;
      outValue = 0;
      IntegerProperty = MIDIObjectGetIntegerProperty(*v3, kMIDIPropertyMaxSysExSpeed, &outValue);
      v5 = outValue;
      if (IntegerProperty)
      {
        v6 = 1;
      }

      else
      {
        v6 = outValue == 0;
      }

      if (v6)
      {
        v5 = 3125;
        outValue = 3125;
      }

      v15 = v2;
      v7 = mach_absolute_time();
      v8 = 0;
      v9 = (3 * (0xB2D05E00uLL / v5) * 0x20C49BA5E353F7DuLL) >> 64;
      v17.wordCount = 1;
      v10 = v3 + 1;
      v11 = 545259584;
      do
      {
        v12 = 0;
        v13 = v8 << 16;
        v14 = v11;
        do
        {
          if ((*(v10 + (v12 >> 3)) >> (v12 & 7)))
          {
            v17.timeStamp = v7;
            v17.words[0] = v14;
            Scheduler::SchedulePacket(*(this + 4), 0, *v3, kMIDIProtocol_1_0, &v17);
            v7 += v9;
          }

          ++v12;
          v14 += 256;
        }

        while (v12 != 128);
        if (v10[4])
        {
          v17.words[0] = v13 + 548421632;
          Scheduler::SchedulePacket(*(this + 4), 0, *v3, kMIDIProtocol_1_0, &v17);
          v7 += v9;
        }

        if (*(v10 + 17) == 1)
        {
          v17.words[0] = v13 + 551551040;
          Scheduler::SchedulePacket(*(this + 4), 0, *v3, kMIDIProtocol_1_0, &v17);
          v7 += v9;
        }

        ++v8;
        v10 += 5;
        v11 += 0x10000;
      }

      while (v8 != 16);
      v2 = v15 + 1;
    }

    while (v15 + 1 != *(this + 2));
  }

  OwnedPtrVector<FlushDest *>::~OwnedPtrVector(this);
}

void *OwnedPtrVector<FlushDest *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A469D0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        MEMORY[0x2383C8250](*v4, 0x1000C4082BDDFCDLL);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t Scheduler::SchedulePacket(uint64_t this, void *a2, unsigned int a3, MIDIProtocolID a4, const MIDIEventPacket *a5)
{
  if ((*(this + 144) & 1) == 0)
  {
    v7 = this;
    timeStamp = a5->timeStamp;
    wordCount = a5->wordCount;
    v10 = malloc_type_malloc(4 * wordCount + 20, 0xC3A25D3EuLL);
    *v10 = a4;
    v10[1] = 1;
    *(v10 + 1) = timeStamp;
    v10[4] = wordCount;
    if (wordCount)
    {
      memmove(v10 + 5, a5->words, 4 * wordCount);
    }

    (*(*(v7 + 24) + 16))(v7 + 24);
      ;
    }

    operator new();
  }

  return this;
}

void sub_23724AD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(&v4 + 1) = a3;
  *&v4 = 0;
  v5 = v4;
  CADeprecated::CAMutex::Locker::~Locker(va);
  if (v5)
  {
    (*(&v5 + 1))();
  }

  _Unwind_Resume(a1);
}

void OwnedPtrVector<FlushDest *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<FlushDest *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

uint64_t Scheduler::Perform(Scheduler *this)
{
  v28[127] = *MEMORY[0x277D85DE8];
  CADeprecated::CAMutex::Lock((this + 24));
  v21 = 0;
  v22 = 0;
  v24 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<Scheduler::Perform(unsigned long long)::$_0>;
  v25[0] = &v22;
  v27 = 1;
  v25[1] = &v21;
  v26 = v28;
  if (*(this + 34))
  {
    while (1)
    {
      v2 = *(*(this + 15) + 40);
      if (v2 > *(this + 14) + mach_absolute_time())
      {
        break;
      }

      v3 = *(this + 15);
      v4 = *(v3 + 48);
      v5 = *(v3 + 56);
      v6 = *(v3 + 64);
      v7 = *(v3 + 72);
      *(v3 + 64) = 0;
      v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v5);
      if (v8)
      {
        --*(v8 + 100);
      }

      std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::erase(this + 15, v3);
      CADeprecated::CAMutex::Unlock((this + 24));
      v10 = MIDIServer::defaultInstance(v9) + 13;
      v11 = (*(*v10 + 16))(v10);
      v12 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v5);
      v13 = v12 == v22 && v4 == v21;
      if (!v13 || *v6 != v27)
      {
        if (HIDWORD(v27))
        {
          v23 = &v27;
          (*v24)(v25, &v23);
        }

        v14 = *v6;
        v26 = v28;
        v27 = v14;
        v21 = v4;
        v22 = v12;
      }

      if (v6[1])
      {
        v15 = 0;
        v16 = (v6 + 2);
        do
        {
          MIDI::Packetizer::add(&v24, v16);
          v16 = (v16 + 4 * v16->wordCount + 12);
          ++v15;
        }

        while (v15 < v6[1]);
      }

      if (v11)
      {
        (*(*v10 + 24))(v10);
      }

      CADeprecated::CAMutex::Lock((this + 24));
      v7(v6);
      if (!*(this + 34))
      {
        goto LABEL_22;
      }
    }

    CADeprecated::TimerTaskMgr::SetTaskNextWakeTime(gMIDITimerThread, this, v2);
  }

LABEL_22:
  CADeprecated::CAMutex::Unlock((this + 24));
  if (HIDWORD(v27))
  {
    v18 = MIDIServer::defaultInstance(v17) + 13;
    v19 = (*(*v18 + 16))(v18);
    if (HIDWORD(v27))
    {
      v23 = &v27;
      (*v24)(v25, &v23);
    }

    HIDWORD(v27) = 0;
    v26 = v28;
    if (v19)
    {
      (*(*v18 + 24))(v18);
    }
  }

  return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v24);
}

void sub_23724B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  if (v8)
  {
    (*(a2 + 72))();
  }

  operator delete(a2);
  return v4;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<Scheduler::Perform(unsigned long long)::$_0>(caulk::inplace_function_detail::wrapper<Scheduler::Perform(unsigned long long)::$_0>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<Scheduler::Perform(unsigned long long)::$_0>(caulk::inplace_function_detail::wrapper<Scheduler::Perform(unsigned long long)::$_0>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t **caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<Scheduler::Perform(unsigned long long)::$_0>(caulk::inplace_function_detail::wrapper<Scheduler::Perform(unsigned long long)::$_0>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t **result, const MIDI::EventList **a2)
{
  v2 = **result;
  if (v2)
  {
    v3 = *a2;
    v4 = *result[1];
    v5 = (*(*v2 + 88))(**result);
    if (v5)
    {
      return MIDIDestination::SendPacketsNow(v5, v4, v3);
    }

    else
    {
      result = (*(*v2 + 80))(v2);
      v6 = result;
      if (result)
      {
        v7 = result[13];
        v8 = result[14];
        while (v7 != v8)
        {
          result = MIDIInputPort::DeliverPacketsToInputPort(*v7++, v3, *(v6 + 2));
        }
      }
    }
  }

  return result;
}

void Scheduler::~Scheduler(Scheduler *this)
{
  *this = &unk_284A466E0;
  std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::destroy(*(this + 16));
  CADeprecated::CAMutex::~CAMutex((this + 24));

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A466E0;
  std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::destroy(*(this + 16));
  CADeprecated::CAMutex::~CAMutex((this + 24));
}

void std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::destroy(a1[1]);
    v2 = a1[8];
    a1[8] = 0;
    if (v2)
    {
      (a1[9])();
    }

    operator delete(a1);
  }
}

uint64_t Scheduler::CheckSchedulePacket(Scheduler *this, void *a2, unsigned int a3, MIDIProtocolID a4, const MIDIEventPacket *a5)
{
  v10 = this + 24;
  v11 = (*(*(this + 3) + 16))(this + 24);
  v12 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a3);
  if (v12)
  {
    if (*(v12 + 100) > 0 || (timeStamp = a5->timeStamp, timeStamp > *(this + 14) + mach_absolute_time()))
    {
      Scheduler::SchedulePacket(this, a2, a3, a4, a5);
      v14 = 1;
      if (!v11)
      {
        return v14;
      }

      goto LABEL_7;
    }
  }

  v14 = 0;
  if (v11)
  {
LABEL_7:
    (*(*v10 + 24))(v10);
  }

  return v14;
}

void Scheduler::FlushAllOutput(Scheduler *this)
{
  v3 = this + 24;
  v2 = *(this + 3);
  v13[5] = this + 24;
  v4 = (*(v2 + 16))(this + 24);
  v14 = v4;
  memset(&v13[1], 0, 24);
  v13[4] = this;
  v13[0] = &unk_284A46DC0;
  v5 = this + 128;
  v8 = *(this + 15);
  v6 = (this + 120);
  v7 = v8;
  if (v8 != v5)
  {
    do
    {
      FlushManagerBase::InspectEvent(v13, *(v7 + 14), *(v7 + 8));
      v9 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, *(v7 + 14));
      if (v9)
      {
        --*(v9 + 100);
      }

      v10 = *(v7 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v7 + 2);
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v5);
    v7 = *v6;
  }

  while (v7 != v5)
  {
    v7 = std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::erase(v6, v7);
  }

  FlushManager::~FlushManager(v13);
  if (v4)
  {
    (*(*v3 + 24))(v3);
  }
}

void sub_23724B6F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  FlushManager::~FlushManager(va);
  CADeprecated::CAMutex::Locker::~Locker(va1);
  _Unwind_Resume(a1);
}

uint64_t FlushManagerBase::InspectEvent(uint64_t result, int a2, uint64_t a3)
{
  for (i = *(result + 8); ; ++i)
  {
    if (i == *(result + 16))
    {
      operator new();
    }

    v5 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v6 = *(a3 + 4);
  if (v6)
  {
    v7 = 0;
    v8 = a3 + 8;
    v9 = v5 + 1;
    do
    {
      v10 = v8 + 12;
      v11 = *(v8 + 8);
      if (v11)
      {
        v12 = v10 + 4 * v11;
        v13 = (v8 + 12);
        do
        {
          v14 = *v13;
          v15 = v14 >> 28;
          if (*v13 >> 28 == 4)
          {
            v16 = *(v13 + 3);
          }

          else if (v15 == 2)
          {
            v16 = *v13 & 0x7F;
          }

          else
          {
            v16 = 0;
          }

          v17 = (v14 >> 20) & 0xF;
          v18 = WORD1(v14) & 0xF;
          if (v17 == 8 || (v17 == 9 ? (v19 = v16 == 0) : (v19 = 0), v19))
          {
            v20 = 1 << (BYTE1(v14) & 7);
            result = (v14 >> 11) & 0xF;
            *(&v9[5 * v18] + result) |= v20;
          }

          else if (v17 == 14)
          {
            result = &v9[5 * v18];
            *(result + 17) = 1;
          }

          else
          {
            result = v14 & 0x7F00;
            if (result == 0x4000 && v17 == 11)
            {
              result = &v9[5 * v18];
              *(result + 16) = 1;
            }
          }

          v13 += MIDI::UniversalPacket::word_sizes[v15];
        }

        while (v13 < v12);
        v21 = *(v8 + 8);
        v6 = *(a3 + 4);
      }

      else
      {
        v21 = 0;
      }

      v8 = v10 + 4 * v21;
      ++v7;
    }

    while (v7 < v6);
  }

  return result;
}

void Scheduler::FlushEndpoint(Scheduler *this, int a2)
{
  v5 = this + 24;
  v4 = *(this + 3);
  v16[5] = this + 24;
  v6 = (*(v4 + 16))(this + 24);
  v17 = v6;
  memset(&v16[1], 0, 24);
  v16[4] = this;
  v16[0] = &unk_284A46DC0;
  v7 = this + 128;
  v10 = *(this + 15);
  v8 = (this + 120);
  v9 = v10;
  if (v10 != v7)
  {
    do
    {
      v11 = *(v9 + 8);
      v12 = v9;
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      if (*(v9 + 56) == a2)
      {
        FlushManagerBase::InspectEvent(v16, a2, *(v9 + 64));
        v15 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, *(v9 + 56));
        if (v15)
        {
          --*(v15 + 100);
        }

        std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::erase(v8, v9);
      }

      v9 = v13;
    }

    while (v13 != v7);
  }

  FlushManager::~FlushManager(v16);
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }
}

void sub_23724BAEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  FlushManager::~FlushManager(va);
  CADeprecated::CAMutex::Locker::~Locker(va1);
  _Unwind_Resume(a1);
}

void sub_23724C130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, FILE *a47, void *a48)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::UMPCIServerSideMIDICITransaction(XPCClient *this, const __CFDictionary *a2, const __CFDictionary **a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 4294967246;
  }

  theData = Data;
  v5 = CFGetTypeID(Data);
  if (v5 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = swix::data::data(&value, BytePtr, Length);
  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  swix::encode_message::encode_message(&v29, 190206376);
  xpc_dictionary_set_value(v30, "data", value);
  v11 = *(v10 + 8);
  if (!v11)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cf, v11, &v29);
  v12 = swix::decode_message::decode<int>(object, ".error");
  if (v12)
  {
    LODWORD(v22) = v12;
    v23 = 0;
  }

  else
  {
    v14 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v26, object, "value");
    v15 = v26;
    v16 = xpc_null_create();
    v26 = v16;
    xpc_release(v14);
    xpc_release(v16);
    swix::result<swix::data>::result(&v22, v15);
    xpc_release(v15);
  }

  xpc_release(object);
  xpc_release(v30);
  if ((v23 & 1) != 0 || (v13 = v22, !v22))
  {
    v17 = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      v17 = xpc_null_create();
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v17);
    v19 = xpc_data_get_length(v17);
    applesauce::CF::make_DataRef(&cf, bytes_ptr, v19);
    applesauce::CF::make_DictionaryRef(&v29, cf);
    *a3 = v29;
    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v17);
    if (v23)
    {
      xpc_release(v22);
    }

    v13 = 0;
  }

  xpc_release(value);
  if (theData)
  {
    CFRelease(theData);
  }

  return v13;
}

void sub_23724C8BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, char a10, xpc_object_t a11, char a12, uint64_t a13, char a14, xpc_object_t object)
{
  v16 = v15;
  xpc_release(v16);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724C72CLL);
}

unint64_t XPCClient::UMPCIDiscover(XPCClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((*(*v1 + 8))(v1) + 464);
  swix::encode_message::encode_message(&v9, 190206375);
  v3 = *(v2 + 8);
  if (!v3)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v7, v3, &v9);
  v4 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v5 = (v4 == 0) << 32;
  xpc_release(v10);
  if ((v5 | v4) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v5 | v4;
  }
}

void sub_23724CAB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724CA78);
}

uint64_t XPCClient::UMPCIGlobalState(XPCClient *this, const __CFDictionary **a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(v19, 190206374);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cf, v5, v19);
  v6 = swix::decode_message::decode<int>(object, ".error");
  if (v6)
  {
    LODWORD(v14) = v6;
    v15 = 0;
  }

  else
  {
    v7 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v16, object, "value");
    v8 = v16;
    v9 = xpc_null_create();
    v16 = v9;
    xpc_release(v7);
    xpc_release(v9);
    swix::result<swix::data>::result(&v14, v8);
    xpc_release(v8);
  }

  xpc_release(object);
  xpc_release(v19[1]);
  if ((v15 & 1) != 0 || (result = v14, !v14))
  {
    v11 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v11 = xpc_null_create();
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v11);
    length = xpc_data_get_length(v11);
    applesauce::CF::make_DataRef(&cf, bytes_ptr, length);
    applesauce::CF::make_DictionaryRef(v19, cf);
    *a2 = v19[0];
    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v11);
    if (v15)
    {
      xpc_release(v14);
    }

    return 0;
  }

  return result;
}

void sub_23724CCAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, char a10, uint64_t a11, char a12, xpc_object_t object)
{
  v14 = v13;
  xpc_release(v14);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724CBE8);
}

unint64_t XPCClient::UMPCIObjectSetEnableState(XPCClient *this, unsigned int a2, int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((*(*v5 + 8))(v5) + 464);
  swix::encode_message::encode_message(&v13, 190206373);
  xpc_dictionary_set_uint64(xdict, "umpcioo", a2);
  xpc_dictionary_set_BOOL(xdict, "enableState", a3 != 0);
  v7 = *(v6 + 8);
  if (!v7)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v11, v7, &v13);
  v8 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v9 = (v8 == 0) << 32;
  xpc_release(xdict);
  if ((v9 | v8) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v9 | v8;
  }
}

void sub_23724CE6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724CE30);
}

uint64_t XPCClient::UMPCIObjectSetDescription(XPCClient *this, unsigned int a2, CFPropertyListRef propertyList)
{
  if (!propertyList)
  {
    return 4294967246;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 4294967246;
  }

  theData = Data;
  v5 = CFGetTypeID(Data);
  if (v5 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = swix::data::data(&value, BytePtr, Length);
  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  swix::encode_message::encode_message(&v21, 190206372);
  xpc_dictionary_set_uint64(v22, "umpcioo", a2);
  xpc_dictionary_set_value(v22, "description", value);
  v11 = *(v10 + 8);
  if (!v11)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v19, v11, &v21);
  v12 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v13 = (v12 == 0) << 32;
  xpc_release(v22);
  if ((v13 | v12) >= 0x100000000)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = v13 | v12;
  }

  xpc_release(value);
  if (theData)
  {
    CFRelease(theData);
  }

  return v14;
}

void sub_23724D0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, const void *a11, uint64_t a12, xpc_object_t object)
{
  __cxa_free_exception(v13);
  applesauce::CF::DataRef::~DataRef(&a11);
  _Unwind_Resume(a1);
}

unint64_t XPCClient::UMPCIObjectDispose(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206371);
  xpc_dictionary_set_uint64(xdict, "umpcioo", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_23724D2BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724D284);
}

uint64_t XPCClient::UMPCIObjectCreate(int a1, unsigned __int8 a2, CFPropertyListRef propertyList, _DWORD *a4)
{
  if (!propertyList)
  {
    return 4294967246;
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 4294967246;
  }

  theData = Data;
  v7 = CFGetTypeID(Data);
  if (v7 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = swix::data::data(&value, BytePtr, Length);
  v11 = MIDIProcess::defaultInstance(v10);
  v12 = *((*(*v11 + 8))(v11) + 464);
  swix::encode_message::encode_message(&v23, 190206370);
  xpc_dictionary_set_int64(xdict, "objectType", a2);
  xpc_dictionary_set_value(xdict, "description", value);
  v13 = *(v12 + 8);
  if (!v13)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v21, v13, &v23);
  v14 = swix::decode_message::decode<int>(object, ".error");
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v14 = swix::decode_message::decode<unsigned int>(object, "umpcioo");
    v15 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(xdict);
  v16 = v14 | v15;
  if (HIDWORD(v15) || !v16)
  {
    *a4 = v16;
    v16 = 0;
  }

  xpc_release(value);
  if (theData)
  {
    CFRelease(theData);
  }

  return v16;
}

void sub_23724D558(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724D454);
}

uint64_t XPCClient::MIDIDestinationCreateInternal(XPCClient *this, unsigned int a2, CFTypeRef cf, MIDIProtocolID a4, unsigned int *a5)
{
  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v8 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  if (v20 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  swix::string::string(&value, v11);
  swix::encode_message::encode_message(&v23, 190206332);
  xpc_dictionary_set_uint64(v24, "client", a2);
  xpc_dictionary_set_value(v24, "name", value);
  xpc_dictionary_set_int64(v24, "proto", a4);
  v12 = *(v10 + 8);
  if (!v12)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cfa, v12, &v23);
  v13 = swix::decode_message::decode<int>(object, ".error");
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v13 = swix::decode_message::decode<unsigned int>(object, "destination");
    v14 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v24);
  xpc_release(value);
  v15 = v13 | v14;
  if (HIDWORD(v14) || !v15)
  {
    *a5 = v15;
    v15 = 0;
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_23724D7F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724D760);
}

void sub_23724D878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDIInputPortCreateInternal(XPCClient *this, unsigned int a2, CFTypeRef cf, MIDIProtocolID a4, unsigned int *a5)
{
  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v8 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  if (v20 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  swix::string::string(&value, v11);
  swix::encode_message::encode_message(&v23, 190206334);
  xpc_dictionary_set_uint64(v24, "client", a2);
  xpc_dictionary_set_value(v24, "name", value);
  xpc_dictionary_set_int64(v24, "proto", a4);
  v12 = *(v10 + 8);
  if (!v12)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cfa, v12, &v23);
  v13 = swix::decode_message::decode<int>(object, ".error");
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v13 = swix::decode_message::decode<unsigned int>(object, "portRef");
    v14 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v24);
  xpc_release(value);
  v15 = v13 | v14;
  if (HIDWORD(v14) || !v15)
  {
    *a5 = v15;
    v15 = 0;
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_23724DA5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724D9CCLL);
}

void sub_23724DAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDISetupFromData_Priv(XPCClient *this, CFDataRef theData, unsigned int *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v7 = swix::data::data(&value, BytePtr, Length);
  v8 = MIDIProcess::defaultInstance(v7);
  v9 = *((*(*v8 + 8))(v8) + 464);
  swix::encode_message::encode_message(&v18, 190206351);
  xpc_dictionary_set_value(xdict, "data", value);
  v10 = *(v9 + 8);
  if (!v10)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v16, v10, &v18);
  v11 = swix::decode_message::decode<int>(object, ".error");
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v11 = swix::decode_message::decode<unsigned int>(object, "setup");
    v12 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(xdict);
  v13 = v11 | v12;
  if (HIDWORD(v12) || !v13)
  {
    *a3 = v13;
    v13 = 0;
  }

  xpc_release(value);
  return v13;
}

void sub_23724DC30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724DBECLL);
}

unint64_t XPCClient::MIDISetupInstall_Priv(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206352);
  xpc_dictionary_set_uint64(xdict, "setup", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_23724DD88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724DD50);
}

uint64_t XPCClient::MIDISetupGetCurrent_Priv(XPCClient *this, unsigned int *a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206353);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v6 = swix::decode_message::decode<unsigned int>(object, "setup");
    v7 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v12);
  result = v6 | v7;
  if (HIDWORD(v7) || !result)
  {
    *a2 = result;
    return 0;
  }

  return result;
}

void sub_23724DEC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724DE88);
}

uint64_t XPCClient::MIDISetupCreate_Priv(XPCClient *this, unsigned int *a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206350);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v6 = swix::decode_message::decode<unsigned int>(object, "setup");
    v7 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v12);
  result = v6 | v7;
  if (HIDWORD(v7) || !result)
  {
    *a2 = result;
    return 0;
  }

  return result;
}

void sub_23724E004(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724DFCCLL);
}

uint64_t XPCClient::MIDIThruConnectionFind(XPCClient *this, const __CFString *a2, const __CFData **a3)
{
  applesauce::CF::StringRef::from_get(&v26, a2);
  if (!v26)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(&__p, v26);
  if (v25 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  swix::string::string(&value, p_p);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v5 = v26;
  if (v26)
  {
    CFRelease(v26);
  }

  v6 = MIDIProcess::defaultInstance(v5);
  v7 = *((*(*v6 + 8))(v6) + 464);
  swix::encode_message::encode_message(&v26, 190206367);
  xpc_dictionary_set_value(v27, "persistentOwnerID", value);
  v8 = *(v7 + 8);
  if (!v8)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&__p, v8, &v26);
  v9 = swix::decode_message::decode<int>(object, ".error");
  if (v9)
  {
    LODWORD(v19) = v9;
    v20 = 0;
  }

  else
  {
    v10 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v22, object, "connectionList");
    v11 = v22;
    v12 = xpc_null_create();
    v22 = v12;
    xpc_release(v10);
    xpc_release(v12);
    swix::result<swix::data>::result(&v19, v11);
    xpc_release(v11);
  }

  xpc_release(object);
  xpc_release(v27);
  if ((v20 & 1) != 0 || (v13 = v19, !v19))
  {
    v14 = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v14 = xpc_null_create();
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v14);
    length = xpc_data_get_length(v14);
    applesauce::CF::make_DataRef(&__p, bytes_ptr, length);
    *a3 = __p;
    xpc_release(v14);
    if (v20)
    {
      xpc_release(v19);
    }

    v13 = 0;
  }

  xpc_release(value);
  return v13;
}

void sub_23724E29C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  v17 = v16;
  xpc_release(v17);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724E1ACLL);
}

void sub_23724E330(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef((v19 - 56));
  JUMPOUT(0x23724E394);
}

void sub_23724E348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, xpc_object_t a12)
{
  xpc_release(v12);
  if (a11 == 1)
  {
    xpc_release(object);
  }

  xpc_release(a12);
  JUMPOUT(0x23724E394);
}

unint64_t XPCClient::MIDIThruConnectionSetParams(XPCClient *this, unsigned int a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v7 = swix::data::data(&value, BytePtr, Length);
  v8 = MIDIProcess::defaultInstance(v7);
  v9 = *((*(*v8 + 8))(v8) + 464);
  swix::encode_message::encode_message(&v17, 190206366);
  xpc_dictionary_set_uint64(xdict, "conn", a2);
  xpc_dictionary_set_value(xdict, "connectionParams", value);
  v10 = *(v9 + 8);
  if (!v10)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v15, v10, &v17);
  v11 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v12 = (v11 == 0) << 32;
  xpc_release(xdict);
  xpc_release(value);
  if ((v12 | v11) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v12 | v11;
  }
}

void sub_23724E4CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724E484);
}

uint64_t XPCClient::MIDIThruConnectionGetParams(XPCClient *this, unsigned int a2, const __CFData **a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((*(*v5 + 8))(v5) + 464);
  swix::encode_message::encode_message(&v21, 190206365);
  xpc_dictionary_set_uint64(xdict, "conn", a2);
  v7 = *(v6 + 8);
  if (!v7)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v19, v7, &v21);
  v8 = swix::decode_message::decode<int>(object, ".error");
  if (v8)
  {
    LODWORD(v16) = v8;
    v17 = 0;
  }

  else
  {
    v9 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v18, object, "params");
    v10 = v18;
    v11 = xpc_null_create();
    v18 = v11;
    xpc_release(v9);
    xpc_release(v11);
    swix::result<swix::data>::result(&v16, v10);
    xpc_release(v10);
  }

  xpc_release(object);
  xpc_release(xdict);
  if ((v17 & 1) != 0 || (result = v16, !v16))
  {
    v13 = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v13 = xpc_null_create();
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v13);
    length = xpc_data_get_length(v13);
    applesauce::CF::make_DataRef(&v19, bytes_ptr, length);
    *a3 = v19;
    xpc_release(v13);
    if (v17)
    {
      xpc_release(v16);
    }

    return 0;
  }

  return result;
}

void sub_23724E6DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  v15 = v14;
  xpc_release(v15);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724E634);
}

void sub_23724E758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10)
{
  xpc_release(v10);
  if (a10 == 1)
  {
    xpc_release(object);
  }

  _Unwind_Resume(a1);
}

unint64_t XPCClient::MIDIThruConnectionDispose(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206364);
  xpc_dictionary_set_uint64(xdict, "conn", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_23724E868(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724E830);
}

uint64_t XPCClient::MIDIThruConnectionCreate(XPCClient *this, const __CFString *a2, CFDataRef theData, unsigned int *a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  swix::data::data(&value, BytePtr, Length);
  v9 = xpc_null_create();
  v10 = v9;
  if (a2)
  {
    applesauce::CF::StringRef::from_get(&cf, a2);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(&__p, cf);
    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    swix::string::string(&object, p_p);
    v12 = object;
    object = xpc_null_create();
    xpc_release(v10);
    xpc_release(object);
    object = 0;
    if (v25 < 0)
    {
      operator delete(__p);
    }

    v9 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    v10 = v12;
  }

  v13 = MIDIProcess::defaultInstance(v9);
  v14 = *((*(*v13 + 8))(v13) + 464);
  swix::encode_message::encode_message(&object, 190206363);
  xpc_dictionary_set_value(xdict, "persistentOwnerID", v10);
  xpc_dictionary_set_value(xdict, "connectionParams", value);
  v15 = *(v14 + 8);
  if (!v15)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&__p, v15, &object);
  v16 = swix::decode_message::decode<int>(v24, ".error");
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v16 = swix::decode_message::decode<unsigned int>(v24, "conn");
    v17 = 0x100000000;
  }

  xpc_release(v24);
  xpc_release(xdict);
  v18 = v16 | v17;
  if (HIDWORD(v17) || !v18)
  {
    *a4 = v18;
    v18 = 0;
  }

  xpc_release(v10);
  xpc_release(value);
  return v18;
}

void sub_23724EAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, xpc_object_t object, void *__p, xpc_object_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v18);
  applesauce::CF::StringRef::~StringRef(&a10);
  xpc_release(v17);
  xpc_release(object);
  _Unwind_Resume(a1);
}

unint64_t XPCClient::MIDISetupRemoveDevice(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = (*(*v3 + 8))(v3);
  result = MIDIServerXPC_Client::setupRemoveDevice(*(v4 + 464), a2, 0);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t XPCClient::MIDISetupAddDevice(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = (*(*v3 + 8))(v3);
  result = MIDIServerXPC_Client::setupAddDevice(*(v4 + 464), a2, 0);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t XPCClient::MIDISetupRemoveExternalDevice(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = (*(*v3 + 8))(v3);
  result = MIDIServerXPC_Client::setupRemoveDevice(*(v4 + 464), a2, 1);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t XPCClient::MIDISetupAddExternalDevice(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = (*(*v3 + 8))(v3);
  result = MIDIServerXPC_Client::setupAddDevice(*(v4 + 464), a2, 1);
  if (result >= 0x100000000)
  {
    return 0x100000000;
  }

  return result;
}

unint64_t XPCClient::MIDIEntityAddOrRemoveEndpoints(XPCClient *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((*(*v7 + 8))(v7) + 464);
  swix::encode_message::encode_message(&v15, 190206357);
  xpc_dictionary_set_uint64(xdict, "entity", a2);
  xpc_dictionary_set_uint64(xdict, "numSourceEndpoints", a3);
  xpc_dictionary_set_uint64(xdict, "numDestinationEndpoints", a4);
  v9 = *(v8 + 8);
  if (!v9)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v13, v9, &v15);
  v10 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v11 = (v10 == 0) << 32;
  xpc_release(xdict);
  if ((v11 | v10) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v11 | v10;
  }
}

void sub_23724EE48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724EE0CLL);
}

unint64_t XPCClient::MIDIDeviceRemoveEntity(XPCClient *this, unsigned int a2, unsigned int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((*(*v5 + 8))(v5) + 464);
  swix::encode_message::encode_message(&v13, 190206356);
  xpc_dictionary_set_uint64(xdict, "device", a2);
  xpc_dictionary_set_uint64(xdict, "entity", a3);
  v7 = *(v6 + 8);
  if (!v7)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v11, v7, &v13);
  v8 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v9 = (v8 == 0) << 32;
  xpc_release(xdict);
  if ((v9 | v8) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v9 | v8;
  }
}

void sub_23724EF98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724EF5CLL);
}

uint64_t XPCClient::MIDIDeviceNewEntity(XPCClient *this, unsigned int a2, CFTypeRef cf, MIDIProtocolID a4, int a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v14 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  v15 = MIDIProcess::defaultInstance(v14);
  v16 = *((*(*v15 + 8))(v15) + 464);
  if (v26 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  swix::string::string(&value, v17);
  swix::encode_message::encode_message(&v29, 190206355);
  xpc_dictionary_set_uint64(xdict, "device", a2);
  xpc_dictionary_set_value(xdict, "name", value);
  xpc_dictionary_set_int64(xdict, "proto", a4);
  xpc_dictionary_set_BOOL(xdict, "embedded", a5 != 0);
  xpc_dictionary_set_uint64(xdict, "numSourceEndpoints", a6);
  xpc_dictionary_set_uint64(xdict, "numDestinationEndpoints", a7);
  v18 = *(v16 + 8);
  if (!v18)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cfa, v18, &v29);
  v19 = swix::decode_message::decode<int>(object, ".error");
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v19 = swix::decode_message::decode<unsigned int>(object, "entity");
    v20 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(xdict);
  xpc_release(value);
  v21 = v19 | v20;
  if (HIDWORD(v20) || !v21)
  {
    *a8 = v21;
    v21 = 0;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  return v21;
}

void sub_23724F20C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724F174);
}

void sub_23724F294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDIExternalDeviceCreate(XPCClient *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, unsigned int *a5)
{
  applesauce::CF::StringRef::from_get(&v31, a2);
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(v29, v31);
  if (v31)
  {
    CFRelease(v31);
  }

  applesauce::CF::StringRef::from_get(&v31, a3);
  if (!v31)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v20, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(v27, v31);
  if (v31)
  {
    CFRelease(v31);
  }

  applesauce::CF::StringRef::from_get(&v31, a4);
  if (!v31)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v21, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, v31);
  v8 = v31;
  if (v31)
  {
    CFRelease(v31);
  }

  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  if (v30 >= 0)
  {
    v11 = v29;
  }

  else
  {
    v11 = v29[0];
  }

  swix::string::string(&value, v11);
  if (v28 >= 0)
  {
    v12 = v27;
  }

  else
  {
    v12 = v27[0];
  }

  swix::string::string(&v23, v12);
  if (v26 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  swix::string::string(&object, v13);
  swix::encode_message::encode_message(&v33, 190206354);
  xpc_dictionary_set_value(v34, "name", value);
  xpc_dictionary_set_value(v34, "manufacturer", v23);
  xpc_dictionary_set_value(v34, "model", object);
  v14 = *(v10 + 8);
  if (!v14)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v31, v14, &v33);
  v15 = swix::decode_message::decode<int>(v32, ".error");
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v15 = swix::decode_message::decode<unsigned int>(v32, "device");
    v16 = 0x100000000;
  }

  xpc_release(v32);
  xpc_release(v34);
  xpc_release(object);
  xpc_release(v23);
  xpc_release(value);
  v17 = v15 | v16;
  if (HIDWORD(v16) || !v17)
  {
    *a5 = v17;
    v17 = 0;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  return v17;
}

void sub_23724F5A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  xpc_release(*(v27 - 80));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724F46CLL);
}

void sub_23724F648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  xpc_release(object);
  xpc_release(a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_23724F674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

unint64_t XPCClient::MIDICapabilityMUIDCollides(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v17, 190206349);
  xpc_dictionary_set_uint64(xdict, "muid", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v15, v5, &v17);
  v6 = swix::decode_message::decode<int>(object, ".error");
  v7 = v6;
  v8 = v6 == 0;
  if (v6)
  {
    v9 = v6 & 0xFFFFFF00;
  }

  else
  {
    v7 = xpc_dictionary_get_BOOL(object, "collides");
    v9 = 0;
  }

  xpc_release(object);
  xpc_release(xdict);
  if (v9 | v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = v9 & 0xFFFFFF00;
  v12 = v10 == 0;
  v13 = 0x100000000;
  if (v12)
  {
    v13 = 0;
  }

  if (v8)
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFFFFFFFFFF00 | (v9 | v7) | v13;
}

void sub_23724F80C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724F7BCLL);
}

uint64_t XPCClient::MIDICapabilityGetDiscoveryMUID(XPCClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((*(*v1 + 8))(v1) + 464);
  swix::encode_message::encode_message(&v12, 190206348);
  v3 = *(v2 + 8);
  if (!v3)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v10, v3, &v12);
  v4 = swix::decode_message::decode<int>(object, ".error");
  v5 = v4 == 0;
  if (!v4)
  {
    v4 = swix::decode_message::decode<unsigned int>(object, "muid");
  }

  xpc_release(object);
  xpc_release(v13);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 == 0;
  v8 = 0x100000000;
  if (v7)
  {
    v8 = 0;
  }

  return v8 | v4;
}

void sub_23724F94C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724F914);
}

unint64_t XPCClient::MIDIRestart(XPCClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((*(*v1 + 8))(v1) + 464);
  swix::encode_message::encode_message(&v9, 190206360);
  v3 = *(v2 + 8);
  if (!v3)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v7, v3, &v9);
  v4 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v5 = (v4 == 0) << 32;
  xpc_release(v10);
  if ((v5 | v4) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v5 | v4;
  }
}

void sub_23724FA70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724FA38);
}

unint64_t XPCClient::MIDIFlushOutput(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206362);
  xpc_dictionary_set_uint64(xdict, "destination", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_23724FBA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724FB68);
}

uint64_t XPCClient::MIDIObjectFindByUniqueID(XPCClient *this, int a2, unsigned int *a3, MIDIObjectType *a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((*(*v7 + 8))(v7) + 464);
  swix::encode_message::encode_message(&v17, 190206368);
  xpc_dictionary_set_int64(xdict, "uniqueID", a2);
  v9 = *(v8 + 8);
  if (!v9)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v15, v9, &v17);
  v10 = swix::decode_message::decode<int>(object, ".error");
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v10 = swix::decode_message::decode<unsigned int>(object, "object");
    v12 = swix::decode_message::decode<int>(object, "objectType") << 32;
  }

  xpc_release(object);
  xpc_release(xdict);
  result = v10 | v12;
  if (result)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14 == 1)
  {
    if (a3)
    {
      *a3 = result;
    }

    result = 0;
    if (a4)
    {
      *a4 = SHIDWORD(v12);
    }
  }

  return result;
}

void sub_23724FD28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23724FCD8);
}

unint64_t XPCClient::MIDIObjectRemoveProperty(XPCClient *this, unsigned int a2, CFTypeRef cf)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    return 4294967246;
  }

  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v3 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (gInMIDIServer)
  {
    v4 = 0;
  }

  else
  {
    v4 = MIDIProcess::defaultInstance(v3);
  }

  v6 = *((*(*v4 + 8))(v4) + 464);
  if (v15 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  swix::string::string(&value, v7);
  swix::encode_message::encode_message(&cfa, 190206347);
  xpc_dictionary_set_uint64(xdict, "object", a2);
  xpc_dictionary_set_value(xdict, "propertyID", value);
  v8 = *(v6 + 8);
  if (!v8)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v18, v8, &cfa);
  v9 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  xpc_release(value);
  v5 = ((v9 == 0) << 32) | v9;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 >= 0x100000000)
  {
    return 0x100000000;
  }

  return v5;
}

void sub_23724FF6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, __int128 buf, __int128 a18)
{
  if (a2)
  {
    __cxa_free_exception(v18);
    applesauce::CF::StringRef::~StringRef(&a14);
    v21 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v22 = v21;
      gMIDIClientLog();
      v23 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
      {
        v24 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315650;
        *(&buf + 4) = "XPCClient.hpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 27;
        WORD1(a18) = 2080;
        *(&a18 + 4) = v24;
        _os_log_impl(&dword_2371C2000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d std::runtime_error in API call: %s", &buf, 0x1Cu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x23724FEF8);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDIObjectGetProperties(XPCClient *this, unsigned int a2, const void **a3, int a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((*(*v7 + 8))(v7) + 464);
  swix::encode_message::encode_message(&v23, 190206361);
  xpc_dictionary_set_uint64(xdict, "object", a2);
  xpc_dictionary_set_BOOL(xdict, "deep", a4 != 0);
  v9 = *(v8 + 8);
  if (!v9)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&data, v9, &v23);
  v10 = swix::decode_message::decode<int>(object, ".error");
  if (v10)
  {
    LODWORD(v18) = v10;
    v19 = 0;
  }

  else
  {
    v11 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v20, object, "properties");
    v12 = v20;
    v13 = xpc_null_create();
    v20 = v13;
    xpc_release(v11);
    xpc_release(v13);
    swix::result<swix::data>::result(&v18, v12);
    xpc_release(v12);
  }

  xpc_release(object);
  xpc_release(xdict);
  if ((v19 & 1) != 0 || (result = v18, !v18))
  {
    v15 = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      v15 = xpc_null_create();
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v15);
    length = xpc_data_get_length(v15);
    applesauce::CF::make_DataRef(&data, bytes_ptr, length);
    *a3 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
    if (data)
    {
      CFRelease(data);
    }

    xpc_release(v15);
    if (v19)
    {
      xpc_release(v18);
    }

    return 0;
  }

  return result;
}

void sub_237250308(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, char a10, uint64_t a11, char a12, xpc_object_t object)
{
  v14 = v13;
  xpc_release(v14);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23725023CLL);
}

uint64_t XPCClient::MIDIObjectSetDictionaryProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, const __CFDictionary *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, cfa);
    if (cfa)
    {
      CFRelease(cfa);
    }

    Data = CFPropertyListCreateData(0, a4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      theData = Data;
      v8 = CFGetTypeID(Data);
      if (v8 != CFDataGetTypeID())
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v20, "Could not construct");
      }

      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v11 = swix::data::data(&v22, BytePtr, Length);
      if (gInMIDIServer)
      {
        v12 = 0;
      }

      else
      {
        v12 = MIDIProcess::defaultInstance(v11);
      }

      v13 = *((*(*v12 + 8))(v12) + 464);
      if (v25 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      swix::string::string(&value, v14);
      swix::encode_message::encode_message(&cfa, 190206345);
      xpc_dictionary_set_uint64(xdict, "object", a2);
      xpc_dictionary_set_value(xdict, "propertyID", value);
      xpc_dictionary_set_value(xdict, "value", v22);
      v15 = *(v13 + 8);
      if (!v15)
      {
        std::terminate();
      }

      swix::connection::send_and_await_reply(v28, v15, &cfa);
      v16 = swix::decode_message::decode<int>(object, ".error");
      xpc_release(object);
      v17 = (v16 == 0) << 32;
      xpc_release(xdict);
      xpc_release(value);
      if ((v17 | v16) >= 0x100000000)
      {
        v4 = 0x100000000;
      }

      else
      {
        v4 = v17 | v16;
      }

      xpc_release(v22);
      if (theData)
      {
        CFRelease(theData);
      }
    }

    else
    {
      v4 = 4294967246;
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_2372506E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, xpc_object_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, __int128 a23)
{
  if (a2)
  {
    __cxa_free_exception(v23);
    applesauce::CF::DataRef::~DataRef(&a12);
    if (a18 < 0)
    {
      operator delete(__p);
    }

    v26 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v27 = v26;
      gMIDIClientLog();
      v28 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
      {
        v29 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315650;
        *(&buf + 4) = "XPCClient.hpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 27;
        WORD1(a23) = 2080;
        *(&a23 + 4) = v29;
        _os_log_impl(&dword_2371C2000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d std::runtime_error in API call: %s", &buf, 0x1Cu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2372505C0);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDIObjectGetDictionaryProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, CFTypeRef *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, cfa);
    v7 = cfa;
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (gInMIDIServer)
    {
      v8 = 0;
    }

    else
    {
      v8 = MIDIProcess::defaultInstance(v7);
    }

    v9 = *((*(*v8 + 8))(v8) + 464);
    if (v25 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    swix::string::string(&value, v10);
    swix::encode_message::encode_message(&cfa, 190206346);
    xpc_dictionary_set_uint64(xdict, "object", a2);
    xpc_dictionary_set_value(xdict, "propertyID", value);
    v11 = *(v9 + 8);
    if (!v11)
    {
      std::terminate();
    }

    swix::connection::send_and_await_reply(&v29, v11, &cfa);
    v12 = swix::decode_message::decode<int>(object, ".error");
    if (v12)
    {
      LODWORD(v22) = v12;
      v23 = 0;
    }

    else
    {
      v13 = xpc_null_create();
      swix::xpcobj_coder<swix::data>::decode(&v26, object, "value");
      v14 = v26;
      v15 = xpc_null_create();
      v26 = v15;
      xpc_release(v13);
      xpc_release(v15);
      swix::result<swix::data>::result(&v22, v14);
      xpc_release(v14);
    }

    xpc_release(object);
    xpc_release(xdict);
    xpc_release(value);
    if ((v23 & 1) != 0 || (v4 = v22, !v22))
    {
      v16 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v16 = xpc_null_create();
      }

      bytes_ptr = xpc_data_get_bytes_ptr(v16);
      length = xpc_data_get_length(v16);
      applesauce::CF::make_DataRef(&v29, bytes_ptr, length);
      applesauce::CF::make_DictionaryRef(&cfa, v29);
      *a4 = cfa;
      if (v29)
      {
        CFRelease(v29);
      }

      xpc_release(v16);
      if (v23)
      {
        xpc_release(v22);
      }

      v4 = 0;
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_237250BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint8_t buf, xpc_object_t object, __int16 a24, __int16 a25, uint64_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t XPCClient::MIDIObjectSetDataProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, const __CFData *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  result = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, cfa);
    if (cfa)
    {
      CFRelease(cfa);
    }

    BytePtr = CFDataGetBytePtr(a4);
    Length = CFDataGetLength(a4);
    v9 = swix::data::data(&v18, BytePtr, Length);
    if (gInMIDIServer)
    {
      v10 = 0;
    }

    else
    {
      v10 = MIDIProcess::defaultInstance(v9);
    }

    v11 = *((*(*v10 + 8))(v10) + 464);
    if (v20 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    swix::string::string(&value, v12);
    swix::encode_message::encode_message(&cfa, 190206343);
    xpc_dictionary_set_uint64(xdict, "object", a2);
    xpc_dictionary_set_value(xdict, "propertyID", value);
    xpc_dictionary_set_value(xdict, "value", v18);
    v13 = *(v11 + 8);
    if (!v13)
    {
      std::terminate();
    }

    swix::connection::send_and_await_reply(v23, v13, &cfa);
    v14 = swix::decode_message::decode<int>(object, ".error");
    xpc_release(object);
    xpc_release(xdict);
    xpc_release(value);
    xpc_release(v18);
    v15 = ((v14 == 0) << 32) | v14;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 >= 0x100000000)
    {
      return 0x100000000;
    }

    else
    {
      return v15;
    }
  }

  return result;
}

void sub_23725103C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, xpc_object_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, __int128 buf, __int128 a18)
{
  if (a2)
  {
    __cxa_free_exception(v18);
    applesauce::CF::StringRef::~StringRef(&a14);
    v21 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v22 = v21;
      gMIDIClientLog();
      v23 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
      {
        v24 = (*(*v22 + 16))(v22);
        LODWORD(buf) = 136315650;
        *(&buf + 4) = "XPCClient.hpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 27;
        WORD1(a18) = 2080;
        *(&a18 + 4) = v24;
        _os_log_impl(&dword_2371C2000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d std::runtime_error in API call: %s", &buf, 0x1Cu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x237250FCCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t XPCClient::MIDIObjectGetDataProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, const __CFData **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, cfa);
    v7 = cfa;
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (gInMIDIServer)
    {
      v8 = 0;
    }

    else
    {
      v8 = MIDIProcess::defaultInstance(v7);
    }

    v9 = *((*(*v8 + 8))(v8) + 464);
    if (v25 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    swix::string::string(&value, v10);
    swix::encode_message::encode_message(&cfa, 190206344);
    xpc_dictionary_set_uint64(xdict, "object", a2);
    xpc_dictionary_set_value(xdict, "propertyID", value);
    v11 = *(v9 + 8);
    if (!v11)
    {
      std::terminate();
    }

    swix::connection::send_and_await_reply(&v29, v11, &cfa);
    v12 = swix::decode_message::decode<int>(object, ".error");
    if (v12)
    {
      LODWORD(v22) = v12;
      v23 = 0;
    }

    else
    {
      v13 = xpc_null_create();
      swix::xpcobj_coder<swix::data>::decode(&v26, object, "value");
      v14 = v26;
      v15 = xpc_null_create();
      v26 = v15;
      xpc_release(v13);
      xpc_release(v15);
      swix::result<swix::data>::result(&v22, v14);
      xpc_release(v14);
    }

    xpc_release(object);
    xpc_release(xdict);
    xpc_release(value);
    if ((v23 & 1) != 0 || (v4 = v22, !v22))
    {
      v16 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v16 = xpc_null_create();
      }

      bytes_ptr = xpc_data_get_bytes_ptr(v16);
      length = xpc_data_get_length(v16);
      applesauce::CF::make_DataRef(&v29, bytes_ptr, length);
      *a4 = v29;
      xpc_release(v16);
      if (v23)
      {
        xpc_release(v22);
      }

      v4 = 0;
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_2372514A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint8_t buf, xpc_object_t object, __int16 a24, __int16 a25, uint64_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t XPCClient::MIDIObjectSetStringProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, const __CFString *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  result = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(v21, cfa);
    if (cfa)
    {
      CFRelease(cfa);
    }

    applesauce::CF::StringRef::from_get(&v25, a4);
    if (!v25)
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v16, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, v25);
    v7 = v25;
    if (v25)
    {
      CFRelease(v25);
    }

    if (gInMIDIServer)
    {
      v8 = 0;
    }

    else
    {
      v8 = MIDIProcess::defaultInstance(v7);
    }

    v9 = *((*(*v8 + 8))(v8) + 464);
    if (v22 >= 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = v21[0];
    }

    swix::string::string(&value, v10);
    if (v20 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    swix::string::string(&object, v11);
    swix::encode_message::encode_message(&cfa, 190206341);
    xpc_dictionary_set_uint64(xdict, "object", a2);
    xpc_dictionary_set_value(xdict, "propertyID", value);
    xpc_dictionary_set_value(xdict, "value", object);
    v12 = *(v9 + 8);
    if (!v12)
    {
      std::terminate();
    }

    swix::connection::send_and_await_reply(&v25, v12, &cfa);
    v13 = swix::decode_message::decode<int>(v26, ".error");
    xpc_release(v26);
    xpc_release(xdict);
    xpc_release(object);
    xpc_release(value);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = ((v13 == 0) << 32) | v13;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v14 >= 0x100000000)
    {
      return 0x100000000;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

void sub_237251944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a2)
  {
    __cxa_free_exception(v24);
    applesauce::CF::StringRef::~StringRef((v25 - 80));
    if (a23 < 0)
    {
      operator delete(__p);
    }

    v28 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v29 = v28;
      gMIDIClientLog();
      v30 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
      {
        v31 = (*(*v29 + 16))(v29);
        *(v25 - 80) = 136315650;
        *(v25 - 76) = "XPCClient.hpp";
        *(v25 - 68) = 1024;
        *(v25 - 66) = 27;
        *(v25 - 62) = 2080;
        *(v25 - 60) = v31;
        _os_log_impl(&dword_2371C2000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d std::runtime_error in API call: %s", (v25 - 80), 0x1Cu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x237251898);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XPCClient::MIDIObjectGetStringProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, const __CFString **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = 4294967246;
  if (!cf || !a4)
  {
    return v4;
  }

  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(v26, cfa);
  v7 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (gInMIDIServer)
  {
    v8 = 0;
  }

  else
  {
    v8 = MIDIProcess::defaultInstance(v7);
  }

  v9 = *((*(*v8 + 8))(v8) + 464);
  if (v27 >= 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v26[0];
  }

  swix::string::string(&value, v10);
  swix::encode_message::encode_message(&cfa, 190206342);
  xpc_dictionary_set_uint64(xdict, "object", a2);
  xpc_dictionary_set_value(xdict, "propertyID", value);
  v11 = *(v9 + 8);
  if (!v11)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&__p, v11, &cfa);
  v12 = swix::decode_message::decode<int>(object, ".error");
  v13 = v12 == 0;
  if (v12)
  {
    v4 = v12;
  }

  else
  {
    v14 = xpc_null_create();
    swix::xpcobj_coder<swix::string>::decode(&v28, object, "value");
    v15 = v28;
    v16 = xpc_null_create();
    v28 = v16;
    xpc_release(v14);
    xpc_release(v16);
    if (v15)
    {
      xpc_retain(v15);
      v4 = v15;
    }

    else
    {
      v4 = xpc_null_create();
    }

    xpc_release(v15);
  }

  xpc_release(object);
  xpc_release(xdict);
  xpc_release(value);
  if (v4)
  {
    v17 = v13;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    std::string::basic_string[abi:ne200100]<0>(&__p, string_ptr);
    if ((v33 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (p_p)
    {
      if ((v33 & 0x80u) == 0)
      {
        v20 = v33;
      }

      else
      {
        v20 = object;
      }

      v21 = CFStringCreateWithBytes(0, p_p, v20, 0x8000100u, 0);
      cfa = v21;
      if (!v21)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v24, "Could not construct");
      }

      if ((v33 & 0x80) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = 0;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_33;
      }
    }

    operator delete(__p);
LABEL_33:
    *a4 = v21;
    if (v13)
    {
      xpc_release(v4);
    }

    v4 = 0;
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  return v4;
}

void sub_237251E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, __int128 __p, __int128 a21)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
    if (SBYTE7(a21) < 0)
    {
      operator delete(__p);
    }

    if (v22)
    {
      xpc_release(v21);
    }

    if (a15 < 0)
    {
      operator delete(a10);
    }

    v25 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v26 = v25;
      gMIDIClientLog();
      v27 = gMIDIClientLog(void)::clilib;
      if (os_log_type_enabled(gMIDIClientLog(void)::clilib, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v26 + 16))(v26);
        LODWORD(__p) = 136315650;
        *(&__p + 4) = "XPCClient.hpp";
        WORD6(__p) = 1024;
        *(&__p + 14) = 27;
        WORD1(a21) = 2080;
        *(&a21 + 4) = v28;
        _os_log_impl(&dword_2371C2000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d std::runtime_error in API call: %s", &__p, 0x1Cu);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x237251DC0);
  }

  _Unwind_Resume(exception_object);
}

unint64_t XPCClient::MIDIObjectSetIntegerProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    return 4294967246;
  }

  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v6 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (gInMIDIServer)
  {
    v7 = 0;
  }

  else
  {
    v7 = MIDIProcess::defaultInstance(v6);
  }

  v8 = *((*(*v7 + 8))(v7) + 464);
  if (v17 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  swix::string::string(&value, v9);
  swix::encode_message::encode_message(&cfa, 190206339);
  xpc_dictionary_set_uint64(xdict, "object", a2);
  xpc_dictionary_set_value(xdict, "propertyID", value);
  xpc_dictionary_set_int64(xdict, "value", a4);
  v10 = *(v8 + 8);
  if (!v10)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(buf, v10, &cfa);
  v11 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  xpc_release(value);
  v12 = ((v11 == 0) << 32) | v11;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v12;
  }
}

uint64_t XPCClient::MIDIObjectGetIntegerProperty(XPCClient *this, unsigned int a2, CFTypeRef cf, int *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = 4294967246;
  if (cf && a4)
  {
    applesauce::CF::StringRef::from_get(&cfa, cf);
    if (!cfa)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(__p, cfa);
    v7 = cfa;
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (gInMIDIServer)
    {
      v8 = 0;
    }

    else
    {
      v8 = MIDIProcess::defaultInstance(v7);
    }

    v9 = *((*(*v8 + 8))(v8) + 464);
    if (v18 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    swix::string::string(&value, v10);
    swix::encode_message::encode_message(&cfa, 190206340);
    xpc_dictionary_set_uint64(xdict, "object", a2);
    xpc_dictionary_set_value(xdict, "propertyID", value);
    v11 = *(v9 + 8);
    if (!v11)
    {
      std::terminate();
    }

    swix::connection::send_and_await_reply(v21, v11, &cfa);
    v12 = swix::decode_message::decode<int>(object, ".error");
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v12 = swix::decode_message::decode<int>(object, "value");
      v13 = 0x100000000;
    }

    xpc_release(object);
    xpc_release(xdict);
    xpc_release(value);
    v4 = v12 | v13;
    if (HIDWORD(v13) || !v4)
    {
      *a4 = v4;
      v4 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4;
}

void sub_237252674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint8_t buf, xpc_object_t object, __int16 a22, __int16 a23, uint64_t a24)
{
  if (a2)
  {
    xpc_release(object);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2372525C8);
  }

  _Unwind_Resume(exception_object);
}

unint64_t XPCClient::MIDIEndpointDispose(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206333);
  xpc_dictionary_set_uint64(xdict, "endpointRef", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_237252910(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372528D8);
}

uint64_t XPCClient::MIDISourceCreateWithProtocol(XPCClient *this, unsigned int a2, CFTypeRef cf, MIDIProtocolID a4, unsigned int *a5)
{
  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v8 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  v9 = MIDIProcess::defaultInstance(v8);
  v10 = *((*(*v9 + 8))(v9) + 464);
  if (v20 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  swix::string::string(&value, v11);
  swix::encode_message::encode_message(&v23, 190206331);
  xpc_dictionary_set_uint64(v24, "client", a2);
  xpc_dictionary_set_value(v24, "name", value);
  xpc_dictionary_set_int64(v24, "proto", a4);
  v12 = *(v10 + 8);
  if (!v12)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cfa, v12, &v23);
  v13 = swix::decode_message::decode<int>(object, ".error");
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v13 = swix::decode_message::decode<unsigned int>(object, "sourceRef");
    v14 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v24);
  xpc_release(value);
  v15 = v13 | v14;
  if (HIDWORD(v14) || !v15)
  {
    *a5 = v15;
    v15 = 0;
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_237252B28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237252A98);
}

void sub_237252BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t XPCClient::MIDIPortDisconnectSource(XPCClient *this, unsigned int a2, unsigned int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((*(*v5 + 8))(v5) + 464);
  swix::encode_message::encode_message(&v13, 190206338);
  xpc_dictionary_set_uint64(xdict, "port", a2);
  xpc_dictionary_set_uint64(xdict, "source", a3);
  v7 = *(v6 + 8);
  if (!v7)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v11, v7, &v13);
  v8 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v9 = (v8 == 0) << 32;
  xpc_release(xdict);
  if ((v9 | v8) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v9 | v8;
  }
}

void sub_237252CCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237252C90);
}

unint64_t XPCClient::MIDIPortConnectSource(XPCClient *this, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((*(*v7 + 8))(v7) + 464);
  bytes = a4;
  swix::encode_message::encode_message(&v15, 190206337);
  xpc_dictionary_set_uint64(xdict, "port", a2);
  xpc_dictionary_set_uint64(xdict, "source", a3);
  xpc_dictionary_set_data(xdict, "connRefCon", &bytes, 8uLL);
  v9 = *(v8 + 8);
  if (!v9)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v13, v9, &v15);
  v10 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v11 = (v10 == 0) << 32;
  xpc_release(xdict);
  if ((v11 | v10) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v11 | v10;
  }
}

void sub_237252E3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237252E00);
}

unint64_t XPCClient::MIDIPortDispose(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206336);
  xpc_dictionary_set_uint64(xdict, "portRef", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_237252F6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237252F34);
}

uint64_t XPCClient::MIDIOutputPortCreate(XPCClient *this, unsigned int a2, CFTypeRef cf, unsigned int *a4)
{
  applesauce::CF::StringRef::from_get(&cfa, cf);
  if (!cfa)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cfa);
  v6 = cfa;
  if (cfa)
  {
    CFRelease(cfa);
  }

  v7 = MIDIProcess::defaultInstance(v6);
  v8 = *((*(*v7 + 8))(v7) + 464);
  if (v18 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  swix::string::string(&value, v9);
  swix::encode_message::encode_message(&v21, 190206335);
  xpc_dictionary_set_uint64(v22, "client", a2);
  xpc_dictionary_set_value(v22, "name", value);
  v10 = *(v8 + 8);
  if (!v10)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cfa, v10, &v21);
  v11 = swix::decode_message::decode<int>(object, ".error");
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v11 = swix::decode_message::decode<unsigned int>(object, "portRef");
    v12 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v22);
  xpc_release(value);
  v13 = v11 | v12;
  if (HIDWORD(v12) || !v13)
  {
    *a4 = v13;
    v13 = 0;
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_23725316C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372530DCLL);
}

void sub_2372531F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t XPCClient::MIDIClientDispose(XPCClient *this, unsigned int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((*(*v3 + 8))(v3) + 464);
  swix::encode_message::encode_message(&v11, 190206328);
  xpc_dictionary_set_uint64(xdict, "client", a2);
  v5 = *(v4 + 8);
  if (!v5)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v5, &v11);
  v6 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  v7 = (v6 == 0) << 32;
  xpc_release(xdict);
  if ((v7 | v6) >= 0x100000000)
  {
    return 0x100000000;
  }

  else
  {
    return v7 | v6;
  }
}

void sub_2372532F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2372532B8);
}

uint64_t XPCClient::MIDIClientCreateWithBlock(XPCClient *this, const __CFString *a2, unsigned int *a3)
{
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::convert_to<std::string,0>(__p, cf);
  v4 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  v5 = MIDIProcess::defaultInstance(v4);
  v6 = *((*(*v5 + 8))(v5) + 464);
  if (v16 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  swix::string::string(&value, v7);
  swix::encode_message::encode_message(&v19, 190206327);
  xpc_dictionary_set_value(v20, "name", value);
  v8 = *(v6 + 8);
  if (!v8)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&cf, v8, &v19);
  v9 = swix::decode_message::decode<int>(object, ".error");
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v9 = swix::decode_message::decode<unsigned int>(object, "client");
    v10 = 0x100000000;
  }

  xpc_release(object);
  xpc_release(v20);
  xpc_release(value);
  v11 = v9 | v10;
  if (HIDWORD(v10) || !v11)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2372534D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237253444);
}

void sub_237253560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MIGClient::UMPCIServerSideMIDICITransaction(MIGClient *this, const __CFDictionary *a2, const UInt8 **a3)
{
  LODWORD(v15) = 0;
  v16 = 0;
  v4 = IPCBufferWriter::write(&v15, a2, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v6 = MIDIProcess::defaultInstance(v4);
    v7 = *((**v6)(v6) + 468);
    *&v22[8] = 0u;
    memset(&msg.msgh_size, 0, 20);
    v19 = 1;
    v20 = v16;
    v21 = 16777472;
    *v22 = v17;
    *&v22[4] = *MEMORY[0x277D85EF8];
    *&v22[12] = v17;
    reply_port = mig_get_reply_port();
    msg.msgh_remote_port = v7;
    msg.msgh_local_port = reply_port;
    msg.msgh_bits = -2147478253;
    *&msg.msgh_voucher_port = 0x1F7100000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v10 = mach_msg(&msg, 275, 0x38u, 0x40u, msgh_local_port, 0x493E0u, 0);
    v5 = v10;
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v10)
      {
        if (msg.msgh_id == 71)
        {
          v13 = 4294966988;
        }

        else if (msg.msgh_id == 8149)
        {
          if ((msg.msgh_bits & 0x80000000) == 0)
          {
            if (msg.msgh_size == 36)
            {
              v13 = 4294966996;
              if (HIDWORD(v20))
              {
                if (msg.msgh_remote_port)
                {
                  v13 = 4294966996;
                }

                else
                {
                  v13 = HIDWORD(v20);
                }
              }
            }

            else
            {
              v13 = 4294966996;
            }

            goto LABEL_32;
          }

          v13 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v11 = *v22;
            if (*v22 == *&v22[12])
            {
              v12 = v20;
LABEL_22:
              *&msg.msgh_bits = v12;
              msg.msgh_remote_port = v11;
              msg.msgh_local_port = 1;
              *&msg.msgh_voucher_port = 0;
              *a3 = IPCBufferReader::ReadCFPropertyList(&msg, 1);
              IPCBufferReader::~IPCBufferReader(&msg);
              v5 = 0;
              goto LABEL_33;
            }
          }
        }

        else
        {
          v13 = 4294966995;
        }

LABEL_32:
        mach_msg_destroy(&msg);
        v5 = v13;
        goto LABEL_33;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v13 = 268435460;
    if (v5 == 268435460)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
      }

      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_22;
    }
  }

LABEL_33:
  IPCBufferWriter::~IPCBufferWriter(&v15);
  return v5;
}

void sub_23725381C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IPCBufferReader::~IPCBufferReader(va1);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::UMPCIDiscover(MIGClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((**v1)(v1) + 468);
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F7000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x24u, 0x2Cu, v4, 0x493E0u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 8148)
      {
        v7 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v7 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v7 = 268435460;
  if (v6 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t MIGClient::UMPCIGlobalState(MIGClient *this, const UInt8 **a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  memset(&msg_16[4], 0, 44);
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  msg_12 = reply_port;
  *msg = 5395;
  *msg_16 = 0x1F6F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = msg_12;
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x18u, 0x40u, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg_12);
  }

  else
  {
    if (!v7)
    {
      if (*&msg_16[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg_16[4] == 8147)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg_16[16])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg_16[16];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_30;
        }

        v11 = 4294966996;
        if (*&msg_16[8] == 1 && *&msg[4] == 56 && msg_16[23] == 1)
        {
          v9 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v10 = *&msg_16[12];
LABEL_21:
            *msg = v10;
            *&msg[8] = v9;
            msg_12 = 1;
            *msg_16 = 0;
            *a2 = IPCBufferReader::ReadCFPropertyList(msg, 1);
            IPCBufferReader::~IPCBufferReader(msg);
            return 0;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(msg_12);
  }

  v11 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg_12);
    }

    goto LABEL_30;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_237253C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::UMPCIObjectSetEnableState(MIGClient *this, int a2, int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((**v5)(v5) + 468);
  *&msg[20] = 0u;
  v14 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  LODWORD(v14) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 275, 0x28u, 0x2Cu, v8, 0x493E0u, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 8146)
      {
        v11 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v11 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v11 = 268435460;
  if (v10 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v10;
}

uint64_t MIGClient::UMPCIObjectSetDescription(MIGClient *this, int a2, const __CFDictionary *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  LODWORD(v13) = 0;
  v14 = 0;
  v4 = IPCBufferWriter::write(&v13, a3, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v6 = MIDIProcess::defaultInstance(v4);
    v7 = *((**v6)(v6) + 468);
    v17 = 1;
    v18 = v14;
    v19 = 16777472;
    v20 = v15;
    v21 = *MEMORY[0x277D85EF8];
    v22 = a2;
    v23 = v15;
    reply_port = mig_get_reply_port();
    *&msg.msgh_bits = 2147489043;
    msg.msgh_remote_port = v7;
    msg.msgh_local_port = reply_port;
    *&msg.msgh_voucher_port = 0x1F6D00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v10 = mach_msg(&msg, 275, 0x3Cu, 0x2Cu, msgh_local_port, 0x493E0u, 0);
    v5 = v10;
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v10)
      {
        if (msg.msgh_id == 71)
        {
          v11 = 4294966988;
        }

        else if (msg.msgh_id == 8145)
        {
          v11 = 4294966996;
          if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
          {
            v11 = HIDWORD(v18);
            if (!HIDWORD(v18))
            {
              v5 = 0;
              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 4294966995;
        }

LABEL_22:
        mach_msg_destroy(&msg);
        v5 = v11;
        goto LABEL_23;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v11 = 268435460;
    if (v5 == 268435460)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  IPCBufferWriter::~IPCBufferWriter(&v13);
  return v5;
}

uint64_t MIGClient::UMPCIObjectDispose(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8144)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::UMPCIObjectCreate(int a1, int a2, void *a3, int *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v15) = 0;
  v16 = 0;
  v6 = IPCBufferWriter::write(&v15, a3, 0, 0);
  v7 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = MIDIProcess::defaultInstance(v6);
  v10 = *((**v9)(v9) + 468);
  v19 = 1;
  v20 = v16;
  v21 = 16777472;
  v22 = v17;
  v23 = *MEMORY[0x277D85EF8];
  v24 = a2;
  v25 = v17;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = v10;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x1F6B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 275, 0x3Cu, 0x30u, msgh_local_port, 0x493E0u, 0);
  v7 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    goto LABEL_22;
  }

  if (!v13)
  {
    if (msg.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (msg.msgh_id == 8143)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v7 = HIDWORD(v20);
            if (!HIDWORD(v20))
            {
              *a4 = v21;
              goto LABEL_2;
            }

            goto LABEL_30;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = HIDWORD(v20) == 0;
          }

          if (v14)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = HIDWORD(v20);
          }

          goto LABEL_30;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(&msg);
    goto LABEL_2;
  }

  mig_dealloc_reply_port(msg.msgh_local_port);
LABEL_22:
  if (v7 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
    v7 = 268435460;
  }

LABEL_2:
  IPCBufferWriter::~IPCBufferWriter(&v15);
  return v7;
}

uint64_t MIGClient::MIDIDestinationCreateInternal(MIGClient *this, int a2, CFStringRef theString, MIDIProtocolID a4, unsigned int *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  LODWORD(v19[0]) = 0;
  v19[1] = 0;
  v8 = IPCBufferWriter::write(v19, theString, 0, 0);
  v9 = v8;
  if (v8)
  {
    goto LABEL_32;
  }

  v10 = MIDIProcess::defaultInstance(v8);
  v11 = *((**v10)(v10) + 468);
  v12 = v20;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v22) = a2;
  if (v20 > 0x200)
  {
    v9 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v22) = v12;
  v13 = (v12 + 3) & 0x7FC;
  *&msg[v13 + 40] = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v11);
  *msg = 5395;
  *&msg[16] = 0x1F4A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v15 = *&msg[12];
  }

  else
  {
    v15 = reply_port;
  }

  v16 = mach_msg(msg, 275, v13 + 44, 0x30u, v15, 0x493E0u, 0);
  v9 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v16)
  {
    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 8110)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v9 = v22;
            if (!v22)
            {
              *a5 = DWORD1(v22);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v17 = 1;
          }

          else
          {
            v17 = v22 == 0;
          }

          if (v17)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v22;
          }

          goto LABEL_31;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v9 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v9 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v19);
  return v9;
}

void sub_2372547A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIInputPortCreateInternal(MIGClient *this, int a2, CFStringRef theString, MIDIProtocolID a4, unsigned int *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  LODWORD(v19[0]) = 0;
  v19[1] = 0;
  v8 = IPCBufferWriter::write(v19, theString, 0, 0);
  v9 = v8;
  if (v8)
  {
    goto LABEL_32;
  }

  v10 = MIDIProcess::defaultInstance(v8);
  v11 = *((**v10)(v10) + 468);
  v12 = v20;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v22) = a2;
  if (v20 > 0x200)
  {
    v9 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v22) = v12;
  v13 = (v12 + 3) & 0x7FC;
  *&msg[v13 + 40] = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v11);
  *msg = 5395;
  *&msg[16] = 0x1F4400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v15 = *&msg[12];
  }

  else
  {
    v15 = reply_port;
  }

  v16 = mach_msg(msg, 275, v13 + 44, 0x30u, v15, 0x493E0u, 0);
  v9 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v16)
  {
    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 8104)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v9 = v22;
            if (!v22)
            {
              *a5 = DWORD1(v22);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v17 = 1;
          }

          else
          {
            v17 = v22 == 0;
          }

          if (v17)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v22;
          }

          goto LABEL_31;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v9 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v9 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v19);
  return v9;
}

void sub_237254A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDISetupFromData_Priv(MIGClient *this, const __CFData *a2, unsigned int *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  LODWORD(v13) = 0;
  v14 = 0;
  v4 = IPCBufferWriter::write(&v13, a2, 0, 0);
  v5 = v4;
  if (v4)
  {
    goto LABEL_2;
  }

  v7 = MIDIProcess::defaultInstance(v4);
  v8 = *((**v7)(v7) + 468);
  v17 = 1;
  v18 = v14;
  v19 = 16777472;
  v20 = v15;
  v21 = *MEMORY[0x277D85EF8];
  v22 = v15;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = v8;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x1F5B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&msg, 275, 0x38u, 0x30u, msgh_local_port, 0x493E0u, 0);
  v5 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    goto LABEL_22;
  }

  if (!v11)
  {
    if (msg.msgh_id == 71)
    {
      v5 = 4294966988;
    }

    else if (msg.msgh_id == 8127)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v5 = HIDWORD(v18);
            if (!HIDWORD(v18))
            {
              *a3 = v19;
              goto LABEL_2;
            }

            goto LABEL_30;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = HIDWORD(v18) == 0;
          }

          if (v12)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = HIDWORD(v18);
          }

          goto LABEL_30;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(&msg);
    goto LABEL_2;
  }

  mig_dealloc_reply_port(msg.msgh_local_port);
LABEL_22:
  if (v5 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
    v5 = 268435460;
  }

LABEL_2:
  IPCBufferWriter::~IPCBufferWriter(&v13);
  return v5;
}

void sub_237254D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDISetupInstall_Priv(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F5C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8128)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDISetupGetCurrent_Priv(MIGClient *this, unsigned int *a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v5 = mig_get_reply_port();
  reply_port_4 = v4;
  reply_port_8 = v5;
  v11 = 5395;
  *reply_port_12 = 0x1F5D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = reply_port_8;
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(&v11, 275, 0x18u, 0x30u, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
    goto LABEL_20;
  }

  if (!v7)
  {
    if (*&reply_port_12[4] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&reply_port_12[4] == 8129)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v8 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v8;
            }

            goto LABEL_28;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v9 = 1;
          }

          else
          {
            v9 = *&reply_port_12[16] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&reply_port_12[16];
          }

          goto LABEL_28;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_dealloc_reply_port(reply_port_8);
LABEL_20:
  if (v8 == 268435460)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port_8);
    }

    mach_msg_destroy(&v11);
    return 268435460;
  }

  return v8;
}

uint64_t MIGClient::MIDISetupCreate_Priv(MIGClient *this, unsigned int *a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v5 = mig_get_reply_port();
  reply_port_4 = v4;
  reply_port_8 = v5;
  v11 = 5395;
  *reply_port_12 = 0x1F5A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = reply_port_8;
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(&v11, 275, 0x18u, 0x30u, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
    goto LABEL_20;
  }

  if (!v7)
  {
    if (*&reply_port_12[4] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&reply_port_12[4] == 8126)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v8 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v8;
            }

            goto LABEL_28;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v9 = 1;
          }

          else
          {
            v9 = *&reply_port_12[16] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&reply_port_12[16];
          }

          goto LABEL_28;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_dealloc_reply_port(reply_port_8);
LABEL_20:
  if (v8 == 268435460)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port_8);
    }

    mach_msg_destroy(&v11);
    return 268435460;
  }

  return v8;
}

uint64_t MIGClient::MIDIThruConnectionFind(MIGClient *this, const __CFString *a2, const __CFData **a3)
{
  v47 = *MEMORY[0x277D85DE8];
  LODWORD(v15[0]) = 0;
  v15[1] = 0;
  v4 = IPCBufferWriter::write(v15, a2, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v6 = MIDIProcess::defaultInstance(v4);
    v7 = *((**v6)(v6) + 468);
    v8 = v16;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
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
    v22 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[1].msgh_bits = *MEMORY[0x277D85EF8];
    if (v16 > 0x200)
    {
      msgh_remote_port = 4294966989;
LABEL_32:
      v5 = msgh_remote_port;
      goto LABEL_33;
    }

    __memcpy_chk();
    msg[1].msgh_remote_port = v8;
    v10 = (v8 + 3) & 0x7FC;
    reply_port = mig_get_reply_port();
    *&msg[0].msgh_remote_port = __PAIR64__(reply_port, v7);
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x1F6800000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v13 = mach_msg(msg, 275, v10 + 36, 0x40u, msgh_local_port, 0x493E0u, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
    }

    else
    {
      if (!v13)
      {
        if (msg[0].msgh_id == 71)
        {
          msgh_remote_port = 4294966988;
        }

        else if (msg[0].msgh_id == 8140)
        {
          if ((msg[0].msgh_bits & 0x80000000) == 0)
          {
            if (msg[0].msgh_size == 36)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_remote_port)
              {
                if (msg[0].msgh_remote_port)
                {
                  msgh_remote_port = 4294966996;
                }

                else
                {
                  msgh_remote_port = msg[1].msgh_remote_port;
                }
              }
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_31;
          }

          msgh_remote_port = 4294966996;
          if (msg[1].msgh_bits == 1 && *&msg[0].msgh_size == 56 && HIBYTE(msg[1].msgh_local_port) == 1 && msg[1].msgh_voucher_port == DWORD1(v18))
          {
            *&msg[0].msgh_bits = *&msg[1].msgh_size;
            *&msg[0].msgh_remote_port = msg[1].msgh_voucher_port | 0x100000000;
            *&msg[0].msgh_voucher_port = 0;
            *a3 = CFDataCreate(0, *&msg[1].msgh_size, msg[1].msgh_voucher_port);
            IPCBufferReader::~IPCBufferReader(msg);
            v5 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          msgh_remote_port = 4294966995;
        }

LABEL_31:
        mach_msg_destroy(msg);
        goto LABEL_32;
      }

      mig_dealloc_reply_port(msg[0].msgh_local_port);
    }

    msgh_remote_port = 268435460;
    if (v5 == 268435460)
    {
      if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg[0].msgh_local_port);
      }

      goto LABEL_31;
    }
  }

LABEL_33:
  IPCBufferWriter::~IPCBufferWriter(v15);
  return v5;
}

void sub_237255580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IPCBufferReader::~IPCBufferReader(va1);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIThruConnectionSetParams(MIGClient *this, int a2, CFDataRef theData)
{
  v24 = *MEMORY[0x277D85DE8];
  LODWORD(v13) = 0;
  v14 = 0;
  v4 = IPCBufferWriter::write(&v13, theData, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v6 = MIDIProcess::defaultInstance(v4);
    v7 = *((**v6)(v6) + 468);
    v17 = 1;
    v18 = v14;
    v19 = 16777472;
    v20 = v15;
    v21 = *MEMORY[0x277D85EF8];
    v22 = a2;
    v23 = v15;
    reply_port = mig_get_reply_port();
    *&msg.msgh_bits = 2147489043;
    msg.msgh_remote_port = v7;
    msg.msgh_local_port = reply_port;
    *&msg.msgh_voucher_port = 0x1F6700000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v10 = mach_msg(&msg, 275, 0x3Cu, 0x2Cu, msgh_local_port, 0x493E0u, 0);
    v5 = v10;
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v10)
      {
        if (msg.msgh_id == 71)
        {
          v11 = 4294966988;
        }

        else if (msg.msgh_id == 8139)
        {
          v11 = 4294966996;
          if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
          {
            v11 = HIDWORD(v18);
            if (!HIDWORD(v18))
            {
              v5 = 0;
              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 4294966995;
        }

LABEL_22:
        mach_msg_destroy(&msg);
        v5 = v11;
        goto LABEL_23;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v11 = 268435460;
    if (v5 == 268435460)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  IPCBufferWriter::~IPCBufferWriter(&v13);
  return v5;
}

uint64_t MIGClient::MIDIThruConnectionGetParams(MIGClient *this, int a2, const __CFData **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((**v5)(v5) + 468);
  memset(&msg[20], 0, 44);
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 275, 0x24u, 0x40u, v8, 0x493E0u, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 8138)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_29;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && msg[39] == 1 && *&msg[40] == *&msg[52])
        {
          *msg = *&msg[28];
          *&msg[8] = *&msg[40];
          *&msg[12] = 1;
          *&msg[16] = 0;
          *a3 = CFDataCreate(0, *&msg[28], *&msg[40]);
          IPCBufferReader::~IPCBufferReader(msg);
          return 0;
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v11 = 268435460;
  if (v10 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v10;
}

void sub_237255A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIThruConnectionDispose(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8137)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDIThruConnectionCreate(MIGClient *this, const __CFString *a2, CFDataRef theData, unsigned int *a4)
{
  LODWORD(v17) = 0;
  v18 = 0;
  v6 = IPCBufferWriter::write(&v17, theData, 0, 0);
  v7 = v6;
  if (!v6)
  {
    if (a2)
    {
      LODWORD(v14) = 0;
      v15 = 0;
      v8 = IPCBufferWriter::write(&v14, a2, 0, 0);
      v7 = v8;
      if (!v8)
      {
        v9 = MIDIProcess::defaultInstance(v8);
        v10 = (**v9)(v9);
        v7 = MIDIClient_ThruConnectionCreate(*(v10 + 468), v15, v16, v18, v19, a4);
      }

      IPCBufferWriter::~IPCBufferWriter(&v14);
    }

    else
    {
      v11 = MIDIProcess::defaultInstance(v6);
      v12 = (**v11)(v11);
      v7 = MIDIClient_ThruConnectionCreate(*(v12 + 468), 0, 0, v18, v19, a4);
    }
  }

  IPCBufferWriter::~IPCBufferWriter(&v17);
  return v7;
}

void sub_237255D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  IPCBufferWriter::~IPCBufferWriter(&a9);
  IPCBufferWriter::~IPCBufferWriter(&a12);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDISetupRemoveDevice(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);

  return MIDIClient_SetupRemoveDevice(v4, a2, 0);
}

uint64_t MIGClient::MIDISetupAddDevice(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);

  return MIDIClient_SetupAddDevice(v4, a2, 0);
}

uint64_t MIGClient::MIDISetupRemoveExternalDevice(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);

  return MIDIClient_SetupRemoveDevice(v4, a2, 1);
}

uint64_t MIGClient::MIDISetupAddExternalDevice(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);

  return MIDIClient_SetupAddDevice(v4, a2, 1);
}

uint64_t MIGClient::MIDIEntityAddOrRemoveEndpoints(MIGClient *this, unsigned int a2, int a3, int a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((**v7)(v7) + 468);
  v16 = *MEMORY[0x277D85EF8];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 5395;
  v15.msgh_remote_port = v8;
  v15.msgh_local_port = reply_port;
  *&v15.msgh_voucher_port = 0x1F6100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&v15, 275, 0x2Cu, 0x2Cu, msgh_local_port, 0x493E0u, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
  }

  else
  {
    if (!v11)
    {
      if (v15.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v15.msgh_id == 8133)
      {
        v13 = 4294966996;
        if ((v15.msgh_bits & 0x80000000) == 0 && *&v15.msgh_size == 36)
        {
          v13 = v17;
          if (!v17)
          {
            return 0;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v15);
      return v13;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  v13 = 268435460;
  if (v12 == 268435460)
  {
    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], v15.msgh_local_port);
    }

    goto LABEL_20;
  }

  return v12;
}

uint64_t MIGClient::MIDIDeviceRemoveEntity(MIGClient *this, int a2, int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((**v5)(v5) + 468);
  *&msg[20] = 0u;
  v14 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  LODWORD(v14) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 275, 0x28u, 0x2Cu, v8, 0x493E0u, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 8132)
      {
        v11 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v11 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v11 = 268435460;
  if (v10 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v10;
}

uint64_t MIGClient::MIDIDeviceNewEntity(MIGClient *this, int a2, CFStringRef theString, MIDIProtocolID a4, int a5, int a6, int a7, unsigned int *a8)
{
  v59 = *MEMORY[0x277D85DE8];
  LODWORD(v26[0]) = 0;
  v26[1] = 0;
  v14 = IPCBufferWriter::write(v26, theString, 0, 0);
  v15 = v14;
  if (v14)
  {
    goto LABEL_32;
  }

  v16 = MIDIProcess::defaultInstance(v14);
  v17 = *((**v16)(v16) + 468);
  v18 = v27;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v29) = a2;
  if (v27 > 0x200)
  {
    v15 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v29) = v18;
  v19 = (v18 + 3) & 0x7FC;
  v20 = &msg[v19];
  v20[10] = a4;
  v20[11] = a5;
  v20[12] = a6;
  v20[13] = a7;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v17);
  *msg = 5395;
  *&msg[16] = 0x1F5F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v22 = *&msg[12];
  }

  else
  {
    v22 = reply_port;
  }

  v23 = mach_msg(msg, 275, v19 + 56, 0x30u, v22, 0x493E0u, 0);
  v15 = v23;
  if ((v23 - 268435458) <= 0xE && ((1 << (v23 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v23)
  {
    if (*&msg[20] == 71)
    {
      v15 = 4294966988;
    }

    else if (*&msg[20] == 8131)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v15 = v29;
            if (!v29)
            {
              *a8 = DWORD1(v29);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v24 = 1;
          }

          else
          {
            v24 = v29 == 0;
          }

          if (v24)
          {
            v15 = 4294966996;
          }

          else
          {
            v15 = v29;
          }

          goto LABEL_31;
        }
      }

      v15 = 4294966996;
    }

    else
    {
      v15 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v15 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v15 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v26);
  return v15;
}

void sub_237256574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIExternalDeviceCreate(MIGClient *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, unsigned int *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  LODWORD(v32[0]) = 0;
  v32[1] = 0;
  LODWORD(v29) = 0;
  v30 = 0;
  LODWORD(v26) = 0;
  v27 = 0;
  v8 = IPCBufferWriter::write(v32, a2, 0, 0);
  if (v8)
  {
    goto LABEL_8;
  }

  v8 = IPCBufferWriter::write(&v29, a3, 0, 0);
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = IPCBufferWriter::write(&v26, a4, 0, 0);
  v8 = v9;
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = MIDIProcess::defaultInstance(v9);
  v11 = *((**v10)(v10) + 468);
  v12 = v33;
  v13 = v30;
  v14 = v31;
  v15 = v27;
  v16 = v28;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  if (v33 > 0x200 || (__memcpy_chk(), LODWORD(v35) = v12, v14 > 0x200) || (v17 = (v12 + 3) & 0x7FC, memcpy(&msg[v17 + 40], v13, v14), *&msg[v17 + 36] = v14, v16 > 0x200))
  {
    v8 = 4294966989;
    goto LABEL_8;
  }

  v19 = (v14 + 3) & 0x7FC;
  v20 = &msg[v17 - 512 + v19];
  v21 = v17 + v19 + ((v16 + 3) & 0x7FC);
  memcpy(v20 + 556, v15, v16);
  *(v20 + 138) = v16;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v11);
  *msg = 5395;
  *&msg[16] = 0x1F5E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v23 = *&msg[12];
  }

  else
  {
    v23 = reply_port;
  }

  v24 = mach_msg(msg, 275, v21 + 44, 0x30u, v23, 0x493E0u, 0);
  v8 = v24;
  if ((v24 - 268435458) <= 0xE && ((1 << (v24 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_28;
  }

  if (!v24)
  {
    if (*&msg[20] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg[20] == 8130)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v8 = v35;
            if (!v35)
            {
              *a5 = DWORD1(v35);
              goto LABEL_8;
            }

            goto LABEL_36;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v25 = 1;
          }

          else
          {
            v25 = v35 == 0;
          }

          if (v25)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v35;
          }

          goto LABEL_36;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_36:
    mach_msg_destroy(msg);
    goto LABEL_8;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_28:
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v8 = 268435460;
  }

LABEL_8:
  IPCBufferWriter::~IPCBufferWriter(&v26);
  IPCBufferWriter::~IPCBufferWriter(&v29);
  IPCBufferWriter::~IPCBufferWriter(v32);
  return v8;
}

void sub_237256928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferWriter::~IPCBufferWriter(va1);
  IPCBufferWriter::~IPCBufferWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDICapabilityMUIDCollides(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = -52;
      }

      else if (*&msg[20] == 8142)
      {
        v9 = -44;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = msg[32];
          if (!*&msg[32])
          {
            LOBYTE(v8) = 0;
            return v8 | 0x100000000;
          }
        }
      }

      else
      {
        v9 = -45;
      }

LABEL_21:
      mach_msg_destroy(msg);
      LOBYTE(v8) = v9;
      return v8 | 0x100000000;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 4;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8 | 0x100000000;
}

unint64_t MIGClient::MIDICapabilityGetDiscoveryMUID(MIGClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((**v1)(v1) + 468);
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v3 = mig_get_reply_port();
  reply_port_4 = v2;
  reply_port_8 = v3;
  v10 = 5395;
  *reply_port_12 = 0x1F6900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v10);
    v4 = reply_port_8;
  }

  else
  {
    v4 = v3;
  }

  v5 = mach_msg(&v10, 275, 0x18u, 0x30u, v4, 0x493E0u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
    goto LABEL_20;
  }

  if (!v5)
  {
    if (*&reply_port_12[4] == 71)
    {
      v6 = -308;
    }

    else if (*&reply_port_12[4] == 8141)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v6 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              LODWORD(v8) = *&reply_port_12[20];
              goto LABEL_30;
            }

            goto LABEL_28;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v7 = 1;
          }

          else
          {
            v7 = *&reply_port_12[16] == 0;
          }

          if (v7)
          {
            v6 = -300;
          }

          else
          {
            v6 = *&reply_port_12[16];
          }

          goto LABEL_28;
        }
      }

      v6 = -300;
    }

    else
    {
      v6 = -301;
    }

LABEL_28:
    mach_msg_destroy(&v10);
    goto LABEL_29;
  }

  mig_dealloc_reply_port(reply_port_8);
LABEL_20:
  if (v6 != 268435460)
  {
LABEL_29:
    LODWORD(v8) = 0;
    goto LABEL_30;
  }

  if ((v10 & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], reply_port_8);
  }

  mach_msg_destroy(&v10);
  LODWORD(v8) = 0;
  v6 = 268435460;
LABEL_30:
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  return v8 | ((v6 == 0) << 32);
}

uint64_t MIGClient::MIDIRestart(MIGClient *this)
{
  v1 = MIDIProcess::defaultInstance(this);
  v2 = *((**v1)(v1) + 468);
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F5900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 275, 0x24u, 0x2Cu, v4, 0x493E0u, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v5)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 8125)
      {
        v7 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v7 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v7 = 268435460;
  if (v6 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v6;
}

uint64_t MIGClient::MIDIFlushOutput(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F5800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8124)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDIObjectFindByUniqueID(MIGClient *this, int a2, unsigned int *a3, MIDIObjectType *a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((**v7)(v7) + 468);
  *&msg[20] = 0u;
  v16 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v8;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F5700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v10 = *&msg[12];
  }

  else
  {
    v10 = reply_port;
  }

  v11 = mach_msg(msg, 275, 0x24u, 0x34u, v10, 0x493E0u, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_20;
  }

  if (v11)
  {
    mig_dealloc_reply_port(*&msg[12]);
LABEL_20:
    if (v12 == 268435460)
    {
      if ((*msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
      }

      mach_msg_destroy(msg);
      return 268435460;
    }

    return v12;
  }

  if (*&msg[20] == 71)
  {
    v12 = 4294966988;
LABEL_28:
    mach_msg_destroy(msg);
    return v12;
  }

  if (*&msg[20] != 8123)
  {
    v12 = 4294966995;
    goto LABEL_28;
  }

  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  if (*&msg[4] != 44)
  {
    if (*&msg[4] == 36)
    {
      if (*&msg[8])
      {
        v13 = 1;
      }

      else
      {
        v13 = *&msg[32] == 0;
      }

      if (v13)
      {
        v12 = 4294966996;
      }

      else
      {
        v12 = *&msg[32];
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (*&msg[8])
  {
LABEL_27:
    v12 = 4294966996;
    goto LABEL_28;
  }

  v12 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_28;
  }

  if (a3)
  {
    *a3 = v16;
  }

  v12 = 0;
  if (a4)
  {
    *a4 = SDWORD1(v16);
  }

  return v12;
}

uint64_t MIGClient::MIDIObjectRemoveProperty(MIGClient *this, int a2, CFStringRef theString)
{
  v47 = *MEMORY[0x277D85DE8];
  LODWORD(v14[0]) = 0;
  v14[1] = 0;
  v4 = IPCBufferWriter::write(v14, theString, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v6 = MIDIProcess::defaultInstance(v4);
    v7 = *((**v6)(v6) + 468);
    v8 = v15;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
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
    v22 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[24] = *MEMORY[0x277D85EF8];
    LODWORD(v17) = a2;
    if (v15 > 0x200)
    {
      v5 = 4294966989;
      goto LABEL_24;
    }

    __memcpy_chk();
    DWORD1(v17) = v8;
    reply_port = mig_get_reply_port();
    *&msg[8] = __PAIR64__(reply_port, v7);
    *msg = 5395;
    *&msg[16] = 0x1F5600000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      v10 = *&msg[12];
    }

    else
    {
      v10 = reply_port;
    }

    v11 = mach_msg(msg, 275, ((v8 + 3) & 0x7FC) + 40, 0x2Cu, v10, 0x493E0u, 0);
    v5 = v11;
    if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else
    {
      if (!v11)
      {
        if (*&msg[20] == 71)
        {
          v12 = 4294966988;
        }

        else if (*&msg[20] == 8122)
        {
          v12 = 4294966996;
          if ((*msg & 0x80000000) == 0 && *&msg[4] == 36)
          {
            v12 = v17;
            if (!v17)
            {
              v5 = 0;
              goto LABEL_24;
            }
          }
        }

        else
        {
          v12 = 4294966995;
        }

LABEL_23:
        mach_msg_destroy(msg);
        v5 = v12;
        goto LABEL_24;
      }

      mig_dealloc_reply_port(*&msg[12]);
    }

    v12 = 268435460;
    if (v5 != 268435460)
    {
      goto LABEL_24;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_23;
  }

LABEL_24:
  IPCBufferWriter::~IPCBufferWriter(v14);
  return v5;
}

void sub_237257500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectGetProperties(MIGClient *this, int a2, const UInt8 **a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((**v7)(v7) + 468);
  memset(&msg[20], 0, 44);
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  *&msg[36] = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = v8;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F5500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v10 = *&msg[12];
  }

  else
  {
    v10 = reply_port;
  }

  v11 = mach_msg(msg, 275, 0x28u, 0x40u, v10, 0x493E0u, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v11)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 8121)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v15 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&msg[32];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_31;
        }

        v15 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && msg[39] == 1)
        {
          v13 = *&msg[40];
          if (*&msg[40] == *&msg[52])
          {
            v14 = *&msg[28];
LABEL_21:
            *msg = v14;
            *&msg[8] = v13;
            *&msg[12] = 1;
            *&msg[16] = 0;
            *a3 = IPCBufferReader::ReadCFPropertyList(msg, 1);
            IPCBufferReader::~IPCBufferReader(msg);
            return 0;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v15 = 268435460;
  if (v12 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_31;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

  return v12;
}