@interface NSExtensionItem(AKExtensionItem)
+ (id)extensionItemWithAppleIDAuthenticationContext:()AKExtensionItem;
- (id)ak_context;
- (void)ak_setContext:()AKExtensionItem;
@end

@implementation NSExtensionItem(AKExtensionItem)

+ (id)extensionItemWithAppleIDAuthenticationContext:()AKExtensionItem
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  [v5 ak_setContext:location[0]];
  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)ak_setContext:()AKExtensionItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  userInfo = [selfCopy userInfo];
  v5 = [userInfo mutableCopy];
  MEMORY[0x1E69E5920](userInfo);
  if (location[0])
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:?];
    [v5 setObject:v4 forKey:@"AKExtensionItemContext"];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    [v5 removeObjectForKey:@"AKExtensionItemContext"];
  }

  [selfCopy setUserInfo:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)ak_context
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = 0;
  userInfo = [self userInfo];
  location = [userInfo objectForKey:@"AKExtensionItemContext"];
  MEMORY[0x1E69E5920](userInfo);
  if (location)
  {
    v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:location error:0];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x1E69E5920](v3);
  }

  v5 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

@end