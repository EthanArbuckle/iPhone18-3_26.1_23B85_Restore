void __cxx_global_var_init_24_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)101,(char)105,(char)103,(char)104,(char)116,(char)77,(char)109>::Key = HSUtil::CoderKey::New("heightMm", a2);
  }
}

void __cxx_global_var_init_67()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void sub_9FC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  HSUtil::Buffer::~Buffer(&a9);
  HSUtil::Decoder::~Decoder(&a19);
  _Unwind_Resume(a1);
}

void HSUtil::Decoder::decodeData(HSUtil::Decoder *this@<X0>, uint64_t a2@<X8>)
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
    HSUtil::Decoder::_readData(this, &v7, v5);
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

void HSUtil::Decoder::_readData(HSUtil::Decoder *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 6))
  {
    HSUtil::Decoder::_readDataByRef(this, a2, a3);
  }

  else
  {
    HSUtil::Decoder::_readDataByCopy(this, a2, a3);
  }
}

void __cxx_global_var_init_68()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)72,(char)73,(char)68,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key = HSUtil::CoderKey::New("HSTHIDEvents", a2);
  }
}

void sub_A026C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  v34 = v32;

  _Unwind_Resume(a1);
}

void sub_A0518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HSTBackboardBridge;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_A2124(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_A2778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

id getBool(NSDictionary *a1, NSString *a2)
{
  v2 = [(NSDictionary *)a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 BOOLValue];
  return v4;
}

void __cxx_global_var_init_69()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_57(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("touchMode", a2);
  }
}

void __cxx_global_var_init_16_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("screenOrientation", a2);
  }
}

void __cxx_global_var_init_17_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)111,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("motionState", a2);
  }
}

void __cxx_global_var_init_18_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key = HSUtil::CoderKey::New("touchHand", a2);
  }
}

void __cxx_global_var_init_19_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("wristState", a2);
  }
}

void __cxx_global_var_init_20_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("stockholmState", a2);
  }
}

void __cxx_global_var_init_21_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("wirelessChargingState", a2);
  }
}

void __cxx_global_var_init_22_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("stuckTouchDetectorState", a2);
  }
}

void __cxx_global_var_init_23_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)116,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("stucktouchDetectorState", a2);
  }
}

uint64_t HSTPipeline::Contact::encode(HSTPipeline::Contact *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE9u, 0);
  }

  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)73,(char)68>::Key, *this);
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)103,(char)101>::Key, *(this + 1));
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)102,(char)105,(char)110,(char)103,(char)101,(char)114>::Key, *(this + 2));
  HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)104,(char)97,(char)110,(char)100>::Key, *(this + 3));
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)102,(char)108,(char)97,(char)103,(char)115>::Key, *(this + 1));
  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, (this + 16));
  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)108,(char)111,(char)99,(char)105,(char)116,(char)121>::Key, (this + 28));
  HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101>::Key, *(this + 9));
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, *(this + 10));
  HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, *(this + 11));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)97,(char)122,(char)105,(char)109,(char)117,(char)116,(char)104>::Key, *(this + 12));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key, *(this + 13));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)122,(char)100,(char)101,(char)110,(char)115,(char)105,(char)116,(char)121>::Key, *(this + 14));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)108,(char)116>::Key, *(this + 15));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTPipeline::Position *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = HSTPipeline::Position::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

uint64_t HSTPipeline::Contact::decode(HSTPipeline::Contact *this, HSUtil::Decoder *a2)
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

LABEL_46:
    v5 = 0;
    goto LABEL_47;
  }

  *this = HSUtil::Decoder::decodeUInt(&v8, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)73,(char)68>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 1) = HSUtil::Decoder::decodeUInt(&v8, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)103,(char)101>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 2) = HSUtil::Decoder::decodeUInt(&v8, HSUtil::CoderKey::Literal<(char)102,(char)105,(char)110,(char)103,(char)101,(char)114>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 3) = HSUtil::Decoder::decodeInt(&v8, HSUtil::CoderKey::Literal<(char)104,(char)97,(char)110,(char)100>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8, HSUtil::CoderKey::Literal<(char)102,(char)108,(char)97,(char)103,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, (this + 16));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Velocity>(&v8, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)108,(char)111,(char)99,(char)105,(char)116,(char)121>::Key, (this + 28));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 9) = HSUtil::Decoder::decodeInt(&v8, HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 10) = HSUtil::Decoder::decodeUInt(&v8, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 11) = HSUtil::Decoder::decodeUInt(&v8, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 12) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)97,(char)122,(char)105,(char)109,(char)117,(char)116,(char)104>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 13) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 14) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)122,(char)100,(char)101,(char)110,(char)115,(char)105,(char)116,(char)121>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  *(this + 15) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)108,(char)116>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Contact.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Contact::decode();
    }

    goto LABEL_46;
  }

  v5 = 1;
LABEL_47:
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

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::Position *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTPipeline::Position>(v6, v7, a3);
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

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::Velocity>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::Velocity *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTPipeline::Velocity>(v6, v7, a3);
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

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::Position>(uint64_t a1, unint64_t *a2, HSTPipeline::Position *a3)
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
      if ((HSTPipeline::Position::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::Velocity>(uint64_t a1, unint64_t *a2, HSTPipeline::Velocity *a3)
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
      if ((HSTPipeline::Velocity::decode(a3, v11) & 1) == 0)
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

void __cxx_global_var_init_70()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_58(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_9_23(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)73,(char)68>::Key = HSUtil::CoderKey::New("contactID", a2);
  }
}

void __cxx_global_var_init_10_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)103,(char)101>::Key = HSUtil::CoderKey::New("stage", a2);
  }
}

void __cxx_global_var_init_11_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)105,(char)110,(char)103,(char)101,(char)114>::Key = HSUtil::CoderKey::New("finger", a2);
  }
}

void __cxx_global_var_init_12_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)97,(char)110,(char)100>::Key = HSUtil::CoderKey::New("hand", a2);
  }
}

void __cxx_global_var_init_13_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)108,(char)97,(char)103,(char)115>::Key = HSUtil::CoderKey::New("flags", a2);
  }
}

void __cxx_global_var_init_14_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("position", a2);
  }
}

void __cxx_global_var_init_15_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)108,(char)111,(char)99,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("velocity", a2);
  }
}

void __cxx_global_var_init_16_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101>::Key = HSUtil::CoderKey::New("force", a2);
  }
}

void __cxx_global_var_init_17_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("majorRadius", a2);
  }
}

void __cxx_global_var_init_18_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("minorRadius", a2);
  }
}

void __cxx_global_var_init_19_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)97,(char)122,(char)105,(char)109,(char)117,(char)116,(char)104>::Key = HSUtil::CoderKey::New("azimuth", a2);
  }
}

void __cxx_global_var_init_20_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key = HSUtil::CoderKey::New("zsignal", a2);
  }
}

void __cxx_global_var_init_21_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)122,(char)100,(char)101,(char)110,(char)115,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("zdensity", a2);
  }
}

void __cxx_global_var_init_22_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)108,(char)116>::Key = HSUtil::CoderKey::New("tilt", a2);
  }
}

uint64_t HSTContactStabilizerConfig::FloatRange::encode(HSTContactStabilizerConfig::FloatRange *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_writeTokenValue32(a2, 0x88u, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_writeTokenValue32(a2, 0x88u, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeContainerStop(a2);
        }
      }
    }
  }

  return 1;
}

uint64_t HSTContactStabilizerConfig::FloatRange::decode(HSTContactStabilizerConfig::FloatRange *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeArray(a2, &v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRange::decode();
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  *this = HSUtil::Decoder::decodeFloat(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRange::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeFloat(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRange::decode();
    }

    goto LABEL_10;
  }

  v4 = 1;
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

float HSUtil::Decoder::decodeFloat(HSUtil::Decoder *this)
{
  result = 0.0;
  if (*this <= 4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v6[0] = *(this + 9);
    Float = HSUtil::Decoder::_readFloat(this, v6);
    result = 0.0;
    if (!*this)
    {
      *(this + 9) = v6[0];
      return Float;
    }
  }

  return result;
}

uint64_t HSTContactStabilizerConfig::FloatRangeGain::encode(HSTContactStabilizerConfig::FloatRangeGain *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE9u, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRange const>(a2, HSUtil::CoderKey::Literal<(char)114,(char)97,(char)110,(char)103,(char)101>::Key, this);
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)103,(char)97,(char)105,(char)110>::Key, *(this + 2));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRange const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactStabilizerConfig::FloatRange *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTContactStabilizerConfig::FloatRange::encode(a3, v4);
    }
  }

  return result;
}

uint64_t HSTContactStabilizerConfig::FloatRangeGain::decode(HSTContactStabilizerConfig::FloatRangeGain *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeMap(a2, &v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRangeGain::decode();
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRange>(&v7, HSUtil::CoderKey::Literal<(char)114,(char)97,(char)110,(char)103,(char)101>::Key, this);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRangeGain::decode();
    }

    goto LABEL_10;
  }

  *(this + 2) = HSUtil::Decoder::decodeFloat(&v7, HSUtil::CoderKey::Literal<(char)103,(char)97,(char)105,(char)110>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::FloatRangeGain::decode();
    }

    goto LABEL_10;
  }

  v4 = 1;
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRange>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTContactStabilizerConfig::FloatRange *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig::FloatRange>(v6, v7, a3);
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

