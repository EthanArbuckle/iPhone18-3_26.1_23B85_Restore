@interface HMAccessoryAdvertisementInfo
- (HMAccessoryAdvertisementInfo)initWithAccessoryIdentifier:(id)identifier;
@end

@implementation HMAccessoryAdvertisementInfo

- (HMAccessoryAdvertisementInfo)initWithAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMAccessoryAdvertisementInfo;
  v5 = [(HMAccessoryAdvertisementInfo *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:identifierCopy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;
  }

  return v5;
}

@end