@interface ASDPurchase
- (ASDPurchase)init;
- (ASDPurchase)initWithCoder:(id)a3;
- (NSString)buyParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)firstValueForBuyParameter:(id)a3;
- (void)appendValue:(id)a3 forBuyParameter:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setBuyParameters:(id)a3;
@end

@implementation ASDPurchase

- (ASDPurchase)init
{
  v3.receiver = self;
  v3.super_class = ASDPurchase;
  result = [(ASDPurchase *)&v3 init];
  if (result)
  {
    result->_createsJobs = 1;
    result->_softwarePlatform = 1;
  }

  return result;
}

- (NSString)buyParameters
{
  if (self->_buyParameters)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v3 setQueryItems:self->_buyParameters];
    v4 = [v3 percentEncodedQuery];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBuyParameters:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [(NSArray *)v4 setPercentEncodedQuery:v7];
    v5 = [(NSArray *)v4 queryItems];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v5;
  }

  else
  {
    v4 = self->_buyParameters;
    self->_buyParameters = 0;
  }
}

- (void)appendValue:(id)a3 forBuyParameter:(id)a4
{
  v6 = MEMORY[0x1E696AF60];
  v7 = a4;
  v8 = a3;
  v12 = [[v6 alloc] initWithName:v7 value:v8];

  buyParameters = self->_buyParameters;
  if (buyParameters)
  {
    [(NSArray *)buyParameters arrayByAddingObject:v12];
  }

  else
  {
    [MEMORY[0x1E695DEC8] arrayWithObject:v12];
  }
  v10 = ;
  v11 = self->_buyParameters;
  self->_buyParameters = v10;
}

- (id)firstValueForBuyParameter:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_buyParameters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = [v9 value];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDPurchase allocWithZone:](ASDPurchase init];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSDictionary *)self->_additionalHeaders copyWithZone:a3];
  additionalHeaders = v5->_additionalHeaders;
  v5->_additionalHeaders = v8;

  v10 = [(NSString *)self->_affiliateIdentifier copyWithZone:a3];
  affiliateIdentifier = v5->_affiliateIdentifier;
  v5->_affiliateIdentifier = v10;

  v12 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_appCapabilities, 1}];
  appCapabilities = v5->_appCapabilities;
  v5->_appCapabilities = v12;

  v14 = [(NSString *)self->_bagKey copyWithZone:a3];
  bagKey = v5->_bagKey;
  v5->_bagKey = v14;

  v16 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v16;

  v18 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_buyParameters, 1}];
  buyParameters = v5->_buyParameters;
  v5->_buyParameters = v18;

  v20 = [(NSString *)self->_clientID copyWithZone:a3];
  clientID = v5->_clientID;
  v5->_clientID = v20;

  v5->_createsJobs = self->_createsJobs;
  v5->_isDefaultBrowser = self->_isDefaultBrowser;
  v5->_displaysOnLockScreen = self->_displaysOnLockScreen;
  v5->_extensionsToEnable = self->_extensionsToEnable;
  v5->_forceWatchInstall = self->_forceWatchInstall;
  v5->_forceAskToBuyReason = self->_forceAskToBuyReason;
  v22 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_gratisIdentifiers, 1}];
  gratisIdentifiers = v5->_gratisIdentifiers;
  v5->_gratisIdentifiers = v22;

  v5->_isBackgroundUpdate = self->_isBackgroundUpdate;
  v5->_isDSIDLess = self->_isDSIDLess;
  v5->_isRedownload = self->_isRedownload;
  v5->_isRefresh = self->_isRefresh;
  v5->_isUpdate = self->_isUpdate;
  v5->_isPreorder = self->_isPreorder;
  v24 = [(NSNumber *)self->_itemID copyWithZone:a3];
  itemID = v5->_itemID;
  v5->_itemID = v24;

  v26 = [(NSString *)self->_itemName copyWithZone:a3];
  itemName = v5->_itemName;
  v5->_itemName = v26;

  v28 = [(NSDictionary *)self->_metricsOverlay copyWithZone:a3];
  metricsOverlay = v5->_metricsOverlay;
  v5->_metricsOverlay = v28;

  v5->_packaging = self->_packaging;
  v30 = [(NSDictionary *)self->_performanceMetricsOverlay copyWithZone:a3];
  performanceMetricsOverlay = v5->_performanceMetricsOverlay;
  v5->_performanceMetricsOverlay = v30;

  v5->_purchaseID = self->_purchaseID;
  v32 = [(NSString *)self->_presentingSceneBundleIdentifier copyWithZone:a3];
  presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
  v5->_presentingSceneBundleIdentifier = v32;

  v34 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:a3];
  presentingSceneIdentifier = v5->_presentingSceneIdentifier;
  v5->_presentingSceneIdentifier = v34;

  v36 = [(NSString *)self->_referrerName copyWithZone:a3];
  referrerName = v5->_referrerName;
  v5->_referrerName = v36;

  v38 = [(NSString *)self->_referrerURL copyWithZone:a3];
  referrerURL = v5->_referrerURL;
  v5->_referrerURL = v38;

  v5->_sendGUID = self->_sendGUID;
  v5->_softwarePlatform = self->_softwarePlatform;
  v40 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_requiredCapabilities, 1}];
  requiredCapabilities = v5->_requiredCapabilities;
  v5->_requiredCapabilities = v40;

  v5->_shouldCancelForInstalledBundleItems = self->_shouldCancelForInstalledBundleItems;
  v5->_shouldAskForRatingException = self->_shouldAskForRatingException;
  v5->_ageRatingValue = self->_ageRatingValue;
  v42 = [(NSString *)self->_vendorName copyWithZone:a3];
  vendorName = v5->_vendorName;
  v5->_vendorName = v42;

  v44 = [(NSString *)self->_preflightURLString copyWithZone:a3];
  preflightURLString = v5->_preflightURLString;
  v5->_preflightURLString = v44;

  v46 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_remoteDownloadIdentifiers, 1}];
  remoteDownloadIdentifiers = v5->_remoteDownloadIdentifiers;
  v5->_remoteDownloadIdentifiers = v46;

  objc_storeStrong(&v5->_packageOverride, self->_packageOverride);
  v5->_installUniversalVariant = self->_installUniversalVariant;
  return v5;
}