uint64_t HSTContactStabilizerConfig::encode(HSTContactStabilizerConfig *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRange const>(a2, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)69,(char)99,(char)99,(char)101,(char)110,(char)116,(char)114,(char)105,(char)99,(char)105,(char)116,(char)121>::Key, this);
  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRange const>(a2, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->excessiveMajorRadius);
  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRange const>(a2, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->excessiveMinorRadius);
  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRangeGain const>(a2, HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->unstableDeltaRadius);
  HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRangeGain const>(a2, HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)90,(char)65,(char)114,(char)101,(char)97>::Key, &this->unstableDeltaZArea);
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)111,(char)110,(char)103,(char)116,(char)101,(char)114,(char)109,(char)90,(char)65,(char)114,(char)101,(char)97,(char)73,(char)110,(char)105,(char)116>::Key, this->endLongtermZAreaInit);
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)69,(char)97,(char)114,(char)108,(char)121,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key, this->endEarlyDeadzone);
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)97,(char)116,(char)101,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key, this->endLateDeadzone);
  HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)68,(char)101,(char)108,(char)116,(char)97,(char)84,(char)111,(char)72,(char)105,(char)100,(char)101>::Key, this->maxDeltaToHide);
  HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, this->hysteresisRadius);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig::FloatRangeGain const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactStabilizerConfig::FloatRangeGain *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTContactStabilizerConfig::FloatRangeGain::encode(a3, v4);
    }
  }

  return result;
}

uint64_t HSTContactStabilizerConfig::decode(HSTContactStabilizerConfig *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeMap(a2, &v7);
  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRange>(&v7, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)69,(char)99,(char)99,(char)101,(char)110,(char)116,(char)114,(char)105,(char)99,(char)105,(char)116,(char)121>::Key, this);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

LABEL_31:
    v4 = 0;
    goto LABEL_32;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRange>(&v7, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->excessiveMajorRadius);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRange>(&v7, HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->excessiveMinorRadius);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRangeGain>(&v7, HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, &this->unstableDeltaRadius);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRangeGain>(&v7, HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)90,(char)65,(char)114,(char)101,(char)97>::Key, &this->unstableDeltaZArea);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  this->endLongtermZAreaInit = HSUtil::Decoder::decodeFloat(&v7, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)111,(char)110,(char)103,(char)116,(char)101,(char)114,(char)109,(char)90,(char)65,(char)114,(char)101,(char)97,(char)73,(char)110,(char)105,(char)116>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  this->endEarlyDeadzone = HSUtil::Decoder::decodeFloat(&v7, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)69,(char)97,(char)114,(char)108,(char)121,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  this->endLateDeadzone = HSUtil::Decoder::decodeFloat(&v7, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)97,(char)116,(char)101,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  this->maxDeltaToHide = HSUtil::Decoder::decodeInt(&v7, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)68,(char)101,(char)108,(char)116,(char)97,(char)84,(char)111,(char)72,(char)105,(char)100,(char)101>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  this->hysteresisRadius = HSUtil::Decoder::decodeInt(&v7, HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactStabilizerConfig::decode();
    }

    goto LABEL_31;
  }

  v4 = 1;
LABEL_32:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig::FloatRangeGain>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTContactStabilizerConfig::FloatRangeGain *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig::FloatRangeGain>(v6, v7, a3);
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

void sub_A53E8(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

void ContactStabilizer::update(ContactStabilizer *this, uint64_t a2, const Contact *a3)
{
  stage = a3->stage;
  v6 = stage - 3;
  if (stage < 3)
  {
    goto LABEL_7;
  }

  if ((*(this + 136) & 1) == 0)
  {
    if (v6 >= 2)
    {
      goto LABEL_17;
    }

LABEL_7:
    *(this + 136) = stage > 2;
    goto LABEL_8;
  }

  if (v6 < 2)
  {
LABEL_17:
    v7 = *(this + 137);
    goto LABEL_18;
  }

  v7 = 0;
  v8 = *(this + 137);
  *(this + 136) = 0;
  if ((v8 & 1) == 0)
  {
LABEL_18:
    InstabilityFilter::update((this + 24), a2, a3, v7 & 1);
    *(this + 1) = ContactStabilizer::_capDelta((this + 8), (*(this + 6) * *(*(this + 2) + 60)), &a3->position, v11);
    v13 = ContactStabilizer::_applyHysteresis((this + 8), *(*(this + 2) + 64), &a3->position, v12);
    if (*(this + 2) == v13)
    {
      v14 = *(this + 3);
      *(this + 1) = v13;
      *(this + 137) = v14 != HIDWORD(v13);
      if (v14 == HIDWORD(v13))
      {
        return;
      }
    }

    else
    {
      *(this + 137) = 1;
      *(this + 1) = v13;
    }

    *this = v13;
    return;
  }

LABEL_8:
  position = a3->position;
  *this = position;
  *(this + 1) = position;
  *(this + 137) = 0;
  if (*(this + 64) == 1)
  {
    *(this + 64) = 0;
  }

  if (*(this + 96) == 1)
  {
    *(this + 96) = 0;
  }

  *(this + 6) = 0;
  if ((*(this + 112) & 1) == 0)
  {
    *(this + 112) = 1;
  }

  *(this + 13) = 0;
  v10 = (this + 24);

  InstabilityFilter::update(v10, a2, a3, 0);
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactStabilizerConfig>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactStabilizerConfig *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTContactStabilizerConfig::encode(a3, v4);
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeArrayStart(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, int a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSUtil::Encoder::_encodeArrayStart(v4, a3);
    }
  }

  return result;
}

void sub_A5BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  HSUtil::Decoder::~Decoder(&a9);
  HSUtil::Decoder::~Decoder(&a19);
  _Unwind_Resume(a1);
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTContactStabilizerConfig>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTContactStabilizerConfig *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig>(v6, v7, a3);
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

unint64_t *HSUtil::Decoder::decodeArray@<X0>(unint64_t *this@<X0>, const HSUtil::CoderKey *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this >= 5 || (v4 = this, v11 = this[9], this = HSUtil::Decoder::_findKey(this, &v11, a2), *v4))
  {
    *a3 = 5;
    *(a3 + 8) = a3;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
  }

  else
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v5;
    v10 = v5;
    v7 = v5;
    v8 = v5;
    v6 = v5;
    HSUtil::Decoder::_readArray(v4, &v11, &v6);
    if (*v4 == 3)
    {
      *v4 = 13;
      *a3 = 5;
      *(a3 + 8) = a3;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
    }

    else
    {
      v4[9] = v11;
      HSUtil::Decoder::Decoder(a3, &v6);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    this = v7;
    *&v7 = 0;
    if (this)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](this);
      operator delete();
    }
  }

  return this;
}

uint64_t HSUtil::Decoder::decodeCodable<ContactStabilizer>(uint64_t result, ContactStabilizer *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<ContactStabilizer>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

void sub_A627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Decoder::decodeCodable<StatContact>(uint64_t result, StatContact *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<StatContact>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t StatContact::encode(StatContact *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v8 = *(a2 + 17);
    DWORD2(v8) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v8);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeUInt(a2, *this);
      if (!*a2)
      {
        v4 = HSTPipeline::Position::encode((this + 4), a2);
        if (!*a2 && (v4 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (*a2)
        {
          return 1;
        }

        v6 = HSTPipeline::Position::encode((this + 12), a2);
        if (!*a2 && (v6 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (*a2)
        {
          return 1;
        }

        v7 = HSTPipeline::Position::encode((this + 20), a2);
        if (*a2 || (v7 & 1) != 0)
        {
          if (!*a2)
          {
            HSUtil::Encoder::_encodeContainerStop(a2);
          }
        }

        else
        {
LABEL_6:
          *a2 = 10;
        }
      }
    }
  }

  return 1;
}

uint64_t StatContact::decode(StatContact *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      StatContact::decode();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  *this = HSUtil::Decoder::decodeUInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      StatContact::decode();
    }

    goto LABEL_16;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, (this + 4));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      StatContact::decode();
    }

    goto LABEL_16;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, (this + 12));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      StatContact::decode();
    }

    goto LABEL_16;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, (this + 20));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      StatContact::decode();
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_17:
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

