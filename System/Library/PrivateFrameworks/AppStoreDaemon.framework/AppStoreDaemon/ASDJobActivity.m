@interface ASDJobActivity
- (ASDJobActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPersistentID:(uint64_t)a1;
@end

@implementation ASDJobActivity

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJobActivity allocWithZone:](ASDJobActivity init];
  v6 = [(NSData *)self->_appReceiptData copyWithZone:a3];
  appReceiptData = v5->_appReceiptData;
  v5->_appReceiptData = v6;

  v8 = [(NSNumber *)self->_artistID copyWithZone:a3];
  artistID = v5->_artistID;
  v5->_artistID = v8;

  v10 = [(NSString *)self->_artistName copyWithZone:a3];
  artistName = v5->_artistName;
  v5->_artistName = v10;

  v12 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "initWithArray:copyItems:", self->_assets, 1}];
  assets = v5->_assets;
  v5->_assets = v12;

  v14 = [(NSNumber *)self->_betaExternalVersionIdentifier copyWithZone:a3];
  betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
  v5->_betaExternalVersionIdentifier = v14;

  v16 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v16;

  v18 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v18;

  v20 = [(NSString *)self->_buyParams copyWithZone:a3];
  buyParams = v5->_buyParams;
  v5->_buyParams = v20;

  v22 = [(NSString *)self->_cancelDownloadURL copyWithZone:a3];
  cancelDownloadURL = v5->_cancelDownloadURL;
  v5->_cancelDownloadURL = v22;

  v5->_cancelIfDuplicate = self->_cancelIfDuplicate;
  v24 = [(NSString *)self->_clientID copyWithZone:a3];
  clientID = v5->_clientID;
  v5->_clientID = v24;

  v26 = [(NSString *)self->_collectionName copyWithZone:a3];
  collectionName = v5->_collectionName;
  v5->_collectionName = v26;

  v28 = [(NSNumber *)self->_divertedTrackingID copyWithZone:a3];
  divertedTrackingID = v5->_divertedTrackingID;
  v5->_divertedTrackingID = v28;

  v30 = [(NSNumber *)self->_enableExtensions copyWithZone:a3];
  enableExtensions = v5->_enableExtensions;
  v5->_enableExtensions = v30;

  v5->_explicitContent = self->_explicitContent;
  objc_storeStrong(&v5->_externalOrderKey, self->_externalOrderKey);
  v32 = [(NSString *)self->_genre copyWithZone:a3];
  genre = v5->_genre;
  v5->_genre = v32;

  v34 = [(NSNumber *)self->_genreID copyWithZone:a3];
  genreID = v5->_genreID;
  v5->_genreID = v34;

  v5->_hasMessagesExtension = self->_hasMessagesExtension;
  v5->_hasWatchApp = self->_hasWatchApp;
  v36 = [(NSNumber *)self->_iAdAttribution copyWithZone:a3];
  iAdAttribution = v5->_iAdAttribution;
  v5->_iAdAttribution = v36;

  v38 = [(NSDate *)self->_iAdConversionDate copyWithZone:a3];
  iAdConversionDate = v5->_iAdConversionDate;
  v5->_iAdConversionDate = v38;

  v40 = [(NSDate *)self->_iAdImpressionDate copyWithZone:a3];
  iAdImpressionDate = v5->_iAdImpressionDate;
  v5->_iAdImpressionDate = v40;

  v5->_isAutomatic = self->_isAutomatic;
  v5->_isCompatibilityUpdate = self->_isCompatibilityUpdate;
  v5->_isDeviceBasedVPP = self->_isDeviceBasedVPP;
  v5->_isFromStore = self->_isFromStore;
  v5->_isGameCenterEnabled = self->_isGameCenterEnabled;
  v5->_isInQueue = self->_isInQueue;
  v5->_isPendingApproval = self->_isPendingApproval;
  v5->_isPurchasedRedownload = self->_isPurchasedRedownload;
  v5->_isRestore = self->_isRestore;
  v5->_isShared = self->_isShared;
  v5->_isTVTemplate = self->_isTVTemplate;
  v5->_isUpdate = self->_isUpdate;
  v42 = [(NSNumber *)self->_itemID copyWithZone:a3];
  itemID = v5->_itemID;
  v5->_itemID = v42;

  v44 = [(NSString *)self->_kind copyWithZone:a3];
  kind = v5->_kind;
  v5->_kind = v44;

  v5->_launchProhibited = self->_launchProhibited;
  v46 = [(NSString *)self->_messagesArtworkURL copyWithZone:a3];
  messagesArtworkURL = v5->_messagesArtworkURL;
  v5->_messagesArtworkURL = v46;

  v48 = [(NSNumber *)self->_persistentID copyWithZone:a3];
  persistentID = v5->_persistentID;
  v5->_persistentID = v48;

  v50 = [(NSDate *)self->_purchaseDate copyWithZone:a3];
  purchaseDate = v5->_purchaseDate;
  v5->_purchaseDate = v50;

  v52 = [(NSNumber *)self->_purchaseID copyWithZone:a3];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v52;

  v54 = [(NSString *)self->_ratingLabel copyWithZone:a3];
  ratingLabel = v5->_ratingLabel;
  v5->_ratingLabel = v54;

  v56 = [(NSNumber *)self->_ratingRank copyWithZone:a3];
  ratingRank = v5->_ratingRank;
  v5->_ratingRank = v56;

  v58 = [(NSDate *)self->_releaseDate copyWithZone:a3];
  releaseDate = v5->_releaseDate;
  v5->_releaseDate = v58;

  v5->_softwareIconNeedsShine = self->_softwareIconNeedsShine;
  v60 = [(NSNumber *)self->_softwareVersionExternalIdentifier copyWithZone:a3];
  softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
  v5->_softwareVersionExternalIdentifier = v60;

  v62 = [(NSNumber *)self->_storeAccountID copyWithZone:a3];
  storeAccountID = v5->_storeAccountID;
  v5->_storeAccountID = v62;

  v64 = [(NSString *)self->_storeAccountName copyWithZone:a3];
  storeAccountName = v5->_storeAccountName;
  v5->_storeAccountName = v64;

  v66 = [(NSString *)self->_storeCohort copyWithZone:a3];
  storeCohort = v5->_storeCohort;
  v5->_storeCohort = v66;

  v68 = [(NSDictionary *)self->_storeDownloadInfo copyWithZone:a3];
  storeDownloadInfo = v5->_storeDownloadInfo;
  v5->_storeDownloadInfo = v68;

  v70 = [(NSString *)self->_storeDownloadKey copyWithZone:a3];
  storeDownloadKey = v5->_storeDownloadKey;
  v5->_storeDownloadKey = v70;

  v72 = [(NSString *)self->_storefront copyWithZone:a3];
  storefront = v5->_storefront;
  v5->_storefront = v72;

  v74 = [(NSString *)self->_storeTransactionID copyWithZone:a3];
  storeTransactionID = v5->_storeTransactionID;
  v5->_storeTransactionID = v74;

  v5->_thirtyTwoBitOnly = self->_thirtyTwoBitOnly;
  v76 = [(NSString *)self->_thumbnailURL copyWithZone:a3];
  thumbnailURL = v5->_thumbnailURL;
  v5->_thumbnailURL = v76;

  v78 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v78;

  v80 = [(NSString *)self->_variantID copyWithZone:a3];
  variantID = v5->_variantID;
  v5->_variantID = v80;

  return v5;
}

