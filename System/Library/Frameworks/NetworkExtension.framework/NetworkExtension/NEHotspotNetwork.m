@interface NEHotspotNetwork
+ (void)fetchCurrentWithCompletionHandler:(void *)completionHandler;
- (BOOL)didAutoJoin;
- (BOOL)didJustJoin;
- (BOOL)isChosenHelper;
- (BOOL)isSecure;
- (NSString)BSSID;
- (NSString)SSID;
- (double)signalStrength;
- (id)description;
- (id)initWithNetwork:(void *)a1;
- (void)dealloc;
- (void)setConfidence:(NEHotspotHelperConfidence)confidence;
- (void)setNetwork:(uint64_t)a1;
- (void)setPassword:(NSString *)password;
@end

@implementation NEHotspotNetwork

- (BOOL)isChosenHelper
{
  if (self)
  {
    network = self->_network;
  }

  return CNNetworkIsChosenPlugin() != 0;
}

- (BOOL)didJustJoin
{
  if (self)
  {
    network = self->_network;
  }

  return CNNetworkWasJustJoined() != 0;
}

- (BOOL)didAutoJoin
{
  if (self)
  {
    network = self->_network;
  }

  return CNNetworkWasAutoJoined() != 0;
}

- (BOOL)isSecure
{
  if (self)
  {
    network = self->_network;
  }

  return CNNetworkIsProtected() != 0;
}

- (void)setPassword:(NSString *)password
{
  if (self)
  {
    self = self->_network;
  }

  MEMORY[0x1EEDF2F70](self, password);
}

- (void)setConfidence:(NEHotspotHelperConfidence)confidence
{
  if (self)
  {
    network = self->_network;
    CNNetworkSetConfidence();
    v6 = self->_network;
  }

  else
  {
    CNNetworkSetConfidence();
    v6 = 0;
  }

  MEMORY[0x1EEDF2F60](v6, confidence != kNEHotspotHelperConfidenceNone);
}

- (double)signalStrength
{
  if (self)
  {
    self = self->_network;
  }

  MEMORY[0x1EEDF2F48](self, a2);
  return result;
}

- (NSString)BSSID
{
  if (self)
  {
    self = self->_network;
  }

  return MEMORY[0x1EEDF2F38](self, a2);
}

- (NSString)SSID
{
  if (self)
  {
    self = self->_network;
  }

  return MEMORY[0x1EEDF2F40](self, a2);
}

- (id)description
{
  if (self)
  {
    self = self->_network;
  }

  v2 = CFCopyDescription(self);

  return v2;
}

- (void)dealloc
{
  if (self)
  {
    network = self->_network;
    if (network)
    {
      CFRelease(network);
    }

    self->_network = 0;
  }

  v4.receiver = self;
  v4.super_class = NEHotspotNetwork;
  [(NEHotspotNetwork *)&v4 dealloc];
}

+ (void)fetchCurrentWithCompletionHandler:(void *)completionHandler
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  if ((NEHelperCopyCurrentNetworkAsync() & 1) == 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a1;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ internal error", buf, 0xCu);
    }

    v4[2](v4, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __54__NEHotspotNetwork_fetchCurrentWithCompletionHandler___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((a2 & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      *v29 = 138412290;
      *&v29[4] = v25;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ failed to communicate to helper server for Wi-Fi information request", v29, 0xCu);
    }
  }

  if (a3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *v29 = 138412546;
      *&v29[4] = v24;
      *&v29[12] = 2048;
      *&v29[14] = a3;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@ nehelper sent invalid result code [%lld] for Wi-Fi information request", v29, 0x16u);
    }

    goto LABEL_9;
  }

  if (!v7 || (a2 & 1) == 0)
  {
LABEL_9:
    (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  TypeID = CFDictionaryGetTypeID();
  if (v11 && CFGetTypeID(v11) == TypeID)
  {
    Value = CFDictionaryGetValue(v11, *MEMORY[0x1E69822D8]);
    v14 = CFDictionaryGetValue(v11, *MEMORY[0x1E69822D0]);
    v15 = CFDictionaryGetValue(v11, @"wifi-security-type");
    if (Value && v14 && (v16 = v15) != 0)
    {
      v17 = CNNetworkCreateWithSSIDAndBSSID();
      v18 = [NEHotspotNetwork alloc];
      v19 = v16;
      if (v18)
      {
        *v29 = v18;
        *&v29[8] = NEHotspotNetwork;
        v20 = objc_msgSendSuper2(v29, sel_init);
        v18 = v20;
        if (v20)
        {
          [(NEHotspotNetwork *)v20 setNetwork:v17];
          v21 = [v19 integerValue];
          if (v21 >= 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = v21;
          }

          [(NEHotspotNetwork *)v18 setSecurityType:v22];
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 40);
        *v29 = 138412290;
        *&v29[4] = v28;
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "%@ received nil data for Wi-Fi information request", v29, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

LABEL_34:
    CFRelease(v11);
    goto LABEL_10;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 40);
    *v29 = 138412290;
    *&v29[4] = v27;
    _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "%@ received unexpected data for Wi-Fi information request", v29, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  if (v11)
  {
    goto LABEL_34;
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setNetwork:(uint64_t)a1
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = cf;
}

- (id)initWithNetwork:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = NEHotspotNetwork;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    [(NEHotspotNetwork *)v3 setNetwork:a2];
  }

  return v4;
}

@end