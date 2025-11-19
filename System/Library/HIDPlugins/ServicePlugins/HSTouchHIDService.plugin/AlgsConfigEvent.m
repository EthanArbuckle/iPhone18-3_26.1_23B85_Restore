@interface AlgsConfigEvent
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (NSString)description;
- (id)debug;
- (uint64_t)deviceType;
- (uint64_t)parserOptions;
- (uint64_t)setDeviceType:(uint64_t)result;
- (uint64_t)setParserOptions:(uint64_t)result;
- (uint64_t)setSurfaceCoordinates:(uint64_t)a3;
- (uint64_t)setSurfaceSize:(uint64_t)result;
- (uint64_t)surfaceCoordinates;
- (uint64_t)surfaceSize;
- (void)encodeToMap:(void *)a3;
@end

@implementation AlgsConfigEvent

- (void)encodeToMap:(void *)a3
{
  if (self)
  {
    HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)84,(char)121,(char)112,(char)101>::Key, self->_deviceType);
    HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)87,(char)105,(char)100,(char)116,(char)104>::Key, self->_surfaceSize.width);
    HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key, self->_surfaceSize.height);
    HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)84,(char)111,(char)112>::Key, self->_surfaceCoordinates.top);
    HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)82,(char)105,(char)103,(char)104,(char)116>::Key, self->_surfaceCoordinates.right);
    HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)66,(char)111,(char)116,(char)116,(char)111,(char)109>::Key, self->_surfaceCoordinates.bottom);
    left = self->_surfaceCoordinates.left;
  }

  else
  {
    [(AlgsConfigEvent *)a3 encodeToMap:(char)101, (char)118, (char)105, (char)99, (char)101, (char)84, (char)121, (char)112, (char)101>::Key];
    left = 0;
  }

  v6 = HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)76,(char)101,(char)102,(char)116>::Key;

  HSUtil::Encoder::encodeInt(a3, v6, left);
}

- (BOOL)decodeFromMap:(void *)a3
{
  self->_deviceType = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)100,(char)101,(char)118,(char)105,(char)99,(char)101,(char)84,(char)121,(char)112,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceSize.width = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)87,(char)105,(char)100,(char)116,(char)104>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceSize.height = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)83,(char)105,(char)122,(char)101,(char)72,(char)101,(char)105,(char)103,(char)104,(char)116>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceCoordinates.top = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)84,(char)111,(char)112>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceCoordinates.right = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)82,(char)105,(char)103,(char)104,(char)116>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceCoordinates.bottom = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)66,(char)111,(char)116,(char)116,(char)111,(char)109>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
    }

    return 0;
  }

  self->_surfaceCoordinates.left = HSUtil::Decoder::decodeInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115,(char)76,(char)101,(char)102,(char)116>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/HSTrackpadDefs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AlgsConfigEvent decodeFromMap:];
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

  [(AlgsConfigEvent *)self encodeToMap:a3];
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
      [AlgsConfigEvent hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(AlgsConfigEvent *)self decodeFromMap:&v9];
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

- (NSString)description
{
  left = self;
  if (self)
  {
    width = self->_surfaceSize.width;
    height = self->_surfaceSize.height;
    bottom = self->_surfaceCoordinates.bottom;
    top = self->_surfaceCoordinates.top;
    left = self->_surfaceCoordinates.left;
    right = self->_surfaceCoordinates.right;
  }

  else
  {
    bottom = 0;
    top = 0;
    width = 0;
    height = 0;
    right = 0;
  }

  return [NSString stringWithFormat:@"Algs Config[size=%ux%u coords=%d, %d, %d, %d]", width, height, top, right, bottom, left];
}

- (uint64_t)surfaceSize
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)surfaceCoordinates
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)debug
{
  v25[0] = @"DeviceType";
  if (self)
  {
    deviceType = self->_deviceType;
  }

  else
  {
    deviceType = 0;
  }

  v20 = [NSNumber numberWithUnsignedChar:deviceType];
  v26[0] = v20;
  v25[1] = @"SurfaceSize";
  v23[0] = @"Width";
  if (self)
  {
    width = self->_surfaceSize.width;
  }

  else
  {
    width = 0;
  }

  v5 = [NSNumber numberWithInt:width];
  v23[1] = @"Height";
  v24[0] = v5;
  if (self)
  {
    height = self->_surfaceSize.height;
  }

  else
  {
    height = 0;
  }

  v7 = [NSNumber numberWithInt:height];
  v24[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[1] = v8;
  v25[2] = @"SurfaceCoordinates";
  v21[0] = @"Top";
  if (self)
  {
    top = self->_surfaceCoordinates.top;
  }

  else
  {
    top = 0;
  }

  v10 = [NSNumber numberWithInt:top];
  v22[0] = v10;
  v21[1] = @"Right";
  if (self)
  {
    right = self->_surfaceCoordinates.right;
  }

  else
  {
    right = 0;
  }

  v12 = [NSNumber numberWithInt:right];
  v22[1] = v12;
  v21[2] = @"Bottom";
  if (self)
  {
    bottom = self->_surfaceCoordinates.bottom;
  }

  else
  {
    bottom = 0;
  }

  v14 = [NSNumber numberWithInt:bottom];
  v22[2] = v14;
  v21[3] = @"Left";
  if (self)
  {
    left = self->_surfaceCoordinates.left;
  }

  else
  {
    left = 0;
  }

  v16 = [NSNumber numberWithInt:left];
  v22[3] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v26[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

  return v18;
}

- (uint64_t)deviceType
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)parserOptions
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

- (uint64_t)setParserOptions:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

- (uint64_t)setDeviceType:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setSurfaceSize:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setSurfaceCoordinates:(uint64_t)a3
{
  if (result)
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

- (HSUtil::Encoder)encodeToMap:(HSUtil:(const HSUtil::CoderKey *)a2 :Encoder *)a1 .cold.1(HSUtil::Encoder *a1, const HSUtil::CoderKey *a2)
{
  HSUtil::Encoder::encodeUInt(a1, a2, 0);
  v2 = OUTLINED_FUNCTION_3();
  HSUtil::Encoder::encodeInt(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_3();
  HSUtil::Encoder::encodeInt(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_3();
  HSUtil::Encoder::encodeInt(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_3();
  HSUtil::Encoder::encodeInt(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_3();

  return HSUtil::Encoder::encodeInt(v14, v15, v16);
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

- (void)decodeFromMap:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.7()
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