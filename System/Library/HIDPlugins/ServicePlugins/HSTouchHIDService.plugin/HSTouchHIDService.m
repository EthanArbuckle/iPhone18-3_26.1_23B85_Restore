uint64_t HSUtil::GetMonotonicTime(HSUtil *this)
{
  v1 = mach_absolute_time();
  if (HSUtil::getMachTimebase(void)::once != -1)
  {
    HSUtil::NanosecondsFromMachTime();
  }

  return (v1 * HSUtil::getMachTimebase(void)::timebase) / *algn_1225EC;
}

uint64_t HSUtil::ObjectLock::ObjectLock(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  v4 = v3;
  *(a1 + 8) = v4;
  [v4 lock];
  *a1 = 1;

  return a1;
}

id HSUtil::DynamicCast<HSTGetDebugStateEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTVendorEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTCopyEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTHIDEvents>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTSetPropertyEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void HSUtil::ObjectLock::~ObjectLock(id *this)
{
  if (*this == 1)
  {
    [this[1] unlock];
    *this = 0;
  }
}

id HSUtil::DynamicCast<HSTGetPropertyEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTTimestampSyncEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MTLoggingPlugin()
{
  if (MTLoggingPlugin_onceToken != -1)
  {
    MTLoggingPlugin_cold_1();
  }

  return MTLoggingPlugin___logObj;
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostEvent]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostEvent]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

