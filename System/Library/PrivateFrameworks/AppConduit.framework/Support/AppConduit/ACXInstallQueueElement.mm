@interface ACXInstallQueueElement
- (ACXInstallQueueElement)initWithURL:(id)a3 watchBundleID:(id)a4 companionBundleID:(id)a5 priority:(unint64_t)a6 appPrefs:(id)a7 provisioningProfileInfo:(id)a8 isUserInitiated:(BOOL)a9 requiredCapabilities:(id)a10 isPlaceholder:(BOOL)a11 size:(int64_t)a12;
- (ACXInstallQueueElement)initWithWatchBundleID:(id)a3 companionBundleID:(id)a4 priority:(unint64_t)a5 appPrefs:(id)a6 provisioningProfileInfo:(id)a7 isUserInitiated:(BOOL)a8 requiredCapabilities:(id)a9;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ACXInstallQueueElement

- (ACXInstallQueueElement)initWithWatchBundleID:(id)a3 companionBundleID:(id)a4 priority:(unint64_t)a5 appPrefs:(id)a6 provisioningProfileInfo:(id)a7 isUserInitiated:(BOOL)a8 requiredCapabilities:(id)a9
{
  v24 = a3;
  v23 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = ACXInstallQueueElement;
  v18 = [(ACXInstallQueueElement *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleID, a3);
    objc_storeStrong(&v19->_companionBundleID, a4);
    v19->_priority = a5;
    objc_storeStrong(&v19->_appPreferences, a6);
    objc_storeStrong(&v19->_provisioningProfileInfo, a7);
    v19->_isUserInitiated = a8;
    objc_storeStrong(&v19->_requiredCapabilities, a9);
    v19->_installType = 0;
    appURL = v19->_appURL;
    v19->_appURL = 0;

    v19->_appSize = 0;
  }

  return v19;
}

- (ACXInstallQueueElement)initWithURL:(id)a3 watchBundleID:(id)a4 companionBundleID:(id)a5 priority:(unint64_t)a6 appPrefs:(id)a7 provisioningProfileInfo:(id)a8 isUserInitiated:(BOOL)a9 requiredCapabilities:(id)a10 isPlaceholder:(BOOL)a11 size:(int64_t)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v28 = a7;
  v27 = a8;
  v26 = a10;
  v29.receiver = self;
  v29.super_class = ACXInstallQueueElement;
  v21 = [(ACXInstallQueueElement *)&v29 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_bundleID, a4);
    objc_storeStrong(&v22->_companionBundleID, a5);
    v22->_priority = a6;
    objc_storeStrong(&v22->_appPreferences, a7);
    objc_storeStrong(&v22->_provisioningProfileInfo, a8);
    v22->_isUserInitiated = a9;
    objc_storeStrong(&v22->_requiredCapabilities, a10);
    objc_storeStrong(&v22->_appURL, a3);
    v22->_appSize = a12;
    v23 = 1;
    if (!a11)
    {
      v23 = 2;
    }

    v22->_installType = v23;
  }

  return v22;
}

- (unint64_t)hash
{
  v2 = [(ACXInstallQueueElement *)self bundleID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ACXInstallQueueElement *)self bundleID];
      v7 = [(ACXInstallQueueElement *)v5 bundleID];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end