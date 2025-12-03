@interface HMAccessoryLinkQualityResult
- (HMAccessoryLinkQualityResult)initWithLinkQualitySupported:(BOOL)supported linkLayerType:(unint64_t)type macAddress:(id)address networkName:(id)name linkQuality:(unint64_t)quality;
@end

@implementation HMAccessoryLinkQualityResult

- (HMAccessoryLinkQualityResult)initWithLinkQualitySupported:(BOOL)supported linkLayerType:(unint64_t)type macAddress:(id)address networkName:(id)name linkQuality:(unint64_t)quality
{
  addressCopy = address;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = HMAccessoryLinkQualityResult;
  v15 = [(HMAccessoryLinkQualityResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_supported = supported;
    v15->_linkLayerType = type;
    objc_storeStrong(&v15->_macAddress, address);
    objc_storeStrong(&v16->_networkName, name);
    v16->_linkQuality = quality;
  }

  return v16;
}

@end