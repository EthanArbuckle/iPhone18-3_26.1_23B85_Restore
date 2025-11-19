@interface ASDAppReviewAppMetadata
- (ASDAppReviewAppMetadata)initWithCoder:(id)a3;
- (ASDAppReviewAppMetadata)initWithStoreMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAppReviewAppMetadata

- (ASDAppReviewAppMetadata)initWithStoreMetadata:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = ASDAppReviewAppMetadata;
  v6 = [(ASDAppReviewAppMetadata *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeMetadata, a3);
    v8 = [v5 softwareVersionBundleID];
    bundleID = v7->_bundleID;
    v7->_bundleID = v8;

    v7->_hasMessagesExtension = [v5 hasMessagesExtension];
    v10 = [v5 initialODRSize];
    initialODRSize = v7->_initialODRSize;
    v7->_initialODRSize = v10;

    v12 = [v5 itemID];
    itemID = v7->_itemID;
    v7->_itemID = v12;

    v14 = [v5 itemName];
    itemName = v7->_itemName;
    v7->_itemName = v14;

    v7->_launchProhibited = [v5 isLaunchProhibited];
    v16 = [v5 artistName];
    vendorName = v7->_vendorName;
    v7->_vendorName = v16;

    v18 = [v5 softwareVersionExternalIdentifier];
    externalVersionIdentifier = v7->_externalVersionIdentifier;
    v7->_externalVersionIdentifier = v18;

    if (!v7->_externalVersionIdentifier)
    {
      v7->_beta = 1;
      v20 = [v5 betaExternalVersionIdentifier];
      v21 = v7->_externalVersionIdentifier;
      v7->_externalVersionIdentifier = v20;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDAppReviewAppMetadata allocWithZone:](ASDAppReviewAppMetadata init];
  v6 = [(NSURL *)self->_artworkURL copyWithZone:a3];
  artworkURL = v5->_artworkURL;
  v5->_artworkURL = v6;

  v8 = [(NSDictionary *)self->_backgroundAssetMetadata copyWithZone:a3];
  backgroundAssetMetadata = v5->_backgroundAssetMetadata;
  v5->_backgroundAssetMetadata = v8;

  v10 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v10;

  v12 = [(NSNumber *)self->_chunkSize copyWithZone:a3];
  chunkSize = v5->_chunkSize;
  v5->_chunkSize = v12;

  v14 = [(NSArray *)self->_clearHashes copyWithZone:a3];
  clearHashes = v5->_clearHashes;
  v5->_clearHashes = v14;

  v16 = [(NSArray *)self->_cryptHashes copyWithZone:a3];
  cryptHashes = v5->_cryptHashes;
  v5->_cryptHashes = v16;

  v18 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:a3];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v18;

  v5->_hashType = self->_hashType;
  v5->_hasMessagesExtension = self->_hasMessagesExtension;
  v20 = [(NSNumber *)self->_initialODRSize copyWithZone:a3];
  initialODRSize = v5->_initialODRSize;
  v5->_initialODRSize = v20;

  v22 = [(NSNumber *)self->_itemID copyWithZone:a3];
  itemID = v5->_itemID;
  v5->_itemID = v22;

  v24 = [(NSString *)self->_itemName copyWithZone:a3];
  itemName = v5->_itemName;
  v5->_itemName = v24;

  v5->_launchProhibited = self->_launchProhibited;
  v26 = [(NSURL *)self->_messagesArtworkURL copyWithZone:a3];
  messagesArtworkURL = v5->_messagesArtworkURL;
  v5->_messagesArtworkURL = v26;

  v28 = [(NSData *)self->_packageDPInfo copyWithZone:a3];
  packageDPInfo = v5->_packageDPInfo;
  v5->_packageDPInfo = v28;

  v5->_packageFormat = self->_packageFormat;
  v30 = [(NSData *)self->_packageSINF copyWithZone:a3];
  packageSINF = v5->_packageSINF;
  v5->_packageSINF = v30;

  v32 = [(NSNumber *)self->_packageSize copyWithZone:a3];
  packageSize = v5->_packageSize;
  v5->_packageSize = v32;

  v34 = [(NSURL *)self->_packageURL copyWithZone:a3];
  packageURL = v5->_packageURL;
  v5->_packageURL = v34;

  v5->_softwarePlatform = self->_softwarePlatform;
  v36 = [(NSString *)self->_vendorName copyWithZone:a3];
  vendorName = v5->_vendorName;
  v5->_vendorName = v36;

  v38 = [(NSString *)self->_volumeID copyWithZone:a3];
  volumeID = v5->_volumeID;
  v5->_volumeID = v38;

  v40 = [(NSData *)self->_onDemandResourceManifest copyWithZone:a3];
  onDemandResourceManifest = v5->_onDemandResourceManifest;
  v5->_onDemandResourceManifest = v40;

  v42 = [(MIStoreMetadata *)self->_storeMetadata copyWithZone:a3];
  storeMetadata = v5->_storeMetadata;
  v5->_storeMetadata = v42;

  return v5;
}

