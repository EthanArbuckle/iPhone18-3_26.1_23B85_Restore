@interface ASDInstallWebAttributionParamsConfig
- (ASDInstallWebAttributionParamsConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDInstallWebAttributionParamsConfig

- (void)encodeWithCoder:(id)a3
{
  appAdamId = self->_appAdamId;
  v5 = a3;
  [v5 encodeObject:appAdamId forKey:@"1"];
  [v5 encodeObject:self->_adNetworkRegistrableDomain forKey:@"2"];
  [v5 encodeObject:self->_impressionId forKey:@"3"];
  [v5 encodeObject:self->_sourceWebRegistrableDomain forKey:@"4"];
  [v5 encodeObject:self->_version forKey:@"5"];
  [v5 encodeInteger:self->_attributionContext forKey:@"6"];
  [v5 encodeObject:self->_privateBrowsingSessionId forKey:@"7"];
}

- (ASDInstallWebAttributionParamsConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ASDInstallWebAttributionParamsConfig;
  v5 = [(ASDInstallWebAttributionParamsConfig *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    adNetworkRegistrableDomain = v5->_adNetworkRegistrableDomain;
    v5->_adNetworkRegistrableDomain = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    impressionId = v5->_impressionId;
    v5->_impressionId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    sourceWebRegistrableDomain = v5->_sourceWebRegistrableDomain;
    v5->_sourceWebRegistrableDomain = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    version = v5->_version;
    v5->_version = v14;

    v5->_attributionContext = [v4 decodeIntegerForKey:@"5"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    privateBrowsingSessionId = v5->_privateBrowsingSessionId;
    v5->_privateBrowsingSessionId = v16;
  }

  return v5;
}

@end