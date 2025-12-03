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
  copyAddressListForTo = [v6 copyAddressListForTo];
  v34 = [v7 setWithArray:copyAddressListForTo];

  copyAddressListForCc = [v6 copyAddressListForCc];
  [v34 addObjectsFromArray:copyAddressListForCc];

  copyAddressListForBcc = [v6 copyAddressListForBcc];
  [v34 addObjectsFromArray:copyAddressListForBcc];

  copyAddressListForReplyTo = [v6 copyAddressListForReplyTo];
  [v34 addObjectsFromArray:copyAddressListForReplyTo];

  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v34, "count")}];
  date = [MEMORY[0x1E695DF00] date];
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
        emailAddressValue = [v16 emailAddressValue];
        simpleAddress = [emailAddressValue simpleAddress];
        v19 = simpleAddress;
        if (simpleAddress)
        {
          stringValue = simpleAddress;
        }

        else
        {
          stringValue = [v16 stringValue];
        }

        v21 = stringValue;

        mf_copyDisplayableAddressComment = [v16 mf_copyDisplayableAddressComment];
        v23 = [MEMORY[0x1E6998FC8] recentEventForAddress:v21 displayName:mf_copyDisplayableAddressComment kind:v14 date:date weight:0 metadata:0 options:1];
        if (v23)
        {
          [v36 addObject:v23];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  copyAddressListForSender = [v33 copyAddressListForSender];
  firstObject = [copyAddressListForSender firstObject];
  emailAddressValue2 = [firstObject emailAddressValue];
  simpleAddress2 = [emailAddressValue2 simpleAddress];
  v28 = simpleAddress2;
  if (simpleAddress2)
  {
    stringValue2 = simpleAddress2;
  }

  else
  {
    stringValue2 = [firstObject stringValue];
  }

  v30 = stringValue2;

  [self recordContactEvents:v36 recentsDomain:v32 sendingAddress:v30 completion:0];
  objc_autoreleasePoolPop(context);
}

@end