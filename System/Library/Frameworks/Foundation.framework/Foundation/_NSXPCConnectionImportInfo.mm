@interface _NSXPCConnectionImportInfo
- (_NSXPCConnectionImportInfo)init;
- (os_unfair_lock_s)_valueForEntitlement:(_OWORD *)entitlement auditToken:;
- (uint64_t)removeProxy:(uint64_t)proxy;
- (void)_clearEntitlementCache;
- (void)addProxy:(uint64_t)proxy;
- (void)dealloc;
@end

@implementation _NSXPCConnectionImportInfo

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  proxyNumberToCount = self->_proxyNumberToCount;
  if (proxyNumberToCount)
  {
    CFRelease(proxyNumberToCount);
  }

  secTaskRef = self->_secTaskRef;
  if (secTaskRef)
  {
    CFRelease(secTaskRef);
  }

  v5.receiver = self;
  v5.super_class = _NSXPCConnectionImportInfo;
  [(_NSXPCConnectionImportInfo *)&v5 dealloc];
}

- (void)_clearEntitlementCache
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 24);
    if (v2 && (*(self + 36) & 1) == 0)
    {
      *(self + 36) = 1;
      CFRelease(v2);
      *(self + 24) = 0;
    }

    os_unfair_lock_unlock((self + 32));
  }
}

- (_NSXPCConnectionImportInfo)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSXPCConnectionImportInfo;
  result = [(_NSXPCConnectionImportInfo *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)addProxy:(uint64_t)proxy
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (proxy)
  {
    if (a2)
    {
      v3 = *(a2 + 40);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_lock((proxy + 32));
    Mutable = *(proxy + 16);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
      *(proxy + 16) = Mutable;
    }

    v8[0] = 0;
    if (CFDictionaryGetValueIfPresent(Mutable, v3, v8))
    {
      v5 = v8[0] + 1;
      v6 = Mutable;
      v7 = v3;
    }

    else
    {
      v6 = Mutable;
      v7 = v3;
      v5 = 1;
    }

    CFDictionarySetValue(v6, v7, v5);
    os_unfair_lock_unlock((proxy + 32));
  }
}

- (uint64_t)removeProxy:(uint64_t)proxy
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!proxy)
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a2 + 40);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_lock((proxy + 32));
  Mutable = *(proxy + 16);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
    *(proxy + 16) = Mutable;
  }

  v7[0] = 0;
  if (!CFDictionaryGetValueIfPresent(Mutable, v3, v7))
  {
    goto LABEL_10;
  }

  if (v7[0] != 1)
  {
    CFDictionarySetValue(Mutable, v3, v7[0] - 1);
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  CFDictionaryRemoveValue(Mutable, v3);
  v5 = 1;
LABEL_11:
  os_unfair_lock_unlock((proxy + 32));
  return v5;
}

- (os_unfair_lock_s)_valueForEntitlement:(_OWORD *)entitlement auditToken:
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (qword_1ED440310 != -1)
    {
      dispatch_once(&qword_1ED440310, &__block_literal_global_90);
    }

    if (_MergedGlobals_156)
    {
      v6 = off_1ED440308 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      os_unfair_lock_lock(v5 + 8);
      v8 = *&v5[6]._os_unfair_lock_opaque;
      if (v8)
      {
        goto LABEL_15;
      }

      os_unfair_lock_unlock(v5 + 8);
      v9 = *MEMORY[0x1E695E4A8];
      v10 = entitlement[1];
      *buf = *entitlement;
      *&buf[16] = v10;
      v8 = _MergedGlobals_156(v9, buf);
      os_unfair_lock_lock(v5 + 8);
      if (*&v5[6]._os_unfair_lock_opaque)
      {
        CFRelease(v8);
        v8 = *&v5[6]._os_unfair_lock_opaque;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *&v5[6]._os_unfair_lock_opaque = v8;
        if (v8)
        {
LABEL_15:
          cf = 0;
          v11 = off_1ED440308(v8, a2, &cf);
          v12 = cf;
          if (!v11 && cf)
          {
            v13 = _NSXPCLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = a2;
              *&buf[12] = 2114;
              *&buf[14] = cf;
              _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "[NSXPCConnection valueForEntitlement:]: Error getting value for entitlement '%{public}@': %{public}@", buf, 0x16u);
            }

            v12 = cf;
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_24;
        }
      }

      v11 = 0;
LABEL_24:
      os_unfair_lock_unlock(v5 + 8);
      return v11;
    }

    v7 = _NSXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "valueForEntitlement couldn't load a Security symbol.", buf, 2u);
    }

    return 0;
  }

  return result;
}

@end