_BYTE *HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::DriverNotificationHeader>(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  if ([v1 length] >= 2)
  {
    if (*v2 != 64)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_BYTE *HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::TimestampSync>(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  if ([v1 length] >= 0x14)
  {
    if (*v2 != 82)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_BYTE *HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::SABinaryFrame>(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  if ([v1 length])
  {
    if (*v2 != 90)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTProxClearedAfterOccludedWakeEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTUSBChargingStateEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTStuckTouchDetectorStateEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTResetEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTNotificationEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTSetReportEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

id HSUtil::DynamicCast<HSTExternalMessageEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::FaceDetectionMode>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::FaceDetectionMode]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::FaceDetectionMode]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

uint64_t createEnabledInputsReport(__int16 a1, unsigned int a2)
{
  *&v6[1] = 589824;
  if ((a1 & 1) == 0)
  {
    v2 = 0;
    if ((a1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = -32759;
    if ((a1 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 >= 3)
  {
    v2 = -32359;
  }

  else
  {
    v2 = -32355;
  }

  *&v6[1] = v2;
  if ((a1 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 |= 0x202u;
  *&v6[1] = v2;
  *&v6[3] = 523;
  v3 = -32245;
  if ((a1 & 4) != 0)
  {
LABEL_10:
    *&v6[3] = v3;
  }

LABEL_11:
  if ((a1 & 8) != 0)
  {
    v2 |= 1u;
    *&v6[1] = v2;
    v4 = 1;
    *&v6[5] = 1;
  }

  else
  {
    v4 = 0;
  }

  if ((a1 & 0x90) != 0)
  {
    v2 |= 0x1000u;
    *&v6[1] = v2;
    v4 |= 0x1000u;
    *&v6[5] = v4;
  }

  if ((a1 & 0x120) != 0)
  {
    v2 |= 0x2000u;
    *&v6[1] = v2;
    v4 |= 0x2000u;
    *&v6[5] = v4;
  }

  if ((a1 & 0x240) != 0)
  {
    v2 |= 0x4000u;
    *&v6[1] = v2;
    v4 |= 0x4000u;
    *&v6[5] = v4;
  }

  if ((a1 & 0x800) != 0)
  {
    v2 |= 0x800u;
    *&v6[1] = v2;
    *&v6[5] = v4 | 0x800;
  }

  if ((a1 & 0x400) != 0)
  {
    *&v6[1] = v2 | 0x400;
  }

  return *v6;
}

id std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<HIDEvent * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<HIDEvent * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t HSUtil::NanosecondsFromMachTime(HSUtil *this)
{
  if (HSUtil::getMachTimebase(void)::once != -1)
  {
    HSUtil::NanosecondsFromMachTime();
  }

  return HSUtil::getMachTimebase(void)::timebase * this / *algn_1225EC;
}

void std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *HSUtil::CoderKey::New(HSUtil::CoderKey *this, const char *a2)
{
  __s = this;
  v2 = HSUtil::CoderKey::keyState(this);
  os_unfair_lock_lock(v2);
  v3 = std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::find<char const*>(&v2[8]._os_unfair_lock_opaque, &__s);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[3];
  os_unfair_lock_unlock(v2);
  return v4;
}

void configureGestureParser(MTPListGestureConfig_ *a1, PointerSettings *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configureTrackpadGestureParser(a1, v3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      configureMouseGestureParser(a1, v3);
    }
  }
}

void configureTrackpadGestureParser(MTPListGestureConfig_ *a1, TrackpadSettings *a2)
{
  v164 = a2;
  v165 = gestureDictionary(@"Point", @"Translate", @"Tracking", @"Repetitive", 0, 0, 0);
  v170 = objc_opt_new();
  if ([(TrackpadSettings *)v164 tapClick])
  {
    if (![(TrackpadSettings *)v164 showDefinition])
    {
      v2 = gestureDictionary(@"Click", @"Tap", 0, 0, 0, 0, 0);
      [v170 addObject:v2];
    }

    v3 = gestureDictionary(@"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0);
    [v170 addObject:v3];
  }

  if ([(TrackpadSettings *)v164 showDefinition])
  {
    v4 = gestureDictionary(@"Show Definition", @"Tap", 0, 0, 0, 0, 0);
    [v170 addObject:v4];
  }

  v5 = gestureDictionary(@"Primary Down", @"Hold", 0, @"TimeHeld BeginSlide", 0, @"HoldTime", &off_111F48);
  v243 = v5;
  v6 = gestureDictionary(@"Drag", @"Translate", @"Scrolling", @"Momentum", 0, 0, 0);
  v244 = v6;
  v7 = gestureDictionary(@"Primary Up", @"Lift", 0, 0, 0, 0, 0);
  v245 = v7;
  v8 = [NSArray arrayWithObjects:&v243 count:3];
  [v170 addObjectsFromArray:v8];

  v190 = @"None";
  v231 = @"Gestures";
  v232 = @"Transitions";
  v237 = &__NSArray0__struct;
  v238 = @"ToMoreFingers FromFewerFingers FromMoreFingers";
  *buf = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v231 count:2];
  v191 = @"Point";
  v219 = @"Gestures";
  v189 = v165;
  v167 = *buf;
  v9 = [NSArray arrayWithObjects:&v189 count:1];
  v220 = @"Transitions";
  v161 = v9;
  v225 = v9;
  v226 = @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay AccelOnlyIfSomeResting";
  v158 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v219 count:2];
  *&buf[8] = v158;
  v192 = @"Point & Click";
  v207 = @"Gestures";
  v271 = v165;
  v155 = gestureDictionary(@"Click", @"Tap", 0, 0, 0, 0, 0);
  v272 = v155;
  v10 = [NSArray arrayWithObjects:&v271 count:2];
  v208 = @"Transitions";
  v152 = v10;
  v213 = v10;
  v214 = @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay AccelOnlyIfSomeResting";
  v149 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v207 count:2];
  *&buf[16] = v149;
  v193 = @"Point, Click & Drag";
  v284 = @"Gestures";
  v281 = v165;
  v146 = gestureDictionary(@"Primary Down", @"Tap", 0, 0, 0, 0, 0);
  v282 = v146;
  v11 = [NSArray arrayWithObjects:&v281 count:2];
  v285 = @"Transitions";
  v143 = v11;
  v267 = v11;
  v268 = @"ToMoreFingers FromMoreFingers FromMoreWithSlightIntegrationDelay";
  v140 = [NSDictionary dictionaryWithObjects:&v267 forKeys:&v284 count:2];
  v201 = v140;
  v194 = @"Drag & Click";
  v275 = @"Gestures";
  v276 = @"Transitions";
  v278 = v170;
  v279 = @"ToFewerFingers FromFewerIfPause MultiFingerDrag ";
  v137 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v275 count:2];
  *&v202 = v137;
  v195 = @"Scroll";
  v261 = @"Gestures";
  v134 = gestureDictionary(@"Scroll", @"Translate", @"Scrolling", @"Repetitive", 0, 0, 0);
  v188 = v134;
  v12 = [NSArray arrayWithObjects:&v188 count:1];
  v262 = @"Transitions";
  v131 = v12;
  v264 = v12;
  v265 = @"ToFewerFingers FromFewerIfPause";
  v128 = [NSDictionary dictionaryWithObjects:&v264 forKeys:&v261 count:2];
  *(&v202 + 1) = v128;
  v196 = @"Scroll & Secondary Click";
  v255 = @"Gestures";
  v125 = gestureDictionary(@"Scroll", @"Translate", @"Scrolling", @"Repetitive", 0, 0, 0);
  v187[0] = v125;
  v124 = gestureDictionary(@"Secondary Click", @"Tap", 0, 0, 0, 0, 0);
  v187[1] = v124;
  v13 = [NSArray arrayWithObjects:v187 count:2];
  v256 = @"Transitions";
  v123 = v13;
  v258 = v13;
  v259 = @"ToFewerFingers FromFewerIfPause";
  v122 = [NSDictionary dictionaryWithObjects:&v258 forKeys:&v255 count:2];
  v203 = v122;
  v197 = @"Scroll, Zoom & Rotate";
  v185[0] = @"Gestures";
  v121 = gestureDictionary(@"Scroll", @"Translate", @"Scrolling", @"Repetitive", @"LockOnFirst", 0, 0);
  v184[0] = v121;
  v120 = gestureDictionary(@"Orientation", @"Scale+Rotate", @"Zooming", @"Repetitive", @"LockOnFirst", 0, 0);
  v184[1] = v120;
  v14 = [NSArray arrayWithObjects:v184 count:2];
  v185[1] = @"Transitions";
  v119 = v14;
  v186[0] = v14;
  v186[1] = @"ToFewerFingers FromFewerIfPause";
  v118 = [NSDictionary dictionaryWithObjects:v186 forKeys:v185 count:2];
  v204 = v118;
  v198 = @"Zoom & Rotate";
  v182[0] = @"Gestures";
  v15 = gestureDictionary(@"Orientation", @"Scale+Rotate", @"Zooming", @"Repetitive", 0, 0, 0);
  v181 = v15;
  v16 = [NSArray arrayWithObjects:&v181 count:1];
  v182[1] = @"Transitions";
  v183[0] = v16;
  v183[1] = @"ToFewerFingers FromFewerFingers";
  v17 = [NSDictionary dictionaryWithObjects:v183 forKeys:v182 count:2];
  v205 = v17;
  v199 = @"Swipes";
  v179[0] = @"Gestures";
  v18 = gestureDictionary(@"Swipe Left", @"Left", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0);
  v249 = v18;
  v19 = gestureDictionary(@"Swipe Right", @"Right", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0);
  v250 = v19;
  v20 = gestureDictionary(@"Swipe Up", @"Up", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0);
  v251 = v20;
  v21 = gestureDictionary(@"Swipe Down", @"Down", @"Swipe", @"OncePerDirection OnlyIfAllMoving", 0, 0, 0);
  v252 = v21;
  v22 = [NSArray arrayWithObjects:&v249 count:4];
  v179[1] = @"Transitions";
  v180[0] = v22;
  v180[1] = @"FromMoreFingers ToMoreFingers ToFewerAfterSlightDelay FromFewerFingers FromMoreWithSlightIntegrationDelay";
  v23 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:2];
  v206 = v23;
  v24 = [NSDictionary dictionaryWithObjects:buf forKeys:&v190 count:10];

  v168 = [v24 mutableCopy];
  v171 = objc_opt_new();
  v25 = v164;
  v166 = v25;
  v26 = objc_opt_new();
  v27 = [(TrackpadSettings *)v25 pointMomentum];
  v28 = @"AccelOnlyIfSomeResting";
  if (v27)
  {
    v28 = @"Momentum AccelOnlyIfSomeResting";
  }

  v29 = v28;
  v30 = gestureDictionary(@"Point", @"Translate", @"Resting Accel Tracking", v29, 0, 0, 0);
  [v26 addObject:v30];

  if ([(TrackpadSettings *)v25 accessibilityDrag]== 2 || [(TrackpadSettings *)v25 accessibilityDrag]== 3)
  {
    v31 = gestureDictionary(@"Primary Down", @"Tap", 0, 0, 0, 0, 0);
    [v26 addObject:v31];
LABEL_12:

    goto LABEL_13;
  }

  if ([(TrackpadSettings *)v25 tapClick])
  {
    v31 = gestureDictionary(@"Click", @"Tap", 0, 0, 0, 0, 0);
    [v26 addObject:v31];
    goto LABEL_12;
  }

LABEL_13:
  if ([(TrackpadSettings *)v25 tapClick])
  {
    v32 = gestureDictionary(@"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0);
    [v26 addObject:v32];
  }

  if ([(TrackpadSettings *)v25 zoom])
  {
    v33 = gestureDictionary(@"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0);
    [v26 addObject:v33];
  }

  v190 = @"Gestures";
  v191 = @"Transitions";
  *buf = v26;
  *&buf[8] = @"ToMoreIfPause FromRestingPoint FromMoreFingers FromMoreWithSlightIntegrationDelay";
  v34 = [NSDictionary dictionaryWithObjects:buf forKeys:&v190 count:2];

  [v168 setObject:v34 forKeyedSubscript:{@"1F Point, Click & Drag"}];
  v35 = chordMapping(@"1 Finger", @"1F Point, Click & Drag");
  [v171 addObject:v35];

  if (![(PointerSettings *)v25 horizontalScrolling]&& ![(PointerSettings *)v25 verticalScrolling]&& ![(TrackpadSettings *)v25 zoom]&& ![(TrackpadSettings *)v25 rotate]&& ![(TrackpadSettings *)v25 gestureScrollingEnabled]&& (![(TrackpadSettings *)v25 tapClick]|| [(TrackpadSettings *)v25 secondaryClick]!= 1))
  {
    v117 = createRestingSwipeOrDockCombo(1, [(TrackpadSettings *)v25 tapClick], 0, 0, 0, 0, [(PointerSettings *)v25 zoomToggle], 0);
    [v168 setObject:v117 forKeyedSubscript:@"Resting 2F Point"];

    v53 = chordMapping(@"2 Fingers", @"Resting 2F Point");
    [v171 addObject:v53];
    goto LABEL_59;
  }

  v36 = v25;
  v37 = objc_opt_new();
  if ([(TrackpadSettings *)v36 gestureScrollingEnabled]|| [(TrackpadSettings *)v36 screenZoom]|| [(TrackpadSettings *)v36 zoom]|| [(TrackpadSettings *)v36 rotate])
  {
    v38 = @"IfWidelySeparatedFingers AccelOnlyIfSomeResting";
  }

  else
  {
    v38 = @"AccelOnlyIfSomeResting";
  }

  v39 = gestureDictionary(@"Point", @"Translate", @"Resting Accel Tracking", &v38->isa, @"LockOnFirst", 0, 0);
  [v37 addObject:v39];

  if ([(PointerSettings *)v36 horizontalScrolling]&& [(PointerSettings *)v36 verticalScrolling])
  {
    v40 = @"Translate";
LABEL_34:
    v41 = gestureDictionary(@"Scroll", &v40->isa, @"Scrolling", @"Momentum", @"LockOnFirst", @"Category", @"TwoFingerScroll");
    [v37 addObject:v41];

    goto LABEL_35;
  }

  if ([(PointerSettings *)v36 horizontalScrolling])
  {
    v40 = @"Horizontal";
    goto LABEL_34;
  }

  if ([(PointerSettings *)v36 verticalScrolling])
  {
    v40 = @"Vertical";
    goto LABEL_34;
  }

LABEL_35:
  if ([(PointerSettings *)v36 horizontalScrolling]|| [(PointerSettings *)v36 verticalScrolling])
  {
    v42 = gestureDictionary(@"Scroll", @"Hold", 0, @"MayBegin", 0, @"Category", @"TwoFingerScroll");
    [v37 addObject:v42];
  }

  if ([(TrackpadSettings *)v36 notificationCenterEdgeSwipe2F])
  {
    if ([(TrackpadSettings *)v36 notificationCenterEdgeSwipe2F]== 2)
    {
      v43 = @"Right";
    }

    else
    {
      v43 = @"Left";
    }

    v44 = gestureDictionary(@"Fluid Notification", &v43->isa, @"Edge Swipe", @"OnlyIfAllMoving OnlyFromEdge", @"LockOnFirstUntilPause", @"Category", @"TwoFingerScroll");
    [v37 addObject:v44];

    v45 = gestureDictionary(@"Fluid Notification", @"Horizontal", @"Edge Swipe", @"OnlyIfAllMoving", @"LockOnFirstUntilPause", @"Category", @"TwoFingerNotificationCenter");
    [v37 addObject:v45];

    v46 = gestureDictionary(@"Scroll", @"Vertical", @"Scrolling", @"Momentum", @"LockOnFirst", @"Category", @"TwoFingerNotificationCenter");
    [v37 addObject:v46];
  }

  if ([(TrackpadSettings *)v36 tapClick]&& [(TrackpadSettings *)v36 secondaryClick]== 1)
  {
    v47 = gestureDictionary(@"Secondary Click", @"Tap", 0, 0, 0, 0, 0);
    [v37 addObject:v47];
  }

  if ([(TrackpadSettings *)v36 zoom]&& [(TrackpadSettings *)v36 rotate])
  {
    v48 = @"Scale+Rotate";
LABEL_53:
    v49 = gestureDictionary(@"Orientation", &v48->isa, @"Zooming", @"Repetitive", @"LockOnFirst", 0, 0);
    [v37 addObject:v49];

    goto LABEL_54;
  }

  if ([(TrackpadSettings *)v36 zoom])
  {
    v48 = @"Scale";
    goto LABEL_53;
  }

  if ([(TrackpadSettings *)v36 rotate])
  {
    v48 = @"Rotate";
    goto LABEL_53;
  }

LABEL_54:
  if ([(PointerSettings *)v36 zoomToggle])
  {
    v50 = gestureDictionary(@"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0);
    [v37 addObject:v50];
  }

  if ([(TrackpadSettings *)v36 tapClick])
  {
    v51 = gestureDictionary(@"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0);
    [v37 addObject:v51];
  }

  v190 = @"Gestures";
  v191 = @"Transitions";
  *buf = v37;
  *&buf[8] = @"ToMoreIfPause ToFewerAfterSlightDelay FromRestingPoint FromFewerFingers FromMoreFingers FromMoreWithSlightIntegrationDelay";
  v52 = [NSDictionary dictionaryWithObjects:buf forKeys:&v190 count:2];

  [v168 setObject:v52 forKeyedSubscript:{@"Scroll, Zoom & Rotate, Secondary Click"}];
  v53 = chordMapping(@"2 Fingers", @"Scroll, Zoom & Rotate, Secondary Click");
  [v171 addObject:v53];
LABEL_59:

  if ([(TrackpadSettings *)v25 accessibilityDrag]== 1)
  {
    v54 = chordMapping(@"3 Fingers", @"Drag & Click");
    [v171 addObject:v54];
  }

  else
  {
    v55 = [(TrackpadSettings *)v25 horizontalSwipe3F]!= 1 && [(TrackpadSettings *)v25 verticalSwipe3F]!= 1;
    if ([(TrackpadSettings *)v25 horizontalSwipe3F]== 2 || [(TrackpadSettings *)v25 verticalSwipe3F]== 2)
    {
      v56 = 0;
      v57 = 3;
    }

    else
    {
      v57 = 0;
      v56 = 1;
    }

    v58 = createRestingSwipeOrDockCombo(v57, [(TrackpadSettings *)v166 tapClick], [(TrackpadSettings *)v166 restingScroll]& v55 & v56, [(TrackpadSettings *)v166 horizontalSwipe3F], [(TrackpadSettings *)v166 verticalSwipe3F], 0, 0, [(TrackpadSettings *)v166 showDefinition]);
    [v168 setObject:v58 forKeyedSubscript:@"Resting 3F Swipe"];

    v54 = chordMapping(@"3 Fingers", @"Resting 3F Swipe");
    [v171 addObject:v54];
    v25 = v166;
  }

  if ([(TrackpadSettings *)v25 horizontalSwipe4F]== 2)
  {
    v59 = 3;
  }

  else if ([(TrackpadSettings *)v25 verticalSwipe4F]== 2)
  {
    v59 = 3;
  }

  else
  {
    v59 = 1;
  }

  v60 = createRestingSwipeOrDockCombo(v59, [(TrackpadSettings *)v25 tapClick], [(TrackpadSettings *)v25 restingScroll], [(TrackpadSettings *)v25 horizontalSwipe4F], [(TrackpadSettings *)v25 verticalSwipe4F], [(TrackpadSettings *)v25 dockScale4F], 0, 0);
  [v168 setObject:v60 forKeyedSubscript:@"Resting 4F Dock Operations"];

  v61 = chordMapping(@"4 Fingers", @"Resting 4F Dock Operations");
  [v171 addObject:v61];

  v62 = createRestingSwipeOrDockCombo(v59, [(TrackpadSettings *)v25 tapClick], [(TrackpadSettings *)v25 restingScroll], [(TrackpadSettings *)v25 horizontalSwipe4F], [(TrackpadSettings *)v25 verticalSwipe4F], [(TrackpadSettings *)v25 dockScale5F], 0, 0);
  [v168 setObject:v62 forKeyedSubscript:@"Resting T4F Dock Operations"];

  v63 = chordMapping(@"4 Fingers + Thumb", @"Resting T4F Dock Operations");
  [v171 addObject:v63];

  MTGestureConfig_::clearAllChords(a1);
  v190 = @"Resting Accel Tracking";
  v281 = @"Resolution_dpi";
  LODWORD(v64) = 1137180672;
  v284 = [NSNumber numberWithFloat:v64];
  v282 = @"AccelThresh";
  LODWORD(v65) = 12.0;
  v147 = v284;
  v66 = [NSNumber numberWithFloat:v65];
  v283 = @"AccelPower";
  v285 = v66;
  v286 = &off_112568;
  v144 = v66;
  *buf = [NSDictionary dictionaryWithObjects:&v284 forKeys:&v281 count:3];
  v191 = @"Tracking";
  v275 = @"Resolution_dpi";
  LODWORD(v67) = 1137180672;
  v141 = *buf;
  v278 = [NSNumber numberWithFloat:v67];
  v276 = @"AccelThresh";
  LODWORD(v68) = 12.0;
  v138 = v278;
  v69 = [NSNumber numberWithFloat:v68];
  v277 = @"AccelPower";
  v279 = v69;
  v280 = &off_111F18;
  v162 = v69;
  *&buf[8] = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v275 count:3];
  v192 = @"Scrolling";
  v267 = @"Resolution_dpi";
  LODWORD(v70) = 1137180672;
  v159 = *&buf[8];
  v271 = [NSNumber numberWithFloat:v70];
  v268 = @"AccelThresh";
  LODWORD(v71) = 12.0;
  v156 = v271;
  v272 = [NSNumber numberWithFloat:v71];
  v273 = &off_111F18;
  v269 = @"AccelPower";
  v270 = @"CommitMultiplier";
  v274 = &off_112C10;
  v153 = v272;
  *&buf[16] = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v267 count:4];
  v193 = @"Zooming";
  v261 = @"Resolution_dpi";
  LODWORD(v72) = 1137180672;
  v150 = *&buf[16];
  v264 = [NSNumber numberWithFloat:v72];
  v265 = &off_112C20;
  v262 = @"CommitMultiplier";
  v263 = @"Acceleration";
  v266 = @"System";
  v135 = v264;
  v132 = [NSDictionary dictionaryWithObjects:&v264 forKeys:&v261 count:3];
  v201 = v132;
  v194 = @"Command";
  v255 = @"Resolution_mm";
  v256 = @"AccelThresh";
  v258 = &off_111F60;
  v259 = &off_111F00;
  v257 = @"AccelPower";
  v260 = &off_112578;
  v129 = [NSDictionary dictionaryWithObjects:&v258 forKeys:&v255 count:3];
  *&v202 = v129;
  v195 = @"Swipe";
  v243 = @"Resolution_mm";
  v244 = @"AccelThresh";
  v249 = &off_111F78;
  v250 = &off_111F00;
  v245 = @"AccelPower";
  v246 = @"FluidAnimationStartThreshold_mm";
  v251 = &off_112588;
  v252 = &off_111F90;
  v247 = @"FluidSwipeCompleteThreshold_mm";
  v248 = @"FluidSwipeInertiaTime_s";
  v253 = &off_111FA8;
  v254 = &off_112538;
  v126 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v243 count:6];
  *(&v202 + 1) = v126;
  v196 = @"Polar Swipe";
  v231 = @"Resolution_mm";
  v232 = @"AccelThresh";
  v237 = &off_111FC0;
  v238 = &off_111F00;
  v233 = @"AccelPower";
  v234 = @"FluidAnimationStartThreshold_mm";
  v239 = &off_112588;
  v240 = &off_111F60;
  v235 = @"FluidSwipeCompleteThreshold_mm";
  v236 = @"FluidSwipeInertiaTime_s";
  v241 = &off_111FD8;
  v242 = &off_112538;
  v73 = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v231 count:6];
  v203 = v73;
  v197 = @"Edge Swipe";
  v219 = @"Resolution_mm";
  v220 = @"AccelThresh";
  v225 = &off_111F60;
  v226 = &off_111F00;
  v221 = @"AccelPower";
  v222 = @"FluidAnimationStartThreshold_mm";
  v227 = &off_112588;
  v228 = &off_111F90;
  v223 = @"FluidSwipeCompleteThreshold_mm";
  v224 = @"FluidSwipeInertiaTime_s";
  v229 = &off_111F30;
  v230 = &off_112598;
  v74 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v219 count:6];
  v204 = v74;
  v198 = @"Edge Scroll";
  v207 = @"Resolution_mm";
  v208 = @"AccelThresh";
  v213 = &off_111F60;
  v214 = &off_111F00;
  v209 = @"AccelPower";
  v210 = @"FluidAnimationStartThreshold_mm";
  v215 = &off_112588;
  v216 = &off_111F60;
  v211 = @"FluidSwipeCompleteThreshold_mm";
  v212 = @"FluidSwipeInertiaTime_s";
  v217 = &off_111F30;
  v218 = &off_112598;
  v75 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v207 count:6];
  v205 = v75;
  v76 = [NSDictionary dictionaryWithObjects:buf forKeys:&v190 count:9];

  MTPListGestureConfig_::setMotionSensitivitiesDictionary(a1, v76);
  v77 = [v168 copy];
  MTPListGestureConfig_::setGestureSetsDictionary(a1, v77);

  v177[0] = @"Point";
  v163 = actionEvent(@"Mouse Point", 0, v78);
  v178[0] = v163;
  v177[1] = @"Drag";
  v160 = actionEvent(@"Mouse Drag", @"Button1", v79);
  v178[1] = v160;
  v177[2] = @"Click";
  v157 = actionEvent(@"Mouse Click", @"Button1", v80);
  v178[2] = v157;
  v177[3] = @"Double Click";
  v154 = actionEvent(@"Mouse Double Click", @"Button1", v81);
  v178[3] = v154;
  v177[4] = @"Primary Down";
  v151 = actionEvent(@"Mouse Down", @"Button1", v82);
  v178[4] = v151;
  v177[5] = @"Primary Up";
  v148 = actionEvent(@"Mouse Up", @"Button1", v83);
  v178[5] = v148;
  v177[6] = @"Secondary Click";
  v145 = actionEvent(@"Mouse Click", @"Button2", v84);
  v178[6] = v145;
  v177[7] = @"Scroll";
  v142 = actionEvent(@"Scroll", 0, v85);
  v178[7] = v142;
  v177[8] = @"Scroll To Edge";
  v139 = actionEvent(@"Scroll To Edge", 0, v86);
  v178[8] = v139;
  v177[9] = @"Orientation";
  v136 = actionEvent(@"Orientation", 0, v87);
  v178[9] = v136;
  v177[10] = @"Zoom Toggle";
  v133 = actionEvent(@"Zoom Toggle", 0, v88);
  v178[10] = v133;
  v177[11] = @"Gesture Started";
  v130 = actionEvent(@"Gesture Started", 0, v89);
  v178[11] = v130;
  v177[12] = @"Gesture Ended";
  v127 = actionEvent(@"Gesture Ended", 0, v90);
  v178[12] = v127;
  v177[13] = @"Fluid Navigation";
  v92 = actionEvent(@"Fluid Navigation", 0, v91);
  v178[13] = v92;
  v177[14] = @"Fluid Notification";
  v94 = actionEvent(@"Fluid Notification", 0, v93);
  v178[14] = v94;
  v177[15] = @"Fluid Notification Alt";
  v96 = actionEvent(@"Fluid Notification Alt", 0, v95);
  v178[15] = v96;
  v177[16] = @"Fluid Dock";
  v98 = actionEvent(@"Fluid Dock", 0, v97);
  v178[16] = v98;
  v177[17] = @"Show Definition";
  v100 = actionEvent(@"Show Definition", 0, v99);
  v178[17] = v100;
  v177[18] = @"Swipe Left";
  v102 = actionEvent(@"Swipe", 0, v101);
  v178[18] = v102;
  v177[19] = @"Swipe Right";
  v104 = actionEvent(@"Swipe", 0, v103);
  v178[19] = v104;
  v177[20] = @"Swipe Up";
  v106 = actionEvent(@"Swipe", 0, v105);
  v178[20] = v106;
  v177[21] = @"Swipe Down";
  v108 = actionEvent(@"Swipe", 0, v107);
  v178[21] = v108;
  v109 = [NSDictionary dictionaryWithObjects:v178 forKeys:v177 count:22];
  MTPListGestureConfig_::setActionEventsDictionary(a1, v109);

  v173 = @"Chords";
  v174 = v171;
  v175 = @"Right";
  v110 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
  v176 = v110;
  v111 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
  MTPListGestureConfig_::setChordMappingsDictionary(a1, v111);

  v172 = 0;
  MTPListGestureConfig_::parseCreateGestureConfig(a1, &v172);
  v112 = v172;
  ChordTableForHand = MTGestureConfig_::getChordTableForHand(a1, 1);
  if (ChordTableForHand)
  {
    if ([(TrackpadSettings *)v166 notificationCenterEdgeSwipe2F]&& [(TrackpadSettings *)v166 notificationCenterActive])
    {
      v114 = MTLoggingPlugin();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[Debug] ";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v201 = "configureTrackpadGestureParser";
        v115 = 32;
        _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Enablng NC gestures!", buf, 0x20u);
      }

      else
      {
        v115 = 32;
      }
    }

    else
    {
      v114 = MTLoggingPlugin();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[Debug] ";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v201 = "configureTrackpadGestureParser";
        _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Disabling NC gestures!", buf, 0x20u);
      }

      v115 = 128;
    }

    *(ChordTableForHand + 24) = *(ChordTableForHand + 24) & 0xFFFFFF5F | v115;
  }

  if (v112)
  {
    v116 = MTLoggingPlugin();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v201 = "configureTrackpadGestureParser";
      LOWORD(v202) = 2112;
      *(&v202 + 2) = v112;
      _os_log_impl(&dword_0, v116, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Error when parsing gesture config: %@", buf, 0x2Au);
    }
  }
}

void configureMouseGestureParser(MTPListGestureConfig_ *a1, MouseSettings *a2)
{
  v48 = a2;
  MTGestureConfig_::clearAllChords(a1);
  v73[0] = @"Mouse Scrolling";
  v71[0] = @"Resolution_dpi";
  v71[1] = @"AccelThresh";
  v72[0] = &off_111EE8;
  v72[1] = &off_111F00;
  v71[2] = @"AccelPower";
  v71[3] = @"FrameDecay_mm";
  v72[2] = &off_111F18;
  v72[3] = &off_1124E8;
  v71[4] = @"CommitMultiplier";
  v72[4] = &off_1124F8;
  v45 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];
  v74[0] = v45;
  v73[1] = @"Mouse Vertical Swipe";
  v69[0] = @"Resolution_mm";
  v69[1] = @"AccelThresh";
  v70[0] = &off_112508;
  v70[1] = &off_111F00;
  v69[2] = @"AccelPower";
  v69[3] = @"FluidAnimationStartThreshold_mm";
  v70[2] = &off_112518;
  v70[3] = &off_112528;
  v69[4] = @"FluidSwipeCompleteThreshold_mm";
  v69[5] = @"FluidSwipeInertiaTime_s";
  v70[4] = &off_111F30;
  v70[5] = &off_112538;
  v2 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:6];
  v74[1] = v2;
  v73[2] = @"Mouse Horizontal Swipe";
  v67[0] = @"Resolution_mm";
  v67[1] = @"AccelThresh";
  v67[5] = @"FluidSwipeInertiaTime_s";
  v68[0] = &off_112548;
  v68[1] = &off_111F00;
  v67[2] = @"AccelPower";
  v67[3] = @"FluidAnimationStartThreshold_mm";
  v68[2] = &off_112558;
  v68[3] = &off_112528;
  v67[4] = @"FluidSwipeCompleteThreshold_mm";
  v68[4] = &off_111F30;
  v68[5] = &off_112538;
  v3 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:6];
  v74[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];
  MTPListGestureConfig_::setMotionSensitivitiesDictionary(a1, v4);

  v65[0] = @"One Finger";
  v5 = createMouseScrollSwipeTapCombo([(PointerSettings *)v48 horizontalScrolling], [(PointerSettings *)v48 verticalScrolling], [(PointerSettings *)v48 zoomToggle], 0, 0);
  v66[0] = v5;
  v65[1] = @"Two Fingers";
  v6 = createMouseScrollSwipeTapCombo([(PointerSettings *)v48 horizontalScrolling], [(PointerSettings *)v48 verticalScrolling], 0, [(MouseSettings *)v48 missionControl], [(MouseSettings *)v48 horizontalSwipe2F]);
  v66[1] = v6;
  v65[2] = @"Three Fingers";
  v7 = createMouseScrollSwipeTapCombo([(PointerSettings *)v48 horizontalScrolling], [(PointerSettings *)v48 verticalScrolling], 0, 0, 0);
  v66[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
  MTPListGestureConfig_::setGestureSetsDictionary(a1, v8);

  v63[0] = @"Secondary Click";
  v46 = actionEvent(@"Mouse Click", @"Button2", v9);
  v64[0] = v46;
  v63[1] = @"Scroll";
  v44 = actionEvent(@"Scroll", 0, v10);
  v64[1] = v44;
  v63[2] = @"Scroll To Edge";
  v43 = actionEvent(@"Scroll To Edge", 0, v11);
  v64[2] = v43;
  v63[3] = @"Orientation";
  v42 = actionEvent(@"Orientation", 0, v12);
  v64[3] = v42;
  v63[4] = @"Zoom Toggle";
  v41 = actionEvent(@"Zoom Toggle", 0, v13);
  v64[4] = v41;
  v63[5] = @"Fluid Navigation";
  v15 = actionEvent(@"Fluid Navigation", 0, v14);
  v64[5] = v15;
  v63[6] = @"Fluid Notification";
  v17 = actionEvent(@"Fluid Notification", 0, v16);
  v64[6] = v17;
  v63[7] = @"Fluid Notification Alt";
  v19 = actionEvent(@"Fluid Notification Alt", 0, v18);
  v64[7] = v19;
  v63[8] = @"Fluid Dock";
  v21 = actionEvent(@"Fluid Dock", 0, v20);
  v64[8] = v21;
  v63[9] = @"Show Definition";
  v23 = actionEvent(@"Show Definition", 0, v22);
  v64[9] = v23;
  v63[10] = @"Swipe Left";
  v25 = actionEvent(@"Swipe", 0, v24);
  v64[10] = v25;
  v63[11] = @"Swipe Right";
  v27 = actionEvent(@"Swipe", 0, v26);
  v64[11] = v27;
  v63[12] = @"Swipe Up";
  v29 = actionEvent(@"Swipe", 0, v28);
  v64[12] = v29;
  v63[13] = @"Swipe Down";
  v31 = actionEvent(@"Swipe", 0, v30);
  v64[13] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:14];
  MTPListGestureConfig_::setActionEventsDictionary(a1, v32);

  v61 = @"Right";
  v59[0] = @"LookupBySubset";
  v59[1] = @"Chords";
  v60[0] = @"TouchingFingers";
  v33 = chordMapping(@"1 Finger", @"One Finger");
  v58[0] = v33;
  v34 = chordMapping(@"2 Fingers", @"Two Fingers");
  v58[1] = v34;
  v35 = chordMapping(@"3 Fingers", @"Three Fingers");
  v58[2] = v35;
  v36 = [NSArray arrayWithObjects:v58 count:3];
  v60[1] = v36;
  v37 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
  v62 = v37;
  v38 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  MTPListGestureConfig_::setChordMappingsDictionary(a1, v38);

  v49 = 0;
  MTPListGestureConfig_::parseCreateGestureConfig(a1, &v49);
  v39 = v49;
  if (v39)
  {
    v40 = MTLoggingPlugin();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v51 = "[Error] ";
      v52 = 2080;
      v53 = "";
      v54 = 2080;
      v55 = "configureMouseGestureParser";
      v56 = 2112;
      v57 = v39;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Error when parsing gesture config: %@", buf, 0x2Au);
    }
  }
}

