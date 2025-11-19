@interface ASDBetaAppVersion
+ (int64_t)platformForRecord:(id)a3;
@end

@implementation ASDBetaAppVersion

+ (int64_t)platformForRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 platform] - 1;
  if (v4 < 6 && ((0x27u >> v4) & 1) != 0)
  {
    v5 = qword_10044BCE0[v4];
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = [v3 platform];
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error, unhandled platform: %d, falling back to default", v8, 8u);
    }

    v5 = +[ASDBetaAppVersion defaultPlatform];
  }

  return v5;
}

@end