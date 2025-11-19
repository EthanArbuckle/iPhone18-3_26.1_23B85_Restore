uint64_t MTGestureConfig_::decode(MTGestureConfig_ *this, HSUtil::Decoder *a2)
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTGestureConfig_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTGestureConfig_::decode();
    }
  }

  else
  {
    if ((*(*this + 32))(this, &v8))
    {
      v5 = 1;
      goto LABEL_9;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTGestureConfig_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTGestureConfig_::decode();
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

void __cxx_global_var_init_43()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_18_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_19_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_20_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_21_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_22_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_23_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_24_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_25_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_26_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_27_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_28_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_29_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_30_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_31_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_32_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_33_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_34_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_35_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_36_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_37_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void __cxx_global_var_init_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)116,(char)72,(char)97,(char)110,(char)100,(char)83,(char)116,(char)97,(char)116,(char)115>::Key = HSUtil::CoderKey::New("mtHandStats", a2);
  }
}

void __cxx_global_var_init_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)116,(char)80,(char)97,(char)116,(char)104,(char)83,(char)116,(char)97,(char)116,(char)101,(char)115>::Key = HSUtil::CoderKey::New("mtPathStates", a2);
  }
}

void __cxx_global_var_init_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)112,(char)112,(char)111,(char)114,(char)116,(char)115,(char)70,(char)111,(char)114,(char)99,(char)101>::Key = HSUtil::CoderKey::New("supportsForce", a2);
  }
}

void __cxx_global_var_init_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101,(char)77,(char)97,(char)110,(char)97,(char)103,(char)101,(char)109,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("forceManagement", a2);
  }
}

void __cxx_global_var_init_51(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)67,(char)111,(char)110,(char)102,(char)105,(char)103>::Key = HSUtil::CoderKey::New("gestureConfig", a2);
  }
}

float MTSurfaceDimensions_::MTSurfaceDimensions_(uint64_t a1, float result, float a3, float a4, float a5, float a6, float a7)
{
  *a1 = off_109CB8;
  *(a1 + 8) = result;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = a7;
  if (a6 > 0.0 && a7 > 0.0)
  {
    result = a4 / a6;
    *(a1 + 24) = a4 / a6;
    *(a1 + 28) = a5 / a7;
  }

  return result;
}

float MTSurfaceDimensions_::minDistanceToEdge_mm(MTSurfaceDimensions_ *this, MTPoint a2, int a3, int a4)
{
  x = a2.x;
  v6 = *(this + 4);
  v5 = *(this + 5);
  if (v6 <= v5)
  {
    result = *(this + 5);
  }

  else
  {
    result = *(this + 4);
  }

  if (!a3)
  {
    if (!a4)
    {
      return result;
    }

    goto LABEL_12;
  }

  v8 = x / *(this + 6);
  v9 = (1.0 - v8) * v6;
  if (result > v9)
  {
    result = (1.0 - v8) * v6;
  }

  v10 = v6 * v8;
  if (v10 < result)
  {
    result = v10;
  }

  if (a4)
  {
LABEL_12:
    v11 = a2.y / *(this + 7);
    if ((v5 * v11) < result)
    {
      result = v5 * v11;
    }

    v12 = (1.0 - v11) * v5;
    if (result > v12)
    {
      return v12;
    }
  }

  return result;
}

float MTSurfaceDimensions_::convertPixelDeltaToMillimeters(MTSurfaceDimensions_ *this, float a2, int a3)
{
  v3 = 32;
  if (a3)
  {
    v3 = 36;
  }

  return *(this + v3) * a2;
}

void MTSurfaceDimensions_::convertPixelDeltaToMillimetersPerSecond(MTSurfaceDimensions_ *this, float a2, double a3)
{
  if (a3 == 0.0)
  {
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "[Error] ";
      v7 = 2080;
      v8 = "";
      v9 = 2080;
      v10 = "convertPixelDeltaToMillimetersPerSecond";
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected frame interval %g, setting velocity to 0.0", &v5, 0x2Au);
    }
  }
}

float32x2_t MTSurfaceDimensions_::convertPixelDeltasToMillimetersPerSecond(MTSurfaceDimensions_ *this, MTPoint a2, double a3)
{
  if (a3 == 0.0)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "[Error] ";
      v9 = 2080;
      v10 = "";
      v11 = 2080;
      v12 = "convertPixelDeltasToMillimetersPerSecond";
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected frame interval %g, setting velocity to 0.0", buf, 0x2Au);
    }

    return 0;
  }

  else
  {
    y = a2.y;
    return vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(a2, *(this + 32))), vdupq_lane_s64(*&a3, 0)));
  }
}

void __cxx_global_var_init_44()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void MTRestZoneIntegrator_::clearMotion(float32x2_t *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    MTRestZoneIntegrator_::clearThumbFingerEnvelope(this);
    this[29].i32[1] = 0;
  }

  this[33] = 0;
  this[34] = 0;
  this[37].i32[1] = 0;
  this[27] = 0;
  *this[20].f32 = 0u;
  *this[22].f32 = 0u;
  MTFingerToPathMap_::clearFingerPathMappings(this);
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    MTRestZoneIntegrator_::clearMotion(v2, v4);
  }
}

MTFingerToPathMap_ *MTRestZoneIntegrator_::MTRestZoneIntegrator_(MTFingerToPathMap_ *a1, uint64_t a2, __int32 a3, __int32 a4)
{
  MTFingerToPathMap_::MTFingerToPathMap_(a1, 0);
  *v8 = off_109CE8;
  v8[31] = a2;
  v8[32].i32[0] = a3;
  v8[32].i32[1] = a4;
  MTRestZoneIntegrator_::clearMotion(v8, 1);
  MTParameterFactory_::initRestZoneBalanceParameters(a1 + 108);
  return a1;
}

void MTRestZoneIntegrator_::~MTRestZoneIntegrator_(MTRestZoneIntegrator_ *this)
{
  MTFingerToPathMap_::~MTFingerToPathMap_(this);

  operator delete();
}

uint64_t MTRestZoneIntegrator_::clearThumbFingerEnvelope(float32x2_t *this)
{
  if (this[12].u8[6] <= 3u)
  {
    this[29].f32[1] = MTRestZoneIntegrator_::calcResidualBalance(this);
  }

  this[29].i32[0] = 0;
  this[28] = 0;
  this[30].i32[0] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;

  return MTFingerToPathMap_::clearMaxFingersTouching(this);
}

float MTRestZoneIntegrator_::calcResidualBalance(float32x2_t *this)
{
  v1 = vsqrt_f32(vadd_f32(this[28], this[28]));
  result = ((vsub_f32(vdup_lane_s32(v1, 1), v1).f32[0] - (this[15].f32[0] * sqrtf(this[27].f32[0]))) - (this[15].f32[1] * sqrtf(this[27].f32[1]))) - (this[16].f32[0] * sqrtf(this[30].f32[0]));
  if (result <= 0.0)
  {
    if (result <= this[19].f32[1])
    {
      return this[19].f32[1];
    }
  }

  else if (result >= this[17].f32[0])
  {
    return this[17].f32[0];
  }

  return result;
}

void MTRestZoneIntegrator_::translationSimilarityDotProduct(MTRestZoneIntegrator_ *this, MTPoint a2, MTPoint a3)
{
  y = a3.y;
  x = a3.x;
  hypotf(a2.x, a2.y);
  hypotf(x, y);
}

uint64_t MTRestZoneIntegrator_::extractMotionDeltas(MTRestZoneIntegrator_ *this, const MTPathStates_ *a2, MTParserPath_ *a3, MTParserPath_ *a4, int a5)
{
  v10 = MTParserPath_::stableAndMoved(a3);
  result = MTParserPath_::stableAndMoved(a4);
  *(this + 76) = 1065353216;
  *(this + 33) = 0;
  *(this + 34) = 0;
  var2 = a3->var3.var2;
  v14 = 0.0;
  if (var2)
  {
    v15 = a5 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || LODWORD(a3[1].var3.var0) == 0 || !v10;
  v18.i64[0] = 0;
  v12.i32[0] = 0;
  if (!v17)
  {
    v12.f32[0] = a3[3].var3.var13.y + 0.0;
    *(this + 66) = v12.i32[0];
    v18.f32[0] = a3[3].var3.var14.x + 0.0;
    *(this + 67) = v18.f32[0];
  }

  v19 = a4->var3.var2;
  if (var2 != v19 && v19 != 0)
  {
    v21 = vsub_f32(a4->var3.var6, a3->var3.var6);
    v22 = vmul_f32(v21, v21);
    *v22.i32 = sqrtf(*&v22.i32[1] + (v21.f32[0] * v21.f32[0]));
    v23 = 0.0;
    if (*v22.i32 > 0.0)
    {
      v24 = a5 ^ 1;
      v25 = vdiv_f32(v21, vdup_lane_s32(v22, 0));
      v42 = v25;
      if (!LODWORD(a4[1].var3.var0))
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0 && LODWORD(a3[1].var3.var0))
      {
        v26 = *&a4[3].var3.var13.y;
        y = a3[3].var3.var13.y;
        x = a3[3].var3.var14.x;
        if ((v10 | result))
        {
          v29.f32[0] = -x;
          v29.i32[1] = LODWORD(a3[3].var3.var14.x);
          v30.i32[1] = HIDWORD(*&a4[3].var3.var13.y);
          v30.f32[0] = -v26.y;
          v31 = vmla_n_f32(vrev64_s32(vmul_f32(v25, v30)), v25, v26.x);
          v32.i64[0] = *&a4[3].var3.var13.y;
          *&v32.u32[2] = v31;
          v12.i32[1] = v18.i32[0];
          *&v18.u32[2] = vmla_n_f32(vrev64_s32(vmul_f32(v25, v29)), v25, y);
          v33.i64[0] = vaddq_f32(v32, v12).u64[0];
          v33.i64[1] = vsubq_f32(v32, v18).i64[1];
          v34.i64[0] = 0x3F0000003F000000;
          v34.i64[1] = 0x3F0000003F000000;
          *(this + 264) = vmulq_f32(v33, v34);
        }

        v35 = v26.y;
        MTRestZoneIntegrator_::translationSimilarityDotProduct(result, *&y, v26);
        v23 = v36;
        if ((a3->var3.var3 - 3) <= 1 && (HIDWORD(a3[1].var3.var0) - 3) <= 1 && MTParserPath_::isFingerOrRestingContact(a3))
        {
          MTRestZoneIntegrator_::combineCentralFingerScaleRotate(this, a2, a3, &v42);
        }
      }
    }

    MTContact_getEllipseEccentricity();
    v38 = v37;
    result = MTContact_getEllipseEccentricity();
    v40 = v38 / v39;
    *(this + 76) = v40;
    if (v23 > 0.0)
    {
      v41 = v40;
      if (v41 < 1.2)
      {
        v14 = ((1.2 - v41) * 2.0 + 0.5) * v23;
      }
    }
  }

  *(this + 75) = v14;
  return result;
}

uint64_t MTRestZoneIntegrator_::combineCentralFingerScaleRotate(uint64_t this, const MTPathStates_ *a2, const MTParserPath_ *a3, const MTPoint *a4)
{
  v4 = *(this + 80) + 1;
  if (v4 < *(this + 88))
  {
    v8 = this;
    v9 = 0;
    v10 = this + 8;
    v11 = 0.0;
    do
    {
      if (v4 <= 0xF)
      {
        v12 = *(v10 + 4 * v4);
        if (v12 >= 1)
        {
          v13 = *(a2 + 35) + 568 * v12;
          if ((*(v13 + 36) - 3) <= 1 && (*(v13 + 132) - 3) <= 1)
          {
            this = MTParserPath_::isFingerContact(v13);
            if (this)
            {
              v11 = v11 + (((*(v13 + 428) * a4->y) + (*(v13 + 424) * a4->x)) - ((a3[3].var3.var14.x * a4->y) + (a3[3].var3.var13.y * a4->x)));
              ++v9;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 < *(v8 + 88));
    if (v9 > 0)
    {
      v14 = v11 / v9;
      v15 = *(v8 + 272);
      if (fabsf(v14) > fabsf(v15))
      {
        *(v8 + 272) = (v14 + v15) * 0.5;
      }
    }
  }

  return this;
}

void MTRestZoneIntegrator_::computeSpeedSimilarity(MTRestZoneIntegrator_ *this, const MTPathStates_ *a2)
{
  v4 = 0.0;
  v5 = 3.4028e38;
  for (i = 12; i != 32; i += 4)
  {
    v7 = *(this + i);
    if (v7 >= 1)
    {
      v8 = (*(a2 + 35) + 568 * v7);
      if ((v8->var3.var3 - 3) <= 1 && MTParserPath_::isFingerOrRestingContact(v8))
      {
        LODWORD(v9) = MTParserPath_::getAverageVelocity_mm_s(v8).u32[0];
        v11 = hypotf(v9, v10);
        if (v11 < v5)
        {
          v5 = v11;
        }

        if (v11 > v4)
        {
          v4 = v11;
        }
      }
    }
  }
}

float32x2_t MTRestZoneIntegrator_::decayMotionEnvelope(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, float *a5, float *a6, float a7)
{
  v12 = 1.0 - expf(-a7 / *(a1 + 132));
  *&v13 = (v12 * 0.0);
  v14 = 1.0 - v12;
  v15 = *&v13 + v14 * *a4;
  *a4 = v15;
  v16 = *&v13 + v14 * *a6;
  *a6 = v16;
  v17 = *&v13 + v14 * *a5;
  *a5 = v17;
  v18 = vdupq_lane_s64(v13, 0);
  *a2->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v18, vcvtq_f64_f32(*a2), v14)), vmlaq_n_f64(v18, vcvt_hight_f64_f32(*a2->f32), v14));
  result = vcvt_f32_f64(vmlaq_n_f64(v18, vcvtq_f64_f32(*a3), v14));
  *a3 = result;
  return result;
}

void MTRestZoneIntegrator_::accumulateMotionEnvelope(uint64_t a1, float32x4_t *a2, float32x2_t *a3, float *a4, float *a5, float *a6, double a7)
{
  v13 = 0.25;
  if (!*(a1 + 244))
  {
    v13 = 0.4;
  }

  v14 = powf(*(a1 + 296), v13);
  v15.i64[0] = *(a1 + 280);
  *&v15.u32[2] = vmul_f32(vmul_n_f32(*(a1 + 108), v14), *(a1 + 288));
  v16 = vmlaq_n_f32(*a2, v15, *&a7);
  *a2 = v16;
  *a3 = vmla_n_f32(*a3, vmul_f32(vadd_f32(*(a1 + 280), *(a1 + 280)), *&vdupq_lane_s32(*&a7, 0)), *(a1 + 300));
  v17 = *a4;
  v18 = sqrtf(COERCE_FLOAT(vmulq_f32(v16, v16).i32[1]) + (v16.f32[0] * v16.f32[0]));
  if (*a4 <= v18)
  {
    v17 = v18;
  }

  *a4 = v17;
  v19 = *a5;
  v20 = sqrtf((a3->f32[1] * a3->f32[1]) + (a3->f32[0] * a3->f32[0]));
  if (*a5 <= v20)
  {
    v19 = v20;
  }

  *a5 = v19;
  v21 = *a6;
  v22 = fabsf(a2->f32[3]);
  v23 = fabsf(a2->f32[2]);
  if (v22 <= v23)
  {
    if (v21 <= v23)
    {
      v21 = v23;
    }
  }

  else if (v21 <= v22)
  {
    v21 = v22;
  }

  *a6 = v21;
}

float MTRestZoneIntegrator_::adaptivePolarBalance(MTRestZoneIntegrator_ *this)
{
  v1 = -(*(this + 32) * sqrtf(*(this + 60)));
  if ((*(this + 244) & 1) != 0 || *(this + 101) >= 4u)
  {
    v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
    if (v2.f32[0] <= v2.f32[1])
    {
      v2.f32[0] = v2.f32[1];
    }

    v3 = v2.f32[0] - sqrtf(*(this + 56) + *(this + 56));
    if (v3 > 0.0)
    {
      v1 = v1 + v3;
    }

    return v1 + (*(this + 35) * 2.0);
  }

  else
  {
    v5 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
    if (v5.f32[0] <= v5.f32[1])
    {
      v5.f32[0] = v5.f32[1];
    }

    return (((v1 + (v5.f32[0] - sqrtf(*(this + 56) + *(this + 56)))) + (*(this + 29) * *(this + 59))) - (*(this + 30) * sqrtf(*(this + 54)))) - (*(this + 31) * sqrtf(*(this + 55)));
  }
}

BOOL MTRestZoneIntegrator_::isLockedOnTranslate(MTRestZoneIntegrator_ *this)
{
  v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
  if (v2.f32[0] <= v2.f32[1])
  {
    v2.f32[0] = v2.f32[1];
  }

  v3 = *(this + 39);
  return (v2.f32[0] - sqrtf(*(this + 56) + *(this + 56))) < v3 && MTRestZoneIntegrator_::adaptivePolarBalance(this) < v3 || MTRestZoneIntegrator_::adaptivePolarBalance(this) < (v3 + v3);
}

BOOL MTRestZoneIntegrator_::isLockedOnPolarSymmetric(MTRestZoneIntegrator_ *this)
{
  v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
  if (v2.f32[0] <= v2.f32[1])
  {
    v2.f32[0] = v2.f32[1];
  }

  v3 = *(this + 34);
  return (v2.f32[0] - sqrtf(*(this + 56) + *(this + 56))) > v3 && MTRestZoneIntegrator_::adaptivePolarBalance(this) > v3 || MTRestZoneIntegrator_::adaptivePolarBalance(this) > (v3 + v3);
}

BOOL MTRestZoneIntegrator_::shouldDoBiPolarIntegration(MTRestZoneIntegrator_ *this, char a2)
{
  v2 = 0.0;
  if ((a2 & 1) == 0)
  {
    v2 = *(this + 35);
  }

  return MTRestZoneIntegrator_::adaptivePolarBalance(this) > v2;
}

float MTRestZoneIntegrator_::translationDominance(MTRestZoneIntegrator_ *this, char a2)
{
  v3 = 0.0;
  v4 = 0.0;
  if ((a2 & 1) == 0)
  {
    v4 = *(this + 35);
  }

  if (MTRestZoneIntegrator_::adaptivePolarBalance(this) <= v4)
  {
    v5 = MTRestZoneIntegrator_::adaptivePolarBalance(this);
    v6 = *(this + 38);
    v3 = 1.0;
    if (v5 >= v6)
    {
      v3 = *(this + 36);
      v7 = *(this + 37);
      if (v5 <= v7)
      {
        return (1.0 - v3) * (v7 - v5) / (v7 - v6) + v3;
      }
    }
  }

  return v3;
}

void MTRestZoneIntegrator_::weighDominantMotions(float32x2_t *this, double a2)
{
  MTRestZoneIntegrator_::convertPixelDeltasTo_mm_s(this, a2);
  if (!MTRestZoneIntegrator_::isLockedOnPolarSymmetric(this) && !MTRestZoneIntegrator_::isLockedOnTranslate(this))
  {
    v12 = -1;
    HIDWORD(v4) = -1;
    v11 = -1;
    v10 = -1;
    v5 = this[10].i32[0];
    if (v5 == this[11].i32[0])
    {
      if (v5 == 1)
      {
        v6 = &this[22];
        v7 = &this[27] + 1;
      }

      else
      {
        v6 = &this[20];
        v7 = &this[27];
      }

      *&v4 = a2;
      MTRestZoneIntegrator_::accumulateMotionEnvelope(this, v6, &v11, v7, &v10, &v12, v4);
    }

    else
    {
      v8 = a2;
      *&v9 = MTRestZoneIntegrator_::decayMotionEnvelope(this, this + 24, this + 26, &this[28], &this[29], &this[28] + 1, v8);
      *&v9 = v8;
      MTRestZoneIntegrator_::accumulateMotionEnvelope(this, &this[24], this + 26, &this[28], &this[29], &this[28] + 1, v9);
      MTRestZoneIntegrator_::decayMotionEnvelope(this, this + 20, &v11, &this[27], &v10, &v12, v8);
      MTRestZoneIntegrator_::decayMotionEnvelope(this, this + 22, &v11, &this[27] + 1, &v10, &v12, v8);
    }
  }
}

void MTRestZoneIntegrator_::convertPixelDeltasTo_mm_s(MTRestZoneIntegrator_ *this, double a2)
{
  *(this + 70) = MTSurfaceDimensions_::convertPixelDeltasToMillimetersPerSecond(*(this + 31), *(this + 264), a2).u32[0];
  *(this + 71) = v4;
  MTSurfaceDimensions_::convertPixelDeltaToMillimetersPerSecond(*(this + 31), *(this + 68), a2);
  *(this + 72) = v5;
  MTSurfaceDimensions_::convertPixelDeltaToMillimetersPerSecond(*(this + 31), *(this + 69), a2);
  *(this + 73) = v6;
}

void MTRestZoneIntegrator_::integrateRestingZoneMotion(float32x2_t *this, const MTPathStates_ *a2, int a3)
{
  if (a3 <= 1 && this[12].u8[5] >= 2u)
  {
    MTRestZoneIntegrator_::clearThumbFingerEnvelope(this);
  }

  MTFingerToPathMap_::updateFingerPathMappings(this, a2);
  if (this[11].i32[1])
  {
    MTRestZoneIntegrator_::computeSpeedSimilarity(this, a2);
    this[37].i32[0] = v6;
    if (a3)
    {
      InnermostTouchingPath = MTFingerToPathMap_::getInnermostTouchingPath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap_::getOutermostTouchingPath(this, a2);
      v9 = this;
      v10 = a2;
      v11 = InnermostTouchingPath;
      v12 = 1;
    }

    else
    {
      InnermostInRangePath = MTFingerToPathMap_::getInnermostInRangePath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap_::getOutermostInRangePath(this, a2);
      v9 = this;
      v10 = a2;
      v11 = InnermostInRangePath;
      v12 = 0;
    }

    MTRestZoneIntegrator_::extractMotionDeltas(v9, v10, v11, OutermostTouchingPath, v12);
    v14 = *(a2 + 1) - *(a2 + 2);

    MTRestZoneIntegrator_::weighDominantMotions(this, v14);
  }

  else
  {

    MTRestZoneIntegrator_::clearMotion(this, 0);
  }
}

void __cxx_global_var_init_45()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

uint64_t MTForceBehavior_Configuration::addDefaultBehavior(MTForceBehavior_Configuration *this, MTForceBehavior_ *a2)
{
  v4 = *this + 24 * MTForceBehavior_::forceSourceFingerCount(a2);
  result = std::vector<MTForceBehavior_>::push_back[abi:ne200100](v4, a2);
  *(*(v4 + 8) - 136) = 1;
  *(this + 24) = 1;
  return result;
}

uint64_t std::vector<MTForceBehavior_>::push_back[abi:ne200100](uint64_t a1, const MTForceBehavior_ *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MTForceBehavior_>::__emplace_back_slow_path<MTForceBehavior_ const&>(a1, a2);
  }

  else
  {
    MTForceBehavior_::MTForceBehavior_(*(a1 + 8), a2);
    result = v3 + 144;
    *(a1 + 8) = v3 + 144;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t MTForceBehavior_Configuration::pushBehavior(MTForceBehavior_Configuration *this, MTForceBehavior_ *a2)
{
  v4 = MTForceBehavior_::forceSourceFingerCount(a2);
  result = std::vector<MTForceBehavior_>::push_back[abi:ne200100](*this + 24 * v4, a2);
  *(this + 24) = 1;
  return result;
}

void MTForceBehavior_Configuration::clearBehaviors(MTForceBehavior_Configuration *this)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = (*this + 24 * i);
    v4 = *v3;
    while (1)
    {
      v5 = v3[1];
      if (v4 == v5)
      {
        break;
      }

      if (v4 + 18 == v5)
      {
        v7 = v4;
      }

      else
      {
        v6 = v4;
        do
        {
          v7 = (v6 + 144);
          MTForceBehavior_::operator=(v6, v6 + 144);
          v8 = v6 + 288;
          v6 += 144;
        }

        while (v8 != v5);
      }

      std::vector<MTForceBehavior_>::__base_destruct_at_end[abi:ne200100](v3, v7);
    }
  }

  *(this + 24) = 1;
}

