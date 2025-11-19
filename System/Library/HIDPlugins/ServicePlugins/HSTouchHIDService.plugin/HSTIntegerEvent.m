@interface HSTIntegerEvent
- (BOOL)decodeFromMap:(void *)a3;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSTIntegerEvent

- (void)encodeToMap:(void *)a3
{
  v5.receiver = self;
  v5.super_class = HSTIntegerEvent;
  [(HSTEvent *)&v5 encodeToMap:?];
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)97,(char)108,(char)117,(char)101>::Key, self->value);
}

- (BOOL)decodeFromMap:(void *)a3
{
  v6.receiver = self;
  v6.super_class = HSTIntegerEvent;
  if (![(HSTEvent *)&v6 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTIntegerEvent decodeFromMap:];
    }

    return 0;
  }

  self->value = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)97,(char)108,(char)117,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTIntegerEvent decodeFromMap:];
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

@end