uint64_t HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(uint64_t result, HSTPipeline::Position *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTPipeline::Position>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

void InstabilityFilter::update(InstabilityFilter *this, uint64_t a2, const Contact *a3, int a4)
{
  v6 = (this + 48);
  *(this + 3) = *(this + 1);
  *(this + 57) = *(this + 25);
  v7 = vdiv_f32(vcvt_f32_s32(*&a3->majorRadius), vdup_n_s32(0x447A0000u));
  zsignal = a3->zsignal;
  if ((*(this + 40) & 1) == 0)
  {
    *(this + 40) = 1;
  }

  *(this + 2) = a2;
  *(this + 3) = v7;
  *(this + 8) = zsignal;
  stage = a3->stage;
  if ((stage - 1) >= 4)
  {
    if ((*(this + 72) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (*v6 <= a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((*(this + 72) & 1) != 0 && (stage - 3) <= 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  *v6 = *(this + 1);
  *(this + 57) = *(this + 25);
  *(this + 10) = a2;
  *(this + 88) = 1;
  *(this + 24) = zsignal;
  *(this + 25) = v7.i32[0];
  *(this + 26) = 0;
  *this = 0;
LABEL_10:
  if (*(this + 88) == 1)
  {
    v10 = InstabilityFilter::_timeInRange(this);
    v11 = *(this + 1);
    v12 = (*(this + 2) - *(this + 6)) / 1000000.0;
    v13 = v12 / 0.00800000038;
    v14 = pow(flt_D8670[v10 > v11[12]], v13);
    v15 = *(this + 8);
    v16 = 1.0;
    v17 = (v15 * (1.0 - v14)) + (v14 * *(this + 24));
    *(this + 24) = v17;
    v18 = pow(0.949999988, v13);
    *(this + 25) = (*(this + 6) * (1.0 - v18)) + (v18 * *(this + 25));
    v19 = *(this + 16);
    if (v15 <= v19)
    {
      v20 = v6;
    }

    else
    {
      v20 = (this + 16);
    }

    v21 = v20[4];
    if (v21 > 0.0)
    {
      v22 = fabsf(((v15 - v19) * 100.0) / v21);
      v23 = 1.0;
      if (a4)
      {
        v23 = v11[11];
      }

      v24 = v23 * v11[9];
      v25 = 0.0;
      if (v22 > v24)
      {
        v26 = v23 * v11[10];
        v25 = 1.0;
        if (v22 < v26)
        {
          v25 = ((v22 - v24) / (v26 - v24));
        }
      }

      v27 = pow(v25, 1.5);
      if (((v15 < v17) & a4) != 0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v27;
      }

      v29 = v11[8] + -1.0;
      v30 = InstabilityFilter::_timeInRange(this);
      v31 = 1.0;
      if (v30 > 0.0)
      {
        v31 = 0.0;
        if (v30 < 0.5)
        {
          v31 = (0.5 - v30) + (0.5 - v30);
        }
      }

      v32 = (v29 * v31) + 1.0;
      v33 = *(this + 6);
      v34 = *(this + 7);
      v35 = vabds_f32(v33, *(this + 14));
      v36 = vabds_f32(v34, *(this + 15));
      if (v35 > v36)
      {
        v36 = v35;
      }

      v11 = *(this + 1);
      v37 = v32 * v11[6];
      v38 = 0.0;
      if (v36 > v37)
      {
        v38 = ((v36 - v37) / ((v32 * v11[7]) - v37));
      }

      v39 = pow(v38, 1.5);
      v40 = *(this + 26);
      v41 = 0.25;
      if (v40 >= v39)
      {
        v41 = 0.75;
        if (*(this + 8) < *(this + 24))
        {
          v41 = 0.5;
        }
      }

      v42 = (*(this + 2) - *(this + 6)) / 1000000.0;
      v43 = pow(v41, v42 / 0.00800000038);
      v44 = ((1.0 - v43) * v39) + (v43 * v40);
      *(this + 26) = v44;
      v46 = v11[2];
      v45 = v11[3];
      v47 = 0.0;
      v48 = 0.0;
      if (v33 > v46)
      {
        v48 = (v33 - v46) / (v45 - v46);
      }

      v50 = v11[4];
      v49 = v11[5];
      if (v34 > v50)
      {
        v47 = (v34 - v50) / (v49 - v50);
      }

      if (v34 <= 6.0)
      {
        v51 = 1.0;
        if (v33 > 6.0)
        {
          v51 = v33 / 6.0;
        }
      }

      else
      {
        v51 = v33 / v34;
      }

      v52 = 0.0;
      if (v51 > *v11)
      {
        v52 = (v51 - *v11) / (v11[1] - *v11);
      }

      v53 = *(this + 25);
      v54 = (v53 - v49) / ((v45 + 0.5) - v49);
      if (v53 <= v49)
      {
        v54 = 0.0;
      }

      if (v44 <= v52)
      {
        v44 = v52;
      }

      if (v47 <= v48)
      {
        v47 = v48;
      }

      if (v44 <= v47)
      {
        v44 = v47;
      }

      if (v44 <= v54)
      {
        v44 = v54;
      }

      if (v28 <= v44)
      {
        v16 = v44;
      }

      else
      {
        v16 = v28;
      }
    }

    v55 = 0.0;
    if ((a4 & 1) == 0)
    {
      v56 = InstabilityFilter::_timeInRange(this);
      if (v56 <= 0.0)
      {
        v59 = 1.0;
        v58 = 0.2;
      }

      else
      {
        v57 = v11[13];
        v58 = 0.0;
        v59 = 0.0;
        if (v57 > v56)
        {
          v59 = (v57 - v56) / v57;
        }

        v60 = v11[14];
        if (v60 > v56)
        {
          v58 = ((v60 - v56) / v60) * 0.2;
        }
      }

      if (v59 <= v58)
      {
        v55 = v58;
      }

      else
      {
        v55 = v59;
      }
    }

    if (v16 > v55)
    {
      v55 = v16;
    }

    *this = v55;
  }
}

uint64_t ContactStabilizer::_capDelta(ContactStabilizer *this, const Position *a2, unsigned int *a3, const Position *a4)
{
  v4 = *(this + 1);
  v5 = *a3;
  v6 = a3[1];
  if ((*this - *a3) > a2)
  {
    v5 = *this - a2;
  }

  LODWORD(v7) = *this + a2;
  if ((*a3 - *this) > a2)
  {
    v7 = v7;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 - v4;
  if ((v4 - v6) > a2)
  {
    v6 = v4 - a2;
  }

  LODWORD(v9) = v4 + a2;
  if (v8 > a2)
  {
    v9 = v9;
  }

  else
  {
    v9 = v6;
  }

  return v7 | (v9 << 32);
}

uint64_t ContactStabilizer::_applyHysteresis(ContactStabilizer *this, const Position *a2, _DWORD *a3, const Position *a4)
{
  LODWORD(v4) = *this;
  LODWORD(v5) = *(this + 1);
  v6 = a3[1];
  if (*this - *a3 > a2)
  {
    LODWORD(v4) = *a3 + a2;
  }

  if (*a3 - *this > a2)
  {
    v4 = (*a3 - a2);
  }

  else
  {
    v4 = v4;
  }

  v7 = v6 - v5;
  if (v5 - v6 > a2)
  {
    LODWORD(v5) = v6 + a2;
  }

  v8 = v6 - a2;
  if (v7 > a2)
  {
    v5 = v8;
  }

  else
  {
    v5 = v5;
  }

  return v4 | (v5 << 32);
}

float InstabilityFilter::_timeInRange(InstabilityFilter *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    InstabilityFilter::_timeInRange();
  }

  return (*(this + 2) - *(this + 10)) / 1000000.0;
}

uint64_t HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig::FloatRange>(uint64_t a1, unint64_t *a2, HSTContactStabilizerConfig::FloatRange *a3)
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
      if ((HSTContactStabilizerConfig::FloatRange::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig::FloatRangeGain>(uint64_t a1, unint64_t *a2, HSTContactStabilizerConfig::FloatRangeGain *a3)
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
      if ((HSTContactStabilizerConfig::FloatRangeGain::decode(a3, v11) & 1) == 0)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<ContactStabilizer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<StatContact>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ContactStabilizer::encode(ContactStabilizer *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, this);
  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114>::Key, (this + 8));
  HSUtil::Encoder::encodeCodable<InstabilityFilter const>(a2, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)70,(char)105,(char)108,(char)116,(char)101,(char)114>::Key, (this + 24));
  HSUtil::Encoder::encodeBool(a2, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key, *(this + 136));
  HSUtil::Encoder::encodeBool(a2, HSUtil::CoderKey::Literal<(char)115,(char)108,(char)105,(char)100,(char)87,(char)104,(char)105,(char)108,(char)101,(char)69,(char)110,(char)103,(char)97,(char)103,(char)101,(char)100>::Key, *(this + 137));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<InstabilityFilter const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, InstabilityFilter *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = InstabilityFilter::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

uint64_t InstabilityFilter::encode(InstabilityFilter *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key, *this);
  if (*(this + 40) == 1)
  {
    HSUtil::Encoder::encodeCodable<InstabilityFilter::StabilizerContact const>(a2, HSUtil::CoderKey::Literal<(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116>::Key, (this + 16));
  }

  else
  {
    HSUtil::Encoder::encodeNull(a2, HSUtil::CoderKey::Literal<(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116>::Key);
  }

  if (*(this + 72) == 1)
  {
    HSUtil::Encoder::encodeCodable<InstabilityFilter::StabilizerContact const>(a2, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115>::Key, (this + 48));
  }

  else
  {
    HSUtil::Encoder::encodeNull(a2, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115>::Key);
  }

  if (*(this + 88) == 1)
  {
    HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101>::Key, *(this + 10));
  }

  else
  {
    HSUtil::Encoder::encodeNull(a2, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101>::Key);
  }

  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)90,(char)97,(char)114,(char)101,(char)97>::Key, *(this + 24));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)77,(char)97,(char)106,(char)111,(char)114,(char)69,(char)108,(char)108,(char)105,(char)112,(char)115,(char)101,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, *(this + 25));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115,(char)73,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key, *(this + 26));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<InstabilityFilter::StabilizerContact const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, InstabilityFilter::StabilizerContact *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = InstabilityFilter::StabilizerContact::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeNull(HSUtil::Encoder *this, const HSUtil::CoderKey *a2)
{
  if (!*this)
  {
    v6 = v2;
    v7 = v3;
    v4 = this;
    this = HSUtil::Encoder::_encodeKey(this, a2);
    if (!*v4)
    {
      __src = -116;
      return HSUtil::Encoder::_write(v4, v4 + 17, &__src, 1uLL);
    }
  }

  return this;
}

uint64_t InstabilityFilter::StabilizerContact::encode(InstabilityFilter::StabilizerContact *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE9u, 0);
  }

  HSUtil::Encoder::encodeInt(a2, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101>::Key, *this);
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, *(this + 2));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key, *(this + 3));
  HSUtil::Encoder::encodeFloat(a2, HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key, *(this + 4));
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

