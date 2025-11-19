@interface AMSEngagementDestination
- (AMSEngagementDestination)initWithCoder:(id)a3;
- (AMSEngagementDestination)initWithIdentifier:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSEngagementDestination

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AMSEngagementDestination *)self identifier];
  v4 = [v2 stringWithFormat:@"<AMSEngagementDestination: %@>", v3];

  return v4;
}

- (AMSEngagementDestination)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSEngagementDestination;
  v6 = [(AMSEngagementDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_components = 3;
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(AMSEngagementDestination *)self identifier];
  [v5 encodeObject:v4 forKey:@"kCodingKeyIdentifier"];

  [v5 encodeBool:-[AMSEngagementDestination allowsResponse](self forKey:{"allowsResponse"), @"kCodingKeyAllowsResponse"}];
  [v5 encodeInteger:-[AMSEngagementDestination components](self forKey:{"components"), @"kCodingKeyComponents"}];
}

- (AMSEngagementDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSEngagementDestination;
  v5 = [(AMSEngagementDestination *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_allowsResponse = [v4 decodeBoolForKey:@"kCodingKeyAllowsResponse"];
    v5->_components = [v4 decodeIntegerForKey:@"kCodingKeyComponents"];
  }

  return v5;
}

@end