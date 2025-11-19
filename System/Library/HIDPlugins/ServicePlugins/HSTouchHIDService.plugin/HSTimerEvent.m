@interface HSTimerEvent
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (HSTimerEvent)init;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSTimerEvent

- (HSTimerEvent)init
{
  v6.receiver = self;
  v6.super_class = HSTimerEvent;
  v2 = [(HSTimerEvent *)&v6 init];
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
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, self->timestamp);
  v5 = HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key;
  key = self->key;

  HSUtil::Encoder::encodeNSString(a3, v5, key);
}

- (BOOL)decodeFromMap:(void *)a3
{
  self->timestamp = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTimerEvent decodeFromMap:];
    }

    return 0;
  }

  v5 = HSUtil::Decoder::decodeNSString(a3, HSUtil::CoderKey::Literal<(char)107,(char)101,(char)121>::Key);
  key = self->key;
  self->key = v5;

  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTimerEvent decodeFromMap:];
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

  [(HSTimerEvent *)self encodeToMap:a3];
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
      [HSTimerEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSTimerEvent *)self decodeFromMap:&v9];
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