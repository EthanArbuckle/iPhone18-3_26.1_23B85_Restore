@interface EKDirectoryRecord
+ (id)recordFromSearchResult:(id)result;
- (NSDictionary)userInfo;
- (id)description;
@end

@implementation EKDirectoryRecord

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v11.receiver = self;
  v11.super_class = EKDirectoryRecord;
  v4 = [(EKDirectoryRecord *)&v11 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  displayName = [(EKDirectoryRecord *)self displayName];
  [v5 setKey:@"displayName" withString:displayName];

  preferredAddress = [(EKDirectoryRecord *)self preferredAddress];
  [v5 setKey:@"preferredAddress" withString:preferredAddress];

  principalPath = [(EKDirectoryRecord *)self principalPath];
  [v5 setKey:@"principalPath" withString:principalPath];

  build = [v5 build];

  return build;
}

- (NSDictionary)userInfo
{
  v3 = objc_opt_new();
  principalPath = [(EKDirectoryRecord *)self principalPath];

  if (principalPath)
  {
    principalPath2 = [(EKDirectoryRecord *)self principalPath];
    [v3 setObject:principalPath2 forKeyedSubscript:EKDirectoryRecordPrincipalPathKey];
  }

  return v3;
}

+ (id)recordFromSearchResult:(id)result
{
  resultCopy = result;
  v4 = objc_opt_new();
  displayName = [resultCopy displayName];
  [v4 setDisplayName:displayName];

  firstName = [resultCopy firstName];
  [v4 setFirstName:firstName];

  lastName = [resultCopy lastName];
  [v4 setLastName:lastName];

  preferredAddress = [resultCopy preferredAddress];

  [v4 setPreferredAddress:preferredAddress];

  return v4;
}

@end