id chordMapping(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = @"Chord";
  v7[1] = @"Gesture Set";
  v8[0] = v3;
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

id createRestingSwipeOrDockCombo(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v16 = objc_opt_new();
  if (a2)
  {
    v17 = gestureDictionary(@"Click", @"DroppedFingerTap", 0, 0, 0, 0, 0);
    [v16 addObject:v17];
  }

  if (a3)
  {
    v18 = [&off_112AC0 mutableCopy];
    v19 = v18;
    if (a4 != 2 && (a5 - 1) >= 2)
    {
      [v18 addObject:@"OnlyIfAllMoving"];
    }

    v20 = [v19 componentsJoinedByString:@" "];
    v21 = gestureDictionary(@"Scroll", @"Translate", @"Scrolling", v20, @"LockOnFirst", 0, 0);
    [v16 addObject:v21];
  }

  if (a4 == 1)
  {
    v22 = gestureDictionary(@"Fluid Navigation", @"Horizontal", @"Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
    [v16 addObject:v22];

    if (a5 != 1)
    {
      goto LABEL_13;
    }
  }

  else if (a5 != 1)
  {
    goto LABEL_14;
  }

  v23 = gestureDictionary(@"Fluid Navigation", @"Vertical", @"Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
  [v16 addObject:v23];

LABEL_13:
  v24 = gestureDictionary(@"Fluid Navigation", @"Tap", 0, 0, 0, 0, 0);
  [v16 addObject:v24];

LABEL_14:
  if (a4 == 2)
  {
    v25 = gestureDictionary(@"Fluid Dock", @"Horizontal", @"Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
    [v16 addObject:v25];
  }

  if (a5 == 2)
  {
    v26 = gestureDictionary(@"Fluid Dock", @"Vertical", @"Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
    [v16 addObject:v26];
  }

  if (a6)
  {
    v27 = gestureDictionary(@"Fluid Dock", @"Scale", @"Polar Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
    [v16 addObject:v27];

    v28 = gestureDictionary(@"Fluid Dock", @"Rotate", @"Polar Swipe", @" OnlyIfAllMoving", @"LockOnFirstUntilPause", 0, 0);
    [v16 addObject:v28];
  }

  if (a4 != 2 && a5 != 2)
  {
    if (!a7)
    {
      goto LABEL_23;
    }

LABEL_26:
    v30 = gestureDictionary(@"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0);
    [v16 addObject:v30];

    if (!a8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v29 = gestureDictionary(@"Fluid Dock", @"Tap", 0, 0, 0, 0, 0);
  [v16 addObject:v29];

  if (a7)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (a8)
  {
LABEL_27:
    v31 = gestureDictionary(@"Show Definition", @"Tap", 0, 0, 0, 0, 0);
    [v16 addObject:v31];
  }

LABEL_28:
  if ((a1 - 1) > 2)
  {
    v32 = @"ToMoreFingers FromFewerFingers ToFewerFingers FromMoreFingers FromMoreWithSlightIntegrationDelay";
  }

  else
  {
    v32 = off_108F28[a1 - 1];
  }

  v35[0] = @"Gestures";
  v35[1] = @"Transitions";
  v36[0] = v16;
  v36[1] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  return v33;
}

id actionEvent(NSString *a1, NSString *a2, NSString *a3)
{
  v4 = a1;
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setObject:v4 forKeyedSubscript:@"EventType"];
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"Modifiers"];
  }

  v7 = [v6 copy];
  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

id createMouseScrollSwipeTapCombo(int a1, int a2, int a3, int a4, int a5)
{
  v10 = a1 | a2;
  v11 = objc_opt_new();
  v12 = @"Momentum";
  if (a5)
  {
    v12 = @"WaitForQuick Momentum";
  }

  v13 = v12;
  v14 = @"LockOnFirst";
  if ((v10 & (a5 != 0)) == 0)
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = @"OncePerDirection";
  if (v10)
  {
    v16 = @"OncePerDirection OnlyIfAllMoving";
  }

  v17 = v16;
  if (a3)
  {
    v18 = gestureDictionary(@"Zoom Toggle", @"DoubleTap", 0, 0, 0, 0, 0);
    [v11 addObject:v18];
  }

  if (a4)
  {
    v19 = gestureDictionary(@"Fluid Dock", @"DoubleTap", 0, 0, 0, 0, 0);
    [v11 addObject:v19];
  }

  if (a1 && a2)
  {
    v20 = gestureDictionary(@"Scroll", @"Translate", @"Mouse Scrolling", v13, @"LockOnFirst", 0, 0);
    [v11 addObject:v20];
  }

  else
  {
    if (!a2)
    {
      goto LABEL_17;
    }

    v20 = gestureDictionary(@"Scroll", @"Vertical", @"Mouse Scrolling", v13, @"LockOnFirst", 0, 0);
    [v11 addObject:v20];
  }

LABEL_17:
  if (a5 == 1)
  {
    v21 = gestureDictionary(@"Fluid Navigation", @"Horizontal", @"Mouse Horizontal Swipe", v17, 0, 0, 0);
    [v11 addObject:v21];
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_22;
    }

    v21 = gestureDictionary(@"Fluid Dock", @"Horizontal", @"Mouse Horizontal Swipe", v17, 0, 0, 0);
    [v11 addObject:v21];
  }

LABEL_22:
  v22 = @"ToMoreFingers";
  if (((a5 != 0) & (v10 ^ 1)) == 0)
  {
    v22 = @"ToMoreFingers ToFewerFingers FromFewerFingers FromMoreFingers";
  }

  v25[0] = @"Transitions";
  v25[1] = @"Gestures";
  v26[0] = v22;
  v26[1] = v11;
  v23 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v23;
}

id gestureDictionary(NSString *a1, NSString *a2, NSString *a3, NSString *a4, NSString *a5, NSString *a6, NSObject *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v24[0] = @"Action";
  v24[1] = @"Motion";
  v25[0] = v13;
  v25[1] = v14;
  v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v21 = [v20 mutableCopy];

  if (v15)
  {
    [v21 setObject:v15 forKeyedSubscript:@"Sensitivity"];
  }

  if (v16)
  {
    [v21 setObject:v16 forKeyedSubscript:@"Trigger"];
  }

  if (v17)
  {
    [v21 setObject:v17 forKeyedSubscript:@"Locking"];
  }

  if (v18 && v19)
  {
    [v21 setObject:v19 forKeyedSubscript:v18];
  }

  v22 = [v21 copy];

  return v22;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = 0xCBF29CE484222325;
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = (v3 + 1);
    do
    {
      v2 = (0x100000001B3 * v2) ^ v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v2;
    if (v2 >= *&v7)
    {
      v10 = v2 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v2;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v2)
    {
      if (!strcmp(i[2], v3))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::CoderKey const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, const char **a2)
{
  v2 = 0xCBF29CE484222325;
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = (v3 + 1);
    do
    {
      v2 = (0x100000001B3 * v2) ^ v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v2;
    if (v2 >= *&v7)
    {
      v10 = v2 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v2;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v2)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (strcmp(v12[2], v3))
  {
    goto LABEL_20;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void __cxx_global_var_init()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_22(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_25(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_26(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_27(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_28(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void HSUtil::Encoder::encodeHSCodable(HSUtil::Encoder *a1, const HSUtil::CoderKey *a2, void *a3)
{
  v5 = a3;
  if (!*a1)
  {
    v7 = v5;
    HSUtil::Encoder::_encodeKey(a1, a2);
    v5 = v7;
    if (!*a1)
    {
      v6 = (*a1 != 0) | [v7 hsEncode:a1];
      v5 = v7;
      if ((v6 & 1) == 0)
      {
        *a1 = 10;
      }
    }
  }
}

HSUtil::Encoder *HSUtil::Encoder::encodeBool(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, int a3)
{
  if (!*this)
  {
    v9 = v3;
    v10 = v4;
    v6 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v6)
    {
      if (a3)
      {
        v7 = -117;
      }

      else
      {
        v7 = -118;
      }

      __src = v7;
      return HSUtil::Encoder::_write(v6, v6 + 17, &__src, 1uLL);
    }
  }

  return this;
}

void HSUtil::Decoder::decodeHSCodable(unint64_t *a1, const HSUtil::CoderKey *a2, void *a3)
{
  v5 = a3;
  if (*a1 <= 4)
  {
    v6 = a1[9];
    HSUtil::Decoder::_findKey(a1, &v6, a2);
    if (!*a1)
    {
      HSUtil::Decoder::_readHSCodable(a1, &v6, v5);
      if (*a1 == 3)
      {
        *a1 = 13;
      }

      else
      {
        a1[9] = v6;
      }
    }
  }
}

uint64_t HSUtil::Decoder::decodeBool(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v6[0] = *(this + 9);
  HSUtil::Decoder::_findKey(this, v6, a2);
  if (*this)
  {
    return 0;
  }

  result = HSUtil::Decoder::_readBool(this, v6);
  if (*this == 3)
  {
    result = 0;
    *this = 13;
  }

  else
  {
    *(this + 9) = v6[0];
  }

  return result;
}

unint64_t *HSUtil::Decoder::decodeMap@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v3 = this;
    v10 = this[9];
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8 = v4;
    v9 = v4;
    v6 = v4;
    v7 = v4;
    v5 = v4;
    HSUtil::Decoder::_readMap(this, &v10, &v5);
    if (*v3)
    {
      *a2 = 5;
      *(a2 + 8) = a2;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
    }

    else
    {
      v3[9] = v10;
      HSUtil::Decoder::Decoder(a2, &v5);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    this = v6;
    *&v6 = 0;
    if (this)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](this);
      operator delete();
    }
  }

  else
  {
    *a2 = 5;
    *(a2 + 8) = a2;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
  }

  return this;
}

void HSUtil::Decoder::~Decoder(HSUtil::Decoder *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 2, 0);
}

HSUtil::Encoder *HSUtil::Encoder::encodeInt(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, unint64_t a3)
{
  if (!*this)
  {
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeInt(v4, a3);
    }
  }

  return this;
}

HSUtil::Encoder *HSUtil::Encoder::encodeFloat(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, float a3)
{
  if (!*this)
  {
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_writeTokenValue32(v4, 0x88u, SLODWORD(a3));
    }
  }

  return this;
}

uint64_t HSUtil::Decoder::decodeInt(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v6[0] = *(this + 9);
  HSUtil::Decoder::_findKey(this, v6, a2);
  if (*this)
  {
    return 0;
  }

  result = HSUtil::Decoder::_readInt(this, v6);
  if (*this == 3)
  {
    result = 0;
    *this = 13;
  }

  else
  {
    *(this + 9) = v6[0];
  }

  return result;
}

float HSUtil::Decoder::decodeFloat(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  v2 = 0.0;
  if (*this <= 4)
  {
    v6 = *(this + 9);
    HSUtil::Decoder::_findKey(this, &v6, a2);
    if (!*this)
    {
      v4 = HSUtil::Decoder::_readFloat(this, &v6);
      if (*this == 3)
      {
        *this = 13;
      }

      else
      {
        *(this + 9) = v6;
        return v4;
      }
    }
  }

  return v2;
}

HSUtil::Encoder *HSUtil::Encoder::encodeUInt(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, unint64_t a3)
{
  if (!*this)
  {
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeUInt(v4, a3);
    }
  }

  return this;
}

void HSUtil::Encoder::encodeNSString(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, NSString *a3)
{
  v5 = a3;
  if (!*this)
  {
    HSUtil::Encoder::_encodeKey(this, a2);
  }

  HSUtil::Encoder::encodeNSString(this, v5);
}

unint64_t HSUtil::Decoder::decodeUInt(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v6[0] = *(this + 9);
  HSUtil::Decoder::_findKey(this, v6, a2);
  if (*this)
  {
    return 0;
  }

  result = HSUtil::Decoder::_readUInt(this, v6);
  if (*this == 3)
  {
    result = 0;
    *this = 13;
  }

  else
  {
    *(this + 9) = v6[0];
  }

  return result;
}

id HSUtil::Decoder::decodeNSString(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4 || (v7 = *(this + 9), HSUtil::Decoder::_findKey(this, &v7, a2), *this))
  {
    v3 = 0;
  }

  else
  {
    v5 = HSUtil::Decoder::_readNSString(this, &v7);
    v6 = v5;
    if (*this == 3)
    {
      v3 = 0;
      *this = 13;
    }

    else
    {
      *(this + 9) = v7;
      v3 = v5;
    }
  }

  return v3;
}

uint64_t (***HSUtil::Encoder::_encodeKey(HSUtil::Encoder *this, const HSUtil::CoderKey *a2))(void)
{
  result = HSUtil::Encoder::_markKeyEncoded(this, a2);
  if (!*this)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x4F)
    {
      if (v5 > 0xFF)
      {
        if (HIWORD(v5))
        {

          return HSUtil::Encoder::_writeTokenValue32(this, 0x8Fu, v5);
        }

        else
        {

          return HSUtil::Encoder::_writeTokenValue16(this, 0x8Eu, v5);
        }
      }

      else
      {

        return HSUtil::Encoder::_writeTokenValue8(this, 0x8Du, v5);
      }
    }

    else
    {
      __src = v5 - 112;
      return HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
    }
  }

  return result;
}

unint64_t HSUtil::Encoder::_markKeyEncoded(HSUtil::Encoder *this, const HSUtil::CoderKey *a2)
{
  result = *(a2 + 2);
  v4 = *(this + 10);
  if (result >= (*(this + 11) - v4) >> 4)
  {
    v6 = flsll(result);
    v7 = 1 << v6;
    if (v6 < 6)
    {
      v7 = 64;
    }

    std::vector<HSUtil::Encoder::KeyState>::resize(this + 10, v7);
    result = *(a2 + 2);
    v4 = *(this + 10);
  }

  v8 = v4 + 16 * result;
  if (*v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(this + 17);
    v11 = *(this + 13);
    if (__CFADD__(v11, v10))
    {
      v9 = 14;
    }

    else
    {
      v9 = 0;
      *v8 = 1;
      *(v8 + 8) = v11 + v10;
      *(this + 112) = 1;
    }
  }

  *this = v9;
  return result;
}

uint64_t (***HSUtil::Encoder::_writeTokenValue8(unint64_t *a1, unsigned __int8 a2, unsigned __int8 a3))(void)
{
  __src = a2;
  v5 = a3;
  result = HSUtil::Encoder::_write(a1, a1 + 17, &__src, 1uLL);
  if (!*a1)
  {
    return HSUtil::Encoder::_write(a1, a1 + 17, &v5, 1uLL);
  }

  return result;
}

uint64_t (***HSUtil::Encoder::_writeTokenValue16(unint64_t *a1, unsigned __int8 a2, __int16 a3))(void)
{
  __src = a2;
  *v5 = a3;
  result = HSUtil::Encoder::_write(a1, a1 + 17, &__src, 1uLL);
  if (!*a1)
  {
    return HSUtil::Encoder::_write(a1, a1 + 17, v5, 2uLL);
  }

  return result;
}

uint64_t (***HSUtil::Encoder::_writeTokenValue32(unint64_t *a1, unsigned __int8 a2, int a3))(void)
{
  __src = a2;
  *v5 = a3;
  result = HSUtil::Encoder::_write(a1, a1 + 17, &__src, 1uLL);
  if (!*a1)
  {
    return HSUtil::Encoder::_write(a1, a1 + 17, v5, 4uLL);
  }

  return result;
}

void std::vector<HSUtil::Encoder::KeyState>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<HSUtil::Encoder::KeyState>::__append(a1, a2 - v2);
  }
}

void std::vector<HSUtil::Encoder::KeyState>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::Encoder::KeyState>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::Encoder::KeyState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t (***HSUtil::Encoder::_write(HSUtil::Encoder *this, unint64_t *a2, const unsigned __int8 *__src, size_t __n))(void)
{
  v7 = *(this + 15);
  v8 = *a2;
  if (v7 && ((v9 = *(this + 16), v11 = v9 >= v8, v10 = v9 - v8, v11) ? (v11 = v10 >= __n) : (v11 = 0), v11))
  {
    result = memcpy((v7 + v8), __src, __n);
  }

  else
  {
    result = (***(this + 5))(*(this + 5), v8, __src, __n);
    if (result)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == __n;
    }

    if (!v14)
    {
      goto LABEL_10;
    }

    result = *(this + 6);
    if (result)
    {
      result = (**result)(result);
      *(this + 15) = result;
      if (!result)
      {
LABEL_10:
        v15 = 7;
        goto LABEL_18;
      }

      result = (*(**(this + 6) + 16))(*(this + 6));
      *(this + 16) = result;
    }
  }

  if (__CFADD__(*a2, __n))
  {
    v15 = 14;
  }

  else
  {
    v15 = 0;
    *a2 += __n;
  }

LABEL_18:
  *this = v15;
  return result;
}

const HSUtil::CoderKey *HSUtil::Decoder::_findKey(HSUtil::Decoder *this, unint64_t *a2, const HSUtil::CoderKey *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_findKey(this, a2, 0xFFFFFFFFFFFFFFFFLL, a3);
  if (*this == 1)
  {
    *a2 = 0;

    return HSUtil::Decoder::_findKey(this, a2, v6, a3);
  }

  return result;
}

void HSUtil::Decoder::_readHSCodable(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  v7 = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = v7;
    HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v12[1] = *(a1 + 8);
      v12[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v13 = 0;
      v14 = v10;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 56) + v6;
      v18 = v8;
      v19 = 0;
      if (([v5 hsDecode:v12] & 1) == 0)
      {
        *a1 = 10;
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v11 = v13;
      v13 = 0;
      if (v11)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v11);
        operator delete();
      }
    }
  }
}

