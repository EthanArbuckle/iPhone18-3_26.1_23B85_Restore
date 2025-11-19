@interface HMAccessoryLinkQualityResult
- (HMAccessoryLinkQualityResult)initWithLinkQualitySupported:(BOOL)a3 linkLayerType:(unint64_t)a4 macAddress:(id)a5 networkName:(id)a6 linkQuality:(unint64_t)a7;
@end

@implementation HMAccessoryLinkQualityResult

- (HMAccessoryLinkQualityResult)initWithLinkQualitySupported:(BOOL)a3 linkLayerType:(unint64_t)a4 macAddress:(id)a5 networkName:(id)a6 linkQuality:(unint64_t)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMAccessoryLinkQualityResult;
  v15 = [(HMAccessoryLinkQualityResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_supported = a3;
    v15->_linkLayerType = a4;
    objc_storeStrong(&v15->_macAddress, a5);
    objc_storeStrong(&v16->_networkName, a6);
    v16->_linkQuality = a7;
  }

  return v16;
}

@end