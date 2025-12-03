@interface NEPrivateLTENetwork
- (NEPrivateLTENetwork)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEPrivateLTENetwork

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEPrivateLTENetwork allocWithZone:?]];
  mobileCountryCode = [(NEPrivateLTENetwork *)self mobileCountryCode];
  [(NEPrivateLTENetwork *)v4 setMobileCountryCode:mobileCountryCode];

  mobileNetworkCode = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  [(NEPrivateLTENetwork *)v4 setMobileNetworkCode:mobileNetworkCode];

  trackingAreaCode = [(NEPrivateLTENetwork *)self trackingAreaCode];
  [(NEPrivateLTENetwork *)v4 setTrackingAreaCode:trackingAreaCode];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mobileCountryCode = [(NEPrivateLTENetwork *)self mobileCountryCode];
  [coderCopy encodeObject:mobileCountryCode forKey:@"PLTEMCC"];

  mobileNetworkCode = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  [coderCopy encodeObject:mobileNetworkCode forKey:@"PLTEMNC"];

  trackingAreaCode = [(NEPrivateLTENetwork *)self trackingAreaCode];
  [coderCopy encodeObject:trackingAreaCode forKey:@"PLTETAC"];
}

- (NEPrivateLTENetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEPrivateLTENetwork;
  v5 = [(NEPrivateLTENetwork *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLTEMCC"];
    mobileCountryCode = v5->_mobileCountryCode;
    v5->_mobileCountryCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLTEMNC"];
    mobileNetworkCode = v5->_mobileNetworkCode;
    v5->_mobileNetworkCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLTETAC"];
    trackingAreaCode = v5->_trackingAreaCode;
    v5->_trackingAreaCode = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  mobileCountryCode = [(NEPrivateLTENetwork *)self mobileCountryCode];
  mobileNetworkCode = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  trackingAreaCode = [(NEPrivateLTENetwork *)self trackingAreaCode];
  if (trackingAreaCode)
  {
    trackingAreaCode2 = [(NEPrivateLTENetwork *)self trackingAreaCode];
    v8 = [v3 stringWithFormat:@"Mobile Country Code:[%@] Mobile Network Code:[%@] Tracking Area Code:[%@]", mobileCountryCode, mobileNetworkCode, trackingAreaCode2];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"Mobile Country Code:[%@] Mobile Network Code:[%@] Tracking Area Code:[%@]", mobileCountryCode, mobileNetworkCode, &stru_1F3880810];
  }

  return v8;
}

@end