void MTForceBehavior_Configuration::clearNonDefaultBehaviors(MTForceBehavior_Configuration *this)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = (*this + 24 * i);
    v4 = *v3;
LABEL_3:
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 8) != 1)
      {
        if (v4 + 144 == v5)
        {
          v7 = v4;
        }

        else
        {
          v6 = v4;
          do
          {
            v7 = (v6 + 144);
            MTForceBehavior_::operator=(v6, v6 + 144);
            v8 = v6 + 288;
            v6 += 144;
          }

          while (v8 != v5);
        }

        std::vector<MTForceBehavior_>::__base_destruct_at_end[abi:ne200100](v3, v7);
        goto LABEL_3;
      }

      v4 += 144;
    }
  }

  *(this + 24) = 1;
}

uint64_t *MTForceBehavior_Configuration::firstFingerBehavior(MTForceBehavior_Configuration *this)
{
  v1 = *this;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) < 2)
  {
    return &MTForceBehavior_::Null;
  }

  v4 = v1 + 24;
  v2 = *(v1 + 24);
  v3 = *(v4 + 8);
  if (v3 == v2)
  {
    return &MTForceBehavior_::Null;
  }

  v5 = 0;
  for (result = v3 - 18; ; result -= 18)
  {
    v7 = *(result + 2);
    v8 = 1;
    if (v7 != 2 && (v5 & (v7 != 1)) == 0)
    {
      v8 = v5;
      if ((*(result + 4) & 0x20) != 0)
      {
        break;
      }
    }

    v5 = v8;
    if (result == v2)
    {
      return &MTForceBehavior_::Null;
    }
  }

  return result;
}

uint64_t *MTForceBehavior_Configuration::secondFingerBehavior(MTForceBehavior_Configuration *this)
{
  v1 = *this;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) < 2)
  {
    return &MTForceBehavior_::Null;
  }

  v4 = v1 + 24;
  v2 = *(v1 + 24);
  v3 = *(v4 + 8);
  if (v3 == v2)
  {
    return &MTForceBehavior_::Null;
  }

  v5 = 0;
  for (result = v3 - 18; ; result -= 18)
  {
    v7 = *(result + 2);
    v8 = 1;
    if (v7 != 2 && (v5 & (v7 != 1)) == 0)
    {
      v8 = v5;
      if ((*(result + 4) & 0x40) != 0)
      {
        break;
      }
    }

    v5 = v8;
    if (result == v2)
    {
      return &MTForceBehavior_::Null;
    }
  }

  return result;
}

uint64_t *MTForceBehavior_Configuration::collectiveBehavior(MTForceBehavior_Configuration *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) <= a2)
  {
    return &MTForceBehavior_::Null;
  }

  v4 = (*this + 24 * a2);
  v2 = *v4;
  v3 = v4[1];
  if (v3 == *v4)
  {
    return &MTForceBehavior_::Null;
  }

  v5 = 0;
  for (result = v3 - 18; ; result -= 18)
  {
    v7 = *(result + 2);
    v8 = 1;
    if (v7 != 2 && (v5 & (v7 != 1)) == 0)
    {
      v8 = v5;
      if ((*(result + 4) & 0x80) != 0)
      {
        break;
      }
    }

    v5 = v8;
    if (result == v2)
    {
      return &MTForceBehavior_::Null;
    }
  }

  return result;
}

void MTForceClickHistory_::MTForceClickHistory_(MTForceClickHistory_ *this, float a2)
{
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  MTForceClickHistory_::initHistory(this, a2);
}

void sub_6A238(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

float MTForceClickHistory_::initHistory(MTForceClickHistory_ *this, float a2)
{
  v3 = (this + 8);
  *(this + 2) = *(this + 1);
  v4 = (this + 32);
  *(this + 5) = *(this + 4);
  *this = 0;
  v8 = a2 * 350.0;
  v9 = a2 * 550.0;
  v5 = 3;
  do
  {
    std::vector<float>::push_back[abi:ne200100](v3, &v9);
    std::vector<float>::push_back[abi:ne200100](v4, &v8);
    --v5;
  }

  while (v5);
  v7 = v8;
  result = v9;
  *this = v9;
  *(this + 1) = v7;
  return result;
}

void MTForceClickHistory_::~MTForceClickHistory_(MTForceClickHistory_ *this)
{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  *(this + 5) = v3;
  *this = 0;
  if (v3)
  {
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

float MTForceClickHistory_::updateForceArray(float a1, uint64_t a2, const void **a3)
{
  v13 = a1;
  v4 = *a3;
  v5 = a3[1];
  if ((v5 - *a3) >= 0x75)
  {
    v6 = v5 - 4;
    do
    {
      if (v5 != v4 + 4)
      {
        memmove(v4, v4 + 4, v6 - v4);
        v4 = *a3;
      }

      v5 = v6;
      a3[1] = v6;
      v6 -= 4;
    }

    while ((v6 - v4 + 4) > 0x74);
  }

  std::vector<float>::push_back[abi:ne200100](a3, &v13);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v10, *a3, a3[1], (a3[1] - *a3) >> 2);
  v14 = -86;
  std::__sort<std::__less<float,float> &,float *>();
  if (((v11 - v10) >> 2) >= 3)
  {
    v7 = &v10[4 * (((v11 - v10) >> 2) / 2)];
    v8 = ((*(v7 - 1) + *v7) + v7[1]) / 3.0;
LABEL_9:
    v11 = v10;
    operator delete(v10);
    return v8;
  }

  v8 = 0.0;
  if (v10)
  {
    goto LABEL_9;
  }

  return v8;
}

void sub_6A45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTForceManagement_::MTForceManagement_(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_109C88;
  MTForceBehavior_::MTForceBehavior_((a1 + 40));
  std::vector<std::vector<MTForceBehavior_>>::vector[abi:ne200100]((a1 + 272), 6uLL);
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  MTForceThresholding_::MTForceThresholding_(v5, a1);
  std::vector<MTForceThresholding_>::vector[abi:ne200100]((a1 + 472), 0x20uLL);
  MTForceThresholding_::~MTForceThresholding_(v5);
  *(a1 + 512) = 0x100000001;
  MTForceClickHistory_::MTForceClickHistory_((a1 + 520), 1.0);
  *(a1 + 604) = 1;
  *(a1 + 605) = 0;
  *(a1 + 616) = objc_retainBlock(v3);
  MTParameterFactory_::initForceThresholdQualifiers(a1 + 304);
  MTParameterFactory_::initForceActuationQualifiers(a1 + 440);
  MTForceManagement_::clearState(a1, 0);

  return a1;
}

void sub_6A590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<MTForceThresholding_>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::vector<MTForceBehavior_>>::__destroy_vector::operator()[abi:ne200100](&a9);
  MTForceBehavior_::~MTForceBehavior_(v10);

  _Unwind_Resume(a1);
}

void MTForceManagement_::setDisableClickWaveformAdaptation(MTForceManagement_ *this, char a2)
{
  *(this + 468) = a2 ^ 1;
  v3 = 480;
  v4 = 31;
  do
  {
    MTForceThresholding_::setForceActuationQualifiers(*(this + 59) + v3, this + 440);
    v3 += 480;
    --v4;
  }

  while (v4);
}

MTForceManagement_ *MTForceManagement_::setDisableForceThresholdAdaptation(MTForceManagement_ *this, char a2)
{
  v2 = 0;
  v3 = (*(this + 59) + 4264);
  v4 = vdupq_n_s64(0x1FuLL);
  do
  {
    v5 = vdupq_n_s64(v2);
    v6 = vorrq_s8(v5, xmmword_D64F0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v4, v6)), 14), 14).u8[0])
    {
      *(v3 - 3360) = a2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v6)), 14), 14).i8[1])
    {
      *(v3 - 2880) = a2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_D64E0)))), 14).i8[2])
    {
      *(v3 - 2400) = a2;
      *(v3 - 1920) = a2;
    }

    v7 = vorrq_s8(v5, xmmword_D6910);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v7)), 14)).i32[1])
    {
      *(v3 - 1440) = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v7)), 14)).i8[5])
    {
      *(v3 - 960) = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_D6900))))).i8[6])
    {
      *(v3 - 480) = a2;
      *v3 = a2;
    }

    v8 = vorrq_s8(v5, xmmword_D68F0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v8)), 14), 14).u8[0])
    {
      v3[480] = a2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v8)), 14), 14).i8[1])
    {
      v3[960] = a2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_D68E0)))), 14).i8[2])
    {
      v3[1440] = a2;
      v3[1920] = a2;
    }

    v9 = vorrq_s8(v5, xmmword_D68D0);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v9)), 14)).i32[1])
    {
      v3[2400] = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v9)), 14)).i8[5])
    {
      v3[2880] = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_D68C0))))).i8[6])
    {
      v3[3360] = a2;
      v3[3840] = a2;
    }

    v2 += 16;
    v3 += 7680;
  }

  while (v2 != 32);
  return this;
}

void MTForceManagement_::setFirstStageClickPreference(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 512) != a2)
  {
    ClickThresholdMultiplier = MTForceThresholding_::getClickThresholdMultiplier(*(a1 + 472), a2);
    MTForceClickHistory_::initHistory((a1 + 520), ClickThresholdMultiplier);
  }

  *(a1 + 512) = a2;
  v5 = (*(a1 + 472) + 336);
  v6 = 32;
  do
  {
    *v5 = a2;
    v5 += 120;
    --v6;
  }

  while (v6);
}

