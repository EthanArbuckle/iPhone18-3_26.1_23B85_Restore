@interface HMDSParticipantIdentity
- (HMDSParticipantIdentity)initWithUnifiedContactIdentifier:(id)a3 nameComponents:(id)a4 emailAddress:(id)a5 phoneNumber:(id)a6 userID:(id)a7 pinCodeLabel:(id)a8;
@end

@implementation HMDSParticipantIdentity

- (HMDSParticipantIdentity)initWithUnifiedContactIdentifier:(id)a3 nameComponents:(id)a4 emailAddress:(id)a5 phoneNumber:(id)a6 userID:(id)a7 pinCodeLabel:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMDSParticipantIdentity;
  v18 = [(HMDSParticipantIdentity *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_unifiedContactIdentifier, a3);
    objc_storeStrong(&v19->_nameComponents, a4);
    objc_storeStrong(&v19->_emailAddress, a5);
    objc_storeStrong(&v19->_phoneNumber, a6);
    objc_storeStrong(&v19->_userID, a7);
    objc_storeStrong(&v19->_pinCodeLabel, a8);
  }

  return v19;
}

@end