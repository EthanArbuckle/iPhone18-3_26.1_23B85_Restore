@interface ASDTestFlightAppMetadata
- (ASDTestFlightAppMetadata)initWithBundleID:(id)d;
- (ASDTestFlightAppMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setUserInitiated:(BOOL)initiated;
@end

@implementation ASDTestFlightAppMetadata

- (ASDTestFlightAppMetadata)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDTestFlightAppMetadata;
  v6 = [(ASDTestFlightAppMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v7->_userInitiated = 1;
  }

  return v7;
}

- (void)setUserInitiated:(BOOL)initiated
{
  self->_userInitiated = initiated;
  if (!self->_requiresPowerPluggedIn_wasSet)
  {
    self->_requiresPowerPluggedIn = !initiated;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ASDTestFlightAppMetadata allocWithZone:?];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = [(ASDTestFlightAppMetadata *)v5 initWithBundleID:v6];

  objc_storeStrong((v7 + 16), self->_account);
  v8 = [(NSURL *)self->_artworkURL copyWithZone:zone];
  v9 = *(v7 + 24);
  *(v7 + 24) = v8;

  v10 = [(NSDictionary *)self->_backgroundAssetMetadata copyWithZone:zone];
  v11 = *(v7 + 32);
  *(v7 + 32) = v10;

  v12 = [(NSString *)self->_betaBuildGroupID copyWithZone:zone];
  v13 = *(v7 + 40);
  *(v7 + 40) = v12;

  *(v7 + 48) = self->_betaTesterType;
  v14 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  v15 = *(v7 + 64);
  *(v7 + 64) = v14;

  v16 = [(NSNumber *)self->_chunkSize copyWithZone:zone];
  v17 = *(v7 + 72);
  *(v7 + 72) = v16;

  v18 = [(NSArray *)self->_clearHashes copyWithZone:zone];
  v19 = *(v7 + 80);
  *(v7 + 80) = v18;

  v20 = [(NSString *)self->_companionBundleID copyWithZone:zone];
  v21 = *(v7 + 88);
  *(v7 + 88) = v20;

  v22 = [(NSArray *)self->_cryptHashes copyWithZone:zone];
  v23 = *(v7 + 96);
  *(v7 + 96) = v22;

  v24 = [(NSURL *)self->_existingBundleURL copyWithZone:zone];
  v25 = *(v7 + 104);
  *(v7 + 104) = v24;

  v26 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:zone];
  v27 = *(v7 + 112);
  *(v7 + 112) = v26;

  v28 = [(ASDTestFlightAppGenre *)self->_genre copyWithZone:zone];
  v29 = *(v7 + 120);
  *(v7 + 120) = v28;

  v30 = [(NSArray *)self->_genreIDs copyWithZone:zone];
  v31 = *(v7 + 128);
  *(v7 + 128) = v30;

  *(v7 + 136) = self->_hashType;
  *(v7 + 11) = self->_hasMessagesExtension;
  v32 = [(NSNumber *)self->_initialODRSize copyWithZone:zone];
  v33 = *(v7 + 144);
  *(v7 + 144) = v32;

  v34 = [(NSNumber *)self->_itemID copyWithZone:zone];
  v35 = *(v7 + 152);
  *(v7 + 152) = v34;

  v36 = [(NSString *)self->_itemName copyWithZone:zone];
  v37 = *(v7 + 160);
  *(v7 + 160) = v36;

  *(v7 + 12) = self->_launchProhibited;
  v38 = [(NSURL *)self->_messagesArtworkURL copyWithZone:zone];
  v39 = *(v7 + 176);
  *(v7 + 176) = v38;

  *(v7 + 184) = self->_packageCompression;
  v40 = [(NSData *)self->_packageDPInfo copyWithZone:zone];
  v41 = *(v7 + 192);
  *(v7 + 192) = v40;

  *(v7 + 200) = self->_packageFormat;
  v42 = [(NSData *)self->_packageSINF copyWithZone:zone];
  v43 = *(v7 + 208);
  *(v7 + 208) = v42;

  v44 = [(NSNumber *)self->_packageSize copyWithZone:zone];
  v45 = *(v7 + 216);
  *(v7 + 216) = v44;

  v46 = [(NSURL *)self->_packageURL copyWithZone:zone];
  v47 = *(v7 + 224);
  *(v7 + 224) = v46;

  v48 = [(NSDictionary *)self->_placeholderEntitlements copyWithZone:zone];
  v49 = *(v7 + 168);
  *(v7 + 168) = v48;

  v50 = [(NSArray *)self->_provisioningProfiles copyWithZone:zone];
  v51 = *(v7 + 232);
  *(v7 + 232) = v50;

  v52 = [(NSData *)self->_receipt copyWithZone:zone];
  v53 = *(v7 + 240);
  *(v7 + 240) = v52;

  *(v7 + 9) = self->_requiresPowerPluggedIn;
  v54 = [(NSString *)self->_shortBundleVersion copyWithZone:zone];
  v55 = *(v7 + 248);
  *(v7 + 248) = v54;

  *(v7 + 256) = self->_softwarePlatform;
  v56 = [(NSString *)self->_storeCohort copyWithZone:zone];
  v57 = *(v7 + 264);
  *(v7 + 264) = v56;

  v58 = [(NSNumber *)self->_storeFront copyWithZone:zone];
  v59 = *(v7 + 272);
  *(v7 + 272) = v58;

  v60 = [(NSArray *)self->_subGenres copyWithZone:zone];
  v61 = *(v7 + 280);
  *(v7 + 280) = v60;

  v62 = [(NSString *)self->_token copyWithZone:zone];
  v63 = *(v7 + 288);
  *(v7 + 288) = v62;

  *(v7 + 10) = self->_userInitiated;
  v64 = [(NSString *)self->_vendorName copyWithZone:zone];
  v65 = *(v7 + 304);
  *(v7 + 304) = v64;

  v66 = [(NSString *)self->_volumeID copyWithZone:zone];
  v67 = *(v7 + 312);
  *(v7 + 312) = v66;

  return v7;
}

