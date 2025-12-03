@interface CLKDeviceDescriptor
- (BOOL)isEqual:(id)equal;
- (CLKDeviceDescriptor)initWithCoder:(id)coder;
- (CLKDeviceDescriptor)initWithPairingID:(id)d;
- (id)description;
@end

@implementation CLKDeviceDescriptor

- (CLKDeviceDescriptor)initWithPairingID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CLKDeviceDescriptor;
  v6 = [(CLKDeviceDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingID, d);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  pairingID = self->_pairingID;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__CLKDeviceDescriptor_isEqual___block_invoke;
  v10[3] = &unk_278A1F140;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:pairingID counterpart:v10];
  LOBYTE(pairingID) = [v5 isEqual];

  return pairingID;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  uUIDString = [(NSUUID *)self->_pairingID UUIDString];
  [v3 appendString:uUIDString withName:@"pairingID"];

  build = [v3 build];

  return build;
}

- (CLKDeviceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceUUID"];

  v6 = [(CLKDeviceDescriptor *)self initWithPairingID:v5];
  return v6;
}

@end