void sub_AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HSUtil::Decoder::~Decoder(&a9);

  _Unwind_Resume(a1);
}

const HSUtil::CoderKey *HSUtil::Decoder::_findKey(const HSUtil::CoderKey *this, unint64_t *a2, unint64_t a3, const HSUtil::CoderKey *a4)
{
  v7 = this;
  while (1)
  {
    if (*a2 >= a3)
    {
      goto LABEL_9;
    }

    this = HSUtil::Decoder::_readKey(v7, a2);
    v8 = *v7;
    if (*v7)
    {
      break;
    }

    if (this == a4)
    {
      v9 = 0;
      goto LABEL_12;
    }

    this = HSUtil::Decoder::_skipElement(v7, a2);
    if (*v7)
    {
      v9 = 13;
      goto LABEL_12;
    }
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      return this;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 12;
LABEL_12:
  *v7 = v9;
  return this;
}

unint64_t HSUtil::Decoder::_readKey(uint64_t **this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  switch(Token)
  {
    case 141:
      v11 = 0;
      HSUtil::Decoder::_read(this, a2, &v11, 1uLL);
      v5 = *this;
      v6 = v11;
LABEL_8:
      if (v5)
      {
        return 0;
      }

      goto LABEL_12;
    case 142:
      v12 = 0;
      HSUtil::Decoder::_read(this, a2, &v12, 2uLL);
      v5 = *this;
      v6 = v12;
      goto LABEL_8;
    case 143:
      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v5 = *this;
      v6 = __dst;
      goto LABEL_8;
  }

  v6 = Token - 144;
  if ((Token - 144) < 0x50)
  {
    *this = 0;
LABEL_12:
    v8 = this[3];
    if (v8 && (v9 = *v8, v6 < ((this[3][1] - v9) >> 3)))
    {
      result = atomic_load((v9 + 8 * v6));
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      v10 = 0;
    }

    else
    {
      v10 = 11;
    }

    goto LABEL_20;
  }

  result = 0;
  v10 = 2;
LABEL_20:
  *this = v10;
  return result;
}

unint64_t HSUtil::Decoder::_skipElement(HSUtil::Decoder *this, unint64_t *a2)
{
  v4 = *a2;
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if ((Token - 224) > 0xF)
  {
    v9 = 0;
    switch(Token)
    {
      case 128:
      case 132:
      case 141:
        v9 = 1;
        break;
      case 129:
      case 133:
      case 142:
        v9 = 2;
        break;
      case 130:
      case 134:
      case 136:
      case 143:
        v9 = 4;
        break;
      case 131:
      case 135:
      case 137:
        v9 = 8;
        break;
      default:
        break;
    }
  }

  else
  {
    v7 = 1 << (Token + 32);
    if ((v7 & 0xC924) != 0)
    {
      v17 = 0;
      HSUtil::Decoder::_read(this, a2, &v17, 4uLL);
      v8 = *this;
      if (*this)
      {
        v9 = 0;
      }

      else
      {
        v9 = v17;
      }
    }

    else
    {
      if ((v7 & 0x1249) != 0)
      {
        __dst = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v8 = *this;
        v9 = __dst;
      }

      else
      {
        v16 = 0;
        HSUtil::Decoder::_read(this, a2, &v16, 2uLL);
        v8 = *this;
        v9 = v16;
      }

      if (v8)
      {
        v9 = 0;
      }
    }

    if (v8)
    {
      return 0;
    }
  }

  v10 = *(this + 8);
  v11 = v10 >= *a2;
  v12 = v10 - *a2;
  if (!v11)
  {
    v13 = 6;
LABEL_24:
    result = 0;
    *this = v13;
    return result;
  }

  if (v12 < v9)
  {
    v13 = 13;
    goto LABEL_24;
  }

  v14 = *a2 + v9;
  *a2 = v14;
  *this = 0;
  return v14 - v4;
}

uint64_t HSUtil::Decoder::_readToken(HSUtil::Decoder *this, unint64_t *a2)
{
  __dst = 0;
  HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
  v3 = __dst;
  if (*this)
  {
    v3 = 0;
  }

  if (*this == 13)
  {
    v3 = 0;
    *this = 3;
  }

  return v3;
}

void *HSUtil::Decoder::_read(void *this, unint64_t *a2, void *__dst, size_t __n)
{
  v4 = this;
  v5 = *a2;
  v6 = this[8];
  v7 = v6 >= *a2;
  v8 = v6 - *a2;
  if (!v7)
  {
    goto LABEL_2;
  }

  if (v8 < __n)
  {
    goto LABEL_10;
  }

  this = this[5];
  if (!this)
  {
    goto LABEL_10;
  }

  v13 = *(v4 + 48);
  v12 = *(v4 + 56);
  if (v13)
  {
    this = memcpy(__dst, (v13 + v12 + v5), __n);
LABEL_7:
    v9 = 0;
    *a2 += __n;
    goto LABEL_11;
  }

  this = (**this)(this, v12 + v5, __dst, __n);
  if (!this)
  {
    if (v14 == __n)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 13;
    goto LABEL_11;
  }

LABEL_2:
  v9 = 6;
LABEL_11:
  *v4 = v9;
  return this;
}

HSUtil::Decoder **HSUtil::Decoder::_loadKeyTableIfNeeded(HSUtil::Decoder **this, unint64_t *a2)
{
  if (this[1] == this)
  {
    v6[3] = v2;
    v6[4] = v3;
    v5 = this;
    v6[0] = *a2;
    this = HSUtil::Decoder::_readToken(this, v6);
    if (*v5 == 3)
    {
      *v5 = 0;
    }

    else if (!*v5 && this == 239)
    {
      return HSUtil::Decoder::_loadKeyTable(v5, a2);
    }
  }

  return this;
}

uint64_t HSUtil::Decoder::_loadKeyTable(HSUtil::Decoder **this, unint64_t *a2)
{
  if (this[1] != this)
  {
    HSUtil::Decoder::_loadKeyTable();
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v3;
  v24 = v3;
  v21 = v3;
  v22 = v3;
  v20 = v3;
  HSUtil::Decoder::_readKeyTable(this, a2, &v20);
  if (!*this)
  {
    while (1)
    {
      v4 = HSUtil::Decoder::decodeUInt(&v20);
      if (v20)
      {
        break;
      }

      v5 = v4;
      if (v4 >= 0x10000)
      {
        v11 = 15;
        goto LABEL_21;
      }

      v6 = this[3];
      if (!v6 || v4 >= (*(v6 + 1) - *v6) >> 3)
      {
        v7 = this[4];
        v18 = this[3];
        v19 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        flsll(v4);
        HSUtil::Decoder::_newKeys(v14);
      }

      if (atomic_load((*v6 + 8 * v4)))
      {
        HSUtil::Decoder::skipElement(&v20);
        if (v20)
        {
          if (v20 == 3)
          {
            v11 = 13;
LABEL_21:
            *this = v11;
            goto LABEL_22;
          }

LABEL_19:
          v11 = 12;
          goto LABEL_21;
        }
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v15 = v9;
        v16 = v9;
        v14[0] = v9;
        v14[1] = v9;
        HSUtil::Decoder::decodeString(&v20, v14);
        if (v20)
        {
          if (v20 == 3)
          {
            v13 = 13;
          }

          else
          {
            v13 = 12;
          }

          *this = v13;
          HSUtil::Buffer::~Buffer(v14);
          goto LABEL_22;
        }

        atomic_store(HSUtil::CoderKey::New(v15[1], v10), (*this[3] + 8 * v5));
        HSUtil::Buffer::~Buffer(v14);
      }
    }

    if (v20 == 3)
    {
      *this = 0;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_22:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  result = v21;
  *&v21 = 0;
  if (result)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
    operator delete();
  }

  return result;
}

void sub_B248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

double HSUtil::Decoder::_readKeyTable@<D0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (!*this)
  {
    if (Token == 239)
    {
      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      if (*this)
      {
        v7 = 0;
      }

      else
      {
        v7 = __dst;
      }

      if (*this)
      {
        goto LABEL_11;
      }

      v8 = *a2;
      v9 = *(this + 8);
      v10 = v9 >= *a2;
      v11 = v9 - *a2;
      if (v10)
      {
        if (v11 >= v7)
        {
          *a2 = v8 + v7;
          *this = 0;
          *&result = HSUtil::Decoder::Decoder(a3, this, v8, v7).n128_u64[0];
          return result;
        }

        v12 = 13;
      }

      else
      {
        v12 = 6;
      }
    }

    else
    {
      v12 = 2;
    }

    *this = v12;
  }

LABEL_11:
  *a3 = 5;
  *(a3 + 8) = a3;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

unint64_t HSUtil::Decoder::decodeUInt(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readUInt(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

void HSUtil::Decoder::_newKeys(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<std::vector<std::atomic<HSUtil::CoderKey const*>>,std::allocator<std::vector<std::atomic<HSUtil::CoderKey const*>>>,unsigned long &,0>();
}

void HSUtil::Decoder::decodeString(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v7 = *(this + 9);
    v6 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v5[2] = v4;
    v5[3] = v4;
    v5[0] = v4;
    v5[1] = v4;
    HSUtil::Decoder::_readString(this, &v7, v5);
    if (*this)
    {
      *a2 = &off_108FA0;
      *(a2 + 8) = &off_108FF8;
      *(a2 + 16) = &off_109018;
      *(a2 + 24) = &off_109030;
      *(a2 + 32) = off_109048;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) &= 0xFCu;
    }

    else
    {
      *(this + 9) = v7;
      HSUtil::Buffer::Buffer(a2, v5);
    }

    HSUtil::Buffer::~Buffer(v5);
  }

  else
  {
    *a2 = &off_108FA0;
    *(a2 + 8) = &off_108FF8;
    *(a2 + 16) = &off_109018;
    *(a2 + 24) = &off_109030;
    *(a2 + 32) = off_109048;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) &= 0xFCu;
  }
}

void *HSUtil::Decoder::skipElement(void *this)
{
  if (*this <= 4)
  {
    v4[3] = v1;
    v4[4] = v2;
    v3 = this;
    v4[0] = this[9];
    this = HSUtil::Decoder::_skipElement(this, v4);
    if (!*v3)
    {
      v3[9] = v4[0];
    }
  }

  return this;
}

unint64_t HSUtil::Decoder::_readUInt(HSUtil::Decoder *this, unint64_t *a2)
{
  LOBYTE(result) = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (result > 0x84u)
  {
    if (result <= 0x86u)
    {
      if (result == 133)
      {
        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v9 = __dst;
        if (*this)
        {
          v9 = 0;
        }

        if ((v9 & 0x8000) != 0)
        {
          result = 0;
          *this = 2;
          return result;
        }

        result = v9;
        if (!*this)
        {
          return result;
        }

        return 0;
      }

      if (result != 134)
      {
        goto LABEL_59;
      }

      LODWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v7 = *this;
      if (*this)
      {
        result = 0;
      }

      else
      {
        result = __dst;
      }

      if ((result & 0x80000000) != 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (result != 135)
      {
        if (result != 136)
        {
          if (result == 137)
          {
            __dst = 0;
            HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
            v6 = *&__dst;
            if (*this)
            {
              v6 = 0.0;
            }

            if (v6 >= 0.0)
            {
              result = v6;
              if (!*this)
              {
                return result;
              }

              return 0;
            }

            goto LABEL_61;
          }

LABEL_59:
          if ((result & 0x80000000) == 0)
          {
            return result;
          }

          goto LABEL_61;
        }

        LODWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
        v10 = *&__dst;
        if (*this)
        {
          v10 = 0.0;
        }

        if (v10 < 0.0)
        {
          goto LABEL_61;
        }

        result = v10;
        if (!*this)
        {
          return result;
        }

        return 0;
      }

      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
      v7 = *this;
      if (*this)
      {
        result = 0;
      }

      else
      {
        result = __dst;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_51:
    if (!v7)
    {
      return result;
    }

    return 0;
  }

  if (result <= 0x81u)
  {
    if (result == 128)
    {
      LOBYTE(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      v7 = *this;
      v8 = __dst;
    }

    else
    {
      if (result != 129)
      {
        goto LABEL_59;
      }

      LOWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
      v7 = *this;
      v8 = __dst;
    }

LABEL_48:
    if (v7)
    {
      result = 0;
    }

    else
    {
      result = v8;
    }

    goto LABEL_51;
  }

  if (result != 130)
  {
    if (result != 131)
    {
      if (result == 132)
      {
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v5 = __dst;
        if (*this)
        {
          v5 = 0;
        }

        if ((v5 & 0x80) == 0)
        {
          result = v5;
          if (!*this)
          {
            return result;
          }

          return 0;
        }

LABEL_61:
        result = 0;
        *this = 2;
        return result;
      }

      goto LABEL_59;
    }

    __dst = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
    v7 = *this;
    v8 = __dst;
    goto LABEL_48;
  }

  LODWORD(__dst) = 0;
  HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
  if (*this)
  {
    result = 0;
  }

  else
  {
    result = __dst;
  }

  if (*this)
  {
    return 0;
  }

  return result;
}

void *std::__shared_ptr_emplace<std::vector<std::atomic<HSUtil::CoderKey const*>>>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<std::vector<std::atomic<HSUtil::CoderKey const*>>>,0>(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_108F50;
  std::vector<std::atomic<HSUtil::CoderKey const*>>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::atomic<HSUtil::CoderKey const*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_108F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<std::vector<std::atomic<HSUtil::CoderKey const*>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::vector<std::atomic<HSUtil::CoderKey const*>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::atomic<HSUtil::CoderKey const*>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_BB0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::atomic<HSUtil::CoderKey const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::CoderKey const*>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void HSUtil::Decoder::_readString(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 6))
  {
    HSUtil::Decoder::_readStringByRef(this, a2, a3);
  }

  else
  {
    HSUtil::Decoder::_readStringByCopy(this, a2, a3);
  }
}

uint64_t HSUtil::Buffer::read(HSUtil::Buffer *this, unint64_t a2, void *__dst, size_t a4)
{
  v4 = *(this + 5);
  if (!v4)
  {
    return 22;
  }

  v5 = *(this + 6);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    return 34;
  }

  if (v7 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7;
  }

  memmove(__dst, (v4 + a2), v9);
  return 0;
}

uint64_t HSUtil::Buffer::readLength(HSUtil::Buffer *this)
{
  if (*(this + 5))
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t HSUtil::Buffer::write(HSUtil::Buffer *this, uint64_t a2, const void *a3, size_t a4)
{
  if (*(this + 5))
  {
    if (__CFADD__(a2, a4))
    {
      LODWORD(result) = 34;
    }

    else
    {
      v8 = a4 + a2;
      LODWORD(result) = HSUtil::Buffer::_expandCapacity(this, a4 + a2);
      if (!result)
      {
        memmove((*(this + 5) + a2), a3, a4);
        LODWORD(result) = 0;
        if (v8 > *(this + 6))
        {
          *(this + 6) = v8;
        }
      }
    }
  }

  else
  {
    return &dword_14 + 2;
  }

  return result;
}

uint64_t HSUtil::Buffer::writeLength(HSUtil::Buffer *this, unint64_t a2)
{
  if (!*(this + 5))
  {
    return 22;
  }

  if (*(this + 7) < a2)
  {
    HSUtil::Buffer::writeLength();
  }

  result = 0;
  *(this + 6) = a2;
  return result;
}

unint64_t HSUtil::Buffer::readFrom(HSUtil::Buffer *this, uint64_t a2, Readable *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(this + 5);
  if (v5)
  {
    if (__CFADD__(a2, a5))
    {
      v8 = 0;
      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
      LOBYTE(v5) = 0;
      LODWORD(v14) = 34;
    }

    else
    {
      LODWORD(v14) = HSUtil::Buffer::_expandCapacity(this, a5 + a2);
      if (v14)
      {
        v8 = 0;
        LOBYTE(v9) = 0;
        LOBYTE(v10) = 0;
        LOBYTE(v5) = 0;
      }

      else
      {
        v14 = (**a3)(a3, a4, *(this + 5) + a2, a5);
        v5 = HIDWORD(v14);
        v10 = v14 >> 40;
        v9 = HIWORD(v14);
        v8 = HIBYTE(v14);
        if (!v14)
        {
          LODWORD(v14) = 0;
          if ((v15 + a2) > *(this + 6))
          {
            *(this + 6) = v15 + a2;
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
    v14 = &dword_14 + 2;
  }

  return (v8 << 56) | (v9 << 48) | (v10 << 40) | (v5 << 32) | v14;
}

unint64_t HSUtil::Buffer::writeTo(HSUtil::Buffer *this, unint64_t a2, Writable *a3, uint64_t a4, unint64_t a5)
{
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = v6 >= a2;
    v8 = v6 - a2;
    if (v7)
    {
      if (v8 >= a5)
      {
        v8 = a5;
      }

      v11 = (*a3->var0)(a3, a4, v5 + a2, v8);
      v9 = v11 & 0xFFFFFFFF00000000;
      v10 = v11;
    }

    else
    {
      v9 = 0;
      v10 = 34;
    }
  }

  else
  {
    v9 = 0;
    v10 = 22;
  }

  return v10 | v9;
}

uint64_t HSUtil::Buffer::memoryReadableLength(HSUtil::Buffer *this)
{
  if (*(this + 5))
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t HSUtil::Buffer::memoryWritableLength(HSUtil::Buffer *this)
{
  if (*(this + 5))
  {
    return *(this + 7);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toHSUtil::Buffer::memoryReadableLength(HSUtil::Buffer *this)
{
  if (*(this + 1))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toHSUtil::Buffer::memoryWritableLength(HSUtil::Buffer *this)
{
  if (*(this + 1))
  {
    return *(this + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t HSUtil::Buffer::_expandCapacity(HSUtil::Buffer *this, unint64_t a2)
{
  if (*(this + 7) >= a2)
  {
    return 0;
  }

  if (*(this + 5) == HSUtil::Buffer::_EmptyData)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 5);
  }

  v4 = *(this + 64);
  if (v3)
  {
    result = 1;
    if ((v4 & 2) != 0 || (v4 & 1) == 0)
    {
      return result;
    }
  }

  else if ((*(this + 64) & 2) != 0)
  {
    return 1;
  }

  v6 = flsll(a2 - 1);
  v7 = 1 << v6;
  if ((1 << v6) <= 0x10)
  {
    v7 = 16;
  }

  if (v6 > 0x3F)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = malloc_type_realloc(v3, v8, 0x100004077774924uLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  result = 0;
  *(this + 5) = v10;
  *(this + 7) = v8;
  *(this + 64) |= 1u;
  return result;
}

unint64_t HSUtil::Decoder::_readStringByRef@<X0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = HSUtil::Decoder::_readStringLength(this, a2);
  if (*this)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  v8 = *(this + 8);
  v9 = v8 >= *a2;
  v10 = v8 - *a2;
  if (!v9)
  {
    v11 = 6;
LABEL_8:
    *this = v11;
LABEL_9:
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
    return result;
  }

  if (v10 < result)
  {
    v11 = 13;
    goto LABEL_8;
  }

  *a2 = v7 + result;
  *this = 0;
  v12 = *(this + 6) + *(this + 7) + v7;
  if (*(v12 + result - 1))
  {
    v11 = 12;
    goto LABEL_8;
  }

  return HSUtil::Buffer::Buffer(a3, v12, result);
}

void HSUtil::Decoder::_readStringByCopy(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  StringLength = HSUtil::Decoder::_readStringLength(this, a2);
  if (*this)
  {
    *a3 = &off_108FA0;
    *(a3 + 8) = &off_108FF8;
    *(a3 + 16) = &off_109018;
    *(a3 + 24) = &off_109030;
    *(a3 + 32) = off_109048;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) &= 0xFCu;
    return;
  }

  v7 = StringLength;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__dst = v8;
  v11 = v8;
  v9[0] = v8;
  v9[1] = v8;
  HSUtil::Buffer::Buffer(v9, v7, v7);
  HSUtil::Decoder::_read(this, a2, __dst[1], v7);
  if (!*this)
  {
    if (!*(__dst[1] + v7 - 1))
    {
      HSUtil::Buffer::Buffer(a3, v9);
      goto LABEL_7;
    }

    *this = 12;
  }

  *a3 = &off_108FA0;
  *(a3 + 8) = &off_108FF8;
  *(a3 + 16) = &off_109018;
  *(a3 + 24) = &off_109030;
  *(a3 + 32) = off_109048;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) &= 0xFCu;
LABEL_7:
  HSUtil::Buffer::~Buffer(v9);
}

uint64_t HSUtil::Decoder::_readStringLength(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (Token == 226)
  {
    v11 = 0;
    HSUtil::Decoder::_read(this, a2, &v11, 4uLL);
    if (*this)
    {
      result = 0;
    }

    else
    {
      result = v11;
    }

    if (*this)
    {
      return 0;
    }
  }

  else
  {
    if (Token == 225)
    {
      v10 = 0;
      HSUtil::Decoder::_read(this, a2, &v10, 2uLL);
      v5 = *this;
      v6 = v10;
    }

    else
    {
      if (Token != 224)
      {
        v8 = 2;
        goto LABEL_20;
      }

      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      v5 = *this;
      v6 = __dst;
    }

    if (v5)
    {
      result = 0;
    }

    else
    {
      result = v6;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (!result)
  {
    v8 = 12;
LABEL_20:
    result = 0;
    *this = v8;
  }

  return result;
}

uint64_t HSUtil::Buffer::Buffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &off_108FA0;
  *(result + 8) = &off_108FF8;
  *(result + 16) = &off_109018;
  *(result + 24) = &off_109030;
  v3 = HSUtil::Buffer::_EmptyData;
  *(result + 32) = off_109048;
  *(result + 40) = v3;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) &= 0xFCu;
  if (!a2 && a3)
  {
    HSUtil::Buffer::Buffer();
  }

  if (a3)
  {
    *(result + 40) = a2;
    *(result + 48) = a3;
    *(result + 56) = a3;
  }

  return result;
}

HSUtil::Buffer *HSUtil::Buffer::Buffer(HSUtil::Buffer *this, size_t size, size_t a3)
{
  *this = &off_108FA0;
  *(this + 1) = &off_108FF8;
  *(this + 2) = &off_109018;
  *(this + 3) = &off_109030;
  v3 = HSUtil::Buffer::_EmptyData;
  *(this + 4) = off_109048;
  *(this + 5) = v3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) &= 0xFCu;
  if (a3 > size)
  {
    HSUtil::Buffer::Buffer();
  }

  if (!size)
  {
    goto LABEL_5;
  }

  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  *(this + 5) = v7;
  if (v7)
  {
    *(this + 64) |= 1u;
LABEL_5:
    *(this + 6) = a3;
    *(this + 7) = size;
  }

  return this;
}

__n128 HSUtil::Buffer::Buffer(uint64_t a1, uint64_t a2)
{
  *a1 = &off_108FA0;
  *(a1 + 8) = &off_108FF8;
  *(a1 + 16) = &off_109018;
  *(a1 + 24) = &off_109030;
  v2 = HSUtil::Buffer::_EmptyData;
  *(a1 + 32) = off_109048;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) &= 0xFCu;
  result = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = v2;
  *(a2 + 64) = 0;
  return result;
}

void HSUtil::Buffer::~Buffer(HSUtil::Buffer *this)
{
  *this = &off_108FA0;
  *(this + 1) = &off_108FF8;
  *(this + 2) = &off_109018;
  *(this + 3) = &off_109030;
  *(this + 4) = off_109048;
  if (*(this + 64))
  {
    free(*(this + 5));
    *(this + 5) = 0;
  }
}

__n128 HSUtil::Decoder::Decoder(HSUtil::Decoder *this, HSUtil::Decoder *a2, uint64_t a3, uint64_t a4)
{
  *this = 0;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = 0;
  v4 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 40);
  *(this + 40) = result;
  *(this + 7) = *(a2 + 7) + a3;
  *(this + 8) = a4;
  *(this + 9) = 0;
  return result;
}

uint64_t HSUtil::Decoder::_readBool(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (Token == 138)
  {
    v6 = 0;
    v5 = 1;
  }

  else if (Token == 139)
  {
    v5 = 1;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    *this = 2;
  }

  return v6 & v5;
}

void std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::Encoder::ContainerRecord>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HSUtil::Encoder::ContainerRecord>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t (***HSUtil::Encoder::_encodeContainerStop(uint64_t (***this)(void)))(void)
{
  v1 = this;
  v2 = this[8];
  v3 = *(v2 - 2);
  v16 = v3 + 1;
  v4 = *(v2 - 2);
  v5 = this[17] + ~v3 - v4;
  if (v4 == 4)
  {
    if (v5 < 0xFFFFFFFF)
    {
      LODWORD(__src) = ~v3 - v4 + *(this + 34);
      v6 = 4;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    if (v5 < 0xFFFF)
    {
      LOWORD(__src) = ~v3 - v4 + *(this + 68);
      v6 = 2;
      goto LABEL_11;
    }

LABEL_9:
    *this = 9;
    return this;
  }

  if (v4 != 1)
  {
    abort();
  }

  if (v5 >= 0xFF)
  {
    goto LABEL_9;
  }

  LOBYTE(__src) = ~v3 - v4 + *(this + 136);
  v6 = 1;
LABEL_11:
  this = HSUtil::Encoder::_write(this, &v16, &__src, v6);
  if (!*v1)
  {
    v7 = *(v1 + 56);
    v8 = *(v1 + 64) - 16;
    *(v1 + 64) = v8;
    if (v8 == v7 && *(v1 + 112) == 1)
    {
      *&__src = *(v1 + 136);
      DWORD2(__src) = 4;
      std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](v1 + 56, &__src);
      this = HSUtil::Encoder::_writeTokenValue32(v1, 0xEFu, 0);
      if (!*v1)
      {
        v9 = *(v1 + 88) - *(v1 + 80);
        if (v9)
        {
          v10 = 0;
          v11 = 0;
          v12 = v9 >> 4;
          while (1)
          {
            v13 = (*(v1 + 80) + 16 * v10);
            if (*v13 == 1)
            {
              *v13 = 2;
              v14 = HSUtil::CoderKey::_KeyForKeyID(v11);
              if (!v14)
              {
                HSUtil::Encoder::_encodeContainerStop();
              }

              v15 = v14;
              this = HSUtil::Encoder::_encodeUInt(v1, v10);
              if (*v1)
              {
                break;
              }

              this = HSUtil::Encoder::_encodeString(v1, *v15);
              if (*v1)
              {
                break;
              }
            }

            v10 = (v11 + 1);
            v11 = v10;
            if (v12 <= v10)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v1 + 112) = 0;
          return HSUtil::Encoder::_encodeContainerStop(v1);
        }
      }
    }
  }

  return this;
}

uint64_t HSUtil::CoderKey::_KeyForKeyID(HSUtil::CoderKey *this)
{
  v1 = this;
  v2 = HSUtil::CoderKey::keyState(this);
  os_unfair_lock_lock(v2);
  v3 = *&v2[2]._os_unfair_lock_opaque;
  if (v1 >= ((*&v2[4]._os_unfair_lock_opaque - v3) >> 3))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 8 * v1);
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t (***HSUtil::Encoder::_encodeUInt(HSUtil::Encoder *this, unint64_t a2))(void)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (HIDWORD(a2))
        {

          return HSUtil::Encoder::_writeTokenValue64(this, 0x83u, a2);
        }

        else
        {

          return HSUtil::Encoder::_writeTokenValue32(this, 0x82u, a2);
        }
      }

      else
      {

        return HSUtil::Encoder::_writeTokenValue16(this, 0x81u, a2);
      }
    }

    else
    {

      return HSUtil::Encoder::_writeTokenValue8(this, 0x80u, a2);
    }
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5 = a2;
    return HSUtil::Encoder::_write(this, this + 17, &v5, 1uLL);
  }
}

uint64_t (***HSUtil::Encoder::_encodeString(HSUtil::Encoder *this, const char *__s))(void)
{
  result = strlen(__s);
  if (result == -1)
  {
    *this = 14;
  }

  else
  {
    v5 = result + 1;
    if (result > 0xFE)
    {
      if (result > 0xFFFE)
      {
        result = HSUtil::Encoder::_writeTokenValue32(this, 0xE2u, v5);
      }

      else
      {
        result = HSUtil::Encoder::_writeTokenValue16(this, 0xE1u, v5);
      }
    }

    else
    {
      result = HSUtil::Encoder::_writeTokenValue8(this, 0xE0u, v5);
    }

    if (!*this)
    {

      return HSUtil::Encoder::_write(this, this + 17, __s, v5);
    }
  }

  return result;
}

uint64_t (***HSUtil::Encoder::_writeTokenValue64(unint64_t *a1, unsigned __int8 a2, uint64_t a3))(void)
{
  __src = a2;
  *v5 = a3;
  result = HSUtil::Encoder::_write(a1, a1 + 17, &__src, 1uLL);
  if (!*a1)
  {
    return HSUtil::Encoder::_write(a1, a1 + 17, v5, 8uLL);
  }

  return result;
}

double HSUtil::Decoder::_readMap@<D0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    goto LABEL_22;
  }

  if (Token == 235)
  {
    v18 = 0;
    HSUtil::Decoder::_read(this, a2, &v18, 4uLL);
    if (*this)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }

    if (*this)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (Token == 234)
    {
      v17 = 0;
      HSUtil::Decoder::_read(this, a2, &v17, 2uLL);
      v7 = *this;
      v8 = v17;
    }

    else
    {
      if (Token != 233)
      {
        v14 = 2;
        goto LABEL_21;
      }

      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      v7 = *this;
      v8 = __dst;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v7)
    {
      goto LABEL_22;
    }
  }

  v10 = *a2;
  v11 = *(this + 8);
  v12 = v11 >= *a2;
  v13 = v11 - *a2;
  if (!v12)
  {
    v14 = 6;
LABEL_21:
    *this = v14;
LABEL_22:
    *a3 = 5;
    *(a3 + 8) = a3;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    return result;
  }

  if (v13 < v9)
  {
    v14 = 13;
    goto LABEL_21;
  }

  *a2 = v10 + v9;
  *this = 0;
  HSUtil::Decoder::_loadKeyTableIfNeeded(this, a2);
  if (*this)
  {
    goto LABEL_22;
  }

  *&result = HSUtil::Decoder::Decoder(a3, this, v10, v9).n128_u64[0];
  return result;
}

uint64_t HSUtil::Decoder::Decoder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  HSUtil::Decoder::operator=(a1, a2);
  return a1;
}

