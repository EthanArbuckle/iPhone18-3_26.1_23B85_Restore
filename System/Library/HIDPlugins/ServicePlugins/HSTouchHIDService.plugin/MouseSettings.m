@interface MouseSettings
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (MouseSettings)initWithPreferences:(id)a3 service:(unsigned int)a4;
- (id)debug;
- (id)defaultPreferences;
- (void)encodeToMap:(void *)a3;
@end

@implementation MouseSettings

- (MouseSettings)initWithPreferences:(id)a3 service:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v24.receiver = self;
  v24.super_class = MouseSettings;
  v7 = [(PointerSettings *)&v24 initWithPreferences:v6 service:v4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"MouseExternallyDisabled"];
    -[PointerSettings setEnable:](v7, "setEnable:", [v8 BOOLValue] ^ 1);

    v9 = [v6 objectForKeyedSubscript:@"MouseHorizontalScroll"];
    -[PointerSettings setHorizontalScrolling:](v7, "setHorizontalScrolling:", [v9 BOOLValue]);

    v10 = [v6 objectForKeyedSubscript:@"MouseVerticalScroll"];
    -[PointerSettings setVerticalScrolling:](v7, "setVerticalScrolling:", [v10 BOOLValue]);

    v11 = [v6 objectForKeyedSubscript:@"MouseMomentumScroll"];
    -[PointerSettings setScrollMomentumEnabled:](v7, "setScrollMomentumEnabled:", [v11 BOOLValue]);

    v12 = [v6 objectForKeyedSubscript:@"MouseOneFingerDoubleTapGesture"];
    -[PointerSettings setZoomToggle:](v7, "setZoomToggle:", [v12 intValue] == 1);

    v13 = [v6 objectForKeyedSubscript:@"MouseTwoFingerDoubleTapGesture"];
    v7->_missionControl = [v13 unsignedIntValue] == 3;

    v14 = v7;
    v15 = [v6 objectForKeyedSubscript:@"MouseTwoFingerHorizSwipeGesture"];
    v7->_horizontalSwipe2F = [v15 unsignedIntValue];

    AppBooleanValue = MTPreferencesGetAppBooleanValue(@"EnableMouseNavSwipes", @"com.apple.MultitouchSupport", 0);
    if ([(MouseSettings *)v7 horizontalSwipe2F]== 2 && AppBooleanValue)
    {
      [(MouseSettings *)v7 setHorizontalSwipe2F:1];
    }

    v17 = [v6 objectForKeyedSubscript:@"MouseButtonMode"];
    v18 = [v17 unsignedIntValue];

    v19 = v18 - 4;
    if (v19 <= 0xFFFFFFFC)
    {
      v17 = [(MouseSettings *)v7 defaultPreferences];
      v14 = [v17 objectForKeyedSubscript:@"MouseButtonMode"];
      v18 = [v14 unsignedIntValue];
    }

    [(MouseSettings *)v7 setButtonMode:v18];
    if (v19 <= 0xFFFFFFFC)
    {
    }

    v20 = [v6 objectForKeyedSubscript:@"MouseButtonDivision"];
    v21 = [v20 unsignedIntValue];

    v22 = v21;
    if (v21 - 100 <= 0xFFFFFF9C)
    {
      v20 = [(MouseSettings *)v7 defaultPreferences];
      v14 = [v20 objectForKeyedSubscript:@"MouseButtonDivision"];
      v22 = [v14 unsignedIntValue];
    }

    [(MouseSettings *)v7 setButtonDivision:v22];
    if (v21 - 100 <= 0xFFFFFF9C)
    {
    }
  }

  return v7;
}

