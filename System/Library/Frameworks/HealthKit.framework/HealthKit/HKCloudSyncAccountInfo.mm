@interface HKCloudSyncAccountInfo
- (HKCloudSyncAccountInfo)initWithCoder:(id)a3;
- (HKCloudSyncAccountInfo)initWithFullName:(id)a3 emailAddress:(id)a4 accountSettings:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCloudSyncAccountInfo

- (HKCloudSyncAccountInfo)initWithFullName:(id)a3 emailAddress:(id)a4 accountSettings:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HKCloudSyncAccountInfo;
  v10 = [(HKCloudSyncAccountInfo *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    fullName = v10->_fullName;
    v10->_fullName = v11;

    v13 = [v9 copy];
    emailAddress = v10->_emailAddress;
    v10->_emailAddress = v13;

    v10->_accountSettings = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  fullName = self->_fullName;
  v5 = a3;
  [v5 encodeObject:fullName forKey:@"FullName"];
  [v5 encodeObject:self->_emailAddress forKey:@"EmailAddress"];
  [v5 encodeInteger:self->_accountSettings forKey:@"AccountSettings"];
}

- (HKCloudSyncAccountInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EmailAddress"];
  v7 = [v4 decodeIntegerForKey:@"AccountSettings"];

  v8 = [(HKCloudSyncAccountInfo *)self initWithFullName:v5 emailAddress:v6 accountSettings:v7];
  return v8;
}

@end