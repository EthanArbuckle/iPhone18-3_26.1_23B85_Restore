@interface CRMailAccountIterator
+ (id)receivedEmailAddressesFromAccount:(id)a3;
- (CRMailAccountIterator)init;
- (CRMailAccountIterator)initWithAccountStore:(id)a3;
- (id)emailAddressesForAccount:(id)a3;
- (id)mailAccounts;
- (void)enumerateEmailAddresses:(id)a3;
@end

@implementation CRMailAccountIterator

- (CRMailAccountIterator)init
{
  v3 = [MEMORY[0x29EDB83C8] defaultStore];
  v4 = [(CRMailAccountIterator *)self initWithAccountStore:v3];

  return v4;
}

- (CRMailAccountIterator)initWithAccountStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRMailAccountIterator;
  v6 = [(CRMailAccountIterator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = v7;
  }

  return v7;
}

- (void)enumerateEmailAddresses:(id)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = a3;
  [(CRMailAccountIterator *)self mailAccounts];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *MEMORY[0x29EDC5818];
    v20 = *v26;
    v7 = *MEMORY[0x29EDC5810];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:v19];
        v11 = [v10 BOOLValue];

        v12 = [v9 objectForKeyedSubscript:v7];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v4[2](v4, *(*(&v21 + 1) + 8 * j), v11);
            }

            v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (id)mailAccounts
{
  v12[2] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDC0C30]);
  v3 = [v2 future];
  [v3 addFailureBlock:&unk_2A23D2B50];

  v4 = MEMORY[0x29EDC5820];
  v5 = *MEMORY[0x29EDC5818];
  v12[0] = *MEMORY[0x29EDC5810];
  v12[1] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:2];
  v7 = [v2 completionHandlerAdapter];
  [v4 accountValuesForKeys:v6 completionBlock:v7];

  v8 = [v2 future];
  v9 = [v8 resultWithTimeout:0 error:10.0];

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (id)emailAddressesForAccount:(id)a3
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v5 = [v3 accountProperties];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDB81A0]];

  if (v6)
  {
    v7 = [MEMORY[0x29EDC1040] rawAddressFromFullAddress:v6];
    [v4 addObject:v7];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x29EDB82F8]];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x29EDC1040] rawAddressFromFullAddress:*(*(&v30 + 1) + 8 * i)];
        [v4 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = [v3 accountProperties];
  v15 = [v14 objectForKeyedSubscript:@"defaultAddress"];

  if (v15)
  {
    v16 = [MEMORY[0x29EDC1040] rawAddressFromFullAddress:v15];
    [v4 addObject:v16];
  }

  v17 = [objc_opt_class() receivedEmailAddressesFromAccount:v3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [MEMORY[0x29EDC1040] rawAddressFromFullAddress:*(*(&v26 + 1) + 8 * j)];
        [v4 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v23 = [v4 allObjects];

  v24 = *MEMORY[0x29EDCA608];

  return v23;
}

+ (id)receivedEmailAddressesFromAccount:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ReceiveEmailAliasAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 allKeys];
LABEL_11:
    v9 = v7;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v3;
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x29EDB8E90];
  }

  v11 = v10;

  return v10;
}

@end