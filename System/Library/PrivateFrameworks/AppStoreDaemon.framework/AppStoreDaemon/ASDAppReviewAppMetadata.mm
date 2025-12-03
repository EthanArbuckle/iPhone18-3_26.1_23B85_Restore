@interface ASDAppReviewAppMetadata
- (ASDAppReviewAppMetadata)initWithCoder:(id)coder;
- (ASDAppReviewAppMetadata)initWithStoreMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAppReviewAppMetadata

- (ASDAppReviewAppMetadata)initWithStoreMetadata:(id)metadata
{
  metadataCopy = metadata;
  v23.receiver = self;
  v23.super_class = ASDAppReviewAppMetadata;
  v6 = [(ASDAppReviewAppMetadata *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeMetadata, metadata);
    softwareVersionBundleID = [metadataCopy softwareVersionBundleID];
    bundleID = v7->_bundleID;
    v7->_bundleID = softwareVersionBundleID;

    v7->_hasMessagesExtension = [metadataCopy hasMessagesExtension];
    initialODRSize = [metadataCopy initialODRSize];
    initialODRSize = v7->_initialODRSize;
    v7->_initialODRSize = initialODRSize;

    itemID = [metadataCopy itemID];
    itemID = v7->_itemID;
    v7->_itemID = itemID;

    itemName = [metadataCopy itemName];
    itemName = v7->_itemName;
    v7->_itemName = itemName;

    v7->_launchProhibited = [metadataCopy isLaunchProhibited];
    artistName = [metadataCopy artistName];
    vendorName = v7->_vendorName;
    v7->_vendorName = artistName;

    softwareVersionExternalIdentifier = [metadataCopy softwareVersionExternalIdentifier];
    externalVersionIdentifier = v7->_externalVersionIdentifier;
    v7->_externalVersionIdentifier = softwareVersionExternalIdentifier;

    if (!v7->_externalVersionIdentifier)
    {
      v7->_beta = 1;
      betaExternalVersionIdentifier = [metadataCopy betaExternalVersionIdentifier];
      v21 = v7->_externalVersionIdentifier;
      v7->_externalVersionIdentifier = betaExternalVersionIdentifier;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDAppReviewAppMetadata allocWithZone:](ASDAppReviewAppMetadata init];
  v6 = [(NSURL *)self->_artworkURL copyWithZone:zone];
  artworkURL = v5->_artworkURL;
  v5->_artworkURL = v6;

  v8 = [(NSDictionary *)self->_backgroundAssetMetadata copyWithZone:zone];
  backgroundAssetMetadata = v5->_backgroundAssetMetadata;
  v5->_backgroundAssetMetadata = v8;

  v10 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v10;

  v12 = [(NSNumber *)self->_chunkSize copyWithZone:zone];
  chunkSize = v5->_chunkSize;
  v5->_chunkSize = v12;

  v14 = [(NSArray *)self->_clearHashes copyWithZone:zone];
  clearHashes = v5->_clearHashes;
  v5->_clearHashes = v14;

  v16 = [(NSArray *)self->_cryptHashes copyWithZone:zone];
  cryptHashes = v5->_cryptHashes;
  v5->_cryptHashes = v16;

  v18 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:zone];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v18;

  v5->_hashType = self->_hashType;
  v5->_hasMessagesExtension = self->_hasMessagesExtension;
  v20 = [(NSNumber *)self->_initialODRSize copyWithZone:zone];
  initialODRSize = v5->_initialODRSize;
  v5->_initialODRSize = v20;

  v22 = [(NSNumber *)self->_itemID copyWithZone:zone];
  itemID = v5->_itemID;
  v5->_itemID = v22;

  v24 = [(NSString *)self->_itemName copyWithZone:zone];
  itemName = v5->_itemName;
  v5->_itemName = v24;

  v5->_launchProhibited = self->_launchProhibited;
  v26 = [(NSURL *)self->_messagesArtworkURL copyWithZone:zone];
  messagesArtworkURL = v5->_messagesArtworkURL;
  v5->_messagesArtworkURL = v26;

  v28 = [(NSData *)self->_packageDPInfo copyWithZone:zone];
  packageDPInfo = v5->_packageDPInfo;
  v5->_packageDPInfo = v28;

  v5->_packageFormat = self->_packageFormat;
  v30 = [(NSData *)self->_packageSINF copyWithZone:zone];
  packageSINF = v5->_packageSINF;
  v5->_packageSINF = v30;

  v32 = [(NSNumber *)self->_packageSize copyWithZone:zone];
  packageSize = v5->_packageSize;
  v5->_packageSize = v32;

  v34 = [(NSURL *)self->_packageURL copyWithZone:zone];
  packageURL = v5->_packageURL;
  v5->_packageURL = v34;

  v5->_softwarePlatform = self->_softwarePlatform;
  v36 = [(NSString *)self->_vendorName copyWithZone:zone];
  vendorName = v5->_vendorName;
  v5->_vendorName = v36;

  v38 = [(NSString *)self->_volumeID copyWithZone:zone];
  volumeID = v5->_volumeID;
  v5->_volumeID = v38;

  v40 = [(NSData *)self->_onDemandResourceManifest copyWithZone:zone];
  onDemandResourceManifest = v5->_onDemandResourceManifest;
  v5->_onDemandResourceManifest = v40;

  v42 = [(MIStoreMetadata *)self->_storeMetadata copyWithZone:zone];
  storeMetadata = v5->_storeMetadata;
  v5->_storeMetadata = v42;

  return v5;
}

