@interface LSiTunesMetadata
- (LSiTunesMetadata)initWithCoder:(id)coder;
- (MIStoreMetadataDistributor)distributorInfo;
- (NSString)storeCohort;
- (id)_initWithContext:(LSContext *)context bundleData:(const LSBundleData *)data;
- (id)storeCohortWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)storeCohort;
@end

@implementation LSiTunesMetadata

- (MIStoreMetadataDistributor)distributorInfo
{
  v2 = [(MIStoreMetadataDistributor *)self->_distributorInfo copy];

  return v2;
}

- (id)_initWithContext:(LSContext *)context bundleData:(const LSBundleData *)data
{
  v44.receiver = self;
  v44.super_class = LSiTunesMetadata;
  v6 = [(LSiTunesMetadata *)&v44 init];
  v7 = v6;
  if (v6)
  {
    v6->_storeItemIdentifier = *(&data->compatibilityState + 4);
    installFailureReason_high = HIDWORD(data->installFailureReason);
    [(_LSDatabase *)context->db store];
    v9 = _CSStringCopyCFString();
    artistName = v7->_artistName;
    v7->_artistName = v9;

    familyID_high = HIDWORD(data->familyID);
    [(_LSDatabase *)context->db store];
    v12 = _CSStringCopyCFString();
    itemName = v7->_itemName;
    v7->_itemName = v12;

    v14 = 64;
    if ((*(&data->_clas + 1) & 0x200000) == 0)
    {
      v14 = 56;
    }

    *(&v7->super.isa + v14) = data->storefront;
    v7->_storeFront = *&data->itemName;
    versionIdentifier_high = HIDWORD(data->versionIdentifier);
    [(_LSDatabase *)context->db store];
    v16 = _CSStringCopyCFString();
    variantID = v7->_variantID;
    v7->_variantID = v16;

    sourceAppBundleID = data->sourceAppBundleID;
    [(_LSDatabase *)context->db store];
    v19 = _CSStringCopyCFString();
    managementDeclarationIdentifier = v7->_managementDeclarationIdentifier;
    v7->_managementDeclarationIdentifier = v19;

    v7->_deviceBasedVPP = (*(&data->_clas + 1) & 0x8000000000000) != 0;
    ratingLabel = data->ratingLabel;
    [(_LSDatabase *)context->db store];
    v22 = _CSStringCopyCFString();
    genre = v7->_genre;
    v7->_genre = v22;

    v7->_genreIdentifier = data->ratingRank;
    v24 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:data->base.infoDictionary];
    bundleFlags_high = HIDWORD(data->_bundleFlags);
    if ((bundleFlags_high & 0x4000) != 0)
    {
      v26 = [v24 objectForKey:@"storeCohort" ofClass:objc_opt_class()];
      storeCohort = v7->_storeCohort;
      v7->_storeCohort = v26;

      bundleFlags_high = HIDWORD(data->_bundleFlags);
    }

    if ((bundleFlags_high & 0x20000) != 0)
    {
      v28 = objc_opt_class();
      v29 = [v24 objectForKey:@"subgenres" ofClass:v28 valuesOfClass:objc_opt_class()];
      subgenres = v7->_subgenres;
      v7->_subgenres = v29;
    }

    if (!v7->_subgenres)
    {
      v7->_subgenres = MEMORY[0x1E695E0F0];
    }

    v7->_ratingRank = *&data->appVariant;
    v31 = *(&data->managementDeclarationIdentifier + 1);
    [(_LSDatabase *)context->db store];
    v32 = _CSStringCopyCFString();
    v33 = v7->_ratingLabel;
    v7->_ratingLabel = v32;

    versionIdentifier_low = LODWORD(data->versionIdentifier);
    [(_LSDatabase *)context->db store];
    v35 = _CSStringCopyCFString();
    sourceApp = v7->_sourceApp;
    v7->_sourceApp = v35;

    v37 = *(&data->_clas + 1);
    v7->_purchasedRedownload = (v37 & 0x400000) != 0;
    v7->_gameCenterEnabled = (v37 & 0x2000000000000) != 0;
    v7->_gameCenterEverEnabled = (v37 & 0x4000000000000) != 0;
    v38 = objc_autoreleasePoolPush();
    v39 = _LSPlistGet(context->db, *(&data->ratingLabel + 1));
    v40 = _LSPlistDataGetDictionary(v39, 0);

    if (v40)
    {
      v41 = [objc_alloc(MEMORY[0x1E69A8DC0]) initWithDictionary:v40];
      distributorInfo = v7->_distributorInfo;
      v7->_distributorInfo = v41;
    }

    objc_autoreleasePoolPop(v38);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_storeItemIdentifier forKey:@"storeItemIdentifier"];
  [coder encodeObject:self->_artistName forKey:@"artistName"];
  [coder encodeObject:self->_itemName forKey:@"itemName"];
  [coder encodeInt64:self->_versionIdentifier forKey:@"versionIdentifier"];
  [coder encodeInt64:self->_betaVersionIdentifier forKey:@"betaVersionIdentifier"];
  [coder encodeInt64:self->_storeFront forKey:@"storeFront"];
  [coder encodeObject:self->_storeCohort forKey:@"storeCohort"];
  [coder encodeObject:self->_variantID forKey:@"variantID"];
  [coder encodeBool:self->_deviceBasedVPP forKey:@"deviceBasedVPP"];
  [coder encodeObject:self->_genre forKey:@"genre"];
  [coder encodeInt64:self->_genreIdentifier forKey:@"genreIdentifier"];
  [coder encodeObject:self->_subgenres forKey:@"subgenres"];
  [coder encodeInt64:self->_ratingRank forKey:@"ratingRank"];
  [coder encodeObject:self->_ratingLabel forKey:@"ratingLabel"];
  [coder encodeObject:self->_sourceApp forKey:@"sourceApp"];
  [coder encodeBool:self->_purchasedRedownload forKey:@"purchasedRedownload"];
  [coder encodeBool:self->_gameCenterEnabled forKey:@"gameCenterEnabled"];
  [coder encodeBool:self->_gameCenterEverEnabled forKey:@"gameCenterEverEnabled"];
  distributorInfo = self->_distributorInfo;

  [coder encodeObject:distributorInfo forKey:@"distributorInfo"];
}

