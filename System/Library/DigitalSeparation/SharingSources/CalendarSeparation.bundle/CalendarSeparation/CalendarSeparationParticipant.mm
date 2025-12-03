@interface CalendarSeparationParticipant
- (BOOL)matchesDSParticipation:(id)participation;
- (CalendarSeparationParticipant)initWithEKCalendar:(id)calendar;
- (CalendarSeparationParticipant)initWithEKSharee:(id)sharee;
- (CalendarSeparationParticipant)initWithGrantedDelegate:(id)delegate;
@end

@implementation CalendarSeparationParticipant

- (BOOL)matchesDSParticipation:(id)participation
{
  participationCopy = participation;
  if (participationCopy == self)
  {
    goto LABEL_4;
  }

  emailAddress = [(CalendarSeparationParticipant *)self emailAddress];
  stringRemovingMailto = [emailAddress stringRemovingMailto];
  identity = [(CalendarSeparationParticipant *)participationCopy identity];
  emailAddress2 = [identity emailAddress];
  stringRemovingMailto2 = [emailAddress2 stringRemovingMailto];
  v10 = [stringRemovingMailto isEqualToString:stringRemovingMailto2];

  if (v10)
  {
    goto LABEL_4;
  }

  phoneNumber = [(CalendarSeparationParticipant *)self phoneNumber];
  identity2 = [(CalendarSeparationParticipant *)participationCopy identity];
  phoneNumber2 = [identity2 phoneNumber];
  v14 = [phoneNumber isEqualToString:phoneNumber2];

  if (v14)
  {
    goto LABEL_4;
  }

  emailAddress3 = [(CalendarSeparationParticipant *)self emailAddress];
  if (emailAddress3)
  {
    identity2 = [(CalendarSeparationParticipant *)participationCopy identity];
    emailAddress4 = [identity2 emailAddress];
    if (emailAddress4)
    {
      identity4 = emailAddress4;
LABEL_20:

LABEL_21:
      v15 = 0;
      goto LABEL_5;
    }
  }

  phoneNumber3 = [(CalendarSeparationParticipant *)self phoneNumber];
  if (phoneNumber3)
  {
    identity3 = [(CalendarSeparationParticipant *)participationCopy identity];
    phoneNumber4 = [identity3 phoneNumber];

    if (emailAddress3)
    {
    }

    if (phoneNumber4)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (emailAddress3)
    {
    }
  }

  emailAddress3 = [(CalendarSeparationParticipant *)self nameComponents];
  identity2 = [emailAddress3 givenName];
  identity4 = [(CalendarSeparationParticipant *)participationCopy identity];
  nameComponents = [identity4 nameComponents];
  givenName = [nameComponents givenName];
  if (![identity2 isEqualToString:givenName])
  {

    goto LABEL_20;
  }

  nameComponents2 = [(CalendarSeparationParticipant *)self nameComponents];
  familyName = [nameComponents2 familyName];
  identity5 = [(CalendarSeparationParticipant *)participationCopy identity];
  nameComponents3 = [identity5 nameComponents];
  familyName2 = [nameComponents3 familyName];
  v29 = [familyName isEqualToString:familyName2];

  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_4:
  v15 = 1;
LABEL_5:

  return v15;
}

- (CalendarSeparationParticipant)initWithGrantedDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = CalendarSeparationParticipant;
  v5 = [(CalendarSeparationParticipant *)&v14 init];
  if (v5)
  {
    permission = [delegateCopy permission];
    v7 = 1;
    if (permission != &dword_0 + 1)
    {
      v7 = 2;
    }

    v5->permission = v7;
    v5->role = 2;
    preferredUserAddress = [delegateCopy preferredUserAddress];
    emailAddress = v5->emailAddress;
    v5->emailAddress = preferredUserAddress;

    displayName = [delegateCopy displayName];
    v11 = [CalPersonNameComponentsFormatter personNameComponentsFromString:displayName];
    nameComponents = v5->nameComponents;
    v5->nameComponents = v11;
  }

  return v5;
}

