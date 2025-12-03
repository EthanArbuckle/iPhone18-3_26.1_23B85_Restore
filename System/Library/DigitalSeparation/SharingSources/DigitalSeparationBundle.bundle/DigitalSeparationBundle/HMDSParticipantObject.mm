@interface HMDSParticipantObject
+ (id)homeParticipantObjectWithAccessCode:(id)code;
+ (id)homeParticipantObjectWithOutgoingInvitation:(id)invitation;
+ (id)homeParticipantObjectWithUser:(id)user;
- (HMDSParticipantObject)initWithUser:(id)user accessCode:(id)code outgoingInvitation:(id)invitation;
@end

@implementation HMDSParticipantObject

- (HMDSParticipantObject)initWithUser:(id)user accessCode:(id)code outgoingInvitation:(id)invitation
{
  userCopy = user;
  codeCopy = code;
  invitationCopy = invitation;
  v15.receiver = self;
  v15.super_class = HMDSParticipantObject;
  v12 = [(HMDSParticipantObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_user, user);
    objc_storeStrong(&v13->_accessCode, code);
    objc_storeStrong(&v13->_outgoingInvitation, invitation);
  }

  return v13;
}

+ (id)homeParticipantObjectWithOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = [[HMDSParticipantObject alloc] initWithUser:0 accessCode:0 outgoingInvitation:invitationCopy];

  return v4;
}

+ (id)homeParticipantObjectWithAccessCode:(id)code
{
  codeCopy = code;
  v4 = [[HMDSParticipantObject alloc] initWithUser:0 accessCode:codeCopy outgoingInvitation:0];

  return v4;
}

+ (id)homeParticipantObjectWithUser:(id)user
{
  userCopy = user;
  v4 = [[HMDSParticipantObject alloc] initWithUser:userCopy accessCode:0 outgoingInvitation:0];

  return v4;
}

@end