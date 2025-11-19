@interface EKParticipantToContactMatcher
+ (id)_allParticipantsOnItem:(id)a3;
+ (id)_nameComponentsForContact:(id)a3 reverse:(BOOL)a4;
+ (id)_nameComponentsWithGivenName:(id)a3 familyName:(id)a4;
- (BOOL)anyContactMatchesAnyParticipant:(id)a3;
- (BOOL)anyContactMatchesAnyParticipantFromItem:(id)a3;
- (BOOL)anyContactMatchesParticipant:(id)a3;
- (EKParticipantToContactMatcher)initWithContacts:(id)a3;
- (id)matchingParticipantsFromItem:(id)a3;
- (id)matchingParticipantsFromParticipants:(id)a3;
- (void)_cacheContactData;
@end

@implementation EKParticipantToContactMatcher

- (EKParticipantToContactMatcher)initWithContacts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKParticipantToContactMatcher;
  v6 = [(EKParticipantToContactMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contacts, a3);
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
  v33 = self;
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
          v13 = [v11 emailAddresses];
          v14 = [v13 valueForKey:@"value"];
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

                v19 = [*(*(&v36 + 1) + 8 * i) lowercaseString];
                [v3 addObject:v19];
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
          v22 = [v11 organizationName];
          v23 = [v22 length];

          if (v23)
          {
            v24 = [v11 organizationName];
            v25 = [v24 lowercaseString];
            [v27 addObject:v25];
          }
        }

        ++v10;
      }

      while (v10 != v5);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  [(EKParticipantToContactMatcher *)v33 setContactEmailAddresses:v3];
  [(EKParticipantToContactMatcher *)v33 setContactNameComponents:v28];
  [(EKParticipantToContactMatcher *)v33 setContactCompanyNames:v27];

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)_nameComponentsForContact:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 familyName];
    [v7 givenName];
  }

  else
  {
    v8 = [v6 givenName];
    [v7 familyName];
  }
  v9 = ;

  v10 = [a1 _nameComponentsWithGivenName:v8 familyName:v9];

  return v10;
}

+ (id)_nameComponentsWithGivenName:(id)a3 familyName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v8 = [v5 lowercaseString];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1F1B49D68;
    }

    [v7 setGivenName:v10];

    v11 = [v6 lowercaseString];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
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

+ (id)_allParticipantsOnItem:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 attendees];
  v6 = [v4 arrayWithArray:v5];

  v7 = [v3 organizer];

  if (v7)
  {
    v8 = [v3 organizer];
    [v6 addObject:v8];
  }

  return v6;
}

- (BOOL)anyContactMatchesAnyParticipantFromItem:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _allParticipantsOnItem:v4];

  LOBYTE(self) = [(EKParticipantToContactMatcher *)self anyContactMatchesAnyParticipant:v5];
  return self;
}

- (BOOL)anyContactMatchesAnyParticipant:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([(EKParticipantToContactMatcher *)self anyContactMatchesParticipant:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)matchingParticipantsFromItem:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _allParticipantsOnItem:v4];

  v6 = [(EKParticipantToContactMatcher *)self matchingParticipantsFromParticipants:v5];

  return v6;
}

- (id)matchingParticipantsFromParticipants:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)anyContactMatchesParticipant:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 emailAddress];
  v7 = [v6 lowercaseString];

  v8 = [(EKParticipantToContactMatcher *)self contactEmailAddresses];
  v9 = [v8 containsObject:v7];

  if ((v9 & 1) == 0)
  {
    v10 = [v5 nameComponents];
    v11 = objc_opt_class();
    v12 = [v10 givenName];
    v13 = [v10 familyName];
    v14 = [v11 _nameComponentsWithGivenName:v12 familyName:v13];

    v15 = [(EKParticipantToContactMatcher *)self contactNameComponents];
    v16 = [v15 allObjects];
    v17 = [v16 containsObject:v14];

    if (v17)
    {

      goto LABEL_5;
    }

    v19 = [v5 name];
    v20 = [v19 lowercaseString];

    v21 = [(EKParticipantToContactMatcher *)self contactCompanyNames];
    LOBYTE(v19) = [v21 containsObject:v20];

    if (v19)
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