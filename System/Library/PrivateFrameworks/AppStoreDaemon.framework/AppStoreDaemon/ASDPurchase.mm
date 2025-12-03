@interface ASDPurchase
- (ASDPurchase)init;
- (ASDPurchase)initWithCoder:(id)coder;
- (NSString)buyParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstValueForBuyParameter:(id)parameter;
- (void)appendValue:(id)value forBuyParameter:(id)parameter;
- (void)encodeWithCoder:(id)coder;
- (void)setBuyParameters:(id)parameters;
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
    percentEncodedQuery = [v3 percentEncodedQuery];
  }

  else
  {
    percentEncodedQuery = 0;
  }

  return percentEncodedQuery;
}

- (void)setBuyParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parametersCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [(NSArray *)v4 setPercentEncodedQuery:parametersCopy];
    queryItems = [(NSArray *)v4 queryItems];
    buyParameters = self->_buyParameters;
    self->_buyParameters = queryItems;
  }

  else
  {
    v4 = self->_buyParameters;
    self->_buyParameters = 0;
  }
}

- (void)appendValue:(id)value forBuyParameter:(id)parameter
{
  v6 = MEMORY[0x1E696AF60];
  parameterCopy = parameter;
  valueCopy = value;
  v12 = [[v6 alloc] initWithName:parameterCopy value:valueCopy];

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

- (id)firstValueForBuyParameter:(id)parameter
{
  v19 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_buyParameters;
  value = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:parameterCopy];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDPurchase allocWithZone:](ASDPurchase init];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSDictionary *)self->_additionalHeaders copyWithZone:zone];
  additionalHeaders = v5->_additionalHeaders;
  v5->_additionalHeaders = v8;

  v10 = [(NSString *)self->_affiliateIdentifier copyWithZone:zone];
  affiliateIdentifier = v5->_affiliateIdentifier;
  v5->_affiliateIdentifier = v10;

  v12 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{zone), "initWithArray:copyItems:", self->_appCapabilities, 1}];
  appCapabilities = v5->_appCapabilities;
  v5->_appCapabilities = v12;

  v14 = [(NSString *)self->_bagKey copyWithZone:zone];
  bagKey = v5->_bagKey;
  v5->_bagKey = v14;

  v16 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v16;

  v18 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{zone), "initWithArray:copyItems:", self->_buyParameters, 1}];
  buyParameters = v5->_buyParameters;
  v5->_buyParameters = v18;

  v20 = [(NSString *)self->_clientID copyWithZone:zone];
  clientID = v5->_clientID;
  v5->_clientID = v20;

  v5->_createsJobs = self->_createsJobs;
  v5->_isDefaultBrowser = self->_isDefaultBrowser;
  v5->_displaysOnLockScreen = self->_displaysOnLockScreen;
  v5->_extensionsToEnable = self->_extensionsToEnable;
  v5->_forceWatchInstall = self->_forceWatchInstall;
  v5->_forceAskToBuyReason = self->_forceAskToBuyReason;
  v22 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{zone), "initWithArray:copyItems:", self->_gratisIdentifiers, 1}];
  gratisIdentifiers = v5->_gratisIdentifiers;
  v5->_gratisIdentifiers = v22;

  v5->_isBackgroundUpdate = self->_isBackgroundUpdate;
  v5->_isDSIDLess = self->_isDSIDLess;
  v5->_isRedownload = self->_isRedownload;
  v5->_isRefresh = self->_isRefresh;
  v5->_isUpdate = self->_isUpdate;
  v5->_isPreorder = self->_isPreorder;
  v24 = [(NSNumber *)self->_itemID copyWithZone:zone];
  itemID = v5->_itemID;
  v5->_itemID = v24;

  v26 = [(NSString *)self->_itemName copyWithZone:zone];
  itemName = v5->_itemName;
  v5->_itemName = v26;

  v28 = [(NSDictionary *)self->_metricsOverlay copyWithZone:zone];
  metricsOverlay = v5->_metricsOverlay;
  v5->_metricsOverlay = v28;

  v5->_packaging = self->_packaging;
  v30 = [(NSDictionary *)self->_performanceMetricsOverlay copyWithZone:zone];
  performanceMetricsOverlay = v5->_performanceMetricsOverlay;
  v5->_performanceMetricsOverlay = v30;

  v5->_purchaseID = self->_purchaseID;
  v32 = [(NSString *)self->_presentingSceneBundleIdentifier copyWithZone:zone];
  presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
  v5->_presentingSceneBundleIdentifier = v32;

  v34 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:zone];
  presentingSceneIdentifier = v5->_presentingSceneIdentifier;
  v5->_presentingSceneIdentifier = v34;

  v36 = [(NSString *)self->_referrerName copyWithZone:zone];
  referrerName = v5->_referrerName;
  v5->_referrerName = v36;

  v38 = [(NSString *)self->_referrerURL copyWithZone:zone];
  referrerURL = v5->_referrerURL;
  v5->_referrerURL = v38;

  v5->_sendGUID = self->_sendGUID;
  v5->_softwarePlatform = self->_softwarePlatform;
  v40 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{zone), "initWithArray:copyItems:", self->_requiredCapabilities, 1}];
  requiredCapabilities = v5->_requiredCapabilities;
  v5->_requiredCapabilities = v40;

  v5->_shouldCancelForInstalledBundleItems = self->_shouldCancelForInstalledBundleItems;
  v5->_shouldAskForRatingException = self->_shouldAskForRatingException;
  v5->_ageRatingValue = self->_ageRatingValue;
  v42 = [(NSString *)self->_vendorName copyWithZone:zone];
  vendorName = v5->_vendorName;
  v5->_vendorName = v42;

  v44 = [(NSString *)self->_preflightURLString copyWithZone:zone];
  preflightURLString = v5->_preflightURLString;
  v5->_preflightURLString = v44;

  v46 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{zone), "initWithArray:copyItems:", self->_remoteDownloadIdentifiers, 1}];
  remoteDownloadIdentifiers = v5->_remoteDownloadIdentifiers;
  v5->_remoteDownloadIdentifiers = v46;

  objc_storeStrong(&v5->_packageOverride, self->_packageOverride);
  v5->_installUniversalVariant = self->_installUniversalVariant;
  return v5;
}

