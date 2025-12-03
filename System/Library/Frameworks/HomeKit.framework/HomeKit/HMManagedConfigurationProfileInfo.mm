@interface HMManagedConfigurationProfileInfo
- (HMManagedConfigurationProfileInfo)initWithCoder:(id)coder;
- (HMManagedConfigurationProfileInfo)initWithIdentifier:(id)identifier profileData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMManagedConfigurationProfileInfo

- (HMManagedConfigurationProfileInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMCP.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMCP.data"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HMManagedConfigurationProfileInfo *)self initWithIdentifier:v5 profileData:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMManagedConfigurationProfileInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMMCP.identifier"];

  profileData = [(HMManagedConfigurationProfileInfo *)self profileData];
  [coderCopy encodeObject:profileData forKey:@"HMMCP.data"];
}

- (HMManagedConfigurationProfileInfo)initWithIdentifier:(id)identifier profileData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HMManagedConfigurationProfileInfo;
  v9 = [(HMManagedConfigurationProfileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_profileData, data);
  }

  return v10;
}

@end