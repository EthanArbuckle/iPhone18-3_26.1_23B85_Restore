void *BuiltinLogType()
{
  if (qword_8178 != -1)
  {
    sub_1E54();
  }

  return off_8170;
}

void sub_DD0(id a1)
{
  v1 = os_log_create("com.apple.audio.ASDT", "Builtin");
  if (v1)
  {
    off_8170 = v1;
  }
}

id BuiltinAudioFactory(uint64_t a1, const void *a2)
{
  v3 = BuiltinLogType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "100.6";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BuiltinAudioPlugin factory version %s", buf, 0xCu);
  }

  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v4))
  {
    return 0;
  }

  v5 = +[BuiltinAudioPlugin sharedPlugin];
  v6 = [v5 driverRef];

  return v6;
}

void sub_FCC(uint64_t a1, uint64_t a2, const char *a3)
{
  ObjectForKey = ASDT::IORegistry::GetObjectForKey("builtin-plugin-name", "IODeviceTree:/product/audio", a3);
  if (ObjectForKey)
  {
    v5 = [[NSString alloc] initWithData:ObjectForKey encoding:1];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", @"BuiltinAudioPlugin") & 1) == 0)
  {
    v9 = BuiltinLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "BuiltinAudioPlugin";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s: No devices for this platform.", &v11, 0xCu);
    }

    v10 = qword_8180;
    qword_8180 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_alloc_init(objc_opt_class());
    v8 = qword_8180;
    qword_8180 = v7;
  }
}

