@interface AAURLConfigurationRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAURLConfigurationRequest

- (id)urlString
{
  v2 = CFPreferencesCopyAppValue(@"ConfigurationPlistURL", @"com.apple.appleaccount");
  v3 = v2;
  if (!v2 || [v2 isEqualToString:&stru_1F2EF6280])
  {
    v4 = CFPreferencesCopyAppValue(@"ConfigurationDomain", @"com.apple.appleaccount");
    v5 = v4;
    if (v4 && ([v4 isEqualToString:&stru_1F2EF6280] & 1) == 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"icloud.com";
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://setup.%@/configurations/init", v6];

    v3 = v7;
  }

  v8 = [v3 stringByAppendingString:@"?context=settings"];

  return v8;
}

- (id)urlRequest
{
  v5.receiver = self;
  v5.super_class = AAURLConfigurationRequest;
  urlRequest = [(AARequest *)&v5 urlRequest];
  v3 = [urlRequest mutableCopy];

  [v3 aa_addMultiUserDeviceHeaderIfEnabled];

  return v3;
}

@end