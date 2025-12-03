@interface NEIKEv2Server
- (id)getNextViableServerAddressForPath:(void *)path;
- (id)getViableServerAddressForPath:(void *)path;
- (void)dealloc;
- (void)resetPathProxyState;
- (void)setServerResolvedAddress:(void *)address path:;
- (void)startRedirectTimer;
- (void)stopRedirectTimer;
@end

@implementation NEIKEv2Server

- (void)dealloc
{
  [(NEIKEv2Server *)self stopRedirectTimer];
  v3.receiver = self;
  v3.super_class = NEIKEv2Server;
  [(NEIKEv2Server *)&v3 dealloc];
}

- (void)stopRedirectTimer
{
  if (self)
  {
    v2 = *(self + 72);
    if (v2)
    {
      source = v2;
      if (dispatch_source_testcancel(v2))
      {
        v3 = source;
      }

      else
      {
        dispatch_source_cancel(source);
        v3 = *(self + 72);
      }

      *(self + 72) = 0;
    }
  }
}

- (void)setServerResolvedAddress:(void *)address path:
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v7 = [NEIKEv2AddressList normalizeServerAddress:v5 path:address];
    if (!v7)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v26 = 136315138;
        *v27 = "[NEIKEv2Server setServerResolvedAddress:path:]";
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null normalizedAddress", &v26, 0xCu);
      }

      goto LABEL_19;
    }

    if (!objc_getProperty(self, v6, 24, 1))
    {
      v9 = objc_alloc_init(NEIKEv2AddressList);
      objc_setProperty_atomic(self, v10, v9, 24);
    }

    Property = objc_getProperty(self, v8, 24, 1);
    v12 = v5;
    v13 = v12;
    if (!Property)
    {
LABEL_19:

      goto LABEL_20;
    }

    if (!v12)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v26 = 136315138;
        *v27 = "[NEIKEv2AddressList addAddressToList:]";
        _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "%s called with null address", &v26, 0xCu);
      }

      goto LABEL_18;
    }

    v14 = NEGetAddressFamilyFromString(v12);
    if (v14 == 30)
    {
      v16 = 8;
      v17 = Property;
      v18 = 8;
    }

    else
    {
      if (v14 != 2)
      {
        v23 = v14;
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = 67109378;
          v27[0] = v23;
          LOWORD(v27[1]) = 2112;
          *(&v27[1] + 2) = v13;
          _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Bad address family %d for address %@", &v26, 0x12u);
        }

        v22 = 0;
        goto LABEL_18;
      }

      v16 = 16;
      v17 = Property;
      v18 = 16;
    }

    if (!objc_getProperty(v17, v15, v18, 1))
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_setProperty_atomic(Property, v21, v20, v16);
    }

    v22 = objc_getProperty(Property, v19, v16, 1);
    if (([v22 containsObject:v13]& 1) == 0)
    {
      [v22 addObject:v13];
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)startRedirectTimer
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(NEIKEv2Server *)self stopRedirectTimer];
    if (objc_getProperty(self, v2, 32, 1))
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[NEIKEv2Server startRedirectTimer]";
        _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "%s: Starting timer\n", buf, 0xCu);
      }

      v4 = dispatch_time(0, 300000000000);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__NEIKEv2Server_startRedirectTimer__block_invoke;
      v8[3] = &unk_1E7F0B0E8;
      v8[4] = self;
      v5 = NERepeatingEventCreate(MEMORY[0x1E69E96A0], v4, 0, 300000, 150000, 0, v8, 0);
      v6 = self[9];
      self[9] = v5;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __35__NEIKEv2Server_startRedirectTimer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[NEIKEv2Server startRedirectTimer]_block_invoke";
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "%s: timeout\n", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 12) = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)resetPathProxyState
{
  if (self)
  {
    self[8] = 0;
    objc_setProperty_atomic(self, a2, 0, 56);

    objc_setProperty_atomic(self, v3, 0, 64);
  }
}

