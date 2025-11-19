void __cxx_global_var_init_3_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_12_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key = HSUtil::CoderKey::New("settings", a2);
  }
}

HSPreferenceStage *HSTPipeline::CreateTrackpadPipeline(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v67 = v7;
  v69 = v8;
  v61 = v9;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v50 = +[NSAssertionHandler currentHandler];
    v51 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateTrackpadPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
    [v50 handleFailureInFunction:v51 file:@"HSTrackpadPipelineCreation.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"defaultsDomain"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v52 = +[NSAssertionHandler currentHandler];
  v53 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateTrackpadPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v52 handleFailureInFunction:v53 file:@"HSTrackpadPipelineCreation.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  if (a3)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v54 = +[NSAssertionHandler currentHandler];
    v55 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateTrackpadPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
    [v54 handleFailureInFunction:v55 file:@"HSTrackpadPipelineCreation.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v56 = +[NSAssertionHandler currentHandler];
  v57 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateTrackpadPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v56 handleFailureInFunction:v57 file:@"HSTrackpadPipelineCreation.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"eventDispatcher"}];

LABEL_5:
  MTDeviceGetDeviceID();
  if (MTDeviceGetSensorSurfaceDimensions())
  {
    v10 = 0x124F800000000;
    v64 = 50000;
  }

  else
  {
    v64 = 2863311524;
    v10 = 0xAAAAAAA400000000;
  }

  Service = MTDeviceGetService();
  v12 = Service;
  if (!Service)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTrackpadPipelineCreation.m", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateTrackpadPipeline();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MTDeviceGetService returned IO_OBJECT_NULL");
  }

  CFProperty = IORegistryEntryCreateCFProperty(Service, @"Sensor Surface Descriptor", 0, 0);
  if (!CFProperty || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v58, "couldn't find 'Sensor Surface Descriptor' data property");
    goto LABEL_37;
  }

  if ([CFProperty length] <= 0xF)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v58, "'Sensor Surface Descriptor' property too short");
LABEL_37:
  }

  v14 = CFProperty;
  v15 = [CFProperty bytes];
  v16 = v15[4];
  v17 = v15[6];
  v18 = v15[5];
  v19 = v15[7];

  v62 = [NSString stringWithFormat:@"%@.Preferences", v67];
  v20 = [HSPreferenceStage alloc];
  v21 = +[NSUserDefaults standardUserDefaults];
  v60 = [(HSPreferenceStage *)v20 initWithUserDefaults:v21 domain:v62];

  v22 = [HSTServerStage alloc];
  v23 = [NSString stringWithFormat:@"%@.server", v67];
  v68 = [(HSTServerStage *)v22 initWithName:v23 description:@"Touch pipeline" queue:v8];

  if (!v68)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTrackpadPipelineCreation.m", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateTrackpadPipeline();
    }
  }

  v66 = [[HSTCREventGenerator alloc] initWithService:v12 deviceID:0];
  v63 = [[HSTRecordingManager alloc] initWithPlaybackQueue:v8];
  v24 = (10 * v16) & 0xFFFFFFFELL | ((5 * v17) << 33);
  v25 = (10 * v18) & 0xFFFFFFFELL | ((5 * v19) << 33);
  __b[0] = v24;
  __b[1] = v25;
  __b[2] = 0xAAAAAAAAAAAAAAAALL;
  IntProperty = HSTPipeline::getIntProperty(v12, @"Sensor Columns", v26);
  __b[2] = IntProperty | (HSTPipeline::getIntProperty(v12, @"Sensor Rows", v28) << 32);
  v29 = [[HSTFrameParser alloc] initWithConfig:__b];
  v30 = objc_opt_new();
  ParserOptions = MTDeviceGetParserOptions();
  [(AlgsConfigEvent *)v30 setParserOptions:?];
  [(AlgsConfigEvent *)v30 setDeviceType:?];
  [(AlgsConfigEvent *)v30 setSurfaceSize:?];
  [(AlgsConfigEvent *)v30 setSurfaceCoordinates:v24, v25];
  v32 = [[TrackpadAlgStage alloc] initWithConfig:v30];
  v65 = [[TrackpadActuatorStage alloc] initWithDevice:a3];
  v33 = [[TrackpadMomentumGeneratorStage alloc] initWithQueue:v8];
  if (_os_feature_enabled_impl())
  {
    v34 = [[PointerHIDEventProcessor alloc] initWithDeviceID:0 deviceType:1];
  }

  else
  {
    v34 = 0;
  }

  v35 = [[TrackpadBridge alloc] initWithService:MTDeviceGetService()];
  v36 = [[EmbeddedTrackpadFirmwareManager alloc] initWithDevice:a3];
  if (!v34)
  {
    v34 = [[EmbeddedTrackpadHIDEventProcessor alloc] initWithDeviceID:0 deviceType:1];
  }

  [(PointerBridge *)v35 setQueue:v8];
  [(TrackpadAlgStage *)v32 setQueue:v8];
  [(TrackpadActuatorStage *)v65 setQueue:v8];
  [(TrackpadHIDEventProcessor *)v34 setQueue:v8];
  if (v66)
  {
    v37 = v66;
  }

  else
  {
    v37 = v29;
  }

  v38 = v68;
  if (!v68)
  {
    v38 = v37;
  }

  v79 = v38;
  v39 = [NSArray arrayWithObjects:&v79 count:1];
  [(HSStage *)v60 setConsumers:v39];

  v78 = v37;
  v40 = [NSArray arrayWithObjects:&v78 count:1];
  [(HSStage *)v68 setConsumers:v40];

  v77 = v29;
  v41 = [NSArray arrayWithObjects:&v77 count:1];
  [(HSStage *)v66 setConsumers:v41];

  v76 = v35;
  v42 = [NSArray arrayWithObjects:&v76 count:1];
  [(HSStage *)v29 setConsumers:v42];

  v75 = v36;
  v43 = [NSArray arrayWithObjects:&v75 count:1];
  [(HSStage *)v35 setConsumers:v43];

  v74 = v63;
  v44 = [NSArray arrayWithObjects:&v74 count:1];
  [(HSStage *)v36 setConsumers:v44];

  v73 = v32;
  v45 = [NSArray arrayWithObjects:&v73 count:1];
  [(HSRecordingPlaybackStage *)v63 setConsumers:v45];

  v72[0] = v65;
  v72[1] = v34;
  v46 = [NSArray arrayWithObjects:v72 count:2];
  [(HSStage *)v32 setConsumers:v46];

  v71 = v33;
  v47 = [NSArray arrayWithObjects:&v71 count:1];
  [(HSStage *)v34 setConsumers:v47];

  v70 = v61;
  v48 = [NSArray arrayWithObjects:&v70 count:1];
  [(HSStage *)v33 setConsumers:v48];

  return v60;
}

void __cxx_global_var_init_16()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_18_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_19_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_17()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key = HSUtil::CoderKey::New("settings", a2);
  }
}

void sub_37F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return __position.__i_;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v15 = end - __position.__i_;
    v16 = this->__end_;
    v17 = __n;
    if (__n <= end - __position.__i_)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &end[__n - (v15 >> 2)];
    v19 = *__x;
    v20 = (4 * __n - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = (end + 2);
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_D64F0)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_D64E0)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    this->__end_ = v16;
    if (end != __position.__i_)
    {
LABEL_21:
      v26 = &__position.__i_[__n];
      v27 = &v16[-__n];
      v28 = v16;
      if (v27 < end)
      {
        v28 = v16;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
        }

        while (v27 < end);
      }

      this->__end_ = v28;
      if (v16 != v26)
      {
        memmove(&__position.__i_[__n], __position.__i_, v16 - v26);
      }

      if (__position.__i_ <= v5)
      {
        if (this->__end_ <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = __n;
        }

        v5 += v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = (__position.__i_ + 2);
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_D64F0)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_D64E0)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __position.__i_;
  }

  begin = this->__begin_;
  v11 = __n + end - this->__begin_;
  if (v11 >> 62)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v12 = __position.__i_ - begin;
  v13 = value - begin;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *__x;
  v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_D64F0)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_D64E0)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * __n), __position.__i_, this->__end_ - __position.__i_);
  v46 = this->__begin_;
  v47 = (v37 + 4 * __n + this->__end_ - __position.__i_);
  this->__end_ = __position.__i_;
  v48 = (__position.__i_ - v46);
  v49 = (v37 - (__position.__i_ - v46));
  memcpy(v49, v46, v48);
  v50 = this->__begin_;
  this->__begin_ = v49;
  this->__end_ = v47;
  this->__end_cap_.__value_ = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v24 = 0u;
    v25 = 0u;
    v11 = end - begin + 1;
    if (v11 >> 62)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v26 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
    }

    *&v24 = 0;
    *(&v24 + 1) = 4 * v15;
    v25 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = *(&v24 + 1);
    memcpy(v25, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = *(&v24 + 1);
    *&v25 = v25 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    *&v24 = v21;
    *(&v24 + 1) = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_396A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_39E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_39FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

int *std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 <= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 >= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 <= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 >= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 <= v64)
          {
            v65 = v9[1];
          }

          if (v63 < v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 <= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 < v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 <= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 < v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 <= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 >= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 <= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 >= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 <= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 >= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 <= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 >= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 <= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 >= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 <= v75)
          {
            v76 = v9[3];
          }

          if (v74 < v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 <= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 <= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 >= v80)
          {
            v81 = *v9;
          }

          if (v83 <= v82)
          {
            v80 = v9[2];
          }

          if (v83 < v82)
          {
            v82 = v83;
          }

          if (v81 <= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 >= v79)
          {
            v81 = v79;
          }

          if (v84 <= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 >= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 > *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 > v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 <= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 > v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 > v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

signed int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_D64F0;
      v18 = xmmword_D64E0;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_s32(v13, *(v7 + v12));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_D64F0;
    v27 = xmmword_D64E0;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_s32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 <= v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void *std::__split_buffer<int>::emplace_back<int>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void __cxx_global_var_init_18()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void sub_3B9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TrackpadMomentumGeneratorStage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_3CB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void __cxx_global_var_init_19()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_20()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_21()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

BOOL MTPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, unsigned __int8 *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v4 = 0;
  if (a1 && a2)
  {
    v5 = IOHIDPreferencesCopyDomain();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        v4 = 1;
        if (CFStringCompare(v6, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_19;
        }

        Value = 1;
        if (CFStringCompare(v6, @"YES", 1uLL) == kCFCompareEqualTo)
        {
          v4 = 1;
          if (!a3)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (CFStringCompare(v6, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v6, @"NO", 1uLL) == kCFCompareEqualTo)
        {
          v4 = 0;
          goto LABEL_19;
        }
      }

      else if (v7 == CFNumberGetTypeID())
      {
        if (!CFNumberIsFloatType(v6))
        {
          valuePtr = -1431655766;
          Value = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
          v4 = valuePtr != 0;
          if (!a3)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      else if (v7 == CFBooleanGetTypeID())
      {
        v4 = v6 == kCFBooleanTrue;
LABEL_19:
        Value = 1;
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v4 = 0;
      Value = 0;
      if (!a3)
      {
LABEL_23:
        CFRelease(v6);
        return v4;
      }

LABEL_22:
      *a3 = Value;
      goto LABEL_23;
    }

    return 0;
  }

  return v4;
}

void sub_3E924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CoreAccessoryManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_22()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t MTChordTable_::MTChordTable_(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = off_109548;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 8654537;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 28) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  MTChordTable_::clearAllChordsInTable(a1);
  return a1;
}

void sub_405FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = (v10 + 344);
  v13 = -336;
  do
  {
    a10 = v12;
    std::vector<MTChordGestureSet_>::__destroy_vector::operator()[abi:ne200100](&a10);
    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  _Unwind_Resume(a1);
}

void MTChordTable_::clearAllChordsInTable(MTChordTable_ *this)
{
  v1 = (this + 32);
  (*(*this + 16))(this);
  v2 = 14;
  v3 = v1;
  do
  {
    v4 = *v3;
    v3 += 3;
    std::vector<MTChordGestureSet_>::__base_destruct_at_end[abi:ne200100](v1, v4);
    v1 = v3;
    --v2;
  }

  while (v2);
}

void MTChordTable_::~MTChordTable_(MTChordTable_ *this)
{
  *this = off_109548;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet_>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

{
  *this = off_109548;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet_>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

{
  *this = off_109548;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet_>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  operator delete();
}

uint64_t MTChordTable_::getFingerMaskForLookup(MTChordTable_ *this, const MTHandStatistics_ *a2)
{
  v2 = *(this + 7);
  v3 = 296;
  if (v2 == 1)
  {
    v3 = 300;
  }

  v4 = v2 == 2;
  v5 = 220;
  if (!v4)
  {
    v5 = v3;
  }

  return *(a2 + v5);
}

char *MTChordTable_::getChordVectForCombo(MTChordTable_ *this, char a2)
{
  if ((a2 & 0x1F) == 0)
  {
    return this + 32;
  }

  v2.i64[0] = 0x100000001;
  v2.i64[1] = 0x100000001;
  v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(a2), xmmword_D6510), v2));
  v4 = v3 + 5;
  if ((a2 & 1) == 0)
  {
    v4 = v3;
  }

  if (!v4)
  {
    return this + 32;
  }

  v5 = this + 24 * v4 + 32;
  v6 = *(v5 + 1) - *v5;
  if (!v6)
  {
LABEL_10:
    if (v4 - 5 <= 4)
    {
      v5 = this + 24 * v4 - 64;
      v12 = *(v5 + 1) - *v5;
      if (v12)
      {
        v13 = 0;
        v14 = 0xEEEEEEEEEEEEEEEFLL * (v12 >> 4);
        v15 = 1;
        while (1)
        {
          v16 = *(*v5 + 240 * v13 + 232);
          if (!v16 || (*(this + 6) & v16) != 0)
          {
            break;
          }

          v13 = v15;
          v11 = v14 > v15++;
          if (!v11)
          {
            return this + 32;
          }
        }

        return v5;
      }
    }

    return this + 32;
  }

  v7 = 0;
  v8 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 4);
  v9 = 1;
  while (1)
  {
    v10 = *(*v5 + 240 * v7 + 232);
    if (!v10 || (*(this + 6) & v10) != 0)
    {
      return v5;
    }

    v7 = v9;
    v11 = v8 > v9++;
    if (!v11)
    {
      goto LABEL_10;
    }
  }
}

uint64_t MTChordTable_::hasTwoFingerOrientationEvents(MTChordTable_ *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = (v2 + 240 * v4);
    v7 = *(v6 + 58);
    if (v7 && (*(this + 6) & v7) == 0)
    {
      goto LABEL_7;
    }

    if (MTChordGestureSet_::hasEnabledOrientationEvents(v6, this))
    {
      return 1;
    }

    v2 = *(this + 10);
    v1 = *(this + 11);
LABEL_7:
    v4 = v5;
    if (0xEEEEEEEEEEEEEEEFLL * ((v1 - v2) >> 4) <= v5++)
    {
      return 0;
    }
  }
}

