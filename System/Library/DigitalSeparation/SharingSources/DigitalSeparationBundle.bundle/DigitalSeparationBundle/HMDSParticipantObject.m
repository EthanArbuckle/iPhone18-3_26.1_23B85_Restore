@interface HMDSParticipantObject
+ (id)homeParticipantObjectWithAccessCode:(id)a3;
+ (id)homeParticipantObjectWithOutgoingInvitation:(id)a3;
+ (id)homeParticipantObjectWithUser:(id)a3;
- (HMDSParticipantObject)initWithUser:(id)a3 accessCode:(id)a4 outgoingInvitation:(id)a5;
@end

@implementation HMDSParticipantObject

- (HMDSParticipantObject)initWithUser:(id)a3 accessCode:(id)a4 outgoingInvitation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDSParticipantObject;
  v12 = [(HMDSParticipantObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_user, a3);
    objc_storeStrong(&v13->_accessCode, a4);
    objc_storeStrong(&v13->_outgoingInvitation, a5);
  }

  return v13;
}

+ (id)homeParticipantObjectWithOutgoingInvitation:(id)a3
{
  v3 = a3;
  v4 = [[HMDSParticipantObject alloc] initWithUser:0 accessCode:0 outgoingInvitation:v3];

  return v4;
}

+ (id)homeParticipantObjectWithAccessCode:(id)a3
{
  v3 = a3;
  v4 = [[HMDSParticipantObject alloc] initWithUser:0 accessCode:v3 outgoingInvitation:0];

  return v4;
}

+ (id)homeParticipantObjectWithUser:(id)a3
{
  v3 = a3;
  v4 = [[HMDSParticipantObject alloc] initWithUser:v3 accessCode:0 outgoingInvitation:0];

  return v4;
}

@end