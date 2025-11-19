@interface PhotosSeparationParticipant
- (NSString)debugDescription;
- (PhotosSeparationParticipant)initWithRole:(int64_t)a3 permission:(int64_t)a4 emailAddress:(id)a5 phoneNumber:(id)a6;
@end

@implementation PhotosSeparationParticipant

- (NSString)debugDescription
{
  v3 = [(PhotosSeparationParticipant *)self emailAddress];
  v4 = [(PhotosSeparationParticipant *)self phoneNumber];
  v5 = [(PhotosSeparationParticipant *)self isOwner];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"email: %@, phone: %@, owner: %@", v3, v4, v6];

  return v7;
}

- (PhotosSeparationParticipant)initWithRole:(int64_t)a3 permission:(int64_t)a4 emailAddress:(id)a5 phoneNumber:(id)a6
{
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PhotosSeparationParticipant;
  v13 = [(PhotosSeparationParticipant *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_role = a3;
    v13->_permission = a4;
    objc_storeStrong(&v13->_emailAddress, a5);
    objc_storeStrong(&v14->_phoneNumber, a6);
    v15 = +[NSUUID UUID];
    v16 = [v15 UUIDString];
    uuid = v14->_uuid;
    v14->_uuid = v16;
  }

  return v14;
}

@end