uint64_t MTChordTable_::getMinThumbSpecificFingerCount(MTChordTable_ *this)
{
  v2 = this + 32;
  v3 = 6;
  while (1)
  {
    v4 = &v2[24 * v3];
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5 != *v4)
    {
      break;
    }

LABEL_9:
    if (++v3 == 10)
    {
      return 0;
    }
  }

  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = (v6 + 240 * v7);
    v10 = *(v9 + 58);
    if (v10 && (*(this + 6) & v10) == 0)
    {
      goto LABEL_8;
    }

    if (!MTChordGestureSet_::isEmpty(v9))
    {
      return (v3 - 4);
    }

    v6 = *v4;
    v5 = *(v4 + 1);
LABEL_8:
    v7 = v8;
    if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 4) <= v8++)
    {
      goto LABEL_9;
    }
  }
}

uint64_t MTChordTable_::findMatchingChord(MTChordTable_ *this, char a2, int a3)
{
  ChordVectForCombo = MTChordTable_::getChordVectForCombo(this, a2);
  v6 = *ChordVectForCombo;
  v7 = *(ChordVectForCombo + 1);
  result = 0;
  v9 = v7 - v6;
  if (v9)
  {
    v10 = 0xEEEEEEEEEEEEEEEFLL * (v9 >> 4);
    v11 = 1;
    v12 = 3.4028e38;
    do
    {
      if (*(v6 + 160) == *(v6 + 168))
      {
        v13 = (*(v6 + 120) >> 6) & 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v6 + 232);
      if (v14)
      {
        v15 = (*(this + 6) & v14) != 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v13 == a3 && v15;
      if (v16 && v12 > 0.0)
      {
        v12 = 0.0;
        result = v6;
      }

      v6 += 240;
    }

    while (v10 > v11++);
  }

  return result;
}

MTChordGestureSet_ *MTChordTable_::copyChordIntoTable(MTChordTable_ *this, MTChordGestureSet_ *a2)
{
  v2 = *(a2 + 56);
  v3 = *(this + 2);
  *(a2 + 51) = *(this + 2);
  *(a2 + 26) = v3;
  if (v2 <= 0xD)
  {
    v4 = this + 24 * v2;
    v5 = *(v4 + 5);
    if (v5 >= *(v4 + 6))
    {
      v6 = std::vector<MTChordGestureSet_>::__emplace_back_slow_path<MTChordGestureSet_ const&>((v4 + 32), a2);
    }

    else
    {
      MTChordGestureSet_::MTChordGestureSet_(*(v4 + 5), a2);
      v6 = v5 + 240;
      *(v4 + 5) = v5 + 240;
    }

    *(v4 + 5) = v6;
    return (v6 - 240);
  }

  return a2;
}

void std::vector<MTChordGestureSet_>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTChordGestureSet_>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTChordGestureSet_>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTChordGestureSet_>>::destroy[abi:ne200100]<MTChordGestureSet_,0>(a1, i))
  {
    i -= 240;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<MTChordGestureSet_>>::destroy[abi:ne200100]<MTChordGestureSet_,0>(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 160);
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v8);
  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    *(a2 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    *(a2 + 40) = v6;
    operator delete(v6);
  }

  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
  }
}

void std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTSlideGesture_>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTSlideGesture_>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 160);
      v4 -= 160;
      v5 = v6;
      if (v6)
      {
        *(v2 - 152) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<MTChordGestureSet_>::__emplace_back_slow_path<MTChordGestureSet_ const&>(uint64_t a1, const MTChordGestureSet_ *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTChordGestureSet_>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  MTChordGestureSet_::MTChordGestureSet_((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = (240 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTChordGestureSet_>::~__split_buffer(&v13);
  return v12;
}

void sub_40EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTChordGestureSet_>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTChordGestureSet_>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>(uint64_t a1, MTChordGestureSet_ *a2, MTChordGestureSet_ *a3, MTChordGestureSet_ *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      MTChordGestureSet_::MTChordGestureSet_(this, v7);
      v7 = (v7 + 240);
      this = (v12 + 240);
      v12 = (v12 + 240);
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTChordGestureSet_>>::destroy[abi:ne200100]<MTChordGestureSet_,0>(a1, v5);
      v5 = (v5 + 240);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet_>,MTChordGestureSet_*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 240;
      std::allocator_traits<std::allocator<MTChordGestureSet_>>::destroy[abi:ne200100]<MTChordGestureSet_,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MTChordGestureSet_>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTChordGestureSet_>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTChordGestureSet_>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 240;
    std::allocator_traits<std::allocator<MTChordGestureSet_>>::destroy[abi:ne200100]<MTChordGestureSet_,0>(v5, v4 - 240);
  }
}

void __cxx_global_var_init_23()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

uint64_t __MTForceConfigRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTForceConfigTypeID = result;
  return result;
}

uint64_t MTForceConfigCreate(int a1, int a2)
{
  if (!__kMTForceConfigTypeID)
  {
    pthread_once(&__forceConfigTypeInit, __MTForceConfigRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1;
    *(Instance + 20) = a2;
    *(Instance + 24) = a1;
    *(Instance + 28) = 0;
    *(Instance + 160) = 0;
    *(Instance + 168) = 0;
    _MTForceConfigGenerateDefaultParams(Instance, v5);
  }

  return v6;
}

double _MTForceConfigGenerateDefaultParams(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 24);
  if (v2 <= 10)
  {
    if (v2 <= 4)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          return a2.n128_f64[0];
        }

        *(a1 + 29) = 2;
        *(a1 + 32) = xmmword_D6610;
        a2 = xmmword_D6620;
        goto LABEL_19;
      }

      *(a1 + 29) = 2;
LABEL_18:
      *(a1 + 32) = xmmword_D65E0;
      a2 = xmmword_D65F0;
LABEL_19:
      *(a1 + 96) = a2;
      return a2.n128_f64[0];
    }

    if (v2 != 5)
    {
      if (v2 != 10)
      {
        return a2.n128_f64[0];
      }

LABEL_12:
      *(a1 + 28) = 513;
      goto LABEL_18;
    }

LABEL_16:
    *(a1 + 29) = 3;
    *(a1 + 32) = xmmword_D65E0;
    *(a1 + 48) = 0x437F000043960000;
    *(a1 + 96) = xmmword_D65F0;
    a2.n128_u64[0] = 0x500000006;
    *(a1 + 112) = 0x500000006;
    return a2.n128_f64[0];
  }

  if (v2 <= 15)
  {
    if (v2 == 11)
    {
      *(a1 + 28) = 513;
      a2.n128_u64[0] = 0;
      *(a1 + 32) = xmmword_D6600;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return a2.n128_f64[0];
    }

    if (v2 != 12)
    {
      return a2.n128_f64[0];
    }

    goto LABEL_12;
  }

  if (v2 == 16)
  {
    goto LABEL_16;
  }

  if (v2 == 17)
  {
    *(a1 + 29) = 3;
    *(a1 + 32) = xmmword_D65E0;
    *(a1 + 48) = 0x437F000043960000;
    *(a1 + 96) = xmmword_D65F0;
    a2.n128_u64[0] = 0x500000006;
    *(a1 + 112) = 0x500000006;
    *(a1 + 169) = 1;
  }

  return a2.n128_f64[0];
}

double __MTForceConfigInit(_OWORD *a1)
{
  if (a1)
  {
    result = 0.0;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
  }

  return result;
}

void MTPListGestureConfig_::~MTPListGestureConfig_(MTPListGestureConfig_ *this)
{
  *this = off_1095E8;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
    *(this + 12) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {
    CFRelease(v5);
    *(this + 13) = 0;
  }

  v6 = *(this + 14);
  if (v6)
  {
    CFRelease(v6);
    *(this + 14) = 0;
  }

  MTGestureConfig_::~MTGestureConfig_(this);
}

{
  MTPListGestureConfig_::~MTPListGestureConfig_(this);

  operator delete();
}

void MTPListGestureConfig_::setParseErrorString(MTPListGestureConfig_ *this, CFStringRef theString)
{
  v3 = *(this + 14);
  if (v3 != theString)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 14) = theString;
    if (theString)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0);
      printf("%s", CStringPtr);
    }
  }
}

CFComparisonResult MTPListGestureConfig_::eventTypeCFStringToCode(MTPListGestureConfig_ *this, CFStringRef theString1)
{
  if (!theString1)
  {
    return 0;
  }

  if (CFStringCompare(theString1, @"Mouse Point", 1uLL) == kCFCompareEqualTo)
  {
    return 68;
  }

  if (CFStringCompare(theString1, @"Mouse Down", 1uLL) == kCFCompareEqualTo)
  {
    return 65;
  }

  if (CFStringCompare(theString1, @"Mouse Up", 1uLL) == kCFCompareEqualTo)
  {
    return 66;
  }

  if (CFStringCompare(theString1, @"Mouse Click", 1uLL) == kCFCompareEqualTo)
  {
    return 67;
  }

  if (CFStringCompare(theString1, @"Mouse Double Click", 1uLL) == kCFCompareEqualTo)
  {
    return 72;
  }

  if (CFStringCompare(theString1, @"Mouse Drag", 1uLL) == kCFCompareEqualTo)
  {
    return 69;
  }

  if (CFStringCompare(theString1, @"Scroll", 1uLL) == kCFCompareEqualTo)
  {
    return 70;
  }

  if (CFStringCompare(theString1, @"Scroll To Edge", 1uLL) == kCFCompareEqualTo)
  {
    return 78;
  }

  if (CFStringCompare(theString1, @"Orientation", 1uLL) == kCFCompareEqualTo)
  {
    return 71;
  }

  if (CFStringCompare(theString1, @"Zoom Toggle", 1uLL) == kCFCompareEqualTo)
  {
    return 73;
  }

  if (CFStringCompare(theString1, @"Key Down", 1uLL) == kCFCompareEqualTo)
  {
    return 129;
  }

  if (CFStringCompare(theString1, @"Key Up", 1uLL) == kCFCompareEqualTo)
  {
    return 130;
  }

  if (CFStringCompare(theString1, @"Key Stroke", 1uLL) == kCFCompareEqualTo)
  {
    return 128;
  }

  if (CFStringCompare(theString1, @"Swipe", 1uLL) == kCFCompareEqualTo)
  {
    return 133;
  }

  if (CFStringCompare(theString1, @"Fluid Navigation", 1uLL) == kCFCompareEqualTo)
  {
    return 36;
  }

  if (CFStringCompare(theString1, @"Fluid Dock", 1uLL) == kCFCompareEqualTo)
  {
    return 37;
  }

  if (CFStringCompare(theString1, @"Fluid Notification", 1uLL) == kCFCompareEqualTo)
  {
    return 38;
  }

  if (CFStringCompare(theString1, @"Fluid Notification Alt", 1uLL) == kCFCompareEqualTo)
  {
    return 39;
  }

  if (CFStringCompare(theString1, @"Show Definition", 1uLL) == kCFCompareEqualTo)
  {
    return 140;
  }

  if (CFStringCompare(theString1, @"Key Consumer App", 1uLL) == kCFCompareEqualTo || CFStringCompare(theString1, @"Symbolic Hotkey", 1uLL) == kCFCompareEqualTo)
  {
    return 134;
  }

  if (CFStringCompare(theString1, @"System", 1uLL) == kCFCompareEqualTo)
  {
    return 135;
  }

  if (CFStringCompare(theString1, @"Gesture Ended", 1uLL) == kCFCompareEqualTo)
  {
    return 32;
  }

  if (CFStringCompare(theString1, @"Gesture Started", 1uLL) == kCFCompareEqualTo)
  {
    return 33;
  }

  result = CFStringCompare(theString1, @"Window Move", 1uLL);
  if (result)
  {
    CFStringCompare(theString1, @"Window Size", 1uLL);
    return 0;
  }

  return result;
}

uint64_t MTPListGestureConfig_::keyCodeCFStringToCode(MTPListGestureConfig_ *this, CFStringRef theString1)
{
  v3 = 0;
  while (1)
  {
    v4 = gUSBKeyNames[v3];
    if (v4)
    {
      if (CFStringCompare(theString1, v4, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (++v3 == 256)
    {
      LOWORD(v3) = 0;
      return v3;
    }
  }

  return v3;
}

uint64_t MTPListGestureConfig_::modifiersCFStringToMask(MTPListGestureConfig_ *this, const __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  if (CFStringFind(cf, @"Shift", 1uLL).location == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 34;
  }

  if (CFStringFind(cf, @"Cmd", 1uLL).location != -1)
  {
    v4 |= 0x88u;
  }

  if (CFStringFind(cf, @"Alt", 1uLL).location != -1)
  {
    v4 |= 0x44u;
  }

  if (CFStringFind(cf, @"Ctrl", 1uLL).location != -1)
  {
    v4 |= 0x11u;
  }

  if (CFStringFind(cf, @"Button1", 1uLL).location != -1)
  {
    v4 |= 0x100u;
  }

  if (CFStringFind(cf, @"Button2", 1uLL).location != -1)
  {
    v4 |= 0x200u;
  }

  if (CFStringFind(cf, @"Button3", 1uLL).location != -1)
  {
    v4 |= 0x400u;
  }

  if (CFStringFind(cf, @"Button4", 1uLL).location != -1)
  {
    v4 |= 0x800u;
  }

  if (CFStringFind(cf, @"Button5", 1uLL).location != -1)
  {
    v4 |= 0x1000u;
  }

  if (CFStringFind(cf, @"Button6", 1uLL).location != -1)
  {
    v4 |= 0x2000u;
  }

  if (CFStringFind(cf, @"Button7", 1uLL).location == -1)
  {
    return v4;
  }

  else
  {
    return v4 | 0x4000;
  }
}

void MTPListGestureConfig_::parseCreateActionEvent(MTPListGestureConfig_ *a1, const __CFDictionary *cf, uint64_t a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
  {
    v31 = 0;
    valuePtr = 0;
    Value = CFDictionaryGetValue(cf, @"EventType");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v10 = CFStringGetTypeID(), v9 == v10))
    {
      v11 = MTPListGestureConfig_::eventTypeCFStringToCode(v10, v8);
      if (v11)
      {
        v12 = v11;
        v13 = CFDictionaryGetValue(cf, @"Modifiers");
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = CFGetTypeID(v13);
        TypeID = CFStringGetTypeID();
        if (v15 == TypeID)
        {
          v17 = MTPListGestureConfig_::modifiersCFStringToMask(TypeID, v14);
          valuePtr = v17;
        }

        else
        {
          v19 = CFGetTypeID(v14);
          if (v19 != CFNumberGetTypeID())
          {
LABEL_18:
            v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Modifier '%@' not recognized\n", @"ERROR in PListGestureParser:", v14);
            MTPListGestureConfig_::setParseErrorString(a1, v20);
LABEL_19:
            v21 = CFDictionaryGetValue(cf, @"KeyCode");
            if (v21)
            {
              v22 = v21;
              v23 = CFGetTypeID(v21);
              v24 = CFStringGetTypeID();
              if (v23 == v24)
              {
                v25 = MTPListGestureConfig_::keyCodeCFStringToCode(v24, v22);
                v31 = v25;
LABEL_25:
                v29 = 0xAAAAAAAAAAAAAAAALL;
                MTActionEvent_::MTActionEvent_(&v29, v12, valuePtr, v25);
                v27 = *(a3 + 8);
                if (v27 >= *(a3 + 16))
                {
                  v28 = std::vector<MTActionEvent_>::__emplace_back_slow_path<MTActionEvent_ const&>(a3, &v29);
                }

                else
                {
                  MTActionEvent_::MTActionEvent_(*(a3 + 8), &v29);
                  v28 = v27 + 8;
                  *(a3 + 8) = v27 + 8;
                }

                *(a3 + 8) = v28;
                return;
              }

              v26 = CFGetTypeID(v22);
              if (v26 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v22, kCFNumberSInt16Type, &v31);
                v25 = v31;
                goto LABEL_25;
              }
            }

            v25 = 0;
            goto LABEL_25;
          }

          CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
          v17 = valuePtr;
        }

        if (v17)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Unknown or unsupported %@ '%@'\n", @"ERROR in PListGestureParser:", @"EventType", v8);
    }

    else
    {
      v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Action Event missing '%@' key\n", @"ERROR in PListGestureParser:", @"EventType");
    }
  }

  else
  {
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Action Event not a CFDictionary\n", @"ERROR in PListGestureParser:");
  }

  MTPListGestureConfig_::setParseErrorString(a1, v18);
}

void MTPListGestureConfig_::lookupOrParseActionEvents(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  a3[1] = *a3;
  Value = CFDictionaryGetValue(theDict, @"Action");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      v8 = CFDictionaryGetValue(*(a1 + 104), v6);
      if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i != v12; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
            MTPListGestureConfig_::parseCreateActionEvent(a1, ValueAtIndex, a3);
          }
        }
      }

      else
      {
        v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Action '%@' has no event array\n", @"ERROR in PListGestureParser:", v6);

        MTPListGestureConfig_::setParseErrorString(a1, v15);
      }
    }
  }
}

