@interface SecureStorageProvider
+ (id)sharedInstance;
- (id)secureStorage;
- (id)secureStorageWithConfig:(id)a3;
@end

@implementation SecureStorageProvider

+ (id)sharedInstance
{
  if (qword_100063030 != -1)
  {
    sub_1000227C4();
  }

  v3 = qword_100063028;

  return v3;
}

- (id)secureStorage
{
  v2 = objc_alloc_init(SecureStorage);

  return v2;
}

- (id)secureStorageWithConfig:(id)a3
{
  v3 = a3;
  v4 = [[SecureStorage alloc] initWithConfig:v3];

  return v4;
}

@end