void sub_D040(_Unwind_Exception *a1)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Decoder::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 == a2)
  {
    v5 = a1;
  }

  *(a1 + 8) = v5;
  *(a2 + 16) = 0;
  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100]((a1 + 16), v4);
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a1 + 32);
  *(a1 + 24) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);

    operator delete();
  }

  return result;
}

uint64_t std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t (***HSUtil::Encoder::_encodeInt(HSUtil::Encoder *this, unint64_t a2))(void)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 < 0xFFFFFFFFFFFFFFF0)
    {
      if (a2 < 0xFFFFFFFFFFFFFF80)
      {
        if (a2 < 0xFFFFFFFFFFFF8000)
        {
          if (a2 < 0xFFFFFFFF80000000)
          {

            return HSUtil::Encoder::_writeTokenValue64(this, 0x87u, a2);
          }

          else
          {

            return HSUtil::Encoder::_writeTokenValue32(this, 0x86u, a2);
          }
        }

        else
        {

          return HSUtil::Encoder::_writeTokenValue16(this, 0x85u, a2);
        }
      }

      else
      {

        return HSUtil::Encoder::_writeTokenValue8(this, 0x84u, a2);
      }
    }

    else
    {
      v6 = v2;
      v7 = v3;
      v5 = a2;
      return HSUtil::Encoder::_write(this, this + 17, &v5, 1uLL);
    }
  }

  else
  {

    return HSUtil::Encoder::_encodeUInt(this, a2);
  }
}