uint64_t MTPListGestureConfig_::parseGestureMotionCode(MTPListGestureConfig_ *this, CFDictionaryRef theDict)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"Motion")) == 0 || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFStringGetTypeID()))
  {
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Gesture's '%@' key missing\n", @"ERROR in PListGestureParser:", @"Motion");
LABEL_32:
    MTPListGestureConfig_::setParseErrorString(this, v7);
    return 0;
  }

  if (CFStringCompare(v4, @"Tap", 1uLL) == kCFCompareEqualTo)
  {
    return 12288;
  }

  if (CFStringCompare(v4, @"DroppedFingerTap", 1uLL) == kCFCompareEqualTo)
  {
    return 24576;
  }

  if (CFStringCompare(v4, @"DoubleTap", 1uLL) == kCFCompareEqualTo)
  {
    return 28672;
  }

  if (CFStringCompare(v4, @"Hold", 1uLL) == kCFCompareEqualTo)
  {
    return 4096;
  }

  if (CFStringCompare(v4, @"Lift", 1uLL) == kCFCompareEqualTo)
  {
    return 0x2000;
  }

  if (CFStringCompare(v4, @"Translate", 1uLL) == kCFCompareEqualTo)
  {
    return 15;
  }

  if (CFStringCompare(v4, @"Horizontal", 1uLL) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(v4, @"Vertical", 1uLL) == kCFCompareEqualTo)
  {
    return 12;
  }

  if (CFStringCompare(v4, @"Down", 1uLL) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(v4, @"Up", 1uLL) == kCFCompareEqualTo)
  {
    return 4;
  }

  if (CFStringCompare(v4, @"Left", 1uLL) == kCFCompareEqualTo)
  {
    return 2;
  }

  v6 = 1;
  if (CFStringCompare(v4, @"Right", 1uLL))
  {
    if (CFStringCompare(v4, @"LowerLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 10;
    }

    if (CFStringCompare(v4, @"LowerRight", 1uLL) == kCFCompareEqualTo)
    {
      return 9;
    }

    if (CFStringCompare(v4, @"UpperLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 6;
    }

    if (CFStringCompare(v4, @"UpperRight", 1uLL) == kCFCompareEqualTo)
    {
      return 5;
    }

    if (CFStringCompare(v4, @"Scale", 1uLL) == kCFCompareEqualTo)
    {
      return 48;
    }

    if (CFStringCompare(v4, @"Expand", 1uLL) == kCFCompareEqualTo)
    {
      return 16;
    }

    if (CFStringCompare(v4, @"Contract", 1uLL) == kCFCompareEqualTo)
    {
      return 32;
    }

    if (CFStringCompare(v4, @"Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 192;
    }

    if (CFStringCompare(v4, @"RotateLeft", 1uLL) == kCFCompareEqualTo)
    {
      return 64;
    }

    if (CFStringCompare(v4, @"RotateRight", 1uLL) == kCFCompareEqualTo)
    {
      return 128;
    }

    if (CFStringCompare(v4, @"Scale+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 240;
    }

    if (CFStringCompare(v4, @"Translate+Scale", 1uLL) == kCFCompareEqualTo)
    {
      return 63;
    }

    if (CFStringCompare(v4, @"Translate+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 207;
    }

    if (CFStringCompare(v4, @"Translate+Scale+Rotate", 1uLL) == kCFCompareEqualTo)
    {
      return 255;
    }

    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Unrecognized gesture %@ '%@'\n", @"ERROR in PListGestureParser:", @"Motion", v4);
    goto LABEL_32;
  }

  return v6;
}

const __CFNumber *MTPListGestureConfig_::parseFloatValue(MTPListGestureConfig_ *this, CFDictionaryRef theDict, const __CFString *key, float *a4, const __CFString *a5)
{
  result = CFDictionaryGetValue(theDict, key);
  if (result)
  {
    v10 = result;
    v11 = CFGetTypeID(result);
    if (v11 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v10, kCFNumberFloat32Type, a4))
      {
        return (&dword_0 + 1);
      }

      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Corrupt %@ value in %@\n", @"ERROR in PListGestureParser:", key, a5);
    }

    else
    {
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ %@ value should be a number in %@\n", @"ERROR in PListGestureParser:", key, a5);
    }

    MTPListGestureConfig_::setParseErrorString(this, v12);
    return 0;
  }

  return result;
}

MTPListGestureConfig_ *MTPListGestureConfig_::parseMotionSensitivity(MTPListGestureConfig_ *result, const __CFDictionary *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v22 = 0;
    v21 = 0.0635;
    v19 = 1.0;
    v20 = 400.0;
    if (MTPListGestureConfig_::parseFloatValue(result, a2, @"Resolution_dpi", &v20, @"Motion Sensitivity"))
    {
      if (v20 != 0.0)
      {
        v6 = 25.4 / v20;
        v21 = v6;
      }
    }

    else if ((MTPListGestureConfig_::parseFloatValue(v5, a2, @"Resolution_mm", &v21, @"Motion Sensitivity") & 1) == 0)
    {
      puts("Missing resolution_dpi/mm key!");
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Missing %@ value for Motion Sensitivity\n", @"ERROR in PListGestureParser:", @"Resolution_mm");
      MTPListGestureConfig_::setParseErrorString(v5, v7);
    }

    MTPListGestureConfig_::parseFloatValue(v5, a2, @"CommitMultiplier", &v19, @"Motion Sensitivity");
    MTPListGestureConfig_::parseFloatValue(v5, a2, @"CommitMultiplier", &v19, @"Motion Sensitivity");
    MTPListGestureConfig_::parseFloatValue(v5, a2, @"AccelPower", &v22 + 1, @"Motion Sensitivity");
    MTPListGestureConfig_::parseFloatValue(v5, a2, @"AccelThresh", &v22, @"Motion Sensitivity");
    v8 = v21;
    v9 = v22;
    v10 = v19;
    v11 = HIDWORD(v22);
    v18 = 0.0;
    v12 = 0;
    if (MTPListGestureConfig_::parseFloatValue(v5, a2, @"FrameDecay_mm", &v18, @"Motion Sensitivity"))
    {
      v13 = v18;
    }

    else
    {
      v13 = 0.0;
    }

    v17 = 0;
    v16 = 0.01;
    result = MTPListGestureConfig_::parseFloatValue(v5, a2, @"FluidAnimationStartThreshold_mm", &v17 + 1, @"Motion Sensitivity");
    if (result && (result = MTPListGestureConfig_::parseFloatValue(v5, a2, @"FluidSwipeCompleteThreshold_mm", &v17, @"Motion Sensitivity"), result))
    {
      result = MTPListGestureConfig_::parseFloatValue(v5, a2, @"FluidSwipeInertiaTime_s", &v16, @"Motion Sensitivity");
      v14 = 0;
      v15 = 0.0;
      if (result)
      {
        v12 = HIDWORD(v17);
        v14 = v17;
        v15 = v16;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    *a3 = v8;
    *(a3 + 4) = v10;
    *(a3 + 8) = v9;
    *(a3 + 12) = v11;
    *(a3 + 16) = v13;
    *(a3 + 20) = v12;
    *(a3 + 24) = v14;
    *(a3 + 28) = v15;
  }

  return result;
}

const void *MTPListGestureConfig_::extractMotionSensitivity(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  *a3 = 0x3F80000000000000;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  result = CFDictionaryGetValue(theDict, @"Sensitivity");
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    if (v7 == CFStringGetTypeID())
    {
      Value = CFDictionaryGetValue(*(a1 + 96), v6);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = a1;
          v12 = v9;
LABEL_8:
          MTPListGestureConfig_::parseMotionSensitivity(v11, v12, a3);
          return &dword_0 + 1;
        }
      }

      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Motion Sensitivity dictionary '%@' not found in library\n", @"ERROR in PListGestureParser:", v6);
      MTPListGestureConfig_::setParseErrorString(a1, v14);
    }

    else
    {
      v13 = CFGetTypeID(v6);
      if (v13 == CFDictionaryGetTypeID())
      {
        v11 = a1;
        v12 = v6;
        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t MTPListGestureConfig_::extractGestureCategory(MTPListGestureConfig_ *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"Category");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  v6 = 1;
  if (CFStringCompare(v4, @"OneFingerPoint", 1uLL))
  {
    if (CFStringCompare(v4, @"FiveFingerPoint", 1uLL) == kCFCompareEqualTo)
    {
      return 2;
    }

    if (CFStringCompare(v4, @"TwoFingerDrag", 1uLL) == kCFCompareEqualTo)
    {
      return 4;
    }

    if (CFStringCompare(v4, @"AlreadyMouse", 1uLL) == kCFCompareEqualTo)
    {
      return 16;
    }

    if (CFStringCompare(v4, @"ScrollPan", 1uLL) == kCFCompareEqualTo)
    {
      return 64;
    }

    if (CFStringCompare(v4, @"TwoFingerScroll", 1uLL) == kCFCompareEqualTo)
    {
      return 128;
    }

    if (CFStringCompare(v4, @"TwoFingerNotificationCenter", 1uLL) == kCFCompareEqualTo)
    {
      return 32;
    }

    if (CFStringCompare(v4, @"TwoFingerNotificationCenterAlt", 1uLL) == kCFCompareEqualTo)
    {
      return 256;
    }

    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Gesture Category '%@' not supported\n", @"ERROR in PListGestureParser:", v4);
    MTPListGestureConfig_::setParseErrorString(this, v7);
    return 0;
  }

  return v6;
}

void MTPListGestureConfig_::parseGesture(MTPListGestureConfig_ *a1, const __CFDictionary *a2, void **a3, __int128 *a4)
{
  if (a2)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    MTPListGestureConfig_::lookupOrParseActionEvents(a1, a2, &v71);
    v8 = MTPListGestureConfig_::parseGestureMotionCode(a1, a2);
    v9 = ((v8 >> 12) | (16 * v8));
    if (v9 <= 2)
    {
      if (!(16 * v8))
      {
        goto LABEL_106;
      }

      if (v9 == 1)
      {
        Value = CFDictionaryGetValue(a2, @"Trigger");
        v37 = Value;
        if (Value && (v38 = CFGetTypeID(Value), v38 == CFStringGetTypeID()))
        {
          location = CFStringFind(v37, @"BeginSlide", 1uLL).location;
          v40 = CFStringFind(v37, @"MayBegin", 1uLL).location;
          v41 = CFStringFind(v37, @"TimeHeld", 1uLL).location;
          if (location == -1)
          {
            v42 = 1;
          }

          else
          {
            v42 = 9;
          }

          if (v40 != -1)
          {
            v42 |= 0x100u;
          }

          if (v41 != -1)
          {
            v42 |= 4u;
          }
        }

        else
        {
          v42 = 1;
        }

        *(a3 + 60) = v42;
        v44 = CFDictionaryGetValue(a2, @"HoldTime");
        v45 = v44;
        if (v44 && (v46 = CFGetTypeID(v44), v46 == CFNumberGetTypeID()))
        {
          LOWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v45, kCFNumberSInt16Type, valuePtr);
          v47 = valuePtr[0];
        }

        else
        {
          v47 = 350;
        }

        *(a3 + 61) = v47;
        v43 = a3 + 12;
        if (a3 + 12 == &v71)
        {
          goto LABEL_106;
        }

LABEL_85:
        std::vector<MTActionEvent_>::__assign_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(v43, v71, v72, (v72 - v71) >> 3);
        goto LABEL_106;
      }

      if (v9 == 2)
      {
        *(a3 + 76) = 2;
        v10 = CFDictionaryGetValue(a2, @"StopTime");
        v11 = v10;
        if (v10 && (v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
        {
          LOWORD(valuePtr[0]) = 0;
          CFNumberGetValue(v11, kCFNumberSInt16Type, valuePtr);
          v13 = valuePtr[0];
        }

        else
        {
          v13 = 200;
        }

        *(a3 + 77) = v13;
        v43 = a3 + 16;
        if (a3 + 16 == &v71)
        {
          goto LABEL_106;
        }

        goto LABEL_85;
      }

LABEL_18:
      v16 = v8;
      if (v8 == 128 || v8 == 32)
      {
        v16 = v8 | 0x1000000;
      }

      v17 = 0.0;
      v18 = 0.0;
      if ((v8 - 1) <= 0xBu)
      {
        v19 = (v8 - 1);
        v17 = flt_D6708[v19];
        v18 = flt_D6738[v19];
      }

      v20 = CFDictionaryGetValue(a2, @"Trigger");
      v21 = v20;
      if (v20)
      {
        v22 = CFGetTypeID(v20);
        if (v22 == CFStringGetTypeID())
        {
          v67 = CFStringFind(v21, @"OnceOnly", 1uLL).location;
          v66 = CFStringFind(v21, @"OncePerDirection", 1uLL).location;
          v65 = CFStringFind(v21, @"OnceIfQuick", 1uLL).location;
          v64 = CFStringFind(v21, @"OnlyIfQuick", 1uLL).location;
          v63 = CFStringFind(v21, @"OnlyFromEdge", 1uLL).location;
          v62 = CFStringFind(v21, @"IfWidelySeparatedFingers", 1uLL).location;
          v61 = CFStringFind(v21, @"OnlyIfAllMoving", 1uLL).location;
          v60 = CFStringFind(v21, @"OnlyIfFourMoving", 1uLL).location;
          v59 = CFStringFind(v21, @"OnlyIfSomeMoving", 1uLL).location;
          v58 = CFStringFind(v21, @"OnlyIfTwoMoving", 1uLL).location;
          v57 = CFStringFind(v21, @"OnlyIfOneMoving", 1uLL).location;
          v56 = CFStringFind(v21, @"RequiresForce", 1uLL).location;
          v55 = CFStringFind(v21, @"WaitForQuick", 1uLL).location;
          v23 = CFStringFind(v21, @"ToggleAlongAxis", 1uLL).location;
          v24 = CFStringFind(v21, @"Momentum", 1uLL).location;
          v25 = CFStringFind(v21, @"LowCommitSensitivity", 1uLL).location;
          v26 = CFStringFind(v21, @"AccelOnlyIfSomeResting", 1uLL).location;
          v27 = CFStringFind(v21, @"Repetitive", 1uLL).location;
          v28 = v16 | 0x1000;
          if (v67 == -1)
          {
            v28 = v16;
          }

          if (v66 != -1)
          {
            v28 |= 0x2000u;
          }

          if (v65 != -1)
          {
            v28 |= 0x4000u;
          }

          if (v64 != -1)
          {
            v28 |= 0x4000000u;
          }

          if (v63 != -1)
          {
            v28 |= 0x200000u;
          }

          if (v62 != -1)
          {
            v28 |= 0x100u;
          }

          if (v61 != -1)
          {
            v28 |= 0x8000000u;
          }

          if (v60 != -1)
          {
            v28 = v28 & 0xFFFFF1FF | 0x800;
          }

          if (v59 != -1)
          {
            v28 |= 0xE00u;
          }

          v29 = v28 & 0xFFFFF1FF;
          if (v58 != -1)
          {
            v28 = v28 & 0xFFFFF1FF | 0x400;
          }

          v30 = v29 | 0x200;
          if (v57 != -1)
          {
            v28 = v30;
          }

          if (v56 != -1)
          {
            v28 |= 0x80000000;
          }

          if (v55 != -1)
          {
            v28 |= 0x2000000u;
          }

          if (v23 != -1)
          {
            v28 |= 0x20000u;
          }

          if (v24 != -1)
          {
            v28 |= 0x400000u;
          }

          if (v25 != -1)
          {
            v28 |= 0x80000u;
          }

          if (v26 == -1)
          {
            v16 = v28;
          }

          else
          {
            v16 = v28 | 0x800000;
          }

          if (v27 == -1 && !v16)
          {
            v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Unknown Retriggering Option '%@'\n", @"ERROR in PListGestureParser:", v21);
            MTPListGestureConfig_::setParseErrorString(a1, v31);
            v16 = 0;
          }
        }
      }

      v32 = CFDictionaryGetValue(a2, @"Locking");
      v33 = v32;
      if (v32)
      {
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          if (CFStringCompare(v33, @"LockOnAxis", 1uLL))
          {
            if (CFStringCompare(v33, @"LockOnFirst", 1uLL))
            {
              if (CFStringCompare(v33, @"LockOnFirstUntilPause", 1uLL))
              {
                if (CFStringCompare(v33, @"LockOnThrow", 1uLL))
                {
                  if (CFStringCompare(v33, @"LockNever", 1uLL))
                  {
                    v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Unknown Trigger Stick Option '%@'\n", @"ERROR in PListGestureParser:", v33);
                    MTPListGestureConfig_::setParseErrorString(a1, v35);
                  }
                }

                else
                {
                  v16 |= 0x400000u;
                }
              }

              else
              {
                v16 |= 0x40000u;
              }
            }

            else
            {
              v16 |= 0x8000u;
            }
          }

          else
          {
            v16 |= 0x10000u;
          }
        }
      }

      v48 = a4[1];
      v69 = *a4;
      v70 = v48;
      if ((MTPListGestureConfig_::extractMotionSensitivity(a1, a2, &v69) & 1) == 0)
      {
        v49 = a4[1];
        v69 = *a4;
        v70 = v49;
      }

      if (*&v69 == 0.0)
      {
        v53 = CFDictionaryGetValue(a2, @"Action");
        v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ No motion %@ for %@ gesture\n", @"ERROR in PListGestureParser:", @"Sensitivity", v53);
        MTPListGestureConfig_::setParseErrorString(a1, v54);
      }

      else
      {
        GestureCategory = MTPListGestureConfig_::extractGestureCategory(a1, a2);
        valuePtr[8] = xmmword_D66D0;
        valuePtr[9] = unk_D66E0;
        valuePtr[2] = xmmword_D6670;
        valuePtr[3] = unk_D6680;
        valuePtr[4] = xmmword_D6690;
        memset(&valuePtr[5], 255, 48);
        memset(valuePtr, 170, 32);
        MTSlideGesture_::MTSlideGesture_(valuePtr, v16, GestureCategory, &v69, &v71, v18, v17);
        v51 = a3[21];
        if (v51 >= a3[22])
        {
          v52 = std::vector<MTSlideGesture_>::__emplace_back_slow_path<MTSlideGesture_ const&>((a3 + 20), valuePtr);
        }

        else
        {
          MTSlideGesture_::MTSlideGesture_(a3[21], valuePtr);
          v52 = (v51 + 160);
          a3[21] = v51 + 160;
        }

        a3[21] = v52;
        if (*&valuePtr[0])
        {
          *(&valuePtr[0] + 1) = *&valuePtr[0];
          operator delete(*&valuePtr[0]);
        }
      }

      goto LABEL_106;
    }

    if (v9 == 3)
    {
      *(a3 + 12) = 3;
      if (&v71 == a3)
      {
LABEL_106:
        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        return;
      }
    }

    else
    {
      if (v9 == 6)
      {
        *(a3 + 28) = 3;
        v15 = a3 + 4;
      }

      else
      {
        if (v9 != 7)
        {
          goto LABEL_18;
        }

        *(a3 + 44) = 3;
        v15 = a3 + 8;
      }

      a3 = v15;
      if (v15 == &v71)
      {
        goto LABEL_106;
      }
    }

    std::vector<MTActionEvent_>::__assign_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(a3, v71, v72, (v72 - v71) >> 3);
    goto LABEL_106;
  }

  v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ NULL chord or gesture dictionary\n", @"ERROR in PListGestureParser:");

  MTPListGestureConfig_::setParseErrorString(a1, v14);
}

void sub_438A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTPListGestureConfig_::extractChordTransitions(MTPListGestureConfig_ *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Transitions");
    if (Value && (v3 = Value, v4 = CFGetTypeID(Value), v4 == CFStringGetTypeID()))
    {
      v5 = CFStringFind(v3, @"MultiFingerDrag", 1uLL).location != -1;
      if (CFStringFind(v3, @"FromFewerIfPause", 1uLL).location == -1)
      {
        v6 = v5 << 8;
      }

      else
      {
        v6 = ((v5 & 1) << 8) | 4;
      }

      if (CFStringFind(v3, @"ToFewerAfterSlightDelay", 1uLL).location != -1)
      {
        v6 |= 0x90u;
      }

      if (CFStringFind(v3, @"FromMoreWithSlightIntegrationDelay", 1uLL).location != -1)
      {
        v6 |= 0x1001u;
      }

      if (CFStringFind(v3, @"ToMoreFingers", 1uLL).location != -1)
      {
        v6 |= 0x20u;
      }

      if (CFStringFind(v3, @"ToMoreIfPause", 1uLL).location != -1)
      {
        v6 |= 0x40u;
      }

      v7 = v6 | (CFStringFind(v3, @"FromMoreFingers", 1uLL).location != -1);
      if (CFStringFind(v3, @"FromPausedPoint", 1uLL).location != -1)
      {
        v7 |= 0x800u;
      }

      if (CFStringFind(v3, @"FromRestingPoint", 1uLL).location != -1)
      {
        v7 |= 8u;
      }

      if (CFStringFind(v3, @"IsRestingPoint", 1uLL).location != -1)
      {
        v7 |= 0x80u;
      }

      if (CFStringFind(v3, @"ToFewerFingers", 1uLL).location != -1)
      {
        v7 |= 0x10u;
      }

      location = CFStringFind(v3, @"FromFewerFingers", 1uLL).location;
      v9 = v7 | 2;
      if (location == -1)
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

void MTPListGestureConfig_::parseGestureSet(MTPListGestureConfig_ *this, const __CFString *a2, const __CFDictionary *cf, MTChordGestureSet_ *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()))
  {
    v19 = 0x3F80000000000000uLL;
    v20 = 0;
    v21 = 0;
    MTPListGestureConfig_::extractMotionSensitivity(this, cf, &v19);
    GestureCategory = MTPListGestureConfig_::extractGestureCategory(this, cf);
    if (GestureCategory)
    {
      *(a4 + 58) = GestureCategory;
    }

    *(a4 + 114) |= MTPListGestureConfig_::extractChordTransitions(GestureCategory, cf);
    Value = CFDictionaryGetValue(cf, @"Gestures");
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
            MTPListGestureConfig_::parseGesture(this, ValueAtIndex, a4, &v19);
          }
        }

        return;
      }
    }

    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ No %@ array for gesture set '%@'\n", v11, @"ERROR in PListGestureParser:", @"Gestures", a2);
  }

  else
  {
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ No dictionary for gesture set '%@'\n", a4, @"ERROR in PListGestureParser:", a2);
  }

  MTPListGestureConfig_::setParseErrorString(this, v18);
}

