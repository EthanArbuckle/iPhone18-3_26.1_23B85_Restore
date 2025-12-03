@interface ASDJobActivity
- (ASDJobActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setPersistentID:(uint64_t)d;
@end

@implementation ASDJobActivity

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJobActivity allocWithZone:](ASDJobActivity init];
  v6 = [(NSData *)self->_appReceiptData copyWithZone:zone];
  appReceiptData = v5->_appReceiptData;
  v5->_appReceiptData = v6;

  v8 = [(NSNumber *)self->_artistID copyWithZone:zone];
  artistID = v5->_artistID;
  v5->_artistID = v8;

  v10 = [(NSString *)self->_artistName copyWithZone:zone];
  artistName = v5->_artistName;
  v5->_artistName = v10;

  v12 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "initWithArray:copyItems:", self->_assets, 1}];
  assets = v5->_assets;
  v5->_assets = v12;

  v14 = [(NSNumber *)self->_betaExternalVersionIdentifier copyWithZone:zone];
  betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
  v5->_betaExternalVersionIdentifier = v14;

  v16 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v16;

  v18 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v18;

  v20 = [(NSString *)self->_buyParams copyWithZone:zone];
  buyParams = v5->_buyParams;
  v5->_buyParams = v20;

  v22 = [(NSString *)self->_cancelDownloadURL copyWithZone:zone];
  cancelDownloadURL = v5->_cancelDownloadURL;
  v5->_cancelDownloadURL = v22;

  v5->_cancelIfDuplicate = self->_cancelIfDuplicate;
  v24 = [(NSString *)self->_clientID copyWithZone:zone];
  clientID = v5->_clientID;
  v5->_clientID = v24;

  v26 = [(NSString *)self->_collectionName copyWithZone:zone];
  collectionName = v5->_collectionName;
  v5->_collectionName = v26;

  v28 = [(NSNumber *)self->_divertedTrackingID copyWithZone:zone];
  divertedTrackingID = v5->_divertedTrackingID;
  v5->_divertedTrackingID = v28;

  v30 = [(NSNumber *)self->_enableExtensions copyWithZone:zone];
  enableExtensions = v5->_enableExtensions;
  v5->_enableExtensions = v30;

  v5->_explicitContent = self->_explicitContent;
  objc_storeStrong(&v5->_externalOrderKey, self->_externalOrderKey);
  v32 = [(NSString *)self->_genre copyWithZone:zone];
  genre = v5->_genre;
  v5->_genre = v32;

  v34 = [(NSNumber *)self->_genreID copyWithZone:zone];
  genreID = v5->_genreID;
  v5->_genreID = v34;

  v5->_hasMessagesExtension = self->_hasMessagesExtension;
  v5->_hasWatchApp = self->_hasWatchApp;
  v36 = [(NSNumber *)self->_iAdAttribution copyWithZone:zone];
  iAdAttribution = v5->_iAdAttribution;
  v5->_iAdAttribution = v36;

  v38 = [(NSDate *)self->_iAdConversionDate copyWithZone:zone];
  iAdConversionDate = v5->_iAdConversionDate;
  v5->_iAdConversionDate = v38;

  v40 = [(NSDate *)self->_iAdImpressionDate copyWithZone:zone];
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
  v42 = [(NSNumber *)self->_itemID copyWithZone:zone];
  itemID = v5->_itemID;
  v5->_itemID = v42;

  v44 = [(NSString *)self->_kind copyWithZone:zone];
  kind = v5->_kind;
  v5->_kind = v44;

  v5->_launchProhibited = self->_launchProhibited;
  v46 = [(NSString *)self->_messagesArtworkURL copyWithZone:zone];
  messagesArtworkURL = v5->_messagesArtworkURL;
  v5->_messagesArtworkURL = v46;

  v48 = [(NSNumber *)self->_persistentID copyWithZone:zone];
  persistentID = v5->_persistentID;
  v5->_persistentID = v48;

  v50 = [(NSDate *)self->_purchaseDate copyWithZone:zone];
  purchaseDate = v5->_purchaseDate;
  v5->_purchaseDate = v50;

  v52 = [(NSNumber *)self->_purchaseID copyWithZone:zone];
  purchaseID = v5->_purchaseID;
  v5->_purchaseID = v52;

  v54 = [(NSString *)self->_ratingLabel copyWithZone:zone];
  ratingLabel = v5->_ratingLabel;
  v5->_ratingLabel = v54;

  v56 = [(NSNumber *)self->_ratingRank copyWithZone:zone];
  ratingRank = v5->_ratingRank;
  v5->_ratingRank = v56;

  v58 = [(NSDate *)self->_releaseDate copyWithZone:zone];
  releaseDate = v5->_releaseDate;
  v5->_releaseDate = v58;

  v5->_softwareIconNeedsShine = self->_softwareIconNeedsShine;
  v60 = [(NSNumber *)self->_softwareVersionExternalIdentifier copyWithZone:zone];
  softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
  v5->_softwareVersionExternalIdentifier = v60;

  v62 = [(NSNumber *)self->_storeAccountID copyWithZone:zone];
  storeAccountID = v5->_storeAccountID;
  v5->_storeAccountID = v62;

  v64 = [(NSString *)self->_storeAccountName copyWithZone:zone];
  storeAccountName = v5->_storeAccountName;
  v5->_storeAccountName = v64;

  v66 = [(NSString *)self->_storeCohort copyWithZone:zone];
  storeCohort = v5->_storeCohort;
  v5->_storeCohort = v66;

  v68 = [(NSDictionary *)self->_storeDownloadInfo copyWithZone:zone];
  storeDownloadInfo = v5->_storeDownloadInfo;
  v5->_storeDownloadInfo = v68;

  v70 = [(NSString *)self->_storeDownloadKey copyWithZone:zone];
  storeDownloadKey = v5->_storeDownloadKey;
  v5->_storeDownloadKey = v70;

  v72 = [(NSString *)self->_storefront copyWithZone:zone];
  storefront = v5->_storefront;
  v5->_storefront = v72;

  v74 = [(NSString *)self->_storeTransactionID copyWithZone:zone];
  storeTransactionID = v5->_storeTransactionID;
  v5->_storeTransactionID = v74;

  v5->_thirtyTwoBitOnly = self->_thirtyTwoBitOnly;
  v76 = [(NSString *)self->_thumbnailURL copyWithZone:zone];
  thumbnailURL = v5->_thumbnailURL;
  v5->_thumbnailURL = v76;

  v78 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v78;

  v80 = [(NSString *)self->_variantID copyWithZone:zone];
  variantID = v5->_variantID;
  v5->_variantID = v80;

  return v5;
}

