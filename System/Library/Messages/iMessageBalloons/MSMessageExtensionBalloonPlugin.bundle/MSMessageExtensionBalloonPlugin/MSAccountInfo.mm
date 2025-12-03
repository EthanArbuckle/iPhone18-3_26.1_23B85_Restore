@interface MSAccountInfo
+ (id)iMessageLoginID;
@end

@implementation MSAccountInfo

+ (id)iMessageLoginID
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMServiceImpl iMessageService];
  v4 = [v2 operationalAccountsForService:v3];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    v9 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if ([v12 accountType] == &dword_0 + 2)
      {
        v13 = v9;
        v14 = v8;
        v9 = v12;
      }

      else
      {
        v13 = v8;
        v14 = v12;
        if ([v12 accountType] != &dword_0 + 1)
        {
          continue;
        }
      }

      v15 = v12;

      v8 = v14;
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if (v8)
  {
    strippedLogin = [v8 strippedLogin];
    goto LABEL_16;
  }

LABEL_15:
  strippedLogin = [v9 strippedLogin];
  v8 = 0;
LABEL_16:

  return strippedLogin;
}

@end