uint64_t MTPListGestureConfig_::parseChordSpecifier(MTPListGestureConfig_ *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"Pengrip", 1uLL) == kCFCompareEqualTo)
  {
    return 10;
  }

  if (CFStringCompare(theString1, @"Fist", 1uLL) == kCFCompareEqualTo)
  {
    return 12;
  }

  if (CFStringCompare(theString1, @"Palm", 1uLL) == kCFCompareEqualTo)
  {
    return 13;
  }

  v3 = 1;
  if (CFStringCompare(theString1, @"1 Finger", 1uLL))
  {
    if (CFStringCompare(theString1, @"2 Fingers", 1uLL))
    {
      if (CFStringCompare(theString1, @"3 Fingers", 1uLL))
      {
        if (CFStringCompare(theString1, @"4 Fingers", 1uLL))
        {
          if (CFStringCompare(theString1, @"Thumb", 1uLL))
          {
            if (CFStringCompare(theString1, @"1 Finger + Thumb", 1uLL))
            {
              if (CFStringCompare(theString1, @"2 Fingers + Thumb", 1uLL))
              {
                if (CFStringCompare(theString1, @"3 Fingers + Thumb", 1uLL))
                {
                  if (CFStringCompare(theString1, @"4 Fingers + Thumb", 1uLL))
                  {
                    return 0;
                  }

                  else
                  {
                    return 9;
                  }
                }

                else
                {
                  return 8;
                }
              }

              else
              {
                return 7;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 5;
          }
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

void MTPListGestureConfig_::parseChordGestureSetAndCopyIntoTable(MTPListGestureConfig_ *this, CFTypeRef cf, const __CFString *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    if (a3)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFStringGetTypeID())
        {
          Value = CFDictionaryGetValue(cf, @"Chord");
          if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFStringGetTypeID()))
          {
            GestureCategory = MTPListGestureConfig_::extractGestureCategory(this, cf);
            v13 = MTPListGestureConfig_::parseChordSpecifier(GestureCategory, v10);
            if (v13)
            {
              v14 = v13;
              *&v15 = 0xAAAAAAAAAAAAAAAALL;
              *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v38[3] = v15;
              v38[4] = v15;
              v38[1] = v15;
              v38[2] = v15;
              v37 = v15;
              v38[0] = v15;
              __p = v15;
              *v34 = v15;
              v35 = v15;
              *v32 = v15;
              v33 = v15;
              *v30 = v15;
              v31 = v15;
              *v28 = v15;
              v29 = v15;
              CStringPtr = CFStringGetCStringPtr(v10, 0);
              MTChordGestureSet_::MTChordGestureSet_(v28, v14, 0, GestureCategory, CStringPtr);
              v17 = MTGestureConfig_::copyChordIntoHandTable(this, 1, v28);
              v18 = CFDictionaryGetValue(cf, @"Gesture Set");
              v19 = v18;
              if (v18 && (v20 = CFGetTypeID(v18), v20 == CFStringGetTypeID()))
              {
                v21 = CFDictionaryGetValue(*(this + 11), v19);
                v22 = v21;
                if (v21 && (v23 = CFGetTypeID(v21), v23 == CFDictionaryGetTypeID()))
                {
                  MTPListGestureConfig_::parseGestureSet(this, v19, v22, v17);
                }

                else
                {
                  v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ No dictionary for '%@' Gesture Set\n", @"ERROR in PListGestureParser:", v19);
                  MTPListGestureConfig_::setParseErrorString(this, v26);
                }
              }

              else
              {
                v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ No Gesture Set for '%@' Chord\n", @"ERROR in PListGestureParser:", v10);
                MTPListGestureConfig_::setParseErrorString(this, v25);
              }

              v27 = v38;
              std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v27);
              if (__p)
              {
                *(&__p + 1) = __p;
                operator delete(__p);
              }

              if (v34[0])
              {
                v34[1] = v34[0];
                operator delete(v34[0]);
              }

              if (v32[0])
              {
                v32[1] = v32[0];
                operator delete(v32[0]);
              }

              if (v30[0])
              {
                v30[1] = v30[0];
                operator delete(v30[0]);
              }

              if (v28[0])
              {
                v28[1] = v28[0];
                operator delete(v28[0]);
              }
            }
          }

          else
          {
            v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Chord Dictionary Missing '%@' Key\n", @"ERROR in PListGestureParser:", @"Chord");

            MTPListGestureConfig_::setParseErrorString(this, v24);
          }
        }
      }
    }
  }
}

void sub_441A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MTChordGestureSet_::~MTChordGestureSet_(va);
  _Unwind_Resume(a1);
}

