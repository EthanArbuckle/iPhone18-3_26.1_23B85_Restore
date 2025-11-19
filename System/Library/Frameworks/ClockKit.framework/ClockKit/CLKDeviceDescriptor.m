@interface CLKDeviceDescriptor
- (BOOL)isEqual:(id)a3;
- (CLKDeviceDescriptor)initWithCoder:(id)a3;
- (CLKDeviceDescriptor)initWithPairingID:(id)a3;
- (id)description;
@end

@implementation CLKDeviceDescriptor

- (CLKDeviceDescriptor)initWithPairingID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CLKDeviceDescriptor;
  v6 = [(CLKDeviceDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingID, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  pairingID = self->_pairingID;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__CLKDeviceDescriptor_isEqual___block_invoke;
  v10[3] = &unk_278A1F140;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:pairingID counterpart:v10];
  LOBYTE(pairingID) = [v5 isEqual];

  return pairingID;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSUUID *)self->_pairingID UUIDString];
  [v3 appendString:v4 withName:@"pairingID"];

  v5 = [v3 build];

  return v5;
}

- (CLKDeviceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceUUID"];

  v6 = [(CLKDeviceDescriptor *)self initWithPairingID:v5];
  return v6;
}

@end