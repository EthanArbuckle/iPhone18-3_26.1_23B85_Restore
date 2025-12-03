@interface NEIPsecNexus
- (BOOL)setDefaultInputHandler:(nw_protocol *)handler;
- (uint64_t)initializeWithCount:(void *)count;
- (void)setRemotePacketProxy:(id)proxy;
@end

@implementation NEIPsecNexus

- (void)setRemotePacketProxy:(id)proxy
{
  proxyCopy = proxy;
  [(NEInternetNexus *)self setPacketProxy:proxyCopy];
  if (proxyCopy)
  {
    -[NEIPsecNexus setDefaultInputHandler:](self, "setDefaultInputHandler:", [proxyCopy protocol]);
    if (self)
    {
      Property = objc_getProperty(self, v5, 112, 1);
      self = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 8, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    protocol_handler = nw_channel_get_protocol_handler();

    if (protocol_handler)
    {
      [proxyCopy setDefaultOutputProtocolHandler:protocol_handler];
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Could not get kernel channel protocol", v11, 2u);
      }
    }
  }
}

- (BOOL)setDefaultInputHandler:(nw_protocol *)handler
{
  v14 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315138;
      v13 = "[NEIPsecNexus setDefaultInputHandler:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null inputHandler", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (self)
  {
    Property = objc_getProperty(self, a2, 112, 1);
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 8, 1);
    }
  }

  else
  {
    v6 = 0;
    Property = 0;
  }

  v7 = Property;
  protocol_handler = nw_channel_get_protocol_handler();

  if (!protocol_handler)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Could not get kernel channel protocol", &v12, 2u);
    }

LABEL_9:

    result = 0;
    goto LABEL_10;
  }

  (**(protocol_handler + 24))(protocol_handler, handler);
  result = 1;
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)initializeWithCount:(void *)count
{
  v23 = *MEMORY[0x1E69E9840];
  if ([count virtualInterface])
  {
    v4 = NEVirtualInterfaceCopyNexusInstances([count virtualInterface], a2);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count == a2)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (a2)
        {
          v8 = 0;
          v9 = *MEMORY[0x1E695E480];
          v10 = a2;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
            v12 = CFUUIDCreateString(v9, ValueAtIndex);
            v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
            [v7 addObject:v13];

            ++v8;
          }

          while (v10 != v8);
        }

        CFRelease(v5);
        [count setNexusInstances:v7];

        goto LABEL_8;
      }

      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v18[0] = 67109634;
        v18[1] = a2;
        v19 = 1024;
        v20 = Count;
        v21 = 2112;
        v22 = v5;
        _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "Expected to create %u channels, created %u:%@", v18, 0x18u);
      }

      CFRelease(v5);
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v18[0]) = 0;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "NEVirtualInterfaceCopyNexusInstances failed", v18, 2u);
      }
    }

    result = 0;
    goto LABEL_16;
  }

LABEL_8:
  result = 1;
LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end