void MTPListGestureConfig_::parseChordMappingsForHand(MTPListGestureConfig_ *this, const __CFString *cf, const __CFDictionary *a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()) || CFStringCompare(cf, @"Right", 1uLL) && CFStringCompare(cf, @"Any", 1uLL))
  {
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ '%@' Hand not recognized or supported\n", @"ERROR in PListGestureParser:", cf);
LABEL_6:

    MTPListGestureConfig_::setParseErrorString(this, v7);
    return;
  }

  if (!a3 || (v8 = CFGetTypeID(a3), v8 != CFDictionaryGetTypeID()))
  {
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Missing chord dictionary for '%@' Hand\n", @"ERROR in PListGestureParser:", cf);
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(a3, @"Chords");
  if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        MTPListGestureConfig_::parseChordGestureSetAndCopyIntoTable(this, ValueAtIndex, cf);
      }
    }
  }

  else
  {
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ Could not find '%@' array for '%@' Hand\n", @"ERROR in PListGestureParser:", @"Chords", cf);
    MTPListGestureConfig_::setParseErrorString(this, v16);
  }

  v17 = CFDictionaryGetValue(a3, @"LookupBySubset");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFStringGetTypeID())
    {
      ChordTableForHand = MTGestureConfig_::getChordTableForHand(this, 1);
      if (ChordTableForHand)
      {
        v21 = ChordTableForHand;
        if (CFStringCompare(v18, @"SyncedFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 0;
        }

        if (CFStringCompare(v18, @"TouchingFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 2;
        }

        if (CFStringCompare(v18, @"MovingFingers", 1uLL) == kCFCompareEqualTo)
        {
          *(v21 + 28) = 1;
        }
      }
    }
  }
}

void MTPListGestureConfig_::parseChordMappingPreferences(MTPListGestureConfig_ *this, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(cf);
      v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(cf, v6, v7);
      if (Count >= 1)
      {
        v8 = v6;
        v9 = v7;
        do
        {
          v11 = *v8++;
          v10 = v11;
          v12 = *v9++;
          MTPListGestureConfig_::parseChordMappingsForHand(this, v10, v12);
          --Count;
        }

        while (Count);
      }

      free(v6);

      free(v7);
    }
  }
}

void MTPListGestureConfig_::setChordMappingsDictionary(MTPListGestureConfig_ *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = *(this + 10);
  cf = v3;
  if (v4 != v3)
  {
    if (v4)
    {
      CFRelease(v4);
      *(this + 10) = 0;
    }

    if (cf)
    {
      *(this + 10) = cf;
      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig_::setGestureSetsDictionary(MTPListGestureConfig_ *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = *(this + 11);
  cf = v3;
  if (v4 != v3)
  {
    if (v4)
    {
      CFRelease(v4);
      *(this + 11) = 0;
    }

    if (cf)
    {
      *(this + 11) = cf;
      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig_::setMotionSensitivitiesDictionary(MTPListGestureConfig_ *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = *(this + 12);
  cf = v3;
  if (v4 != v3)
  {
    if (v4)
    {
      CFRelease(v4);
      *(this + 12) = 0;
    }

    if (cf)
    {
      *(this + 12) = cf;
      CFRetain(cf);
    }
  }
}

void MTPListGestureConfig_::setActionEventsDictionary(MTPListGestureConfig_ *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = *(this + 13);
  cf = v3;
  if (v4 != v3)
  {
    if (v4)
    {
      CFRelease(v4);
      *(this + 13) = 0;
    }

    if (cf)
    {
      *(this + 13) = cf;
      CFRetain(cf);
    }
  }
}

BOOL MTPListGestureConfig_::parseCreateGestureConfig(uint64_t a1, void *a2)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 80);
  if (!v5 || (v6 = CFGetTypeID(v5), v6 != CFDictionaryGetTypeID()))
  {
    v13 = kCFAllocatorDefault;
    v14 = "PListGestureParser ABORT: Chord Mappings dictionary missing\n";
LABEL_16:
    v15 = CFStringCreateWithCString(v13, v14, 0);
    MTPListGestureConfig_::setParseErrorString(a1, v15);
    goto LABEL_17;
  }

  v7 = *(a1 + 104);
  if (!v7 || (v8 = CFGetTypeID(v7), v8 != CFDictionaryGetTypeID()))
  {
    v13 = kCFAllocatorDefault;
    v14 = "PListGestureParser ABORT: Action Events dictionary missing\n";
    goto LABEL_16;
  }

  v9 = *(a1 + 96);
  if (!v9 || (v10 = CFGetTypeID(v9), v10 != CFDictionaryGetTypeID()))
  {
    v13 = kCFAllocatorDefault;
    v14 = "PListGestureParser ABORT: Motion Sensitivities dictionary missing\n";
    goto LABEL_16;
  }

  v11 = *(a1 + 88);
  if (!v11 || (v12 = CFGetTypeID(v11), v12 != CFDictionaryGetTypeID()))
  {
    v13 = kCFAllocatorDefault;
    v14 = "PListGestureParser ABORT: Gesture Sets dictionary missing\n";
    goto LABEL_16;
  }

  MTPListGestureConfig_::parseChordMappingPreferences(a1, *(a1 + 80));
LABEL_17:
  v16 = *(a1 + 112);
  if (a2 && v16)
  {
    v16 = v16;
    *a2 = v16;
    *(a1 + 112) = 0;
  }

  return v16 == 0;
}

BOOL MTGestureConfig_::decodeFromMap(MTChordCycling_ **this, HSUtil::Decoder *a2)
{
  HSUtil::Decoder::decodeCodable<MTChordCycling_>(a2, HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key, this[7]);
  v3 = *a2;
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTGestureConfig_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTGestureConfig_::decodeFromMap();
    }
  }

  return v3 == 0;
}

void *std::vector<MTActionEvent_>::__assign_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(void *result, const MTActionEvent_ *a2, const MTActionEvent_ *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTActionEvent_>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    while (v6 != a3)
    {
      result = MTActionEvent_::operator=(v9, v6);
      v6 = (v6 + 8);
      v9 += 2;
    }

    v7[1] = v9;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != v9)
    {
      do
      {
        result = MTActionEvent_::operator=(v9, v6);
        v6 = (v6 + 8);
        v9 += 2;
        v13 -= 8;
      }

      while (v13);
      v12 = v7[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      result = v12;
      do
      {
        MTActionEvent_::MTActionEvent_(result, v14);
        v14 = (v14 + 8);
        result = (v16 + 8);
        v15 += 8;
      }

      while (v14 != a3);
    }

    v7[1] = v15;
  }

  return result;
}

void std::vector<MTActionEvent_>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MTChordGestureSet_::~MTChordGestureSet_(MTChordGestureSet_ *this)
{
  v7 = (this + 160);
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<MTChordCycling_>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, MTChordCycling_ *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = MTChordCycling_::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

uint64_t MTChordCycling_::encode(MTChordCycling_ *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  (*(*this + 64))(this, a2);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<MTChordCycling_>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, MTChordCycling_ *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<MTChordCycling_>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::_readCodable<MTChordCycling_>(uint64_t a1, unint64_t *a2, MTChordCycling_ *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((MTChordCycling_::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t MTChordCycling_::decode(MTChordCycling_ *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeMap(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decode();
    }
  }

  else
  {
    if ((*(*this + 72))(this, &v8))
    {
      v5 = 1;
      goto LABEL_9;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decode();
    }
  }

  v5 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v6 = v9;
  *&v9 = 0;
  if (v6)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
    operator delete();
  }

  return v5;
}

uint64_t std::vector<MTActionEvent_>::__emplace_back_slow_path<MTActionEvent_ const&>(uint64_t a1, const MTActionEvent_ *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v12 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTActionEvent_>>(a1, v7);
  }

  __p[0] = 0;
  __p[1] = (8 * v2);
  MTActionEvent_::MTActionEvent_((8 * v2), a2);
  v11 = (8 * v2 + 8);
  std::vector<MTActionEvent_>::__swap_out_circular_buffer(a1, __p);
  v8 = *(a1 + 8);
  if (v11 != __p[1])
  {
    *&v11 = v11 + ((__p[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_4513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const MTActionEvent_ **std::vector<MTActionEvent_>::__swap_out_circular_buffer(const MTActionEvent_ **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 + *result - v6);
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      MTActionEvent_::MTActionEvent_(result, v5);
      v5 = (v5 + 8);
      result = (v8 + 8);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<MTSlideGesture_>::__emplace_back_slow_path<MTSlideGesture_ const&>(uint64_t a1, const MTSlideGesture_ *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture_>>(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  MTSlideGesture_::MTSlideGesture_((160 * v2), a2);
  v15 = 160 * v2 + 160;
  v7 = *(a1 + 8);
  v8 = (160 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTSlideGesture_>,MTSlideGesture_*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTSlideGesture_>::~__split_buffer(&v13);
  return v12;
}

void sub_45338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTSlideGesture_>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture_>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTSlideGesture_>,MTSlideGesture_*>(uint64_t a1, MTSlideGesture_ *a2, MTSlideGesture_ *a3, MTSlideGesture_ *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      MTSlideGesture_::MTSlideGesture_(this, v6);
      v6 = (v6 + 160);
      this = (v12 + 160);
      v12 = (v12 + 160);
    }

    while (v6 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 1) = v7;
        operator delete(v7);
      }

      v5 = (v5 + 160);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture_>,MTSlideGesture_*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture_>,MTSlideGesture_*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture_>,MTSlideGesture_*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture_>,MTSlideGesture_*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 160);
      v3 -= 160;
      v4 = v5;
      if (v5)
      {
        *(v1 - 152) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<MTSlideGesture_>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTSlideGesture_>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTSlideGesture_>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 160);
    *(a1 + 16) = v2 - 160;
    if (v5)
    {
      *(v2 - 152) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 160;
    }
  }
}

void __cxx_global_var_init_24()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void MTTapDragManager_::MTTapDragManager_(MTTapDragManager_ *this)
{
  *this = &off_109638;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 27) = 0;
}

uint64_t MTTapDragManager_::clearState(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 24) = 0;
  *(this + 27) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

uint64_t MTTapDragManager_::clearCycle(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 9) = 0;
  return this;
}

MTForceManagement_ *MTTapDragManager_::dragHandModifiers(MTTapDragManager_ *this)
{
  v2 = *(this + 6);
  if (v2 < 2 || (result = (&stru_B8 + 72), v2 != 2) && (*(this + 28) & 1) != 0)
  {
    result = *(this + 2);
    if (result)
    {
      if (MTForceManagement_::whichForceButtonActivated(result) == 1)
      {
        return (&stru_B8 + 72);
      }

      else
      {
        result = *(this + 2);
        if (result)
        {
          if (MTForceManagement_::whichForceButtonActivated(result) == 2)
          {
            return (&stru_1F8 + 8);
          }

          else
          {
            result = *(this + 2);
            if (result)
            {
              return ((MTForceManagement_::whichForceButtonActivated(result) == 4) << 10);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL MTTapDragManager_::halfTapDragTimedOut(MTTapDragManager_ *this, double a2)
{
  v4 = *(this + 28);
  v5 = qword_121A70;
  v6 = qword_121A60;
  if (((*(*this + 16))(this) & 0x100) == 0)
  {
    return 1;
  }

  if (v4)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *&v6;
  }

  v9 = a2 - *(this + 9);
  if (v9 >= a2 - *(this + 10))
  {
    v9 = a2 - *(this + 10);
  }

  return v9 > v8;
}

uint64_t MTTapDragManager_::updateLastState(uint64_t this)
{
  v1 = *(this + 24) > 2;
  *(this + 29) = v1;
  *(this + 30) = *(this + 28) & v1;
  return this;
}

uint64_t MTTapDragManager_::hasPhysicalDraggingEnded(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 24) < 3)
  {
    v3 = *(a1 + 29);
  }

  else
  {
    v3 = 1;
    if (a2 && a3 >= 1)
    {
      v4 = a3 - 1;
      v5 = (a2 + 20);
      do
      {
        v6 = *v5;
        v5 += 24;
        v7 = v6 - 5;
        v3 = (v6 - 5) < 0xFFFFFFFE;
        v9 = v4-- != 0;
      }

      while (v7 <= 0xFFFFFFFD && v9);
    }
  }

  return v3 & 1;
}

BOOL MTTapDragManager_::shouldSustainDrag(MTTapDragManager_ *this, double a2, int a3)
{
  if (*(this + 9))
  {
    return 0;
  }

  if (a3 - *(this + 48) > 0)
  {
    return 1;
  }

  v6 = *(this + 6);
  if (v6 >= 2)
  {
    if (v6 > 3 || a2 - *(this + 4) < *&gTimingPrefs_)
    {
      return 0;
    }

    if (v6 != 2 && *(this + 8) == 1 && ((**this)(this) & 1) != 0)
    {
      return 1;
    }
  }

  return !MTTapDragManager_::halfTapDragTimedOut(this, a2);
}

uint64_t MTTapDragManager_::sendWaitingClickAtHalfTimeout(MTTapDragManager_ *this, __IOHIDEvent *a2, double a3, int a4)
{
  if (*(this + 9) != 1)
  {
    v8 = a3 - *(this + 9);
    if (*(this + 10) == 1)
    {
      if (v8 >= *&qword_121A78 + *&qword_121A50 * -2.0 && *(this + 48) == a4)
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        MTActionEvent_::MTActionEvent_(&v10, 67, *(this + 3), 0);
        v5 = 1;
        (*(*this + 24))(this, &v10, a2, 0, 0, this + 52, 12288, 1, a3);
        *(this + 11) = a3;
        *(this + 28) = 0;
        *(this + 3) = 0;
        *(this + 6) = 0;
        *(this + 4) = 0;
        *(this + 48) = 0;
        goto LABEL_3;
      }
    }

    else if (v8 >= *&qword_121A58)
    {
      if (*(this + 48) == a4)
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        MTActionEvent_::MTActionEvent_(&v10, 67, 256, 0);
        (*(*this + 24))(this, &v10, a2, 0, 0, this + 52, 12288, 1, a3);
      }

      goto LABEL_2;
    }

    return 0;
  }

LABEL_2:
  *(this + 28) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  v5 = 1;
LABEL_3:
  *(this + 9) = 0;
  return v5;
}

uint64_t MTTapDragManager_::sendPendingMultiFingerTap(MTTapDragManager_ *this, __IOHIDEvent *a2, const MTHandStatistics_ *a3, const MTHandMotion_ *a4, double a5, int a6)
{
  v8 = *(a3 + 1);
  if (*(this + 6) <= 1)
  {
    v11 = *&qword_121AD8 > a5 || *(a3 + 195) > 1u;
    if (v11 || *(a4 + 62) > *&dword_121AC8)
    {
      v10 = 0;
LABEL_11:
      *(this + 28) = 0;
      *(this + 3) = 0;
      *(this + 6) = 0;
      *(this + 4) = 0;
      *(this + 48) = 0;
      goto LABEL_12;
    }
  }

  if (*(this + 10) != 1)
  {
    return 0;
  }

  v9 = v8 - *(this + 9);
  if (v9 <= *&qword_121A78 + *&qword_121A50 * 2.0)
  {
    if (!a6 || v9 > *&qword_121A78)
    {
      v13 = 0xAAAAAAAAAAAAAAAALL;
      MTActionEvent_::MTActionEvent_(&v13, 67, *(this + 3), 0);
      v10 = 1;
      (*(*this + 24))(this, &v13, a2, 0, 0, this + 52, 12288, 1, v8);
      *(this + 11) = v8;
      goto LABEL_11;
    }

    return 0;
  }

  *(this + 28) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  v10 = 1;
LABEL_12:
  *(this + 9) = 0;
  return v10;
}

double MTTapDragManager_::queueMultiFingerTapWaitingForDouble(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, int a5)
{
  *(a1 + 24) = 1;
  *(a1 + 52) = *a3;
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
  *(a1 + 10) = 1;
  *(a1 + 12) = a5;
  return result;
}

uint64_t MTTapDragManager_::queueButtonClickEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 9) = 0;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent_::MTActionEvent_(&v9, 67, 256, 0);
  return (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
}

double MTTapDragManager_::queueButtonPressEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent_::MTActionEvent_(&v9, 65, 256, 0);
  (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
  result = *(a2 + 8);
  *(a1 + 40) = result;
  return result;
}

uint64_t MTTapDragManager_::queueButtonReleaseEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent_::MTActionEvent_(&v9, 66, 256, 0);
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 9) = 0;
  return (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
}

double MTTapDragManager_::handleTapsForDrag(MTTapDragManager_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  v9 = *(a3 + 168);
  v7 = *(this + 6);
  if (v7 < 2)
  {
    if (*(a2 + 1) - *(this + 9) >= *&qword_121A48)
    {
      *(this + 6) = 1;
      *(this + 52) = v9;
      *(this + 5) = *(a2 + 1);
      *(this + 48) = *(a2 + 211) + *(a2 + 186);
      goto LABEL_7;
    }
  }

  else
  {
    MTTapDragManager_::queueButtonReleaseEvent(this, a2, &v9, a4);
    if (v7 != 2)
    {
      goto LABEL_7;
    }
  }

  MTTapDragManager_::queueButtonClickEvent(this, a2, &v9, a4);
LABEL_7:
  result = *(a2 + 1);
  *(this + 9) = result;
  *(this + 49) = 1;
  return result;
}

uint64_t MTTapDragManager_::handleImmediateTapDragRelease(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  v4 = this;
  if (*(this + 24) >= 2)
  {
    this = (**this)(this);
    if (this)
    {
      if (*(v4 + 9) == 1)
      {
        this = MTTapDragManager_::queueButtonReleaseEvent(v4, a2, a3 + 168, a4);
      }
    }
  }

  *(v4 + 9) = 0;
  return this;
}

uint64_t MTTapDragManager_::chk4dragCycling(MTTapDragManager_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, double a5)
{
  MTTapDragManager_::sendPendingMultiFingerTap(this, a4, a2, a3, a5, 1);
  v9 = *(this + 6);
  if (v9 == 1)
  {
    v10 = *(a2 + 211) + *(a2 + 186);
    if (v10 <= *(a2 + 190) + *(a2 + 187) || v10 <= *(this + 48) || (*(this + 10) & 1) != 0)
    {
      MTTapDragManager_::sendWaitingClickAtHalfTimeout(this, a4, *(a2 + 1), v10);
    }

    else
    {
      MTTapDragManager_::queueButtonPressEvent(this, a2, a3 + 168, a4);
    }

    goto LABEL_20;
  }

  if (v9 >= 2 && (**this)(this))
  {
    if (!*(this + 48) && *(a2 + 211) + *(a2 + 186) == 2)
    {
      *(this + 48) = 1;
    }

    v11 = *(a2 + 1);
    v12 = v11 - *(a2 + 10);
    v13 = v11 - *(a2 + 16);
    if (v12 < v13 || v13 == 0.0)
    {
      if (v12 <= *&qword_121A68 || v11 - *(a3 + 20) <= *&qword_121A68)
      {
        if (*(this + 6) < 4)
        {
          goto LABEL_20;
        }

        v14 = 3;
      }

      else
      {
        *(this + 4) = v11;
        v14 = 4;
      }

      *(this + 6) = v14;
    }
  }

LABEL_20:

  return MTTapDragManager_::handleImmediateTapDragRelease(this, a2, a3, a4);
}

double MTTapDragManager_::sustainMultiFingerDrag(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = 1;
  *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
  *(a1 + 24) = 3;
  (*(*a1 + 8))(a1);
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 80) = result;
  return result;
}

uint64_t MTTapDragManager_::handleTapsForMultiFingerDrag(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  if (*(this + 24) >= 3)
  {
    return MTTapDragManager_::queueButtonReleaseEvent(this, a2, a3 + 168, a4);
  }

  return this;
}

void __cxx_global_var_init_25()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void MTChordIntegrating_::clearIntegrationState(MTChordIntegrating_ *this)
{
  *(this + 34) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 66) = 0;
  *(this + 70) = 1;
  v2 = this + 312;
  v3 = 0uLL;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 312) = 0u;
  v4 = *(this + 20);
  v5 = *(this + 21);
  if (v5 != v4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      MTSlideGesture_::clearIntegrationState((v4 + 160 * v6));
      v6 = v7;
      v4 = *(this + 20);
      v5 = *(this + 21);
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5) > v7++;
    }

    while (v8);
    v3 = 0uLL;
  }

  *(v2 + 20) = 0;
  *(v2 + 3) = v3;
  *(v2 + 4) = v3;
  *(v2 + 1) = v3;
  *(v2 + 2) = v3;
  *v2 = v3;
  *(this + 50) = 0;
  if (v5 != v4)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v4)
      {
        v11 = v4 + 160 * v9;
        *(v11 + 120) = 0;
        *(v11 + 80) = v3;
        *(v11 + 96) = v3;
        v4 = *(this + 20);
        v5 = *(this + 21);
      }

      v9 = v10;
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5) > v10++;
    }

    while (v8);
  }
}

