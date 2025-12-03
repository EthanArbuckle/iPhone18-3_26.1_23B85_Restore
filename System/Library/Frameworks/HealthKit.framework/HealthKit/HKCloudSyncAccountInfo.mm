@interface HKCloudSyncAccountInfo
- (HKCloudSyncAccountInfo)initWithCoder:(id)coder;
- (HKCloudSyncAccountInfo)initWithFullName:(id)name emailAddress:(id)address accountSettings:(unint64_t)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCloudSyncAccountInfo

- (HKCloudSyncAccountInfo)initWithFullName:(id)name emailAddress:(id)address accountSettings:(unint64_t)settings
{
  nameCopy = name;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = HKCloudSyncAccountInfo;
  v10 = [(HKCloudSyncAccountInfo *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    fullName = v10->_fullName;
    v10->_fullName = v11;

    v13 = [addressCopy copy];
    emailAddress = v10->_emailAddress;
    v10->_emailAddress = v13;

    v10->_accountSettings = settings;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  fullName = self->_fullName;
  coderCopy = coder;
  [coderCopy encodeObject:fullName forKey:@"FullName"];
  [coderCopy encodeObject:self->_emailAddress forKey:@"EmailAddress"];
  [coderCopy encodeInteger:self->_accountSettings forKey:@"AccountSettings"];
}

- (HKCloudSyncAccountInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EmailAddress"];
  v7 = [coderCopy decodeIntegerForKey:@"AccountSettings"];

  v8 = [(HKCloudSyncAccountInfo *)self initWithFullName:v5 emailAddress:v6 accountSettings:v7];
  return v8;
}

@end