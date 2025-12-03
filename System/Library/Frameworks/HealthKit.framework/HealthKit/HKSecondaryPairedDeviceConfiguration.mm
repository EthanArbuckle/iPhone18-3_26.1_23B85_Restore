@interface HKSecondaryPairedDeviceConfiguration
+ (id)secondaryPairedDeviceConfigurationWithNanoRegistryDeviceUUID:(id)d setupType:(unint64_t)type firstName:(id)name lastName:(id)lastName;
- (HKSecondaryPairedDeviceConfiguration)initWithCoder:(id)coder;
- (id)_initWithNanoRegistryDeviceUUID:(id)d setupType:(unint64_t)type firstName:(id)name lastName:(id)lastName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSecondaryPairedDeviceConfiguration

+ (id)secondaryPairedDeviceConfigurationWithNanoRegistryDeviceUUID:(id)d setupType:(unint64_t)type firstName:(id)name lastName:(id)lastName
{
  lastNameCopy = lastName;
  nameCopy = name;
  dCopy = d;
  v13 = [[self alloc] _initWithNanoRegistryDeviceUUID:dCopy setupType:type firstName:nameCopy lastName:lastNameCopy];

  return v13;
}

- (id)_initWithNanoRegistryDeviceUUID:(id)d setupType:(unint64_t)type firstName:(id)name lastName:(id)lastName
{
  dCopy = d;
  nameCopy = name;
  lastNameCopy = lastName;
  v17.receiver = self;
  v17.super_class = HKSecondaryPairedDeviceConfiguration;
  v14 = [(HKSecondaryPairedDeviceConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_nanoRegistryDeviceUUID, d);
    v15->_setupType = type;
    objc_storeStrong(&v15->_firstName, name);
    objc_storeStrong(&v15->_lastName, lastName);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  nanoRegistryDeviceUUID = self->_nanoRegistryDeviceUUID;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_setupType];
  v7 = *&self->_lastName;
  v8 = [v3 stringWithFormat:@"<%@:%p, UUID:%@, setupType:%@, dateOfBirth:%@, firstName:%@, lastName:%@, DSID:%@, guardianFirstName:%@, guardianLastName:%@, guardianDSID:%@>", v4, self, nanoRegistryDeviceUUID, v6, self->_dateOfBirth, self->_firstName, self->_lastName, self->_dsid, self->_guardianFirstName, self->_guardianLastName, self->_guardianDSID];

  return v8;
}

- (HKSecondaryPairedDeviceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKSecondaryPairedDeviceConfiguration;
  v5 = [(HKSecondaryPairedDeviceConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    nanoRegistryDeviceUUID = v5->_nanoRegistryDeviceUUID;
    v5->_nanoRegistryDeviceUUID = v6;

    v5->_setupType = [coderCopy decodeIntegerForKey:@"setupType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateOfBirth"];
    dateOfBirth = v5->_dateOfBirth;
    v5->_dateOfBirth = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guardianFirstName"];
    guardianFirstName = v5->_guardianFirstName;
    v5->_guardianFirstName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guardianLastName"];
    guardianLastName = v5->_guardianLastName;
    v5->_guardianLastName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guardianDSID"];
    guardianDSID = v5->_guardianDSID;
    v5->_guardianDSID = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  nanoRegistryDeviceUUID = self->_nanoRegistryDeviceUUID;
  coderCopy = coder;
  [coderCopy encodeObject:nanoRegistryDeviceUUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_dateOfBirth forKey:@"dateOfBirth"];
  [coderCopy encodeInteger:self->_setupType forKey:@"setupType"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_dsid forKey:@"dsid"];
  [coderCopy encodeObject:self->_guardianFirstName forKey:@"guardianFirstName"];
  [coderCopy encodeObject:self->_guardianLastName forKey:@"guardianLastName"];
  [coderCopy encodeObject:self->_guardianDSID forKey:@"guardianDSID"];
}

@end