uint64_t MTForceManagement_::setSecondStageClickPreference(uint64_t result, int a2)
{
  *(result + 516) = a2;
  v2 = (*(result + 472) + 340);
  v3 = 32;
  do
  {
    *v2 = a2;
    v2 += 120;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t MTForceManagement_::whichForceButtonActivated(MTForceManagement_ *this)
{
  if (*(this + 8) == 1 && (v1 = *(this + 59) + 480 * *(this + 66), *(v1 + 324) >= 1))
  {
    return MTForceBehavior_::whichButtonBehavior((v1 + 176));
  }

  else
  {
    return 0;
  }
}

BOOL MTForceManagement_::isForceButtonActivated(MTForceManagement_ *this)
{
  if (*(this + 8) == 1 && (v1 = *(this + 59) + 480 * *(this + 66), *(v1 + 324) >= 1))
  {
    return MTForceBehavior_::whichButtonBehavior((v1 + 176)) > 0;
  }

  else
  {
    return 0;
  }
}

double MTForceManagement_::constructForceEvent@<D0>(MTForceManagement_ *this@<X0>, const MTPathStates_ *a2@<X3>, int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  v7 = *(this + 59) + 480 * a3;
  *(this + 228) = *(v7 + 324);
  v8 = *(a2 + 35);
  v9 = v8 + 568 * a4;
  v10 = (v8 + 568 * a3);
  v11 = MTForceThresholding_::preReleaseProgress(v7, v9 + 288);
  v12 = MTForceThresholding_::preActivationProgress(v7, v9 + 288);
  v13 = MTForceThresholding_::postActivationProgress(v7, v9 + 288);
  v14 = *(this + 57);
  v15 = 0.0;
  if (v14 == *(this + 58) && *(v7 + 176) != 11)
  {
    v15 = *(this + 87);
  }

  v16 = (v11 * (1.0 - v15)) + (v15 * *(this + 63));
  v17 = (v12 * (1.0 - v15)) + (v15 * *(this + 64));
  *(this + 63) = v16;
  *(this + 64) = v17;
  v18 = (v13 * (1.0 - v15)) + (v15 * *(this + 65));
  *(this + 65) = v18;
  v19 = *(this + 46);
  v20 = v19 == 8 || v19 == 2;
  if (v20)
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = 8;
  }

  else
  {
    v22 = 2;
  }

  if (v14 <= 0)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  *(this + 46) = v23;
  v24 = *(this + 109);
  Release = MTForceThresholding_::thresholdForNextRelease(v7, (v9 + 288), v10);
  Activation = MTForceThresholding_::thresholdForNextActivation(v7, (v9 + 288), v10);
  v27 = *(this + 57);
  v28 = *(v7 + 432);
  v29 = 0.0;
  if (v27 < (*(v7 + 440) - v28) >> 2)
  {
    v29 = *(v28 + 4 * v27);
  }

  if (*(v7 + 324) == *(v7 + 328))
  {
    v30 = 0;
  }

  else if (v27 > *(this + 58))
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  v31 = (Activation / v24);
  if ((v27 + 1) >= *(v7 + 192))
  {
    v32 = 1.0;
  }

  else
  {
    v32 = v31;
  }

  if (v27 >= 1)
  {
    v33 = (Release / v24);
  }

  else
  {
    v33 = 0.0;
  }

  v34 = (v29 / v24);
  v35 = v17 - v16;
  v36 = *(v7 + 176);
  v37 = MTForceBehavior_::forceSourceFingerCount((v7 + 176));
  v38 = *(this + 57);
  if (v27 <= 0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v34;
  }

  v40 = fmax(fmin((*(v7 + 380) / *(v7 + 140)), 1.0), 0.0);
  *a5 = v23;
  *(a5 + 4) = v36;
  *(a5 + 8) = v37;
  *(a5 + 12) = v35;
  *(a5 + 16) = v38;
  *(a5 + 20) = v18;
  *&v40 = v40;
  *(a5 + 24) = v38;
  *(a5 + 28) = v30;
  *(a5 + 32) = v32;
  *(a5 + 40) = v39;
  result = *&v40;
  *(a5 + 48) = v33;
  *(a5 + 56) = *&v40;
  *(a5 + 64) = 0;
  return result;
}

void MTForceManagement_::updateStatusVariablesFromForceEvent(uint64_t a1, int a2, int *a3, MTPathStates_ *this)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = a3[4];
  v9 = *(a1 + 472) + 480 * a2;
  *&v10 = *(v9 + 344);
  *(&v10 + 1) = *(v9 + 360);
  *(a1 + 236) = v10;
  if (v6 == 2)
  {
    *(a1 + 220) = *(a1 + 188);
  }

  if (v8)
  {
    *(a1 + 188) = *(v9 + 332);
    *(a1 + 192) = *(v9 + 376);
    *(a1 + 200) = *(v9 + 416) - *(v9 + 408);
    *(a1 + 216) = *(v9 + 400);
  }

  if (*(a1 + 228) == 1 && !*(a1 + 232))
  {
    *(a1 + 208) = MTPathStates_::getPrePixelatedPositionFromPostPixelatedPosition(this, a2);
    *(a1 + 212) = v11;
  }

  if (v6 == 16)
  {
    if (*(a1 + 216) <= *(a1 + 424))
    {
      if (*(a1 + 188) == 1 && *(a1 + 220) == 1 && v7 == 1)
      {
        *(a1 + 524) = MTForceClickHistory_::updateForceArray(*(a1 + 192), a1, (a1 + 552));
      }
    }

    else
    {
      *(a1 + 520) = MTForceClickHistory_::updateForceArray(*(a1 + 192), a1, (a1 + 528));
    }
  }

  v13 = v5 == 11 && v8 != 0;
  *(a1 + 11) = v13;
}

void MTForceManagement_::appendForceStageEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_os_feature_enabled_impl())
  {
    mach_absolute_time();
    ForceStageEvent = IOHIDEventCreateForceStageEvent();
  }

  else
  {
    LODWORD(v5) = 0;
    ForceStageEvent = [HIDEvent vendorDefinedEvent:mach_absolute_time() usagePage:65280 usage:17 version:1 data:a3 length:48 options:v5, 0];
  }

  v6 = ForceStageEvent;
  if (ForceStageEvent)
  {
    IOHIDEventAppendEvent();
  }
}

void MTForceManagement_::appendThresholdInfo()
{
  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v1 = VendorDefinedEvent;
    IOHIDEventAppendEvent();

    CFRelease(v1);
  }
}

void MTForceManagement_::appendClickInfo()
{
  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v1 = VendorDefinedEvent;
    IOHIDEventAppendEvent();

    CFRelease(v1);
  }
}

BOOL MTForceManagement_::actuateForceAndHIDEvents(MTForceManagement_ *this, MTPathStates_ *a2, __IOHIDEvent *a3, char a4)
{
  if (*(this + 606))
  {
    if ((a4 & 1) == 0)
    {
      MTForceManagement_::actuateOnStageChanges(this, a2);
    }

    if (*(this + 8) == 1)
    {
      v7 = *(this + 66);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = MTForceManagement_::strongestProgressPathID(this, a2, 0);
      if (*(this + 66))
      {
LABEL_6:
        v8 = MTForceManagement_::strongestForcePathID(this, a2, 0);
        if ((v7 & 0x80000000) != 0)
        {
          return *(this + 9) != *(this + 10);
        }

        goto LABEL_13;
      }
    }

    v8 = 0;
    if ((v7 & 0x80000000) != 0)
    {
      return *(this + 9) != *(this + 10);
    }

LABEL_13:
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v28.var8.__cap_ = v11;
    *&v28.var9.__end_ = v11;
    *&v28.var7.__end_ = v11;
    *&v28.var8.__begin_ = v11;
    *&v28.var6.__begin_ = v11;
    *&v28.var6.__cap_ = v11;
    *&v28.var4 = v11;
    *&v28.var5.var1 = v11;
    *&v28.var0 = v11;
    MTForceBehavior_::MTForceBehavior_(&v28, (*(this + 59) + 480 * v7 + 176));
    memset(&v27[1], 255, 40);
    v26 = xmmword_D7598;
    v27[0] = unk_D75A8;
    MTForceManagement_::constructForceEvent(this, a2, v7, v8, &v26);
    *&v23[16] = v27[1];
    v24 = v27[2];
    v25 = *&v27[3];
    v22 = v26;
    *v23 = v27[0];
    MTForceManagement_::updateStatusVariablesFromForceEvent(this, v7, &v22, a2);
    if (*(this + 607) != 1 || (v13 = *(this + 145), v13 == 8) || v13 == 2)
    {
      v22 = *(v27 + 8);
      *v23 = *(&v27[1] + 8);
      *&v23[16] = *(&v27[2] + 8);
      MTForceManagement_::appendForceStageEvent(v12, a3, &v22);
    }

    if (*(this + 224) == 1)
    {
      if (*(this + 57) != *(this + 58))
      {
        v14 = *(a2 + 35) + 568 * v8;
        v15 = *(v14 + 328);
        v16 = *(v14 + 296);
        *&v22 = *(this + 236);
        *(&v22 + 1) = __PAIR64__(v16, v15);
        *v23 = *(this + 244);
        MTForceManagement_::appendThresholdInfo();
      }

      if (v26 == 16)
      {
        v17 = *(this + 47);
        v18 = *(this + 48);
        v19 = *(this + 25);
        v20 = *(this + 54);
        v21 = *(this + 55);
        *&v22 = *(&v26 + 4);
        *(&v22 + 1) = __PAIR64__(v18, v17);
        *v23 = v19;
        *&v23[4] = v20;
        *&v23[8] = v21;
        *&v23[12] = vrev64_s32(*(this + 520));
        MTForceManagement_::appendClickInfo();
      }
    }

    if (v28.var9.__begin_)
    {
      v28.var9.__end_ = v28.var9.__begin_;
      operator delete(v28.var9.__begin_);
    }

    if (v28.var8.__begin_)
    {
      v28.var8.__end_ = v28.var8.__begin_;
      operator delete(v28.var8.__begin_);
    }

    if (v28.var7.__begin_)
    {
      v28.var7.__end_ = v28.var7.__begin_;
      operator delete(v28.var7.__begin_);
    }

    if (v28.var6.__begin_)
    {
      v28.var6.__end_ = v28.var6.__begin_;
      operator delete(v28.var6.__begin_);
    }

    if (v28.var5.var0)
    {
      v28.var5.var1 = v28.var5.var0;
      operator delete(v28.var5.var0);
    }

    return *(this + 9) != *(this + 10);
  }

  v9 = MTLoggingPlugin();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    MTForceManagement_::actuateForceAndHIDEvents(v9);
  }

  return 0;
}

MTForceManagement_ *MTForceManagement_::actuateOnStageChanges(MTForceManagement_ *this, const MTPathStates_ *a2)
{
  v2 = this;
  *(this + 10) = *(this + 9);
  if (*(this + 8) != 1)
  {
    *(this + 9) = 0;
    return this;
  }

  v4 = *(this + 59) + 480 * *(this + 66);
  if (*(v4 + 324) < 1)
  {
    *(this + 9) = 0;
  }

  else
  {
    this = MTForceBehavior_::whichButtonBehavior((v4 + 176));
    v5 = *(v2 + 8);
    *(v2 + 9) = this != 0;
    if ((v5 & 1) == 0)
    {
      return this;
    }
  }

  v6 = *(v2 + 66);
  v7 = *(v2 + 59) + 480 * v6;
  v8 = *(v7 + 324);
  v9 = *(v7 + 328);
  if (v8 != v9)
  {
    v10 = *(v2 + 12);
    v11 = *(a2 + 1);
    v12 = *(v2 + 4);
    *(v2 + 12) = v8 < v9;
    if (v8 >= v9)
    {
      *(v2 + 4) = v11;

      return MTForceManagement_::actuateThresholderPath(v2, v6);
    }

    else
    {
      *(v2 + 3) = v11;
      this = MTForceBehavior_::operator=(v2 + 40, v7 + 176);
      if (!v10 || (v13 = v11 - v12, v13 > 0.2))
      {
        MTForceManagement_::actuateThresholderPath(v2, *(v2 + 66));
        this = MTForceThresholding_::actuationWaveformID((*(v2 + 59) + 480 * *(v2 + 66)));
        if (this)
        {
          v14 = *(a2 + 1);
          *(v2 + 4) = v14;
        }
      }
    }
  }

  return this;
}

uint64_t MTForceManagement_::strongestProgressPathID(MTForceManagement_ *this, const MTPathStates_ *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0xFFFFFFFFLL;
  do
  {
    v11 = (*(this + 59) + v6);
    if (*(v11 + 44) && MTForceThresholding_::fingersMatchBehavior(v11, a2, v7) && (!a3 || v7 && v7 != *(this + 66)))
    {
      v12 = (*(this + 59) + v6);
      v13 = (*(v12 + 45) >> 7) & 1;
      v14 = MTForceThresholding_::rescaleForceAsLadderProgress(v12, a2);
      v15 = v14 <= 0.0 || v13 <= v8;
      if (!v15 || (v14 > v9 ? (v16 = v13 < v8) : (v16 = 1), !v16))
      {
        v8 = v13;
        v10 = v7;
        v9 = v14;
      }
    }

    ++v7;
    v6 += 480;
  }

  while (v7 != 32);
  return v10;
}

uint64_t MTForceManagement_::strongestForcePathID(MTForceManagement_ *this, const MTPathStates_ *a2, int a3)
{
  v6 = 0;
  v7 = 0.0;
  v8 = 1;
  v9 = 480;
  v10 = 896;
  do
  {
    if (MTForceThresholding_::fingersMatchBehavior((*(this + 59) + v9), a2, v8) && (!a3 || v8 != *(this + 66)))
    {
      v11 = *(a2 + 35);
      v12 = *(v11 + v10);
      if (v12 <= v7)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }

      if (v12 > v7)
      {
        v7 = *(v11 + v10);
      }
    }

    ++v8;
    v9 += 480;
    v10 += 568;
  }

  while (v8 != 32);
  return v6;
}

uint64_t MTForceManagement_::actuateThresholderPath(MTForceManagement_ *this, int a2)
{
  result = *(this + 59) + 480 * a2;
  if (a2)
  {
    v4 = 500;
  }

  else
  {
    v4 = 496;
  }

  if (a2)
  {
    v5 = 508;
  }

  else
  {
    v5 = 504;
  }

  if (*(this + 468) == 1 && !*(result + 328) && *(result + 324) >= 1)
  {
    v6 = *(this + 114);
    v7 = (*(this + v4) - v6);
    v8 = v6;
    *&v7 = v7 / (1.0 - v8);
    *&v7 = (*(this + 111) * *&v7) + (1.0 - *(this + 111)) * *(result + 368);
    *&v7 = v8 + (1.0 - v8) * *&v7;
    *(this + v4) = LODWORD(v7);
    *&v7 = (*(this + 112) * *(this + v5)) + (1.0 - *(this + 112)) * *(result + 372);
    *(this + v5) = LODWORD(v7);
  }

  v9 = *(this + 77);
  if (v9)
  {
    v10 = 516;
    if (*(result + 324) < 2)
    {
      v10 = 512;
    }

    v11 = *(this + v10);
    v12 = MTForceThresholding_::actuationWaveformID(result);
    v13.n128_u32[0] = *(this + v4);
    v14.n128_u32[0] = *(this + v5);
    v15 = *(v9 + 16);

    return v15(v9, v12, v11, v13, v14);
  }

  return result;
}

MTForceManagement_ *MTForceManagement_::clearState(MTForceManagement_ *this, char a2)
{
  v2 = this;
  if ((a2 & 1) != 0 || *(this + 8) != 1 || (*(this + 608) & 1) == 0)
  {
    *(this + 9) = 0;
    MTForceManagement_::primeBasicBehaviors(this, 0);
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 31) = _Q0;
    *(v2 + 12) = 0;
    *(v2 + 4) = 0;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    MTForceBehavior_::operator=(v2 + 40, &MTForceBehavior_::Null);
    *(v2 + 48) = 0;
    *(v2 + 11) = 0;
    *(v2 + 23) = 0;
    *(v2 + 26) = 0;
    *(v2 + 27) = 0;
    *(v2 + 25) = 0;
    *(v2 + 224) = 0;
    *(v2 + 228) = 0u;
    *(v2 + 244) = 0u;
    *(v2 + 65) = 0;
    *(v2 + 468) = CFPreferencesGetAppBooleanValue(@"DisableClickWaveformAdaptation", @"com.apple.MultitouchSupport", 0) == 0;
    v8 = 31;
    v9 = 480;
    do
    {
      MTForceThresholding_::setForceActuationQualifiers(*(v2 + 59) + v9, v2 + 440);
      v9 += 480;
      --v8;
    }

    while (v8);
    this = CFPreferencesGetAppBooleanValue(@"DisableForceThresholdAdaptation", @"com.apple.MultitouchSupport", 0);
    v10 = 0;
    v11 = this != 0;
    v12 = (*(v2 + 59) + 4264);
    v13 = vdupq_n_s64(0x1FuLL);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vorrq_s8(v14, xmmword_D64F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v15)), 14), 14).u8[0])
      {
        *(v12 - 3360) = v11;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v15)), 14), 14).i8[1])
      {
        *(v12 - 2880) = v11;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v14, xmmword_D64E0)))), 14).i8[2])
      {
        *(v12 - 2400) = v11;
        *(v12 - 1920) = v11;
      }

      v16 = vorrq_s8(v14, xmmword_D6910);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v16)), 14)).i32[1])
      {
        *(v12 - 1440) = v11;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v16)), 14)).i8[5])
      {
        *(v12 - 960) = v11;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v14, xmmword_D6900))))).i8[6])
      {
        *(v12 - 480) = v11;
        *v12 = v11;
      }

      v17 = vorrq_s8(v14, xmmword_D68F0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v17)), 14), 14).u8[0])
      {
        v12[480] = v11;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v17)), 14), 14).i8[1])
      {
        v12[960] = v11;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v14, xmmword_D68E0)))), 14).i8[2])
      {
        v12[1440] = v11;
        v12[1920] = v11;
      }

      v18 = vorrq_s8(v14, xmmword_D68D0);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v18)), 14)).i32[1])
      {
        v12[2400] = v11;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v18)), 14)).i8[5])
      {
        v12[2880] = v11;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v14, xmmword_D68C0))))).i8[6])
      {
        v12[3360] = v11;
        v12[3840] = v11;
      }

      v10 += 16;
      v12 += 7680;
    }

    while (v10 != 32);
  }

  return this;
}

void MTForceManagement_::primeBasicBehaviors(MTForceManagement_ *this, int a2)
{
  v4 = 0;
  v5 = 0;
  *(this + 8) = 0;
  *(this + 66) = 0;
  do
  {
    MTForceThresholding_::setForceBehavior((*(this + 59) + v4), &MTForceBehavior_::Null, v5++);
    v4 += 480;
  }

  while (v5 != 32);
  v6 = MTForceBehavior_Configuration::collectiveBehavior((this + 272), a2);
  MTForceThresholding_::setForceBehavior(*(this + 59), v6, 0);
  FingerBehavior = MTForceBehavior_Configuration::firstFingerBehavior((this + 272));
  v8 = -31;
  v9 = 480;
  do
  {
    MTForceThresholding_::setForceBehavior((*(this + 59) + v9), FingerBehavior, v8 + 32);
    v9 += 480;
  }

  while (!__CFADD__(v8++, 1));
  *(this + 296) = 0;
}

void MTForceManagement_::analyzeAndManageStrongestForces(MTForceManagement_ *this, MTPathStates_ *a2)
{
  if (*(this + 8))
  {

    MTForceManagement_::managePostActivation(this, a2);
  }

  else
  {
    MTForceManagement_::primeBasicBehaviors(this, *(this + 144));

    MTForceManagement_::managePreActivation(this, a2);
  }
}

void MTForceManagement_::managePreActivation(MTForceManagement_ *this, MTPathStates_ *a2)
{
  MTForceManagement_::analyzeDistributedForces(this, a2);
  v4 = MTForceManagement_::strongestProgressPathID(this, a2, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(this + 59) + 480 * v4;
    if (*(v5 + 324) >= 1 && !*(v5 + 328) && *(a2 + 1) - *(this + 3) > *(this + 85))
    {

      MTForceManagement_::lockBehaviorsOnActivatedFinger(this, v4);
    }
  }
}

void MTForceManagement_::managePostActivation(MTForceManagement_ *this, MTPathStates_ *a2)
{
  if (*(*(this + 59) + 480 * *(this + 66) + 324))
  {

    MTForceManagement_::analyzeDistributedForces(this, a2);
  }

  else
  {
    MTForceManagement_::primeBasicBehaviors(this, *(this + 144));

    MTForceManagement_::managePreActivation(this, a2);
  }
}

