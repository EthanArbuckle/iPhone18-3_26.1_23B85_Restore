@interface HMAccessoryAdvertisementInfo
- (HMAccessoryAdvertisementInfo)initWithAccessoryIdentifier:(id)a3;
@end

@implementation HMAccessoryAdvertisementInfo

- (HMAccessoryAdvertisementInfo)initWithAccessoryIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessoryAdvertisementInfo;
  v5 = [(HMAccessoryAdvertisementInfo *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v4];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;
  }

  return v5;
}

@end