@interface ACUIRemoteAccountsAnalytics
+ (id)_descriptionForAction:(int64_t)action;
+ (void)reportAccountActionErrorForAccount:(id)account action:(int64_t)action error:(id)error;
+ (void)reportAccountActionForAccount:(id)account action:(int64_t)action numberOfAccounts:(int64_t)accounts;
@end

@implementation ACUIRemoteAccountsAnalytics

+ (void)reportAccountActionForAccount:(id)account action:(int64_t)action numberOfAccounts:(int64_t)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  actionCopy = action;
  accountsCopy = accounts;
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v5 = &stru_1C810;
  }

  v11 = v5;

  v10[0] = v11;
  v10[1] = selfCopy;
  v10[2] = actionCopy;
  v10[3] = accountsCopy;
  AnalyticsSendEventLazy();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (void)reportAccountActionErrorForAccount:(id)account action:(int64_t)action error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  actionCopy = action;
  v18 = 0;
  objc_storeStrong(&v18, error);
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v5 = &stru_1C810;
  }

  v17 = v5;

  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10CB4;
  v14 = &unk_1C718;
  v15 = v17;
  v16[1] = selfCopy;
  v16[2] = actionCopy;
  v16[0] = v18;
  AnalyticsSendEventLazy();
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

+ (id)_descriptionForAction:(int64_t)action
{
  if (action)
  {
    switch(action)
    {
      case 1:
        v4 = @"delete";
        break;
      case 2:
        v4 = @"fetch";
        break;
      case 3:
        v4 = @"update";
        break;
      default:
        v4 = @"unknown";
        break;
    }
  }

  else
  {
    v4 = @"add";
  }

  return v4;
}

@end