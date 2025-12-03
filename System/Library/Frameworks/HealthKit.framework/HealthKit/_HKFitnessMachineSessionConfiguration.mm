@interface _HKFitnessMachineSessionConfiguration
- (_HKFitnessMachineSessionConfiguration)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFitnessMachineSessionConfiguration

- (_HKFitnessMachineSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HKFitnessMachineSessionConfiguration;
  v5 = [(_HKFitnessMachineSessionConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionUUID"];
    connectionUUID = v5->_connectionUUID;
    v5->_connectionUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machineUUID"];
    machineUUID = v5->_machineUUID;
    v5->_machineUUID = v10;

    v5->_machineType = [coderCopy decodeIntegerForKey:@"machineType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machineName"];
    machineName = v5->_machineName;
    v5->_machineName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machineBrand"];
    machineBrand = v5->_machineBrand;
    v5->_machineBrand = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionUUID = self->_sessionUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionUUID forKey:@"sessionUUID"];
  [coderCopy encodeObject:self->_connectionUUID forKey:@"connectionUUID"];
  [coderCopy encodeObject:self->_machineUUID forKey:@"machineUUID"];
  [coderCopy encodeInteger:self->_machineType forKey:@"machineType"];
  [coderCopy encodeObject:self->_machineName forKey:@"machineName"];
  [coderCopy encodeObject:self->_machineBrand forKey:@"machineBrand"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_connectionUUID UUIDString];
  uUIDString3 = [(NSUUID *)self->_machineUUID UUIDString];
  v9 = _HKStringForFitnessMachineType(self->_machineType);
  v10 = [v3 stringWithFormat:@"<%@ %p> session %@ connection %@ machine %@ %@ %@ %@", v5, self, uUIDString, uUIDString2, uUIDString3, v9, self->_machineName, self->_machineBrand];

  return v10;
}

@end