@interface ACXInstallQueueElement
- (ACXInstallQueueElement)initWithURL:(id)l watchBundleID:(id)d companionBundleID:(id)iD priority:(unint64_t)priority appPrefs:(id)prefs provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated requiredCapabilities:(id)self0 isPlaceholder:(BOOL)self1 size:(int64_t)self2;
- (ACXInstallQueueElement)initWithWatchBundleID:(id)d companionBundleID:(id)iD priority:(unint64_t)priority appPrefs:(id)prefs provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated requiredCapabilities:(id)capabilities;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ACXInstallQueueElement

- (ACXInstallQueueElement)initWithWatchBundleID:(id)d companionBundleID:(id)iD priority:(unint64_t)priority appPrefs:(id)prefs provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated requiredCapabilities:(id)capabilities
{
  dCopy = d;
  iDCopy = iD;
  prefsCopy = prefs;
  infoCopy = info;
  capabilitiesCopy = capabilities;
  v25.receiver = self;
  v25.super_class = ACXInstallQueueElement;
  v18 = [(ACXInstallQueueElement *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleID, d);
    objc_storeStrong(&v19->_companionBundleID, iD);
    v19->_priority = priority;
    objc_storeStrong(&v19->_appPreferences, prefs);
    objc_storeStrong(&v19->_provisioningProfileInfo, info);
    v19->_isUserInitiated = initiated;
    objc_storeStrong(&v19->_requiredCapabilities, capabilities);
    v19->_installType = 0;
    appURL = v19->_appURL;
    v19->_appURL = 0;

    v19->_appSize = 0;
  }

  return v19;
}

- (ACXInstallQueueElement)initWithURL:(id)l watchBundleID:(id)d companionBundleID:(id)iD priority:(unint64_t)priority appPrefs:(id)prefs provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated requiredCapabilities:(id)self0 isPlaceholder:(BOOL)self1 size:(int64_t)self2
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  prefsCopy = prefs;
  infoCopy = info;
  capabilitiesCopy = capabilities;
  v29.receiver = self;
  v29.super_class = ACXInstallQueueElement;
  v21 = [(ACXInstallQueueElement *)&v29 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_bundleID, d);
    objc_storeStrong(&v22->_companionBundleID, iD);
    v22->_priority = priority;
    objc_storeStrong(&v22->_appPreferences, prefs);
    objc_storeStrong(&v22->_provisioningProfileInfo, info);
    v22->_isUserInitiated = initiated;
    objc_storeStrong(&v22->_requiredCapabilities, capabilities);
    objc_storeStrong(&v22->_appURL, l);
    v22->_appSize = size;
    v23 = 1;
    if (!placeholder)
    {
      v23 = 2;
    }

    v22->_installType = v23;
  }

  return v22;
}

- (unint64_t)hash
{
  bundleID = [(ACXInstallQueueElement *)self bundleID];
  v3 = [bundleID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleID = [(ACXInstallQueueElement *)self bundleID];
      bundleID2 = [(ACXInstallQueueElement *)v5 bundleID];

      v8 = [bundleID isEqualToString:bundleID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end