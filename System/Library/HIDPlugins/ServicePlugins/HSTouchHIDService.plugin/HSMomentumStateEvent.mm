@interface HSMomentumStateEvent
- (BOOL)decodeFromMap:(void *)map;
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (HSMomentumStateEvent)init;
- (NSString)description;
- (void)encodeToMap:(void *)map;
@end

@implementation HSMomentumStateEvent

- (HSMomentumStateEvent)init
{
  v6.receiver = self;
  v6.super_class = HSMomentumStateEvent;
  v2 = [(HSMomentumStateEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->timestamp = HSUtil::GetMonotonicTime(v2);
    v4 = v3;
  }

  return v3;
}

- (NSString)description
{
  v2 = @"kHSMomentumStateEnd";
  if (!self->state)
  {
    v2 = @"kHSMomentumStateStart";
  }

  return [NSString stringWithFormat:@"momentum state %@, subtype %u", v2, self->subtype];
}

- (void)encodeToMap:(void *)map
{
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key, self->state);
  v5 = HSUtil::CoderKey::Literal<(char)115,(char)117,(char)98,(char)116,(char)121,(char)112,(char)101>::Key;
  subtype = self->subtype;

  HSUtil::Encoder::encodeUInt(map, v5, subtype);
}

- (BOOL)decodeFromMap:(void *)map
{
  self->state = HSUtil::Decoder::decodeUInt(map, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSMomentumStateEvent decodeFromMap:];
    }

    return 0;
  }

  self->subtype = HSUtil::Decoder::decodeUInt(map, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)98,(char)116,(char)121,(char)112,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSMomentumStateEvent decodeFromMap:];
    }

    return 0;
  }

  return 1;
}

- (BOOL)hsEncode:(void *)encode
{
  if (!*encode)
  {
    *&v6 = *(encode + 17);
    DWORD2(v6) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v6);
    HSUtil::Encoder::_writeTokenValue16(encode, 0xEAu, 0);
  }

  [(HSMomentumStateEvent *)self encodeToMap:encode];
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  v10 = v5;
  v11 = v5;
  v9 = v5;
  HSUtil::Decoder::decodeMap(decode, &v9);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSMomentumStateEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSMomentumStateEvent *)self decodeFromMap:&v9];
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