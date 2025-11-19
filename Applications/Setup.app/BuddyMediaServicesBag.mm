@interface BuddyMediaServicesBag
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (BuddyMediaServicesBag)init;
- (id)getAppStoreMessage;
- (id)getAppStoreURL;
- (id)getBundleURL;
@end

@implementation BuddyMediaServicesBag

- (BuddyMediaServicesBag)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyMediaServicesBag;
  location = [(BuddyMediaServicesBag *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = [objc_opt_class() createBagForSubProfile];
    v3 = *(location + 1);
    *(location + 1) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (id)getAppStoreURL
{
  v7 = self;
  location[1] = a2;
  location[0] = +[ACAccountStore ams_sharedAccountStore];
  v5 = [location[0] ams_activeiTunesAccount];
  v2 = [(BuddyMediaServicesBag *)v7 underlyingBag];
  v3 = [(AMSBag *)v2 URLForKey:@"postOnboardingUrl" account:v5];

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)getAppStoreMessage
{
  v2 = [(BuddyMediaServicesBag *)self underlyingBag:a2];
  v3 = [(AMSBag *)v2 stringForKey:@"postOnboardingMessage"];

  return v3;
}

- (id)getBundleURL
{
  v2 = [(BuddyMediaServicesBag *)self underlyingBag:a2];
  v3 = [(AMSBag *)v2 URLForKey:@"dynamic-ui-bundle-gdpr-url"];

  return v3;
}

+ (AMSBagKeySet)bagKeySet
{
  location[2] = a1;
  location[1] = a2;
  location[0] = objc_alloc_init(AMSMutableBagKeySet);
  [location[0] addBagKey:@"guid-urls/regex" valueType:0];
  [location[0] addBagKey:@"guid-urls/schemes" valueType:0];
  [location[0] addBagKey:@"storefront-header-suffix" valueType:4];
  [location[0] addBagKey:@"trustedDomains" valueType:0];
  [location[0] addBagKey:@"sign-sap-setup-cert" valueType:5];
  [location[0] addBagKey:@"sign-sap-setup" valueType:5];
  [location[0] addBagKey:@"signed-actions" valueType:6];
  [location[0] addBagKey:@"sign-sap-request" valueType:6];
  [location[0] addBagKey:@"sign-sap-response" valueType:6];
  [location[0] addBagKey:@"metrics/metricsUrl" valueType:5];
  [location[0] addBagKey:@"metrics" valueType:6];
  [location[0] addBagKey:@"postOnboardingUrl" valueType:5];
  [location[0] addBagKey:@"postOnboardingMessage" valueType:4];
  [location[0] addBagKey:@"dynamic-ui-bundle-gdpr-url" valueType:5];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagKeySet];
  [AMSBagKeySet registerBagKeySet:v2 forProfile:@"setup" profileVersion:@"1"];

  return [AMSBag bagForProfile:@"setup" profileVersion:@"1"];
}

@end