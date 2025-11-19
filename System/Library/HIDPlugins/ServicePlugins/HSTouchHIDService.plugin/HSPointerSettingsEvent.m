@interface HSPointerSettingsEvent
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (HSPointerSettingsEvent)init;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSPointerSettingsEvent

- (HSPointerSettingsEvent)init
{
  v6.receiver = self;
  v6.super_class = HSPointerSettingsEvent;
  v2 = [(HSPointerSettingsEvent *)&v6 init];
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
  HSUtil::Encoder::encodeHSCodable(a3, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key, self->settings);
  v5 = HSUtil::CoderKey::Literal<(char)110,(char)101,(char)101,(char)100,(char)115,(char)70,(char)108,(char)117,(char)115,(char)104>::Key;
  needsFlush = self->needsFlush;

  HSUtil::Encoder::encodeBool(a3, v5, needsFlush);
}

- (BOOL)decodeFromMap:(void *)a3
{
  HSUtil::Decoder::decodeHSCodable(a3, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key, self->settings);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerSettingsEvent decodeFromMap:];
    }
  }

  else
  {
    self->needsFlush = HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)110,(char)101,(char)101,(char)100,(char)115,(char)70,(char)108,(char)117,(char)115,(char)104>::Key);
    if (*a3 < 2u)
    {
      return 1;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerSettingsEvent decodeFromMap:];
    }
  }

  return 0;
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

  [(HSPointerSettingsEvent *)self encodeToMap:a3];
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
      [HSPointerSettingsEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSPointerSettingsEvent *)self decodeFromMap:&v9];
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

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end