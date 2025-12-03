@interface PMSeparationParticipantIdentity
- (PMSeparationParticipantIdentity)initWithContactIdentifier:(id)identifier;
- (PMSeparationParticipantIdentity)initWithEmailAddress:(id)address;
- (PMSeparationParticipantIdentity)initWithPhoneNumber:(id)number;
@end

@implementation PMSeparationParticipantIdentity

- (PMSeparationParticipantIdentity)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (PMSeparationParticipantIdentity)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (PMSeparationParticipantIdentity)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [numberCopy copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = v5;
  }

  return v5;
}

@end