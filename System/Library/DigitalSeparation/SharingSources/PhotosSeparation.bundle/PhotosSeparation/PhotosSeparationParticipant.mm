@interface PhotosSeparationParticipant
- (NSString)debugDescription;
- (PhotosSeparationParticipant)initWithRole:(int64_t)role permission:(int64_t)permission emailAddress:(id)address phoneNumber:(id)number;
@end

@implementation PhotosSeparationParticipant

- (NSString)debugDescription
{
  emailAddress = [(PhotosSeparationParticipant *)self emailAddress];
  phoneNumber = [(PhotosSeparationParticipant *)self phoneNumber];
  isOwner = [(PhotosSeparationParticipant *)self isOwner];
  v6 = @"NO";
  if (isOwner)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"email: %@, phone: %@, owner: %@", emailAddress, phoneNumber, v6];

  return v7;
}

- (PhotosSeparationParticipant)initWithRole:(int64_t)role permission:(int64_t)permission emailAddress:(id)address phoneNumber:(id)number
{
  addressCopy = address;
  numberCopy = number;
  v19.receiver = self;
  v19.super_class = PhotosSeparationParticipant;
  v13 = [(PhotosSeparationParticipant *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_role = role;
    v13->_permission = permission;
    objc_storeStrong(&v13->_emailAddress, address);
    objc_storeStrong(&v14->_phoneNumber, number);
    v15 = +[NSUUID UUID];
    uUIDString = [v15 UUIDString];
    uuid = v14->_uuid;
    v14->_uuid = uUIDString;
  }

  return v14;
}

@end