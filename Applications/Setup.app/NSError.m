@interface NSError
- (BOOL)buddy_containsErrorWithDomainInDomains:(id)a3;
- (BOOL)buddy_isCloudConfigMigrationNetworkError;
- (BOOL)buddy_isCloudConfigMigrationNoNetworkSelectedError;
- (id)buddy_popFrom:(id)a3;
- (void)buddy_enumerateErrorTreeWithHandler:(id)a3;
@end

@implementation NSError

- (void)buddy_enumerateErrorTreeWithHandler:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = objc_opt_new();
  v9 = [NSMutableArray arrayWithObject:v12];
  v8 = 0;
  v7 = 0;
  while (1)
  {
    v3 = [(NSError *)v12 buddy_popFrom:v9];
    v4 = v7;
    v7 = v3;

    if (!v3)
    {
      break;
    }

    if (([v10 containsObject:v7] & 1) == 0)
    {
      [v10 addObject:v7];
      (*(location[0] + 2))(location[0], v7, &v8);
      if (v8)
      {
        break;
      }

      v5 = v9;
      v6 = [v7 underlyingErrors];
      [v5 addObjectsFromArray:v6];
    }
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)buddy_popFrom:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] lastObject];
  [location[0] removeLastObject];
  v3 = v5;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)buddy_isCloudConfigMigrationNoNetworkSelectedError
{
  v2 = [(NSError *)self domain];
  v3 = 0;
  if ([(NSString *)v2 isEqualToString:@"BuddyCloudConfigMigrationNetworkErrorDomain"])
  {
    v3 = [(NSError *)self code]== 0;
  }

  return v3;
}

- (BOOL)buddy_isCloudConfigMigrationNetworkError
{
  v6 = self;
  v5[1] = a2;
  v7[0] = @"BuddyCloudConfigMigrationNetworkErrorDomain";
  v7[1] = NSURLErrorDomain;
  v2 = [NSArray arrayWithObjects:v7 count:2];
  v5[0] = [NSSet setWithArray:v2];

  v3 = [(NSError *)v6 buddy_containsErrorWithDomainInDomains:v5[0]];
  objc_storeStrong(v5, 0);
  return v3 & 1;
}

- (BOOL)buddy_containsErrorWithDomainInDomains:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v3 = v17;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10021A5A4;
  v9 = &unk_10032F468;
  v10[0] = location[0];
  v10[1] = &v11;
  [(NSError *)v3 buddy_enumerateErrorTreeWithHandler:&v5];
  LOBYTE(v3) = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(location, 0);
  return v3 & 1;
}

@end