- (LSiTunesMetadata)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = LSiTunesMetadata;
  v4 = [(LSiTunesMetadata *)&v38 init];
  if (v4)
  {
    v4->_storeItemIdentifier = [coder decodeInt64ForKey:@"storeItemIdentifier"];
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v4->_artistName;
    v4->_artistName = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v4->_itemName;
    v4->_itemName = v7;

    v4->_versionIdentifier = [coder decodeInt64ForKey:@"versionIdentifier"];
    v4->_betaVersionIdentifier = [coder decodeInt64ForKey:@"betaVersionIdentifier"];
    v4->_storeFront = [coder decodeInt64ForKey:@"storeFront"];
    v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v4->_storeCohort;
    v4->_storeCohort = v9;

    v11 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v4->_variantID;
    v4->_variantID = v11;

    v4->_deviceBasedVPP = [coder decodeBoolForKey:@"deviceBasedVPP"];
    v13 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v4->_genre;
    v4->_genre = v13;

    v4->_genreIdentifier = [coder decodeInt64ForKey:@"genreIdentifier"];
    v15 = XNSGetPropertyListClasses();
    v16 = [coder ls_decodeObjectOfClasses:v15 forKey:@"subgenres"];

    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v18 = _LSIsArrayWithValuesOfClasses(v16, v17);

    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = v16;
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v21)
      {
        v22 = *v35;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v20);
            }

            if ((_LSIsDictionaryWithKeysAndValuesOfClasses(*(*(&v34 + 1) + 8 * v23), v19, 0) & 1) == 0)
            {

              goto LABEL_13;
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v24 = v20;
      subgenres = v4->_subgenres;
      v4->_subgenres = v24;
    }

    else
    {
LABEL_13:
      subgenres = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[LSiTunesMetadata initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSiTunesMetadata.mm", 229);
      [coder failWithError:subgenres];
    }

    v4->_ratingRank = [coder decodeInt64ForKey:@"ratingRank"];
    v26 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v4->_ratingLabel;
    v4->_ratingLabel = v26;

    v28 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"sourceApp"];
    sourceApp = v4->_sourceApp;
    v4->_sourceApp = v28;

    v4->_purchasedRedownload = [coder decodeBoolForKey:@"purchasedRedownload"];
    v4->_gameCenterEnabled = [coder decodeBoolForKey:@"gameCenterEnabled"];
    v4->_gameCenterEverEnabled = [coder decodeBoolForKey:@"gameCenterEverEnabled"];
    v30 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"distributorInfo"];
    distributorInfo = v4->_distributorInfo;
    v4->_distributorInfo = v30;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)storeCohortWithError:(id *)error
{
  v4 = self->_storeCohort;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "[LSiTunesMetadata storeCohortWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSiTunesMetadata.mm", 259);
    if (error)
    {
      v5 = v5;
      *error = v5;
    }
  }

  return v4;
}

- (NSString)storeCohort
{
  v9 = 0;
  v2 = [(LSiTunesMetadata *)self storeCohortWithError:&v9];
  v3 = v9;
  v4 = v3;
  if (!v2)
  {
    domain = [v3 domain];
    if ([domain isEqual:@"LSApplicationWorkspaceErrorDomain"])
    {
      code = [v4 code];

      if (code == 113)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LSiTunesMetadata *)v4 storeCohort];
    }
  }

LABEL_9:

  return v2;
}

- (void)storeCohort
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Because a caller called the deprecated method storeCohort, the error %@ is being dropped on the floor. That caller should use storeCohortWithError: instead.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end