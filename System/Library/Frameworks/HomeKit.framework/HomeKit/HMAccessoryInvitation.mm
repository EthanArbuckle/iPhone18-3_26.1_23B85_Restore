@interface HMAccessoryInvitation
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMAccessoryInvitation)initWithAccessory:(id)accessory identifier:(id)identifier state:(int64_t)state;
- (HMAccessoryInvitation)initWithCoder:(id)coder;
@end

@implementation HMAccessoryInvitation

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    state = [(HMAccessoryInvitation *)self state];
    state2 = [v5 state];
    v8 = state == state2;
    v9 = state != state2;
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

- (HMAccessoryInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HMAccessoryInvitation;
  v5 = [(HMAccessoryInvitation *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryInvitationIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v5->_state = [coderCopy decodeInt32ForKey:@"HM.accessoryInvitationState"];
  }

  return v5;
}

- (HMAccessoryInvitation)initWithAccessory:(id)accessory identifier:(id)identifier state:(int64_t)state
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMAccessoryInvitation;
  v10 = [(HMAccessoryInvitation *)&v14 init];
  if (v10)
  {
    if (identifierCopy)
    {
      uUID = identifierCopy;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    identifier = v10->_identifier;
    v10->_identifier = uUID;

    objc_storeWeak(&v10->_accessory, accessoryCopy);
    v10->_state = state;
  }

  return v10;
}

@end