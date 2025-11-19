@interface APSIdentityUtilities
+ (id)sharedInstance;
- (BOOL)albertIdentitySupported;
- (BOOL)baaPushIdentityEnabled;
- (BOOL)useMultiIdentityProvider;
- (NSNumber)forcedProviderDefault;
@end

@implementation APSIdentityUtilities

+ (id)sharedInstance
{
  if (qword_1001BF880 != -1)
  {
    sub_10010C5F8();
  }

  v3 = qword_1001BF888;

  return v3;
}

- (BOOL)useMultiIdentityProvider
{
  if (!_os_feature_enabled_impl() || (sub_10000712C() & 1) == 0 && !_os_feature_enabled_impl())
  {
    goto LABEL_17;
  }

  v2 = APSUseMultiIdentityProvider;
  v3 = sub_100004328(APSUseMultiIdentityProvider, 1);
  v4 = [v3 intValue];

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MultiIdentityProvider default set to not use multi identity provider", v12, 2u);
      }
    }

    else if (!v4)
    {
      v5 = arc4random_uniform(0x64u);
      v6 = v5 < 0x32;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"NO";
        if (v5 < 0x32)
        {
          v7 = @"YES";
        }

        v12[0] = 67109378;
        v12[1] = v5;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MultiIdentityProvider default not set, rolled %u, shouldUseMultiProvider %@?", v12, 0x12u);
      }

      v8 = [NSNumber alloc];
      if (v5 >= 0x32)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      v10 = [v8 initWithInt:v9];
      sub_100005394(v2, v10, 1);

      return v6;
    }

LABEL_17:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MultiIdentityProvider default set to use multi identity provider", v12, 2u);
  }

  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)albertIdentitySupported
{
  if ([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0())
  {
    return ![(APSIdentityUtilities *)self deviceIdentitySupported];
  }

  else
  {
    return 1;
  }
}

- (BOOL)baaPushIdentityEnabled
{
  v2 = [(APSIdentityUtilities *)self deviceIdentitySupported];
  if (v2)
  {
    v2 = _os_feature_enabled_impl();
    if (v2)
    {
      if ([APSBAAClientIdentityProvider supportsFetchingVMHostCerts]_0())
      {
        goto LABEL_4;
      }

      v2 = _os_feature_enabled_impl();
      if (!v2)
      {
        return v2;
      }

      if (sub_10000712C())
      {
LABEL_4:
        LOBYTE(v2) = 1;
      }

      else
      {

        LOBYTE(v2) = _os_feature_enabled_impl();
      }
    }
  }

  return v2;
}

- (NSNumber)forcedProviderDefault
{
  v2 = sub_100004328(APSForceIdentityProvider, 1);

  return v2;
}

@end