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
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6 = [MEMORY[0x1E6959A20] createProtoAccountWithAgeRange:a4];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)createProtoAccountWithAgeRange:()AuthKitProto
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v4 = objc_alloc(MEMORY[0x1E6959A20]);
  v6 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v6 protoAccountType];
  v8 = [v4 initWithAccountType:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  [v8 proto_setAgeRange:v9];
  v7 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);

  return v7;
}

- (id)proto_givenName
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 givenNameForAccount:a1];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

- (void)proto_setGivenName:()AuthKitProto
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v3 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v3 setGivenName:location[0] forAccount:v5];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

- (uint64_t)proto_ageRange
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 userAgeRangeForAccount:a1];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

- (uint64_t)proto_setAgeRange:()AuthKitProto
{
  v4 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v4 setUserAgeRange:a3 forAccount:a1];
  return MEMORY[0x1E69E5920](v4);
}

- (uint64_t)initWithGivenName:()AuthKitProto ageRange:
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = v12;
  v9 = +[AKAccountManager sharedInstance];
  v8 = [(AKAccountManager *)v9 protoAccountType];
  v12 = 0;
  v10 = [v7 initWithAccountType:?];
  v12 = v10;
  objc_storeStrong(&v12, v10);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    [v12 dca_setGivenName:location[0]];
    [v12 dca_setAgeRange:a4];
  }

  v5 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v5;
}

- (id)dca_givenName
{
  v2 = +[AKAccountManager sharedInstance];
  v3 = [(AKAccountManager *)v2 givenNameForAccount:a1];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

- (void)dca_setGivenName:()AuthKitProto
{
  v5 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  [v5 proto_setGivenName:location[0]];
  v3 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v3 setGivenName:location[0] forAccount:v5];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(location, 0);
}

@end