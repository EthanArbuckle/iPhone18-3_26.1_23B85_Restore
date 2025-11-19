@interface HMManagedConfigurationProfileInfo
- (HMManagedConfigurationProfileInfo)initWithCoder:(id)a3;
- (HMManagedConfigurationProfileInfo)initWithIdentifier:(id)a3 profileData:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMManagedConfigurationProfileInfo

- (HMManagedConfigurationProfileInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMCP.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMCP.data"];

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
    v8 = 0;
  }

  else
  {
    self = [(HMManagedConfigurationProfileInfo *)self initWithIdentifier:v5 profileData:v6];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMManagedConfigurationProfileInfo *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMMCP.identifier"];

  v6 = [(HMManagedConfigurationProfileInfo *)self profileData];
  [v4 encodeObject:v6 forKey:@"HMMCP.data"];
}

- (HMManagedConfigurationProfileInfo)initWithIdentifier:(id)a3 profileData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMManagedConfigurationProfileInfo;
  v9 = [(HMManagedConfigurationProfileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_profileData, a4);
  }

  return v10;
}

@end