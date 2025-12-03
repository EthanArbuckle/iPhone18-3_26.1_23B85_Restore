@interface HSMatterEcosystem
+ (id)ecosystemForContainingAppBundleURL:(id)l;
- (BOOL)isAppleHome;
- (BOOL)isTestEcosystemApp;
- (HSMatterEcosystem)initWithApplicationRecord:(id)record;
- (HSMatterEcosystem)initWithExtensionMessenger:(id)messenger;
- (NSString)appBundleIdentifier;
- (NSString)developerName;
- (NSString)displayName;
- (NSString)teamIdentifier;
@end

@implementation HSMatterEcosystem

+ (id)ecosystemForContainingAppBundleURL:(id)l
{
  lCopy = l;
  v4 = [[MTSDeviceSetupExtensionMessenger alloc] initWithContainingAppBundleURL:lCopy];

  v10 = 0;
  v5 = [v4 startWithError:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [[HSMatterEcosystem alloc] initWithExtensionMessenger:v4];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100077D70(v6, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (HSMatterEcosystem)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = HSMatterEcosystem;
  v5 = [(HSMatterEcosystem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HSMatterEcosystem *)v5 setApplicationRecord:recordCopy];
  }

  return v6;
}

- (HSMatterEcosystem)initWithExtensionMessenger:(id)messenger
{
  messengerCopy = messenger;
  v5 = [LSApplicationRecord alloc];
  containingAppBundleURL = [messengerCopy containingAppBundleURL];
  v15 = 0;
  v7 = [v5 initWithURL:containingAppBundleURL allowPlaceholder:0 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100077DE8(messengerCopy, v8, v9);
    }

    containingAppBundleURL2 = [messengerCopy containingAppBundleURL];
    NSLog(@"Failed to create app record from containing app bundle URL %@: %@", containingAppBundleURL2, v8);
  }

  v11 = [(HSMatterEcosystem *)self initWithApplicationRecord:v7];
  extensionMessenger = v11->_extensionMessenger;
  v11->_extensionMessenger = messengerCopy;
  v13 = messengerCopy;

  return v11;
}

- (NSString)displayName
{
  applicationRecord = [(HSMatterEcosystem *)self applicationRecord];
  localizedName = [applicationRecord localizedName];

  return localizedName;
}

- (NSString)developerName
{
  applicationRecord = [(HSMatterEcosystem *)self applicationRecord];
  iTunesMetadata = [applicationRecord iTunesMetadata];
  artistName = [iTunesMetadata artistName];

  return artistName;
}

- (NSString)appBundleIdentifier
{
  applicationRecord = [(HSMatterEcosystem *)self applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)teamIdentifier
{
  applicationRecord = [(HSMatterEcosystem *)self applicationRecord];
  teamIdentifier = [applicationRecord teamIdentifier];

  return teamIdentifier;
}

- (BOOL)isAppleHome
{
  appBundleIdentifier = [(HSMatterEcosystem *)self appBundleIdentifier];
  v3 = [appBundleIdentifier isEqualToString:@"com.apple.Home"];

  return v3;
}

- (BOOL)isTestEcosystemApp
{
  appBundleIdentifier = [(HSMatterEcosystem *)self appBundleIdentifier];
  v3 = [appBundleIdentifier isEqualToString:@"com.appleinternal.Chai"];

  return v3;
}

@end