- (ASDJobActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v93.receiver = self;
  v93.super_class = ASDJobActivity;
  v5 = [(ASDJobActivity *)&v93 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appReceipt"];
    appReceiptData = v5->_appReceiptData;
    v5->_appReceiptData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artistID"];
    artistID = v5->_artistID;
    v5->_artistID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v5->_artistName;
    v5->_artistName = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelDownloadURL"];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = v25;

    v5->_cancelIfDuplicate = [coderCopy decodeBoolForKey:@"cancelIfDuplicate"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionName"];
    collectionName = v5->_collectionName;
    v5->_collectionName = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"divertedTrackingID"];
    divertedTrackingID = v5->_divertedTrackingID;
    v5->_divertedTrackingID = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enableExtensions"];
    enableExtensions = v5->_enableExtensions;
    v5->_enableExtensions = v33;

    v5->_explicitContent = [coderCopy decodeBoolForKey:@"explicitContent"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalOrderKey"];
    externalOrderKey = v5->_externalOrderKey;
    v5->_externalOrderKey = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v39;

    v5->_hasMessagesExtension = [coderCopy decodeBoolForKey:@"hasMessagesExtension"];
    v5->_hasWatchApp = [coderCopy decodeBoolForKey:@"hasWatchApp"];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdAttribution"];
    iAdAttribution = v5->_iAdAttribution;
    v5->_iAdAttribution = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdConversionDate"];
    iAdConversionDate = v5->_iAdConversionDate;
    v5->_iAdConversionDate = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdImpressionDate"];
    iAdImpressionDate = v5->_iAdImpressionDate;
    v5->_iAdImpressionDate = v45;

    v5->_isAutomatic = [coderCopy decodeBoolForKey:@"isAutomatic"];
    v5->_isCompatibilityUpdate = [coderCopy decodeBoolForKey:@"isCompatibilityUpdate"];
    v5->_isDeviceBasedVPP = [coderCopy decodeBoolForKey:@"isDeviceBasedVPP"];
    v5->_isFromStore = [coderCopy decodeBoolForKey:@"isFromStore"];
    v5->_isGameCenterEnabled = [coderCopy decodeBoolForKey:@"isGameCenterEnabled"];
    v5->_isInQueue = [coderCopy decodeBoolForKey:@"isInQueue"];
    v5->_isPendingApproval = [coderCopy decodeBoolForKey:@"isPendingApproval"];
    v5->_isPurchasedRedownload = [coderCopy decodeBoolForKey:@"isPurchasedRedownload"];
    v5->_isRestore = [coderCopy decodeBoolForKey:@"isRestore"];
    v5->_isShared = [coderCopy decodeBoolForKey:@"isShared"];
    v5->_isTVTemplate = [coderCopy decodeBoolForKey:@"isTVTemplate"];
    v5->_isUpdate = [coderCopy decodeBoolForKey:@"isUpdate"];
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v49;

    v5->_launchProhibited = [coderCopy decodeBoolForKey:@"launchProhibited"];
    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagesArtworkURL"];
    messagesArtworkURL = v5->_messagesArtworkURL;
    v5->_messagesArtworkURL = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseDate"];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseID"];
    purchaseID = v5->_purchaseID;
    v5->_purchaseID = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v5->_ratingLabel;
    v5->_ratingLabel = v59;

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingRank"];
    ratingRank = v5->_ratingRank;
    v5->_ratingRank = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v63;

    v5->_softwareIconNeedsShine = [coderCopy decodeBoolForKey:@"softwareIconNeedsShine"];
    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeAccountID"];
    storeAccountID = v5->_storeAccountID;
    v5->_storeAccountID = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeAccountName"];
    storeAccountName = v5->_storeAccountName;
    v5->_storeAccountName = v67;

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v73 = [v69 setWithObjects:{v70, v71, v72, objc_opt_class(), 0}];
    v74 = [coderCopy decodeObjectOfClasses:v73 forKey:@"storeDownloadInfo"];
    storeDownloadInfo = v5->_storeDownloadInfo;
    v5->_storeDownloadInfo = v74;

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionExternalIdentifier"];
    softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
    v5->_softwareVersionExternalIdentifier = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeDownloadKey"];
    storeDownloadKey = v5->_storeDownloadKey;
    v5->_storeDownloadKey = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeTransactionID"];
    storeTransactionID = v5->_storeTransactionID;
    v5->_storeTransactionID = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v5->_storeCohort;
    v5->_storeCohort = v84;

    v5->_thirtyTwoBitOnly = [coderCopy decodeBoolForKey:@"thirtyTwoBitOnly"];
    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailURL"];
    thumbnailURL = v5->_thumbnailURL;
    v5->_thumbnailURL = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v90;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appReceiptData = self->_appReceiptData;
  coderCopy = coder;
  [coderCopy encodeObject:appReceiptData forKey:@"appReceipt"];
  [coderCopy encodeObject:self->_artistID forKey:@"artistID"];
  [coderCopy encodeObject:self->_artistName forKey:@"artistName"];
  [coderCopy encodeObject:self->_assets forKey:@"assets"];
  [coderCopy encodeObject:self->_betaExternalVersionIdentifier forKey:@"betaExternalVersionIdentifier"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_buyParams forKey:@"buyParams"];
  [coderCopy encodeObject:self->_cancelDownloadURL forKey:@"cancelDownloadURL"];
  [coderCopy encodeBool:self->_cancelIfDuplicate forKey:@"cancelIfDuplicate"];
  [coderCopy encodeObject:self->_clientID forKey:@"clientID"];
  [coderCopy encodeObject:self->_collectionName forKey:@"collectionName"];
  [coderCopy encodeObject:self->_divertedTrackingID forKey:@"divertedTrackingID"];
  [coderCopy encodeObject:self->_enableExtensions forKey:@"enableExtensions"];
  [coderCopy encodeBool:self->_explicitContent forKey:@"explicitContent"];
  [coderCopy encodeObject:self->_externalOrderKey forKey:@"externalOrderKey"];
  [coderCopy encodeObject:self->_genre forKey:@"genre"];
  [coderCopy encodeObject:self->_genreID forKey:@"genreID"];
  [coderCopy encodeBool:self->_hasMessagesExtension forKey:@"hasMessagesExtension"];
  [coderCopy encodeBool:self->_hasWatchApp forKey:@"hasWatchApp"];
  [coderCopy encodeObject:self->_iAdAttribution forKey:@"iAdAttribution"];
  [coderCopy encodeObject:self->_iAdConversionDate forKey:@"iAdConversionDate"];
  [coderCopy encodeObject:self->_iAdImpressionDate forKey:@"iAdImpressionDate"];
  [coderCopy encodeBool:self->_isAutomatic forKey:@"isAutomatic"];
  [coderCopy encodeBool:self->_isCompatibilityUpdate forKey:@"isCompatibilityUpdate"];
  [coderCopy encodeBool:self->_isDeviceBasedVPP forKey:@"isDeviceBasedVPP"];
  [coderCopy encodeBool:self->_isFromStore forKey:@"isFromStore"];
  [coderCopy encodeBool:self->_isGameCenterEnabled forKey:@"isGameCenterEnabled"];
  [coderCopy encodeBool:self->_isInQueue forKey:@"isInQueue"];
  [coderCopy encodeBool:self->_isPendingApproval forKey:@"isPendingApproval"];
  [coderCopy encodeBool:self->_isPurchasedRedownload forKey:@"isPurchasedRedownload"];
  [coderCopy encodeBool:self->_isRestore forKey:@"isRestore"];
  [coderCopy encodeBool:self->_isShared forKey:@"isShared"];
  [coderCopy encodeBool:self->_isTVTemplate forKey:@"isDeviceBasedVPP"];
  [coderCopy encodeBool:self->_isUpdate forKey:@"isUpdate"];
  [coderCopy encodeObject:self->_itemID forKey:@"itemID"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeBool:self->_launchProhibited forKey:@"launchProhibited"];
  [coderCopy encodeObject:self->_messagesArtworkURL forKey:@"messagesArtworkURL"];
  [coderCopy encodeObject:self->_persistentID forKey:@"persistentID"];
  [coderCopy encodeObject:self->_purchaseDate forKey:@"purchaseDate"];
  [coderCopy encodeObject:self->_purchaseID forKey:@"purchaseID"];
  [coderCopy encodeObject:self->_ratingLabel forKey:@"ratingLabel"];
  [coderCopy encodeObject:self->_ratingRank forKey:@"ratingRank"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy encodeBool:self->_softwareIconNeedsShine forKey:@"softwareIconNeedsShine"];
  [coderCopy encodeObject:self->_softwareVersionExternalIdentifier forKey:@"softwareVersionExternalIdentifier"];
  [coderCopy encodeObject:self->_storeAccountID forKey:@"storeAccountID"];
  [coderCopy encodeObject:self->_storeAccountName forKey:@"storeAccountName"];
  [coderCopy encodeObject:self->_storeCohort forKey:@"storeCohort"];
  [coderCopy encodeObject:self->_storeDownloadInfo forKey:@"storeDownloadInfo"];
  [coderCopy encodeObject:self->_storeDownloadKey forKey:@"storeDownloadKey"];
  [coderCopy encodeObject:self->_storefront forKey:@"storefront"];
  [coderCopy encodeObject:self->_storeTransactionID forKey:@"storeTransactionID"];
  [coderCopy encodeBool:self->_thirtyTwoBitOnly forKey:@"thirtyTwoBitOnly"];
  [coderCopy encodeObject:self->_thumbnailURL forKey:@"thumbnailURL"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_variantID forKey:@"variantID"];
}

- (void)setPersistentID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 344), a2);
  }
}

@end