- (ASDAppReviewAppMetadata)initWithCoder:(id)a3
{
  v58[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = ASDAppReviewAppMetadata;
  v5 = [(ASDAppReviewAppMetadata *)&v57 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AU"];
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"BA"];
    backgroundAssetMetadata = v5->_backgroundAssetMetadata;
    v5->_backgroundAssetMetadata = v11;

    v5->_beta = [v4 decodeBoolForKey:@"BE"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CS"];
    chunkSize = v5->_chunkSize;
    v5->_chunkSize = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"HC"];
    clearHashes = v5->_clearHashes;
    v5->_clearHashes = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"HE"];
    cryptHashes = v5->_cryptHashes;
    v5->_cryptHashes = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v27;

    v5->_hashType = [v4 decodeIntegerForKey:@"HT"];
    v5->_hasMessagesExtension = [v4 decodeBoolForKey:@"HM"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IO"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v5->_itemID;
    v5->_itemID = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IN"];
    itemName = v5->_itemName;
    v5->_itemName = v33;

    v5->_launchProhibited = [v4 decodeBoolForKey:@"LP"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    messagesArtworkURL = v5->_messagesArtworkURL;
    v5->_messagesArtworkURL = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PD"];
    packageDPInfo = v5->_packageDPInfo;
    v5->_packageDPInfo = v37;

    v5->_packageFormat = [v4 decodeIntegerForKey:@"PF"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PS"];
    packageSINF = v5->_packageSINF;
    v5->_packageSINF = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PZ"];
    packageSize = v5->_packageSize;
    v5->_packageSize = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PU"];
    packageURL = v5->_packageURL;
    v5->_packageURL = v43;

    v5->_softwarePlatform = [v4 decodeIntegerForKey:@"SP"];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VA"];
    variantID = v5->_variantID;
    v5->_variantID = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VN"];
    vendorName = v5->_vendorName;
    v5->_vendorName = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VO"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OM"];
    onDemandResourceManifest = v5->_onDemandResourceManifest;
    v5->_onDemandResourceManifest = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SM"];
    storeMetadata = v5->_storeMetadata;
    v5->_storeMetadata = v53;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  artworkURL = self->_artworkURL;
  v5 = a3;
  [v5 encodeObject:artworkURL forKey:@"AU"];
  [v5 encodeObject:self->_backgroundAssetMetadata forKey:@"BA"];
  [v5 encodeBool:self->_beta forKey:@"BE"];
  [v5 encodeObject:self->_bundleID forKey:@"BI"];
  [v5 encodeObject:self->_chunkSize forKey:@"CS"];
  [v5 encodeObject:self->_clearHashes forKey:@"HC"];
  [v5 encodeObject:self->_cryptHashes forKey:@"HE"];
  [v5 encodeObject:self->_externalVersionIdentifier forKey:@"EV"];
  [v5 encodeInteger:self->_hashType forKey:@"HT"];
  [v5 encodeBool:self->_hasMessagesExtension forKey:@"HM"];
  [v5 encodeObject:self->_initialODRSize forKey:@"IO"];
  [v5 encodeObject:self->_itemID forKey:@"ID"];
  [v5 encodeObject:self->_itemName forKey:@"IN"];
  [v5 encodeBool:self->_launchProhibited forKey:@"LP"];
  [v5 encodeObject:self->_messagesArtworkURL forKey:@"MU"];
  [v5 encodeObject:self->_packageDPInfo forKey:@"PD"];
  [v5 encodeInteger:self->_packageFormat forKey:@"PF"];
  [v5 encodeObject:self->_packageSINF forKey:@"PS"];
  [v5 encodeObject:self->_packageSize forKey:@"PZ"];
  [v5 encodeObject:self->_packageURL forKey:@"PU"];
  [v5 encodeInteger:self->_softwarePlatform forKey:@"SP"];
  [v5 encodeObject:self->_variantID forKey:@"VA"];
  [v5 encodeObject:self->_vendorName forKey:@"VN"];
  [v5 encodeObject:self->_volumeID forKey:@"VO"];
  [v5 encodeObject:self->_onDemandResourceManifest forKey:@"OM"];
  [v5 encodeObject:self->_storeMetadata forKey:@"SM"];
}

@end