MTForceThresholding_ *MTForceManagement_::analyzeDistributedForces(MTForceManagement_ *this, MTPathStates_ *a2)
{
  v4 = MTForceManagement_::strongestForcePathID(this, a2, 0);
  v5 = 0;
  v6 = *(this + 130);
  v7 = *(this + 131);
  v8 = 32;
  do
  {
    result = (*(this + 59) + v5);
    if (*(result + 44))
    {
      result = MTForceThresholding_::analyzeForceAndStage(result, a2, v4, (this + 40), *(this + 3), *(this + 4), *(this + 604), v7, v6);
    }

    v5 += 480;
    --v8;
  }

  while (v8);
  return result;
}

void MTForceManagement_::lockBehaviorsOnActivatedFinger(MTForceManagement_ *this, unsigned int a2)
{
  *(this + 8) = 1;
  *(this + 66) = a2;
  if (a2)
  {
    MTForceThresholding_::setForceBehavior(*(this + 59), &MTForceBehavior_::Null, 0);
    v4 = MTForceBehavior_Configuration::secondFingerBehavior((this + 272));
    v5 = 480;
    v6 = 480 * a2;
    v7 = 1;
    v8 = 14880;
    do
    {
      if (v6 != v5)
      {
        MTForceThresholding_::setForceBehavior((*(this + 59) + v5), v4, v7);
      }

      ++v7;
      v5 += 480;
      v8 -= 480;
    }

    while (v8);
  }

  else
  {
    v9 = -31;
    v10 = 480;
    do
    {
      MTForceThresholding_::setForceBehavior((*(this + 59) + v10), &MTForceBehavior_::Null, v9 + 32);
      v10 += 480;
    }

    while (!__CFADD__(v9++, 1));
  }
}

float MTForceManagement_::setOverrideBehavior(MTForceManagement_ *this, MTForceBehavior_ *a2)
{
  v4 = MTForceBehavior_::forceSourceFingerCount((*(this + 59) + 480 * *(this + 66) + 176));
  if (v4 == MTForceBehavior_::forceSourceFingerCount(a2) && *(this + 8) == 1 && a2->var0 != 0)
  {
    v7 = *(this + 66);
    v8 = (*(this + 59) + 480 * v7);

    return MTForceThresholding_::updateForceBehavior(v8, a2, v7);
  }

  return result;
}

void std::vector<MTForceBehavior_>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTForceBehavior_>>::destroy[abi:ne200100]<MTForceBehavior_,0>(a1, i))
  {
    i -= 18;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<MTForceBehavior_>>::destroy[abi:ne200100]<MTForceBehavior_,0>(uint64_t a1, void *a2)
{
  v3 = a2[15];
  if (v3)
  {
    a2[16] = v3;
    operator delete(v3);
  }

  v4 = a2[12];
  if (v4)
  {
    a2[13] = v4;
    operator delete(v4);
  }

  v5 = a2[9];
  if (v5)
  {
    a2[10] = v5;
    operator delete(v5);
  }

  v6 = a2[6];
  if (v6)
  {
    a2[7] = v6;
    operator delete(v6);
  }

  v7 = a2[3];
  if (v7)
  {
    a2[4] = v7;

    operator delete(v7);
  }
}

void MTForceBehavior_::MTForceBehavior_(MTForceBehavior_ *this, const MTForceBehavior_ *a2)
{
  v4 = *&a2->var0;
  this->var4 = a2->var4;
  *&this->var0 = v4;
  this->var5.var0 = 0;
  this->var5.var1 = 0;
  this->var5.var2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this->var5, a2->var5.var0, a2->var5.var1, a2->var5.var1 - a2->var5.var0);
  this->var6.__begin_ = 0;
  this->var6.__end_ = 0;
  this->var6.__cap_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this->var6, a2->var6.__begin_, a2->var6.__end_, a2->var6.__end_ - a2->var6.__begin_);
  this->var7.__begin_ = 0;
  this->var7.__end_ = 0;
  this->var7.__cap_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this->var7, a2->var7.__begin_, a2->var7.__end_, a2->var7.__end_ - a2->var7.__begin_);
  this->var8.__begin_ = 0;
  this->var8.__end_ = 0;
  this->var8.__cap_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this->var8, a2->var8.__begin_, a2->var8.__end_, a2->var8.__end_ - a2->var8.__begin_);
  this->var9.__begin_ = 0;
  this->var9.__end_ = 0;
  this->var9.__cap_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this->var9, a2->var9.__begin_, a2->var9.__end_, a2->var9.__end_ - a2->var9.__begin_);
}

void sub_6C0C0(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[7] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[4] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<MTForceBehavior_>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<MTForceBehavior_>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<MTForceBehavior_>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MTForceBehavior_>>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MTForceBehavior_>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MTForceBehavior_>::__emplace_back_slow_path<MTForceBehavior_ const&>(uint64_t a1, const MTForceBehavior_ *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceBehavior_>>(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  MTForceBehavior_::MTForceBehavior_((144 * v2), a2);
  v15 = 144 * v2 + 144;
  v7 = *(a1 + 8);
  v8 = (144 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTForceBehavior_>,MTForceBehavior_*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTForceBehavior_>::~__split_buffer(&v13);
  return v12;
}

void sub_6C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTForceBehavior_>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceBehavior_>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTForceBehavior_>,MTForceBehavior_*>(uint64_t a1, MTForceBehavior_ *a2, MTForceBehavior_ *a3, MTForceBehavior_ *this)
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
      MTForceBehavior_::MTForceBehavior_(this, v7++);
      this = ++v12;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTForceBehavior_>>::destroy[abi:ne200100]<MTForceBehavior_,0>(a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior_>,MTForceBehavior_*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior_>,MTForceBehavior_*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior_>,MTForceBehavior_*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior_>,MTForceBehavior_*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 18;
      std::allocator_traits<std::allocator<MTForceBehavior_>>::destroy[abi:ne200100]<MTForceBehavior_,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MTForceBehavior_>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTForceBehavior_>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTForceBehavior_>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 144;
    std::allocator_traits<std::allocator<MTForceBehavior_>>::destroy[abi:ne200100]<MTForceBehavior_,0>(v5, (v4 - 144));
  }
}

void *std::vector<MTForceThresholding_>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTForceThresholding_>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<MTForceThresholding_>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x88888888888889)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceThresholding_>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceThresholding_>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x88888888888889)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_var_init_46()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

uint64_t MTAppendGestureStartedToCollectionEvent()
{
  IOHIDEventGetIntegerValue();
  IOHIDEventSetIntegerValue();
  return 0;
}

uint64_t MTAppendGestureEndedToCollectionEvent()
{
  IOHIDEventGetIntegerValue();
  IOHIDEventSetIntegerValue();
  return 0;
}