- (ASDPurchase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDPurchase *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"additionalHeaders"];
    additionalHeaders = v5->_additionalHeaders;
    v5->_additionalHeaders = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"affiliateIdentifier"];
    affiliateIdentifier = v5->_affiliateIdentifier;
    v5->_affiliateIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageRatingValue"];
    v5->_ageRatingValue = [v15 unsignedIntegerValue];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"appCapabilities"];
    appCapabilities = v5->_appCapabilities;
    v5->_appCapabilities = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bagKey"];
    bagKey = v5->_bagKey;
    v5->_bagKey = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"buyParameters"];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v30;

    v5->_createsJobs = [coderCopy decodeBoolForKey:@"createsJobs"];
    v5->_isDefaultBrowser = [coderCopy decodeBoolForKey:@"isDefaultBrowser"];
    v5->_displaysOnLockScreen = [coderCopy decodeBoolForKey:@"displaysOnLockScreen"];
    v5->_extensionsToEnable = [coderCopy decodeIntegerForKey:@"extensionsToEnable"];
    v5->_forceWatchInstall = [coderCopy decodeBoolForKey:@"forceWatchInstall"];
    v5->_forceAskToBuyReason = [coderCopy decodeIntegerForKey:@"forceATBReason"];
    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"gratisIdentifiers"];
    gratisIdentifiers = v5->_gratisIdentifiers;
    v5->_gratisIdentifiers = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v37;

    v5->_isBackgroundUpdate = [coderCopy decodeBoolForKey:@"isBackgroundUpdate"];
    v5->_isDSIDLess = [coderCopy decodeBoolForKey:@"isDSIDless"];
    v5->_isRedownload = [coderCopy decodeBoolForKey:@"isRedownload"];
    v5->_isRefresh = [coderCopy decodeBoolForKey:@"isRefresh"];
    v5->_isUpdate = [coderCopy decodeBoolForKey:@"isUpdate"];
    v5->_isPreorder = [coderCopy decodeBoolForKey:@"isPreorder"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v39;

    v41 = [coderCopy asd_decodeJSONDictionaryForKey:@"metricsOverlay"];
    metricsOverlay = v5->_metricsOverlay;
    v5->_metricsOverlay = v41;

    v5->_packaging = [coderCopy decodeIntegerForKey:@"packaging"];
    v43 = [coderCopy asd_decodeJSONDictionaryForKey:@"performanceMetricsOverlay"];
    performanceMetricsOverlay = v5->_performanceMetricsOverlay;
    v5->_performanceMetricsOverlay = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v47;

    v5->_purchaseID = [coderCopy decodeInt64ForKey:@"purchaseID"];
    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerName"];
    referrerName = v5->_referrerName;
    v5->_referrerName = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v51;

    v53 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"requiredCapabilities"];
    requiredCapabilities = v5->_requiredCapabilities;
    v5->_requiredCapabilities = v56;

    v5->_sendGUID = [coderCopy decodeBoolForKey:@"sendGUID"];
    v5->_shouldCancelForInstalledBundleItems = [coderCopy decodeBoolForKey:@"shouldCancelForInstalledBundleItems"];
    v5->_shouldAskForRatingException = [coderCopy decodeBoolForKey:@"shouldAskForRatingException"];
    v5->_softwarePlatform = [coderCopy decodeIntegerForKey:@"softwarePlatform"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preflightURL"];
    preflightURLString = v5->_preflightURLString;
    v5->_preflightURLString = v60;

    v5->_installUniversalVariant = [coderCopy decodeBoolForKey:@"installUniversalVariant"];
    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"packageOverride"];
    packageOverride = v5->_packageOverride;
    v5->_packageOverride = v62;

    v64 = MEMORY[0x1E695DFD8];
    v65 = objc_opt_class();
    v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"remoteDownloadIdentifiers"];
    remoteDownloadIdentifiers = v5->_remoteDownloadIdentifiers;
    v5->_remoteDownloadIdentifiers = v67;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_additionalHeaders forKey:@"additionalHeaders"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ageRatingValue];
  [coderCopy encodeObject:v4 forKey:@"ageRatingValue"];

  [coderCopy encodeObject:self->_affiliateIdentifier forKey:@"affiliateIdentifier"];
  [coderCopy encodeObject:self->_appCapabilities forKey:@"appCapabilities"];
  [coderCopy encodeObject:self->_bagKey forKey:@"bagKey"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_buyParameters forKey:@"buyParameters"];
  [coderCopy encodeObject:self->_clientID forKey:@"clientID"];
  [coderCopy encodeBool:self->_createsJobs forKey:@"createsJobs"];
  [coderCopy encodeBool:self->_displaysOnLockScreen forKey:@"displaysOnLockScreen"];
  [coderCopy encodeInteger:self->_extensionsToEnable forKey:@"extensionsToEnable"];
  [coderCopy encodeBool:self->_forceWatchInstall forKey:@"forceWatchInstall"];
  [coderCopy encodeInteger:self->_forceAskToBuyReason forKey:@"forceATBReason"];
  [coderCopy encodeObject:self->_gratisIdentifiers forKey:@"gratisIdentifiers"];
  [coderCopy encodeBool:self->_isBackgroundUpdate forKey:@"isBackgroundUpdate"];
  [coderCopy encodeBool:self->_isDSIDLess forKey:@"isDSIDless"];
  [coderCopy encodeBool:self->_isDefaultBrowser forKey:@"isDefaultBrowser"];
  [coderCopy encodeBool:self->_isRedownload forKey:@"isRedownload"];
  [coderCopy encodeBool:self->_isRefresh forKey:@"isRefresh"];
  [coderCopy encodeBool:self->_isUpdate forKey:@"isUpdate"];
  [coderCopy encodeBool:self->_isPreorder forKey:@"isPreorder"];
  [coderCopy encodeObject:self->_itemID forKey:@"itemID"];
  [coderCopy encodeObject:self->_itemName forKey:@"itemName"];
  [coderCopy encodeInteger:self->_packaging forKey:@"packaging"];
  [coderCopy encodeObject:self->_presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];
  [coderCopy encodeObject:self->_presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];
  [coderCopy encodeInt64:self->_purchaseID forKey:@"purchaseID"];
  [coderCopy encodeObject:self->_referrerName forKey:@"referrerName"];
  [coderCopy encodeObject:self->_referrerURL forKey:@"referrerURL"];
  [coderCopy encodeObject:self->_remoteDownloadIdentifiers forKey:@"remoteDownloadIdentifiers"];
  [coderCopy encodeObject:self->_requiredCapabilities forKey:@"requiredCapabilities"];
  [coderCopy encodeBool:self->_sendGUID forKey:@"sendGUID"];
  [coderCopy encodeBool:self->_shouldCancelForInstalledBundleItems forKey:@"shouldCancelForInstalledBundleItems"];
  [coderCopy encodeBool:self->_shouldAskForRatingException forKey:@"shouldAskForRatingException"];
  [coderCopy encodeInteger:self->_softwarePlatform forKey:@"softwarePlatform"];
  [coderCopy encodeObject:self->_vendorName forKey:@"vendorName"];
  [coderCopy encodeObject:self->_preflightURLString forKey:@"preflightURL"];
  [coderCopy encodeObject:self->_packageOverride forKey:@"packageOverride"];
  [coderCopy encodeBool:self->_installUniversalVariant forKey:@"installUniversalVariant"];
  metricsOverlay = self->_metricsOverlay;
  if (metricsOverlay)
  {
    [coderCopy asd_encodeJSONDictionary:metricsOverlay forKey:@"metricsOverlay"];
  }

  performanceMetricsOverlay = self->_performanceMetricsOverlay;
  if (performanceMetricsOverlay)
  {
    [coderCopy asd_encodeJSONDictionary:performanceMetricsOverlay forKey:@"performanceMetricsOverlay"];
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