- (ASDJobActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v93.receiver = self;
  v93.super_class = ASDJobActivity;
  v5 = [(ASDJobActivity *)&v93 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appReceipt"];
    appReceiptData = v5->_appReceiptData;
    v5->_appReceiptData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artistID"];
    artistID = v5->_artistID;
    v5->_artistID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v5->_artistName;
    v5->_artistName = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelDownloadURL"];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = v25;

    v5->_cancelIfDuplicate = [v4 decodeBoolForKey:@"cancelIfDuplicate"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionName"];
    collectionName = v5->_collectionName;
    v5->_collectionName = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"divertedTrackingID"];
    divertedTrackingID = v5->_divertedTrackingID;
    v5->_divertedTrackingID = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enableExtensions"];
    enableExtensions = v5->_enableExtensions;
    v5->_enableExtensions = v33;

    v5->_explicitContent = [v4 decodeBoolForKey:@"explicitContent"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalOrderKey"];
    externalOrderKey = v5->_externalOrderKey;
    v5->_externalOrderKey = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v39;

    v5->_hasMessagesExtension = [v4 decodeBoolForKey:@"hasMessagesExtension"];
    v5->_hasWatchApp = [v4 decodeBoolForKey:@"hasWatchApp"];
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdAttribution"];
    iAdAttribution = v5->_iAdAttribution;
    v5->_iAdAttribution = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdConversionDate"];
    iAdConversionDate = v5->_iAdConversionDate;
    v5->_iAdConversionDate = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdImpressionDate"];
    iAdImpressionDate = v5->_iAdImpressionDate;
    v5->_iAdImpressionDate = v45;

    v5->_isAutomatic = [v4 decodeBoolForKey:@"isAutomatic"];
    v5->_isCompatibilityUpdate = [v4 decodeBoolForKey:@"isCompatibilityUpdate"];
    v5->_isDeviceBasedVPP = [v4 decodeBoolForKey:@"isDeviceBasedVPP"];
    v5->_isFromStore = [v4 decodeBoolForKey:@"isFromStore"];
    v5->_isGameCenterEnabled = [v4 decodeBoolForKey:@"isGameCenterEnabled"];
    v5->_isInQueue = [v4 decodeBoolForKey:@"isInQueue"];
    v5->_isPendingApproval = [v4 decodeBoolForKey:@"isPendingApproval"];
    v5->_isPurchasedRedownload = [v4 decodeBoolForKey:@"isPurchasedRedownload"];
    v5->_isRestore = [v4 decodeBoolForKey:@"isRestore"];
    v5->_isShared = [v4 decodeBoolForKey:@"isShared"];
    v5->_isTVTemplate = [v4 decodeBoolForKey:@"isTVTemplate"];
    v5->_isUpdate = [v4 decodeBoolForKey:@"isUpdate"];
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v49;

    v5->_launchProhibited = [v4 decodeBoolForKey:@"launchProhibited"];
    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagesArtworkURL"];
    messagesArtworkURL = v5->_messagesArtworkURL;
    v5->_messagesArtworkURL = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseDate"];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseID"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v5->_ratingLabel;
    v5->_ratingLabel = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingRank"];
    ratingRank = v5->_ratingRank;
    v5->_ratingRank = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v63;

    v5->_softwareIconNeedsShine = [v4 decodeBoolForKey:@"softwareIconNeedsShine"];
    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeAccountID"];
    storeAccountID = v5->_storeAccountID;
    v5->_storeAccountID = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeAccountName"];
    storeAccountName = v5->_storeAccountName;
    v5->_storeAccountName = v67;

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v73 = [v69 setWithObjects:{v70, v71, v72, objc_opt_class(), 0}];
    v74 = [v4 decodeObjectOfClasses:v73 forKey:@"storeDownloadInfo"];
    storeDownloadInfo = v5->_storeDownloadInfo;
    v5->_storeDownloadInfo = v74;

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionExternalIdentifier"];
    softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
    v5->_softwareVersionExternalIdentifier = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeDownloadKey"];
    storeDownloadKey = v5->_storeDownloadKey;
    v5->_storeDownloadKey = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeTransactionID"];
    storeTransactionID = v5->_storeTransactionID;
    v5->_storeTransactionID = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v5->_storeCohort;
    v5->_storeCohort = v84;

    v5->_thirtyTwoBitOnly = [v4 decodeBoolForKey:@"thirtyTwoBitOnly"];
    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v86;

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v90;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  appReceiptData = self->_appReceiptData;
  v5 = a3;
  [v5 encodeObject:appReceiptData forKey:@"appReceipt"];
  [v5 encodeObject:self->_artistID forKey:@"artistID"];
  [v5 encodeObject:self->_artistName forKey:@"artistName"];
  [v5 encodeObject:self->_assets forKey:@"assets"];
  [v5 encodeObject:self->_betaExternalVersionIdentifier forKey:@"betaExternalVersionIdentifier"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [v5 encodeObject:self->_buyParams forKey:@"buyParams"];
  [v5 encodeObject:self->_cancelDownloadURL forKey:@"cancelDownloadURL"];
  [v5 encodeBool:self->_cancelIfDuplicate forKey:@"cancelIfDuplicate"];
  [v5 encodeObject:self->_clientID forKey:@"clientID"];
  [v5 encodeObject:self->_collectionName forKey:@"collectionName"];
  [v5 encodeObject:self->_divertedTrackingID forKey:@"divertedTrackingID"];
  [v5 encodeObject:self->_enableExtensions forKey:@"enableExtensions"];
  [v5 encodeBool:self->_explicitContent forKey:@"explicitContent"];
  [v5 encodeObject:self->_externalOrderKey forKey:@"externalOrderKey"];
  [v5 encodeObject:self->_genre forKey:@"genre"];
  [v5 encodeObject:self->_genreID forKey:@"genreID"];
  [v5 encodeBool:self->_hasMessagesExtension forKey:@"hasMessagesExtension"];
  [v5 encodeBool:self->_hasWatchApp forKey:@"hasWatchApp"];
  [v5 encodeObject:self->_iAdAttribution forKey:@"iAdAttribution"];
  [v5 encodeObject:self->_iAdConversionDate forKey:@"iAdConversionDate"];
  [v5 encodeObject:self->_iAdImpressionDate forKey:@"iAdImpressionDate"];
  [v5 encodeBool:self->_isAutomatic forKey:@"isAutomatic"];
  [v5 encodeBool:self->_isCompatibilityUpdate forKey:@"isCompatibilityUpdate"];
  [v5 encodeBool:self->_isDeviceBasedVPP forKey:@"isDeviceBasedVPP"];
  [v5 encodeBool:self->_isFromStore forKey:@"isFromStore"];
  [v5 encodeBool:self->_isGameCenterEnabled forKey:@"isGameCenterEnabled"];
  [v5 encodeBool:self->_isInQueue forKey:@"isInQueue"];
  [v5 encodeBool:self->_isPendingApproval forKey:@"isPendingApproval"];
  [v5 encodeBool:self->_isPurchasedRedownload forKey:@"isPurchasedRedownload"];
  [v5 encodeBool:self->_isRestore forKey:@"isRestore"];
  [v5 encodeBool:self->_isShared forKey:@"isShared"];
  [v5 encodeBool:self->_isTVTemplate forKey:@"isDeviceBasedVPP"];
  [v5 encodeBool:self->_isUpdate forKey:@"isUpdate"];
  [v5 encodeObject:self->_itemID forKey:@"itemID"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  [v5 encodeBool:self->_launchProhibited forKey:@"launchProhibited"];
  [v5 encodeObject:self->_messagesArtworkURL forKey:@"messagesArtworkURL"];
  [v5 encodeObject:self->_persistentID forKey:@"persistentID"];
  [v5 encodeObject:self->_purchaseDate forKey:@"purchaseDate"];
  [v5 encodeObject:self->_purchaseID forKey:@"purchaseID"];
  [v5 encodeObject:self->_ratingLabel forKey:@"ratingLabel"];
  [v5 encodeObject:self->_ratingRank forKey:@"ratingRank"];
  [v5 encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [v5 encodeBool:self->_softwareIconNeedsShine forKey:@"softwareIconNeedsShine"];
  [v5 encodeObject:self->_softwareVersionExternalIdentifier forKey:@"softwareVersionExternalIdentifier"];
  [v5 encodeObject:self->_storeAccountID forKey:@"storeAccountID"];
  [v5 encodeObject:self->_storeAccountName forKey:@"storeAccountName"];
  [v5 encodeObject:self->_storeCohort forKey:@"storeCohort"];
  [v5 encodeObject:self->_storeDownloadInfo forKey:@"storeDownloadInfo"];
  [v5 encodeObject:self->_storeDownloadKey forKey:@"storeDownloadKey"];
  [v5 encodeObject:self->_storefront forKey:@"storefront"];
  [v5 encodeObject:self->_storeTransactionID forKey:@"storeTransactionID"];
  [v5 encodeBool:self->_thirtyTwoBitOnly forKey:@"thirtyTwoBitOnly"];
  [v5 encodeObject:self->_thumbnailURL forKey:@"thumbnailURL"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_variantID forKey:@"variantID"];
}

- (void)setPersistentID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 344), a2);
  }
}

@end