uint64_t HSUtil::Decoder::_readCodable<HSTContactStabilizerConfig>(uint64_t a1, unint64_t *a2, HSTContactStabilizerConfig *a3)
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
      if ((HSTContactStabilizerConfig::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<ContactStabilizer>(uint64_t a1, unint64_t *a2, ContactStabilizer *a3)
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
      if ((ContactStabilizer::decode(a3, v11) & 1) == 0)
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

uint64_t ContactStabilizer::decode(ContactStabilizer *this, HSUtil::Decoder *a2)
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, this);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

    goto LABEL_19;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v8, HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114>::Key, (this + 8));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

    goto LABEL_19;
  }

  HSUtil::Decoder::decodeCodable<InstabilityFilter>(&v8, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)70,(char)105,(char)108,(char)116,(char)101,(char)114>::Key, (this + 24));
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

    goto LABEL_19;
  }

  *(this + 136) = HSUtil::Decoder::decodeBool(&v8, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

    goto LABEL_19;
  }

  *(this + 137) = HSUtil::Decoder::decodeBool(&v8, HSUtil::CoderKey::Literal<(char)115,(char)108,(char)105,(char)100,(char)87,(char)104,(char)105,(char)108,(char)101,(char)69,(char)110,(char)103,(char)97,(char)103,(char)101,(char)100>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ContactStabilizer::decode();
    }

    goto LABEL_19;
  }

  v5 = 1;
LABEL_20:
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

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<InstabilityFilter>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, InstabilityFilter *a3)
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
      result = HSUtil::Decoder::_readCodable<InstabilityFilter>(v6, v7, a3);
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

uint64_t HSUtil::Decoder::_readCodable<InstabilityFilter>(uint64_t a1, unint64_t *a2, InstabilityFilter *a3)
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
      if ((InstabilityFilter::decode(a3, v11) & 1) == 0)
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

uint64_t InstabilityFilter::decode(InstabilityFilter *this, HSUtil::Decoder *a2)
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  *this = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  if ((*(this + 40) & 1) == 0)
  {
    *(this + 40) = 1;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  if (HSUtil::Decoder::getElementType(&v8, HSUtil::CoderKey::Literal<(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116>::Key) == 140)
  {
    if (*(this + 40) == 1)
    {
      *(this + 40) = 0;
    }
  }

  else
  {
    HSUtil::Decoder::decodeCodable<InstabilityFilter::StabilizerContact>(&v8, HSUtil::CoderKey::Literal<(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116>::Key, (this + 16));
  }

  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  if ((*(this + 72) & 1) == 0)
  {
    *(this + 72) = 1;
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (HSUtil::Decoder::getElementType(&v8, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115>::Key) == 140)
  {
    if (*(this + 72) == 1)
    {
      *(this + 72) = 0;
    }
  }

  else
  {
    HSUtil::Decoder::decodeCodable<InstabilityFilter::StabilizerContact>(&v8, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115>::Key, (this + 48));
  }

  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  if (HSUtil::Decoder::getElementType(&v8, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101>::Key) == 140)
  {
    if (*(this + 88) == 1)
    {
      *(this + 88) = 0;
    }
  }

  else
  {
    *(this + 10) = HSUtil::Decoder::decodeInt(&v8, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101>::Key);
    *(this + 88) = 1;
  }

  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  *(this + 24) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)90,(char)97,(char)114,(char)101,(char)97>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  *(this + 25) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)77,(char)97,(char)106,(char)111,(char)114,(char)69,(char)108,(char)108,(char)105,(char)112,(char)115,(char)101,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  *(this + 26) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115,(char)73,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::decode();
    }

    goto LABEL_41;
  }

  v5 = 1;
LABEL_42:
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

uint64_t HSUtil::Decoder::getElementType(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
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

  result = HSUtil::Decoder::_readType(this, v6);
  if (*this == 3)
  {
    result = 0;
    *this = 13;
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<InstabilityFilter::StabilizerContact>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, InstabilityFilter::StabilizerContact *a3)
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
      result = HSUtil::Decoder::_readCodable<InstabilityFilter::StabilizerContact>(v6, v7, a3);
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

uint64_t HSUtil::Decoder::_readCodable<InstabilityFilter::StabilizerContact>(uint64_t a1, unint64_t *a2, InstabilityFilter::StabilizerContact *a3)
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
      if ((InstabilityFilter::StabilizerContact::decode(a3, v11) & 1) == 0)
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

uint64_t InstabilityFilter::StabilizerContact::decode(InstabilityFilter::StabilizerContact *this, HSUtil::Decoder *a2)
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::StabilizerContact::decode();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  *this = HSUtil::Decoder::decodeInt(&v8, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::StabilizerContact::decode();
    }

    goto LABEL_16;
  }

  *(this + 2) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::StabilizerContact::decode();
    }

    goto LABEL_16;
  }

  *(this + 3) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::StabilizerContact::decode();
    }

    goto LABEL_16;
  }

  *(this + 4) = HSUtil::Decoder::decodeFloat(&v8, HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTContactStabilizer.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      InstabilityFilter::StabilizerContact::decode();
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_17:
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

uint64_t HSUtil::Decoder::_readCodable<StatContact>(uint64_t a1, unint64_t *a2, StatContact *a3)
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
      if ((StatContact::decode(a3, v11) & 1) == 0)
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

void __cxx_global_var_init_71()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_59(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("instability", a2);
  }
}

void __cxx_global_var_init_16_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("current", a2);
  }
}

void __cxx_global_var_init_17_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115>::Key = HSUtil::CoderKey::New("previous", a2);
  }
}

void __cxx_global_var_init_18_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101>::Key = HSUtil::CoderKey::New("inRangeTime", a2);
  }
}

void __cxx_global_var_init_19_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)90,(char)97,(char)114,(char)101,(char)97>::Key = HSUtil::CoderKey::New("longTermZarea", a2);
  }
}

void __cxx_global_var_init_20_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)84,(char)101,(char)114,(char)109,(char)77,(char)97,(char)106,(char)111,(char)114,(char)69,(char)108,(char)108,(char)105,(char)112,(char)115,(char)101,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("longTermMajorEllipseRadius", a2);
  }
}

void __cxx_global_var_init_21_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115,(char)73,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("previousRadiusInstability", a2);
  }
}

void __cxx_global_var_init_22_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101>::Key = HSUtil::CoderKey::New("time", a2);
  }
}

void __cxx_global_var_init_23_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("majorRadius", a2);
  }
}

void __cxx_global_var_init_24_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("minorRadius", a2);
  }
}

void __cxx_global_var_init_25_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)122,(char)115,(char)105,(char)103,(char)110,(char)97,(char)108>::Key = HSUtil::CoderKey::New("zsignal", a2);
  }
}

void __cxx_global_var_init_26_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("position", a2);
  }
}

void __cxx_global_var_init_27_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114>::Key = HSUtil::CoderKey::New("hysteresisCenter", a2);
  }
}

void __cxx_global_var_init_28_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)110,(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)70,(char)105,(char)108,(char)116,(char)101,(char)114>::Key = HSUtil::CoderKey::New("instabilityFilter", a2);
  }
}

void __cxx_global_var_init_29_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("touching", a2);
  }
}

void __cxx_global_var_init_30_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)108,(char)105,(char)100,(char)87,(char)104,(char)105,(char)108,(char)101,(char)69,(char)110,(char)103,(char)97,(char)103,(char)101,(char)100>::Key = HSUtil::CoderKey::New("slidWhileEngaged", a2);
  }
}

void __cxx_global_var_init_33_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("range", a2);
  }
}

void __cxx_global_var_init_34_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)103,(char)97,(char)105,(char)110>::Key = HSUtil::CoderKey::New("gain", a2);
  }
}

void __cxx_global_var_init_36_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)69,(char)99,(char)99,(char)101,(char)110,(char)116,(char)114,(char)105,(char)99,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("excessiveEccentricity", a2);
  }
}

void __cxx_global_var_init_37_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)97,(char)106,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("excessiveMajorRadius", a2);
  }
}

void __cxx_global_var_init_38_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)105,(char)118,(char)101,(char)77,(char)105,(char)110,(char)111,(char)114,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("excessiveMinorRadius", a2);
  }
}

