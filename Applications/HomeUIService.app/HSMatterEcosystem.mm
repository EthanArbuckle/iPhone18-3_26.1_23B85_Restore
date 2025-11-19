@interface HSMatterEcosystem
+ (id)ecosystemForContainingAppBundleURL:(id)a3;
- (BOOL)isAppleHome;
- (BOOL)isTestEcosystemApp;
- (HSMatterEcosystem)initWithApplicationRecord:(id)a3;
- (HSMatterEcosystem)initWithExtensionMessenger:(id)a3;
- (NSString)appBundleIdentifier;
- (NSString)developerName;
- (NSString)displayName;
- (NSString)teamIdentifier;
@end

@implementation HSMatterEcosystem

+ (id)ecosystemForContainingAppBundleURL:(id)a3
{
  v3 = a3;
  v4 = [[MTSDeviceSetupExtensionMessenger alloc] initWithContainingAppBundleURL:v3];

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

- (HSMatterEcosystem)initWithApplicationRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HSMatterEcosystem;
  v5 = [(HSMatterEcosystem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HSMatterEcosystem *)v5 setApplicationRecord:v4];
  }

  return v6;
}

- (HSMatterEcosystem)initWithExtensionMessenger:(id)a3
{
  v4 = a3;
  v5 = [LSApplicationRecord alloc];
  v6 = [v4 containingAppBundleURL];
  v15 = 0;
  v7 = [v5 initWithURL:v6 allowPlaceholder:0 error:&v15];
  v8 = v15;

  if (!v7)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100077DE8(v4, v8, v9);
    }

    v10 = [v4 containingAppBundleURL];
    NSLog(@"Failed to create app record from containing app bundle URL %@: %@", v10, v8);
  }

  v11 = [(HSMatterEcosystem *)self initWithApplicationRecord:v7];
  extensionMessenger = v11->_extensionMessenger;
  v11->_extensionMessenger = v4;
  v13 = v4;

  return v11;
}

- (NSString)displayName
{
  v2 = [(HSMatterEcosystem *)self applicationRecord];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)developerName
{
  v2 = [(HSMatterEcosystem *)self applicationRecord];
  v3 = [v2 iTunesMetadata];
  v4 = [v3 artistName];

  return v4;
}

- (NSString)appBundleIdentifier
{
  v2 = [(HSMatterEcosystem *)self applicationRecord];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)teamIdentifier
{
  v2 = [(HSMatterEcosystem *)self applicationRecord];
  v3 = [v2 teamIdentifier];

  return v3;
}

- (BOOL)isAppleHome
{
  v2 = [(HSMatterEcosystem *)self appBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Home"];

  return v3;
}

- (BOOL)isTestEcosystemApp
{
  v2 = [(HSMatterEcosystem *)self appBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.appleinternal.Chai"];

  return v3;
}

@end