uint64_t HSUtil::Decoder::_readInt(HSUtil::Decoder *this, unint64_t *a2)
{
  LOBYTE(result) = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (result > 0x87u)
  {
    if (result - 240 < 0x10)
    {
      return result;
    }

    if (result == 136)
    {
      LODWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v5 = *this;
      v8 = *&__dst;
      if (*this)
      {
        v8 = 0.0;
      }

      if (fabsf(v8) <= 9.2234e18)
      {
        result = v8;
        goto LABEL_33;
      }

      goto LABEL_46;
    }

    if (result == 137)
    {
      __dst = 0.0;
      HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
      v5 = *this;
      if (*this || fabs(__dst) <= 9.22337204e18)
      {
        v6 = __dst;
        goto LABEL_30;
      }

LABEL_46:
      result = 0;
      *this = 2;
      return result;
    }

LABEL_41:
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (result > 0x83u)
  {
    if (result <= 0x85u)
    {
      if (result == 132)
      {
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v5 = *this;
        v6 = SLOBYTE(__dst);
      }

      else
      {
        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v5 = *this;
        v6 = SLOWORD(__dst);
      }

      goto LABEL_30;
    }

    if (result != 134)
    {
      if (result == 135)
      {
        __dst = 0.0;
        HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
        v5 = *this;
        v6 = *&__dst;
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v5 = *this;
    v7 = LODWORD(__dst);
    if (*this)
    {
      v7 = 0;
    }

    result = v7;
  }

  else
  {
    if (result <= 0x81u)
    {
      if (result == 128)
      {
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v5 = *this;
        v6 = LOBYTE(__dst);
LABEL_30:
        if (v5)
        {
          result = 0;
        }

        else
        {
          result = v6;
        }

        goto LABEL_33;
      }

      if (result == 129)
      {
        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v5 = *this;
        v6 = LOWORD(__dst);
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    if (result == 130)
    {
      LODWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v5 = *this;
      if (*this)
      {
        result = 0;
      }

      else
      {
        result = LODWORD(__dst);
      }
    }

    else
    {
      __dst = 0.0;
      HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
      v5 = *this;
      if (*this)
      {
        result = 0;
      }

      else
      {
        result = *&__dst;
      }

      if (result < 0)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_33:
  if (v5)
  {
    return 0;
  }

  return result;
}

float HSUtil::Decoder::_readFloat(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  v5 = 0.0;
  if (*this)
  {
    return v5;
  }

  if (Token > 0x84u)
  {
    if (Token > 0x86u)
    {
      switch(Token)
      {
        case 0x87u:
          __dst = 0.0;
          HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
          v6 = *this;
          v13 = *&__dst;
          goto LABEL_33;
        case 0x89u:
          __dst = 0.0;
          HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
          v6 = *this;
          v13 = __dst;
          goto LABEL_33;
        case 0x88u:
          LODWORD(__dst) = 0;
          HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
          v6 = *this;
          v8 = *&__dst;
          goto LABEL_34;
      }

      goto LABEL_37;
    }

    if (Token == 133)
    {
      LOWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
      v6 = *this;
      v7 = SLOWORD(__dst);
      goto LABEL_24;
    }

    if (Token != 134)
    {
LABEL_37:
      if ((Token & 0x80000000) == 0)
      {
        return Token;
      }

      *this = 2;
      return v5;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v10 = *this;
    v11 = LODWORD(__dst);
    if (*this)
    {
      v11 = 0;
    }

    v12 = v11;
LABEL_28:
    v8 = v12;
    if (!v10)
    {
      return v8;
    }

    return v5;
  }

  if (Token > 0x81u)
  {
    if (Token != 130)
    {
      if (Token == 131)
      {
        __dst = 0.0;
        HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
        v6 = *this;
        v13 = *&__dst;
        goto LABEL_33;
      }

      if (Token == 132)
      {
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v6 = *this;
        v7 = SLOBYTE(__dst);
LABEL_24:
        v13 = v7;
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    LODWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    v10 = *this;
    v14 = LODWORD(__dst);
    if (*this)
    {
      v14 = 0;
    }

    v12 = v14;
    goto LABEL_28;
  }

  if (Token == 128)
  {
    LOBYTE(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
    v6 = *this;
    LOBYTE(v9) = LOBYTE(__dst);
  }

  else
  {
    if (Token != 129)
    {
      goto LABEL_37;
    }

    LOWORD(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
    v6 = *this;
    LOWORD(v9) = LOWORD(__dst);
  }

  v13 = v9;
LABEL_33:
  v8 = v13;
LABEL_34:
  if (!v6)
  {
    return v8;
  }

  return v5;
}

void HSUtil::Encoder::encodeNSString(HSUtil::Encoder *this, NSString *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSString *)v3 UTF8String];
    if (!*this)
    {
      HSUtil::Encoder::_encodeString(this, v5);
    }
  }

  else if (!*this)
  {
    __src = -116;
    HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
  }
}

id HSUtil::Decoder::_readNSString(HSUtil::Decoder *this, unint64_t *a2)
{
  *&v11[0] = *a2;
  Token = HSUtil::Decoder::_readToken(this, v11);
  if (*this)
  {
    v5 = 0;
  }

  else if (Token == 140)
  {
    v6 = HSUtil::Decoder::_readToken(this, a2);
    v5 = 0;
    if (!*this && v6 != 140)
    {
      v5 = 0;
      *this = 2;
    }
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v7;
    v13 = v7;
    v11[0] = v7;
    v11[1] = v7;
    HSUtil::Decoder::_readStringByCopy(this, a2, v11);
    if (*this)
    {
      v5 = 0;
    }

    else
    {
      v8 = *(&v12 + 1);
      if (*(&v12 + 1))
      {
        v9 = v13;
        if (*(&v12 + 1) == HSUtil::Buffer::_EmptyData)
        {
          v8 = 0;
        }

        else
        {
          if ((v14 & 1) == 0)
          {
            __assert_rtn("_releaseData", "HSBuffer.h", 300, "_state.flags.free");
          }

          *(&v12 + 1) = HSUtil::Buffer::_EmptyData;
          v13 = 0uLL;
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v5 = [[NSString alloc] initWithBytesNoCopy:v8 length:v9 - 1 encoding:4 freeWhenDone:1];
      if (!v5)
      {
        free(v8);
      }
    }

    HSUtil::Buffer::~Buffer(v11);
  }

  return v5;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void __cxx_global_var_init_0()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_12_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key = HSUtil::CoderKey::New("settings", a2);
  }
}

void __cxx_global_var_init_13_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)110,(char)101,(char)101,(char)100,(char)115,(char)70,(char)108,(char)117,(char)115,(char)104>::Key = HSUtil::CoderKey::New("needsFlush", a2);
  }
}

void __cxx_global_var_init_14_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)80,(char)111,(char)105,(char)110,(char)116,(char)101,(char)114,(char)83,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSPointerSettingsEvent", a2);
  }
}

void __cxx_global_var_init_83(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)97,(char)118,(char)101,(char)102,(char)111,(char)114,(char)109,(char)73,(char)68>::Key = HSUtil::CoderKey::New("waveformID", a2);
  }
}

void __cxx_global_var_init_84(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key = HSUtil::CoderKey::New("strength", a2);
  }
}

void __cxx_global_var_init_85(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)97,(char)108,(char)101>::Key = HSUtil::CoderKey::New("scale", a2);
  }
}

void __cxx_global_var_init_86(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)68,(char)105,(char)108,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("timeDilation", a2);
  }
}

void __cxx_global_var_init_87(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)65,(char)99,(char)116,(char)117,(char)97,(char)116,(char)105,(char)111,(char)110,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTActuationEvent", a2);
  }
}

void __cxx_global_var_init_99(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key = HSUtil::CoderKey::New("key", a2);
  }
}

void __cxx_global_var_init_100(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)105,(char)109,(char)101,(char)114,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTimerEvent", a2);
  }
}

void __cxx_global_var_init_109(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)101,(char)113,(char)117,(char)101,(char)115,(char)116>::Key = HSUtil::CoderKey::New("request", a2);
  }
}

void __cxx_global_var_init_110(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)98,(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("subtype", a2);
  }
}

void __cxx_global_var_init_111(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)101,(char)108,(char)116,(char)97,(char)46,(char)102,(char)105,(char)114,(char)115,(char)116>::Key = HSUtil::CoderKey::New("delta.first", a2);
  }
}

void __cxx_global_var_init_112(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)101,(char)108,(char)116,(char)97,(char)46,(char)115,(char)101,(char)99,(char)111,(char)110,(char)100>::Key = HSUtil::CoderKey::New("delta.second", a2);
  }
}

void __cxx_global_var_init_113(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)114,(char)97,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)115>::Key = HSUtil::CoderKey::New("dragButtons", a2);
  }
}

void __cxx_global_var_init_114(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)108,(char)97,(char)115,(char)116,(char)70,(char)114,(char)97,(char)109,(char)101,(char)73,(char)110,(char)116,(char)101,(char)114,(char)118,(char)97,(char)108>::Key = HSUtil::CoderKey::New("lastFrameInterval", a2);
  }
}

void __cxx_global_var_init_115(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)82,(char)101,(char)113,(char)117,(char)101,(char)115,(char)116,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSMomentumRequestEvent", a2);
  }
}

void __cxx_global_var_init_144(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSMomentumStateEvent", a2);
  }
}

void __cxx_global_var_init_161(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)84,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("deviceType", a2);
  }
}

void __cxx_global_var_init_162(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)87,(char)105,(char)100,(char)116,(char)104>::Key = HSUtil::CoderKey::New("surfaceSizeWidth", a2);
  }
}

void __cxx_global_var_init_163(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key = HSUtil::CoderKey::New("surfaceSizeHeight", a2);
  }
}

void __cxx_global_var_init_164(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)84,(char)111,(char)112>::Key = HSUtil::CoderKey::New("surfaceCoordinatesTop", a2);
  }
}

void __cxx_global_var_init_165(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)82,(char)105,(char)103,(char)104,(char)116>::Key = HSUtil::CoderKey::New("surfaceCoordinatesRight", a2);
  }
}

void __cxx_global_var_init_166(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)66,(char)111,(char)116,(char)116,(char)111,(char)109>::Key = HSUtil::CoderKey::New("surfaceCoordinatesBottom", a2);
  }
}

void __cxx_global_var_init_167(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)76,(char)101,(char)102,(char)116>::Key = HSUtil::CoderKey::New("surfaceCoordinatesLeft", a2);
  }
}

void __cxx_global_var_init_168(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)65,(char)108,(char)103,(char)115,(char)67,(char)111,(char)110,(char)102,(char)105,(char)103,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("AlgsConfigEvent", a2);
  }
}

void sub_EF88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_F640(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TrackpadActuatorStage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id HSUtil::DynamicCast<HSTCancelEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTHostStateEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __cxx_global_var_init_1()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

HSPreferenceStage *HSTPipeline::CreatePipeline(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v61 = v7;
  v62 = v8;
  v58 = v9;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = +[NSAssertionHandler currentHandler];
    v46 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreatePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
    [v45 handleFailureInFunction:v46 file:@"HSTPipelineCreation.mm" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v62)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_26:
      v49 = +[NSAssertionHandler currentHandler];
      v50 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreatePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
      [v49 handleFailureInFunction:v50 file:@"HSTPipelineCreation.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"device"}];

      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  v47 = +[NSAssertionHandler currentHandler];
  v48 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreatePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v47 handleFailureInFunction:v48 file:@"HSTPipelineCreation.mm" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_4:
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_27:
  v51 = +[NSAssertionHandler currentHandler];
  v52 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreatePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v51 handleFailureInFunction:v52 file:@"HSTPipelineCreation.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"eventDispatcher"}];

LABEL_5:
  Service = MTDeviceGetService();
  v11 = Service;
  if (!Service)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTPipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreatePipeline();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MTDeviceGetService returned IO_OBJECT_NULL");
  }

  CFProperty = IORegistryEntryCreateCFProperty(Service, @"Sensor Surface Descriptor", 0, 0);
  if (!CFProperty || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "couldn't find 'Sensor Surface Descriptor' data property");
    goto LABEL_33;
  }

  if ([CFProperty length] <= 0xF)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "'Sensor Surface Descriptor' property too short");
LABEL_33:
  }

  v13 = [CFProperty bytes];
  v14 = v13[4];
  v15 = v13[6];
  v16 = v13[5];
  v17 = v13[7];

  v59 = [NSString stringWithFormat:@"%@.Preferences", v61];
  v18 = [HSPreferenceStage alloc];
  v19 = +[NSUserDefaults standardUserDefaults];
  v60 = [(HSPreferenceStage *)v18 initWithUserDefaults:v19 domain:v59];

  v20 = [HSTServerStage alloc];
  v21 = [NSString stringWithFormat:@"%@.server", v61];
  v22 = [(HSTServerStage *)v20 initWithName:v21 description:@"Touch pipeline" queue:v62];

  if (!v22)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTPipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreatePipeline();
    }
  }

  v23 = [[HSTBackboardBridge alloc] initWithQueue:v62];
  v24 = (10 * v14);
  v25 = (5 * v15);
  v26 = (5 * v17);
  v65[0] = (v25 << 33) | v24;
  v65[1] = (10 * v16) | (v26 << 33);
  IntProperty = HSTPipeline::getIntProperty(v11, @"Sensor Columns", v27);
  v65[2] = IntProperty | (HSTPipeline::getIntProperty(v11, @"Sensor Rows", v29) << 32);
  v56 = [[HSTFrameParser alloc] initWithConfig:v65];
  v55 = [[HSTRecordingManager alloc] initWithPlaybackQueue:v62];
  v57 = [[HSTPhoneFirmwareManager alloc] initWithDevice:a3];
  v64 = 0x4D200000000;
  v30 = [[HSTTipOffsetFilter alloc] initWithConfig:&v64];
  __b[0] = xmmword_D51B0;
  __b[1] = xmmword_D51C0;
  __b[2] = xmmword_D51D0;
  *&__b[3] = 0x3D449BA63D83126FLL;
  DWORD2(__b[3]) = 1050656375;
  *(&__b[3] + 12) = 0x13E00000320;
  v31 = [[HSTContactStabilizer alloc] initWithConfig:__b];
  v63 = ((v26 << 33) - 0xA00000000 * v16) | (2 * v25 - v24);
  v32 = [[HSTHIDEventGenerator alloc] initWithConfig:&v63];
  MTDeviceGetDeviceID();
  v33 = [[HSTCREventGenerator alloc] initWithService:v11 deviceID:0];
  if (v22)
  {
    v34 = v22;
  }

  else
  {
    v34 = v23;
  }

  v76 = v34;
  v35 = [NSArray arrayWithObjects:&v76 count:1];
  [(HSStage *)v60 setConsumers:v35];

  v75 = v23;
  v36 = [NSArray arrayWithObjects:&v75 count:1];
  [(HSStage *)v22 setConsumers:v36];

  if (v33)
  {
    v74 = v33;
    v37 = [NSArray arrayWithObjects:&v74 count:1];
    [(HSStage *)v23 setConsumers:v37];

    v73 = v56;
    v38 = [NSArray arrayWithObjects:&v73 count:1];
    [(HSStage *)v33 setConsumers:v38];
  }

  else
  {
    v72 = v56;
    v38 = [NSArray arrayWithObjects:&v72 count:1];
    [(HSStage *)v23 setConsumers:v38];
  }

  if (v57)
  {
    v71[0] = v55;
    v71[1] = v57;
    [NSArray arrayWithObjects:v71 count:2];
  }

  else
  {
    v70 = v55;
    [NSArray arrayWithObjects:&v70 count:1];
  }
  v39 = ;
  [(HSStage *)v56 setConsumers:v39];

  v69 = v30;
  v40 = [NSArray arrayWithObjects:&v69 count:1];
  [(HSRecordingPlaybackStage *)v55 setConsumers:v40];

  v68 = v31;
  v41 = [NSArray arrayWithObjects:&v68 count:1];
  [(HSStage *)v30 setConsumers:v41];

  v67 = v32;
  v42 = [NSArray arrayWithObjects:&v67 count:1];
  [(HSStage *)v31 setConsumers:v42];

  v66 = v58;
  v43 = [NSArray arrayWithObjects:&v66 count:1];
  [(HSStage *)v32 setConsumers:v43];

  [(HSPreferenceStage *)v60 restorePreferences];

  return v60;
}

id HSTPipeline::getIntProperty(HSTPipeline *this, const __CFString *a2, NSString *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [CFProperty longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [CFProperty longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [CFProperty longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __cxx_global_var_init_2()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

HSTBackboardBridge *HSTPipeline::CreateSAPipeline(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v64 = v8;
  v68 = v10;
  v73 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v53 = +[NSAssertionHandler currentHandler];
    v54 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateSAPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong, NSUInteger)"];
    [v53 handleFailureInFunction:v54 file:@"HSTSAPipelineCreation.mm" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"domain", 0}];

    if (v73)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_33:
      v57 = +[NSAssertionHandler currentHandler];
      v58 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateSAPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong, NSUInteger)"];
      [v57 handleFailureInFunction:v58 file:@"HSTSAPipelineCreation.mm" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"device"}];

      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }
  }

  v55 = +[NSAssertionHandler currentHandler];
  v56 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateSAPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong, NSUInteger)"];
  [v55 handleFailureInFunction:v56 file:@"HSTSAPipelineCreation.mm" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

  if (!a3)
  {
    goto LABEL_33;
  }

LABEL_4:
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_34:
  v59 = +[NSAssertionHandler currentHandler];
  v60 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateSAPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong, NSUInteger)"];
  [v59 handleFailureInFunction:v60 file:@"HSTSAPipelineCreation.mm" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"eventDispatcher"}];

LABEL_5:
  Service = MTDeviceGetService();
  v12 = Service;
  if (!Service)
  {
    memset(__b, 170, sizeof(__b));
    v62 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTSAPipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateSAPipeline(v62);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MTDeviceGetService returned IO_OBJECT_NULL");
  }

  CFProperty = IORegistryEntryCreateCFProperty(Service, @"Sensor Surface Descriptor", 0, 0);
  if (!CFProperty || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v61 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v61, "couldn't find 'Sensor Surface Descriptor' data property");
    goto LABEL_40;
  }

  if ([CFProperty length] <= 0xF)
  {
    v61 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v61, "'Sensor Surface Descriptor' property too short");