uint64_t MTAppendRelativeMouseEvent()
{
  mach_absolute_time();
  MouseEvent = IOHIDEventCreateMouseEvent();
  if (MouseEvent)
  {
    v1 = MouseEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendMouseButtonEvent()
{
  mach_absolute_time();
  ButtonEvent = IOHIDEventCreateButtonEvent();
  if (ButtonEvent)
  {
    v1 = ButtonEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendVelocityEvent()
{
  mach_absolute_time();
  VelocityEvent = IOHIDEventCreateVelocityEvent();
  if (VelocityEvent)
  {
    v1 = VelocityEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendFluidSwipeEvent(double a1, float a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 27:
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateFluidTouchGestureEvent();
      break;
    case 23:
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateDockSwipeEvent();
      break;
    case 16:
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateNavigationSwipeEvent();
      break;
    default:
      return 0;
  }

  v6 = FluidTouchGestureEvent;
  if (FluidTouchGestureEvent)
  {
    IOHIDEventSetPhase();
    if (a2 != 0.0)
    {
      MTAppendVelocityEvent();
    }

    IOHIDEventAppendEvent();
    CFRelease(v6);
  }

  return 0;
}

uint64_t MTAppendSwipeEvent()
{
  mach_absolute_time();
  SwipeEvent = IOHIDEventCreateSwipeEvent();
  if (SwipeEvent)
  {
    v1 = SwipeEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendKeyboardEvent()
{
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  if (KeyboardEvent)
  {
    v1 = KeyboardEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendKeystrokeEvent()
{
  MTAppendKeyboardEvent();
  MTAppendKeyboardEvent();
  return 0;
}

uint64_t MTAppendModifierKeyEvent(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    MTAppendKeyboardEvent();
    if ((a2 & 1) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      MTAppendKeyboardEvent();
      if ((a2 & 8) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  MTAppendKeyboardEvent();
  if ((a2 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a2 & 8) != 0)
  {
LABEL_5:
    MTAppendKeyboardEvent();
  }

  return 0;
}

uint64_t MTAppendZoomToggleEvent()
{
  mach_absolute_time();
  ZoomToggleEvent = IOHIDEventCreateZoomToggleEvent();
  if (ZoomToggleEvent)
  {
    v1 = ZoomToggleEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendShowDefinitionEvent()
{
  mach_absolute_time();
  SymbolicHotKeyEvent = IOHIDEventCreateSymbolicHotKeyEvent();
  if (SymbolicHotKeyEvent)
  {
    v1 = SymbolicHotKeyEvent;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendBoundaryScrollEvent()
{
  mach_absolute_time();
  BoundaryScrollEvent = IOHIDEventCreateBoundaryScrollEvent();
  if (BoundaryScrollEvent)
  {
    v1 = BoundaryScrollEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendScrollEvent()
{
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  if (ScrollEvent)
  {
    v1 = ScrollEvent;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendMomentumEnableEvent()
{
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v1 = VendorDefinedEvent;
    IOHIDEventAppendEvent();
    CFRelease(v1);
  }

  return 0;
}

uint64_t MTAppendZoomRotateTranslateEvent(double a1, double a2, float a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  if (a3 <= 0.0)
  {
    v9 = a5 == 16 || a5 == 32;
    goto LABEL_11;
  }

  v9 = a5 == 16 || a5 == 32;
  if ((a7 / a3) == 0.0)
  {
LABEL_11:
    v10 = v9 & MTAppendZoomRotateTranslateEvent_rotate_in_progress;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v10 = 1;
  if (!a6)
  {
LABEL_7:
    v11 = v9 & MTAppendZoomRotateTranslateEvent_zoom_in_progress;
    goto LABEL_13;
  }

LABEL_12:
  v11 = 1;
LABEL_13:
  if (a9 | a8)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 & MTAppendZoomRotateTranslateEvent_translate_in_progress;
  }

  if (v10)
  {
    mach_absolute_time();
    RotationEvent = IOHIDEventCreateRotationEvent();
    if (RotationEvent)
    {
      v14 = RotationEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v14);
      MTAppendZoomRotateTranslateEvent_rotate_in_progress = !v9;
    }
  }

  if (v11)
  {
    mach_absolute_time();
    ScaleEvent = IOHIDEventCreateScaleEvent();
    if (ScaleEvent)
    {
      v16 = ScaleEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v16);
      MTAppendZoomRotateTranslateEvent_zoom_in_progress = !v9;
    }
  }

  if (v12)
  {
    mach_absolute_time();
    TranslationEvent = IOHIDEventCreateTranslationEvent();
    if (TranslationEvent)
    {
      v18 = TranslationEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v18);
      MTAppendZoomRotateTranslateEvent_translate_in_progress = !v9;
    }
  }

  return 0;
}

uint64_t HSPipeline::WalkStages(void *a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  _walkStages(v3, a1, a2);
  return std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::~__hash_table(v3);
}

uint64_t _walkStages(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::find<HSStage * {__strong}>(a1, &v18))
  {
    v6 = 1;
  }

  else
  {
    std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::__emplace_unique_key_args<HSStage * {__strong},HSStage * const {__strong}&>(a1, &v18);
    if (v5[2](v5, v18))
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v18 consumers];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = *v15;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            v12 = _walkStages(a1, v11, v5);

            if (!v12)
            {
              v6 = 0;
              goto LABEL_15;
            }

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v6 = 1;
LABEL_15:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void *std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::find<HSStage * {__strong}>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::__emplace_unique_key_args<HSStage * {__strong},HSStage * const {__strong}&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_6DD28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<HSStage * {__strong},void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<HSStage * {__strong},void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<HSStage * {__strong},void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<HSStage * {__strong},void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void __cxx_global_var_init_47()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void sub_6E2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

void sub_6E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

void sub_6E89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::~__hash_table(va);
  HSUtil::ObjectLock::~ObjectLock(va1);

  _Unwind_Resume(a1);
}

id *std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__emplace_unique_key_args<objc_object  {objcproto15HSStageObserver}*,objc_object  {objcproto15HSStageObserver} const {__weak}&>(void *a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = WeakRetained;
    if (*&v5 <= WeakRetained)
    {
      v8 = WeakRetained % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & WeakRetained;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == WeakRetained)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<objc_object  {objcproto15HSStageObserver}* {__weak}>::operator()[abi:ne200100](a1, v10 + 2, location))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_6EC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<objc_object  {objcproto15HSStageObserver}* {__weak},void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL std::equal_to<objc_object  {objcproto15HSStageObserver}* {__weak}>::operator()[abi:ne200100](int a1, id *location, id *a3)
{
  WeakRetained = objc_loadWeakRetained(location);
  v5 = objc_loadWeakRetained(a3);
  v6 = WeakRetained == v5;

  return v6;
}

uint64_t std::unique_ptr<std::__hash_node<objc_object  {objcproto15HSStageObserver}* {__weak},void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

id *std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__erase_unique<objc_object  {objcproto15HSStageObserver}*>(void *a1, id *a2)
{
  result = std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::find<objc_object  {objcproto15HSStageObserver}*>(a1, a2);
  if (result)
  {
    std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<objc_object  {objcproto15HSStageObserver}* {__weak},void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](v4);
    return (&dword_0 + 1);
  }

  return result;
}

id *std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::find<objc_object  {objcproto15HSStageObserver}*>(void *a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *&v5 <= WeakRetained ? WeakRetained % *&v5 : WeakRetained;
  }

  else
  {
    v8 = (*&v5 - 1) & WeakRetained;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = i[1];
    if (v11 == WeakRetained)
    {
      if (std::equal_to<objc_object  {objcproto15HSStageObserver}* {__weak}>::operator()[abi:ne200100](a1, i + 2, location))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::unordered_set<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<char const*,HSUtil::CoderKey const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringHash,HSUtil::CoderKey::KeyStringEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,HSUtil::CoderKey const*>,HSUtil::CoderKey::KeyStringEqual,HSUtil::CoderKey::KeyStringHash,true>,std::allocator<std::__hash_value_type<char const*,HSUtil::CoderKey const*>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__emplace_unique_key_args<objc_object  {objcproto15HSStageObserver}*,objc_object  {objcproto15HSStageObserver} const {__weak}&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<objc_object  {objcproto15HSStageObserver}* {__weak},HSUtil::ObjectHasher,std::equal_to<objc_object  {objcproto15HSStageObserver}*>,std::allocator<objc_object  {objcproto15HSStageObserver}*>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void __cxx_global_var_init_48()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_47(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_42(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void HSUtil::Encoder::encodeHSCodable(_DWORD *a1, void *a2)
{
  v3 = a2;
  if (!*a1)
  {
    v5 = v3;
    v4 = (*a1 != 0) | [v3 hsEncode:a1];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      *a1 = 10;
    }
  }
}

uint64_t HSUtil::EncoderBuf::buffer(HSUtil::EncoderBuf *this)
{
  if (*this || (HSUtil::Encoder::flush(this), *this))
  {
    v3[0] = &off_108FA0;
    v3[1] = &off_108FF8;
    v3[2] = &off_109018;
    v3[3] = &off_109030;
    v3[4] = off_109048;
    memset(&v3[5], 0, 25);
    if (*(this + 208))
    {
      free(*(this + 23));
    }

    *(this + 184) = *&v3[5];
    *(this + 193) = *(&v3[6] + 1);
    memset(&v3[6], 0, 17);
    v3[5] = HSUtil::Buffer::_EmptyData;
    HSUtil::Buffer::~Buffer(v3);
  }

  return this + 144;
}

id HSUtil::Buffer::getNSData(HSUtil::Buffer *a1)
{
  if (*(a1 + 5))
  {
    HSUtil::Buffer::_releaseData(a1);
    v2 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void HSUtil::EncoderBuf::~EncoderBuf(HSUtil::EncoderBuf *this)
{
  HSUtil::Buffer::~Buffer((this + 144));
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t HSUtil::Buffer::Buffer(uint64_t a1, void *a2)
{
  v3 = a2;
  HSUtil::Buffer::Buffer(a1, [v3 bytes], objc_msgSend(v3, "length"));

  return a1;
}

void HSUtil::Decoder::decodeHSCodable(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1 <= 4)
  {
    v4 = *(a1 + 72);
    HSUtil::Decoder::_readHSCodable(a1, &v4, v3);
    if (!*a1)
    {
      *(a1 + 72) = v4;
    }
  }
}

void HSUtil::DecoderBuf::~DecoderBuf(HSUtil::DecoderBuf *this)
{
  HSUtil::Buffer::~Buffer((this + 80));
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 2, 0);
}

id HSUtil::Decoder::decodeObject(HSUtil::Decoder *this)
{
  if (*this <= 4)
  {
    v6 = *(this + 9);
    v3 = HSUtil::Decoder::_readObject(this, &v6);
    v4 = v3;
    if (*this)
    {
      v1 = 0;
    }

    else
    {
      *(this + 9) = v6;
      v1 = v3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_6FC6C(_Unwind_Exception *a1)
{
  HSUtil::EncoderBuf::~EncoderBuf((v2 - 256));

  _Unwind_Resume(a1);
}

void HSUtil::Encoder::encodeObject(HSUtil::Encoder *this, objc_object *a2)
{
  v3 = a2;
  if (!v3 || (+[NSNull null], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    if (!*this)
    {
      __src = -116;
      HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HSUtil::Encoder::encodeNSNumber(this, v3);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        HSUtil::Encoder::encodeNSString(this, &v3->isa);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          HSUtil::Encoder::encodeNSData(this, v3);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            HSUtil::Encoder::encodeNSDictionary(this, v3);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              HSUtil::Encoder::encodeNSArray(this, v3);
            }

            else
            {
              HSUtil::Encoder::encodeObjectWithCallback(this, v3);
            }
          }
        }
      }
    }
  }
}

HSUtil::EncoderBuf *HSUtil::EncoderBuf::EncoderBuf(HSUtil::EncoderBuf *this)
{
  *this = 0;
  *(this + 1) = off_109D20;
  *(this + 2) = HSUtil::Encoder::EncodeObject;
  *(this + 4) = this + 8;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 97) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 18) = &off_108FA0;
  *(this + 19) = &off_108FF8;
  *(this + 20) = &off_109018;
  *(this + 21) = &off_109030;
  v2 = HSUtil::Buffer::_EmptyData;
  *(this + 22) = off_109048;
  *(this + 23) = v2;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 208) &= 0xFCu;
  HSUtil::Encoder::setWritable(this, this + 19);
  return this;
}

void sub_6FF70(_Unwind_Exception *a1)
{
  HSUtil::Buffer::~Buffer(v2);
  HSUtil::Encoder::~Encoder(v1);
  _Unwind_Resume(a1);
}

double HSUtil::Encoder::setWritable(HSUtil::Encoder *this, Writable *lpsrc)
{
  if (*this <= 4)
  {
    *(this + 5) = lpsrc;
    v4 = *(this + 10);
    *(this + 6) = v3;
    *(this + 8) = *(this + 7);
    if (v4)
    {
      *(this + 11) = v4;
      operator delete(v4);
    }

    *(this + 17) = 0;
    *this = 0;
    result = 0.0;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 112) = 0;
  }

  return result;
}

void HSUtil::Encoder::~Encoder(HSUtil::Encoder *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t HSUtil::Encoder::EncodeObject(HSUtil::Encoder *this, HSUtil::Encoder *a2, objc_object *a3)
{
  v4 = a2;
  HSUtil::Encoder::encodeObjectStart(this, HSUtil::Coder::_ObjectType, 4);
  v5 = [objc_opt_class() hsClassName];
  if (!*this)
  {
    HSUtil::Encoder::_encodeKey(this, v5);
  }

  HSUtil::Encoder::encodeHSCodable(this, v4);
  if (!*this)
  {
    HSUtil::Encoder::_encodeContainerStop(this);
  }

  return 1;
}

unint64_t *HSUtil::Encoder::encodeObjectStart(unint64_t *result, const HSUtil::CoderKey *a2, int a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeObjectStart(result, a3);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeKey(v4, a2);
    }
  }

  return result;
}

uint64_t (***HSUtil::Encoder::_encodeObjectStart(unint64_t *a1, int a2))(void)
{
  *&v5 = a1[17];
  DWORD2(v5) = a2;
  std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100]((a1 + 7), &v5);
  if (a2 == 4)
  {
    return HSUtil::Encoder::_writeTokenValue32(a1, 0xEEu, 0);
  }

  if (a2 == 2)
  {
    return HSUtil::Encoder::_writeTokenValue16(a1, 0xEDu, 0);
  }

  if (a2 != 1)
  {
    abort();
  }

  return HSUtil::Encoder::_writeTokenValue8(a1, 0xECu, 0);
}

uint64_t std::__function::__func<BOOL (*)(HSUtil::Encoder &,objc_object *),std::allocator<BOOL (*)(HSUtil::Encoder &,objc_object *)>,BOOL ()(HSUtil::Encoder &,objc_object *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_109D20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(HSUtil::Encoder &,objc_object *),std::allocator<BOOL (*)(HSUtil::Encoder &,objc_object *)>,BOOL ()(HSUtil::Encoder &,objc_object *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t HSUtil::Encoder::flush(uint64_t this)
{
  if (!*this)
  {
    v1 = this;
    this = (*(**(this + 40) + 8))(*(this + 40), *(this + 136));
    if (this)
    {
      v2 = 7;
    }

    else
    {
      v2 = 0;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
    }

    *v1 = v2;
  }

  return this;
}

void *HSUtil::Buffer::_releaseData(HSUtil::Buffer *this)
{
  result = *(this + 5);
  v3 = HSUtil::Buffer::_EmptyData;
  if (result == HSUtil::Buffer::_EmptyData)
  {
    return 0;
  }

  if ((*(this + 64) & 1) == 0)
  {
    HSUtil::Buffer::_releaseData();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v3;
  *(this + 64) = 0;
  return result;
}

uint64_t HSUtil::DecoderBuf::DecoderBuf(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  HSUtil::Buffer::Buffer(a1 + 80, a2);
  HSUtil::Decoder::setReadable(a1, (a1 + 80));
  return a1;
}

void sub_704EC(_Unwind_Exception *a1)
{
  HSUtil::Buffer::~Buffer((v1 + 80));
  HSUtil::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void *HSUtil::Decoder::setReadable(void *this, Readable *a2)
{
  if (*this <= 4)
  {
    v3 = this;
    v4 = this[1];
    if (v4 != this)
    {
      if (v4[2])
      {
        operator new();
      }

      std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 2, 0);
      HSUtil::Decoder::_copyKeys((v3 + 24), &v10);
      v5 = v10;
      v10 = 0uLL;
      v6 = *(v3 + 32);
      *(v3 + 24) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }

      *(v3 + 8) = v3;
    }

    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = a2;
    this = (*(*a2 + 8))(a2);
    if (this)
    {
      v8 = 6;
    }

    else
    {
      *(v3 + 64) = v7;
      *(v3 + 72) = 0;
      if (this)
      {
        v9 = this;
        *(v3 + 48) = (**this)(this);
        this = (*(*v9 + 8))(v9);
        v8 = 0;
        *(v3 + 64) = this;
      }

      else
      {
        v8 = 0;
      }
    }

    *v3 = v8;
  }

  return this;
}

void *HSUtil::Decoder::_copyKeys@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result)
  {
    v2 = result[1];
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    HSUtil::Decoder::_newKeys(a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_70754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

id HSUtil::Decoder::_readObject(HSUtil::Decoder *this, unint64_t *a2)
{
  v10 = *a2;
  v4 = HSUtil::Decoder::_readToken(this, &v10);
  if (*this)
  {
    v5 = 0;
    goto LABEL_36;
  }

  if (v4 > 0xE2u)
  {
    v7 = v4 + 23;
    if (v4 - 233 <= 0x16)
    {
      if (((1 << v7) & 0x7FFF80) != 0)
      {
        goto LABEL_11;
      }

      if (((1 << v7) & 7) != 0)
      {
        v6 = HSUtil::Decoder::_readNSDictionary(this, a2);
        goto LABEL_32;
      }

      if (((1 << v7) & 0x38) != 0)
      {
        v6 = HSUtil::Decoder::_readObjectWithCallback(this, a2);
        goto LABEL_32;
      }
    }

    if (v4 - 227 < 3)
    {
      v6 = HSUtil::Decoder::_readNSData(this, a2);
      goto LABEL_32;
    }

    if (v4 - 230 < 3)
    {
      v6 = HSUtil::Decoder::_readNSArray(this, a2);
      goto LABEL_32;
    }
  }

  else
  {
    if (v4 <= 0x88u)
    {
      if (v4 - 128 < 4)
      {
LABEL_31:
        v6 = [NSNumber numberWithUnsignedLongLong:HSUtil::Decoder::_readUIntStrict(this, a2)];
LABEL_32:
        if (*this)
        {
          v5 = 0;
        }

        else
        {
          v6 = v6;
          v5 = v6;
        }

        goto LABEL_35;
      }

      if (v4 - 132 >= 4)
      {
        if (v4 == 136)
        {
          HSUtil::Decoder::_readFloatStrict(this, a2);
          v6 = [NSNumber numberWithFloat:?];
          goto LABEL_32;
        }

        goto LABEL_30;
      }

LABEL_11:
      v6 = [NSNumber numberWithLongLong:HSUtil::Decoder::_readIntStrict(this, a2)];
      goto LABEL_32;
    }

    if (v4 > 0xDFu)
    {
      v6 = HSUtil::Decoder::_readNSString(this, a2);
      goto LABEL_32;
    }

    if (v4 - 138 < 2)
    {
      v6 = [NSNumber numberWithBool:HSUtil::Decoder::_readBool(this, a2)];
      goto LABEL_32;
    }

    if (v4 == 137)
    {
      HSUtil::Decoder::_readDoubleStrict(this, a2);
      v6 = [NSNumber numberWithDouble:?];
      goto LABEL_32;
    }

    if (v4 == 140)
    {
      Token = HSUtil::Decoder::_readToken(this, a2);
      v6 = 0;
      if (!*this && Token != 140)
      {
        v6 = 0;
        *this = 2;
      }

      goto LABEL_32;
    }
  }

LABEL_30:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  v6 = 0;
  v5 = 0;
  *this = 2;
LABEL_35:

LABEL_36:

  return v5;
}

uint64_t HSUtil::Decoder::_readUIntStrict(HSUtil::Decoder *this, unint64_t *a2)
{
  LOBYTE(result) = HSUtil::Decoder::_readToken(this, a2);
  if (!*this)
  {
    if (result <= 0x83u)
    {
      if (result <= 0x81u)
      {
        if (result != 128)
        {
          if (result == 129)
          {
            LOWORD(__dst) = 0;
            HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
            v5 = *this;
            v6 = __dst;
            goto LABEL_25;
          }

          goto LABEL_42;
        }

        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v5 = *this;
        v6 = __dst;
LABEL_25:
        if (v5)
        {
          result = 0;
        }

        else
        {
          result = v6;
        }

        goto LABEL_39;
      }

      if (result != 130)
      {
        if (result == 131)
        {
          __dst = 0;
          HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
          v5 = *this;
          v6 = __dst;
          goto LABEL_25;
        }

LABEL_42:
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_44;
      }

      LODWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v5 = *this;
      if (*this)
      {
        result = 0;
      }

      else
      {
        result = __dst;
      }

LABEL_39:
      if (!v5)
      {
        return result;
      }

      return 0;
    }

    if (result > 0x85u)
    {
      if (result == 134)
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
          result = __dst;
        }

        if ((result & 0x80000000) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (result != 135)
        {
          goto LABEL_42;
        }

        __dst = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
        v5 = *this;
        if (*this)
        {
          result = 0;
        }

        else
        {
          result = __dst;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (result != 132)
      {
        if (result != 133)
        {
          goto LABEL_42;
        }

        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v5 = *this;
        v7 = __dst;
        if (*this)
        {
          v7 = 0;
        }

        if ((v7 & 0x8000) != 0)
        {
          result = 0;
          *this = 2;
          return result;
        }

        result = v7;
        goto LABEL_39;
      }

      LOBYTE(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      v5 = *this;
      v8 = __dst;
      if (*this)
      {
        v8 = 0;
      }

      if ((v8 & 0x80) == 0)
      {
        result = v8;
        goto LABEL_39;
      }
    }

LABEL_44:
    result = 0;
    *this = 2;
    return result;
  }

  return 0;
}

uint64_t HSUtil::Decoder::_readIntStrict(HSUtil::Decoder *this, unint64_t *a2)
{
  LOBYTE(result) = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (result > 0x85u)
  {
    if (result - 240 < 0x10)
    {
      return result;
    }

    if (result == 134)
    {
      LODWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
      v7 = __dst;
      if (*this)
      {
        v7 = 0;
      }

      result = v7;
      if (*this)
      {
        return 0;
      }

      return result;
    }

    if (result == 135)
    {
      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
      v5 = *this;
      v6 = __dst;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (result <= 0x82u)
  {
    switch(result)
    {
      case 0x80u:
        LOBYTE(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
        v5 = *this;
        v6 = __dst;
        break;
      case 0x81u:
        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v5 = *this;
        v6 = __dst;
        break;
      case 0x82u:
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
      default:
LABEL_35:
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (result != 131)
  {
    if (result != 132)
    {
      if (result == 133)
      {
        LOWORD(__dst) = 0;
        HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
        v5 = *this;
        v6 = __dst;
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    LOBYTE(__dst) = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
    v5 = *this;
    v6 = __dst;
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

  __dst = 0;
  HSUtil::Decoder::_read(this, a2, &__dst, 8uLL);
  v5 = *this;
  if (*this)
  {
    result = 0;
  }

  else
  {
    result = __dst;
  }

  if (result < 0)
  {
LABEL_36:
    result = 0;
    *this = 2;
    return result;
  }

LABEL_33:
  if (v5)
  {
    return 0;
  }

  return result;
}

void *HSUtil::Decoder::_readFloatStrict(HSUtil::Decoder *this, unint64_t *a2)
{
  result = HSUtil::Decoder::_readToken(this, a2);
  if (!*this)
  {
    if (result == 136)
    {
      __dst = 0;
      return HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    }

    else
    {
      *this = 2;
    }
  }

  return result;
}

void *HSUtil::Decoder::_readDoubleStrict(HSUtil::Decoder *this, unint64_t *a2)
{
  result = HSUtil::Decoder::_readToken(this, a2);
  if (!*this)
  {
    if (result == 137)
    {
      v6 = 0;
      return HSUtil::Decoder::_read(this, a2, &v6, 8uLL);
    }

    else if (result == 136)
    {
      __dst = 0;
      return HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    }

    else
    {
      *this = 2;
    }
  }

  return result;
}

id HSUtil::Decoder::_readNSData(HSUtil::Decoder *this, unint64_t *a2)
{
  v8[0] = *a2;
  Token = HSUtil::Decoder::_readToken(this, v8);
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
    HSUtil::Decoder::_readDataByCopy(this, a2, v8);
    if (*this)
    {
      v5 = 0;
    }

    else
    {
      v5 = HSUtil::Buffer::getNSData(v8);
    }

    HSUtil::Buffer::~Buffer(v8);
  }

  return v5;
}

void sub_710FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

id HSUtil::Decoder::_readNSArray(HSUtil::Decoder *this, unint64_t *a2)
{
  v14[0] = *a2;
  Token = HSUtil::Decoder::_readToken(this, v14);
  if (*this)
  {
    v5 = 0;
  }

  else if (Token == 140)
  {
    v7 = HSUtil::Decoder::_readToken(this, a2);
    v5 = 0;
    if (!*this && v7 != 140)
    {
      v5 = 0;
      *this = 2;
    }
  }

  else
  {
    HSUtil::Decoder::_readArray(this, a2, v14);
    if (*this)
    {
      v5 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      v13 = 0;
      while (1)
      {
        v9 = HSUtil::Decoder::_readObject(v14, &v13);
        v10 = v9;
        v11 = v14[0];
        *this = v14[0];
        if (v11)
        {
          break;
        }

        if (!v9)
        {
          v10 = +[NSNull null];
        }

        [v8 addObject:v10];
      }

      if (v11 == 3)
      {
        *this = 0;

        v5 = v8;
      }

      else
      {

        v5 = 0;
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v12 = v15;
    v15 = 0;
    if (v12)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v12);
      operator delete();
    }
  }

  return v5;
}

void sub_71288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

id HSUtil::Decoder::_readNSDictionary(HSUtil::Decoder *this, unint64_t *a2)
{
  v18[0] = *a2;
  Token = HSUtil::Decoder::_readToken(this, v18);
  if (*this)
  {
    v5 = 0;
  }

  else if (Token == 140)
  {
    v7 = HSUtil::Decoder::_readToken(this, a2);
    v5 = 0;
    if (!*this && v7 != 140)
    {
      v5 = 0;
      *this = 2;
    }
  }

  else
  {
    HSUtil::Decoder::_readMap(this, a2, v18);
    if (*this)
    {
      v5 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      v17 = 0;
      while (1)
      {
        v9 = HSUtil::Decoder::_readKey(v18, &v17);
        v10 = v18[0];
        *this = v18[0];
        if (v10)
        {
          break;
        }

        v11 = v9;
        v12 = HSUtil::Decoder::_readObject(v18, &v17);
        v13 = v12;
        v14 = v18[0];
        *this = v18[0];
        if (v14)
        {
          if (v14 == 3)
          {
            *this = 13;
          }

          goto LABEL_23;
        }

        if (!v12)
        {
          v13 = +[NSNull null];
        }

        v15 = [NSString stringWithUTF8String:*v11];
        [v8 setObject:v13 forKeyedSubscript:v15];
      }

      if (v10 == 3)
      {
        *this = 0;
        v5 = v8;
        goto LABEL_24;
      }

LABEL_23:
      v5 = 0;
LABEL_24:
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v16 = v19;
    v19 = 0;
    if (v16)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v16);
      operator delete();
    }
  }

  return v5;
}

void sub_7147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

id HSUtil::Decoder::_readObjectWithCallback(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    goto LABEL_2;
  }

  if (Token == 238)
  {
    __dst = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 4uLL);
    if (*this)
    {
      v9 = 0;
    }

    else
    {
      v9 = __dst;
    }

    if (*this)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (Token == 237)
    {
      LOWORD(__dst) = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
      v7 = *this;
      v8 = __dst;
    }

    else
    {
      if (Token != 236)
      {
        v5 = 0;
        v14 = 2;
LABEL_26:
        *this = v14;
        goto LABEL_3;
      }

      LOBYTE(__dst) = 0;
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
      goto LABEL_2;
    }
  }

  v10 = *a2;
  v11 = *(this + 8);
  v12 = v11 >= *a2;
  v13 = v11 - *a2;
  if (!v12)
  {
    v14 = 6;
LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  if (v13 < v9)
  {
    v14 = 13;
    goto LABEL_25;
  }

  *a2 = v10 + v9;
  *this = 0;
  HSUtil::Decoder::_loadKeyTableIfNeeded(this, a2);
  if (*this)
  {
    goto LABEL_2;
  }

  v28 = v10;
  v15 = HSUtil::Decoder::_readKey(this, &v28);
  if (*this)
  {
    if (*this != 11)
    {
      goto LABEL_32;
    }

LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v16 = v28;
  v17 = v9 - (v28 - v10);
  if (v9 < v28 - v10)
  {
LABEL_32:
    v5 = 0;
    v14 = 12;
    goto LABEL_26;
  }

  __dst = 0;
  v20 = *(this + 1);
  v21 = 0;
  v18 = *(this + 4);
  v22 = *(this + 3);
  v23 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(this + 40);
  v25 = *(this + 7) + v16;
  v26 = v17;
  v27 = 0;
  v5 = HSUtil::Decoder::_decodeObjectWithCallback(this, &__dst, v15);
  HSUtil::Decoder::~Decoder(&__dst);
LABEL_3:

  return v5;
}

void sub_716A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

void HSUtil::Decoder::_readDataByCopy(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  DataLength = HSUtil::Decoder::_readDataLength(this, a2);
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
  }

  else
  {
    v7 = DataLength;
    HSUtil::Buffer::Buffer(v8, v7, v7);
    HSUtil::Decoder::_read(this, a2, __dst, v7);
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
    }

    else
    {
      HSUtil::Buffer::Buffer(a3, v8);
    }

    HSUtil::Buffer::~Buffer(v8);
  }
}

void sub_718A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

id HSUtil::Buffer::getNSData(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [NSData dataWithBytes:v2 length:*(a1 + 48)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t HSUtil::Decoder::_readDataLength(HSUtil::Decoder *this, unint64_t *a2)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    return 0;
  }

  if (Token == 229)
  {
    v10 = 0;
    HSUtil::Decoder::_read(this, a2, &v10, 4uLL);
    v6 = *this;
    if (*this)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  else
  {
    if (Token == 228)
    {
      v9 = 0;
      HSUtil::Decoder::_read(this, a2, &v9, 2uLL);
      v6 = *this;
      v7 = v9;
    }

    else
    {
      if (Token != 227)
      {
        result = 0;
        *this = 2;
        return result;
      }

      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      v6 = *this;
      v7 = __dst;
    }

    if (v6)
    {
      v7 = 0;
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

double HSUtil::Decoder::_readArray@<D0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    goto LABEL_22;
  }

  if (Token == 232)
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
    if (Token == 231)
    {
      v17 = 0;
      HSUtil::Decoder::_read(this, a2, &v17, 2uLL);
      v7 = *this;
      v8 = v17;
    }

    else
    {
      if (Token != 230)
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

__CFString *HSUtil::Decoder::_decodeObjectWithCallback(HSUtil::Decoder *this, HSUtil::Decoder *a2, const CoderKey *a3)
{
  v4 = *(*(this + 1) + 16);
  if (!v4)
  {
    v5 = 0;
LABEL_7:
    *this = 10;
    goto LABEL_8;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    goto LABEL_7;
  }

  v5 = (*(v5->isa + 6))(v5, a2, a3);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v5 == HSUtil::Decoder::DecodeObjectNil)
  {

    v5 = 0;
  }

LABEL_8:

  return v5;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
}

void HSUtil::Encoder::encodeNSNumber(HSUtil::Encoder *this, NSNumber *a2)
{
  v3 = a2;
  if (v3)
  {
    {
      HSUtil::Encoder::encodeNSNumber(NSNumber *)::BOOLTypeID = CFBooleanGetTypeID();
    }

    if (CFGetTypeID(v3) == HSUtil::Encoder::encodeNSNumber(NSNumber *)::BOOLTypeID)
    {
      v4 = [(NSNumber *)v3 BOOLValue];
      if (!*this)
      {
        if (v4)
        {
          v5 = -117;
        }

        else
        {
          v5 = -118;
        }

        __src = v5;
        HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
      }

      goto LABEL_23;
    }

    v6 = [(NSNumber *)v3 objCType];
    v7 = *v6;
    if (v7 != 81)
    {
      if (v7 != 100)
      {
        if (v7 == 102 && !v6[1])
        {
          [(NSNumber *)v3 floatValue];
          if (!*this)
          {
            HSUtil::Encoder::_writeTokenValue32(this, 0x88u, v8);
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (!v6[1])
      {
        [(NSNumber *)v3 doubleValue];
        if (!*this)
        {
          HSUtil::Encoder::_writeTokenValue64(this, 0x89u, v9);
        }

        goto LABEL_23;
      }

LABEL_21:
      v10 = [(NSNumber *)v3 longLongValue];
      if (!*this)
      {
        HSUtil::Encoder::_encodeInt(this, v10);
      }

      goto LABEL_23;
    }

    if (v6[1])
    {
      goto LABEL_21;
    }

    v11 = [(NSNumber *)v3 unsignedLongLongValue];
    if (!*this)
    {
      HSUtil::Encoder::_encodeUInt(this, v11);
    }
  }

  else if (!*this)
  {
    v12 = -116;
    HSUtil::Encoder::_write(this, this + 17, &v12, 1uLL);
  }

LABEL_23:
}

void sub_71DEC(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void HSUtil::Encoder::encodeNSData(HSUtil::Encoder *this, NSData *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [(NSData *)v3 bytes];
    v6 = [(NSData *)v4 length];
    if (!*this)
    {
      HSUtil::Encoder::_encodeData(this, v5, v6);
    }
  }

  else if (!*this)
  {
    __src = -116;
    HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
  }
}

void HSUtil::Encoder::encodeNSDictionary(HSUtil::Encoder *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = *this;
  if (v3)
  {
    if (!v4)
    {
      *&__src = *(this + 17);
      DWORD2(__src) = 4;
      std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](this + 56, &__src);
      HSUtil::Encoder::_writeTokenValue32(this, 0xEBu, 0);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = v9;
          v11 = [v9 UTF8String];
          v13 = HSUtil::CoderKey::New(v11, v12);
          if (!*this)
          {
            HSUtil::Encoder::_encodeKey(this, v13);
          }

          v14 = [(NSDictionary *)v5 objectForKeyedSubscript:v9];
          HSUtil::Encoder::encodeObject(this, v14);
        }

        v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }

    if (!*this)
    {
      HSUtil::Encoder::_encodeContainerStop(this);
    }
  }

  else if (!v4)
  {
    LOBYTE(__src) = -116;
    HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
  }
}

void HSUtil::Encoder::encodeNSArray(HSUtil::Encoder *this, NSArray *a2)
{
  v3 = a2;
  v4 = *this;
  if (v3)
  {
    if (!v4)
    {
      *&__src = *(this + 17);
      DWORD2(__src) = 4;
      std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](this + 56, &__src);
      HSUtil::Encoder::_writeTokenValue32(this, 0xE8u, 0);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          HSUtil::Encoder::encodeObject(this, v9);
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    if (!*this)
    {
      HSUtil::Encoder::_encodeContainerStop(this);
    }
  }

  else if (!v4)
  {
    LOBYTE(__src) = -116;
    HSUtil::Encoder::_write(this, this + 17, &__src, 1uLL);
  }
}

uint64_t HSUtil::Encoder::encodeObjectWithCallback(HSUtil::Encoder *this, objc_object *a2)
{
  v3 = a2;
  if (!*this && !((*this != 0) | std::function<BOOL ()(HSUtil::Encoder &,objc_object *)>::operator()(this + 8, this, v3) & 1))
  {
    *this = 10;
  }

  return _objc_release_x2();
}

uint64_t (***HSUtil::Encoder::_encodeData(HSUtil::Encoder *this, const unsigned __int8 *a2, size_t a3))(void)
{
  if (a3 > 0xFF)
  {
    if (a3 >> 16)
    {
      result = HSUtil::Encoder::_writeTokenValue32(this, 0xE5u, a3);
    }

    else
    {
      result = HSUtil::Encoder::_writeTokenValue16(this, 0xE4u, a3);
    }
  }

  else
  {
    result = HSUtil::Encoder::_writeTokenValue8(this, 0xE3u, a3);
  }

  if (!*this)
  {

    return HSUtil::Encoder::_write(this, this + 17, a2, a3);
  }

  return result;
}

uint64_t std::function<BOOL ()(HSUtil::Encoder &,objc_object *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v5 + 48))(v5, a2, &v8);

  return v6;
}

void __cxx_global_var_init_49()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_48(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_43(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

id HSProxySynth::HSStageProxy_decodeStateFromData_call1<BOOL>(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectAtIndexedSubscript:0];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 decodeStateFromData:v4]);

  return v5;
}

void sub_72D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  HSUtil::Decoder::~Decoder(&a9);
  HSUtil::Decoder::~Decoder(&a19);
  HSUtil::Buffer::~Buffer(&a29);

  _Unwind_Resume(a1);
}

unint64_t *HSUtil::Decoder::decodeElement@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v3 = this;
    v7 = this[9];
    HSUtil::Decoder::_readElement(this, &v7, v4);
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
      v3[9] = v7;
      HSUtil::Decoder::Decoder(a2, v4);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    this = v5;
    v5 = 0;
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

void sub_72E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

HSUtil::Decoder *HSUtil::Decoder::Decoder(HSUtil::Decoder *this, Readable *a2)
{
  *this = 0;
  *(this + 1) = this;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  HSUtil::Decoder::setReadable(this, a2);
  return this;
}

void sub_731AC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

double HSUtil::Decoder::_readElement@<D0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = HSUtil::Decoder::_skipElement(this, a2);
  if (*this || (v8 = v7, HSUtil::Decoder::_loadKeyTableIfNeeded(this, a2), *this))
  {
    *a3 = 5;
    *(a3 + 8) = a3;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
  }

  else
  {

    *&result = HSUtil::Decoder::Decoder(a3, this, v6, v8).n128_u64[0];
  }

  return result;
}

void HSUtil::Encoder::_encodeDecoder(HSUtil::Encoder *this, HSUtil::Decoder *a2)
{
  ElementToken = HSUtil::Decoder::getElementToken(a2);
  v5 = *a2;
  if (*a2 != 3)
  {
    while (1)
    {
      *this = v5;
      if (v5)
      {
        return;
      }

      v6 = 1;
      if (ElementToken > 230)
      {
        break;
      }

      if (ElementToken <= 139)
      {
        if (ElementToken > 131)
        {
          if (ElementToken < 136)
          {
LABEL_13:
            v7 = HSUtil::Decoder::decodeIntStrict(a2);
            v8 = *a2;
            *this = *a2;
            if (v8)
            {
              return;
            }

            HSUtil::Encoder::_encodeInt(this, v7);
            goto LABEL_15;
          }

          if ((ElementToken - 138) < 2)
          {
            v18 = HSUtil::Decoder::decodeBool(a2);
            v19 = *a2;
            *this = *a2;
            if (v19)
            {
              return;
            }

            if (v18)
            {
              v20 = -117;
            }

            else
            {
              v20 = -118;
            }

            __src[0] = v20;
            goto LABEL_69;
          }

          if (ElementToken == 136)
          {
            *&v26 = HSUtil::Decoder::decodeFloatStrict(a2);
            v27 = *a2;
            *this = *a2;
            if (v27)
            {
              return;
            }

            HSUtil::Encoder::_writeTokenValue32(this, 0x88u, v26);
            goto LABEL_15;
          }

          if (ElementToken == 137)
          {
            *&v15 = HSUtil::Decoder::decodeDoubleStrict(a2);
            v16 = *a2;
            *this = *a2;
            if (v16)
            {
              return;
            }

            HSUtil::Encoder::_writeTokenValue64(this, 0x89u, v15);
            goto LABEL_15;
          }

          goto LABEL_77;
        }

        if ((ElementToken - 128) >= 4)
        {
          goto LABEL_77;
        }

LABEL_34:
        v13 = HSUtil::Decoder::decodeUIntStrict(a2);
        v14 = *a2;
        *this = *a2;
        if (v14)
        {
          return;
        }

        HSUtil::Encoder::_encodeUInt(this, v13);
        goto LABEL_15;
      }

      if (ElementToken <= 223)
      {
        if ((ElementToken - 141) < 3)
        {
          goto LABEL_31;
        }

        if (ElementToken == 140)
        {
          HSUtil::Decoder::decodeNull(a2);
          v24 = *a2;
          *this = *a2;
          if (v24)
          {
            return;
          }

          __src[0] = -116;
LABEL_69:
          HSUtil::Encoder::_write(this, this + 17, __src, 1uLL);
LABEL_15:
          if (*this)
          {
            return;
          }

          goto LABEL_90;
        }

LABEL_77:
        if ((ElementToken - 144) < 0x50)
        {
LABEL_31:
          v11 = HSUtil::Decoder::decodeKey(a2);
          v12 = *a2;
          *this = *a2;
          if (v12)
          {
            return;
          }

          HSUtil::Encoder::_encodeKey(this, v11);
          goto LABEL_15;
        }

        if ((ElementToken & 0x80) != 0)
        {
          *this = 12;
          return;
        }

        goto LABEL_34;
      }

      if ((ElementToken - 224) < 3)
      {
        HSUtil::Decoder::decodeStringByRef(a2, __src);
        v17 = *a2;
        *this = *a2;
        if (v17 == 4)
        {
          HSUtil::Decoder::decodeStringReadable(a2, v36);
          v22 = *a2;
          *this = *a2;
          if (v22)
          {
            goto LABEL_93;
          }

          HSUtil::Encoder::_encodeString(this, v36);
        }

        else
        {
          if (v17)
          {
            goto LABEL_93;
          }

          HSUtil::Encoder::_encodeString(this, __s);
        }
      }

      else
      {
        if ((ElementToken - 227) >= 3)
        {
          if (ElementToken != 230)
          {
            goto LABEL_77;
          }

LABEL_71:
          HSUtil::Encoder::_encodeArrayStart(this, v6);
          if (*this)
          {
            return;
          }

          HSUtil::Decoder::decodeArray(a2, __src);
          v25 = *a2;
          *this = *a2;
          if (!v25)
          {
            HSUtil::Encoder::_encodeDecoder(this, __src);
            if (!*this)
            {
LABEL_92:
              HSUtil::Encoder::_encodeContainerStop(this);
              v29 = *this == 0;
LABEL_85:
              if (v33)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }

              v30 = v32;
              v32 = 0;
              if (v30)
              {
                std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v30);
                operator delete();
              }

              if (!v29)
              {
                return;
              }

              goto LABEL_90;
            }
          }

LABEL_84:
          v29 = 0;
          goto LABEL_85;
        }

        HSUtil::Decoder::decodeDataByRef(a2, __src);
        v9 = *a2;
        *this = *a2;
        if (v9 == 4)
        {
          HSUtil::Decoder::decodeDataReadable(a2, v36);
          v21 = *a2;
          *this = *a2;
          if (v21)
          {
            goto LABEL_93;
          }

          HSUtil::Encoder::_encodeData(this, v36);
        }

        else
        {
          if (v9)
          {
            goto LABEL_93;
          }

          if (__s)
          {
            v10 = v35;
          }

          else
          {
            v10 = 0;
          }

          HSUtil::Encoder::_encodeData(this, __s, v10);
        }
      }

      if (*this)
      {
LABEL_93:
        HSUtil::Buffer::~Buffer(__src);
        return;
      }

      HSUtil::Buffer::~Buffer(__src);
LABEL_90:
      ElementToken = HSUtil::Decoder::getElementToken(a2);
      v5 = *a2;
      if (*a2 == 3)
      {
        return;
      }
    }

    if (ElementToken > 236)
    {
      if ((ElementToken - 240) < 0x10)
      {
        goto LABEL_13;
      }

      if (ElementToken == 237)
      {
        v6 = 2;
      }

      else
      {
        if (ElementToken != 238)
        {
          goto LABEL_77;
        }

        v6 = 4;
      }

LABEL_81:
      HSUtil::Encoder::_encodeObjectStart(this, v6);
      if (*this)
      {
        return;
      }

      HSUtil::Decoder::decodeContainer(a2, __src);
      v28 = *a2;
      *this = *a2;
      if (!v28)
      {
        HSUtil::Encoder::_encodeDecoder(this, __src);
        if (!*this)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_84;
    }

    if (ElementToken > 233)
    {
      if (ElementToken == 234)
      {
        v6 = 2;
      }

      else
      {
        if (ElementToken != 235)
        {
          goto LABEL_81;
        }

        v6 = 4;
      }
    }

    else
    {
      if (ElementToken == 231)
      {
        v6 = 2;
        goto LABEL_71;
      }

      if (ElementToken == 232)
      {
        v6 = 4;
        goto LABEL_71;
      }
    }

    HSUtil::Encoder::_encodeMapStart(this, v6);
    if (*this)
    {
      return;
    }

    HSUtil::Decoder::decodeMap(a2, __src);
    v23 = *a2;
    *this = *a2;
    if (!v23)
    {
      HSUtil::Encoder::_encodeDecoder(this, __src);
      if (!*this)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_84;
  }
}

void sub_73734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Decoder::getElementToken(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  LODWORD(result) = HSUtil::Decoder::_readToken(this, v5);
  if (*this)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t HSUtil::Decoder::decodeUIntStrict(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readUIntStrict(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

uint64_t HSUtil::Decoder::decodeIntStrict(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readIntStrict(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

float HSUtil::Decoder::decodeFloatStrict(HSUtil::Decoder *this)
{
  result = 0.0;
  if (*this <= 4)
  {
    v7[3] = v1;
    v7[4] = v2;
    v7[0] = *(this + 9);
    HSUtil::Decoder::_readFloatStrict(this, v7);
    v6 = v5;
    result = 0.0;
    if (!*this)
    {
      *(this + 9) = v7[0];
      return v6;
    }
  }

  return result;
}

double HSUtil::Decoder::decodeDoubleStrict(HSUtil::Decoder *this)
{
  result = 0.0;
  if (*this <= 4)
  {
    v7[3] = v1;
    v7[4] = v2;
    v7[0] = *(this + 9);
    HSUtil::Decoder::_readDoubleStrict(this, v7);
    v6 = v5;
    result = 0.0;
    if (!*this)
    {
      *(this + 9) = v7[0];
      return v6;
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::decodeBool(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readBool(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

void *HSUtil::Decoder::decodeNull(void *this)
{
  if (*this <= 4)
  {
    v4[3] = v1;
    v4[4] = v2;
    v3 = this;
    v4[0] = this[9];
    this = HSUtil::Decoder::_readToken(this, v4);
    if (*v3 || this == 140)
    {
      if (!*v3)
      {
        v3[9] = v4[0];
      }
    }

    else
    {
      *v3 = 2;
    }
  }

  return this;
}

unint64_t HSUtil::Decoder::decodeKey(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readKey(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

void HSUtil::Decoder::decodeStringByRef(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v5 = *(this + 9);
    HSUtil::Decoder::_readStringByRefIfSupported(this, &v5, v4);
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
      *(this + 9) = v5;
      HSUtil::Buffer::Buffer(a2, v4);
    }

    HSUtil::Buffer::~Buffer(v4);
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

void HSUtil::Decoder::decodeStringReadable(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v6 = *(this + 9);
    HSUtil::Decoder::_readStringReadable(this, &v6, v4);
    if (*this)
    {
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
    }

    else
    {
      *(this + 9) = v6;
      *(a2 + 8) = *&v4[8];
      *(a2 + 24) = v5;
    }

    *a2 = &off_109DD0;
  }

  else
  {
    *a2 = &off_109DD0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }
}

uint64_t (***HSUtil::Encoder::_encodeString(HSUtil::Encoder *this, Readable *a2))(void)
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    *this = 6;
  }

  else
  {
    if (v5 > 0xFF)
    {
      if (v5 >> 16)
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

      return HSUtil::Encoder::_copy(this, a2);
    }
  }

  return result;
}

void HSUtil::Decoder::decodeDataByRef(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v5 = *(this + 9);
    HSUtil::Decoder::_readDataByRefIfSupported(this, &v5, v4);
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
      *(this + 9) = v5;
      HSUtil::Buffer::Buffer(a2, v4);
    }

    HSUtil::Buffer::~Buffer(v4);
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

void HSUtil::Decoder::decodeDataReadable(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v6 = *(this + 9);
    HSUtil::Decoder::_readDataReadable(this, &v6, v4);
    if (*this)
    {
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
    }

    else
    {
      *(this + 9) = v6;
      *(a2 + 8) = *&v4[8];
      *(a2 + 24) = v5;
    }

    *a2 = &off_109DD0;
  }

  else
  {
    *a2 = &off_109DD0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }
}

uint64_t (***HSUtil::Encoder::_encodeData(HSUtil::Encoder *this, Readable *a2))(void)
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    *this = 6;
  }

  else
  {
    if (v5 > 0xFF)
    {
      if (v5 >> 16)
      {
        result = HSUtil::Encoder::_writeTokenValue32(this, 0xE5u, v5);
      }

      else
      {
        result = HSUtil::Encoder::_writeTokenValue16(this, 0xE4u, v5);
      }
    }

    else
    {
      result = HSUtil::Encoder::_writeTokenValue8(this, 0xE3u, v5);
    }

    if (!*this)
    {

      return HSUtil::Encoder::_copy(this, a2);
    }
  }

  return result;
}

uint64_t (***HSUtil::Encoder::_encodeArrayStart(unint64_t *a1, int a2))(void)
{
  *&v5 = a1[17];
  DWORD2(v5) = a2;
  std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100]((a1 + 7), &v5);
  if (a2 == 4)
  {
    return HSUtil::Encoder::_writeTokenValue32(a1, 0xE8u, 0);
  }

  if (a2 == 2)
  {
    return HSUtil::Encoder::_writeTokenValue16(a1, 0xE7u, 0);
  }

  if (a2 != 1)
  {
    abort();
  }

  return HSUtil::Encoder::_writeTokenValue8(a1, 0xE6u, 0);
}

unint64_t *HSUtil::Decoder::decodeArray@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v3 = this;
    v7 = this[9];
    HSUtil::Decoder::_readArray(this, &v7, v4);
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
      v3[9] = v7;
      HSUtil::Decoder::Decoder(a2, v4);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    this = v5;
    v5 = 0;
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

void sub_74330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

uint64_t (***HSUtil::Encoder::_encodeMapStart(unint64_t *a1, int a2))(void)
{
  *&v5 = a1[17];
  DWORD2(v5) = a2;
  std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100]((a1 + 7), &v5);
  if (a2 == 4)
  {
    return HSUtil::Encoder::_writeTokenValue32(a1, 0xEBu, 0);
  }

  if (a2 == 2)
  {
    return HSUtil::Encoder::_writeTokenValue16(a1, 0xEAu, 0);
  }

  if (a2 != 1)
  {
    abort();
  }

  return HSUtil::Encoder::_writeTokenValue8(a1, 0xE9u, 0);
}

unint64_t *HSUtil::Decoder::decodeContainer@<X0>(unint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if (*this < 5)
  {
    v3 = this;
    v7 = this[9];
    HSUtil::Decoder::_readContainer(this, &v7, v4);
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
      v3[9] = v7;
      HSUtil::Decoder::Decoder(a2, v4);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    this = v5;
    v5 = 0;
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

void sub_744AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

HSUtil::Decoder *HSUtil::Decoder::_readStringByRefIfSupported@<X0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 6))
  {
    return HSUtil::Decoder::_readStringByRef(this, a2, a3);
  }

  *this = 4;
  *a3 = &off_108FA0;
  *(a3 + 8) = &off_108FF8;
  *(a3 + 16) = &off_109018;
  *(a3 + 24) = &off_109030;
  *(a3 + 32) = off_109048;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) &= 0xFCu;
  return this;
}

__n128 HSUtil::Decoder::_readStringReadable@<Q0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  StringLength = HSUtil::Decoder::_readStringLength(this, a2);
  if (*this)
  {
    goto LABEL_7;
  }

  v8 = *a2;
  v9 = *(this + 8);
  if (v9 >= *a2)
  {
    v11 = StringLength;
    if (v9 - *a2 >= StringLength - 1)
    {
      *a2 = v8 + StringLength - 1;
      *this = 0;
      __dst = 0;
      HSUtil::Decoder::_read(this, a2, &__dst, 1uLL);
      if (*this)
      {
        goto LABEL_7;
      }

      if (!__dst)
      {
        *a3 = &off_109DD0;
        result = *(this + 40);
        *(a3 + 8) = result;
        *(a3 + 24) = *(this + 7) + v8;
        *(a3 + 32) = v11;
        return result;
      }

      v10 = 12;
    }

    else
    {
      v10 = 13;
    }
  }

  else
  {
    v10 = 6;
  }

  *this = v10;
LABEL_7:
  *a3 = &off_109DD0;
  result.n128_u64[0] = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  return result;
}

unint64_t HSUtil::Decoder::DataReadable::read(HSUtil::Decoder::DataReadable *this, unint64_t a2, void *__dst, size_t a4)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = v6 >= a2;
    v8 = v6 - a2;
    if (v7)
    {
      if (v8 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v8;
      }

      v13 = *(this + 2);
      v12 = *(this + 3);
      if (v13)
      {
        memcpy(__dst, (v13 + v12 + a2), v11);
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v14 = (**v5)(v5, v12 + a2, __dst, v11);
        v9 = v14 & 0xFFFFFFFF00000000;
        v10 = v14;
      }
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
    v10 = 45;
  }

  return v10 | v9;
}

unint64_t HSUtil::Encoder::_copy(HSUtil::Encoder *this, Readable *a2)
{
  result = (*(*a2 + 8))(a2);
  if (result)
  {
    v6 = 6;
  }

  else
  {
    v7 = v5;
    result = HSUtil::IOUtil::Copy(*(this + 5), *(this + 17), a2, 0, v5);
    if (result)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == v7;
    }

    if (v9)
    {
      v10 = *(this + 17);
      if (__CFADD__(v10, v7))
      {
        v6 = 14;
      }

      else
      {
        v6 = 0;
        *(this + 17) = v10 + v7;
      }
    }

    else
    {
      v6 = 7;
    }
  }

  *this = v6;
  return result;
}

unint64_t HSUtil::IOUtil::Copy(uint64_t (***this)(HSUtil::IOUtil *, Writable *, uint64_t, unint64_t), Writable *a2, Readable *a3, Readable *a4, unint64_t a5)
{
  if (v10)
  {
    v11 = (**v10)(v10, a2, a3, a4, a5);
LABEL_5:
    v13 = v11;
    v14 = v11 & 0xFFFFFFFF00000000;
    return v14 | v13;
  }

  if (v12)
  {
    v11 = (**v12)(v12, a4, this, a2, a5);
    goto LABEL_5;
  }

  HSUtil::Buffer::Buffer(v23, 0x8000uLL, 0);
  if (!v24)
  {
    v14 = 0;
    v13 = 12;
    goto LABEL_32;
  }

  v16 = 0;
  while (1)
  {
    if (!a5)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_32;
    }

    if (a5 >= 0x8000)
    {
      v17 = 0x8000;
    }

    else
    {
      v17 = a5;
    }

    v18 = HSUtil::Buffer::readFrom(v23, 0, a3, a4, v17);
    v13 = v18;
    v20 = v19;
    if (v18)
    {
      v14 = v18 & 0xFFFFFFFF00000000;
      goto LABEL_32;
    }

    v21 = (**this)(this, a2, v24, v19);
    v13 = v21;
    if (v21)
    {
      v14 = v21 & 0xFFFFFFFF00000000;
      goto LABEL_32;
    }

    if (__CFADD__(v16, v22))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSIOUtil.h", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSUtil::IOUtil::Copy();
      }

      goto LABEL_31;
    }

    if (__CFADD__(a4, v22))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSIOUtil.h", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSUtil::IOUtil::Copy();
      }

      goto LABEL_31;
    }

    if (__CFADD__(a2, v22))
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingUtil/HSIOUtil.h", v25);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSUtil::IOUtil::Copy();
      }

LABEL_31:
      v13 = 0;
      v14 = 0;
      goto LABEL_32;
    }

    v13 = 0;
    v16 += v22;
    if (v20 < v17)
    {
      break;
    }

    a5 -= v22;
    a4 = (a4 + v22);
    a2 = (a2 + v22);
    v14 = 0;
    if (v22 < v20)
    {
      goto LABEL_32;
    }
  }

  v14 = 0;
LABEL_32:
  HSUtil::Buffer::~Buffer(v23);
  return v14 | v13;
}

void sub_74B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

HSUtil::Decoder *HSUtil::Decoder::_readDataByRefIfSupported@<X0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 6))
  {
    return HSUtil::Decoder::_readDataByRef(this, a2, a3);
  }

  *this = 4;
  *a3 = &off_108FA0;
  *(a3 + 8) = &off_108FF8;
  *(a3 + 16) = &off_109018;
  *(a3 + 24) = &off_109030;
  *(a3 + 32) = off_109048;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) &= 0xFCu;
  return this;
}

unint64_t HSUtil::Decoder::_readDataByRef@<X0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = HSUtil::Decoder::_readDataLength(this, a2);
  if (*this)
  {
    goto LABEL_7;
  }

  v7 = *a2;
  v8 = *(this + 8);
  v9 = v8 >= *a2;
  v10 = v8 - *a2;
  if (!v9)
  {
    v11 = 6;
LABEL_6:
    *this = v11;
LABEL_7:
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
    goto LABEL_6;
  }

  *a2 = v7 + result;
  *this = 0;
  v12 = *(this + 6) + *(this + 7) + v7;

  return HSUtil::Buffer::Buffer(a3, v12, result);
}

__n128 HSUtil::Decoder::_readDataReadable@<Q0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  DataLength = HSUtil::Decoder::_readDataLength(this, a2);
  if (*this)
  {
    goto LABEL_7;
  }

  v8 = *a2;
  v9 = *(this + 8);
  v10 = v9 >= *a2;
  v11 = v9 - *a2;
  if (!v10)
  {
    v12 = 6;
LABEL_6:
    *this = v12;
LABEL_7:
    *a3 = &off_109DD0;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    return result;
  }

  if (v11 < DataLength)
  {
    v12 = 13;
    goto LABEL_6;
  }

  *a2 = v8 + DataLength;
  *this = 0;
  *a3 = &off_109DD0;
  result = *(this + 40);
  *(a3 + 8) = result;
  *(a3 + 24) = *(this + 7) + v8;
  *(a3 + 32) = DataLength;
  return result;
}

double HSUtil::Decoder::_readContainer@<D0>(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Token = HSUtil::Decoder::_readToken(this, a2);
  if (*this)
  {
    goto LABEL_22;
  }

  if ((Token - 230) > 8)
  {
    v15 = 2;
    goto LABEL_21;
  }

  v7 = 1 << (Token + 26);
  if ((v7 & 0x49) != 0)
  {
    v17 = 0;
    HSUtil::Decoder::_read(this, a2, &v17, 1uLL);
    v8 = *this;
    v9 = v17;
  }

  else
  {
    if ((v7 & 0x92) == 0)
    {
      v19 = 0;
      HSUtil::Decoder::_read(this, a2, &v19, 4uLL);
      if (*this)
      {
        v10 = 0;
      }

      else
      {
        v10 = v19;
      }

      if (*this)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    __dst = 0;
    HSUtil::Decoder::_read(this, a2, &__dst, 2uLL);
    v8 = *this;
    v9 = __dst;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    goto LABEL_22;
  }

LABEL_16:
  v11 = *a2;
  v12 = *(this + 8);
  v13 = v12 >= *a2;
  v14 = v12 - *a2;
  if (!v13)
  {
    v15 = 6;
LABEL_21:
    *this = v15;
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

  if (v14 < v10)
  {
    v15 = 13;
    goto LABEL_21;
  }

  *a2 = v11 + v10;
  *this = 0;
  HSUtil::Decoder::_loadKeyTableIfNeeded(this, a2);
  if (*this)
  {
    goto LABEL_22;
  }

  *&result = HSUtil::Decoder::Decoder(a3, this, v11, v10).n128_u64[0];
  return result;
}

void HSUtil::IOUtil::Copy()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void __cxx_global_var_init_50()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_49(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_44(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void collectStages(NSMutableSet *a1, HSStage *a2)
{
  v3 = a1;
  v4 = a2;
  if (([(NSMutableSet *)v3 containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)v3 addObject:v4];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(HSStage *)v4 consumers];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          collectStages(v3, v9);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

void sub_76320(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  HSUtil::ObjectLock::~ObjectLock(va);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_51()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_50(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_45(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_46(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void sub_76B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HSObjectServer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_76D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, id location)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::~__value_func[abi:ne200100](v13);
  objc_destroyWeak((v14 - 104));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void HSMapper::New(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    HSMapper::New(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  operator new();
}

void sub_76EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_77008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__tree<std::shared_ptr<HSMapper>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_77460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HSObjectClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id HSMapper::send(HSMapper *this, uint64_t a2, objc_selector *a3, objc_object *a4, objc_object *a5, objc_object *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28[0] = a2;
  v28[1] = a3;
  v14 = v11;
  v29 = v14;
  v15 = v12;
  v30 = v15;
  v16 = v13;
  v31 = v16;
  HSMapper::_popEncoderBuf(this, &v27);
  v17 = v27;
  v26[0] = this;
  v26[1] = &v27;
  if (!*v27 && !((*v17 != 0) | Message::encode(v28, v27) & 1))
  {
    *v17 = 10;
  }

  v18 = HSUtil::EncoderBuf::buffer(v17);
  if (!*(v18 + 5))
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSMapper::send();
    }

    goto LABEL_9;
  }

  if (*(this + 40) == 1)
  {
    HSUtil::Connection::sendAsync(*(this + 2), v18);
LABEL_9:
    v19 = 0;
    goto LABEL_21;
  }

  HSUtil::Connection::send(*(this + 2), v18, v24);
  if (v25)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    if (HSMapper::_decodeMessage(this, v24, &v21))
    {
      v19 = v22;
    }

    else
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v32);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSMapper::send();
      }

      v19 = 0;
    }
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v32);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSMapper::send();
    }

    v19 = 0;
  }

  HSUtil::Buffer::~Buffer(v24);
LABEL_21:
  HSUtil::DeferredFn<HSMapper::send(unsigned long long,objc_selector *,objc_object *,objc_object *,objc_object *)::{lambda(void)#1}>::~DeferredFn(v26);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](&v27);

  return v19;
}

void sub_7772C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  Message::~Message(&a9);
  HSUtil::Buffer::~Buffer(&a15);
  HSUtil::DeferredFn<HSMapper::send(unsigned long long,objc_selector *,objc_object *,objc_object *,objc_object *)::{lambda(void)#1}>::~DeferredFn(&a24);
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](&a26);
  Message::~Message(&a27);

  _Unwind_Resume(a1);
}

id proxyFn1(HSProxy *a1, objc_selector *a2, objc_object *a3)
{
  v5 = a1;
  v6 = a3;
  cntrl = v5->mapper.__cntrl_;
  if (cntrl && (v8 = std::__shared_weak_count::lock(cntrl)) != 0)
  {
    v9 = v8;
    ptr = v5->mapper.__ptr_;
    if (ptr)
    {
      v11 = HSMapper::send(ptr, v5->objectID, a2, v6, 0, 0);
    }

    else
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_77F04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  _Unwind_Resume(a1);
}

void HSMapper::_init(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 8);
  *a1 = v10;
  *(a1 + 8) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  WeakRetained = objc_loadWeakRetained(a5);
  objc_storeWeak((a1 + 32), WeakRetained);

  *(a1 + 40) = *(a5 + 8);
  std::function<void ()(std::shared_ptr<HSMapper>)>::operator=((a1 + 48), a5 + 16);
  v13 = *(a1 + 8);
  v14[0] = *a1;
  v14[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  HSMapper::_createConnectionConfig(v14, v8, *(a1 + 40), &v15);
  HSUtil::Connection::New();
}

void HSMapper::HSMapper(HSMapper *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 52) = 0;
  *(this + 27) = 850045863;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  *(this + 38) = 850045863;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 356) = 0u;
  *(this + 47) = this + 368;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
}

void std::vector<std::unique_ptr<HSUtil::EncoderBuf>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    HSUtil::Buffer::~Buffer((v1 + 18));
    v2 = v1[10];
    if (v2)
    {
      v1[11] = v2;
      operator delete(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      v1[8] = v3;
      operator delete(v3);
    }

    std::__function::__value_func<BOOL ()(HSUtil::Encoder &,objc_object *)>::~__value_func[abi:ne200100]((v1 + 1));
    operator delete();
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::shared_ptr<HSMapper>::shared_ptr[abi:ne200100]<HSMapper,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_785D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HSMapper>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

HSMapper **std::unique_ptr<HSMapper>::~unique_ptr[abi:ne200100](HSMapper **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    HSMapper::~HSMapper(v2);
    operator delete();
  }

  return a1;
}

void std::__shared_ptr_pointer<HSMapper *,std::shared_ptr<HSMapper>::__shared_ptr_default_delete<HSMapper,HSMapper>,std::allocator<HSMapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

HSMapper *std::__shared_ptr_pointer<HSMapper *,std::shared_ptr<HSMapper>::__shared_ptr_default_delete<HSMapper,HSMapper>,std::allocator<HSMapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    HSMapper::~HSMapper(result);

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<HSMapper *,std::shared_ptr<HSMapper>::__shared_ptr_default_delete<HSMapper,HSMapper>,std::allocator<HSMapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void HSMapper::~HSMapper(HSMapper *this)
{
  v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    HSMapper::~HSMapper(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(this + 50);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<HSUtil::Decoder::Callbacks>::reset[abi:ne200100](this + 48, 0);
  std::mutex::~mutex((this + 304));
  v13 = (this + 280);
  std::vector<std::unique_ptr<HSUtil::EncoderBuf>>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::mutex::~mutex((this + 216));
  std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::~__hash_table(this + 168);
  std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::~__hash_table(this + 128);
  std::__hash_table<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HSProxy * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HSProxy * {__strong}>>>::~__hash_table(this + 88);
  std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::~__value_func[abi:ne200100](this + 48);
  objc_destroyWeak(this + 4);
  v11 = *(this + 3);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_78874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void HSMapper::_createConnectionConfig(uint64_t *a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = a2;
  *a4 = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    v11 = *a1;
    v10 = a1[1];
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  a4[1] = off_109F78;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = a4 + 1;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  a4[5] = off_10A088;
  a4[6] = v11;
  a4[7] = v10;
  a4[8] = a4 + 5;
  v12 = 1000;
  v13 = -1000000;
  if (a3)
  {
    v13 = 3000000;
  }

  else
  {
    v12 = -1000000;
  }

  a4[9] = v12;
  a4[10] = v13;
}

void HSUtil::Connection::Config::~Config(id *this)
{
  std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::~__value_func[abi:ne200100]((this + 5));
  std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::~__value_func[abi:ne200100]((this + 1));
}

unint64_t HSMapper::_idForObject(HSMapper *this, objc_object *a2)
{
  v10 = a2;
  os_unfair_lock_lock(this + 52);
  v3 = std::__hash_table<HSStage * {__strong},HSUtil::ObjectHasher,std::equal_to<HSStage * {__strong}>,std::allocator<HSStage * {__strong}>>::find<HSStage * {__strong}>(this + 16, &v10);
  if (!v3)
  {
    v9 = *(this + 10);
    *(this + 10) = v9 + 1;
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,objc_object * {__strong}&>(this + 11, &v9);
    if (v5)
    {
      std::__hash_table<std::__hash_value_type<objc_object * {__strong},unsigned long long>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},unsigned long long>,HSUtil::ObjectHasher,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},unsigned long long>,std::equal_to<objc_object * {__strong}>,HSUtil::ObjectHasher,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},unsigned long long>>>::__emplace_unique_key_args<objc_object * {__strong},objc_object * {__strong}&,unsigned long long &>(this + 16, &v10);
      if (v6)
      {
        v4 = v9;
        goto LABEL_6;
      }

      v8 = 417;
    }

    else
    {
      v8 = 415;
    }

    __assert_rtn("_idForObject", "HSRemoteObject.mm", v8, "br");
  }

  v4 = v3[3];
LABEL_6:
  os_unfair_lock_unlock(this + 52);

  return v4;
}

void sub_78AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v10 + 52);

  _Unwind_Resume(a1);
}

int *HSUtil::Decoder::setCallbacks(int *this, const Callbacks *a2)
{
  if (*this <= 4)
  {
    v2 = *(this + 2);
    if (!v2)
    {
      operator new();
    }

    return std::function<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::operator=(v2, a2);
  }

  return this;
}

void HSUtil::Connection::start(HSUtil::Connection *this)
{
  std::mutex::lock((this + 112));
  if (!*(this + 56))
  {
    *(this + 56) = 1;
    _ZNSt3__16threadC2IZN6HSUtil10Connection5startEvEUlvE_JELi0EEEOT_DpOT0_();
  }

  HSUtil::Connection::start();
}

void *std::function<void ()(std::shared_ptr<HSMapper>)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_78F80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HSMapper>)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL HSUtil::Connection::_init(uint64_t a1, uint64_t *a2, HSUtil::FileDescriptor *a3, uint64_t a4)
{
  if (!*a4)
  {
    HSUtil::Connection::_init();
  }

  if (!*(a4 + 32))
  {
    HSUtil::Connection::_init();
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 8);
  *a1 = v8;
  *(a1 + 8) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  objc_storeStrong((a1 + 16), *a4);
  std::function<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::operator=((a1 + 24), a4 + 8);
  std::function<void ()(std::shared_ptr<HSUtil::Connection>)>::operator=((a1 + 56), a4 + 40);
  *(a1 + 88) = *(a4 + 72);
  relative_priority_ptr = 0;
  qos_class = dispatch_queue_get_qos_class(*(a1 + 16), &relative_priority_ptr);
  if (qos_class)
  {
    v11 = dispatch_queue_attr_make_with_qos_class(0, qos_class, relative_priority_ptr);
  }

  else
  {
    v11 = 0;
  }

  v12 = dispatch_queue_create("Connection._asyncSendQueue", v11);
  v13 = *(a1 + 104);
  *(a1 + 104) = v12;

  v17 = 256;
  v14 = *(a1 + 88);
  v18 = -1000000;
  v19 = v14;
  v15 = HSUtil::ConfigureSocket(a3, &v17);
  if (v15)
  {
    operator new();
  }

  return v15;
}

double HSUtil::Connection::Connection(HSUtil::Connection *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 88) = vdupq_n_s64(0xFFFFFFFFFFF0BDC0);
  *(this + 13) = 0;
  *(this + 14) = 850045863;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 22) = 1018212795;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 212) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  *(this + 44) = 850045863;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 51) = 0;
  *(this + 52) = 1018212795;
  *(this + 59) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 450) = 0u;
  *(this + 61) = &off_108FA0;
  *(this + 62) = &off_108FF8;
  *(this + 63) = &off_109018;
  *(this + 64) = &off_109030;
  *(this + 65) = off_109048;
  v2 = HSUtil::Buffer::_EmptyData;
  *(this + 66) = HSUtil::Buffer::_EmptyData;
  *(this + 536) = 0u;
  *(this + 552) &= 0xFCu;
  *(this + 70) = 850045863;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0;
  *(this + 78) = 1018212795;
  *(this + 85) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 658) = 0u;
  *(this + 87) = &off_108FA0;
  *(this + 88) = &off_108FF8;
  *(this + 89) = &off_109018;
  *(this + 90) = &off_109030;
  *(this + 91) = off_109048;
  *(this + 92) = v2;
  *(this + 744) = 0u;
  *(this + 760) &= 0xFCu;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::shared_ptr<HSUtil::Connection>::shared_ptr[abi:ne200100]<HSUtil::Connection,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_79600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HSUtil::Connection>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

