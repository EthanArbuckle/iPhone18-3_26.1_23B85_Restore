@interface CRRecentContactsLibrary(CloudRecentsExtensions)
- (void)recordContactEventsForHeaders:()CloudRecentsExtensions recentsDomain:;
@end

@implementation CRRecentContactsLibrary(CloudRecentsExtensions)

- (void)recordContactEventsForHeaders:()CloudRecentsExtensions recentsDomain:
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = a4;
  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFA8];
  v33 = v6;
  v8 = [v6 copyAddressListForTo];
  v34 = [v7 setWithArray:v8];

  v9 = [v6 copyAddressListForCc];
  [v34 addObjectsFromArray:v9];

  v10 = [v6 copyAddressListForBcc];
  [v34 addObjectsFromArray:v10];

  v11 = [v6 copyAddressListForReplyTo];
  [v34 addObjectsFromArray:v11];

  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v34, "count")}];
  v37 = [MEMORY[0x1E695DF00] date];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v34;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = *v39;
    v14 = *MEMORY[0x1E6998F48];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v16 emailAddressValue];
        v18 = [v17 simpleAddress];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v16 stringValue];
        }

        v21 = v20;

        v22 = [v16 mf_copyDisplayableAddressComment];
        v23 = [MEMORY[0x1E6998FC8] recentEventForAddress:v21 displayName:v22 kind:v14 date:v37 weight:0 metadata:0 options:1];
        if (v23)
        {
          [v36 addObject:v23];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  v24 = [v33 copyAddressListForSender];
  v25 = [v24 firstObject];
  v26 = [v25 emailAddressValue];
  v27 = [v26 simpleAddress];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = [v25 stringValue];
  }

  v30 = v29;

  [a1 recordContactEvents:v36 recentsDomain:v32 sendingAddress:v30 completion:0];
  objc_autoreleasePoolPop(context);
}

@end