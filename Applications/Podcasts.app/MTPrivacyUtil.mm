@interface MTPrivacyUtil
+ (BOOL)allowReporting;
+ (BOOL)cloudSyncIsDirty;
+ (BOOL)privacyAcknowledgementNeeded;
+ (BOOL)shouldShowPodcastsTermsScreen;
+ (NSNumber)accountAgreedTermsVersion;
+ (NSNumber)deviceAgreedTermsVersion;
+ (NSString)cloudSyncVersion;
+ (void)markAsAgreedToLatestTerms;
+ (void)resetToInitialState;
+ (void)setAccountAgreedTermsVersion:(id)version;
+ (void)setCloudSyncIsDirty:(BOOL)dirty;
+ (void)setCloudSyncVersion:(id)version;
+ (void)setDeviceAgreedTermsVersion:(id)version;
@end

@implementation MTPrivacyUtil

+ (BOOL)privacyAcknowledgementNeeded
{
  if ([self shouldShowPodcastsTermsScreen])
  {
    return 1;
  }

  v3 = kMTPodcastsPrivacyIdentifier;

  return [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:v3];
}

+ (BOOL)shouldShowPodcastsTermsScreen
{
  deviceAgreedTermsVersion = [self deviceAgreedTermsVersion];
  v3 = [deviceAgreedTermsVersion integerValue] < 2;

  return v3;
}

+ (NSNumber)deviceAgreedTermsVersion
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 objectForKey:@"MTDeviceAgreedTermsVersion"];

  return v3;
}

+ (NSString)cloudSyncVersion
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 objectForKey:@"MTAgreedTermsCloudSyncVersion"];

  return v3;
}

+ (void)markAsAgreedToLatestTerms
{
  deviceAgreedTermsVersion = [self deviceAgreedTermsVersion];
  integerValue = [deviceAgreedTermsVersion integerValue];

  if (integerValue <= 1)
  {
    [self setDeviceAgreedTermsVersion:&off_100501108];
    [self setCloudSyncIsDirty:1];
    v5 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [v5 syncTermsVersion];
  }
}

+ (void)resetToInitialState
{
  [self setDeviceAgreedTermsVersion:0];
  [self setAccountAgreedTermsVersion:0];
  [self setCloudSyncVersion:0];

  [self setCloudSyncIsDirty:0];
}

+ (BOOL)allowReporting
{
  deviceAgreedTermsVersion = [self deviceAgreedTermsVersion];
  v3 = [deviceAgreedTermsVersion integerValue] > 1;

  return v3;
}

+ (void)setDeviceAgreedTermsVersion:(id)version
{
  versionCopy = version;
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = v3;
  if (versionCopy)
  {
    [v3 setObject:versionCopy forKey:@"MTDeviceAgreedTermsVersion"];
  }

  else
  {
    [v3 removeObjectForKey:@"MTDeviceAgreedTermsVersion"];
  }
}

+ (NSNumber)accountAgreedTermsVersion
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 objectForKey:@"MTAccountAgreedTermsVersion"];

  return v3;
}

+ (void)setAccountAgreedTermsVersion:(id)version
{
  versionCopy = version;
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = v3;
  if (versionCopy)
  {
    [v3 setObject:versionCopy forKey:@"MTAccountAgreedTermsVersion"];
  }

  else
  {
    [v3 removeObjectForKey:@"MTAccountAgreedTermsVersion"];
  }
}

+ (BOOL)cloudSyncIsDirty
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:@"MTAgreedTermsCloudSyncIsDirty"];

  return v3;
}

+ (void)setCloudSyncIsDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 setBool:dirtyCopy forKey:@"MTAgreedTermsCloudSyncIsDirty"];
}

+ (void)setCloudSyncVersion:(id)version
{
  versionCopy = version;
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = v3;
  if (versionCopy)
  {
    [v3 setObject:versionCopy forKey:@"MTAgreedTermsCloudSyncVersion"];
  }

  else
  {
    [v3 removeObjectForKey:@"MTAgreedTermsCloudSyncVersion"];
  }
}

@end