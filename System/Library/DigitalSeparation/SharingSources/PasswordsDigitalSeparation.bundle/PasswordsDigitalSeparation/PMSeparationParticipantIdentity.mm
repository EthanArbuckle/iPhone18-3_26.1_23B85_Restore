@interface PMSeparationParticipantIdentity
- (PMSeparationParticipantIdentity)initWithContactIdentifier:(id)a3;
- (PMSeparationParticipantIdentity)initWithEmailAddress:(id)a3;
- (PMSeparationParticipantIdentity)initWithPhoneNumber:(id)a3;
@end

@implementation PMSeparationParticipantIdentity

- (PMSeparationParticipantIdentity)initWithContactIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (PMSeparationParticipantIdentity)initWithEmailAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v6;

    v8 = v5;
  }

  return v5;
}

- (PMSeparationParticipantIdentity)initWithPhoneNumber:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PMSeparationParticipantIdentity;
  v5 = [(PMSeparationParticipantIdentity *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v6;

    v8 = v5;
  }

  return v5;
}

@end