void __cxx_global_var_init_39_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("unstableDeltaRadius", a2);
  }
}

void __cxx_global_var_init_40_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)115,(char)116,(char)97,(char)98,(char)108,(char)101,(char)68,(char)101,(char)108,(char)116,(char)97,(char)90,(char)65,(char)114,(char)101,(char)97>::Key = HSUtil::CoderKey::New("unstableDeltaZArea", a2);
  }
}

void __cxx_global_var_init_41_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)111,(char)110,(char)103,(char)116,(char)101,(char)114,(char)109,(char)90,(char)65,(char)114,(char)101,(char)97,(char)73,(char)110,(char)105,(char)116>::Key = HSUtil::CoderKey::New("endLongtermZAreaInit", a2);
  }
}

void __cxx_global_var_init_42_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)69,(char)97,(char)114,(char)108,(char)121,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key = HSUtil::CoderKey::New("endEarlyDeadzone", a2);
  }
}

void __cxx_global_var_init_43_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)101,(char)110,(char)100,(char)76,(char)97,(char)116,(char)101,(char)68,(char)101,(char)97,(char)100,(char)122,(char)111,(char)110,(char)101>::Key = HSUtil::CoderKey::New("endLateDeadzone", a2);
  }
}

void __cxx_global_var_init_44_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)68,(char)101,(char)108,(char)116,(char)97,(char)84,(char)111,(char)72,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("maxDeltaToHide", a2);
  }
}

void __cxx_global_var_init_45_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)121,(char)115,(char)116,(char)101,(char)114,(char)101,(char)115,(char)105,(char)115,(char)82,(char)97,(char)100,(char)105,(char)117,(char)115>::Key = HSUtil::CoderKey::New("hysteresisRadius", a2);
  }
}

void __cxx_global_var_init_46_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key = HSUtil::CoderKey::New("config", a2);
  }
}

void __cxx_global_var_init_47_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)122,(char)101,(char)114,(char)115>::Key = HSUtil::CoderKey::New("stabilizers", a2);
  }
}

void __cxx_global_var_init_80(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)67,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)83,(char)116,(char)97,(char)98,(char)105,(char)108,(char)105,(char)122,(char)101,(char)114,(char)83,(char)116,(char)97,(char)116,(char)115>::Key = HSUtil::CoderKey::New("HSTContactStabilizerStats", a2);
  }
}

void __cxx_global_var_init_72()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_60(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_73()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_61(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t HSTHIDEventGeneratorConfig::encode(HSTHIDEventGeneratorConfig *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE9u, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key, this);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

uint64_t HSTHIDEventGeneratorConfig::decode(HSTHIDEventGeneratorConfig *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeMap(a2, &v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTHIDEventGeneratorConfig::decode();
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceSize>(&v7, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key, this);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTHIDEventGenerator.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTHIDEventGeneratorConfig::decode();
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceSize>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::SurfaceSize *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTPipeline::SurfaceSize>(v6, v7, a3);
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

unint64_t getAveragePositionFromContacts(const Contact *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  if (a2)
  {
    p_position = &a1->position;
    do
    {
      if (BYTE1(p_position[-2].x) - 3 <= 1)
      {
        v3 = vadd_s32(*p_position, v3);
        ++v2;
      }

      p_position += 8;
      --a2;
    }

    while (a2);
  }

  return (v3.i32[0] / v2) | ((v3.i32[1] / v2) << 32);
}

uint64_t eventFlagsFromContact(const Contact *a1)
{
  p_flags = &a1->flags;
  v2 = vld1q_dup_f32(p_flags);
  v3 = vorrq_s8(vandq_s8(vshlq_u32(v2, xmmword_D8830), xmmword_D8860), vandq_s8(vshlq_u32(v2, xmmword_D8840), xmmword_D8850));
  *v3.i8 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  return (v3.i32[0] | v3.i32[1]);
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTHIDEventGeneratorConfig>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTHIDEventGeneratorConfig *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTHIDEventGeneratorConfig::encode(a3, v4);
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactFrameMetadata *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = HSTContactFrameMetadata::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

void sub_AD6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  HSUtil::Decoder::~Decoder(&a9);
  HSUtil::Decoder::~Decoder(&a19);
  _Unwind_Resume(a1);
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTHIDEventGeneratorConfig>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTHIDEventGeneratorConfig *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTHIDEventGeneratorConfig>(v6, v7, a3);
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

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTContactFrameMetadata *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTContactFrameMetadata>(v6, v7, a3);
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

uint64_t HSUtil::Decoder::decodeCodable<HSTPipeline::Contact>(uint64_t result, HSTPipeline::Contact *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTPipeline::Contact>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::SurfaceSize>(uint64_t a1, unint64_t *a2, HSTPipeline::SurfaceSize *a3)
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
      if ((HSTPipeline::SurfaceSize::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTHIDEventGeneratorConfig>(uint64_t a1, unint64_t *a2, HSTHIDEventGeneratorConfig *a3)
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
      if ((HSTHIDEventGeneratorConfig::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTContactFrameMetadata>(uint64_t a1, unint64_t *a2, HSTContactFrameMetadata *a3)
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
      if ((HSTContactFrameMetadata::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::Contact>(uint64_t a1, unint64_t *a2, HSTPipeline::Contact *a3)
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
      if ((HSTPipeline::Contact::decode(a3, v11) & 1) == 0)
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

void __cxx_global_var_init_74()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_62(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key = HSUtil::CoderKey::New("surfaceSize", a2);
  }
}

void __cxx_global_var_init_18_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)103>::Key = HSUtil::CoderKey::New("config", a2);
  }
}

void __cxx_global_var_init_19_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)77,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("frameMetadata", a2);
  }
}

void __cxx_global_var_init_20_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)108,(char)97,(char)114,(char)103,(char)101,(char)66,(char)111,(char)100,(char)121,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key = HSUtil::CoderKey::New("largeBodyActive", a2);
  }
}

void __cxx_global_var_init_21_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)105,(char)115,(char)97,(char)98,(char)108,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116,(char)115>::Key = HSUtil::CoderKey::New("disableEvents", a2);
  }
}

void __cxx_global_var_init_22_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key = HSUtil::CoderKey::New("touchMode", a2);
  }
}

void __cxx_global_var_init_23_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key = HSUtil::CoderKey::New("contacts", a2);
  }
}

void sub_AEA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

void HSUtil::Decoder::decodeString(HSUtil::Decoder *this@<X0>, const HSUtil::CoderKey *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this >= 5 || (v8 = *(this + 9), HSUtil::Decoder::_findKey(this, &v8, a2), *this))
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
    v7 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[2] = v5;
    v6[3] = v5;
    v6[0] = v5;
    v6[1] = v5;
    HSUtil::Decoder::_readString(this, &v8, v6);
    if (*this == 3)
    {
      *this = 13;
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
      *(this + 9) = v8;
      HSUtil::Buffer::Buffer(a3, v6);
    }

    HSUtil::Buffer::~Buffer(v6);
  }
}

void sub_AF058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HSUtil::Buffer::~Buffer(va);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_75()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_69(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_63(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_77(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)70,(char)101,(char)101,(char)100,(char)98,(char)97,(char)99,(char)107,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTFeedbackEvent", a2);
  }
}

void __cxx_global_var_init_86_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)73,(char)110,(char)116,(char)101,(char)103,(char)101,(char)114,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTIntegerEvent", a2);
  }
}

void __cxx_global_var_init_87_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)97,(char)108,(char)117,(char)101>::Key = HSUtil::CoderKey::New("value", a2);
  }
}

void __cxx_global_var_init_98(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)105,(char)103,(char)110,(char)101,(char)100,(char)73,(char)110,(char)116,(char)101,(char)103,(char)101,(char)114,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTSignedIntegerEvent", a2);
  }
}

void __cxx_global_var_init_104(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)101,(char)116,(char)80,(char)114,(char)111,(char)112,(char)101,(char)114,(char)116,(char)121,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTSetPropertyEvent", a2);
  }
}

void __cxx_global_var_init_105(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key = HSUtil::CoderKey::New("key", a2);
  }
}

void __cxx_global_var_init_116(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)71,(char)101,(char)116,(char)80,(char)114,(char)111,(char)112,(char)101,(char)114,(char)116,(char)121,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTGetPropertyEvent", a2);
  }
}

void __cxx_global_var_init_123(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)67,(char)111,(char)112,(char)121,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTCopyEvent", a2);
  }
}

void __cxx_global_var_init_152(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)82,(char)101,(char)115,(char)101,(char)116,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTResetEvent", a2);
  }
}

void __cxx_global_var_init_157(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)65,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTActivateEvent", a2);
  }
}

void __cxx_global_var_init_162_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)67,(char)97,(char)110,(char)99,(char)101,(char)108,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTCancelEvent", a2);
  }
}

void __cxx_global_var_init_167_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)78,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTNotificationEvent", a2);
  }
}

void __cxx_global_var_init_180(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)86,(char)101,(char)110,(char)100,(char)111,(char)114,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTVendorEvent", a2);
  }
}

void __cxx_global_var_init_197(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)101,(char)116,(char)82,(char)101,(char)112,(char)111,(char)114,(char)116,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTSetReportEvent", a2);
  }
}

