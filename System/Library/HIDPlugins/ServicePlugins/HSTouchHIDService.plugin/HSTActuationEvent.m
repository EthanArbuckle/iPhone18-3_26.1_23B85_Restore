@interface HSTActuationEvent
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (HSTActuationEvent)init;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSTActuationEvent

- (HSTActuationEvent)init
{
  v6.receiver = self;
  v6.super_class = HSTActuationEvent;
  v2 = [(HSTActuationEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->timestamp = HSUtil::GetMonotonicTime(v2);
    v4 = v3;
  }

  return v3;
}

- (void)encodeToMap:(void *)a3
{
  HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)97,(char)118,(char)101,(char)102,(char)111,(char)114,(char)109,(char)73,(char)68>::Key, self->waveformID);
  HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key, self->strength);
  HSUtil::Encoder::encodeFloat(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)97,(char)108,(char)101>::Key, self->scale);
  v5 = HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)68,(char)105,(char)108,(char)97,(char)116,(char)105,(char)111,(char)110>::Key;
  timeDilation = self->timeDilation;

  HSUtil::Encoder::encodeFloat(a3, v5, timeDilation);
}

- (BOOL)decodeFromMap:(void *)a3
{
  self->waveformID = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)97,(char)118,(char)101,(char)102,(char)111,(char)114,(char)109,(char)73,(char)68>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTActuationEvent decodeFromMap:];
    }

    return 0;
  }

  self->strength = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTActuationEvent decodeFromMap:];
    }

    return 0;
  }

  self->scale = HSUtil::Decoder::decodeFloat(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)97,(char)108,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTActuationEvent decodeFromMap:];
    }

    return 0;
  }

  self->timeDilation = HSUtil::Decoder::decodeFloat(a3, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)68,(char)105,(char)108,(char)97,(char)116,(char)105,(char)111,(char)110>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTActuationEvent decodeFromMap:];
    }

    return 0;
  }

  return 1;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xEAu, 0);
  }

  [(HSTActuationEvent *)self encodeToMap:a3];
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  v10 = v5;
  v11 = v5;
  v9 = v5;
  HSUtil::Decoder::decodeMap(a3, &v9);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTActuationEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSTActuationEvent *)self decodeFromMap:&v9];
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v10;
  *&v10 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (void)decodeFromMap:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end