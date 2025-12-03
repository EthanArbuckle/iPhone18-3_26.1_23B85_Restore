@interface NSError
- (BOOL)buddy_containsErrorWithDomainInDomains:(id)domains;
- (BOOL)buddy_isCloudConfigMigrationNetworkError;
- (BOOL)buddy_isCloudConfigMigrationNoNetworkSelectedError;
- (id)buddy_popFrom:(id)from;
- (void)buddy_enumerateErrorTreeWithHandler:(id)handler;
@end

@implementation NSError

- (void)buddy_enumerateErrorTreeWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v10 = objc_opt_new();
  v9 = [NSMutableArray arrayWithObject:selfCopy];
  v8 = 0;
  v7 = 0;
  while (1)
  {
    v3 = [(NSError *)selfCopy buddy_popFrom:v9];
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
      underlyingErrors = [v7 underlyingErrors];
      [v5 addObjectsFromArray:underlyingErrors];
    }
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)buddy_popFrom:(id)from
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  lastObject = [location[0] lastObject];
  [location[0] removeLastObject];
  v3 = lastObject;
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)buddy_isCloudConfigMigrationNoNetworkSelectedError
{
  domain = [(NSError *)self domain];
  v3 = 0;
  if ([(NSString *)domain isEqualToString:@"BuddyCloudConfigMigrationNetworkErrorDomain"])
  {
    v3 = [(NSError *)self code]== 0;
  }

  return v3;
}

- (BOOL)buddy_isCloudConfigMigrationNetworkError
{
  selfCopy = self;
  v5[1] = a2;
  v7[0] = @"BuddyCloudConfigMigrationNetworkErrorDomain";
  v7[1] = NSURLErrorDomain;
  v2 = [NSArray arrayWithObjects:v7 count:2];
  v5[0] = [NSSet setWithArray:v2];

  v3 = [(NSError *)selfCopy buddy_containsErrorWithDomainInDomains:v5[0]];
  objc_storeStrong(v5, 0);
  return v3 & 1;
}

- (BOOL)buddy_containsErrorWithDomainInDomains:(id)domains
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domains);
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  v3 = selfCopy;
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