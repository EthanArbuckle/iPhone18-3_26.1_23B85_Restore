@interface VSUserAccountManager
- (id)groupedDeveloperAccounts:(id)a3;
- (void)fetchDeveloperUserAccountsWithCompletion:(id)a3;
@end

@implementation VSUserAccountManager

- (void)fetchDeveloperUserAccountsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1020;
  v4[3] = &unk_8238;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VSUserAccountManager *)v5 queryUserAccountsWithOptions:1 completion:v4];
}

- (id)groupedDeveloperAccounts:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 sourceIdentifier];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (([v10 isSignedOut] & 1) == 0)
        {
          if (v12)
          {
            [v12 addObject:v10];
          }

          else
          {
            v38 = v10;
            v13 = [NSArray arrayWithObjects:&v38 count:1];
            v14 = [v13 mutableCopy];
            v15 = [v10 sourceIdentifier];
            [v4 setObject:v14 forKeyedSubscript:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v27 = v5;

  v28 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * j);
        v22 = [v16 objectForKeyedSubscript:v21];
        v23 = [NSPredicate predicateWithFormat:@"%K == TRUE", @"isDeveloperCreated"];
        v24 = [v22 filteredArrayUsingPredicate:v23];
        if (![v24 count])
        {
          [v28 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  [v16 removeObjectsForKeys:v28];
  v25 = [v16 copy];

  return v25;
}

@end