- (CalendarSeparationParticipant)initWithEKSharee:(id)sharee
{
  shareeCopy = sharee;
  v35.receiver = self;
  v35.super_class = CalendarSeparationParticipant;
  v5 = [(CalendarSeparationParticipant *)&v35 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shareeAccessLevel = [shareeCopy shareeAccessLevel];
      v7 = 1;
      if (shareeAccessLevel != &dword_0 + 1)
      {
        v7 = 2;
      }

      v5->permission = v7;
      v5->role = 2;
      emailAddress = [shareeCopy emailAddress];
      v9 = emailAddress;
      if (emailAddress)
      {
        address = emailAddress;
      }

      else
      {
        address = [shareeCopy address];
      }

      emailAddress = v5->emailAddress;
      v5->emailAddress = address;

      v15 = +[CalContactsProvider defaultProvider];
      contactPredicate = [shareeCopy contactPredicate];
      v36 = CNContactIdentifierKey;
      v17 = [NSArray arrayWithObjects:&v36 count:1];
      v12 = [v15 unifiedContactsMatchingPredicate:contactPredicate keysToFetch:v17];

      firstObject = [v12 firstObject];
      identifier = [firstObject identifier];
      unifiedContactIdentifier = v5->unifiedContactIdentifier;
      v5->unifiedContactIdentifier = identifier;
    }

    else
    {
      *&v5->permission = xmmword_51F0;
      emailAddress2 = [shareeCopy emailAddress];
      v12 = emailAddress2;
      if (emailAddress2)
      {
        v12 = emailAddress2;
        firstObject = v5->emailAddress;
        v5->emailAddress = v12;
        goto LABEL_13;
      }

      firstObject = [shareeCopy URL];
      absoluteString = [firstObject absoluteString];
      unifiedContactIdentifier = v5->emailAddress;
      v5->emailAddress = absoluteString;
    }

LABEL_13:
    phoneNumber = [shareeCopy phoneNumber];
    phoneNumber = v5->phoneNumber;
    v5->phoneNumber = phoneNumber;

    firstName = [shareeCopy firstName];
    if (firstName)
    {
    }

    else
    {
      lastName = [shareeCopy lastName];

      if (!lastName)
      {
        name = [shareeCopy name];

        if (!name)
        {
          goto LABEL_18;
        }

        name2 = [shareeCopy name];
        v32 = [CalPersonNameComponentsFormatter personNameComponentsFromString:name2];
        nameComponents = v5->nameComponents;
        v5->nameComponents = v32;

        familyName = [(NSPersonNameComponents *)v5->nameComponents familyName];
        if (!familyName)
        {
          givenName = [(NSPersonNameComponents *)v5->nameComponents givenName];

          if (givenName)
          {
            goto LABEL_18;
          }

          familyName = [shareeCopy name];
          [(NSPersonNameComponents *)v5->nameComponents setNickname:familyName];
        }

        goto LABEL_17;
      }
    }

    v25 = objc_opt_new();
    v26 = v5->nameComponents;
    v5->nameComponents = v25;

    firstName2 = [shareeCopy firstName];
    [(NSPersonNameComponents *)v5->nameComponents setGivenName:firstName2];

    familyName = [shareeCopy lastName];
    [(NSPersonNameComponents *)v5->nameComponents setFamilyName:familyName];
LABEL_17:
  }

LABEL_18:

  return v5;
}

- (CalendarSeparationParticipant)initWithEKCalendar:(id)calendar
{
  calendarCopy = calendar;
  v15.receiver = self;
  v15.super_class = CalendarSeparationParticipant;
  v5 = [(CalendarSeparationParticipant *)&v15 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_51F0;
    sharedOwnerPhoneNumber = [calendarCopy sharedOwnerPhoneNumber];
    phoneNumber = v6->phoneNumber;
    v6->phoneNumber = sharedOwnerPhoneNumber;

    sharedOwnerEmail = [calendarCopy sharedOwnerEmail];
    emailAddress = v6->emailAddress;
    v6->emailAddress = sharedOwnerEmail;

    sharedOwnerName = [calendarCopy sharedOwnerName];
    v12 = [CalPersonNameComponentsFormatter personNameComponentsFromString:sharedOwnerName];
    nameComponents = v6->nameComponents;
    v6->nameComponents = v12;
  }

  return v6;
}

@end