MTChordIntegrating_ *MTChordIntegrating_::operator=(MTChordIntegrating_ *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MTChordGestureSet_::operator=(a1, a2);
    MTChordIntegrating_::clearIntegrationState(a1);
  }

  return a1;
}

void MTChordIntegrating_::nullify(void **this)
{
  MTChordGestureSet_::MTChordGestureSet_(v3);
  if (v3 != this)
  {
    MTChordGestureSet_::operator=(this, v3);
    MTChordIntegrating_::clearIntegrationState(this);
  }

  v2 = &v12;
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

BOOL MTChordIntegrating_::hasChordStabilized(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3)
{
  if (*(this + 264))
  {
    return 1;
  }

  v3 = *(a2 + 186);
  if (v3 == 5)
  {
    return 1;
  }

  v5 = *(a2 + 196) <= *(a2 + 195) && *(a2 + 201) == 0;
  return v5 && ((*(this + 114) & 0x100) == 0 || sqrtf((*(a3 + 84) * *(a3 + 84)) + (*(a3 + 83) * *(a3 + 83))) <= 100.0) && *(a2 + 1) - *(a2 + 10) >= v3 * 0.0100000007 || *(a2 + 1) - *(a2 + 10) >= v3 * 0.0200000014;
}

uint64_t MTChordIntegrating_::getActiveDegreesOfFreedomMask(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTChordCycling_ *a3)
{
  if (*(this + 264) != 1)
  {
    return 0;
  }

  v4 = *(this + 20);
  if (*(this + 21) == v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = (v4 + 160 * v7);
    v11 = *(v10 + 7);
    if ((!v11 || (*(a3 + 6) & v11) != 0) && (MTSlideGesture_::isLockedOutByTriggeredSlide(v10, a2, this, 1) & 1) == 0)
    {
      v8 = MTSlideGesture_::getDegreesOfFreedomMask(v10) | v8;
    }

    v7 = v9;
    v4 = *(this + 20);
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v4) >> 5) > v9++);
  return v8;
}

double MTChordIntegrating_::beginChordIntegration(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, MTChordCycling_ *a5)
{
  MTChordIntegrating_::clearIntegrationState(this);
  result = *(a2 + 10);
  *(this + 30) = result;
  return result;
}

void MTChordIntegrating_::endChordIntegration(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, MTChordCycling_ *a5)
{
  if (*(this + 56))
  {
    if (*(this + 264) == 1)
    {
      MTChordIntegrating_::sendLiftSlideEvents(this, a2, a3, a3 + 168, a4, a5);
    }

    else if (*(this + 266) == 1)
    {
      if (*(this + 13) == *(this + 12))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      (*(**(a5 + 49) + 24))(*(a5 + 49), *(this + 12), a4, 32, 0, a3 + 168, 0x2000, *(a2 + 1));
      *(this + 266) = 0;
    }

    MTChordIntegrating_::clearIntegrationState(this);

    MTChordIntegrating_::nullify(this);
  }
}

void MTChordIntegrating_::sendLiftSlideEvents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOHIDEvent *a5, uint64_t *a6)
{
  if (*(a1 + 264) != 1)
  {
    return;
  }

  if (*(a1 + 216) < 2 || (v11 = *(a1 + 96), v11 == *(a1 + 104)) || *v11 != 65 || (v12 = *(a1 + 160), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - v12) >> 5) > 2) || *v12 == v12[1] || **v12 != 69 || ((v13 = *(a1 + 272)) == 0 ? (v14 = 0.0) : (v14 = *(v13 + 144)), *(a2 + 8) - v14 >= *&qword_121A68))
  {
    v15 = 1;
  }

  else
  {
    MTDragManagerEventQueue_::stopMomentum(a6, a5, 4);
    MTTapDragManager_::sustainMultiFingerDrag(a6[49], a2);
    if ((*(a1 + 264) & 1) == 0)
    {
      return;
    }

    v15 = 0;
  }

  if (*(a1 + 216) == 1 && *a1 != *(a1 + 8) && **a1 == 65)
  {
    if (*(a2 + 186))
    {
      v16 = *(a2 + 211) + *(a2 + 186);
      if (v16 >= *(a2 + 190) + *(a2 + 187))
      {
        goto LABEL_26;
      }

      v17 = a6[49];
      if (v16 > *(v17 + 48))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = a6[49];
    }

    v18 = *(a2 + 8);
    if (*(v17 + 24) <= 1)
    {
      v18 = 0.0;
    }

    *(v17 + 80) = v18;
  }

LABEL_26:
  if (v15)
  {
    v19 = *(a1 + 272);
    if (v19)
    {
      v20 = *v19;
      if (*v19 == *(v19 + 8))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (*v20 - 35 > 4)
      {
        v21 = MTActionEvent_::deriveGestureEndedType(v20);
        if (v21)
        {
          v22 = v21;
          v23 = *(a1 + 272);
          if (*v23 != v23[1] && (**v23 & 0xFFFE) == 0x46)
          {
            (*(*a6[49] + 24))(a6[49], *(a2 + 8));
          }

          v25 = 0xAAAAAAAAAAAAAAAALL;
          MTActionEvent_::MTActionEvent_(&v25, v22, 0, 0);
          (*(*a6[49] + 24))(a6[49], &v25, a5, 0, 0, a4, 0x2000, *(a1 + 224), *(a2 + 8));
        }
      }

      else
      {
        MTChordIntegrating_::possiblyStartFluidMomentum(a1, a2, a5, a6);
      }
    }

    if (*(a1 + 152))
    {
      v24 = *(a1 + 128);
      if (v24 != *(a1 + 136))
      {
        if (*v24)
        {
          MTGesture::dispatchEvents((a1 + 128), a6[49], a5, 16, 0, a4, 0x2000, *(a1 + 224), *(a2 + 8));
        }
      }
    }
  }
}

uint64_t MTChordIntegrating_::possiblyStartFluidMomentum(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, __IOHIDEvent *a3, MTChordCycling_ *a4)
{
  v5 = *(this + 20);
  v4 = *(this + 21);
  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (v5 + 160 * v9);
      if (*(v12 + 68) == 1)
      {
        v13 = MTSlideGesture_::fluidSwipePercentage(v12);
        hasSufficientFluidMomentum = MTSlideGesture_::hasSufficientFluidMomentum(v12, a2, v12 == *(this + 34));
        v15 = *v12;
        if (*(v12 + 1) == *v12)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = *(a4 + 49);
        if (hasSufficientFluidMomentum)
        {
          v17 = 16;
        }

        else
        {
          v17 = 32;
        }

        v18 = MTSlideGesture_::fluidMomentumPercentage_s(v12, v12 == *(this + 34));
        v19 = MTSlideGesture_::fluidDOFPercentageDeltas(v12);
        v26[0] = LODWORD(v19);
        v26[1] = v20;
        v26[2] = v21;
        v26[3] = v22;
        (*(*v16 + 32))(v16, v15, a3, v17, 0, v26, *(v12 + 32), v13, v18);
        v5 = *(this + 20);
        v4 = *(this + 21);
        v10 = 1;
      }

      v9 = v11;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 5) > v11++);
  }

  return v10 & 1;
}

uint64_t MTChordIntegrating_::commit2Chord(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, unsigned __int16 a6, double a7)
{
  v11 = this;
  *(this + 264) = 1;
  *(this + 256) = *(a2 + 1);
  v18 = *(a3 + 168);
  v12 = *(this + 216);
  if (v12 != 1)
  {
    if (v12 >= 2)
    {
      v13 = *(this + 96);
      if (v13 != *(this + 104) && *v13 == 65)
      {
        v14 = *(this + 160);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 168) - v14) >> 5) <= 2 && *v14 != v14[1] && **v14 == 69)
        {
          a4->_from_multi_finger_drag = 1;
          goto LABEL_5;
        }
      }
    }

LABEL_13:
    MTTapDragManager_::sendPendingMultiFingerTap(a4, a5, a2, a3, a7, 0);
    this = MTTapDragManager_::clearCycle(a4);
    goto LABEL_14;
  }

  if (*this == *(this + 8) || **this != 65)
  {
    goto LABEL_13;
  }

  if (a4->_cycle_state == 2)
  {
LABEL_5:
    this = MTTapDragManager_::setCycleState(a4, 3);
  }

LABEL_14:
  v15 = *(v11 + 272);
  if (!v15)
  {
    goto LABEL_23;
  }

  if (*(v11 + 266) == 1)
  {
    if (*(v15 + 8) == *v15)
    {
      goto LABEL_28;
    }

    if (**v15 != 70)
    {
      if (*(v11 + 104) == *(v11 + 96))
      {
        goto LABEL_28;
      }

      (*(a4->_vptr$MTTapDragManager_ + 3))(a4, *(a2 + 1));
      *(v11 + 266) = 0;
      v15 = *(v11 + 272);
    }
  }

  if (*(v15 + 8) == *v15)
  {
LABEL_28:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  this = MTActionEvent_::deriveGestureStartedType(*v15);
  if (this)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    MTActionEvent_::MTActionEvent_(&v17, this, 0, 0);
    this = (*(a4->_vptr$MTTapDragManager_ + 3))(a4, &v17, a5, 2, 0, &v18, 4096, *(v11 + 224), *(a2 + 1));
  }

