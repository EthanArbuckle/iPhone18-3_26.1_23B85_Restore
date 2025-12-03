@interface MFMailMessage
- (BOOL)canReplyAll;
@end

@implementation MFMailMessage

- (BOOL)canReplyAll
{
  v3 = [(MFMailMessage *)self to];
  v4 = [MFEmailSet setWithArray:v3];

  v5 = [(MFMailMessage *)self cc];
  [v4 addObjectsFromArray:v5];

  senders = [(MFMailMessage *)self senders];
  [v4 addObjectsFromArray:senders];

  account = [(MFMailMessage *)self account];
  v8 = account;
  if (account)
  {
    v9 = account;
  }

  else
  {
    v9 = +[MailAccount defaultMailAccountForDelivery];
  }

  v10 = v9;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  emailAddressesAndAliasesList = [v10 emailAddressesAndAliasesList];
  v12 = [emailAddressesAndAliasesList countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(emailAddressesAndAliasesList);
        }

        [v4 removeObject:*(*(&v17 + 1) + 8 * i)];
      }

      v12 = [emailAddressesAndAliasesList countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = [v4 count] > 1;
  return v15;
}

@end