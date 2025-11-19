@interface HSTWakeSystemEvent
- (BOOL)decodeFromMap:(void *)a3;
- (id).cxx_construct;
- (void)encodeToMap:(void *)a3;
@end

@implementation HSTWakeSystemEvent

- (void)encodeToMap:(void *)a3
{
  v5.receiver = self;
  v5.super_class = HSTWakeSystemEvent;
  [(HSTEvent *)&v5 encodeToMap:?];
  if (self->tapPosition.__engaged_)
  {
    HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a3, HSUtil::CoderKey::Literal<(char)116,(char)97,(char)112,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &self->tapPosition);
  }

  if (self->swipeDirection.__engaged_)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)119,(char)105,(char)112,(char)101,(char)68,(char)105,(char)114,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110>::Key, self->swipeDirection.var0.__val_);
  }

  if (self->longPressPosition.__engaged_)
  {
    HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(a3, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)80,(char)114,(char)101,(char)115,(char)115,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &self->longPressPosition);
  }
}

- (BOOL)decodeFromMap:(void *)a3
{
  v12.receiver = self;
  v12.super_class = HSTWakeSystemEvent;
  if ([(HSTEvent *)&v12 decodeFromMap:?])
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(a3, HSUtil::CoderKey::Literal<(char)116,(char)97,(char)112,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &v11);
    if (*a3)
    {
      if (self->tapPosition.__engaged_)
      {
        self->tapPosition.__engaged_ = 0;
      }
    }

    else
    {
      v6 = v11;
      if (!self->tapPosition.__engaged_)
      {
        self->tapPosition.__engaged_ = 1;
      }

      self->tapPosition.var0 = v6;
    }

    v7 = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)119,(char)105,(char)112,(char)101,(char)68,(char)105,(char)114,(char)101,(char)99,(char)116,(char)105,(char)111,(char)110>::Key);
    if (*a3)
    {
      if (self->swipeDirection.__engaged_)
      {
        self->swipeDirection.__engaged_ = 0;
      }
    }

    else
    {
      self->swipeDirection = (v7 | 0x100);
    }

    HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(a3, HSUtil::CoderKey::Literal<(char)108,(char)111,(char)110,(char)103,(char)80,(char)114,(char)101,(char)115,(char)115,(char)80,(char)111,(char)115,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, &v11);
    v8 = *a3;
    if (*a3)
    {
      if (self->longPressPosition.__engaged_)
      {
        self->longPressPosition.__engaged_ = 0;
      }
    }

    else
    {
      v9 = v11;
      if (!self->longPressPosition.__engaged_)
      {
        self->longPressPosition.__engaged_ = 1;
      }

      self->longPressPosition.var0 = v9;
      v8 = *a3;
    }

    v5 = v8 < 5;
    if (v8 >= 5)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTWakeSystemEvent decodeFromMap:];
      }
    }
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTEvent.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTWakeSystemEvent decodeFromMap:];
    }

    return 0;
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 24) = 0;
  *(self + 14) = 0;
  *(self + 32) = 0;
  *(self + 40) = 0;
  *(self + 44) = 0;
  *(self + 52) = 0;
  return self;
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