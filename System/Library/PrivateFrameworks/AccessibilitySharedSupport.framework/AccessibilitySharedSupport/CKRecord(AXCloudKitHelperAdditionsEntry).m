@interface CKRecord(AXCloudKitHelperAdditionsEntry)
- (id)groupUUID;
- (id)punctuation;
- (id)replacement;
- (id)rule;
- (void)setGroupUUID:()AXCloudKitHelperAdditionsEntry;
- (void)setPunctuation:()AXCloudKitHelperAdditionsEntry;
- (void)setReplacement:()AXCloudKitHelperAdditionsEntry;
- (void)setRule:()AXCloudKitHelperAdditionsEntry;
@end

@implementation CKRecord(AXCloudKitHelperAdditionsEntry)

- (id)groupUUID
{
  v1 = [a1 encryptedValues];
  v2 = [v1 objectForKey:@"groupUUID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGroupUUID:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  v6 = [a1 encryptedValues];
  v5 = [v4 UUIDString];

  [v6 setObject:v5 forKey:@"groupUUID"];
}

- (void)setPunctuation:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  v5 = [a1 encryptedValues];
  [v5 setObject:v4 forKey:@"punctuation"];
}

- (id)punctuation
{
  v1 = [a1 encryptedValues];
  v2 = [v1 objectForKey:@"punctuation"];

  return v2;
}

- (id)replacement
{
  v1 = [a1 encryptedValues];
  v2 = [v1 objectForKey:@"replacement"];

  return v2;
}

- (void)setReplacement:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  v5 = [a1 encryptedValues];
  [v5 setObject:v4 forKey:@"replacement"];
}

- (id)rule
{
  v1 = [a1 encryptedValues];
  v2 = [v1 objectForKey:@"rule"];

  return v2;
}

- (void)setRule:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  v5 = [a1 encryptedValues];
  [v5 setObject:v4 forKey:@"rule"];
}

@end