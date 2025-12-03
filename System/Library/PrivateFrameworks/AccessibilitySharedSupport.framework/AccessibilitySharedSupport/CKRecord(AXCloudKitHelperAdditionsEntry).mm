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
  encryptedValues = [self encryptedValues];
  v2 = [encryptedValues objectForKey:@"groupUUID"];

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
  encryptedValues = [self encryptedValues];
  uUIDString = [v4 UUIDString];

  [encryptedValues setObject:uUIDString forKey:@"groupUUID"];
}

- (void)setPunctuation:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v4 forKey:@"punctuation"];
}

- (id)punctuation
{
  encryptedValues = [self encryptedValues];
  v2 = [encryptedValues objectForKey:@"punctuation"];

  return v2;
}

- (id)replacement
{
  encryptedValues = [self encryptedValues];
  v2 = [encryptedValues objectForKey:@"replacement"];

  return v2;
}

- (void)setReplacement:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v4 forKey:@"replacement"];
}

- (id)rule
{
  encryptedValues = [self encryptedValues];
  v2 = [encryptedValues objectForKey:@"rule"];

  return v2;
}

- (void)setRule:()AXCloudKitHelperAdditionsEntry
{
  v4 = a3;
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v4 forKey:@"rule"];
}

@end