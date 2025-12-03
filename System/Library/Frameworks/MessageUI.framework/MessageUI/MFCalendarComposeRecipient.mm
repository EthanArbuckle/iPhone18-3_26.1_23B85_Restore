@interface MFCalendarComposeRecipient
- (BOOL)isEqual:(id)equal;
- (MFCalendarComposeRecipient)initWithComposeRecipient:(id)recipient;
- (id)displayString;
- (unint64_t)hash;
- (void)setCalAttendeeName:(id)name;
- (void)setParticipant:(id)participant;
@end

@implementation MFCalendarComposeRecipient

- (MFCalendarComposeRecipient)initWithComposeRecipient:(id)recipient
{
  recipientCopy = recipient;
  address = [recipientCopy address];
  v6 = -[MFComposeRecipient initWithContact:address:kind:](self, "initWithContact:address:kind:", 0, address, [recipientCopy kind]);

  if (v6)
  {
    v6->super._property = *MEMORY[0x1E698A340];
    displayString = [recipientCopy displayString];
    displayString = v6->super._displayString;
    v6->super._displayString = displayString;

    v6->super._sourceType = [recipientCopy sourceType];
  }

  return v6;
}

- (void)setCalAttendeeName:(id)name
{
  nameCopy = name;
  if (self->_calAttendeeName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->_calAttendeeName, name);
    nameCopy = v6;
  }
}

- (void)setParticipant:(id)participant
{
  participantCopy = participant;
  if (self->_participant != participantCopy)
  {
    v6 = participantCopy;
    objc_storeStrong(&self->_participant, participant);
    participantCopy = v6;
  }
}

- (id)displayString
{
  if ([(MFComposeRecipient *)self record]|| (calAttendeeName = self->_calAttendeeName) == 0)
  {
    v6.receiver = self;
    v6.super_class = MFCalendarComposeRecipient;
    displayString = [(MFComposeRecipient *)&v6 displayString];
  }

  else
  {
    displayString = calAttendeeName;
  }

  return displayString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
    uncommentedAddress2 = [equalCopy uncommentedAddress];
    v7 = [uncommentedAddress isEqualToString:uncommentedAddress2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  uncommentedAddress = [(MFComposeRecipient *)self uncommentedAddress];
  v4 = uncommentedAddress;
  if (uncommentedAddress)
  {
    v5 = [uncommentedAddress hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFCalendarComposeRecipient;
    v5 = [(MFComposeRecipient *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

@end