void __cxx_global_var_init_211_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)87,(char)97,(char)107,(char)101,(char)83,(char)121,(char)115,(char)116,(char)101,(char)109,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTWakeSystemEvent", a2);
  }
}

void __cxx_global_var_init_212_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)97,(char)112,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("tapPosition", a2);
  }
}

void __cxx_global_var_init_213_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)119,(char)105,(char)112,(char)101,(char)68,(char)105,(char)114,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("swipeDirection", a2);
  }
}

void __cxx_global_var_init_214_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)80,(char)114,(char)101,(char)115,(char)115,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("longPressPosition", a2);
  }
}

void __cxx_global_var_init_227_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)84,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTTouchModeEvent", a2);
  }
}

void __cxx_global_var_init_232_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTMotionStateEvent", a2);
  }
}

void __cxx_global_var_init_239_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTScreenOrientationEvent", a2);
  }
}

void __cxx_global_var_init_245_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)72,(char)111,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTHostStateEvent", a2);
  }
}

void __cxx_global_var_init_276(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)87,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTWristStateEvent", a2);
  }
}

void __cxx_global_var_init_282(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)84,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTTouchHandEvent", a2);
  }
}

void __cxx_global_var_init_288(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTStockholmStateEvent", a2);
  }
}

void __cxx_global_var_init_294(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)87,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTWirelessChargingStateEvent", a2);
  }
}

void __cxx_global_var_init_300(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)85,(char)83,(char)66,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTUSBChargingStateEvent", a2);
  }
}

void __cxx_global_var_init_306(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTStuckTouchDetectorStateEvent", a2);
  }
}

void __cxx_global_var_init_312(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)71,(char)101,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTGetStateEvent", a2);
  }
}

void __cxx_global_var_init_313(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)104,(char)97,(char)110,(char)100,(char)108,(char)101,(char)100>::Key = HSUtil::CoderKey::New("handled", a2);
  }
}

void __cxx_global_var_init_320(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)71,(char)101,(char)116,(char)87,(char)97,(char)116,(char)101,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTGetWaterStateEvent", a2);
  }
}

void __cxx_global_var_init_321(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)97,(char)116,(char)101,(char)114>::Key = HSUtil::CoderKey::New("water", a2);
  }
}

void __cxx_global_var_init_322(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)100,(char)101,(char)110,(char)99,(char)101>::Key = HSUtil::CoderKey::New("confidence", a2);
  }
}

void __cxx_global_var_init_330(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)71,(char)101,(char)116,(char)68,(char)101,(char)98,(char)117,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTGetDebugStateEvent", a2);
  }
}

void __cxx_global_var_init_331(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)101,(char)98,(char)117,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101,(char)115>::Key = HSUtil::CoderKey::New("debugStates", a2);
  }
}

void __cxx_global_var_init_340(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)83,(char)121,(char)115,(char)116,(char)101,(char)109,(char)80,(char)111,(char)119,(char)101,(char)114,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTSystemPowerEvent", a2);
  }
}

void __cxx_global_var_init_346(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)69,(char)120,(char)116,(char)101,(char)114,(char)110,(char)97,(char)108,(char)77,(char)101,(char)115,(char)115,(char)97,(char)103,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTExternalMessageEvent", a2);
  }
}

void __cxx_global_var_init_360(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112,(char)83,(char)121,(char)110,(char)99,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTTimestampSyncEvent", a2);
  }
}

void __cxx_global_var_init_365(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)80,(char)114,(char)111,(char)120,(char)67,(char)108,(char)101,(char)97,(char)114,(char)101,(char)100,(char)65,(char)102,(char)116,(char)101,(char)114,(char)79,(char)99,(char)99,(char)108,(char)117,(char)100,(char)101,(char)100,(char)87,(char)97,(char)107,(char)101,(char)69,(char)118,(char)101,(char)110,(char)116>::Key = HSUtil::CoderKey::New("HSTProxClearedAfterOccludedWakeEvent", a2);
  }
}

void __cxx_global_var_init_76()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_70(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_69(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_64(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)112,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("tipOffset", a2);
  }
}

void __cxx_global_var_init_16_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("screenOrientation", a2);
  }
}

void __cxx_global_var_init_17_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key = HSUtil::CoderKey::New("touchHand", a2);
  }
}

void __cxx_global_var_init_77()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_71(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_70(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_65(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t HSTContactFrameMetadata::Image::encode(HSTContactFrameMetadata::Image *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v6 = *(a2 + 17);
    DWORD2(v6) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      v4 = HSTPipeline::SensorSize::encode(this, a2);
      if (*a2 || (v4 & 1) != 0)
      {
        if (!*a2)
        {
          HSUtil::Encoder::_encodeUInt(a2, *(this + 1));
          if (!*a2)
          {
            HSUtil::Encoder::_encodeContainerStop(a2);
          }
        }
      }

      else
      {
        *a2 = 10;
      }
    }
  }

  return 1;
}

uint64_t HSTContactFrameMetadata::Image::decode(HSTContactFrameMetadata::Image *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeArray(a2, &v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Image::decode();
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::SensorSize>(&v7, this);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Image::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeUInt(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Image::decode();
    }

    goto LABEL_10;
  }

  v4 = 1;
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

uint64_t HSUtil::Decoder::decodeCodable<HSTPipeline::SensorSize>(uint64_t result, HSTPipeline::SensorSize *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTPipeline::SensorSize>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSTContactFrameMetadata::Tritium3::encode(HSTContactFrameMetadata::Tritium3 *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeUInt(a2, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_encodeUInt(a2, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeUInt(a2, *(this + 1));
          if (!*a2)
          {
            HSUtil::Encoder::_encodeContainerStop(a2);
          }
        }
      }
    }
  }

  return 1;
}

uint64_t HSTContactFrameMetadata::Tritium3::decode(HSTContactFrameMetadata::Tritium3 *this, HSUtil::Decoder *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  HSUtil::Decoder::decodeArray(a2, &v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Tritium3::decode();
    }

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  *this = *HSUtil::Decoder::decodeUInt(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Tritium3::decode();
    }

    goto LABEL_13;
  }

  *(this + 1) = *HSUtil::Decoder::decodeUInt(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Tritium3::decode();
    }

    goto LABEL_13;
  }

  *(this + 1) = *HSUtil::Decoder::decodeUInt(&v7);
  if (v7)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::Tritium3::decode();
    }

    goto LABEL_13;
  }

  v4 = 1;
LABEL_14:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v5 = v8;
  *&v8 = 0;
  if (v5)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v5);
    operator delete();
  }

  return v4;
}

uint64_t HSTContactFrameMetadata::encode(HSTContactFrameMetadata *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE9u, 0);
  }

  if (this->surfaceSize.__engaged_)
  {
    HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a2, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key, this);
  }

  if (this->image.__engaged_)
  {
    HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata::Image const>(a2, HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101>::Key, &this->image);
  }

  if (LOBYTE(this->tritium.var0.__val_.initialToCurrentFrameDeltaMs) == 1)
  {
    HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata::Tritium3 const>(a2, HSUtil::CoderKey::Literal<(char)116,(char)114,(char)105,(char)116,(char)105,(char)117,(char)109>::Key, &this->tritium);
  }

  if (this->buttonState.var0.__null_state_ == 1)
  {
    HSUtil::Encoder::encodeUInt(a2, HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, *&this->tritium.__engaged_);
  }

  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata::Image const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactFrameMetadata::Image *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTContactFrameMetadata::Image::encode(a3, v4);
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTContactFrameMetadata::Tritium3 const>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTContactFrameMetadata::Tritium3 *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {

      return HSTContactFrameMetadata::Tritium3::encode(a3, v4);
    }
  }

  return result;
}

uint64_t HSTContactFrameMetadata::decode(HSTContactFrameMetadata *this, HSUtil::Decoder *a2)
{
  this->surfaceSize.var0.__null_state_ = 0;
  this->surfaceSize.__engaged_ = 0;
  this->image.var0.__null_state_ = 0;
  p_image = &this->image;
  this->image.__engaged_ = 0;
  this->tritium.var0.__null_state_ = 0;
  p_tritium = &this->tritium;
  LOBYTE(this->tritium.var0.__val_.initialToCurrentFrameDeltaMs) = 0;
  this->tritium.__engaged_ = 0;
  this->buttonState.var0.__null_state_ = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(a2, &v10);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::decode();
    }
  }

  else
  {
    while (1)
    {
      v9 = HSUtil::Decoder::decodeKey(&v10);
      if (v10)
      {
        break;
      }

      if (v9 == HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key)
      {
        this->surfaceSize.var0 = 0;
        this->surfaceSize.__engaged_ = 1;
        HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceSize>(&v10, this);
      }

      else if (v9 == HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101>::Key)
      {
        *&p_image->var0.__null_state_ = 0;
        p_image->var0.__val_.dataOffset = 0;
        this->image.__engaged_ = 1;
        HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata::Image>(&v10, p_image);
      }

      else if (v9 == HSUtil::CoderKey::Literal<(char)119,(char)97,(char)107,(char)101,(char)73,(char)110,(char)102,(char)111>::Key)
      {
        *&this->tritium.var0.__null_state_ = 0;
        LOBYTE(this->tritium.var0.__val_.initialToCurrentFrameDeltaMs) = 1;
        HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata::Tritium3>(&v10, p_tritium);
      }

      else
      {
        if (v9 != HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key)
        {
          goto LABEL_4;
        }

        *&this->tritium.__engaged_ = HSUtil::Decoder::decodeUInt(&v10);
      }

      if (v10)
      {
        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          HSTContactFrameMetadata::decode();
        }

        goto LABEL_4;
      }
    }

    if (v10 == 3)
    {
      v6 = 1;
      goto LABEL_5;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTContactFrameMetadata::decode();
    }
  }

