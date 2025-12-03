@interface SAPerson
- (id)_ad_personContactHandlesWithAddressBookManager:(id)manager;
- (id)ad_transcriptionResultWithAddressBookManager:(id)manager;
@end

@implementation SAPerson

- (id)_ad_personContactHandlesWithAddressBookManager:(id)manager
{
  managerCopy = manager;
  v4 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  emails = [(SAPerson *)self emails];
  v6 = [emails countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(emails);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        label = [v10 label];
        emailAddress = [v10 emailAddress];
        if (emailAddress)
        {
          v13 = objc_alloc_init(STPersonContactHandle);
          [v13 setType:0];
          [v13 setLabel:label];
          [v13 setHandle:emailAddress];
          [v4 addObject:v13];
        }
      }

      v7 = [emails countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  phones = [(SAPerson *)self phones];
  v15 = [phones countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(phones);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        label2 = [v19 label];
        number = [v19 number];
        if (number)
        {
          v22 = objc_alloc_init(STPersonContactHandle);
          [v22 setType:1];
          [v22 setLabel:label2];
          [v22 setHandle:number];
          [v4 addObject:v22];
        }
      }

      v16 = [phones countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v23 = [managerCopy contactHandlesForPerson:self];
  [v4 unionSet:v23];

  return v4;
}

- (id)ad_transcriptionResultWithAddressBookManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = objc_alloc_init(ADAddressBookManager);
  }

  v5 = objc_alloc_init(STPerson);
  fullName = [(SAPerson *)self fullName];
  [v5 setFullName:fullName];

  v7 = [(SAPerson *)self _ad_personContactHandlesWithAddressBookManager:managerCopy];
  [v5 setContactHandles:v7];

  return v5;
}

@end