- (ASDTestFlightAppMetadata)initWithCoder:(id)coder
{
  v96[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
  v6 = [(ASDTestFlightAppMetadata *)self initWithBundleID:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AC"];
    account = v6->_account;
    v6->_account = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AU"];
    artworkURL = v6->_artworkURL;
    v6->_artworkURL = v9;

    v11 = MEMORY[0x1E695DFD8];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v96[2] = objc_opt_class();
    v96[3] = objc_opt_class();
    v96[4] = objc_opt_class();
    v96[5] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:6];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"BA"];
    backgroundAssetMetadata = v6->_backgroundAssetMetadata;
    v6->_backgroundAssetMetadata = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GI"];
    betaBuildGroupID = v6->_betaBuildGroupID;
    v6->_betaBuildGroupID = v16;

    v6->_betaTesterType = [coderCopy decodeIntegerForKey:@"BT"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BV"];
    bundleVersion = v6->_bundleVersion;
    v6->_bundleVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CS"];
    chunkSize = v6->_chunkSize;
    v6->_chunkSize = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"HC"];
    clearHashes = v6->_clearHashes;
    v6->_clearHashes = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    companionBundleID = v6->_companionBundleID;
    v6->_companionBundleID = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"HE"];
    cryptHashes = v6->_cryptHashes;
    v6->_cryptHashes = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EB"];
    existingBundleURL = v6->_existingBundleURL;
    v6->_existingBundleURL = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EV"];
    externalVersionIdentifier = v6->_externalVersionIdentifier;
    v6->_externalVersionIdentifier = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GE"];
    genre = v6->_genre;
    v6->_genre = v38;

    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"GN"];
    genreIDs = v6->_genreIDs;
    v6->_genreIDs = v43;

    v6->_hashType = [coderCopy decodeIntegerForKey:@"HT"];
    v6->_hasMessagesExtension = [coderCopy decodeBoolForKey:@"HM"];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IO"];
    initialODRSize = v6->_initialODRSize;
    v6->_initialODRSize = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
    itemID = v6->_itemID;
    v6->_itemID = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IN"];
    itemName = v6->_itemName;
    v6->_itemName = v49;

    v6->_launchProhibited = [coderCopy decodeBoolForKey:@"LP"];
    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    messagesArtworkURL = v6->_messagesArtworkURL;
    v6->_messagesArtworkURL = v51;

    v6->_packageCompression = [coderCopy decodeIntegerForKey:@"PC"];
    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PD"];
    packageDPInfo = v6->_packageDPInfo;
    v6->_packageDPInfo = v53;

    v6->_packageFormat = [coderCopy decodeIntegerForKey:@"PF"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PS"];
    packageSINF = v6->_packageSINF;
    v6->_packageSINF = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PZ"];
    packageSize = v6->_packageSize;
    v6->_packageSize = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PU"];
    packageURL = v6->_packageURL;
    v6->_packageURL = v59;

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = [v61 setWithObjects:{v62, v63, v64, objc_opt_class(), 0}];
    v66 = [coderCopy decodeObjectOfClasses:v65 forKey:@"PE"];
    placeholderEntitlements = v6->_placeholderEntitlements;
    v6->_placeholderEntitlements = v66;

    v68 = MEMORY[0x1E695DFD8];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"PV"];
    provisioningProfiles = v6->_provisioningProfiles;
    v6->_provisioningProfiles = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RC"];
    receipt = v6->_receipt;
    v6->_receipt = v73;

    v6->_requiresPowerPluggedIn = [coderCopy decodeBoolForKey:@"RP"];
    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SV"];
    shortBundleVersion = v6->_shortBundleVersion;
    v6->_shortBundleVersion = v75;

    v6->_softwarePlatform = [coderCopy decodeIntegerForKey:@"SP"];
    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SC"];
    storeCohort = v6->_storeCohort;
    v6->_storeCohort = v77;

    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SF"];
    storeFront = v6->_storeFront;
    v6->_storeFront = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"SG"];
    subGenres = v6->_subGenres;
    v6->_subGenres = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TK"];
    token = v6->_token;
    v6->_token = v86;

    v6->_userInitiated = [coderCopy decodeBoolForKey:@"UI"];
    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VA"];
    variantID = v6->_variantID;
    v6->_variantID = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VN"];
    vendorName = v6->_vendorName;
    v6->_vendorName = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VO"];
    volumeID = v6->_volumeID;
    v6->_volumeID = v92;
  }

  v94 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  account = self->_account;
  coderCopy = coder;
  [coderCopy encodeObject:account forKey:@"AC"];
  [coderCopy encodeObject:self->_artworkURL forKey:@"AU"];
  [coderCopy encodeObject:self->_backgroundAssetMetadata forKey:@"BA"];
  [coderCopy encodeObject:self->_betaBuildGroupID forKey:@"GI"];
  [coderCopy encodeInteger:self->_betaTesterType forKey:@"BT"];
  [coderCopy encodeObject:self->_bundleID forKey:@"BI"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"BV"];
  [coderCopy encodeObject:self->_chunkSize forKey:@"CS"];
  [coderCopy encodeObject:self->_clearHashes forKey:@"HC"];
  [coderCopy encodeObject:self->_companionBundleID forKey:@"CI"];
  [coderCopy encodeObject:self->_cryptHashes forKey:@"HE"];
  [coderCopy encodeObject:self->_existingBundleURL forKey:@"EB"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"EV"];
  [coderCopy encodeObject:self->_genre forKey:@"GE"];
  [coderCopy encodeObject:self->_genreIDs forKey:@"GN"];
  [coderCopy encodeInteger:self->_hashType forKey:@"HT"];
  [coderCopy encodeBool:self->_hasMessagesExtension forKey:@"HM"];
  [coderCopy encodeObject:self->_initialODRSize forKey:@"IO"];
  [coderCopy encodeObject:self->_itemID forKey:@"ID"];
  [coderCopy encodeObject:self->_itemName forKey:@"IN"];
  [coderCopy encodeBool:self->_launchProhibited forKey:@"LP"];
  [coderCopy encodeObject:self->_messagesArtworkURL forKey:@"MU"];
  [coderCopy encodeInteger:self->_packageCompression forKey:@"PC"];
  [coderCopy encodeObject:self->_packageDPInfo forKey:@"PD"];
  [coderCopy encodeInteger:self->_packageFormat forKey:@"PF"];
  [coderCopy encodeObject:self->_packageSINF forKey:@"PS"];
  [coderCopy encodeObject:self->_packageSize forKey:@"PZ"];
  [coderCopy encodeObject:self->_packageURL forKey:@"PU"];
  [coderCopy encodeObject:self->_placeholderEntitlements forKey:@"PE"];
  [coderCopy encodeObject:self->_provisioningProfiles forKey:@"PV"];
  [coderCopy encodeObject:self->_receipt forKey:@"RC"];
  [coderCopy encodeBool:self->_requiresPowerPluggedIn forKey:@"RP"];
  [coderCopy encodeObject:self->_shortBundleVersion forKey:@"SV"];
  [coderCopy encodeInteger:self->_softwarePlatform forKey:@"SP"];
  [coderCopy encodeObject:self->_storeCohort forKey:@"SC"];
  [coderCopy encodeObject:self->_storeFront forKey:@"SF"];
  [coderCopy encodeObject:self->_subGenres forKey:@"SG"];
  [coderCopy encodeObject:self->_token forKey:@"TK"];
  [coderCopy encodeBool:self->_userInitiated forKey:@"UI"];
  [coderCopy encodeObject:self->_variantID forKey:@"VA"];
  [coderCopy encodeObject:self->_vendorName forKey:@"VN"];
  [coderCopy encodeObject:self->_volumeID forKey:@"VO"];
}

@end