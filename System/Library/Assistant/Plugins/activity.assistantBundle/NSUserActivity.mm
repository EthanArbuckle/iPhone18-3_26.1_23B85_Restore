@interface NSUserActivity
- (BOOL)hasLocationData;
- (BOOL)hasPhoneNumber;
- (id)clientUserActivity;
- (id)combinedUserInfo;
@end

@implementation NSUserActivity

- (BOOL)hasLocationData
{
  v2 = [(NSUserActivity *)self contentAttributeSet];
  v3 = [v2 hasLocationData];

  return v3;
}

- (BOOL)hasPhoneNumber
{
  v2 = [(NSUserActivity *)self contentAttributeSet];
  v3 = [v2 phoneNumbers];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)clientUserActivity
{
  v3 = objc_alloc_init(SAClientUserActivity);
  v4 = [(NSUserActivity *)self _uniqueIdentifier];
  v5 = [v4 UUIDString];
  [v3 setAceId:v5];

  [v3 setIsEligibleForDirections:{-[NSUserActivity hasLocationData](self, "hasLocationData")}];
  [v3 setIsEligibleForAppPunchout:{-[NSUserActivity hasPhoneNumber](self, "hasPhoneNumber")}];
  v6 = [(NSUserActivity *)self combinedUserInfo];
  [v3 setUserInfo:v6];

  v7 = [(NSUserActivity *)self activityType];
  [v3 setType:v7];

  v8 = [(NSUserActivity *)self title];
  [v3 setTitle:v8];

  v9 = [(NSUserActivity *)self webpageURL];
  [v3 setWebpageURL:v9];

  [v3 setIsEligibleForSearch:{-[NSUserActivity isEligibleForSearch](self, "isEligibleForSearch")}];
  [v3 setIsEligibleForPublicIndexing:{-[NSUserActivity isEligibleForPublicIndexing](self, "isEligibleForPublicIndexing")}];
  [v3 setIsEligibleForHandoff:{-[NSUserActivity isEligibleForHandoff](self, "isEligibleForHandoff")}];
  v10 = [(NSUserActivity *)self keywords];
  v11 = [v10 allObjects];
  [v3 setKeywords:v11];

  v12 = [(NSUserActivity *)self requiredUserInfoKeys];
  v13 = [v12 allObjects];
  [v3 setRequiredUserInfoKeys:v13];

  return v3;
}

- (id)combinedUserInfo
{
  v3 = [(NSUserActivity *)self userInfo];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [(NSUserActivity *)self contentAttributeSet];
  v6 = [v5 addressDictionary];
  [v4 addEntriesFromDictionary:v6];

  v7 = [(NSUserActivity *)self contentAttributeSet];
  v8 = [v7 longitude];

  if (v8)
  {
    v9 = [(NSUserActivity *)self contentAttributeSet];
    v10 = [v9 longitude];
    [v4 setObject:v10 forKey:@"longitude"];
  }

  v11 = [(NSUserActivity *)self contentAttributeSet];
  v12 = [v11 latitude];

  if (v12)
  {
    v13 = [(NSUserActivity *)self contentAttributeSet];
    v14 = [v13 latitude];
    [v4 setObject:v14 forKey:@"latitude"];
  }

  v15 = [(NSUserActivity *)self contentAttributeSet];
  v16 = [v15 phoneNumbers];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(NSUserActivity *)self contentAttributeSet];
    v19 = [v18 phoneNumbers];
    v20 = [v19 firstObject];
    [v4 setObject:v20 forKey:@"phone"];
  }

  v21 = [(NSUserActivity *)self contentAttributeSet];
  v22 = [v21 namedLocation];

  if (v22)
  {
    v23 = [(NSUserActivity *)self contentAttributeSet];
    v24 = [v23 namedLocation];
    [v4 setObject:v24 forKey:@"name"];
  }

  v25 = [(NSUserActivity *)self externalMediaContentIdentifier];

  if (v25)
  {
    v26 = [(NSUserActivity *)self externalMediaContentIdentifier];
    [v4 setObject:v26 forKey:@"externalMediaContentIdentifier"];

    v27 = [(NSUserActivity *)self _externalMediaContentBundleIdentifier];
    [v4 setObject:v27 forKey:@"externalMediaContentBundleIdentifier"];
  }

  return v4;
}

@end