HSUtil::Connection **std::unique_ptr<HSUtil::Connection>::~unique_ptr[abi:ne200100](HSUtil::Connection **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    HSUtil::Connection::~Connection(v2);
    operator delete();
  }

  return a1;
}

void std::__shared_ptr_pointer<HSUtil::Connection *,std::shared_ptr<HSUtil::Connection>::__shared_ptr_default_delete<HSUtil::Connection,HSUtil::Connection>,std::allocator<HSUtil::Connection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

HSUtil::Connection *std::__shared_ptr_pointer<HSUtil::Connection *,std::shared_ptr<HSUtil::Connection>::__shared_ptr_default_delete<HSUtil::Connection,HSUtil::Connection>,std::allocator<HSUtil::Connection>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    HSUtil::Connection::~Connection(result);

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<HSUtil::Connection *,std::shared_ptr<HSUtil::Connection>::__shared_ptr_default_delete<HSUtil::Connection,HSUtil::Connection>,std::allocator<HSUtil::Connection>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void HSUtil::Connection::~Connection(HSUtil::Connection *this)
{
  HSUtil::Connection::_close(this, 2, 1);
  HSUtil::Buffer::~Buffer((this + 696));
  std::condition_variable::~condition_variable(this + 13);
  std::mutex::~mutex((this + 560));
  HSUtil::Buffer::~Buffer((this + 488));
  std::condition_variable::~condition_variable((this + 416));
  std::mutex::~mutex((this + 352));
  v2 = *(this + 43);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex((this + 272));
  v3 = *(this + 30);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::condition_variable::~condition_variable((this + 176));
  std::mutex::~mutex((this + 112));

  std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::~__value_func[abi:ne200100](this + 56);
  std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::~__value_func[abi:ne200100](this + 24);

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void HSUtil::Connection::_close(uint64_t *a1, int a2, int a3)
{
  if (!a2)
  {
    HSUtil::Connection::_close();
  }

  if (a2 == 1)
  {
    HSUtil::Connection::_close();
  }

  v6 = (a1 + 14);
  __lk.__m_ = (a1 + 14);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 14));
  v7 = *(a1 + 56);
  if (v7 <= 1)
  {
    v8 = HSUtil::FileDescriptor::fd(a1[29]);
    shutdown(v8, 2);
    *(a1 + 56) = a2;
    std::condition_variable::notify_all((a1 + 22));
  }

  std::mutex::unlock(v6);
  __lk.__owns_ = 0;
  std::mutex::lock((a1 + 44));
  *(a1 + 464) = 1;
  std::condition_variable::notify_all((a1 + 52));
  std::mutex::unlock((a1 + 44));
  std::mutex::lock((a1 + 70));
  *(a1 + 672) = 1;
  std::condition_variable::notify_all(a1 + 13);
  std::mutex::unlock((a1 + 70));
  std::mutex::lock((a1 + 34));
  v9 = a1[43];
  a1[42] = 0;
  a1[43] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::mutex::unlock((a1 + 34));
  std::unique_lock<std::mutex>::lock[abi:ne200100](&__lk);
  if (a3 && (a1[33] & 1) == 0)
  {
    do
    {
      std::condition_variable::wait((a1 + 22), &__lk);
    }

    while (*(a1 + 264) != 1);
  }

  if (a1[29])
  {
    v10 = a1[30];
    if (!v10 || v10->__shared_owners_)
    {
      __assert_rtn("_close", "HSConnection.h", 284, "_state.socket.unique()");
    }

    a1[29] = 0;
    a1[30] = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v7 <= 1 && a1[10])
    {
      v11 = *a1;
      v12 = a1[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a1[2];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3321888768;
      v14[2] = ___ZN6HSUtil10Connection6_closeENS0_6StatusEb_block_invoke;
      v14[3] = &__block_descriptor_48_ea8_32c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE_e5_v8__0l;
      v14[4] = v11;
      v15 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v13, v14);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_79A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::mutex *a15, char a16)
{
  if (a16 == 1)
  {
    std::mutex::unlock(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::unique_lock<std::mutex>::lock[abi:ne200100](v2);
  }
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  ___ZN6HSUtil10Connection6_closeENS0_6StatusEb_block_invoke();
}

void ___ZN6HSUtil10Connection6_closeENS0_6StatusEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v7 = *(a1 + 32);
        v8 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v5 + 80);
        if (!v6)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v6 + 48))(v6, &v7);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_79B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c44_ZTSNSt3__18weak_ptrIN6HSUtil10ConnectionEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::function<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(std::shared_ptr<HSUtil::Connection>)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer&&)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_79FB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(std::shared_ptr<HSUtil::Connection>)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_7A2AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<HSUtil::FileDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::~__func(void *a1)
{
  *a1 = off_109F78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::~__func(void *a1)
{
  *a1 = off_109F78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_109F78;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::operator()(uint64_t a1@<X0>, __int128 *a2@<X1>, Readable *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1}::operator()(a1 + 8, &v4, a3, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_7A52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1},std::allocator<HSUtil::Buffer &&>,HSUtil::Buffer ()(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HSMapper::_createConnectionConfig(std::weak_ptr<HSMapper>,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::{lambda(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)#1}::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, Readable *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = std::__shared_weak_count::lock(v6);
  if (!v9 || (v10 = *a1) == 0)
  {
LABEL_9:
    *a4 = &off_108FA0;
    *(a4 + 8) = &off_108FF8;
    *(a4 + 16) = &off_109018;
    *(a4 + 24) = &off_109030;
    v12 = HSUtil::Buffer::_EmptyData;
    *(a4 + 32) = off_109048;
    *(a4 + 40) = v12;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 64) &= 0xFCu;
    if (!v9)
    {
      return;
    }

    goto LABEL_10;
  }

  v11 = *(a2 + 8);
  v13 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HSMapper::_messageHandler(v10, a3, a4);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_7A6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void HSMapper::_messageHandler(HSMapper *a1@<X0>, Readable *a2@<X2>, uint64_t a3@<X8>)
{
  v21 = 0;
  *name = 0u;
  v20 = 0u;
  if (HSMapper::_decodeMessage(a1, a2, name))
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v5 = HSMapper::_objectForID(a1, name[0]);
    if (v5)
    {
      v6 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v6, name[1]);
      if (!InstanceMethod)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HSMapper::_messageHandler();
        }

        *a3 = &off_108FA0;
        *(a3 + 8) = &off_108FF8;
        *(a3 + 16) = &off_109018;
        *(a3 + 24) = &off_109030;
        v11 = HSUtil::Buffer::_EmptyData;
        *(a3 + 32) = off_109048;
        *(a3 + 40) = v11;
        *(a3 + 48) = 0;
        *(a3 + 56) = 0;
        *(a3 + 64) &= 0xFCu;
        goto LABEL_22;
      }

      method_getReturnType(InstanceMethod, dst, 8uLL);
      if (dst[0] == 64)
      {
        v8 = [v5 name[1]];
        v9 = v17;
        *&v17 = v8;
      }

      else
      {
        [v5 name[1]];
      }
    }

    HSMapper::_popEncoderBuf(a1, &v15);
    v12 = v15;
    *dst = a1;
    v23 = &v15;
    if (!*v15 && !((*v12 != 0) | Message::encode(&v16, v15) & 1))
    {
      *v12 = 10;
    }

    v13 = HSUtil::EncoderBuf::buffer(v12);
    if (v13[5])
    {
      HSUtil::Buffer::slice<HSUtil::Buffer::CopyType>(v13, 0, a3);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HSMapper::_messageHandler();
      }

      *a3 = &off_108FA0;
      *(a3 + 8) = &off_108FF8;
      *(a3 + 16) = &off_109018;
      *(a3 + 24) = &off_109030;
      v14 = HSUtil::Buffer::_EmptyData;
      *(a3 + 32) = off_109048;
      *(a3 + 40) = v14;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 64) &= 0xFCu;
    }

    HSUtil::DeferredFn<HSMapper::_messageHandler(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)::{lambda(void)#1}>::~DeferredFn(dst);
    std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](&v15);
