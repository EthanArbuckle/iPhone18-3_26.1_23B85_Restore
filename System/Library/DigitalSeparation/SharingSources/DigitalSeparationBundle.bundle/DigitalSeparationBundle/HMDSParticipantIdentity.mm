@interface HMDSParticipantIdentity
- (HMDSParticipantIdentity)initWithUnifiedContactIdentifier:(id)identifier nameComponents:(id)components emailAddress:(id)address phoneNumber:(id)number userID:(id)d pinCodeLabel:(id)label;
@end

@implementation HMDSParticipantIdentity

- (HMDSParticipantIdentity)initWithUnifiedContactIdentifier:(id)identifier nameComponents:(id)components emailAddress:(id)address phoneNumber:(id)number userID:(id)d pinCodeLabel:(id)label
{
  identifierCopy = identifier;
  componentsCopy = components;
  addressCopy = address;
  numberCopy = number;
  dCopy = d;
  labelCopy = label;
  v24.receiver = self;
  v24.super_class = HMDSParticipantIdentity;
  v18 = [(HMDSParticipantIdentity *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_unifiedContactIdentifier, identifier);
    objc_storeStrong(&v19->_nameComponents, components);
    objc_storeStrong(&v19->_emailAddress, address);
    objc_storeStrong(&v19->_phoneNumber, number);
    objc_storeStrong(&v19->_userID, d);
    objc_storeStrong(&v19->_pinCodeLabel, label);
  }

  return v19;
}

@end