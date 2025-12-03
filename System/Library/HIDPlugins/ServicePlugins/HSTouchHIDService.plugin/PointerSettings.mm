@interface PointerSettings
+ (id)devicePropertiesFromService:(unsigned int)service;
- (BOOL)decodeFromMap:(void *)map;
- (BOOL)hsDecode:(void *)decode;
- (BOOL)hsEncode:(void *)encode;
- (NSDictionary)debug;
- (PointerSettings)initWithPreferences:(id)preferences service:(unsigned int)service;
- (PointerSettings)initWithService:(unsigned int)service;
- (id)remapUserFacingKey:(id)key;
- (id)remapUserFacingValue:(id)value forKey:(id)key;
- (id)updatePreferenceKey:(id)key to:(id)to;
- (void)encodeToMap:(void *)map;
@end

@implementation PointerSettings

+ (id)devicePropertiesFromService:(unsigned int)service
{
  properties = 0;
  v3 = IORegistryEntryCreateCFProperties(service, &properties, kCFAllocatorDefault, 0);
  v4 = properties;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = properties == 0;
  }

  if (v5)
  {
    v6 = &__NSDictionary0__struct;
  }

  else
  {
    v6 = [(__CFDictionary *)properties copy];
  }

  return v6;
}

- (PointerSettings)initWithService:(unsigned int)service
{
  v3 = *&service;
  defaultPreferences = [(PointerSettings *)self defaultPreferences];
  v6 = [(PointerSettings *)self initWithPreferences:defaultPreferences service:v3];

  return v6;
}

- (PointerSettings)initWithPreferences:(id)preferences service:(unsigned int)service
{
  preferencesCopy = preferences;
  v11.receiver = self;
  v11.super_class = PointerSettings;
  v8 = [(PointerSettings *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_service = service;
    objc_storeStrong(&v8->_preferences, preferences);
    v9->_zoomToggle = 1;
    *&v9->_enable = 16843009;
  }

  return v9;
}

- (NSDictionary)debug
{
  v10[0] = @"Enable";
  v3 = [NSNumber numberWithBool:[(PointerSettings *)self enable]];
  v11[0] = v3;
  v10[1] = @"VerticalScrolling";
  v4 = [NSNumber numberWithBool:[(PointerSettings *)self verticalScrolling]];
  v11[1] = v4;
  v10[2] = @"HorizontalScrolling";
  v5 = [NSNumber numberWithBool:[(PointerSettings *)self horizontalScrolling]];
  v11[2] = v5;
  v10[3] = @"ScrollMomentum";
  v6 = [NSNumber numberWithBool:[(PointerSettings *)self scrollMomentumEnabled]];
  v11[3] = v6;
  v10[4] = @"ZoomToggle";
  v7 = [NSNumber numberWithBool:[(PointerSettings *)self zoomToggle]];
  v11[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (id)remapUserFacingKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"Clicking"])
  {
    v4 = @"TapToClickEnabled";
  }

  else if ([keyCopy isEqualToString:@"TrackpadRightClick"])
  {
    v4 = @"TwoFingersSecondaryClickEnabled";
  }

  else if ([keyCopy isEqualToString:@"Dragging"])
  {
    v4 = @"DoubleTapToDragEnabled";
  }

  else if ([keyCopy isEqualToString:@"DragLock"])
  {
    v4 = @"DragLockEnabled";
  }

  else
  {
    v4 = keyCopy;
  }

  return v4;
}

- (id)remapUserFacingValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"MouseButtonMode"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = valueCopy;
      if ([v7 isEqualToString:@"TwoButton"])
      {
        v8 = &off_1120F8;
LABEL_9:

        goto LABEL_12;
      }

      if ([v7 isEqualToString:@"TwoButtonSwapped"])
      {
        v8 = &off_112110;
        goto LABEL_9;
      }

      if ([v7 isEqualToString:@"OneButton"])
      {
        v8 = &off_112128;
        goto LABEL_9;
      }
    }
  }

  v8 = valueCopy;
LABEL_12:

  return v8;
}

- (id)updatePreferenceKey:(id)key to:(id)to
{
  keyCopy = key;
  toCopy = to;
  v8 = [(PointerSettings *)self remapUserFacingKey:keyCopy];
  v9 = [(PointerSettings *)self remapUserFacingValue:toCopy forKey:keyCopy];
  preferenceKeys = [(PointerSettings *)self preferenceKeys];
  v11 = [preferenceKeys containsObject:v8];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 136316418;
      v26 = "[Error] ";
      v27 = 2080;
      v28 = "";
      v29 = 2080;
      v30 = "[PointerSettings updatePreferenceKey:to:]";
      v31 = 2114;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = keyCopy;
      v17 = v32;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Invalid value(%{public}@) of %{public}@ was provided for preference %{public}@", &v25, 0x3Eu);
    }

    goto LABEL_8;
  }

  v12 = v9;
  preferences = [(PointerSettings *)self preferences];
  v14 = [preferences objectForKeyedSubscript:v8];

  if ([v14 isEqualToNumber:v12])
  {
    v15 = 0;
  }

  else
  {
    preferences2 = [(PointerSettings *)self preferences];
    v19 = [preferences2 mutableCopy];

    [v19 setObject:v12 forKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [TrackpadSettings alloc];
      v21 = [v19 copy];
      v22 = [(TrackpadSettings *)v20 initWithPreferences:v21 service:[(PointerSettings *)self service]];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [MouseSettings alloc];
      }

      else
      {
        v23 = [PointerSettings alloc];
      }

      v21 = [v19 copy];
      v22 = [(MouseSettings *)v23 initWithPreferences:v21 service:[(PointerSettings *)self service]];
    }

    v15 = v22;
  }

LABEL_17:

  return v15;
}

- (void)encodeToMap:(void *)map
{
  HSUtil::Encoder::encodeBool(map, HSUtil::CoderKey::Literal<(char)101,(char)110,(char)97,(char)98,(char)108,(char)101>::Key, [(PointerSettings *)self enable]);
  HSUtil::Encoder::encodeBool(map, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key, [(PointerSettings *)self verticalScrolling]);
  HSUtil::Encoder::encodeBool(map, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key, [(PointerSettings *)self horizontalScrolling]);
  HSUtil::Encoder::encodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key, [(PointerSettings *)self scrollMomentumEnabled]);
  v5 = HSUtil::CoderKey::Literal<(char)122,(char)111,(char)111,(char)109,(char)84,(char)111,(char)103,(char)103,(char)108,(char)101>::Key;
  zoomToggle = [(PointerSettings *)self zoomToggle];

  HSUtil::Encoder::encodeBool(map, v5, zoomToggle);
}

- (BOOL)decodeFromMap:(void *)map
{
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)101,(char)110,(char)97,(char)98,(char)108,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)118,(char)101,(char)114,(char)105,(char)116,(char)99,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)115,(char)99,(char)114,(char)111,(char)108,(char)108,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
    }

    return 0;
  }

  HSUtil::Decoder::decodeBool(map, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)108,(char)102,(char)46,(char)122,(char)111,(char)111,(char)109,(char)84,(char)111,(char)103,(char)108,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings decodeFromMap:];
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

  [(PointerSettings *)self encodeToMap:encode];
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
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerSettings hsDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(PointerSettings *)self decodeFromMap:&v9];
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

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end