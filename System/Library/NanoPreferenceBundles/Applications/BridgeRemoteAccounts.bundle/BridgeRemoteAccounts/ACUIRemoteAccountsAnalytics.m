@interface ACUIRemoteAccountsAnalytics
+ (id)_descriptionForAction:(int64_t)a3;
+ (void)reportAccountActionErrorForAccount:(id)a3 action:(int64_t)a4 error:(id)a5;
+ (void)reportAccountActionForAccount:(id)a3 action:(int64_t)a4 numberOfAccounts:(int64_t)a5;
@end

@implementation ACUIRemoteAccountsAnalytics

+ (void)reportAccountActionForAccount:(id)a3 action:(int64_t)a4 numberOfAccounts:(int64_t)a5
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = a5;
  v8 = [location[0] accountType];
  v9 = [v8 identifier];
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    v5 = &stru_1C810;
  }

  v11 = v5;

  v10[0] = v11;
  v10[1] = v15;
  v10[2] = v13;
  v10[3] = v12;
  AnalyticsSendEventLazy();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (void)reportAccountActionErrorForAccount:(id)a3 action:(int64_t)a4 error:(id)a5
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v8 = [location[0] accountType];
  v9 = [v8 identifier];
  if (v9)
  {
    v5 = v9;
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
  v16[1] = v21;
  v16[2] = v19;
  v16[0] = v18;
  AnalyticsSendEventLazy();
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

+ (id)_descriptionForAction:(int64_t)a3
{
  if (a3)
  {
    switch(a3)
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