- (ASDPurchase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurchase *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"additionalHeaders"];
    additionalHeaders = v5->_additionalHeaders;
    v5->_additionalHeaders = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"affiliateIdentifier"];
    affiliateIdentifier = v5->_affiliateIdentifier;
    v5->_affiliateIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageRatingValue"];
    v5->_ageRatingValue = [v15 unsignedIntegerValue];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"appCapabilities"];
    appCapabilities = v5->_appCapabilities;
    v5->_appCapabilities = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bagKey"];
    bagKey = v5->_bagKey;
    v5->_bagKey = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"buyParameters"];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v30;

    v5->_createsJobs = [v4 decodeBoolForKey:@"createsJobs"];
    v5->_isDefaultBrowser = [v4 decodeBoolForKey:@"isDefaultBrowser"];
    v5->_displaysOnLockScreen = [v4 decodeBoolForKey:@"displaysOnLockScreen"];
    v5->_extensionsToEnable = [v4 decodeIntegerForKey:@"extensionsToEnable"];
    v5->_forceWatchInstall = [v4 decodeBoolForKey:@"forceWatchInstall"];
    v5->_forceAskToBuyReason = [v4 decodeIntegerForKey:@"forceATBReason"];
    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"gratisIdentifiers"];
    gratisIdentifiers = v5->_gratisIdentifiers;
    v5->_gratisIdentifiers = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v37;

    v5->_isBackgroundUpdate = [v4 decodeBoolForKey:@"isBackgroundUpdate"];
    v5->_isDSIDLess = [v4 decodeBoolForKey:@"isDSIDless"];
    v5->_isRedownload = [v4 decodeBoolForKey:@"isRedownload"];
    v5->_isRefresh = [v4 decodeBoolForKey:@"isRefresh"];
    v5->_isUpdate = [v4 decodeBoolForKey:@"isUpdate"];
    v5->_isPreorder = [v4 decodeBoolForKey:@"isPreorder"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v39;

    v41 = [v4 asd_decodeJSONDictionaryForKey:@"metricsOverlay"];
    metricsOverlay = v5->_metricsOverlay;
    v5->_metricsOverlay = v41;

    v5->_packaging = [v4 decodeIntegerForKey:@"packaging"];
    v43 = [v4 asd_decodeJSONDictionaryForKey:@"performanceMetricsOverlay"];
    performanceMetricsOverlay = v5->_performanceMetricsOverlay;
    v5->_performanceMetricsOverlay = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v47;

    v5->_purchaseID = [v4 decodeInt64ForKey:@"purchaseID"];
    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerName"];
    referrerName = v5->_referrerName;
    v5->_referrerName = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v51;

    v53 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"requiredCapabilities"];
    requiredCapabilities = v5->_requiredCapabilities;
    v5->_requiredCapabilities = v56;

    v5->_sendGUID = [v4 decodeBoolForKey:@"sendGUID"];
    v5->_shouldCancelForInstalledBundleItems = [v4 decodeBoolForKey:@"shouldCancelForInstalledBundleItems"];
    v5->_shouldAskForRatingException = [v4 decodeBoolForKey:@"shouldAskForRatingException"];
    v5->_softwarePlatform = [v4 decodeIntegerForKey:@"softwarePlatform"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preflightURL"];
    preflightURLString = v5->_preflightURLString;
    v5->_preflightURLString = v60;

    v5->_installUniversalVariant = [v4 decodeBoolForKey:@"installUniversalVariant"];
    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"packageOverride"];
    packageOverride = v5->_packageOverride;
    v5->_packageOverride = v62;

    v64 = MEMORY[0x1E695DFD8];
    v65 = objc_opt_class();
    v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
    v67 = [v4 decodeObjectOfClasses:v66 forKey:@"remoteDownloadIdentifiers"];
    remoteDownloadIdentifiers = v5->_remoteDownloadIdentifiers;
    v5->_remoteDownloadIdentifiers = v67;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_additionalHeaders forKey:@"additionalHeaders"];
  [v7 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ageRatingValue];
  [v7 encodeObject:v4 forKey:@"ageRatingValue"];

  [v7 encodeObject:self->_affiliateIdentifier forKey:@"affiliateIdentifier"];
  [v7 encodeObject:self->_appCapabilities forKey:@"appCapabilities"];
  [v7 encodeObject:self->_bagKey forKey:@"bagKey"];
  [v7 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v7 encodeObject:self->_buyParameters forKey:@"buyParameters"];
  [v7 encodeObject:self->_clientID forKey:@"clientID"];
  [v7 encodeBool:self->_createsJobs forKey:@"createsJobs"];
  [v7 encodeBool:self->_displaysOnLockScreen forKey:@"displaysOnLockScreen"];
  [v7 encodeInteger:self->_extensionsToEnable forKey:@"extensionsToEnable"];
  [v7 encodeBool:self->_forceWatchInstall forKey:@"forceWatchInstall"];
  [v7 encodeInteger:self->_forceAskToBuyReason forKey:@"forceATBReason"];
  [v7 encodeObject:self->_gratisIdentifiers forKey:@"gratisIdentifiers"];
  [v7 encodeBool:self->_isBackgroundUpdate forKey:@"isBackgroundUpdate"];
  [v7 encodeBool:self->_isDSIDLess forKey:@"isDSIDless"];
  [v7 encodeBool:self->_isDefaultBrowser forKey:@"isDefaultBrowser"];
  [v7 encodeBool:self->_isRedownload forKey:@"isRedownload"];
  [v7 encodeBool:self->_isRefresh forKey:@"isRefresh"];
  [v7 encodeBool:self->_isUpdate forKey:@"isUpdate"];
  [v7 encodeBool:self->_isPreorder forKey:@"isPreorder"];
  [v7 encodeObject:self->_itemID forKey:@"itemID"];
  [v7 encodeObject:self->_itemName forKey:@"itemName"];
  [v7 encodeInteger:self->_packaging forKey:@"packaging"];
  [v7 encodeObject:self->_presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];
  [v7 encodeObject:self->_presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];
  [v7 encodeInt64:self->_purchaseID forKey:@"purchaseID"];
  [v7 encodeObject:self->_referrerName forKey:@"referrerName"];
  [v7 encodeObject:self->_referrerURL forKey:@"referrerURL"];
  [v7 encodeObject:self->_remoteDownloadIdentifiers forKey:@"remoteDownloadIdentifiers"];
  [v7 encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [v7 encodeBool:self->_sendGUID forKey:@"sendGUID"];
  [v7 encodeBool:self->_shouldCancelForInstalledBundleItems forKey:@"shouldCancelForInstalledBundleItems"];
  [v7 encodeBool:self->_shouldAskForRatingException forKey:@"shouldAskForRatingException"];
  [v7 encodeInteger:self->_softwarePlatform forKey:@"softwarePlatform"];
  [v7 encodeObject:self->_vendorName forKey:@"vendorName"];
  [v7 encodeObject:self->_preflightURLString forKey:@"preflightURL"];
  [v7 encodeObject:self->_packageOverride forKey:@"packageOverride"];
  [v7 encodeBool:self->_installUniversalVariant forKey:@"installUniversalVariant"];
  metricsOverlay = self->_metricsOverlay;
  if (metricsOverlay)
  {
    [v7 asd_encodeJSONDictionary:metricsOverlay forKey:@"metricsOverlay"];
  }

  performanceMetricsOverlay = self->_performanceMetricsOverlay;
  if (performanceMetricsOverlay)
  {
    [v7 asd_encodeJSONDictionary:performanceMetricsOverlay forKey:@"performanceMetricsOverlay"];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  purchaseID = self->_purchaseID;
  v6 = [v3 stringWithFormat:@"[%@]: bundleID: %@ accountID: %@ bagKey: %@ buyParams: %@ extensionsToEnable: %lu isBackgroundUpdate: %d isRedownload: %d isUpdate: %d isPreorder: %d itemID: %@ itemName: %@ purchaseID: %lld vendorName: %@ softwarePlatform: %ld remoteDownloadIdentifiers: %@", v4, self->_bundleID, self->_accountIdentifier, self->_bagKey, self->_buyParameters, self->_extensionsToEnable, self->_isBackgroundUpdate, self->_isRedownload, self->_isUpdate, self->_isPreorder, self->_itemID, self->_itemName, purchaseID, self->_vendorName, self->_softwarePlatform, self->_remoteDownloadIdentifiers];
  v7 = v6;
  if (self->_forceAskToBuyReason)
  {
    v8 = [v6 stringByAppendingFormat:@" forceATBReason: %ld", self->_forceAskToBuyReason];

    v7 = v8;
  }

  v9 = [v7 stringByAppendingString:@"]"];

  return v9;
}

@end