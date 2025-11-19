@interface HSPointerFrame
- (BOOL)decodeFromMap:(void *)a3;
- (HSPointerFrame)init;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSPointerFrame

- (HSPointerFrame)init
{
  v6.receiver = self;
  v6.super_class = HSPointerFrame;
  v2 = [(HSTFrame *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)encodeToMap:(void *)a3
{
  v5.receiver = self;
  v5.super_class = HSPointerFrame;
  [(HSTFrame *)&v5 encodeToMap:?];
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)114,(char)97,(char)99,(char)107,(char)105,(char)110,(char)103,(char)68,(char)80,(char)73>::Key, self->trackingDPI);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110>::Key, self->button);
  HSUtil::Encoder::encodeCodable<HSTPipeline::Relative3DDelta>(a3, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &self->position);
  HSUtil::Encoder::encodeCodable<HSTPipeline::Relative3DDelta>(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)87,(char)104,(char)101,(char)101,(char)108>::Key, &self->scrollWheel);
}

- (BOOL)decodeFromMap:(void *)a3
{
  v6.receiver = self;
  v6.super_class = HSPointerFrame;
  if (![(HSTFrame *)&v6 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerFrame decodeFromMap:];
    }

    return 0;
  }

  self->trackingDPI = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)114,(char)97,(char)99,(char)107,(char)105,(char)110,(char)103,(char)68,(char)80,(char)73>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerFrame decodeFromMap:];
    }

    return 0;
  }

  self->button = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerFrame decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Relative3DDelta>(a3, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &self->position);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerFrame decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Relative3DDelta>(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)87,(char)104,(char)101,(char)101,(char)108>::Key, &self->scrollWheel);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrame.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPointerFrame decodeFromMap:];
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

- (void)decodeFromMap:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end