- (id)defaultPreferences
{
  v4[0] = @"MouseHorizontalScroll";
  v4[1] = @"MouseVerticalScroll";
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = @"MouseMomentumScroll";
  v4[3] = @"MouseOneFingerDoubleTapGesture";
  v5[2] = &off_112140;
  v5[3] = &__kCFBooleanFalse;
  v4[4] = @"MouseTwoFingerDoubleTapGesture";
  v4[5] = @"MouseTwoFingerHorizSwipeGesture";
  v5[4] = &off_112158;
  v5[5] = &off_112158;
  v4[6] = @"MouseButtonMode";
  v4[7] = @"MouseButtonDivision";
  v5[6] = &off_112128;
  v5[7] = &off_112188;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

- (id)debug
{
  v11.receiver = self;
  v11.super_class = MouseSettings;
  v3 = [(PointerSettings *)&v11 debug];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(MouseSettings *)self missionControl]];
  [v4 setObject:v5 forKeyedSubscript:@"MissionControl"];

  v6 = [NSNumber numberWithUnsignedChar:[(MouseSettings *)self horizontalSwipe2F]];
  [v4 setObject:v6 forKeyedSubscript:@"HorizontalSwipe2F"];

  v7 = [NSNumber numberWithUnsignedChar:[(MouseSettings *)self buttonMode]];
  [v4 setObject:v7 forKeyedSubscript:@"ButtonMode"];

  v8 = [NSNumber numberWithUnsignedChar:[(MouseSettings *)self buttonDivision]];
  [v4 setObject:v8 forKeyedSubscript:@"ButtonDivision"];

  v9 = [v4 copy];

  return v9;
}

- (void)encodeToMap:(void *)a3
{
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)109,(char)105,(char)115,(char)115,(char)105,(char)111,(char)110,(char)67,(char)111,(char)110,(char)116,(char)114,(char)111,(char)108>::Key, [(MouseSettings *)self missionControl]);
  HSUtil::Encoder::encodeInt(a3, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key, [(MouseSettings *)self horizontalSwipe2F]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)77,(char)111,(char)100,(char)101>::Key, [(MouseSettings *)self buttonMode]);
  v5 = HSUtil::CoderKey::Literal<(char)98,(char)117,(char)116,(char)116,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)115,(char)105,(char)111,(char)110>::Key;
  v6 = [(MouseSettings *)self buttonDivision];

  HSUtil::Encoder::encodeUInt(a3, v5, v6);
}

- (BOOL)decodeFromMap:(void *)a3
{
  [(MouseSettings *)self setMissionControl:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)109, (char)105, (char)115, (char)115, (char)105, (char)111, (char)110, (char)67, (char)111, (char)110, (char)116, (char)114, (char)111, (char)108>::Key)];
  if (*a3 >= 2u)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MouseSettings decodeFromMap:];
    }
  }

  else
  {
    [(MouseSettings *)self setHorizontalSwipe2F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)104, (char)111, (char)114, (char)105, (char)122, (char)111, (char)110, (char)116, (char)97, (char)108, (char)83, (char)119, (char)105, (char)112, (char)101, (char)50, (char)70>::Key)];
    if (*a3 >= 2u)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MouseSettings decodeFromMap:];
      }
    }

    else
    {
      [(MouseSettings *)self setButtonMode:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)98, (char)117, (char)116, (char)116, (char)111, (char)110, (char)77, (char)111, (char)100, (char)101>::Key)];
      if (*a3 >= 2u)
      {
        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MouseSettings decodeFromMap:];
        }
      }

      else
      {
        [(MouseSettings *)self setButtonDivision:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)98, (char)117, (char)116, (char)116, (char)111, (char)110, (char)68, (char)105, (char)118, (char)105, (char)115, (char)105, (char)111, (char)110>::Key)];
        if (*a3 < 2u)
        {
          return 1;
        }

        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [MouseSettings decodeFromMap:];
        }
      }
    }
  }

  return 0;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xEAu, 0);
  }

  v6.receiver = self;
  v6.super_class = MouseSettings;
  [(PointerSettings *)&v6 encodeToMap:a3];
  [(MouseSettings *)self encodeToMap:a3];
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
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(a3, &v10);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MouseSettings hsDecode:];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MouseSettings;
    if ([(PointerSettings *)&v9 decodeFromMap:&v10])
    {
      if ([(MouseSettings *)self decodeFromMap:&v10])
      {
        v6 = 1;
        goto LABEL_12;
      }

      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MouseSettings hsDecode:];
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [MouseSettings hsDecode:];
      }
    }
  }

  v6 = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = v11;
  *&v11 = 0;
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

- (void)hsDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end