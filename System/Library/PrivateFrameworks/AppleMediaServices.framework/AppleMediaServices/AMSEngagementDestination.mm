@interface AMSEngagementDestination
- (AMSEngagementDestination)initWithCoder:(id)coder;
- (AMSEngagementDestination)initWithIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementDestination

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(AMSEngagementDestination *)self identifier];
  v4 = [v2 stringWithFormat:@"<AMSEngagementDestination: %@>", identifier];

  return v4;
}

- (AMSEngagementDestination)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AMSEngagementDestination;
  v6 = [(AMSEngagementDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_components = 3;
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AMSEngagementDestination *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCodingKeyIdentifier"];

  [coderCopy encodeBool:-[AMSEngagementDestination allowsResponse](self forKey:{"allowsResponse"), @"kCodingKeyAllowsResponse"}];
  [coderCopy encodeInteger:-[AMSEngagementDestination components](self forKey:{"components"), @"kCodingKeyComponents"}];
}

- (AMSEngagementDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AMSEngagementDestination;
  v5 = [(AMSEngagementDestination *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_allowsResponse = [coderCopy decodeBoolForKey:@"kCodingKeyAllowsResponse"];
    v5->_components = [coderCopy decodeIntegerForKey:@"kCodingKeyComponents"];
  }

  return v5;
}

@end