LABEL_23:
  if ((*(v11 + 120) & a6) != 0)
  {
    v16 = *(v11 + 96);
    if (v16 != *(v11 + 104))
    {
      if (*v16)
      {
        return MTGesture::dispatchEvents((v11 + 96), a4, a5, 2, 0, &v18, 4096, *(v11 + 224), *(a2 + 1));
      }
    }
  }

  return this;
}

uint64_t MTChordIntegrating_::sendSlidePreamble(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTActionEvent_ **a6, unsigned __int16 a7, double a8)
{
  v26 = *(a3 + 168);
  ++*(this + 75);
  v13 = *(a2 + 186);
  *(this + 73) = v13;
  v14 = *(this + 74);
  if (!v14 || (v14 < v13 ? (v15 = *(a2 + 1) - *(a2 + 10) <= *&qword_121A20) : (v15 = 1), v15 ? (v16 = v13 > 1u) : (v16 = 0), !v16))
  {
    *(this + 74) = v13;
  }

  if ((*(this + 264) & 1) == 0)
  {
    *(this + 34) = a6;
    MTChordIntegrating_::commit2Chord(this, a2, a3, a4, a5, a7, a8);
    result = 1;
    if (!a6)
    {
      return result;
    }

    goto LABEL_34;
  }

  v17 = *(this + 34);
  if (v17 == a6)
  {
    goto LABEL_17;
  }

  result = 0;
  if (a6 && v17)
  {
    if (v17[1] != *v17)
    {
      v19 = MTActionEvent_::deriveGestureStartedType(*v17);
      if (a6[1] != *a6)
      {
        if (v19 == MTActionEvent_::deriveGestureStartedType(*a6))
        {
LABEL_17:
          result = 0;
          goto LABEL_31;
        }

        v20 = *(this + 34);
        if (*(v20 + 8) != *v20)
        {
          if (MTActionEvent_::deriveGestureEndedType(*v20))
          {
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v21 = *(this + 34);
            if (*(v21 + 8) == *v21)
            {
              goto LABEL_37;
            }

            v22 = MTActionEvent_::deriveGestureEndedType(*v21);
            MTActionEvent_::MTActionEvent_(&v25, v22, 0, 0);
            (*(a4->_vptr$MTTapDragManager_ + 3))(a4, &v25, a5, 16, 0, &v26, 0x2000, *(this + 56), *(a2 + 1));
            v23 = *(this + 34);
            if (*v23 != v23[1] && (**v23 & 0xFFFE) == 0x46)
            {
              (*(a4->_vptr$MTTapDragManager_ + 3))(a4, *(a2 + 1));
            }
          }

          if (a6[1] != *a6)
          {
            if (!MTActionEvent_::deriveGestureStartedType(*a6))
            {
LABEL_30:
              result = 1;
              goto LABEL_31;
            }

            v25 = 0xAAAAAAAAAAAAAAAALL;
            if (a6[1] != *a6)
            {
              v24 = MTActionEvent_::deriveGestureStartedType(*a6);
              MTActionEvent_::MTActionEvent_(&v25, v24, 0, 0);
              (*(a4->_vptr$MTTapDragManager_ + 3))(a4, &v25, a5, 2, 0, &v26, 0x2000, *(this + 56), *(a2 + 1));
              goto LABEL_30;
            }
          }
        }
      }
    }

LABEL_37:
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_31:
  if (*(this + 34) != a6)
  {
    *(this + 98) = 0;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 312) = 0u;
  }

  *(this + 34) = a6;
  if (a6)
  {
LABEL_34:
    if (*(this + 265) == 1)
    {
      *(this + 265) = 0;
    }
  }

  return result;
}

uint64_t MTChordIntegrating_::resetMostIntegrators(uint64_t result, uint64_t a2)
{
  v3 = *(result + 160);
  v2 = *(result + 168);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v3 + 160 * v4;
      if (v6 != a2)
      {
        *(v6 + 120) = 0;
        *(v6 + 80) = 0uLL;
        *(v6 + 96) = 0uLL;
        v3 = *(result + 160);
        v2 = *(result + 168);
      }

      v4 = v5;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 5) > v5++);
  }

  return result;
}

void MTChordIntegrating_::momentumFilterAlpha(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, int a3)
{
  v3 = (*(a2 + 1) - *(a2 + 2)) / 0.00800000038;
  if (a3)
  {
    exp2(v3 * -2.0);
    pow(0.800000012, v3);
  }

  else
  {
    pow(0.850000024, v3);
  }
}

double MTChordIntegrating_::decayMomentumFilters(MTChordIntegrating_ *this, const MTHandStatistics_ *a2)
{
  v4 = *(this + 34);
  if (v4)
  {
    result = *(a2 + 1);
    if (result != *(v4 + 144))
    {
      v7 = v2;
      v8 = v3;
      v6 = 0uLL;
      *&result = MTChordIntegrating_::updateMomentumMickeys(this, &v6, a2).u64[0];
    }
  }

  return result;
}

float32x4_t MTChordIntegrating_::updateMomentumMickeys(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v6 = (a1 + 360);
  v7 = *(a1 + 272);
  if (v7 && *(a3 + 8) - *(v7 + 144) <= 0.100000001)
  {
    v11 = *(a1 + 392);
    v10 = *(a1 + 376);
    v9 = *(a1 + 380);
    v8 = *(a1 + 360);
    v26 = *(a1 + 364);
  }

  else
  {
    *(a1 + 392) = 0;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 312) = 0u;
    v26 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  *(a1 + 328) = *a2;
  v12 = hypot(a2->i32[0], a2->i32[1]);
  v13 = (*(a3 + 8) - *(a3 + 16)) / 0.00800000038;
  v14 = pow(dbl_D67B0[v11 < (v12 + v12)], v13);
  *(a1 + 392) = ((1.0 - v14) * v12) + (v14 * v11);
  v15 = hypotf(v10, v9);
  v16 = pow(dbl_D67C0[v15 < (v12 + v12)], v13);
  v25 = v16;
  v24 = 1.0 - v16;
  v17 = hypotf(v8, v26) < v12;
  MTChordIntegrating_::momentumFilterAlpha(v18, a3, v17);
  v20 = vcvtq_f32_s32(*a2);
  v21 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v19), *v6, v19);
  result = vbicq_s8(v21, vcltzq_f32(vmulq_f32(v21, v20)));
  v23 = vmlaq_n_f32(vmulq_n_f32(v20, v24), v6[1], v25);
  *v6 = result;
  v6[1] = v23;
  return result;
}

uint64_t MTChordIntegrating_::switchingVerticalToHorizontal(int32x2_t *this, float a2, int a3)
{
  if (a3)
  {
    *this[43].i8 = *this[41].i8;
  }

  v3 = this[43].i32[0];
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = this[43].i32[1];
  if (v4 < 0)
  {
    v4 = -v4;
  }

  if (v3 >= (2 * v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = vabs_s32(this[41]);
    v6 = vcgt_u32(v5, vdup_lane_s32(v5, 1)).u8[0];
  }

  return v6 & 1;
}

uint64_t MTChordIntegrating_::markMomentumPause(MTChordIntegrating_ *this, const MTHandStatistics_ *a2)
{
  MTChordIntegrating_::markMomentumPause(this, a2, 3.0, this + 40);

  return MTChordIntegrating_::markMomentumPause(this, a2, 3.5, this + 39);
}

uint64_t MTChordIntegrating_::markMomentumPause(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, float a3, double *a4)
{
  v6 = *(this + 98) * a3;
  if (v6 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (((*(this + 91) * *(this + 91)) + (*(this + 90) * *(this + 90))) <= v7 || ((v9 = *(this + 82), v10 = *(this + 83), v11 = hypot(v9, v10), v12 = *(this + 94), v13 = *(this + 95), v14 = hypotf(v12, v13), result = 0, (v11 * v11) > v7) ? (v16 = (v14 * v14) <= v7) : (v16 = 1), !v16 && (((v13 * v10) + (v12 * v9)) / (v14 * v11)) < -0.5))
  {
    *a4 = *(a2 + 1);
    return 1;
  }

  return result;
}

BOOL MTChordIntegrating_::recentMomentumPause(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, int a3)
{
  v3 = 312;
  if (a3)
  {
    v3 = 320;
  }

  v4 = *(a2 + 1) - *(this + v3);
  v5 = &qword_121A20;
  if (a3)
  {
    v5 = &qword_121A28;
  }

  return v4 < *v5;
}

uint64_t MTChordIntegrating_::possiblyStartMomentum(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, __IOHIDEvent *a3, MTChordCycling_ *a4, double a5)
{
  if (*(this + 264) != 1)
  {
    return 0;
  }

  v6 = *(this + 34);
  if (!v6)
  {
    return 0;
  }

  if ((*(v6 + 34) & 0x40) == 0)
  {
    return 0;
  }

  v7 = *v6;
  if (*v6 == *(v6 + 8))
  {
    return 0;
  }

  v11 = *v7;
  if (v11 == 69)
  {
    v14 = *(a2 + 186);
    v15 = *(a2 + 211) + v14;
    if (v15 && ((*(this + 91) * *(this + 91)) + (*(this + 90) * *(this + 90))) >= 25.0)
    {
      if (v15 != 1 || v14 <= *(a2 + 195))
      {
        MTDragManagerEventQueue_::startMomentum(a4, a3, 4);
        goto LABEL_36;
      }

      MTDragManagerEventQueue_::stopMomentum(a4, a3, 4);
      return 0;
    }

    goto LABEL_11;
  }

  if (v11 != 70 || (v12 = *(this + 90), v13 = *(this + 91), ((v13 * v13) + (v12 * v12)) < 25.0))
  {
LABEL_11:
    if (*v7 == 68 && *(a2 + 1) - *(a4 + 155) > *&qword_121A48 && ((*(this + 91) * *(this + 91)) + (*(this + 90) * *(this + 90))) >= 64.0)
    {
      MTDragManagerEventQueue_::startMomentum(a4, a3, 2);
LABEL_36:
      MTAppendRelativeMouseEvent();
      return 1;
    }

    return 0;
  }

  v16 = -v12;
  v17 = -v13;
  if (v16 >= 0)
  {
    v18 = -v12;
  }

  else
  {
    v18 = -v16;
  }

  v19 = v18;
  if (v17 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v17;
  }

  if ((v20 * 3.0) >= v19)
  {
    if ((v19 * 3.0) < v20)
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (((v17 * v17) + (v16 * v16)) < 25.0 || *(a2 + 1) - *(this + 50) <= 0.05)
  {
    return 1;
  }

  v21 = 1;
  MTAppendMomentumEnableEvent();
  MTAppendScrollEvent();
  if (*(a4 + 1264) == 1)
  {
    MTDragManagerEventQueue_::stopMomentum(a4, a3, 1);
  }

  *(this + 50) = *(a2 + 1);
  *(a4 + 317) = 1;
  *(a4 + 1264) = 1;
  return v21;
}

uint64_t MTChordIntegrating_::clearMickeysSinceLastTouchdown(uint64_t this)
{
  *(this + 288) = 0;
  v1 = *(this + 160);
  v2 = *(this + 168) - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 5);
    v4 = (v1 + 112);
    v5 = 1;
    do
    {
      *v4 = 0;
      v4 += 40;
    }

    while (v3 > v5++);
  }

  return this;
}

BOOL MTChordIntegrating_::waitForFastShotVerification(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3)
{
  if (*(this + 75) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 1) - *(a2 + 7);
  if (v3 < 0.135000005)
  {
    return 1;
  }

  if (v3 >= 0.230000004)
  {
    return 0;
  }

  if (!*(a2 + 186))
  {
    return 1;
  }

  return *(a2 + 191) > *(a2 + 186);
}

uint64_t MTChordIntegrating_::continueChordIntegration(MTChordIntegrating_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, __IOHIDEvent *a4, MTChordCycling_ *a5, double a6, double a7, float a8)
{
  v12 = *(this + 34);
  if (v12)
  {
    v13 = *(v12 + 144);
  }

  else
  {
    v13 = 0.0;
  }

  result = MTChordGestureSet_::chk4ChordPause(this, a2, a3, *(a2 + 1) - v13, v13, a8);
  if (result)
  {
    v15 = *(a2 + 1);
    if (*(this + 265) == 1)
    {
      v16 = *(this + 38);
    }

    else
    {
      *(this + 38) = v15;
      v16 = v15;
    }

    *(this + 265) = 1;
    if (v15 - v16 > 0.120000005)
    {
      *(this + 267) = 0;
    }
  }

  v53 = a3;
  v17 = *(this + 58);
  if (v17 && (*(a5 + 6) & v17) == 0)
  {
    goto LABEL_83;
  }

  v18 = *(a2 + 1);
  v19 = *(a5 + 155);
  if ((*(this + 60) & 0x100) != 0 && (*(this + 266) & 1) == 0 && (*(this + 264) & 1) == 0)
  {
    result = *(a5 + 49);
    if ((*(result + 28) != 1 || *(result + 24) <= 2) && v18 - *(this + 31) > *&qword_121A30)
    {
      if (*(this + 13) == *(this + 12))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      result = (*(*result + 24))(result, *(a2 + 1));
      *(this + 266) = 1;
    }
  }

  v20 = v18 - v19;
  if ((*(this + 264) & 1) == 0)
  {
    result = MTChordIntegrating_::hasChordStabilized(this, a2, a3);
    if (result)
    {
      result = MTChordGestureSet_::chk4ChordTimein(this, a2);
      if (result)
      {
        result = MTChordIntegrating_::sendSlidePreamble(this, a2, a3, *(a5 + 49), a4, 0, 4u, v20);
      }
    }
  }

  v21 = *(this + 20);
  if (*(this + 21) == v21)
  {
    goto LABEL_83;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v51 = 0;
  v52 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0.0;
  v28 = 1;
  do
  {
    v29 = (v21 + 160 * v22);
    v30 = *(v29 + 7);
    if ((!v30 || (*(a5 + 6) & v30) != 0) && !MTSlideGesture_::isBlocked(v29, a2, v53, this, *(a5 + 400)))
    {
      v31 = MTSlideGesture_::integrateGesture(v29, a2, v53, *(a5 + 49), this, *(a2 + 1) - *(a5 + 154));
      canPunishSomeMoving = MTSlideGesture_::canPunishSomeMoving(v29, a2, this);
      v33 = v31 < v27;
      if (v31 >= v27)
      {
        v27 = v31;
      }

      v34 = v52;
      if (!v33)
      {
        v34 = v29;
      }

      v52 = v34;
      if (*v29 != v29[1] && **v29 - 35 <= 4)
      {
        v35 = v51;
        if (!v51 || fabsf(*(v29 + 20)) > fabsf(*(v51 + 80)))
        {
          v35 = v29;
        }

        v51 = v35;
        if (!v26)
        {
          v37 = v29;
          v29 = 0;
          goto LABEL_46;
        }

        v36 = fabsf(*(v29 + 23));
        if (v36 > fabsf(*(v26 + 92)))
        {
          v37 = v29;
          v29 = v26;
LABEL_46:
          v24 += canPunishSomeMoving;
          ++v23;
          v26 = v37;
          v25 = v29;
          goto LABEL_47;
        }

        if (!v25 || v36 > fabsf(v25[23]))
        {
          v37 = v26;
          goto LABEL_46;
        }
      }

      v37 = v26;
      v29 = v25;
      goto LABEL_46;
    }

LABEL_47:
    v22 = v28;
    v21 = *(this + 20);
    v38 = *(this + 21);
    v39 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v21) >> 5) > v28++;
  }

  while (v39);
  v40 = 0;
  if (v26 && v51 == v26)
  {
    v40 = !v25 || (fabsf(*(v26 + 92)) - *(v26 + 56)) > fabsf(v25[23]);
  }

  result = MTChordIntegrating_::hasChordStabilized(this, a2, v53);
  if (!result || v23 < 1)
  {
    goto LABEL_83;
  }

  result = *(this + 34);
  if (!v26 || result)
  {
    goto LABEL_66;
  }

  if (v52 == v26)
  {
    goto LABEL_62;
  }

  if (!v52)
  {
    goto LABEL_76;
  }

  if (*v52 == *(v52 + 1) || **v52 - 35 > 4)
  {
LABEL_66:
    if (v23 >= 2 && v24 >= 1 && v52)
    {
      if (v27 <= 0.2 && *(a2 + 1) - *(this + 31) <= *&qword_121A38)
      {
        goto LABEL_83;
      }

      v41 = *(a5 + 49);
      result = v52;
LABEL_70:
      result = MTSlideGesture_::fireGesture(result, a2, v53, v41, a4, this, v20);
      goto LABEL_83;
    }

    if (result && *result != *(result + 8) && **result - 35 <= 4)
    {
      v41 = *(a5 + 49);
      if (v51)
      {
        result = v51;
      }

      goto LABEL_70;
    }

LABEL_76:
    if (v38 != v21)
    {
      v42 = 0;
      v43 = 1;
      do
      {
        v44 = (v21 + 160 * v42);
        v45 = *(v44 + 7);
        if (!v45 || (*(a5 + 6) & v45) != 0)
        {
          result = MTSlideGesture_::isBlocked(v44, a2, v53, this, *(a5 + 400));
          if ((result & 1) == 0)
          {
            result = MTSlideGesture_::fireGesture(v44, a2, v53, *(a5 + 49), a4, this, v20);
          }
        }

        v42 = v43;
        v21 = *(this + 20);
        v39 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v21) >> 5) > v43++;
      }

      while (v39);
    }

    goto LABEL_83;
  }

