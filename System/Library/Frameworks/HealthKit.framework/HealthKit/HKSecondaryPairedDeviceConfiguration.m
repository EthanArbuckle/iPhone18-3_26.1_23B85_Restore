@interface HKSecondaryPairedDeviceConfiguration
+ (id)secondaryPairedDeviceConfigurationWithNanoRegistryDeviceUUID:(id)a3 setupType:(unint64_t)a4 firstName:(id)a5 lastName:(id)a6;
- (HKSecondaryPairedDeviceConfiguration)initWithCoder:(id)a3;
- (id)_initWithNanoRegistryDeviceUUID:(id)a3 setupType:(unint64_t)a4 firstName:(id)a5 lastName:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSecondaryPairedDeviceConfiguration

+ (id)secondaryPairedDeviceConfigurationWithNanoRegistryDeviceUUID:(id)a3 setupType:(unint64_t)a4 firstName:(id)a5 lastName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] _initWithNanoRegistryDeviceUUID:v12 setupType:a4 firstName:v11 lastName:v10];

  return v13;
}

- (id)_initWithNanoRegistryDeviceUUID:(id)a3 setupType:(unint64_t)a4 firstName:(id)a5 lastName:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKSecondaryPairedDeviceConfiguration;
  v14 = [(HKSecondaryPairedDeviceConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_nanoRegistryDeviceUUID, a3);
    v15->_setupType = a4;
    objc_storeStrong(&v15->_firstName, a5);
    objc_storeStrong(&v15->_lastName, a6);
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

- (HKSecondaryPairedDeviceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKSecondaryPairedDeviceConfiguration;
  v5 = [(HKSecondaryPairedDeviceConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    nanoRegistryDeviceUUID = v5->_nanoRegistryDeviceUUID;
    v5->_nanoRegistryDeviceUUID = v6;

    v5->_setupType = [v4 decodeIntegerForKey:@"setupType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateOfBirth"];
    dateOfBirth = v5->_dateOfBirth;
    v5->_dateOfBirth = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guardianFirstName"];
    guardianFirstName = v5->_guardianFirstName;
    v5->_guardianFirstName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guardianLastName"];
    guardianLastName = v5->_guardianLastName;
    v5->_guardianLastName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guardianDSID"];
    guardianDSID = v5->_guardianDSID;
    v5->_guardianDSID = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  nanoRegistryDeviceUUID = self->_nanoRegistryDeviceUUID;
  v5 = a3;
  [v5 encodeObject:nanoRegistryDeviceUUID forKey:@"uuid"];
  [v5 encodeObject:self->_dateOfBirth forKey:@"dateOfBirth"];
  [v5 encodeInteger:self->_setupType forKey:@"setupType"];
  [v5 encodeObject:self->_firstName forKey:@"firstName"];
  [v5 encodeObject:self->_lastName forKey:@"lastName"];
  [v5 encodeObject:self->_dsid forKey:@"dsid"];
  [v5 encodeObject:self->_guardianFirstName forKey:@"guardianFirstName"];
  [v5 encodeObject:self->_guardianLastName forKey:@"guardianLastName"];
  [v5 encodeObject:self->_guardianDSID forKey:@"guardianDSID"];
}

@end