@interface _HKFitnessMachineSessionConfiguration
- (_HKFitnessMachineSessionConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFitnessMachineSessionConfiguration

- (_HKFitnessMachineSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _HKFitnessMachineSessionConfiguration;
  v5 = [(_HKFitnessMachineSessionConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionUUID"];
    connectionUUID = v5->_connectionUUID;
    v5->_connectionUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machineUUID"];
    machineUUID = v5->_machineUUID;
    v5->_machineUUID = v10;

    v5->_machineType = [v4 decodeIntegerForKey:@"machineType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machineName"];
    machineName = v5->_machineName;
    v5->_machineName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machineBrand"];
    machineBrand = v5->_machineBrand;
    v5->_machineBrand = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionUUID = self->_sessionUUID;
  v5 = a3;
  [v5 encodeObject:sessionUUID forKey:@"sessionUUID"];
  [v5 encodeObject:self->_connectionUUID forKey:@"connectionUUID"];
  [v5 encodeObject:self->_machineUUID forKey:@"machineUUID"];
  [v5 encodeInteger:self->_machineType forKey:@"machineType"];
  [v5 encodeObject:self->_machineName forKey:@"machineName"];
  [v5 encodeObject:self->_machineBrand forKey:@"machineBrand"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_sessionUUID UUIDString];
  v7 = [(NSUUID *)self->_connectionUUID UUIDString];
  v8 = [(NSUUID *)self->_machineUUID UUIDString];
  v9 = _HKStringForFitnessMachineType(self->_machineType);
  v10 = [v3 stringWithFormat:@"<%@ %p> session %@ connection %@ machine %@ %@ %@ %@", v5, self, v6, v7, v8, v9, self->_machineName, self->_machineBrand];

  return v10;
}

@end