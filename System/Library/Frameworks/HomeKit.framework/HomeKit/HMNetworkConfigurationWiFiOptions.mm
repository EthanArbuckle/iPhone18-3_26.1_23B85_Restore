@interface HMNetworkConfigurationWiFiOptions
- (HMNetworkConfigurationWiFiOptions)initWithCredentialType:(int64_t)a3;
- (id)description;
@end

@implementation HMNetworkConfigurationWiFiOptions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortDescription];
  v5 = HMAccessoryWiFiCredentialTypeAsString(self->_credentialType);
  rotate = self->_rotate;
  v7 = HMFBooleanToString();
  v8 = [v3 stringWithFormat:@"<%@ CredentialType = %@, Rotate = %@>", v4, v5, v7];

  return v8;
}

- (HMNetworkConfigurationWiFiOptions)initWithCredentialType:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7.receiver = self;
    v7.super_class = HMNetworkConfigurationWiFiOptions;
    v4 = [(HMNetworkConfigurationWiFiOptions *)&v7 init];
    if (v4)
    {
      v4->_credentialType = a3;
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end