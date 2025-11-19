@interface ACUILocalAccountSyncController
- (void)fetchRemoteAccounts:(id)a3;
- (void)removeRemoteAccount:(id)a3 completion:(id)a4;
- (void)saveRemoteAccount:(id)a3 completion:(id)a4;
- (void)updateRemoteAccount:(id)a3 completion:(id)a4;
@end

@implementation ACUILocalAccountSyncController

- (void)fetchRemoteAccounts:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = +[ACAccountStore defaultStore];
  v6 = ACAccountTypeIdentifierGmail;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 accountsWithAccountTypeIdentifiers:? completion:?];

  objc_storeStrong(location, 0);
}

- (void)saveRemoteAccount:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = +[ACAccountStore defaultStore];
  [v5 saveAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateRemoteAccount:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = +[ACAccountStore defaultStore];
  [v5 saveAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)removeRemoteAccount:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = +[ACAccountStore defaultStore];
  [v5 removeAccount:location[0] withCompletionHandler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end