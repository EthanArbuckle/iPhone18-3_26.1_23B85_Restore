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
    createBagForSubProfile = [objc_opt_class() createBagForSubProfile];
    underlyingBag = v2->_underlyingBag;
    v2->_underlyingBag = createBagForSubProfile;
  }

  return v2;
}

- (id)getAppStoreURL
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v3 ams_activeiTunesAccount];
  underlyingBag = [(BuddyMediaServicesBag *)self underlyingBag];
  v6 = [underlyingBag URLForKey:@"postOnboardingUrl" account:ams_activeiTunesAccount];

  return v6;
}

- (id)getAppStoreMessage
{
  underlyingBag = [(BuddyMediaServicesBag *)self underlyingBag];
  v3 = [underlyingBag stringForKey:@"postOnboardingMessage"];

  return v3;
}

- (id)getBundleURL
{
  underlyingBag = [(BuddyMediaServicesBag *)self underlyingBag];
  v3 = [underlyingBag URLForKey:@"dynamic-ui-bundle-gdpr-url"];

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
  bagKeySet = [objc_opt_class() bagKeySet];
  [AMSBagKeySet registerBagKeySet:bagKeySet forProfile:@"setup" profileVersion:@"1"];

  return [AMSBag bagForProfile:@"setup" profileVersion:@"1"];
}

@end