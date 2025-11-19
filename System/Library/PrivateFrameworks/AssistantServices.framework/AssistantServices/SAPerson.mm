@interface SAPerson
- (id)_ad_personContactHandlesWithAddressBookManager:(id)a3;
- (id)ad_transcriptionResultWithAddressBookManager:(id)a3;
@end

@implementation SAPerson

- (id)_ad_personContactHandlesWithAddressBookManager:(id)a3
{
  v25 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(SAPerson *)self emails];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 label];
        v12 = [v10 emailAddress];
        if (v12)
        {
          v13 = objc_alloc_init(STPersonContactHandle);
          [v13 setType:0];
          [v13 setLabel:v11];
          [v13 setHandle:v12];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(SAPerson *)self phones];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v20 = [v19 label];
        v21 = [v19 number];
        if (v21)
        {
          v22 = objc_alloc_init(STPersonContactHandle);
          [v22 setType:1];
          [v22 setLabel:v20];
          [v22 setHandle:v21];
          [v4 addObject:v22];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v23 = [v25 contactHandlesForPerson:self];
  [v4 unionSet:v23];

  return v4;
}

- (id)ad_transcriptionResultWithAddressBookManager:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(ADAddressBookManager);
  }

  v5 = objc_alloc_init(STPerson);
  v6 = [(SAPerson *)self fullName];
  [v5 setFullName:v6];

  v7 = [(SAPerson *)self _ad_personContactHandlesWithAddressBookManager:v4];
  [v5 setContactHandles:v7];

  return v5;
}

@end