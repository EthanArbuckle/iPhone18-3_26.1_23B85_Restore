@interface EKParticipantToContactMatcher
+ (id)_allParticipantsOnItem:(id)item;
+ (id)_nameComponentsForContact:(id)contact reverse:(BOOL)reverse;
+ (id)_nameComponentsWithGivenName:(id)name familyName:(id)familyName;
- (BOOL)anyContactMatchesAnyParticipant:(id)participant;
- (BOOL)anyContactMatchesAnyParticipantFromItem:(id)item;
- (BOOL)anyContactMatchesParticipant:(id)participant;
- (EKParticipantToContactMatcher)initWithContacts:(id)contacts;
- (id)matchingParticipantsFromItem:(id)item;
- (id)matchingParticipantsFromParticipants:(id)participants;
- (void)_cacheContactData;
@end

@implementation EKParticipantToContactMatcher

- (EKParticipantToContactMatcher)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v9.receiver = self;
  v9.super_class = EKParticipantToContactMatcher;
  v6 = [(EKParticipantToContactMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contacts, contacts);
    [(EKParticipantToContactMatcher *)v7 _cacheContactData];
  }

  return v7;
}

- (void)_cacheContactData
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v28 = [MEMORY[0x1E695DFA8] set];
  v27 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  obj = [(EKParticipantToContactMatcher *)self contacts];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    v7 = *MEMORY[0x1E695C208];
    v8 = *MEMORY[0x1E695C240];
    v30 = *MEMORY[0x1E695C230];
    v9 = *MEMORY[0x1E695C328];
    v31 = *MEMORY[0x1E695C240];
    v32 = *MEMORY[0x1E695C208];
    v29 = *MEMORY[0x1E695C328];
    do
    {
      v10 = 0;
      v34 = v5;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        if ([v11 isKeyAvailable:v7])
        {
          v12 = v6;
          emailAddresses = [v11 emailAddresses];
          v14 = [emailAddresses valueForKey:@"value"];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v37;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v37 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                lowercaseString = [*(*(&v36 + 1) + 8 * i) lowercaseString];
                [v3 addObject:lowercaseString];
              }

              v16 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v16);
          }

          v6 = v12;
          v8 = v31;
          v7 = v32;
          v5 = v34;
          v9 = v29;
        }

        if ([v11 isKeyAvailable:v8] && objc_msgSend(v11, "isKeyAvailable:", v30))
        {
          v20 = [objc_opt_class() _nameComponentsForContact:v11 reverse:0];
          if (v20)
          {
            [v28 addObject:v20];
          }

          v21 = [objc_opt_class() _nameComponentsForContact:v11 reverse:1];
          if (v21)
          {
            [v28 addObject:v21];
          }
        }

        if ([v11 isKeyAvailable:v9])
        {
          organizationName = [v11 organizationName];
          v23 = [organizationName length];

          if (v23)
          {
            organizationName2 = [v11 organizationName];
            lowercaseString2 = [organizationName2 lowercaseString];
            [v27 addObject:lowercaseString2];
          }
        }

        ++v10;
      }

      while (v10 != v5);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  [(EKParticipantToContactMatcher *)selfCopy setContactEmailAddresses:v3];
  [(EKParticipantToContactMatcher *)selfCopy setContactNameComponents:v28];
  [(EKParticipantToContactMatcher *)selfCopy setContactCompanyNames:v27];

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)_nameComponentsForContact:(id)contact reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  contactCopy = contact;
  v7 = contactCopy;
  if (reverseCopy)
  {
    familyName = [contactCopy familyName];
    [v7 givenName];
  }

  else
  {
    familyName = [contactCopy givenName];
    [v7 familyName];
  }
  v9 = ;

  v10 = [self _nameComponentsWithGivenName:familyName familyName:v9];

  return v10;
}

+ (id)_nameComponentsWithGivenName:(id)name familyName:(id)familyName
{
  nameCopy = name;
  familyNameCopy = familyName;
  if ([nameCopy length] || objc_msgSend(familyNameCopy, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    lowercaseString = [nameCopy lowercaseString];
    v9 = lowercaseString;
    if (lowercaseString)
    {
      v10 = lowercaseString;
    }

    else
    {
      v10 = &stru_1F1B49D68;
    }

    [v7 setGivenName:v10];

    lowercaseString2 = [familyNameCopy lowercaseString];
    v12 = lowercaseString2;
    if (lowercaseString2)
    {
      v13 = lowercaseString2;
    }

    else
    {
      v13 = &stru_1F1B49D68;
    }

    [v7 setFamilyName:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_allParticipantsOnItem:(id)item
{
  itemCopy = item;
  v4 = MEMORY[0x1E695DF70];
  attendees = [itemCopy attendees];
  v6 = [v4 arrayWithArray:attendees];

  organizer = [itemCopy organizer];

  if (organizer)
  {
    organizer2 = [itemCopy organizer];
    [v6 addObject:organizer2];
  }

  return v6;
}

- (BOOL)anyContactMatchesAnyParticipantFromItem:(id)item
{
  itemCopy = item;
  v5 = [objc_opt_class() _allParticipantsOnItem:itemCopy];

  LOBYTE(self) = [(EKParticipantToContactMatcher *)self anyContactMatchesAnyParticipant:v5];
  return self;
}

- (BOOL)anyContactMatchesAnyParticipant:(id)participant
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  participantCopy = participant;
  v5 = [participantCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(participantCopy);
        }

        if ([(EKParticipantToContactMatcher *)self anyContactMatchesParticipant:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [participantCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)matchingParticipantsFromItem:(id)item
{
  itemCopy = item;
  v5 = [objc_opt_class() _allParticipantsOnItem:itemCopy];

  v6 = [(EKParticipantToContactMatcher *)self matchingParticipantsFromParticipants:v5];

  return v6;
}

- (id)matchingParticipantsFromParticipants:(id)participants
{
  v19 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = participantsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(EKParticipantToContactMatcher *)self anyContactMatchesParticipant:v11, v14])
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)anyContactMatchesParticipant:(id)participant
{
  participantCopy = participant;
  v5 = participantCopy;
  if (!participantCopy)
  {
    goto LABEL_8;
  }

  emailAddress = [participantCopy emailAddress];
  lowercaseString = [emailAddress lowercaseString];

  contactEmailAddresses = [(EKParticipantToContactMatcher *)self contactEmailAddresses];
  v9 = [contactEmailAddresses containsObject:lowercaseString];

  if ((v9 & 1) == 0)
  {
    nameComponents = [v5 nameComponents];
    v11 = objc_opt_class();
    givenName = [nameComponents givenName];
    familyName = [nameComponents familyName];
    v14 = [v11 _nameComponentsWithGivenName:givenName familyName:familyName];

    contactNameComponents = [(EKParticipantToContactMatcher *)self contactNameComponents];
    allObjects = [contactNameComponents allObjects];
    v17 = [allObjects containsObject:v14];

    if (v17)
    {

      goto LABEL_5;
    }

    name = [v5 name];
    lowercaseString2 = [name lowercaseString];

    contactCompanyNames = [(EKParticipantToContactMatcher *)self contactCompanyNames];
    LOBYTE(name) = [contactCompanyNames containsObject:lowercaseString2];

    if (name)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

LABEL_5:

LABEL_6:
  v18 = 1;
LABEL_9:

  return v18;
}

@end