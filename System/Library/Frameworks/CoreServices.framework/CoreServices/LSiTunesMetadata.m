@interface LSiTunesMetadata
- (LSiTunesMetadata)initWithCoder:(id)a3;
- (MIStoreMetadataDistributor)distributorInfo;
- (NSString)storeCohort;
- (id)_initWithContext:(LSContext *)a3 bundleData:(const LSBundleData *)a4;
- (id)storeCohortWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)storeCohort;
@end

@implementation LSiTunesMetadata

- (MIStoreMetadataDistributor)distributorInfo
{
  v2 = [(MIStoreMetadataDistributor *)self->_distributorInfo copy];

  return v2;
}

- (id)_initWithContext:(LSContext *)a3 bundleData:(const LSBundleData *)a4
{
  v44.receiver = self;
  v44.super_class = LSiTunesMetadata;
  v6 = [(LSiTunesMetadata *)&v44 init];
  v7 = v6;
  if (v6)
  {
    v6->_storeItemIdentifier = *(&a4->compatibilityState + 4);
    installFailureReason_high = HIDWORD(a4->installFailureReason);
    [(_LSDatabase *)a3->db store];
    v9 = _CSStringCopyCFString();
    artistName = v7->_artistName;
    v7->_artistName = v9;

    familyID_high = HIDWORD(a4->familyID);
    [(_LSDatabase *)a3->db store];
    v12 = _CSStringCopyCFString();
    itemName = v7->_itemName;
    v7->_itemName = v12;

    v14 = 64;
    if ((*(&a4->_clas + 1) & 0x200000) == 0)
    {
      v14 = 56;
    }

    *(&v7->super.isa + v14) = a4->storefront;
    v7->_storeFront = *&a4->itemName;
    versionIdentifier_high = HIDWORD(a4->versionIdentifier);
    [(_LSDatabase *)a3->db store];
    v16 = _CSStringCopyCFString();
    variantID = v7->_variantID;
    v7->_variantID = v16;

    sourceAppBundleID = a4->sourceAppBundleID;
    [(_LSDatabase *)a3->db store];
    v19 = _CSStringCopyCFString();
    managementDeclarationIdentifier = v7->_managementDeclarationIdentifier;
    v7->_managementDeclarationIdentifier = v19;

    v7->_deviceBasedVPP = (*(&a4->_clas + 1) & 0x8000000000000) != 0;
    ratingLabel = a4->ratingLabel;
    [(_LSDatabase *)a3->db store];
    v22 = _CSStringCopyCFString();
    genre = v7->_genre;
    v7->_genre = v22;

    v7->_genreIdentifier = a4->ratingRank;
    v24 = [_LSLazyPropertyList lazyPropertyListWithContext:a3 unit:a4->base.infoDictionary];
    bundleFlags_high = HIDWORD(a4->_bundleFlags);
    if ((bundleFlags_high & 0x4000) != 0)
    {
      v26 = [v24 objectForKey:@"storeCohort" ofClass:objc_opt_class()];
      storeCohort = v7->_storeCohort;
      v7->_storeCohort = v26;

      bundleFlags_high = HIDWORD(a4->_bundleFlags);
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

    v7->_ratingRank = *&a4->appVariant;
    v31 = *(&a4->managementDeclarationIdentifier + 1);
    [(_LSDatabase *)a3->db store];
    v32 = _CSStringCopyCFString();
    v33 = v7->_ratingLabel;
    v7->_ratingLabel = v32;

    versionIdentifier_low = LODWORD(a4->versionIdentifier);
    [(_LSDatabase *)a3->db store];
    v35 = _CSStringCopyCFString();
    sourceApp = v7->_sourceApp;
    v7->_sourceApp = v35;

    v37 = *(&a4->_clas + 1);
    v7->_purchasedRedownload = (v37 & 0x400000) != 0;
    v7->_gameCenterEnabled = (v37 & 0x2000000000000) != 0;
    v7->_gameCenterEverEnabled = (v37 & 0x4000000000000) != 0;
    v38 = objc_autoreleasePoolPush();
    v39 = _LSPlistGet(a3->db, *(&a4->ratingLabel + 1));
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_storeItemIdentifier forKey:@"storeItemIdentifier"];
  [a3 encodeObject:self->_artistName forKey:@"artistName"];
  [a3 encodeObject:self->_itemName forKey:@"itemName"];
  [a3 encodeInt64:self->_versionIdentifier forKey:@"versionIdentifier"];
  [a3 encodeInt64:self->_betaVersionIdentifier forKey:@"betaVersionIdentifier"];
  [a3 encodeInt64:self->_storeFront forKey:@"storeFront"];
  [a3 encodeObject:self->_storeCohort forKey:@"storeCohort"];
  [a3 encodeObject:self->_variantID forKey:@"variantID"];
  [a3 encodeBool:self->_deviceBasedVPP forKey:@"deviceBasedVPP"];
  [a3 encodeObject:self->_genre forKey:@"genre"];
  [a3 encodeInt64:self->_genreIdentifier forKey:@"genreIdentifier"];
  [a3 encodeObject:self->_subgenres forKey:@"subgenres"];
  [a3 encodeInt64:self->_ratingRank forKey:@"ratingRank"];
  [a3 encodeObject:self->_ratingLabel forKey:@"ratingLabel"];
  [a3 encodeObject:self->_sourceApp forKey:@"sourceApp"];
  [a3 encodeBool:self->_purchasedRedownload forKey:@"purchasedRedownload"];
  [a3 encodeBool:self->_gameCenterEnabled forKey:@"gameCenterEnabled"];
  [a3 encodeBool:self->_gameCenterEverEnabled forKey:@"gameCenterEverEnabled"];
  distributorInfo = self->_distributorInfo;

  [a3 encodeObject:distributorInfo forKey:@"distributorInfo"];
}

- (LSiTunesMetadata)initWithCoder:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = LSiTunesMetadata;
  v4 = [(LSiTunesMetadata *)&v38 init];
  if (v4)
  {
    v4->_storeItemIdentifier = [a3 decodeInt64ForKey:@"storeItemIdentifier"];
    v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v4->_artistName;
    v4->_artistName = v5;

    v7 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v4->_itemName;
    v4->_itemName = v7;

    v4->_versionIdentifier = [a3 decodeInt64ForKey:@"versionIdentifier"];
    v4->_betaVersionIdentifier = [a3 decodeInt64ForKey:@"betaVersionIdentifier"];
    v4->_storeFront = [a3 decodeInt64ForKey:@"storeFront"];
    v9 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v4->_storeCohort;
    v4->_storeCohort = v9;

    v11 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v4->_variantID;
    v4->_variantID = v11;

    v4->_deviceBasedVPP = [a3 decodeBoolForKey:@"deviceBasedVPP"];
    v13 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v4->_genre;
    v4->_genre = v13;

    v4->_genreIdentifier = [a3 decodeInt64ForKey:@"genreIdentifier"];
    v15 = XNSGetPropertyListClasses();
    v16 = [a3 ls_decodeObjectOfClasses:v15 forKey:@"subgenres"];

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
      [a3 failWithError:subgenres];
    }

    v4->_ratingRank = [a3 decodeInt64ForKey:@"ratingRank"];
    v26 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v4->_ratingLabel;
    v4->_ratingLabel = v26;

    v28 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"sourceApp"];
    sourceApp = v4->_sourceApp;
    v4->_sourceApp = v28;

    v4->_purchasedRedownload = [a3 decodeBoolForKey:@"purchasedRedownload"];
    v4->_gameCenterEnabled = [a3 decodeBoolForKey:@"gameCenterEnabled"];
    v4->_gameCenterEverEnabled = [a3 decodeBoolForKey:@"gameCenterEverEnabled"];
    v30 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"distributorInfo"];
    distributorInfo = v4->_distributorInfo;
    v4->_distributorInfo = v30;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)storeCohortWithError:(id *)a3
{
  v4 = self->_storeCohort;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "[LSiTunesMetadata storeCohortWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSiTunesMetadata.mm", 259);
    if (a3)
    {
      v5 = v5;
      *a3 = v5;
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
    v5 = [v3 domain];
    if ([v5 isEqual:@"LSApplicationWorkspaceErrorDomain"])
    {
      v6 = [v4 code];

      if (v6 == 113)
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
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Because a caller called the deprecated method storeCohort, the error %@ is being dropped on the floor. That caller should use storeCohortWithError: instead.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end