LABEL_4:
  v6 = 0;
LABEL_5:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = v11;
  *&v11 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

uint64_t HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceSize>(uint64_t result, HSTPipeline::SurfaceSize *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTPipeline::SurfaceSize>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata::Image>(uint64_t result, HSTContactFrameMetadata::Image *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTContactFrameMetadata::Image>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

uint64_t HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata::Tritium3>(uint64_t result, HSTContactFrameMetadata::Tritium3 *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTContactFrameMetadata::Tritium3>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

void HSUtil::Encoder::encodeNSData(HSUtil::Encoder *this, const HSUtil::CoderKey *a2, NSData *a3)
{
  v5 = a3;
  if (!*this)
  {
    HSUtil::Encoder::_encodeKey(this, a2);
  }

  HSUtil::Encoder::encodeNSData(this, v5);
}

id HSUtil::Decoder::decodeNSData(HSUtil::Decoder *this, const HSUtil::CoderKey *a2)
{
  if (*this > 4 || (v7 = *(this + 9), HSUtil::Decoder::_findKey(this, &v7, a2), *this))
  {
    v3 = 0;
  }

  else
  {
    v5 = HSUtil::Decoder::_readNSData(this, &v7);
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

void *std::vector<HSTPipeline::Contact>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(result, a2);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_B3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HSUtil::Decoder::~Decoder(va);
  _Unwind_Resume(a1);
}

uint64_t HSUtil::Decoder::decodeCodable<HSTContactFrameMetadata>(uint64_t result, HSTContactFrameMetadata *a2)
{
  if (*result <= 4)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = result;
    v5[0] = *(result + 72);
    result = HSUtil::Decoder::_readCodable<HSTContactFrameMetadata>(result, v5, a2);
    if (!*v4)
    {
      *(v4 + 72) = v5[0];
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<HSTPipeline::Relative3DDelta>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, HSTPipeline::Relative3DDelta *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = HSTPipeline::Relative3DDelta::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<HSTPipeline::Relative3DDelta>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, HSTPipeline::Relative3DDelta *a3)
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
      result = HSUtil::Decoder::_readCodable<HSTPipeline::Relative3DDelta>(v6, v7, a3);
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

uint64_t HSUtil::Decoder::_readCodable<HSTContactFrameMetadata::Image>(uint64_t a1, unint64_t *a2, HSTContactFrameMetadata::Image *a3)
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
      if ((HSTContactFrameMetadata::Image::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTContactFrameMetadata::Tritium3>(uint64_t a1, unint64_t *a2, HSTContactFrameMetadata::Tritium3 *a3)
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
      if ((HSTContactFrameMetadata::Tritium3::decode(a3, v11) & 1) == 0)
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

uint64_t HSUtil::Decoder::_readCodable<HSTPipeline::Relative3DDelta>(uint64_t a1, unint64_t *a2, HSTPipeline::Relative3DDelta *a3)
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
      if ((HSTPipeline::Relative3DDelta::decode(a3, v11) & 1) == 0)
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

void __cxx_global_var_init_78()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_72(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_71(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_66(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_11_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101>::Key = HSUtil::CoderKey::New("surfaceSize", a2);
  }
}

void __cxx_global_var_init_12_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101>::Key = HSUtil::CoderKey::New("image", a2);
  }
}

void __cxx_global_var_init_13_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)114,(char)105,(char)116,(char)105,(char)117,(char)109>::Key = HSUtil::CoderKey::New("tritium", a2);
  }
}

void __cxx_global_var_init_14_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("buttonState", a2);
  }
}

void __cxx_global_var_init_15_20(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)119,(char)97,(char)107,(char)101,(char)73,(char)110,(char)102,(char)111>::Key = HSUtil::CoderKey::New("wakeInfo", a2);
  }
}

void __cxx_global_var_init_17_19(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)70,(char)114,(char)97,(char)109,(char)101>::Key = HSUtil::CoderKey::New("HSTFrame", a2);
  }
}

void __cxx_global_var_init_82(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)84,(char)67,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)70,(char)114,(char)97,(char)109,(char)101>::Key = HSUtil::CoderKey::New("HSTContactFrame", a2);
  }
}

void __cxx_global_var_init_83_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)114,(char)97,(char)109,(char)101,(char)78,(char)117,(char)109,(char)98,(char)101,(char)114>::Key = HSUtil::CoderKey::New("frameNumber", a2);
  }
}

void __cxx_global_var_init_84_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)102,(char)105,(char)114,(char)109,(char)119,(char)97,(char)114,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("firmwareTimestamp", a2);
  }
}

void __cxx_global_var_init_85_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)105,(char)110,(char)112,(char)117,(char)116,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("inputDetectionState", a2);
  }
}

void __cxx_global_var_init_86_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)79,(char)112,(char)101,(char)114,(char)97,(char)116,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("deviceOperatingState", a2);
  }
}

void __cxx_global_var_init_87_1(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key = HSUtil::CoderKey::New("contacts", a2);
  }
}

void __cxx_global_var_init_88(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)101,(char)116,(char)97,(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("metadata", a2);
  }
}

void __cxx_global_var_init_119(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)72,(char)83,(char)80,(char)111,(char)105,(char)110,(char)116,(char)101,(char)114,(char)70,(char)114,(char)97,(char)109,(char)101>::Key = HSUtil::CoderKey::New("HSPointerFrame", a2);
  }
}

void __cxx_global_var_init_120(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)114,(char)97,(char)99,(char)107,(char)105,(char)110,(char)103,(char)68,(char)80,(char)73>::Key = HSUtil::CoderKey::New("trackingDPI", a2);
  }
}

void __cxx_global_var_init_121(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110>::Key = HSUtil::CoderKey::New("button", a2);
  }
}

void __cxx_global_var_init_122(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("position", a2);
  }
}

void __cxx_global_var_init_123_0(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)87,(char)104,(char)101,(char)101,(char)108>::Key = HSUtil::CoderKey::New("scrollWheel", a2);
  }
}

void sub_B4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v41 + 32));

  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v42 - 128));

  _Unwind_Resume(a1);
}

uint64_t SABinaryWriter::initHostRequest(SABinaryWriter *this, char a2, size_t __n, const void *__src)
{
  if (__n && !__src || *(this + 24))
  {
    return 0;
  }

  *(this + 2) = 0;
  *(this + 24) = 4;
  if (*this)
  {
    if (*(this + 1) <= 1uLL)
    {
      goto LABEL_14;
    }

    **this = 1025;
    v6 = *(this + 2) + 2;
    v7 = *this;
    *(this + 2) = v6;
    if (!v7)
    {
      goto LABEL_11;
    }

    if ((*(this + 1) - v6) < 3)
    {
LABEL_14:
      result = 0;
      *(this + 24) = 0;
      return result;
    }

    v8 = v7 + v6;
    *v8 = a2;
    *(v8 + 1) = __n;
    v6 = *(this + 2);
  }

  else
  {
    v6 = 2;
  }

LABEL_11:
  v9 = v6 + 3;
  *(this + 2) = v9;
  if (__n)
  {
    v10 = __n;
    if (*this)
    {
      if (*(this + 1) - v9 < __n)
      {
        goto LABEL_14;
      }

      memcpy((*this + v9), __src, __n);
      v9 = *(this + 2);
    }

    *(this + 2) = v9 + v10;
  }

  return 1;
}

void __cxx_global_var_init_79()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_73(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_72(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_67(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void __cxx_global_var_init_15_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)80,(char)97,(char)99,(char)107,(char)101,(char)116,(char)83,(char)105,(char)122,(char)101>::Key = HSUtil::CoderKey::New("maxPacketSize", a2);
  }
}

void sub_B6818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

void sub_B6990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HSUtil::File::~File(&a9);

  _Unwind_Resume(a1);
}

void sub_B6E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

void sub_B7278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  HSUtil::ObjectLock::~ObjectLock(&a9);

  _Unwind_Resume(a1);
}

id HSProxySynth::HSTRecordingManagerProxy_saveRecording_call1<BOOL>(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectAtIndexedSubscript:0];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 saveRecording:v4]);

  return v5;
}

HSUtil::File *HSUtil::File::File(HSUtil::File *this, const char *a2, uint64_t a3)
{
  *this = &off_109428;
  *(this + 1) = &off_109458;
  *(this + 2) = &off_1093A0;
  *(this + 3) = &off_1093D0;
  *(this + 8) = -1;
  *(this + 5) = 0;
  *(this + 48) = 1;
  v4 = open(a2, 1538, a3);
  if (v4 < 0)
  {
    *(this + 48) = 0;
  }

  else
  {
    v6[0] = &off_1093A0;
    v6[1] = &off_1093D0;
    v7 = v4;
    HSUtil::File::_init(this, v6);
    HSUtil::FileDescriptor::~FileDescriptor(v6);
  }

  return this;
}

