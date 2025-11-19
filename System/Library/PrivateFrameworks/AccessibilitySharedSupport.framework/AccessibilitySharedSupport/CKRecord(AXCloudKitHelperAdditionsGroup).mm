@interface CKRecord(AXCloudKitHelperAdditionsGroup)
- (id)name;
- (void)setName:()AXCloudKitHelperAdditionsGroup;
@end

@implementation CKRecord(AXCloudKitHelperAdditionsGroup)

- (id)name
{
  v1 = [a1 encryptedValues];
  v2 = [v1 objectForKey:@"name"];

  return v2;
}

- (void)setName:()AXCloudKitHelperAdditionsGroup
{
  v4 = a3;
  v5 = [a1 encryptedValues];
  [v5 setObject:v4 forKey:@"name"];
}

@end