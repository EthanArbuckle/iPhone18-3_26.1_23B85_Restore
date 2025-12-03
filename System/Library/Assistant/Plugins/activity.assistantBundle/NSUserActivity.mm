@interface NSUserActivity
- (BOOL)hasLocationData;
- (BOOL)hasPhoneNumber;
- (id)clientUserActivity;
- (id)combinedUserInfo;
@end

@implementation NSUserActivity

- (BOOL)hasLocationData
{
  contentAttributeSet = [(NSUserActivity *)self contentAttributeSet];
  hasLocationData = [contentAttributeSet hasLocationData];

  return hasLocationData;
}

- (BOOL)hasPhoneNumber
{
  contentAttributeSet = [(NSUserActivity *)self contentAttributeSet];
  phoneNumbers = [contentAttributeSet phoneNumbers];
  v4 = [phoneNumbers count] != 0;

  return v4;
}

- (id)clientUserActivity
{
  v3 = objc_alloc_init(SAClientUserActivity);
  _uniqueIdentifier = [(NSUserActivity *)self _uniqueIdentifier];
  uUIDString = [_uniqueIdentifier UUIDString];
  [v3 setAceId:uUIDString];

  [v3 setIsEligibleForDirections:{-[NSUserActivity hasLocationData](self, "hasLocationData")}];
  [v3 setIsEligibleForAppPunchout:{-[NSUserActivity hasPhoneNumber](self, "hasPhoneNumber")}];
  combinedUserInfo = [(NSUserActivity *)self combinedUserInfo];
  [v3 setUserInfo:combinedUserInfo];

  activityType = [(NSUserActivity *)self activityType];
  [v3 setType:activityType];

  title = [(NSUserActivity *)self title];
  [v3 setTitle:title];

  webpageURL = [(NSUserActivity *)self webpageURL];
  [v3 setWebpageURL:webpageURL];

  [v3 setIsEligibleForSearch:{-[NSUserActivity isEligibleForSearch](self, "isEligibleForSearch")}];
  [v3 setIsEligibleForPublicIndexing:{-[NSUserActivity isEligibleForPublicIndexing](self, "isEligibleForPublicIndexing")}];
  [v3 setIsEligibleForHandoff:{-[NSUserActivity isEligibleForHandoff](self, "isEligibleForHandoff")}];
  keywords = [(NSUserActivity *)self keywords];
  allObjects = [keywords allObjects];
  [v3 setKeywords:allObjects];

  requiredUserInfoKeys = [(NSUserActivity *)self requiredUserInfoKeys];
  allObjects2 = [requiredUserInfoKeys allObjects];
  [v3 setRequiredUserInfoKeys:allObjects2];

  return v3;
}

- (id)combinedUserInfo
{
  userInfo = [(NSUserActivity *)self userInfo];
  v4 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

  contentAttributeSet = [(NSUserActivity *)self contentAttributeSet];
  addressDictionary = [contentAttributeSet addressDictionary];
  [v4 addEntriesFromDictionary:addressDictionary];

  contentAttributeSet2 = [(NSUserActivity *)self contentAttributeSet];
  longitude = [contentAttributeSet2 longitude];

  if (longitude)
  {
    contentAttributeSet3 = [(NSUserActivity *)self contentAttributeSet];
    longitude2 = [contentAttributeSet3 longitude];
    [v4 setObject:longitude2 forKey:@"longitude"];
  }

  contentAttributeSet4 = [(NSUserActivity *)self contentAttributeSet];
  latitude = [contentAttributeSet4 latitude];

  if (latitude)
  {
    contentAttributeSet5 = [(NSUserActivity *)self contentAttributeSet];
    latitude2 = [contentAttributeSet5 latitude];
    [v4 setObject:latitude2 forKey:@"latitude"];
  }

  contentAttributeSet6 = [(NSUserActivity *)self contentAttributeSet];
  phoneNumbers = [contentAttributeSet6 phoneNumbers];
  v17 = [phoneNumbers count];

  if (v17)
  {
    contentAttributeSet7 = [(NSUserActivity *)self contentAttributeSet];
    phoneNumbers2 = [contentAttributeSet7 phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];
    [v4 setObject:firstObject forKey:@"phone"];
  }

  contentAttributeSet8 = [(NSUserActivity *)self contentAttributeSet];
  namedLocation = [contentAttributeSet8 namedLocation];

  if (namedLocation)
  {
    contentAttributeSet9 = [(NSUserActivity *)self contentAttributeSet];
    namedLocation2 = [contentAttributeSet9 namedLocation];
    [v4 setObject:namedLocation2 forKey:@"name"];
  }

  externalMediaContentIdentifier = [(NSUserActivity *)self externalMediaContentIdentifier];

  if (externalMediaContentIdentifier)
  {
    externalMediaContentIdentifier2 = [(NSUserActivity *)self externalMediaContentIdentifier];
    [v4 setObject:externalMediaContentIdentifier2 forKey:@"externalMediaContentIdentifier"];

    _externalMediaContentBundleIdentifier = [(NSUserActivity *)self _externalMediaContentBundleIdentifier];
    [v4 setObject:_externalMediaContentBundleIdentifier forKey:@"externalMediaContentBundleIdentifier"];
  }

  return v4;
}

@end