void sub_B75CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HSUtil::FileDescriptor::~FileDescriptor(va);
  HSUtil::FileDescriptor::~FileDescriptor(v2);
  _Unwind_Resume(a1);
}

void __cxx_global_var_init_80()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_8_69(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_9_24(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_10_21(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_11_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_12_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_13_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_14_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

uint64_t HSTPipeline::Position::encode(HSTPipeline::Position *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeInt(a2, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_encodeInt(a2, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeContainerStop(a2);
        }
      }
    }
  }

  return 1;
}

uint64_t HSTPipeline::Position::decode(HSTPipeline::Position *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Position::decode();
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  *this = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Position::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Position::decode();
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
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

uint64_t HSUtil::Decoder::decodeInt(HSUtil::Decoder *this)
{
  if (*this > 4)
  {
    return 0;
  }

  v5[3] = v1;
  v5[4] = v2;
  v5[0] = *(this + 9);
  result = HSUtil::Decoder::_readInt(this, v5);
  if (*this)
  {
    return 0;
  }

  *(this + 9) = v5[0];
  return result;
}

uint64_t HSTPipeline::Velocity::decode(HSTPipeline::Velocity *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Velocity::decode();
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  *this = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Velocity::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Velocity::decode();
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
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

uint64_t HSTPipeline::SurfaceSize::decode(HSTPipeline::SurfaceSize *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceSize::decode();
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  *this = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceSize::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceSize::decode();
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
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

uint64_t HSTPipeline::SurfaceCoordinates::encode(HSTPipeline::SurfaceCoordinates *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeInt(a2, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_encodeInt(a2, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeInt(a2, *(this + 2));
          if (!*a2)
          {
            HSUtil::Encoder::_encodeInt(a2, *(this + 3));
            if (!*a2)
            {
              HSUtil::Encoder::_encodeContainerStop(a2);
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t HSTPipeline::SurfaceCoordinates::decode(HSTPipeline::SurfaceCoordinates *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceCoordinates::decode();
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  *this = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceCoordinates::decode();
    }

    goto LABEL_16;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceCoordinates::decode();
    }

    goto LABEL_16;
  }

  *(this + 2) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceCoordinates::decode();
    }

    goto LABEL_16;
  }

  *(this + 3) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SurfaceCoordinates::decode();
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_17:
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

uint64_t HSTPipeline::SensorSize::encode(HSTPipeline::SensorSize *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeUInt(a2, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_encodeUInt(a2, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeContainerStop(a2);
        }
      }
    }
  }

  return 1;
}

uint64_t HSTPipeline::SensorSize::decode(HSTPipeline::SensorSize *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SensorSize::decode();
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  *this = HSUtil::Decoder::decodeUInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SensorSize::decode();
    }

    goto LABEL_10;
  }

  *(this + 1) = HSUtil::Decoder::decodeUInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::SensorSize::decode();
    }

    goto LABEL_10;
  }

  v5 = 1;
LABEL_11:
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

uint64_t HSTPipeline::Relative3DDelta::encode(HSTPipeline::Relative3DDelta *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 1;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue8(a2, 0xE6u, 0);
    if (!*a2)
    {
      HSUtil::Encoder::_encodeInt(a2, *this);
      if (!*a2)
      {
        HSUtil::Encoder::_encodeInt(a2, *(this + 1));
        if (!*a2)
        {
          HSUtil::Encoder::_encodeInt(a2, *(this + 2));
          if (!*a2)
          {
            HSUtil::Encoder::_encodeContainerStop(a2);
          }
        }
      }
    }
  }

  return 1;
}

uint64_t HSTPipeline::Relative3DDelta::decode(HSTPipeline::Relative3DDelta *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeArray(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Relative3DDelta::decode();
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  *this = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Relative3DDelta::decode();
    }

    goto LABEL_13;
  }

  *(this + 1) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Relative3DDelta::decode();
    }

    goto LABEL_13;
  }

  *(this + 2) = HSUtil::Decoder::decodeInt(&v8);
  if (v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/Types.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HSTPipeline::Relative3DDelta::decode();
    }

    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:
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

void __cxx_global_var_init_81()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_74(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)121,(char)112,(char)101>::Key = HSUtil::CoderKey::New("type", a2);
  }
}

void __cxx_global_var_init_3_73(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("timestamp", a2);
  }
}

void __cxx_global_var_init_4_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)110,(char)105,(char)120,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("unixTimestamp", a2);
  }
}

void __cxx_global_var_init_5_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("version", a2);
  }
}

void __cxx_global_var_init_6_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)117,(char)116,(char)99,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("utcOffset", a2);
  }
}

void __cxx_global_var_init_7_68(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key = HSUtil::CoderKey::New("state", a2);
  }
}

void __cxx_global_var_init_8_70(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)100,(char)97,(char)116,(char)97>::Key = HSUtil::CoderKey::New("data", a2);
  }
}

void HSUtil::Buffer::Buffer()
{
  __assert_rtn("Buffer", "HSBuffer.h", 54, "!len || data");
}

{
  __assert_rtn("Buffer", "HSBuffer.h", 33, "len <= cap");
}

void HSTPipeline::CreatePipeline()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 79;
  v3 = v0;
  v4 = "server";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 65;
  v3 = v0;
  v4 = "deviceService != IO_OBJECT_NULL";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

void HSTPipeline::CreateSAPipeline(uint64_t a1)
{
  v1 = 136315906;
  v2 = "HSStage *HSTPipeline::CreateSAPipeline(NSString *__strong, __strong dispatch_queue_t, MTDeviceRef, HSStage *__strong, NSUInteger)";
  v3 = 2080;
  v4 = a1;
  v5 = 2048;
  v6 = 109;
  v7 = 2080;
  v8 = "deviceService != IO_OBJECT_NULL";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", &v1, 0x2Au);
}

void HSTPipeline::FirmwareUtil::SetReportWithData(unsigned __int8 *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "FirmwareUtil::SetReport 0x%x failed: 0x%x", v4, 0xEu);
}

void setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_1(v0, v1, v2, 1.5047e-36);
  OUTLINED_FUNCTION_3_0(&dword_0, "FirmwareUtil::SetReport (0x%02X) failed: %{public}s", v3, v4);
}

void HSUtil::SendRight::SendRight()
{
  __assert_rtn("SendRight", "HSPortRight.h", 111, "kr == KERN_SUCCESS");
}

{
  __assert_rtn("SendRight", "HSPortRight.h", 108, "kr==KERN_SUCCESS || kr==KERN_INVALID_RIGHT");
}

{
  __assert_rtn("SendRight", "HSPortRight.h", 123, "kr == KERN_SUCCESS");
}

void HSTPipeline::CreateMousePipeline()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSTPipeline::CreateTrackpadPipeline()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 127;
  v3 = v0;
  v4 = "server";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 113;
  v3 = v0;
  v4 = "deviceService != IO_OBJECT_NULL";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

void MTChordCycling_::decode()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void MTParserPath_::filterContactForScreenUI(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Hover (stage %s -- ignoring motion)", buf, 0x12u);
}

void MTParserPath_::filterContactForScreenUI(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a1 + 136);
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Identity=%d <- %d (ignoring motion)", v6, 0x14u);
}

void MTPathStates_::decodeFromMap()
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

void MTTimeState_::decodeFromMap()
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

void MTHandMotion_::clearHandMotion(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "\tDHML:  MTHandMotion_::resetHandMotion(%d)", v2, 8u);
}

void MTHandStatistics_::decodeFromMap()
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

void MTChordCycling_::decodeFromMap()
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

void MTForceManagement_::decodeFromMap()
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

void MTHandStatistics_::decode()
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

void MTPathStates_::decode()
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

void MTForceManagement_::decode()
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

void MTGestureConfig_::decode()
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

void MTRestZoneIntegrator_::clearMotion(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "\tDHML:  MTRestZoneIntegrator_::clearMotion(%d)", v2, 8u);
}

void HSTPipeline::Contact::decode()
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

void HSTContactStabilizerConfig::FloatRange::decode()
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

void HSTContactStabilizerConfig::FloatRangeGain::decode()
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

void HSTContactStabilizerConfig::decode()
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

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void StatContact::decode()
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

void ContactStabilizer::decode()
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

void InstabilityFilter::decode()
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

void InstabilityFilter::StabilizerContact::decode()
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

void HSTHIDEventGeneratorConfig::decode()
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

void HSTContactFrameMetadata::Image::decode()
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

void HSTContactFrameMetadata::Tritium3::decode()
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

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void HSTContactFrameMetadata::decode()
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

void HSTPipeline::Position::decode()
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

void HSTPipeline::Velocity::decode()
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

void HSTPipeline::SurfaceSize::decode()
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

void HSTPipeline::SurfaceCoordinates::decode()
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

void HSTPipeline::SensorSize::decode()
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

void HSTPipeline::Relative3DDelta::decode()
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

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}