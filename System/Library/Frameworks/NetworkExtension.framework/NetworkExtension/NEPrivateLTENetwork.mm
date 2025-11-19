@interface NEPrivateLTENetwork
- (NEPrivateLTENetwork)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEPrivateLTENetwork

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEPrivateLTENetwork allocWithZone:?]];
  v5 = [(NEPrivateLTENetwork *)self mobileCountryCode];
  [(NEPrivateLTENetwork *)v4 setMobileCountryCode:v5];

  v6 = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  [(NEPrivateLTENetwork *)v4 setMobileNetworkCode:v6];

  v7 = [(NEPrivateLTENetwork *)self trackingAreaCode];
  [(NEPrivateLTENetwork *)v4 setTrackingAreaCode:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEPrivateLTENetwork *)self mobileCountryCode];
  [v4 encodeObject:v5 forKey:@"PLTEMCC"];

  v6 = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  [v4 encodeObject:v6 forKey:@"PLTEMNC"];

  v7 = [(NEPrivateLTENetwork *)self trackingAreaCode];
  [v4 encodeObject:v7 forKey:@"PLTETAC"];
}

- (NEPrivateLTENetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEPrivateLTENetwork;
  v5 = [(NEPrivateLTENetwork *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLTEMCC"];
    mobileCountryCode = v5->_mobileCountryCode;
    v5->_mobileCountryCode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLTEMNC"];
    mobileNetworkCode = v5->_mobileNetworkCode;
    v5->_mobileNetworkCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLTETAC"];
    trackingAreaCode = v5->_trackingAreaCode;
    v5->_trackingAreaCode = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NEPrivateLTENetwork *)self mobileCountryCode];
  v5 = [(NEPrivateLTENetwork *)self mobileNetworkCode];
  v6 = [(NEPrivateLTENetwork *)self trackingAreaCode];
  if (v6)
  {
    v7 = [(NEPrivateLTENetwork *)self trackingAreaCode];
    v8 = [v3 stringWithFormat:@"Mobile Country Code:[%@] Mobile Network Code:[%@] Tracking Area Code:[%@]", v4, v5, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"Mobile Country Code:[%@] Mobile Network Code:[%@] Tracking Area Code:[%@]", v4, v5, &stru_1F3880810];
  }

  return v8;
}

@end