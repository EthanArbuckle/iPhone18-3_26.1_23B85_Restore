@interface NSExtension
- (id)extensionHostContextForUUID:(void *)d;
@end

@implementation NSExtension

- (id)extensionHostContextForUUID:(void *)d
{
  if (d)
  {
    v2 = [d _extensionContextForUUID:a2];
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 72);
      if (v4 || ([v3 _auxiliaryConnection], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = v4;
        v6 = [NEProcessIdentity alloc];
        _xpcConnection = [v5 _xpcConnection];
        v8 = [(NEProcessIdentity *)v6 initFromXPCConnection:_xpcConnection];
        objc_setProperty_atomic(v3, v9, v8, 64);

        if (objc_getProperty(v3, v10, 64, 1))
        {

          goto LABEL_7;
        }

        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to create a NEProcessIdentity object", v14, 2u);
        }
      }

      else
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Failed to derive the process identity, no vendor connection available", buf, 2u);
        }
      }

      v11 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v11 = v3;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

@end