void sub_1388()
{
  context = objc_autoreleasePoolPush();
  v49 = kASDTConfigKeySubclass;
  v50 = kASDTConfigKeySubclass;
  v48 = kASDTConfigKeyDeviceUID;
  v51 = kASDTConfigKeyDeviceUID;
  v59 = @"ASDTIOA2Device";
  v60 = @"HPMic";
  v0 = kASDTConfigKeyDeviceCanBeDefaultInput;
  v1 = kASDTConfigKeyDeviceCanBeDefaultSystem;
  v52 = kASDTConfigKeyDeviceCanBeDefaultInput;
  v53 = kASDTConfigKeyDeviceCanBeDefaultSystem;
  v61 = &__kCFBooleanTrue;
  v62 = &__kCFBooleanTrue;
  v2 = kASDTIOA2ConfigKeyExclavesInputBufferName;
  v3 = kASDTIOA2ConfigKeyExclavesInjectionBufferName;
  v54 = kASDTIOA2ConfigKeyExclavesInputBufferName;
  v55 = kASDTIOA2ConfigKeyExclavesInjectionBufferName;
  v63 = @"com.apple.audio.mic";
  v64 = @"com.apple.inbound_buffer.hpmic_injection";
  v4 = kASDTIOA2ConfigKeyIsolatedInputUseCaseID;
  v65 = &off_44E8;
  v56 = kASDTIOA2ConfigKeyIsolatedInputUseCaseID;
  v57 = kASDTConfigKeyDeviceCustomProperties;
  v47 = kASDTConfigKeyDeviceCustomProperties;
  v5 = +[ASDTExclavesSensorAutomaticProperty config];
  v71 = v5;
  v6 = +[ASDTExclavesStatusProperty configForMic];
  v72 = v6;
  v7 = [NSArray arrayWithObjects:&v71 count:2];
  v66 = v7;
  qword_8190 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v50 count:8];

  v50 = v49;
  v51 = v48;
  v59 = @"ASDTIOA2Device";
  v60 = @"HP16Mic";
  v52 = v0;
  v53 = v1;
  v61 = &__kCFBooleanFalse;
  v62 = &__kCFBooleanFalse;
  v54 = v2;
  v55 = v3;
  v63 = @"com.apple.audio.lpmic";
  v64 = @"com.apple.inbound_buffer.hpmic16_injection";
  v65 = &off_4500;
  v56 = v4;
  v57 = v47;
  v8 = +[ASDTExclavesStatusProperty configForMic];
  v71 = v8;
  v9 = [NSArray arrayWithObjects:&v71 count:1];
  v66 = v9;
  qword_8198 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v50 count:8];

  v50 = v49;
  v51 = v48;
  v59 = @"ASDTIOA2Device";
  v60 = @"Secure LEAP Loopback";
  v52 = v0;
  v53 = kASDTConfigKeyDeviceCanBeDefaultOutput;
  v61 = &__kCFBooleanFalse;
  v62 = &__kCFBooleanFalse;
  v54 = v1;
  v55 = kASDTConfigKeyDeviceExclavesSensorName;
  v63 = &__kCFBooleanFalse;
  v64 = @"com.apple.sensors.test";
  v56 = v2;
  v57 = v4;
  v65 = @"com.apple.audio.test";
  v66 = &off_4518;
  v58 = v47;
  v10 = +[ASDTExclavesStatusProperty configForMic];
  v71 = v10;
  v11 = [NSArray arrayWithObjects:&v71 count:1];
  v67 = v11;
  qword_81A0 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v50 count:9];

  v71 = v49;
  v72 = v48;
  v50 = @"ASDTIOPAudioLPMicDevice";
  v51 = kASDTIOPAudioConfigLPMicDeviceUID;
  v46 = kASDTIOPAudioConfigLPMicDeviceUID;
  v12 = kASDTConfigKeyServiceIdentifier;
  v52 = @"lpai";
  v73 = kASDTConfigKeyServiceIdentifier;
  v74 = kASDTConfigKeyDeviceStreams;
  v45 = kASDTConfigKeyDeviceStreams;
  v68 = v49;
  v69 = kASDTConfigKeyServiceIdentifier;
  v78 = @"ASDTIOPAudioLPMicStream";
  v79 = @"adpx";
  v13 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v68 count:2];
  v77 = v13;
  v14 = [NSArray arrayWithObjects:&v77 count:1];
  v53 = v14;
  v75 = v47;
  v15 = [ASDTIOPAudioLPMicDevice enableListeningPropertyForService:@"lai "];
  v59 = v15;
  v16 = [ASDTIOPAudioVTActiveChannelMaskProperty configDictForService:@"vtcm"];
  v60 = v16;
  v17 = [ASDTIOPAudioVTAvailableProperty configDictForService:@"vtcm"];
  v61 = v17;
  v18 = [ASDTIOPAudioVTConfigurationProperty configDictForService:@"vtcm"];
  v62 = v18;
  v19 = [ASDTIOPAudioVTEnableProperty configDictForService:@"vtcm"];
  v63 = v19;
  v20 = [ASDTIOPAudioVTOccurredProperty configDictForService:@"vtcm"];
  v64 = v20;
  v21 = [NSArray arrayWithObjects:&v59 count:6];
  v54 = v21;
  qword_81A8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v71 count:5];

  v50 = v49;
  v51 = v48;
  v59 = @"ASDTIOPAudioLPMicDevice";
  v60 = v46;
  v61 = @"lpai";
  v52 = v12;
  v53 = v45;
  v78 = v49;
  v79 = v12;
  v71 = @"ASDTIOPAudioLPMicStream";
  v72 = @"adpx";
  v22 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v78 count:2];
  v68 = v22;
  v23 = [NSArray arrayWithObjects:&v68 count:1];
  v62 = v23;
  qword_81B0 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v50 count:4];

  v71 = v49;
  v72 = v48;
  v50 = @"ASDTIOPAudioLPMicDevice";
  v51 = v46;
  v52 = @"lpai";
  v73 = v12;
  v74 = v45;
  v68 = v49;
  v69 = v12;
  v78 = @"ASDTIOPAudioLPMicStream";
  v79 = @"adpx";
  v40 = kASDTConfigKeyStreamExclavesBufferName;
  v70 = kASDTConfigKeyStreamExclavesBufferName;
  v80 = @"com.apple.audio.lpmic";
  v24 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v68 count:3];
  v77 = v24;
  v25 = [NSArray arrayWithObjects:&v77 count:1];
  v26 = kASDTConfigKeyAddNonSecurePathEnableProperty;
  v43 = v25;
  v53 = v25;
  v54 = &__kCFBooleanTrue;
  v75 = kASDTConfigKeyAddNonSecurePathEnableProperty;
  v76 = v47;
  v42 = [ASDTIOPAudioLPMicDevice enableListeningPropertyForService:@"lai "];
  v59 = v42;
  v41 = [ASDTIOPAudioVTActiveChannelMaskProperty configDictForService:@"vtcm"];
  v60 = v41;
  v27 = [ASDTIOPAudioVTAvailableProperty configDictForService:@"vtcm"];
  v61 = v27;
  v28 = [ASDTIOPAudioVTConfigurationProperty configDictForService:@"vtcm"];
  v62 = v28;
  v29 = [ASDTIOPAudioVTDebugProperty configDictForService:@"vtcm"];
  v63 = v29;
  v30 = [ASDTIOPAudioVTModelCRCProperty configDictForService:@"vtcm"];
  v64 = v30;
  v31 = [ASDTIOPAudioVTEnableProperty configDictForService:@"vtcm"];
  v65 = v31;
  v32 = [ASDTIOPAudioVTOccurredProperty configDictForService:@"vtcm"];
  v39 = v26;
  v66 = v32;
  v33 = +[ASDTExclavesStatusProperty configForMic];
  v67 = v33;
  v34 = [NSArray arrayWithObjects:&v59 count:9];
  v55 = v34;
  qword_81B8 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v71 count:6];

  v50 = v49;
  v51 = v48;
  v59 = @"ASDTIOPAudioLPMicDevice";
  v60 = v46;
  v61 = @"lpai";
  v52 = v12;
  v53 = v45;
  v78 = v49;
  v79 = v12;
  v71 = @"ASDTIOPAudioLPMicStream";
  v72 = @"adpx";
  v80 = v40;
  v73 = @"com.apple.audio.lpmic";
  v35 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v78 count:3];
  v68 = v35;
  v36 = [NSArray arrayWithObjects:&v68 count:1];
  v62 = v36;
  v63 = &__kCFBooleanTrue;
  v54 = v39;
  v55 = v47;
  v37 = +[ASDTExclavesStatusProperty configForMic];
  v77 = v37;
  v38 = [NSArray arrayWithObjects:&v77 count:1];
  v64 = v38;
  qword_81C0 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v50 count:6];

  objc_autoreleasePoolPop(context);
}