- (ASDAppReviewAppMetadata)initWithCoder:(id)coder
{
  v58[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v57.receiver = self;
  v57.super_class = ASDAppReviewAppMetadata;
  v5 = [(ASDAppReviewAppMetadata *)&v57 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AU"];
    artworkURL = v5->_artworkURL;
    v5->_artworkURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v58[0] = objc_opt_class();
    v58[1] = objc_opt_class();
    v58[2] = objc_opt_class();
    v58[3] = objc_opt_class();
    v58[4] = objc_opt_class();
    v58[5] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"BA"];
    backgroundAssetMetadata = v5->_backgroundAssetMetadata;
    v5->_backgroundAssetMetadata = v11;

    v5->_beta = [coderCopy decodeBoolForKey:@"BE"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CS"];
    chunkSize = v5->_chunkSize;
    v5->_chunkSize = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HC"];
    clearHashes = v5->_clearHashes;
    v5->_clearHashes = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"HE"];
    cryptHashes = v5->_cryptHashes;
    v5->_cryptHashes = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v27;

    v5->_hashType = [coderCopy decodeIntegerForKey:@"HT"];
    v5->_hasMessagesExtension = [coderCopy decodeBoolForKey:@"HM"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IO"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v5->_itemID;
    v5->_itemID = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IN"];
    itemName = v5->_itemName;
    v5->_itemName = v33;

    v5->_launchProhibited = [coderCopy decodeBoolForKey:@"LP"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    messagesArtworkURL = v5->_messagesArtworkURL;
    v5->_messagesArtworkURL = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PD"];
    packageDPInfo = v5->_packageDPInfo;
    v5->_packageDPInfo = v37;

    v5->_packageFormat = [coderCopy decodeIntegerForKey:@"PF"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PS"];
    packageSINF = v5->_packageSINF;
    v5->_packageSINF = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PZ"];
    packageSize = v5->_packageSize;
    v5->_packageSize = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PU"];
    packageURL = v5->_packageURL;
    v5->_packageURL = v43;

    v5->_softwarePlatform = [coderCopy decodeIntegerForKey:@"SP"];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VA"];
    variantID = v5->_variantID;
    v5->_variantID = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VN"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VO"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OM"];
    onDemandResourceManifest = v5->_onDemandResourceManifest;
    v5->_onDemandResourceManifest = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SM"];
    storeMetadata = v5->_storeMetadata;
    v5->_storeMetadata = v53;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  artworkURL = self->_artworkURL;
  coderCopy = coder;
  [coderCopy encodeObject:artworkURL forKey:@"AU"];
  [coderCopy encodeObject:self->_backgroundAssetMetadata forKey:@"BA"];
  [coderCopy encodeBool:self->_beta forKey:@"BE"];
  [coderCopy encodeObject:self->_bundleID forKey:@"BI"];
  [coderCopy encodeObject:self->_chunkSize forKey:@"CS"];
  [coderCopy encodeObject:self->_clearHashes forKey:@"HC"];
  [coderCopy encodeObject:self->_cryptHashes forKey:@"HE"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"EV"];
  [coderCopy encodeInteger:self->_hashType forKey:@"HT"];
  [coderCopy encodeBool:self->_hasMessagesExtension forKey:@"HM"];
  [coderCopy encodeObject:self->_initialODRSize forKey:@"IO"];
  [coderCopy encodeObject:self->_itemID forKey:@"ID"];
  [coderCopy encodeObject:self->_itemName forKey:@"IN"];
  [coderCopy encodeBool:self->_launchProhibited forKey:@"LP"];
  [coderCopy encodeObject:self->_messagesArtworkURL forKey:@"MU"];
  [coderCopy encodeObject:self->_packageDPInfo forKey:@"PD"];
  [coderCopy encodeInteger:self->_packageFormat forKey:@"PF"];
  [coderCopy encodeObject:self->_packageSINF forKey:@"PS"];
  [coderCopy encodeObject:self->_packageSize forKey:@"PZ"];
  [coderCopy encodeObject:self->_packageURL forKey:@"PU"];
  [coderCopy encodeInteger:self->_softwarePlatform forKey:@"SP"];
  [coderCopy encodeObject:self->_variantID forKey:@"VA"];
  [coderCopy encodeObject:self->_vendorName forKey:@"VN"];
  [coderCopy encodeObject:self->_volumeID forKey:@"VO"];
  [coderCopy encodeObject:self->_onDemandResourceManifest forKey:@"OM"];
  [coderCopy encodeObject:self->_storeMetadata forKey:@"SM"];
}

@end