LABEL_22:

    goto LABEL_23;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    HSMapper::_messageHandler();
  }

  *a3 = &off_108FA0;
  *(a3 + 8) = &off_108FF8;
  *(a3 + 16) = &off_109018;
  *(a3 + 24) = &off_109030;
  v10 = HSUtil::Buffer::_EmptyData;
  *(a3 + 32) = off_109048;
  *(a3 + 40) = v10;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) &= 0xFCu;
LABEL_23:
}

void sub_7AB28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, id);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  HSUtil::DeferredFn<HSMapper::_messageHandler(std::shared_ptr<HSUtil::Connection>,HSUtil::Buffer &&)::{lambda(void)#1}>::~DeferredFn((v3 - 72));
  std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](va);

  Message::~Message(va1);
  Message::~Message(va2);
  _Unwind_Resume(a1);
}

BOOL HSMapper::_decodeMessage(uint64_t a1, Readable *a2, Message *a3)
{
  std::mutex::lock((a1 + 304));
  HSUtil::Decoder::setReadable((a1 + 368), a2);
  if (*(a1 + 368))
  {
    v6 = 0;
LABEL_11:
    std::mutex::unlock((a1 + 304));
    return v6;
  }

  HSUtil::Decoder::decodeElement((a1 + 368), v10);
  v7 = *(a1 + 368);
  if (v7)
  {
    v6 = 0;
  }

  else
  {
    std::mutex::unlock((a1 + 304));
    HSUtil::Decoder::decodeCodable<Message>(v10, a3);
    v6 = v10[0] == 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  if (v7)
  {
    goto LABEL_11;
  }

  return v6;
}

id HSMapper::_objectForID(HSMapper *this, unint64_t a2)
{
  v6 = a2;
  os_unfair_lock_lock(this + 52);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(this + 11, &v6);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(this + 52);

  return v4;
}

void HSMapper::_popEncoderBuf(HSMapper *this@<X0>, int **a2@<X8>)
{
  std::mutex::lock((this + 216));
  v4 = *(this + 36);
  if (*(this + 35) == v4)
  {
    std::mutex::unlock((this + 216));
    operator new();
  }

  v7 = *(v4 - 8);
  v5 = (v4 - 8);
  v6 = v7;
  *v5 = 0;
  *a2 = v7;
  *(this + 36) = std::unique_ptr<HSUtil::EncoderBuf>::~unique_ptr[abi:ne200100](v5);
  if (!*v7)
  {
    *(v6 + 8) = *(v6 + 7);
    v8 = *(v6 + 17);
    v9 = *(v6 + 13);
    if (__CFADD__(v9, v8))
    {
      v10 = 14;
    }

    else
    {
      v10 = 0;
      *(v6 + 13) = v9 + v8;
      *(v6 + 17) = 0;
    }

    *v6 = v10;
  }

  std::mutex::unlock((this + 216));
}