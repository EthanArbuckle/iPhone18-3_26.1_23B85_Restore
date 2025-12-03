@interface CKRecord(AXCloudKitHelperAdditionsGroup)
- (id)name;
- (void)setName:()AXCloudKitHelperAdditionsGroup;
@end

@implementation CKRecord(AXCloudKitHelperAdditionsGroup)

- (id)name
{
  encryptedValues = [self encryptedValues];
  v2 = [encryptedValues objectForKey:@"name"];

  return v2;
}

- (void)setName:()AXCloudKitHelperAdditionsGroup
{
  v4 = a3;
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v4 forKey:@"name"];
}

@end