LABEL_40:
  }

  v14 = [CFProperty bytes];
  v66 = v14[4];
  v70 = v14[5];
  v71 = v14[6];
  v15 = v14[7];

  v69 = [[HSTBackboardBridge alloc] initWithQueue:v73];
  v65 = v15;
  v77[0] = 0;
  MTDeviceCopyDeviceUsagePairs();
  memset(entryID, 0, 64);
  v16 = 0;
  v17 = [v16 countByEnumeratingWithState:entryID objects:__b count:16];
  if (v17)
  {
    v18 = *entryID[2];
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*entryID[2] != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(entryID[1] + 8 * i);
        v21 = [v20 objectForKeyedSubscript:@"DeviceUsagePage"];
        v22 = [v20 objectForKeyedSubscript:@"DeviceUsage"];
        if ([v21 integerValue] == &dword_C + 1 && objc_msgSend(v22, "integerValue") == &stru_20)
        {

          entryID[0] = 0;
          IORegistryEntryGetRegistryEntryID(v12, entryID);
          LODWORD(v76) = 0;
          MTDeviceGetSensorSurfaceDimensions();
          *&__b[4] = 0xAAAAAAAAAAAAAAAALL;
          *&v24 = 0xAAAAAAAAAAAAAAAALL;
          *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
          __b[2] = v24;
          __b[3] = v24;
          __b[0] = v24;
          __b[1] = v24;
          *&__b[0] = HSTPipeline::getUIntProperty(v12, @"VendorID", v25);
          *(&__b[0] + 1) = HSTPipeline::getUIntProperty(v12, @"ProductID", v26);
          *&__b[1] = entryID[0];
          *(&__b[1] + 1) = MTDeviceGetMinDigitizerPressureValue();
          *&__b[2] = MTDeviceGetAccurateMaxDigitizerPressureValue();
          *(&__b[2] + 1) = MTDeviceGetExtendedMaxDigitizerPressureValue();
          *&__b[3] = MTDeviceGetMaxHoverHeightValue();
          BYTE8(__b[3]) = 0;
          *(&__b[3] + 12) = vmovn_s64(vcvtq_n_s64_f64(vdivq_f64(vcvtq_f64_u64(0), vdupq_n_s64(0x4059000000000000uLL)), 0x10uLL));
          v74 = [[HSTPencilVirtualService alloc] initWithConfig:__b withQueue:v73];
          goto LABEL_20;
        }
      }

      v17 = [v16 countByEnumeratingWithState:entryID objects:__b count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v74 = 0;
LABEL_20:
  v27 = (10 * v66);
  v28 = (5 * v71);
  v29 = (5 * v65);
  v77[0] = (v28 << 33) | v27;
  v77[1] = (10 * v70) | (v29 << 33);
  UIntProperty = HSTPipeline::getUIntProperty(v12, @"Sensor Columns", v23);
  v77[2] = UIntProperty | (HSTPipeline::getUIntProperty(v12, @"Sensor Rows", v31) << 32);
  v72 = [[HSTFrameParser alloc] initWithConfig:v77];
  entryID[0] = a5;
  memset(&entryID[1], 170, 24);
  entryID[1] = HSTPipeline::getUIntProperty(v12, @"Family ID", v32);
  v33 = IORegistryEntryCreateCFProperty(v12, @"SAHostFramework", kCFAllocatorDefault, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  entryID[2] = v34;
  entryID[3] = a3;
  v35 = [[HSTSensingAlgs alloc] initWithConfig:entryID];
  v36 = [[HSTRecordingManager alloc] initWithPlaybackQueue:v73];
  v37 = off_108CC8;
  if (v74)
  {
    v37 = off_108CC0;
  }

  v38 = [objc_alloc(*v37) initWithDevice:a3];
  v76 = 0x4D200000000;
  v39 = [[HSTTipOffsetFilter alloc] initWithConfig:&v76];
  __b[0] = xmmword_D51B0;
  __b[1] = xmmword_D51C0;
  __b[2] = xmmword_D51D0;
  *&__b[3] = 0x3D449BA63D83126FLL;
  DWORD2(__b[3]) = 1050656375;
  *(&__b[3] + 12) = 0x13E00000320;
  v40 = [[HSTContactStabilizer alloc] initWithConfig:__b];
  v75 = ((v29 << 33) - 0xA00000000 * v70) | (2 * v28 - v27);
  v41 = [[HSTHIDEventGenerator alloc] initWithConfig:&v75];
  v42 = objc_opt_new();
  v88 = v72;
  v43 = [NSArray arrayWithObjects:&v88 count:1];
  [(HSStage *)v69 setConsumers:v43];

  if (v74)
  {
    v87 = v74;
    v44 = [NSArray arrayWithObjects:&v87 count:1];
    [(HSStage *)v72 setConsumers:v44];

    v86 = v35;
    v45 = [NSArray arrayWithObjects:&v86 count:1];
    [(HSStage *)v74 setConsumers:v45];
  }

  else
  {
    v85 = v35;
    v45 = [NSArray arrayWithObjects:&v85 count:1];
    [(HSStage *)v72 setConsumers:v45];
  }

  v84[0] = v36;
  v84[1] = v38;
  v46 = [NSArray arrayWithObjects:v84 count:2];
  [(HSStage *)v35 setConsumers:v46];

  v83 = v39;
  v47 = [NSArray arrayWithObjects:&v83 count:1];
  [(HSRecordingPlaybackStage *)v36 setConsumers:v47];

  v82 = v40;
  v48 = [NSArray arrayWithObjects:&v82 count:1];
  [(HSStage *)v39 setConsumers:v48];

  v81 = v41;
  v49 = [NSArray arrayWithObjects:&v81 count:1];
  [(HSStage *)v40 setConsumers:v49];

  v80 = v42;
  v50 = [NSArray arrayWithObjects:&v80 count:1];
  [(HSStage *)v41 setConsumers:v50];

  v79 = v68;
  v51 = [NSArray arrayWithObjects:&v79 count:1];
  [v42 setConsumers:v51];

  return v69;
}

id HSTPipeline::getUIntProperty(HSTPipeline *this, const __CFString *a2, NSString *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [CFProperty unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __cxx_global_var_init_3()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_3(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void HSTPipeline::FirmwareUtil::SetReportWithData(HSTPipeline::FirmwareUtil *this, __MTDevice *a2, NSData *a3)
{
  v4 = a2;
  if (!this)
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void HSTPipeline::FirmwareUtil::SetReportWithData(MTDeviceRef _Nonnull, NSData * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"FirmwareUtil.mm" lineNumber:13 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v5 = [(__MTDevice *)v4 bytes];
  [(__MTDevice *)v4 length];
  v6 = MTDeviceSetReport();
  if (v6)
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::FirmwareUtil::SetReportWithData(v5, v6, v7);
    }
  }
}

id HSTPipeline::FirmwareUtil::GetReportData(HSTPipeline::FirmwareUtil *this, __MTDevice *a2, _DWORD *a3, int *a4)
{
  if (!this)
  {
    v8 = [NSAssertionHandler currentHandler:a3];
    v9 = [NSString stringWithUTF8String:"NSData * _Nullable HSTPipeline::FirmwareUtil::GetReportData(MTDeviceRef _Nonnull, NSInteger, IOReturn * _Nullable)"];
    [v8 handleFailureInFunction:v9 file:@"FirmwareUtil.mm" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v5 = [[NSMutableData alloc] initWithLength:512];
  [v5 bytes];
  [v5 length];
  *a3 = MTDeviceGetReport();
  [v5 length];
  if (*a3)
  {
    v6 = 0;
  }

  else
  {
    [v5 setLength:0];
    v6 = v5;
  }

  return v6;
}

id HSUtil::DynamicCast<HSPointerSettingsEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __cxx_global_var_init_4()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_4(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void sub_176B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void __cxx_global_var_init_5()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_6()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t PeppyIUnknown::QueryInterface(id **this, void *a2, CFUUIDBytes a3, void **a4)
{
  v4 = *&a3.byte8;
  v5 = *&a3.byte0;
  v8 = objc_autoreleasePoolPush();
  v9 = **this;
  *&v17.byte0 = a2;
  *&v17.byte8 = v5;
  v10 = CFUUIDCreateFromUUIDBytes(0, v17);
  v11 = CFAutorelease(v10);
  v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  if (CFEqual(v11, v12))
  {
    v13 = [v9 getPluginInterface];
  }

  else
  {
    v14 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Fu, 0xE2u, 0x2Au, 0xBFu, 0x68u, 0xB9u, 0x11u, 0xDBu, 0xA7u, 0x1Fu, 0, 0x16u, 0xCBu, 0xC1u, 0x10u, 0xF7u);
    if (!CFEqual(v11, v14))
    {
      v15 = 2147483652;
      goto LABEL_6;
    }

    v13 = [v9 getServiceInterface];
  }

  *v4 = v13;
  CFRetain(v9);
  v15 = 0;
LABEL_6:

  objc_autoreleasePoolPop(v8);
  return v15;
}

uint64_t PeppyIUnknown::AddRef(id **this, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = **this;
  v5 = CFGetRetainCount(v4);
  CFRetain(v4);

  objc_autoreleasePoolPop(v3);
  return (v5 + 1);
}

uint64_t PeppyIUnknown::Release(id **this, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = **this;
  v5 = CFGetRetainCount(v4);
  CFRelease(v4);

  objc_autoreleasePoolPop(v3);
  return (v5 - 1);
}

id PeppyIUnknown::Probe(id **this, void *a2, const __CFDictionary *a3, uint64_t a4, int *a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [**this _probeWithService:a3 properties:a2 outScore:a4];
  objc_autoreleasePoolPop(v9);
  return v10;
}

id PeppyIUnknown::Start(id **this, void *a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [**this _startWithService:a3 properties:a2];
  objc_autoreleasePoolPop(v6);
  return v7;
}

id PeppyIUnknown::Stop(id **this, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [**this _stop];
  objc_autoreleasePoolPop(v3);
  return v4;
}

id PeppyIUnknown::open(id **this, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [**this _openWithOptions:a2];
  objc_autoreleasePoolPop(v4);
  return v5;
}

void PeppyIUnknown::close(id **this, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  [**this _closeWithOptions:a2];

  objc_autoreleasePoolPop(v4);
}

uint64_t PeppyIUnknown::copyProperty(id **this, void *a2, const __CFString *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [**this _getPropertyForKey:a2];
  objc_autoreleasePoolPop(v5);
  return v6;
}

id PeppyIUnknown::setProperty(id **this, void *a2, const __CFString *a3, const void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [**this _setProperty:a3 forKey:a2];
  objc_autoreleasePoolPop(v7);
  return v8;
}

void PeppyIUnknown::setEventCallback(id **this, void *a2, void (*a3)(void *, void *, void *, __IOHIDEvent *, unsigned int), void *a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  [**this _setEventCallback:a2 target:a3 refcon:a4];

  objc_autoreleasePoolPop(v9);
}

void PeppyIUnknown::scheduleWithDispatchQueue(id **a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [**a1 _scheduleWithDispatchQueue:a2];

  objc_autoreleasePoolPop(v4);
}

void PeppyIUnknown::unscheduleFromDispatchQueue(id **a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [**a1 _unscheduleWithDispatchQueue:a2];

  objc_autoreleasePoolPop(v4);
}

id PeppyIUnknown::copyEvent(id **this, void *a2, uint64_t a3, __IOHIDEvent *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [**this _copyEventWithType:a2 matching:a3 options:a4];
  objc_autoreleasePoolPop(v8);
  return v9;
}

id PeppyIUnknown::setOutputEvent(id **this, void *a2, __IOHIDEvent *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [**this _setOutputEvent:a2];
  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_1C17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TrackpadAlgStage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id HSUtil::DynamicCast<HSTContactFrame>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTimerEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSMomentumRequestEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSMomentumStateEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSTSystemPowerEvent>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id HSUtil::DynamicCast<HSPointerFrame>(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    std::vector<HIDEvent * {__strong}>::__swap_out_circular_buffer(result, v13);
    v7 = v3[1];
    result = std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void sub_1D06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HIDEvent * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1E94C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1EBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_7()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_18_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_19_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_23_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)97,(char)108,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("algState", a2);
  }
}

void sub_22434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

void sub_23280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_8()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)110,(char)97,(char)98,(char)108,(char)101>::Key = HSUtil::CoderKey::New("enable", a2);
  }
}

void __cxx_global_var_init_10_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("verticalScrolling", a2);
  }
}

void __cxx_global_var_init_11_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("horizontalScrolling", a2);
  }
}

void __cxx_global_var_init_12_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("scrollMomentumEnabled", a2);
  }
}

void __cxx_global_var_init_13_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)122,(char)111,(char)111,(char)109,(char)84,(char)111,(char)103,(char)103,(char)108,(char)101>::Key = HSUtil::CoderKey::New("zoomToggle", a2);
  }
}

void __cxx_global_var_init_14_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)101,(char)110,(char)97,(char)98,(char)108,(char)101>::Key = HSUtil::CoderKey::New("self.enable", a2);
  }
}

void __cxx_global_var_init_15_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)118,(char)101,(char)114,(char)105,(char)116,(char)99,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("self.veritcalScrolling", a2);
  }
}

void __cxx_global_var_init_16_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("self.horizontalScrolling", a2);
  }
}

void __cxx_global_var_init_17_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("self.scrollMomentumEnabled", a2);
  }
}

void __cxx_global_var_init_18_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)122,(char)111,(char)111,(char)109,(char)84,(char)111,(char)103,(char)108,(char)101>::Key = HSUtil::CoderKey::New("self.zoomTogle", a2);
  }
}

void __cxx_global_var_init_205(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)97,(char)112,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("tapClick", a2);
  }
}

void __cxx_global_var_init_206(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)99,(char)111,(char)110,(char)100,(char)97,(char)114,(char)121,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("secondaryClick", a2);
  }
}

void __cxx_global_var_init_207(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)111,(char)105,(char)110,(char)116,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109>::Key = HSUtil::CoderKey::New("pointMomentum", a2);
  }
}

void __cxx_global_var_init_208(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("gestureScrollingEnabled", a2);
  }
}

void __cxx_global_var_init_209(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)122,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("zoom", a2);
  }
}

void __cxx_global_var_init_210(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)111,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("rotate", a2);
  }
}

void __cxx_global_var_init_211(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)104,(char)111,(char)119,(char)68,(char)101,(char)102,(char)105,(char)110,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("showDefinition", a2);
  }
}

void __cxx_global_var_init_212(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)69,(char)100,(char)103,(char)101,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key = HSUtil::CoderKey::New("notificationCenterEdgeSwipe2F", a2);
  }
}

void __cxx_global_var_init_213(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key = HSUtil::CoderKey::New("notificationCenterActive", a2);
  }
}

void __cxx_global_var_init_214(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)101,(char)115,(char)115,(char)105,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)68,(char)114,(char)97,(char)103>::Key = HSUtil::CoderKey::New("accessibilityDrag", a2);
  }
}

void __cxx_global_var_init_215(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key = HSUtil::CoderKey::New("horizontalSwipe3F", a2);
  }
}

void __cxx_global_var_init_216(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key = HSUtil::CoderKey::New("verticalSwipe3F", a2);
  }
}

void __cxx_global_var_init_217(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("horizontalSwipe4F", a2);
  }
}

void __cxx_global_var_init_218(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("verticalSwipe4F", a2);
  }
}

void __cxx_global_var_init_219(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("dockScale4F", a2);
  }
}

void __cxx_global_var_init_220(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)53,(char)70>::Key = HSUtil::CoderKey::New("dockScale5F", a2);
  }
}

void __cxx_global_var_init_221(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)108,(char)105,(char)99,(char)107,(char)83,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key = HSUtil::CoderKey::New("clickStrength", a2);
  }
}

void __cxx_global_var_init_222(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)113,(char)117,(char)105,(char)101,(char)116,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("quietClick", a2);
  }
}

void __cxx_global_var_init_223(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101,(char)83,(char)117,(char)112,(char)112,(char)114,(char)101,(char)115,(char)115,(char)101,(char)100>::Key = HSUtil::CoderKey::New("forceSuppressed", a2);
  }
}

void __cxx_global_var_init_224(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("screenZoom", a2);
  }
}

void __cxx_global_var_init_225(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)121,(char)109,(char)109,(char)101,(char)116,(char)114,(char)105,(char)99,(char)90,(char)111,(char)111,(char)109,(char)82,(char)111,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("symmetricZoomRotate", a2);
  }
}

void __cxx_global_var_init_226(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)116,(char)97,(char)112,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("self.tapClick", a2);
  }
}

void __cxx_global_var_init_227(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)101,(char)99,(char)111,(char)110,(char)100,(char)97,(char)114,(char)121,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("self.secondaryClick", a2);
  }
}

void __cxx_global_var_init_228(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)112,(char)111,(char)105,(char)110,(char)116,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109>::Key = HSUtil::CoderKey::New("self.pointMomentum", a2);
  }
}

void __cxx_global_var_init_229(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("self.gestureScrollingEnabled", a2);
  }
}

void __cxx_global_var_init_230(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)122,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("self.zoom", a2);
  }
}

void __cxx_global_var_init_231(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)114,(char)111,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("self.rotate", a2);
  }
}

void __cxx_global_var_init_232(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)104,(char)111,(char)119,(char)68,(char)101,(char)102,(char)105,(char)110,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("self.showDefinition", a2);
  }
}

void __cxx_global_var_init_233(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)69,(char)100,(char)103,(char)101,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key = HSUtil::CoderKey::New("self.notificationCenterEdgeSwipe2F", a2);
  }
}

void __cxx_global_var_init_234(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key = HSUtil::CoderKey::New("self.notificationCenterActive", a2);
  }
}

void __cxx_global_var_init_235(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)97,(char)99,(char)99,(char)101,(char)115,(char)115,(char)105,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)68,(char)114,(char)97,(char)103>::Key = HSUtil::CoderKey::New("self.accessibilityDrag", a2);
  }
}

void __cxx_global_var_init_236(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key = HSUtil::CoderKey::New("self.horizontalSwipe3F", a2);
  }
}

void __cxx_global_var_init_237(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key = HSUtil::CoderKey::New("self.verticalSwipe3F", a2);
  }
}

void __cxx_global_var_init_238(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("self.horizontalSwipe4F", a2);
  }
}

void __cxx_global_var_init_239(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("self.verticalSwipe4F", a2);
  }
}

void __cxx_global_var_init_240(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)52,(char)70>::Key = HSUtil::CoderKey::New("self.dockScale4F", a2);
  }
}

void __cxx_global_var_init_241(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)53,(char)70>::Key = HSUtil::CoderKey::New("self.dockScale5F", a2);
  }
}

void __cxx_global_var_init_242(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)99,(char)108,(char)105,(char)99,(char)107,(char)83,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key = HSUtil::CoderKey::New("self.clickStrength", a2);
  }
}

void __cxx_global_var_init_243(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)113,(char)117,(char)105,(char)101,(char)116,(char)67,(char)108,(char)105,(char)99,(char)107>::Key = HSUtil::CoderKey::New("self.quietClick", a2);
  }
}