- (id)getNextViableServerAddressForPath:(void *)path
{
  v33 = *MEMORY[0x1E69E9840];
  if (path)
  {
    v3 = a2;
    Property = objc_getProperty(path, v4, 24, 1);
    v6 = v3;
    v7 = v6;
    if (Property)
    {
      if ([v6 supportsIPv6])
      {
        v9 = Property[3];
        if (v9 < [objc_getProperty(Property v8])
        {
          v11 = [objc_getProperty(Property v10];
          ++Property[3];
LABEL_21:

          v24 = [NEIKEv2AddressList normalizeServerAddress:v11 path:v7];
          objc_setProperty_atomic(path, v25, v24, 16);

          goto LABEL_22;
        }
      }

      if ([v7 supportsIPv4])
      {
        v13 = Property[4];
        if (v13 < [objc_getProperty(Property v12])
        {
          v11 = [objc_getProperty(Property v14];
          ++Property[4];
          goto LABEL_21;
        }
      }

      if ([v7 supportsIPv6])
      {
        v16 = Property[4];
        if (v16 < [objc_getProperty(Property v15])
        {
          *buf = 0;
          scopedInterface = [v7 scopedInterface];
          if (scopedInterface)
          {
            [v7 scopedInterface];
          }

          else
          {
            [v7 interface];
          }
          v18 = ;
          [v18 interfaceIndex];

          v19 = nw_nat64_copy_prefixes();
          if (v19)
          {
            v21 = v19;
            v22 = [objc_getProperty(Property v20];
            ++Property[4];
            v11 = [NEIKEv2AddressList getSynthesizedIPv6Address:v22 outgoingIf:*buf nat64Prefixes:v21 numNat64Prefixes:?];
            if (*buf)
            {
              free(*buf);
            }

            goto LABEL_21;
          }
        }
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        if ([v7 supportsIPv4])
        {
          v28 = "yes";
        }

        else
        {
          v28 = "no";
        }

        if ([v7 supportsIPv6])
        {
          v29 = "yes";
        }

        else
        {
          v29 = "no";
        }

        *buf = 136315394;
        *&buf[4] = v28;
        v31 = 2080;
        v32 = v29;
        _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Failed to find suitable address, path supports IPv4 %s IPv6 %s", buf, 0x16u);
      }
    }

    v11 = 0;
    goto LABEL_21;
  }

  v11 = 0;
LABEL_22:
  v26 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)getViableServerAddressForPath:(void *)path
{
  v4 = a2;
  if (path)
  {
    if (objc_getProperty(path, v3, 56, 1))
    {
      v6 = [objc_getProperty(path v5];
LABEL_14:
      path = v6;
      goto LABEL_15;
    }

    Property = objc_getProperty(path, v5, 16, 1);
    if (([NEIKEv2Helper getIdentifierType:?]& 3) != 1)
    {
      v9 = [(NEIKEv2Server *)path getNextViableServerAddressForPath:v4];
    }

    if (objc_getProperty(path, v8, 16, 1))
    {
      v11 = objc_getProperty(path, v10, 16, 1);
      v12 = NEGetAddressFamilyFromString(v11);
      if ([v4 supportsIPv4] && (objc_msgSend(v4, "supportsIPv6") & 1) != 0 || objc_msgSend(v4, "supportsIPv4") && v12 == 2 || objc_msgSend(v4, "supportsIPv6") && v12 == 30)
      {
        v6 = objc_getProperty(path, v13, 16, 1);
        goto LABEL_14;
      }

      if ([v4 supportsIPv4] && objc_getProperty(path, v16, 40, 1))
      {
        pathCopy2 = path;
        v19 = 40;
LABEL_28:
        v6 = [objc_getProperty(pathCopy2 v17];
        goto LABEL_14;
      }

      if ([v4 supportsIPv6])
      {
        if (objc_getProperty(path, v20, 48, 1))
        {
          pathCopy2 = path;
          v19 = 48;
          goto LABEL_28;
        }

        *buf = 0;
        scopedInterface = [v4 scopedInterface];
        if (scopedInterface)
        {
          [v4 scopedInterface];
        }

        else
        {
          [v4 interface];
        }
        v22 = ;
        [v22 interfaceIndex];

        v23 = nw_nat64_copy_prefixes();
        if (v23)
        {
          v25 = v23;
          v26 = objc_getProperty(path, v24, 16, 1);
          path = [NEIKEv2AddressList getSynthesizedIPv6Address:v26 outgoingIf:*buf nat64Prefixes:v25 numNat64Prefixes:?];
          goto LABEL_15;
        }
      }
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "failed to find viable server", buf, 2u);
      }
    }

    path = 0;
  }

LABEL_15:

  return path;
}

@end