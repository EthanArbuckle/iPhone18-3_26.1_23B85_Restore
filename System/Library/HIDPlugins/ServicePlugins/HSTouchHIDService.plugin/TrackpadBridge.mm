@interface TrackpadBridge
- (BOOL)decodeFromMap:(void *)map;
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (TrackpadBridge)initWithService:(unsigned int)service;
- (id)debug;
- (id)generateHostStateEvent:(id)event;
- (void)encodeToMap:(void *)map;
- (void)handleGetPropertyEvent:(id)event;
- (void)handleSetPropertyEvent:(id)event;
@end

@implementation TrackpadBridge

- (TrackpadBridge)initWithService:(unsigned int)service
{
  v3 = *&service;
  v5 = [(PointerSettings *)[TrackpadSettings alloc] initWithService:*&service];
  v8.receiver = self;
  v8.super_class = TrackpadBridge;
  v6 = [(PointerBridge *)&v8 initWithService:v3 settings:v5];

  return v6;
}

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = [NSString stringWithUTF8String:?];
  if ([v5 isEqualToString:@"HostStateNotification"])
  {
    v6 = [(TrackpadBridge *)self generateHostStateEvent:eventCopy[5]];
    if (v6)
    {
      v8.receiver = self;
      v8.super_class = TrackpadBridge;
      [(PointerBridge *)&v8 dispatch:v6];
    }
  }

  v7.receiver = self;
  v7.super_class = TrackpadBridge;
  [(PointerBridge *)&v7 handleSetPropertyEvent:eventCopy];
}

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = [NSString stringWithUTF8String:?];
  if ([v5 isEqualToString:@"DeviceTypeHint"])
  {
    v6 = @"Trackpad";
  }

  else
  {
    if (![v5 isEqualToString:@"SupportedGestures"])
    {
      goto LABEL_13;
    }

    v6 = [&off_112BC8 mutableCopy];
    settings = [(PointerBridge *)self settings];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      settings2 = [(PointerBridge *)self settings];
      if ([settings2 gestureScrollingEnabled])
      {
        [(__CFString *)v6 addObject:@"Scroll"];
      }

      if ([settings2 zoom])
      {
        [(__CFString *)v6 addObject:@"Scale"];
      }

      if ([settings2 rotate])
      {
        [(__CFString *)v6 addObject:@"Rotate"];
      }
    }
  }

  v7 = eventCopy[5];
  eventCopy[5] = v6;

LABEL_13:
  v11.receiver = self;
  v11.super_class = TrackpadBridge;
  [(PointerBridge *)&v11 handleGetPropertyEvent:eventCopy];
}

- (id)debug
{
  v11.receiver = self;
  v11.super_class = TrackpadBridge;
  debug = [(PointerBridge *)&v11 debug];
  v4 = [debug mutableCopy];

  v5 = [NSNumber numberWithBool:[(TrackpadBridge *)self coverClosed]];
  [v4 setObject:v5 forKeyedSubscript:@"CoverClosed"];

  v6 = [NSNumber numberWithBool:[(TrackpadBridge *)self displayOff]];
  [v4 setObject:v6 forKeyedSubscript:@"DisplayOff"];

  v7 = [NSNumber numberWithUnsignedInteger:[(TrackpadBridge *)self screenOrientation]];
  [v4 setObject:v7 forKeyedSubscript:@"ScreenOrientation"];

  v8 = [NSNumber numberWithUnsignedInteger:[(TrackpadBridge *)self deviceOrientation]];
  [v4 setObject:v8 forKeyedSubscript:@"DeviceOrientation"];

  v9 = [v4 copy];

  return v9;
}

- (id)generateHostStateEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy objectForKey:@"DigitizerSurfaceCovered"];
  bOOLValue = [v5 BOOLValue];

  v7 = [eventCopy objectForKey:@"ScreenOn"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [eventCopy objectForKey:@"GraphicsOrientation"];
  intValue = [v10 intValue];

  v12 = [eventCopy objectForKey:@"DeviceOrientation"];
  intValue2 = [v12 intValue];

  if (bOOLValue == [(TrackpadBridge *)self coverClosed]&& v9 == [(TrackpadBridge *)self displayOff]&& [(TrackpadBridge *)self screenOrientation]== intValue && [(TrackpadBridge *)self deviceOrientation]== intValue2)
  {
    v14 = MTLoggingPlugin();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315650;
      v19 = "[Debug] ";
      v20 = 2080;
      v21 = "";
      v22 = 2080;
      v23 = "[TrackpadBridge generateHostStateEvent:]";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Received host state notification, but nothing changed.", &v18, 0x20u);
    }

    v15 = 0;
  }

  else
  {
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136316674;
      v19 = "[Debug] ";
      v20 = 2080;
      v21 = "";
      v22 = 2080;
      v23 = "[TrackpadBridge generateHostStateEvent:]";
      v24 = 1024;
      v25 = bOOLValue;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = intValue;
      v30 = 1024;
      v31 = intValue2;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Received host state notification coverClosed(%d) displayOff(%d) screenOrientation(%d) deviceOrientation(%d)", &v18, 0x38u);
    }

    [(TrackpadBridge *)self setCoverClosed:bOOLValue];
    [(TrackpadBridge *)self setDisplayOff:v9];
    [(TrackpadBridge *)self setScreenOrientation:intValue];
    [(TrackpadBridge *)self setDeviceOrientation:intValue2];
    v15 = [[HSTHostStateEvent alloc] initWithDeviceOrientation:intValue2 screenOrientation:intValue coverClosed:bOOLValue displayOff:v9];
  }

  return v15;
}

- (void)encodeToMap:(void *)map
{
  v4 = HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key;
  settings = [(PointerBridge *)self settings];
  HSUtil::Encoder::encodeHSCodable(map, v4, settings);
}

- (BOOL)decodeFromMap:(void *)map
{
  v4 = HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key;
  settings = [(PointerBridge *)self settings];
  HSUtil::Decoder::decodeHSCodable(map, v4, settings);

  return 1;
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v6 = *(encode + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  [(TrackpadBridge *)self encodeToMap:encode];
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
    v6 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/Bridges/TrackpadBridge.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [TrackpadBridge handleHSDecode:v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(TrackpadBridge *)self decodeFromMap:&v10];
  }

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

- (void)handleHSDecode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = 136315906;
  v2 = "[TrackpadBridge handleHSDecode:]";
  v3 = 2080;
  v4 = a1;
  v5 = 2048;
  v6 = 166;
  v7 = 2080;
  v8 = "coder";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", &v1, 0x2Au);
}

@end