void __cxx_global_var_init_244(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)102,(char)111,(char)114,(char)99,(char)101,(char)83,(char)117,(char)112,(char)112,(char)114,(char)101,(char)115,(char)115,(char)101,(char)100>::Key = HSUtil::CoderKey::New("self.forceSuppressed", a2);
  }
}

void __cxx_global_var_init_245(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("self.screenZoom", a2);
  }
}

void __cxx_global_var_init_246(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)121,(char)109,(char)109,(char)101,(char)116,(char)114,(char)105,(char)99,(char)90,(char)111,(char)111,(char)109,(char)82,(char)111,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("self.symmetricZoomRotate", a2);
  }
}

void __cxx_global_var_init_556(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)105,(char)115,(char)115,(char)105,(char)111,(char)110,(char)67,(char)111,(char)110,(char)116,(char)114,(char)111,(char)108>::Key = HSUtil::CoderKey::New("missionControl", a2);
  }
}

void __cxx_global_var_init_557(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key = HSUtil::CoderKey::New("horizontalSwipe2F", a2);
  }
}

void __cxx_global_var_init_558(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("buttonMode", a2);
  }
}

void __cxx_global_var_init_559(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("buttonDivision", a2);
  }
}

void __cxx_global_var_init_560(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)109,(char)105,(char)115,(char)115,(char)105,(char)111,(char)110,(char)67,(char)111,(char)110,(char)116,(char)114,(char)111,(char)108>::Key = HSUtil::CoderKey::New("self.missionControl", a2);
  }
}

void __cxx_global_var_init_561(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key = HSUtil::CoderKey::New("self.horizontalSwipe2F", a2);
  }
}

void __cxx_global_var_init_562(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("self.buttonMode", a2);
  }
}

void __cxx_global_var_init_563(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("self.buttonDivision", a2);
  }
}

void sub_248F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TrackpadHIDEventProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = &a21;
  std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

void std::vector<HIDEvent * {__strong}>::__assign_with_size[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<HIDEvent * {__strong}>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<HIDEvent * {__strong}>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*,HIDEvent * {__strong}*>(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*,HIDEvent * {__strong}*>(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void std::vector<HIDEvent * {__strong}>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<HIDEvent * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HIDEvent * {__strong}>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void **std::__copy_impl::operator()[abi:ne200100]<HIDEvent * {__strong}*,HIDEvent * {__strong}*,HIDEvent * {__strong}*>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void __cxx_global_var_init_9()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::DataMode>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::DataMode]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::DataMode]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostInterruptMode>(uint64_t a1)
{
  if (!a1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostInterruptMode]"];
    [v4 handleFailureInFunction:v5 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostInterruptMode]"];
    [v6 handleFailureInFunction:v7 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v1 = MTDeviceSetReport();
  if (v1)
  {
    v2 = v1;
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mach_error_string(v2);
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
    }
  }
}

void sub_29010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

id getIntProperty(__MTDevice *a1, NSString *a2)
{
  v2 = a2;
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, v2, 0, 0);
  if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [CFProperty longLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_296A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 8) = 2082;
  *(a3 + 10) = a2;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void __cxx_global_var_init_10()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_8_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_9_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_10_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_11_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_12_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_13_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_14_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_21_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)111,(char)119,(char)101,(char)114,(char)101,(char)100,(char)87,(char)104,(char)101,(char)110,(char)83,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)102,(char)102>::Key = HSUtil::CoderKey::New("poweredWhenScreenOff", a2);
  }
}

void __cxx_global_var_init_22_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("touchMode", a2);
  }
}

void __cxx_global_var_init_23_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)84,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("prevTouchMode", a2);
  }
}

void __cxx_global_var_init_24_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("screenOrientation", a2);
  }
}

void __cxx_global_var_init_25_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("stockholmState", a2);
  }
}

void __cxx_global_var_init_26_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("wirelessChargingState", a2);
  }
}

void __cxx_global_var_init_27_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)115,(char)98,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("usbChargingState", a2);
  }
}

void __cxx_global_var_init_28_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("stuckTouchDetectorState", a2);
  }
}

void __cxx_global_var_init_29_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("imagesEnabled", a2);
  }
}

void __cxx_global_var_init_30_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)101,(char)112,(char)111,(char)114,(char)116,(char)65,(char)108,(char)119,(char)97,(char)121,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("reportAlwaysEnabled", a2);
  }
}

void __cxx_global_var_init_183(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("wristState", a2);
  }
}

void __cxx_global_var_init_11()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t HSUtil::PortRight::port(HSUtil::PortRight *this)
{
  result = *(this + 2);
  if ((result - 1) >= 0xFFFFFFFE)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "attempt to access invalid mach port");
  }

  return result;
}

void sub_2D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HSTouchHIDService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t HSUtil::SendRight::reset(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 - 1 <= 0xFFFFFFFD)
  {
    v2 = this;
    this = mach_port_deallocate(mach_task_self_, v1);
    if (this)
    {
      HSUtil::SendRight::reset();
    }

    *(v2 + 8) = 0;
  }

  return this;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_2EC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HSPipeline::FindStage<HSTRecordingManager>(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__420;
  v8 = __Block_byref_object_dispose__421;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = ___ZN10HSPipeline9FindStageI19HSTRecordingManagerEEPT_P7HSStage_block_invoke;
  v3[3] = &unk_1094E8;
  v3[4] = &v4;
  HSPipeline::WalkStages(a1, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_30344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_30610(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(a1);
    v10 = *(v4 + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HSTouchHIDService *)v9 _handleSysdiagnoseStarted];
    }

    __cxa_end_catch();
    JUMPOUT(0x30508);
  }

  HSUtil::File::~File(va);
  _Unwind_Resume(a1);
}

HSUtil::File *HSUtil::File::File(HSUtil::File *this, int a2)
{
  v4[0] = &off_1093A0;
  v4[1] = &off_1093D0;
  v5 = a2;
  HSUtil::File::File(this, v4);
  HSUtil::FileDescriptor::~FileDescriptor(v4);
  return this;
}

void sub_3074C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::FileDescriptor::~FileDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::File::flush(HSUtil::File *this)
{
  v2 = HSUtil::FileDescriptor::fd((this + 16));
  result = ftruncate(v2, *(this + 5));
  if (result)
  {
    *(this + 48) = 0;
  }

  return result;
}

void HSAccessProvider::MoveFile(HSAccessProvider *this, NSString *a2, NSString *a3)
{
  v14 = this;
  v4 = a2;
  if (v14)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"void HSAccessProvider::MoveFile(NSString *__strong, NSString *__strong)"];
    [v9 handleFailureInFunction:v10 file:@"HSAccessProvider.h" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"srcPath"}];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"void HSAccessProvider::MoveFile(NSString *__strong, NSString *__strong)"];
  [v11 handleFailureInFunction:v12 file:@"HSAccessProvider.h" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"dstPath"}];

LABEL_3:
  v5 = xpc_connection_create("com.apple.hid.HIDSensingInternalSupport.HIDSensingAccessProvider", 0);
  v6 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "xpc_connection_create returned null");
  }

  xpc_connection_set_event_handler(v5, &__block_literal_global_2);
  xpc_connection_activate(v6);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "CommandKey", 2uLL);
  xpc_dictionary_set_string(v7, "SrcPathKey", [(HSAccessProvider *)v14 UTF8String]);
  xpc_dictionary_set_string(v7, "DstPathKey", [(NSString *)v4 UTF8String]);
  v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
  HSAccessProvider::validateSendMessageReply(v8);
}

void sub_311C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id HSTouchHIDServiceFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = objc_opt_new();
  CFRetain(v4);
  v5 = [v4 getPluginInterface];

  return v5;
}

uint64_t HSUtil::SendRight::SendRight(uint64_t a1, mach_port_name_t a2)
{
  *(a1 + 8) = a2;
  *a1 = &off_109360;
  if (a2 - 1 <= 0xFFFFFFFD)
  {
    v3 = mach_port_mod_refs(mach_task_self_, a2, 0, 1);
    if (v3)
    {
      if (v3 != 17)
      {
        HSUtil::SendRight::SendRight();
      }

      if (mach_port_mod_refs(mach_task_self_, *(a1 + 8), 4u, 1))
      {
        HSUtil::SendRight::SendRight();
      }
    }
  }

  return a1;
}

uint64_t HSUtil::FileDescriptor::read(HSUtil::FileDescriptor *this, uint64_t a2, void *a3, size_t a4)
{
  if ((*(this + 4) & 0x80000000) != 0)
  {
    return 9;
  }

  if (a2)
  {
    return 45;
  }

  while (read(*(this + 4), a3, a4) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  return 0;
}

uint64_t HSUtil::FileDescriptor::write(HSUtil::FileDescriptor *this, uint64_t a2, const void *__buf, size_t __nbyte)
{
  if ((*(this + 4) & 0x80000000) != 0)
  {
    return 9;
  }

  if (a2)
  {
    return 45;
  }

  while (write(*(this + 4), __buf, __nbyte) < 0)
  {
    if (*__error() != 4)
    {
      return *__error();
    }
  }

  return 0;
}

uint64_t HSUtil::File::File(uint64_t a1, uint64_t a2)
{
  *a1 = &off_109428;
  *(a1 + 8) = &off_109458;
  *(a1 + 16) = &off_1093A0;
  *(a1 + 24) = &off_1093D0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  HSUtil::File::_init(a1, a2);
  return a1;
}

uint64_t HSUtil::File::_init(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
    *(a1 + 32) = -1;
  }

  *(a1 + 32) = *(a2 + 16);
  *(a2 + 16) = -1;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v5;
  *v8.st_qspare = v5;
  v8.st_birthtimespec = v5;
  *&v8.st_size = v5;
  v8.st_mtimespec = v5;
  v8.st_ctimespec = v5;
  *&v8.st_uid = v5;
  v8.st_atimespec = v5;
  *&v8.st_dev = v5;
  v6 = HSUtil::FileDescriptor::fd((a1 + 16));
  result = fstat(v6, &v8);
  if (result || v8.st_size < 0)
  {
    *(a1 + 48) = 0;
  }

  else
  {
    *(a1 + 40) = v8.st_size;
  }

  return result;
}

uint64_t HSUtil::File::read(HSUtil::File *this, unint64_t a2, void *a3, size_t a4)
{
  v4 = *(this + 5);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (!v5)
  {
    return 34;
  }

  if (v6 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v6;
  }

  v11 = HSUtil::FileDescriptor::fd((this + 16));
  if (pread(v11, a3, v10, a2) < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t HSUtil::File::write(HSUtil::File *this, off_t a2, const void *a3, size_t a4)
{
  if (__CFADD__(a2, a4))
  {
    return 34;
  }

  v9 = HSUtil::FileDescriptor::fd((this + 16));
  if (pwrite(v9, a3, a4, a2) < 0)
  {
    return *__error();
  }

  result = 0;
  if (a4 + a2 > *(this + 5))
  {
    *(this + 5) = a4 + a2;
  }

  return result;
}

uint64_t HSUtil::FileDescriptor::fd(HSUtil::FileDescriptor *this)
{
  result = *(this + 4);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "attempt to access invalid file descriptor");
  }

  return result;
}

void HSUtil::FileDescriptor::~FileDescriptor(HSUtil::FileDescriptor *this)
{
  *this = &off_1093A0;
  *(this + 1) = &off_1093D0;
  v2 = *(this + 4);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(this + 4) = -1;
  }
}

void HSAccessProvider::validateSendMessageReply(void *a1)
{
  v1 = a1;
  object = v1;
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "xpc_connection_send_message_with_reply_sync returned null");
    goto LABEL_10;
  }

  if (xpc_get_type(v1) == &_xpc_type_error)
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "xpc_connection_send_message_with_reply_sync failed: ");
    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    v5 = std::string::append(&v8, string);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v3, &v9);
  }

  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "xpc_connection_send_message_with_reply_sync returned non-dictionary");
LABEL_10:
  }
}

void sub_31E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void HSUtil::File::~File(HSUtil::File *this)
{
  *this = &off_109428;
  *(this + 1) = &off_109458;
  HSUtil::File::flush(this);
  HSUtil::FileDescriptor::~FileDescriptor((this + 16));
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t __Block_byref_object_copy__420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL ___ZN10HSPipeline9FindStageI19HSTRecordingManagerEEPT_P7HSStage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 32) + 8) + 40) == 0;
  return v7;
}

void OUTLINED_FUNCTION_2_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __cxx_global_var_init_12()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_13()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

HSPreferenceStage *HSTPipeline::CreateMousePipeline(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v59 = v7;
  v60 = v8;
  v54 = v9;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = +[NSAssertionHandler currentHandler];
    v46 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateMousePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
    [v45 handleFailureInFunction:v46 file:@"HSMousePipelineCreation.mm" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"defaultsDomain"}];

    if (v8)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_25:
      v49 = +[NSAssertionHandler currentHandler];
      v50 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateMousePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
      [v49 handleFailureInFunction:v50 file:@"HSMousePipelineCreation.mm" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"device"}];

      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  v47 = +[NSAssertionHandler currentHandler];
  v48 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateMousePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v47 handleFailureInFunction:v48 file:@"HSMousePipelineCreation.mm" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_26:
  v51 = +[NSAssertionHandler currentHandler];
  v52 = [NSString stringWithUTF8String:"HSStage *HSTPipeline::CreateMousePipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong)"];
  [v51 handleFailureInFunction:v52 file:@"HSMousePipelineCreation.mm" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"eventDispatcher"}];

LABEL_5:
  MTDeviceGetDeviceID();
  Service = MTDeviceGetService();
  if (!Service)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSMousePipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateMousePipeline();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MTDeviceGetService returned IO_OBJECT_NULL");
  }

  if (MTDeviceGetSensorSurfaceDimensions())
  {
    v12 = 0x124F800000000;
    v13 = 50000;
  }

  else
  {
    v13 = 2863311524;
    v12 = 0xAAAAAAA400000000;
  }

  IntProperty = HSTPipeline::getIntProperty(Service, @"Sensor Columns", v11);
  v16 = HSTPipeline::getIntProperty(Service, @"Sensor Rows", v15);
  v58 = [NSString stringWithFormat:@"%@.Preferences", v59];
  v17 = [HSPreferenceStage alloc];
  v18 = +[NSUserDefaults standardUserDefaults];
  v55 = [(HSPreferenceStage *)v17 initWithUserDefaults:v18 domain:v58];

  if (!v58)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSMousePipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateMousePipeline();
    }
  }

  v19 = [HSTServerStage alloc];
  v20 = [NSString stringWithFormat:@"%@.server", v59];
  v21 = [(HSTServerStage *)v19 initWithName:v20 description:@"Mouse pipeline" queue:v8];

  if (!v21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSMousePipelineCreation.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::CreateMousePipeline();
    }
  }

  v22 = [[MouseBridge alloc] initWithService:MTDeviceGetService()];
  [(PointerBridge *)v22 setQueue:v8];
  v23 = v12;
  v57 = [[EmbeddedTrackpadFirmwareManager alloc] initWithDevice:a3];
  v24 = (((v16 - 1) + 0.68852459) * 514.0 * 10.0) << 32;
  v25 = (((IntProperty - 1) + 0.68852459) * 517.0 * 10.0) << 32;
  __b[0] = v25;
  __b[1] = v24;
  __b[2] = __PAIR64__(v16, IntProperty);
  v56 = [[HSTFrameParser alloc] initWithConfig:__b];
  v26 = [[HSTRecordingManager alloc] initWithPlaybackQueue:v60];
  v27 = _os_feature_enabled_impl();
  v28 = &off_108CD0;
  if (!v27)
  {
    v28 = off_108CB8;
  }

  v29 = [objc_alloc(*v28) initWithDeviceID:0 deviceType:2];
  [v29 setQueue:v60];
  v30 = objc_opt_new();
  ParserOptions = MTDeviceGetParserOptions();
  [(AlgsConfigEvent *)v30 setParserOptions:?];
  [(AlgsConfigEvent *)v30 setDeviceType:?];
  [(AlgsConfigEvent *)v30 setSurfaceSize:?];
  [(AlgsConfigEvent *)v30 setSurfaceCoordinates:v25, v24];
  v32 = [[TrackpadAlgStage alloc] initWithConfig:v30];
  [(TrackpadAlgStage *)v32 setQueue:v60];
  v33 = [[TrackpadMomentumGeneratorStage alloc] initWithQueue:v60];
  if (v21)
  {
    v34 = v21;
  }

  else
  {
    v34 = v22;
  }

  v69 = v34;
  v35 = [NSArray arrayWithObjects:&v69 count:1];
  [(HSStage *)v55 setConsumers:v35];

  v68 = v22;
  v36 = [NSArray arrayWithObjects:&v68 count:1];
  [(HSStage *)v21 setConsumers:v36];

  v67 = v57;
  v37 = [NSArray arrayWithObjects:&v67 count:1];
  [(HSStage *)v22 setConsumers:v37];

  v66 = v56;
  v38 = [NSArray arrayWithObjects:&v66 count:1];
  [(HSStage *)v57 setConsumers:v38];

  v65 = v26;
  v39 = [NSArray arrayWithObjects:&v65 count:1];
  [(HSStage *)v56 setConsumers:v39];

  v64 = v32;
  v40 = [NSArray arrayWithObjects:&v64 count:1];
  [(HSRecordingPlaybackStage *)v26 setConsumers:v40];

  v63 = v29;
  v41 = [NSArray arrayWithObjects:&v63 count:1];
  [(HSStage *)v32 setConsumers:v41];

  v62 = v33;
  v42 = [NSArray arrayWithObjects:&v62 count:1];
  [v29 setConsumers:v42];

  v61 = v54;
  v43 = [NSArray arrayWithObjects:&v61 count:1];
  [(HSStage *)v33 setConsumers:v43];

  return v55;
}

void __cxx_global_var_init_14()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_18_2(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_19_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void sub_34C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PointerBridge;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_15()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}