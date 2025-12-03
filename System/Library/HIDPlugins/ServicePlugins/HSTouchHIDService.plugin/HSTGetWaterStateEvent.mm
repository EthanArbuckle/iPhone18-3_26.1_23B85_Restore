@interface HSTGetWaterStateEvent
- (BOOL)decodeFromMap:(void *)map;
- (void)encodeToMap:(void *)map;
@end

@implementation HSTGetWaterStateEvent

- (void)encodeToMap:(void *)map
{
  v5.receiver = self;
  v5.super_class = HSTGetWaterStateEvent;
  [(HSTGetStateEvent *)&v5 encodeToMap:?];
  HSUtil::Encoder::encodeBool(map, HSUtil::CoderKey::Literal<(char)119,(char)97,(char)116,(char)101,(char)114>::Key, *(&self->super.handled + 1));
  HSUtil::Encoder::encodeFloat(map, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)100,(char)101,(char)110,(char)99,(char)101>::Key, *(&self->super.handled + 1));
}

- (BOOL)decodeFromMap:(void *)map
{
  v6.receiver = self;
  v6.super_class = HSTGetWaterStateEvent;
  if (![(HSTGetStateEvent *)&v6 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTGetWaterStateEvent decodeFromMap:];
    }

    return 0;
  }

  *(&self->super.handled + 1) = HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)119,(char)97,(char)116,(char)101,(char)114>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTGetWaterStateEvent decodeFromMap:];
    }

    return 0;
  }

  *(&self->super.handled + 1) = HSUtil::Decoder::decodeFloat(map, HSUtil::CoderKey::Literal<(char)99,(char)111,(char)110,(char)102,(char)105,(char)100,(char)101,(char)110,(char)99,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTGetWaterStateEvent decodeFromMap:];
    }

    return 0;
  }

  return 1;
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

@end