LABEL_62:
  if (v40)
  {
    v41 = *(a5 + 49);
    result = v26;
    goto LABEL_70;
  }

LABEL_83:
  v46 = *(a2 + 1);
  v47 = *(this + 34);
  if (v47)
  {
    v48 = *(v47 + 144);
    if (v46 - v48 < v46 - *(a5 + 154))
    {
      *(a5 + 154) = v48;
      v49 = *v47;
      if (*v47 != *(v47 + 8))
      {
        if ((*v49 & 0xFFFE) == 0x46)
        {
          *(a5 + 155) = v48;
        }

        if (*v49 - 35 <= 4)
        {
          *(a5 + 156) = v48;
        }
      }
    }
  }

  else if (v46 < v46 - *(a5 + 154))
  {
    *(a5 + 154) = 0;
  }

  return result;
}

void __cxx_global_var_init_26()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

uint64_t MTParserPath_::MTParserPath_(uint64_t a1, int a2, int a3)
{
  *a1 = off_109680;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  MTForceFilter_::MTForceFilter_((a1 + 288));
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
  MTForceFilter_::clear((a1 + 288));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 547) = 0;
  *(a1 + 456) = vneg_f32(0x3F0000003FLL);
  return a1;
}

float32x2_t MTParserPath_::clear(MTParserPath_ *this)
{
  *&this[2].var3.var0 = 0u;
  *&this[2].var3.var2 = 0u;
  *&this[1].var3.var14.y = 0u;
  *&this[2].var0 = 0u;
  *&this[1].var3.var8 = 0u;
  *&this[1].var3.var12 = 0u;
  *&this[1].var3.var2 = 0u;
  *&this[1].var3.var6.x = 0u;
  *&this[1].var0 = 0u;
  *&this[1].var3.var0 = 0u;
  *&this->var3.var12 = 0u;
  *&this->var3.var14.y = 0u;
  *&this->var3.var6.x = 0u;
  *&this->var3.var8 = 0u;
  *&this->var3.var0 = 0u;
  *&this->var3.var2 = 0u;
  MTForceFilter_::clear(&this[2].var3.var8);
  this[2].var3.var6 = 0;
  this[2].var3.var7.x = 0.0;
  *&this[4].var4 = 0;
  LODWORD(this[5].var0) = 0;
  *&this[3].var0 = 0u;
  *&this[3].var3.var0 = 0u;
  *&this[3].var3.var2 = 0u;
  *&this[3].var3.var6.x = 0u;
  *&this[3].var3.var8 = 0u;
  *&this[3].var3.var12 = 0u;
  *&this[3].var3.var14.y = 0u;
  this[4].var0 = 0;
  *&this[4].var3.var0 = 0u;
  *&this[4].var3.var2 = 0u;
  *&this[4].var3.var6.x = 0u;
  *&this[4].var3.var8 = 0u;
  *&this[4].var3.var12 = 0u;
  LOWORD(this[4].var3.var14.y) = 0;
  *(&this[4].var3.var14.y + 3) = 0.0;
  result = vneg_f32(0x3F0000003FLL);
  *&this[4].var1 = result;
  return result;
}

void MTParserPath_::~MTParserPath_(MTParserPath_ *this)
{
  this->var0 = off_109680;
  MTForceFilter_::~MTForceFilter_(&this[2].var3.var8);
}

{
  this->var0 = off_109680;
  MTForceFilter_::~MTForceFilter_(&this[2].var3.var8);

  operator delete();
}

uint64_t MTParserPath_::updateCurPrevContactsWith(MTParserPath_ *this, _OWORD *a2, MTSurfaceDimensions_ *a3, float *a4, double a5)
{
  v9 = *&this->var3.var8;
  *&this[1].var3.var2 = *&this->var3.var6.x;
  *&this[1].var3.var6.x = v9;
  v10 = *&this->var3.var14.y;
  *&this[1].var3.var8 = *&this->var3.var12;
  *&this[1].var3.var12 = v10;
  v11 = *&this->var3.var2;
  *&this[1].var0 = *&this->var3.var0;
  *&this[1].var3.var0 = v11;
  v12 = a2[1];
  *&this->var3.var0 = *a2;
  *&this->var3.var2 = v12;
  v13 = a2[5];
  v15 = a2[2];
  v14 = a2[3];
  *&this->var3.var12 = a2[4];
  *&this->var3.var14.y = v13;
  *&this->var3.var6.x = v15;
  *&this->var3.var8 = v14;
  if ((this->var1 - 1000) <= 0xBB7)
  {
    if (!HIDWORD(this[1].var3.var0))
    {
      v16 = *&this->var3.var13;
      *&this[3].var3.var3 = v16;
      this[3].var3.var1 = v16;
    }

    var4 = this->var3.var4;
    if ((var4 - 2) > 3)
    {
      if (var4 != 13 && (*(&this[4].var3.var15 + 1) & 1) != 0)
      {
        this->var3.var4 = 14;
      }
    }

    else
    {
      *(&this[4].var3.var15 + 2) = 0;
    }
  }

  if ((this->var3.var3 - 1) <= 2)
  {
    *(&this[3].var0 + 4) = this->var3.var13;
  }

  MTParserPath_::updatePathStageTimestamps(this, a5);
  MTParserPath_::updateTotalDiscountedDistance(this, v18);

  return MTParserPath_::updateZonesAndEdges(this, a3, a4, a5);
}

MTParserPath_ *MTParserPath_::rejectRestingThumbFromRestingHand(MTParserPath_ *this)
{
  var4 = this->var3.var4;
  if ((var4 - 2) > 3)
  {
    if (var4 != 13 && (*(&this[4].var3.var15 + 1) & 1) != 0)
    {
      this->var3.var4 = 14;
    }
  }

  else
  {
    *(&this[4].var3.var15 + 2) = 0;
  }

  return this;
}

MTParserPath_ *MTParserPath_::updatePathStageTimestamps(MTParserPath_ *this, double a2)
{
  var3 = this->var3.var3;
  if (var3 == 1)
  {
    *&this[1].var3.var14.y = a2;
LABEL_14:
    *&this[1].var4 = a2;
    goto LABEL_15;
  }

  var0_high = HIDWORD(this[1].var3.var0);
  if (var0_high == 7 || var0_high == 0)
  {
    *&this[1].var3.var14.y = a2;
  }

  if (var0_high)
  {
    v5 = var3 < var0_high;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_14;
  }

LABEL_15:
  v6 = HIDWORD(this[1].var3.var0);
  if (var3 == 2)
  {
    if (v6 == 2)
    {
      return this;
    }

    v7 = 232;
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    *&this[2].var3.var0 = a2;
  }

  v8 = v6 - 6;
  if ((var3 - 3) <= 2 && v8 <= 0xFFFFFFFC)
  {
    *&this[2].var0 = a2;
  }

  if (var3 >= 5)
  {
    if (*&this[2].var0 >= this[2].var3.var1)
    {
      this[2].var3.var1 = a2;
    }

    if (var3 == 7)
    {
      v7 = 256;
LABEL_30:
      *(&this->var0 + v7) = a2;
    }
  }

  return this;
}

MTParserPath_ *MTParserPath_::updateTotalDiscountedDistance(MTParserPath_ *this, double a2)
{
  if ((this->var1 - 1000) <= 0xBB7)
  {
    if ((HIDWORD(this[1].var3.var0) - 3) > 1 || (this->var3.var3 - 3) > 1)
    {
      this[3].var3.var5 = 0;
    }

    else
    {
      v2 = vsub_f32(this->var3.var13, *&this[1].var3.var9);
      v3 = sqrtf(vaddv_f32(vmul_f32(v2, v2)));
      if (v3 > 0.14)
      {
        *&this[3].var3.var5 = (v3 + -0.14) + *&this[3].var3.var5;
      }
    }
  }

  return this;
}

uint64_t MTParserPath_::updateZonesAndEdges(uint64_t a1, MTSurfaceDimensions_ *this, float *a3, double a4)
{
  v21.x = 1.0;
  v21.y = 1.0;
  v8 = MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(this, v21);
  v10 = v9;
  v11 = MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(this, *(a1 + 48));
  v13 = v12;
  result = MTParserPath_::computeZonesAndEdgesMask(v11, v12, v8, v10, v14, a3);
  *(a1 + 272) = result;
  if (*(a1 + 248) == a4)
  {
    *(a1 + 280) = result;
  }

  v16 = *(a1 + 36);
  if ((v16 - 1) <= 2)
  {
    if (v16 == 1 || (*(a1 + 132) - 1) >= 6)
    {
      *(a1 + 276) = result;
    }

    else
    {
      *(a1 + 276) |= result;
      v17 = v11 + (v11 - MTSurfaceDimensions_::convertPixelsToMillimeters(this, *(a1 + 144))) * -2.5;
      v19 = v13 + (v13 - v18) * -2.5;
      result = MTParserPath_::computeZonesAndEdgesMask(v17, v19, v8, v10, v20, a3);
      *(a1 + 276) |= result;
    }
  }

  return result;
}

uint64_t MTParserPath_::computeZonesAndEdgesMask(float a1, float a2, float a3, float a4, uint64_t a5, float *a6)
{
  v8 = a6[1];
  v35 = a6[2];
  v36 = a6[3];
  v38 = a6[4];
  v39 = a6[7];
  v37 = a6[5];
  v40 = a6[6];
  v34 = a4 - a2;
  v9 = (a4 - a2);
  v10 = a2;
  v11 = a3 - a1;
  v12 = (a3 - a1);
  v33 = hypot(a2, a1);
  v13 = hypot(v10, v12);
  v14 = hypot(v9, a1);
  v15 = hypot(v9, v12);
  v16 = v33 > v8;
  v17 = v13 > v8;
  if (a2 > v35)
  {
    v16 = 1;
    v17 = 1;
  }

  v18 = v14 > v8;
  v19 = v15 > v8;
  if (v34 > v35)
  {
    v18 = 1;
    v19 = 1;
  }

  if (v11 > v36)
  {
    v17 = 1;
    v19 = 1;
  }

  if (a1 > v36)
  {
    v16 = 1;
  }

  v20 = !v16;
  if (a1 > v36)
  {
    v18 = 1;
  }

  if (!v17)
  {
    v20 |= 2u;
  }

  if (!v18)
  {
    v20 |= 4u;
  }

  if (!v19)
  {
    v20 |= 8u;
  }

  if (a1 < v37)
  {
    v20 |= 0x10u;
  }

  if (v11 < v37)
  {
    v20 |= 0x20u;
  }

  if (a2 < v38)
  {
    v20 |= 0x40u;
  }

  if (v34 < v38)
  {
    v20 |= 0x80u;
  }

  if (a1 < v39)
  {
    v20 |= 0x1000u;
  }

  if (v11 < v39)
  {
    v20 |= 0x2000u;
  }

  if (a2 < v40)
  {
    v20 |= 0x4000u;
  }

  if (v34 < v40)
  {
    v20 |= 0x8000u;
  }

  if (v33 < v8 && (v20 & 0x50) != 0)
  {
    v20 |= 0x100u;
  }

  if (v13 < v8 && (v20 & 0x60) != 0)
  {
    v20 |= 0x200u;
  }

  if (v14 < v8 && (v20 & 0x90) != 0)
  {
    v20 |= 0x400u;
  }

  if (v15 < v8 && (v20 & 0xA0) != 0)
  {
    v20 |= 0x800u;
  }

  v25 = a4 / 3.0;
  v26 = v11 <= (a3 / 3.0) || a1 <= (a3 / 3.0);
  v27 = v20 | 0x20000;
  if (v26)
  {
    v27 = v20;
  }

  if (v34 > v25 && a2 > v25)
  {
    v20 = v27;
  }

  v29 = a4 * 0.25;
  v30 = v11 <= (a3 * 0.25) || a1 <= (a3 * 0.25);
  v31 = v20 | 0x40000;
  if (v30)
  {
    v31 = v20;
  }

  if (a2 <= v29)
  {
    v31 = v20;
  }

  if (v34 > v29)
  {
    return v31;
  }

  else
  {
    return v20;
  }
}