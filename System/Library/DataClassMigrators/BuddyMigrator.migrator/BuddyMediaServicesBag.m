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
  v6.receiver = self;
  v6.super_class = BuddyMediaServicesBag;
  v2 = [(BuddyMediaServicesBag *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() createBagForSubProfile];
    underlyingBag = v2->_underlyingBag;
    v2->_underlyingBag = v3;
  }

  return v2;
}

- (id)getAppStoreURL
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  v4 = [v3 ams_activeiTunesAccount];
  v5 = [(BuddyMediaServicesBag *)self underlyingBag];
  v6 = [v5 URLForKey:@"postOnboardingUrl" account:v4];

  return v6;
}

- (id)getAppStoreMessage
{
  v2 = [(BuddyMediaServicesBag *)self underlyingBag];
  v3 = [v2 stringForKey:@"postOnboardingMessage"];

  return v3;
}

- (id)getBundleURL
{
  v2 = [(BuddyMediaServicesBag *)self underlyingBag];
  v3 = [v2 URLForKey:@"dynamic-ui-bundle-gdpr-url"];

  return v3;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSMutableBagKeySet);
  [v2 addBagKey:@"guid-urls/regex" valueType:0];
  [v2 addBagKey:@"guid-urls/schemes" valueType:0];
  [v2 addBagKey:@"storefront-header-suffix" valueType:4];
  [v2 addBagKey:@"trustedDomains" valueType:0];
  [v2 addBagKey:@"sign-sap-setup-cert" valueType:5];
  [v2 addBagKey:@"sign-sap-setup" valueType:5];
  [v2 addBagKey:@"signed-actions" valueType:6];
  [v2 addBagKey:@"sign-sap-request" valueType:6];
  [v2 addBagKey:@"sign-sap-response" valueType:6];
  [v2 addBagKey:@"metrics/metricsUrl" valueType:5];
  [v2 addBagKey:@"metrics" valueType:6];
  [v2 addBagKey:@"postOnboardingUrl" valueType:5];
  [v2 addBagKey:@"postOnboardingMessage" valueType:4];
  [v2 addBagKey:@"dynamic-ui-bundle-gdpr-url" valueType:5];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagKeySet];
  [AMSBagKeySet registerBagKeySet:v2 forProfile:@"setup" profileVersion:@"1"];

  return [AMSBag bagForProfile:@"setup" profileVersion:@"1"];
}

@end