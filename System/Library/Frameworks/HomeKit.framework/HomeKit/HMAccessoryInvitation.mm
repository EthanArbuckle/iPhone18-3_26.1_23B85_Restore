@interface HMAccessoryInvitation
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMAccessoryInvitation)initWithAccessory:(id)a3 identifier:(id)a4 state:(int64_t)a5;
- (HMAccessoryInvitation)initWithCoder:(id)a3;
@end

@implementation HMAccessoryInvitation

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HMAccessoryInvitation *)self state];
    v7 = [v5 state];
    v8 = v6 == v7;
    v9 = v6 != v7;
    if (!v8)
    {
      self->_state = [v5 state];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMAccessoryInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMAccessoryInvitation;
  v5 = [(HMAccessoryInvitation *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryInvitationIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v5->_state = [v4 decodeInt32ForKey:@"HM.accessoryInvitationState"];
  }

  return v5;
}

- (HMAccessoryInvitation)initWithAccessory:(id)a3 identifier:(id)a4 state:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = HMAccessoryInvitation;
  v10 = [(HMAccessoryInvitation *)&v14 init];
  if (v10)
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
    }

    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeWeak(&v10->_accessory, v8);
    v10->_state = a5;
  }

  return v10;
}

@end