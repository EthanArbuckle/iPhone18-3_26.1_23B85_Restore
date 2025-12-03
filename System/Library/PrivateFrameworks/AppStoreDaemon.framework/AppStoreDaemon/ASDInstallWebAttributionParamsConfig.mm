@interface ASDInstallWebAttributionParamsConfig
- (ASDInstallWebAttributionParamsConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDInstallWebAttributionParamsConfig

- (void)encodeWithCoder:(id)coder
{
  appAdamId = self->_appAdamId;
  coderCopy = coder;
  [coderCopy encodeObject:appAdamId forKey:@"1"];
  [coderCopy encodeObject:self->_adNetworkRegistrableDomain forKey:@"2"];
  [coderCopy encodeObject:self->_impressionId forKey:@"3"];
  [coderCopy encodeObject:self->_sourceWebRegistrableDomain forKey:@"4"];
  [coderCopy encodeObject:self->_version forKey:@"5"];
  [coderCopy encodeInteger:self->_attributionContext forKey:@"6"];
  [coderCopy encodeObject:self->_privateBrowsingSessionId forKey:@"7"];
}

- (ASDInstallWebAttributionParamsConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ASDInstallWebAttributionParamsConfig;
  v5 = [(ASDInstallWebAttributionParamsConfig *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    adNetworkRegistrableDomain = v5->_adNetworkRegistrableDomain;
    v5->_adNetworkRegistrableDomain = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    impressionId = v5->_impressionId;
    v5->_impressionId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    sourceWebRegistrableDomain = v5->_sourceWebRegistrableDomain;
    v5->_sourceWebRegistrableDomain = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    version = v5->_version;
    v5->_version = v14;

    v5->_attributionContext = [coderCopy decodeIntegerForKey:@"5"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    privateBrowsingSessionId = v5->_privateBrowsingSessionId;
    v5->_privateBrowsingSessionId = v16;
  }

  return v5;
}

@end