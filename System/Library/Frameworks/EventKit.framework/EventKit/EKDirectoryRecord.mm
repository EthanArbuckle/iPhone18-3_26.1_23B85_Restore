@interface EKDirectoryRecord
+ (id)recordFromSearchResult:(id)a3;
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

  v6 = [(EKDirectoryRecord *)self displayName];
  [v5 setKey:@"displayName" withString:v6];

  v7 = [(EKDirectoryRecord *)self preferredAddress];
  [v5 setKey:@"preferredAddress" withString:v7];

  v8 = [(EKDirectoryRecord *)self principalPath];
  [v5 setKey:@"principalPath" withString:v8];

  v9 = [v5 build];

  return v9;
}

- (NSDictionary)userInfo
{
  v3 = objc_opt_new();
  v4 = [(EKDirectoryRecord *)self principalPath];

  if (v4)
  {
    v5 = [(EKDirectoryRecord *)self principalPath];
    [v3 setObject:v5 forKeyedSubscript:EKDirectoryRecordPrincipalPathKey];
  }

  return v3;
}

+ (id)recordFromSearchResult:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 displayName];
  [v4 setDisplayName:v5];

  v6 = [v3 firstName];
  [v4 setFirstName:v6];

  v7 = [v3 lastName];
  [v4 setLastName:v7];

  v8 = [v3 preferredAddress];

  [v4 setPreferredAddress:v8];

  return v4;
}

@end