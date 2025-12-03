@interface ACAccount(AuthKitProto)
+ (id)createProtoAccountWithAgeRange:()AuthKitProto;
+ (id)createProtoAccountWithGivenName:()AuthKitProto ageRange:;
- (id)dca_givenName;
- (id)proto_givenName;
- (uint64_t)initWithGivenName:()AuthKitProto ageRange:;
- (uint64_t)proto_ageRange;
- (uint64_t)proto_setAgeRange:()AuthKitProto;
- (void)dca_setGivenName:()AuthKitProto;
- (void)proto_setGivenName:()AuthKitProto;
@end

@implementation ACAccount(AuthKitProto)

+ (id)createProtoAccountWithGivenName:()AuthKitProto ageRange:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6 = [MEMORY[0x1E6959A20] createProtoAccountWithAgeRange:a4];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)createProtoAccountWithAgeRange:()AuthKitProto
{
  selfCopy = self;
  v10 = a2;
  v9 = a3;
  v4 = objc_alloc(MEMORY[0x1E6959A20]);
  v6 = +[AKAccountManager sharedInstance];
  protoAccountType = [(AKAccountManager *)v6 protoAccountType];
  v8 = [v4 initWithAccountType:?];
  MEMORY[0x1E69E5920](protoAccountType);
  MEMORY[0x1E69E5920](v6);
  [v8 proto_setAgeRange:v9];
  v7 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);

  return v7;
}

- (id)proto_givenName
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 givenNameForAccount:self];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

- (void)proto_setGivenName:()AuthKitProto
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v3 setGivenName:location[0] forAccount:selfCopy];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

- (uint64_t)proto_ageRange
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 userAgeRangeForAccount:self];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

- (uint64_t)proto_setAgeRange:()AuthKitProto
{
  v4 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v4 setUserAgeRange:a3 forAccount:self];
  return MEMORY[0x1E69E5920](v4);
}

- (uint64_t)initWithGivenName:()AuthKitProto ageRange:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = selfCopy;
  v9 = +[AKAccountManager sharedInstance];
  protoAccountType = [(AKAccountManager *)v9 protoAccountType];
  selfCopy = 0;
  v10 = [v7 initWithAccountType:?];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  MEMORY[0x1E69E5920](protoAccountType);
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    [selfCopy dca_setGivenName:location[0]];
    [selfCopy dca_setAgeRange:a4];
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)dca_givenName
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 givenNameForAccount:self];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

- (void)dca_setGivenName:()AuthKitProto
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [selfCopy proto_setGivenName:location[0]];
  v3 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v3 setGivenName:location[0] forAccount:selfCopy];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

@end