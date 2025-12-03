@interface HSTTipOffsetFilter
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (HSTTipOffsetFilter)initWithConfig:(const HSTTipOffsetFilterConfig *)config;
- (id).cxx_construct;
- (void)_handleContactFrame:(id)frame;
- (void)_handleScreenOrientationEvent:(id)event;
- (void)_handleTouchHandEvent:(id)event;
- (void)_handleWakeSystemEvent:(id)event;
- (void)handleConsume:(id)consume;
@end

@implementation HSTTipOffsetFilter

- (HSTTipOffsetFilter)initWithConfig:(const HSTTipOffsetFilterConfig *)config
{
  v8.receiver = self;
  v8.super_class = HSTTipOffsetFilter;
  v4 = [(HSStage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_config = *config;
    v6 = v4;
  }

  return v5;
}

- (void)_handleContactFrame:(id)frame
{
  frameCopy = frame;
  if (!frameCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSTTipOffsetFilter.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  y = self->_config.tipOffset.y;
  screenOrientation = self->_state.screenOrientation;
  if (self->_state.touchHand == 1)
  {
    x = -self->_config.tipOffset.x;
  }

  else
  {
    x = self->_config.tipOffset.x;
  }

  if (screenOrientation == 2)
  {
    v9 = -x;
  }

  else
  {
    v9 = x;
  }

  if (screenOrientation == 2)
  {
    v10 = -y;
  }

  else
  {
    v10 = self->_config.tipOffset.y;
  }

  if (screenOrientation == 3)
  {
    v9 = -y;
    v10 = x;
  }

  if (screenOrientation == 4)
  {
    v9 = self->_config.tipOffset.y;
    v11 = -x;
  }

  else
  {
    v11 = v10;
  }

  v12 = frameCopy[6];
  v13 = frameCopy[7];
  while (v12 != v13)
  {
    v14 = *(v12 + 20) + v11;
    *(v12 + 16) += v9;
    *(v12 + 20) = v14;
    v12 += 64;
  }

  v16.receiver = self;
  v16.super_class = HSTTipOffsetFilter;
  [(HSStage *)&v16 handleConsume:frameCopy];
}

- (void)_handleWakeSystemEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HSTTipOffsetFilter.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  if (*(eventCopy + 24) == 1)
  {
    x = self->_config.tipOffset.x;
    y = self->_config.tipOffset.y;
    screenOrientation = self->_state.screenOrientation;
    if (self->_state.touchHand == 1)
    {
      x = -x;
    }

    if (screenOrientation == 2)
    {
      v9 = -x;
    }

    else
    {
      v9 = x;
    }

    if (screenOrientation == 2)
    {
      v10 = -y;
    }

    else
    {
      v10 = self->_config.tipOffset.y;
    }

    if (screenOrientation == 3)
    {
      v9 = -y;
      v10 = x;
    }

    if (screenOrientation == 4)
    {
      v11 = -x;
    }

    else
    {
      y = v9;
      v11 = v10;
    }

    eventCopy[4] += y;
    eventCopy[5] += v11;
  }

  if (*(eventCopy + 40) == 1)
  {
    v12 = self->_config.tipOffset.y;
    v13 = self->_state.screenOrientation;
    if (self->_state.touchHand == 1)
    {
      v14 = -self->_config.tipOffset.x;
    }

    else
    {
      v14 = self->_config.tipOffset.x;
    }

    if (v13 == 2)
    {
      v15 = -v14;
    }

    else
    {
      v15 = v14;
    }

    if (v13 == 2)
    {
      v16 = -v12;
    }

    else
    {
      v16 = self->_config.tipOffset.y;
    }

    if (v13 == 3)
    {
      v15 = -v12;
      v16 = v14;
    }

    if (v13 == 4)
    {
      v15 = self->_config.tipOffset.y;
      v17 = -v14;
    }

    else
    {
      v17 = v16;
    }

    eventCopy[8] += v15;
    eventCopy[9] += v17;
  }

  v19.receiver = self;
  v19.super_class = HSTTipOffsetFilter;
  [(HSStage *)&v19 handleConsume:eventCopy];
}

- (void)_handleScreenOrientationEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HSTTipOffsetFilter.mm" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  self->_state.screenOrientation = [eventCopy screenOrientation];
  v7.receiver = self;
  v7.super_class = HSTTipOffsetFilter;
  [(HSStage *)&v7 handleConsume:eventCopy];
}

- (void)_handleTouchHandEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HSTTipOffsetFilter.mm" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  self->_state.touchHand = [eventCopy touchHand];
  v7.receiver = self;
  v7.super_class = HSTTipOffsetFilter;
  [(HSStage *)&v7 handleConsume:eventCopy];
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTTipOffsetFilter *)self _handleContactFrame:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTTipOffsetFilter *)self _handleWakeSystemEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTTipOffsetFilter *)self _handleScreenOrientationEvent:v8];
      }

      else
      {
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          [(HSTTipOffsetFilter *)self _handleTouchHandEvent:v10];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = HSTTipOffsetFilter;
          [(HSStage *)&v12 handleConsume:v10];
        }
      }
    }
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v7 = *(encode + 17);
    DWORD2(v7) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v7);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTPipeline::Position const>(encode, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)112,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key, &self->_config);
  p_state = &self->_state;
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key, p_state->screenOrientation);
  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key, p_state->touchHand);
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(decode, &v10);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTTipOffsetFilter.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTTipOffsetFilter handleHSDecode:];
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::Position>(&v10, HSUtil::CoderKey::Literal<(char)116,(char)105,(char)112,(char)79,(char)102,(char)102,(char)115,(char)101,(char)116>::Key, &self->_config);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTTipOffsetFilter.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTTipOffsetFilter handleHSDecode:];
    }

    goto LABEL_13;
  }

  p_state = &self->_state;
  p_state->screenOrientation = HSUtil::Decoder::decodeUInt(&v10, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTTipOffsetFilter.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTTipOffsetFilter handleHSDecode:];
    }

    goto LABEL_13;
  }

  p_state->touchHand = HSUtil::Decoder::decodeUInt(&v10, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)72,(char)97,(char)110,(char)100>::Key);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTTipOffsetFilter.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTTipOffsetFilter handleHSDecode:];
    }

    goto LABEL_13;
  }

  v7 = 1;
LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  *&v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 64) = 0;
  return self;
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end