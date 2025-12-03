@interface ACUILocalAccountSyncController
- (void)fetchRemoteAccounts:(id)accounts;
- (void)removeRemoteAccount:(id)account completion:(id)completion;
- (void)saveRemoteAccount:(id)account completion:(id)completion;
- (void)updateRemoteAccount:(id)account completion:(id)completion;
@end

@implementation ACUILocalAccountSyncController

- (void)fetchRemoteAccounts:(id)accounts
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  v4 = +[ACAccountStore defaultStore];
  v6 = ACAccountTypeIdentifierGmail;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 accountsWithAccountTypeIdentifiers:? completion:?];

  objc_storeStrong(location, 0);
}

- (void)saveRemoteAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = +[ACAccountStore defaultStore];
  [v5 saveAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateRemoteAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = +[ACAccountStore defaultStore];
  [v5 saveAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)removeRemoteAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  v5 = +[ACAccountStore defaultStore];
  [v5 removeAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end