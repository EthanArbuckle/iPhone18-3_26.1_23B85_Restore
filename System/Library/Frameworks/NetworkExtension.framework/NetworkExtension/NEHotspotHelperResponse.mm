@interface NEHotspotHelperResponse
- (id)description;
- (void)dealloc;
- (void)deliver;
- (void)deliverInternal;
- (void)setNetwork:(NEHotspotNetwork *)network;
- (void)setNetworkList:(NSArray *)networkList;
@end

@implementation NEHotspotHelperResponse

- (void)deliverInternal
{
  if (self)
  {
    self = self->_response;
  }

  MEMORY[0x1EEDF2FC8](self, a2);
}

- (void)deliver
{
  if (self)
  {
    selfCopy = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47__NEHotspotHelperResponse_denyResponseDelivery__block_invoke;
    v4[3] = &unk_1E7F0B0E8;
    v4[4] = self;
    if (denyResponseDelivery_onceToken != -1)
    {
      dispatch_once(&denyResponseDelivery_onceToken, v4);
    }

    if (denyResponseDelivery_isProvider == 1)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v4[0]) = 0;
        _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "This method call is unsupported in this app extension process", v4, 2u);
      }

      return;
    }

    self = selfCopy->_response;
  }

  MEMORY[0x1EEDF2FC8](self, a2);
}

void __47__NEHotspotHelperResponse_denyResponseDelivery__block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v5 = 0;
    goto LABEL_20;
  }

  v1 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v6 = "could not find extension record for the current process";
    v7 = &v14;
LABEL_22:
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, v6, v7, 2u);
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = [v1 extensionPointRecord];
    v3 = [v2 identifier];

    if (v3)
    {
      if (([v3 isEqual:@"com.apple.networkextension.hotspot-evaluation"]& 1) != 0 || [v3 isEqual:@"com.apple.networkextension.hotspot-authentication"])
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "current process is either evaluation or authentication hotspot provider", v11, 2u);
        }

        v5 = 1;
        goto LABEL_18;
      }

      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
LABEL_17:
        v5 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v10 = 0;
      v8 = "current app extension process does not match required extension point id";
      v9 = &v10;
    }

    else
    {
      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v12 = 0;
      v8 = "could not find extension point id for the current process";
      v9 = &v12;
    }

    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, v8, v9, 2u);
    goto LABEL_17;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v6 = "received nil extension record for the current process";
    v7 = buf;
    goto LABEL_22;
  }

LABEL_13:
  v5 = 0;
LABEL_19:

LABEL_20:
  denyResponseDelivery_isProvider = v5;
}

- (void)setNetworkList:(NSArray *)networkList
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = networkList;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v11 + 8);
        }

        else
        {
          v12 = 0;
        }

        CFArrayAppendValue(Mutable, v12);
        ++v10;
      }

      while (v8 != v10);
      v13 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v8 = v13;
    }

    while (v13);
  }

  if (Mutable)
  {
    if (self)
    {
      response = self->_response;
    }

    CNPluginResponseSetNetworkList();
    CFRelease(Mutable);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setNetwork:(NEHotspotNetwork *)network
{
  v4 = network;
  if (self)
  {
    response = self->_response;
  }

  v7 = v4;
  if (v4)
  {
    v6 = v4->_network;
  }

  CNPluginResponseSetNetwork();
}

- (id)description
{
  if (self)
  {
    self = self->_response;
  }

  v2 = CFCopyDescription(self);

  return v2;
}

- (void)dealloc
{
  if (self)
  {
    response = self->_response;
    if (response)
    {
      CFRelease(response);
    }

    self->_response = 0;
  }

  v4.receiver = self;
  v4.super_class = NEHotspotHelperResponse;
  [(NEHotspotHelperResponse *)&v4 dealloc];
}

@end