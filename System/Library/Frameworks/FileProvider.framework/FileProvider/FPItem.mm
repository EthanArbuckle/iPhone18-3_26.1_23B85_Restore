@interface FPItem
+ (id)allUbiquitousResourceKeys;
+ (id)appLibraryFromContainerItem:(id)item documentsItem:(id)documentsItem;
+ (id)archivePlaceholderForItem:(id)item underParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format;
+ (id)fp_minimalAttributesForEviction;
+ (id)fp_minimalAttributesForEvictionPriority;
+ (id)fp_queryFetchAttributes;
+ (id)generatePlaceholderIdentifier;
+ (id)generatePlaceholderIdentifierWithOriginalID:(id)d;
+ (id)genericArchivePlaceholderUnderParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format;
+ (id)placeholderWithCopyOfExistingItem:(id)item lastUsageUpdatePolicy:(unint64_t)policy underParent:(id)parent inProviderDomainID:(id)d;
+ (id)placeholderWithName:(id)name contentType:(id)type contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
+ (id)placeholderWithName:(id)name isFolder:(BOOL)folder contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
+ (id)placeholderWithName:(id)name typeIdentifier:(id)identifier contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
+ (id)temporaryPlaceholderFromItem:(id)item;
- (BOOL)fp_isCloudDocsContainer;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (BOOL)isExternalDownloadPlaceholder;
- (BOOL)isFlattenedPackage;
- (BOOL)isFolder;
- (BOOL)isKnownByTheProvider;
- (BOOL)isPackage;
- (BOOL)isPinnedSubitem;
- (BOOL)isValidAppLibrary;
- (BOOL)isValidContainerForAppLibrary;
- (FPItem)initWithCoder:(id)coder;
- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename contentType:(id)type;
- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename isDirectory:(BOOL)directory;
- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename typeIdentifier:(id)typeIdentifier;
- (FPItem)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier parentItemIdentifier:(id)parentItemIdentifier filename:(id)filename contentType:(id)type;
- (FPItem)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier parentItemIdentifier:(id)parentItemIdentifier filename:(id)filename isDirectory:(BOOL)directory;
- (FPItem)initWithSearchableItem:(id)item;
- (FPItem)initWithVendorItem:(id)item provider:(id)provider domain:(id)domain spotlightDomainIdentifier:(id)identifier extensionCapabilities:(unint64_t)capabilities useFPFS:(BOOL)s;
- (FPItemID)formerItemID;
- (FPItemID)itemID;
- (FPItemID)parentFormerItemID;
- (FPItemID)parentItemID;
- (FPItemID)providerItemID;
- (FPItemID)providerParentItemID;
- (NSArray)itemDecorations;
- (NSData)tagData;
- (NSData)versionIdentifier;
- (NSDictionary)resolvedUserInfo;
- (NSError)downloadingError;
- (NSError)uploadingError;
- (NSFileProviderItemVersion)itemVersion;
- (NSPersonNameComponents)mostRecentEditorNameComponents;
- (NSPersonNameComponents)ownerNameComponents;
- (NSProgress)copyingProgress;
- (NSProgress)downloadingProgress;
- (NSProgress)progress;
- (NSProgress)uploadingProgress;
- (NSString)displayName;
- (NSString)providerIDForDeduplication;
- (NSString)providerItemIdentifier;
- (NSString)providerParentItemIdentifier;
- (NSString)typeIdentifier;
- (NSURL)fileURL;
- (id)_downloadingStatus;
- (id)_sharedByDecorationType;
- (id)copyAsPending;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreSpotlightIdentifier;
- (id)descriptionForFPCTL:(BOOL)l;
- (id)fieldDifferencesWithItem:(id)item onlyMetadata:(BOOL)metadata;
- (id)fp_valueForKeyPath:(id)path;
- (id)humanReadableCapabilities;
- (id)scopedSearchQueryUnderItem;
- (id)strippedCopy;
- (id)toSearchableItem;
- (id)ubiquitousResourceKeysDiffAgainstItem:(id)item;
- (int64_t)localizedStandardTagsCompare:(id)compare;
- (unint64_t)folderType;
- (unint64_t)hash;
- (void)_coreSpotlightAttributeForKey:(id)key;
- (void)_evaluateTypes:(id)types;
- (void)encodeWithCoder:(id)coder;
- (void)itemIsSupportedSearchScopeWithCachePolicy:(unint64_t)policy completionHandler:(id)handler;
- (void)overrideFields:(id)fields ofItem:(id)item;
- (void)setContentType:(id)type;
- (void)setFileURL:(id)l;
- (void)setFilename:(id)filename;
- (void)setItemIdentifier:(id)identifier;
- (void)setProviderDomainID:(id)d;
- (void)setProviderID:(id)d;
- (void)setTagData:(id)data;
- (void)setTypeIdentifier:(id)identifier;
@end

@implementation FPItem

- (BOOL)isPackage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_typesEvaluated)
  {
    isPackage = selfCopy->_isPackage;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = selfCopy->_contentType;
    objc_sync_exit(selfCopy);

    [(FPItem *)selfCopy _evaluateTypes:v4];
    isPackage = selfCopy->_isPackage;
    selfCopy = v4;
  }

  return isPackage;
}

- (NSURL)fileURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fileURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSError)uploadingError
{
  uploadingError = self->_uploadingError;
  if (uploadingError)
  {
    v3 = uploadingError;
  }

  else if (self->_uploading && self->_offline)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1004 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (FPItemID)itemID
{
  v2 = [[FPItemID alloc] initWithProviderID:self->_providerID domainIdentifier:self->_domainIdentifier itemIdentifier:self->_itemIdentifier];

  return v2;
}

- (BOOL)isFlattenedPackage
{
  filename = [(FPItem *)self filename];
  pathExtension = [filename pathExtension];
  v4 = [pathExtension isEqualToString:@"pkgf"];

  return v4;
}

- (BOOL)isFolder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_typesEvaluated)
  {
    isFolder = selfCopy->_isFolder;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = selfCopy->_contentType;
    objc_sync_exit(selfCopy);

    [(FPItem *)selfCopy _evaluateTypes:v4];
    isFolder = selfCopy->_isFolder;
    selfCopy = v4;
  }

  return isFolder;
}

- (NSError)downloadingError
{
  downloadingError = self->_downloadingError;
  if (downloadingError)
  {
    v3 = downloadingError;
  }

  else if (self->_downloading && self->_offline)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-1004 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSFileProviderItemVersion)itemVersion
{
  itemVersion = self->_itemVersion;
  if (itemVersion)
  {
    v3 = itemVersion;
  }

  else
  {
    v3 = objc_alloc_init(NSFileProviderItemVersion);
  }

  return v3;
}

- (BOOL)isBusy
{
  creationDate = [(FPItem *)self creationDate];
  [creationDate timeIntervalSince1970];
  is_busy_date = fpfs_is_busy_date(v3);

  return is_busy_date;
}

- (NSString)typeIdentifier
{
  contentType = [(FPItem *)self contentType];
  identifier = [contentType identifier];

  return identifier;
}

+ (id)fp_queryFetchAttributes
{
  v93 = *MEMORY[0x1E69E9840];
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v2 = getMDItemFilenameSymbolLoc_ptr;
  v90 = getMDItemFilenameSymbolLoc_ptr;
  if (!getMDItemFilenameSymbolLoc_ptr)
  {
    v3 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v3, "MDItemFilename");
    getMDItemFilenameSymbolLoc_ptr = v88[3];
    v2 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v2)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v4 = *v2;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v5 = getMDItemDisplayNameSymbolLoc_ptr;
  v90 = getMDItemDisplayNameSymbolLoc_ptr;
  v91[0] = v4;
  if (!getMDItemDisplayNameSymbolLoc_ptr)
  {
    v6 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v6, "MDItemDisplayName");
    getMDItemDisplayNameSymbolLoc_ptr = v88[3];
    v5 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v5)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v7 = *v5;
  v91[1] = v7;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v8 = getMDItemContentTypeSymbolLoc_ptr;
  v90 = getMDItemContentTypeSymbolLoc_ptr;
  if (!getMDItemContentTypeSymbolLoc_ptr)
  {
    v9 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v9, "MDItemContentType");
    getMDItemContentTypeSymbolLoc_ptr = v88[3];
    v8 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v8)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v10 = *v8;
  v91[2] = v10;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v11 = getMDItemContentCreationDateSymbolLoc_ptr;
  v90 = getMDItemContentCreationDateSymbolLoc_ptr;
  if (!getMDItemContentCreationDateSymbolLoc_ptr)
  {
    v12 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v12, "MDItemContentCreationDate");
    getMDItemContentCreationDateSymbolLoc_ptr = v88[3];
    v11 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v11)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v13 = *v11;
  v91[3] = v13;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v14 = getMDItemContentModificationDateSymbolLoc_ptr;
  v90 = getMDItemContentModificationDateSymbolLoc_ptr;
  if (!getMDItemContentModificationDateSymbolLoc_ptr)
  {
    v15 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v15, "MDItemContentModificationDate");
    getMDItemContentModificationDateSymbolLoc_ptr = v88[3];
    v14 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v14)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v83 = *v14;
  v91[4] = v83;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v16 = getMDItemUserTagsSymbolLoc_ptr;
  v90 = getMDItemUserTagsSymbolLoc_ptr;
  if (!getMDItemUserTagsSymbolLoc_ptr)
  {
    v17 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v17, "MDItemUserTags");
    getMDItemUserTagsSymbolLoc_ptr = v88[3];
    v16 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v16)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v80 = v10;
  v81 = v13;
  v78 = v4;
  v79 = v7;
  v82 = *v16;
  v91[5] = v82;
  v91[6] = @"_kMDItemUserTags";
  v86 = getMDItemFileProviderDomainIdentifier();
  v91[7] = v86;
  v91[8] = @"FPTagColors";
  v91[9] = @"FPFilename";
  v85 = getMDItemLastUsedDate();
  v91[10] = v85;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v18 = getMDItemFavoriteRankSymbolLoc_ptr;
  v90 = getMDItemFavoriteRankSymbolLoc_ptr;
  if (!getMDItemFavoriteRankSymbolLoc_ptr)
  {
    v19 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v19, "MDItemFavoriteRank");
    getMDItemFavoriteRankSymbolLoc_ptr = v88[3];
    v18 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v18)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v20 = *v18;
  v91[11] = v20;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v21 = getMDItemIsUploadedSymbolLoc_ptr;
  v90 = getMDItemIsUploadedSymbolLoc_ptr;
  if (!getMDItemIsUploadedSymbolLoc_ptr)
  {
    v22 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v22, "MDItemIsUploaded");
    getMDItemIsUploadedSymbolLoc_ptr = v88[3];
    v21 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v21)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v23 = *v21;
  v91[12] = v23;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v24 = getMDItemIsUploadingSymbolLoc_ptr;
  v90 = getMDItemIsUploadingSymbolLoc_ptr;
  if (!getMDItemIsUploadingSymbolLoc_ptr)
  {
    v25 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v25, "MDItemIsUploading");
    getMDItemIsUploadingSymbolLoc_ptr = v88[3];
    v24 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v24)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v26 = *v24;
  v91[13] = v26;
  v91[14] = @"FPUploadingError";
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v27 = getMDItemDownloadingStatusSymbolLoc_ptr;
  v90 = getMDItemDownloadingStatusSymbolLoc_ptr;
  if (!getMDItemDownloadingStatusSymbolLoc_ptr)
  {
    v28 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v28, "MDItemDownloadingStatus");
    getMDItemDownloadingStatusSymbolLoc_ptr = v88[3];
    v27 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v27)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v29 = *v27;
  v91[15] = v29;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v30 = getMDItemVersionIdentifierSymbolLoc_ptr;
  v90 = getMDItemVersionIdentifierSymbolLoc_ptr;
  if (!getMDItemVersionIdentifierSymbolLoc_ptr)
  {
    v31 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v31, "MDItemVersionIdentifier");
    getMDItemVersionIdentifierSymbolLoc_ptr = v88[3];
    v30 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v30)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v77 = *v30;
  v91[16] = v77;
  v91[17] = @"FPDownloaded";
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v32 = getMDItemIsDownloadingSymbolLoc_ptr;
  v90 = getMDItemIsDownloadingSymbolLoc_ptr;
  if (!getMDItemIsDownloadingSymbolLoc_ptr)
  {
    v33 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v33, "MDItemIsDownloading");
    getMDItemIsDownloadingSymbolLoc_ptr = v88[3];
    v32 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v32)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v76 = *v32;
  v91[18] = v76;
  v91[19] = @"FPMostRecentVersionDownloaded";
  v91[20] = @"FPDownloadingError";
  v91[21] = @"FPUserInfoValues";
  v91[22] = @"FPUserInfoKeys";
  v91[23] = @"FPCapabilities";
  v91[24] = @"FPSharingCurrentUserPermissions";
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v34 = getMDItemUserOwnedSymbolLoc_ptr;
  v90 = getMDItemUserOwnedSymbolLoc_ptr;
  if (!getMDItemUserOwnedSymbolLoc_ptr)
  {
    v35 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v35, "MDItemUserOwned");
    getMDItemUserOwnedSymbolLoc_ptr = v88[3];
    v34 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v34)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v73 = v26;
  v74 = v29;
  v71 = v20;
  v72 = v23;
  v75 = *v34;
  v91[25] = v75;
  v84 = getMDItemFileSize();
  v91[26] = v84;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v36 = getMDItemSubItemCountSymbolLoc_ptr;
  v90 = getMDItemSubItemCountSymbolLoc_ptr;
  if (!getMDItemSubItemCountSymbolLoc_ptr)
  {
    v37 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v37, "MDItemSubItemCount");
    getMDItemSubItemCountSymbolLoc_ptr = v88[3];
    v36 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v36)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v38 = *v36;
  v91[27] = v38;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v39 = getMDItemIsSharedSymbolLoc_ptr_0;
  v90 = getMDItemIsSharedSymbolLoc_ptr_0;
  if (!getMDItemIsSharedSymbolLoc_ptr_0)
  {
    v40 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v40, "MDItemIsShared");
    getMDItemIsSharedSymbolLoc_ptr_0 = v88[3];
    v39 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v39)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v41 = *v39;
  v91[28] = v41;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v42 = getMDItemOwnerNameSymbolLoc_ptr_0;
  v90 = getMDItemOwnerNameSymbolLoc_ptr_0;
  if (!getMDItemOwnerNameSymbolLoc_ptr_0)
  {
    v43 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v43, "MDItemOwnerName");
    getMDItemOwnerNameSymbolLoc_ptr_0 = v88[3];
    v42 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v42)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v44 = *v42;
  v91[29] = v44;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v45 = getMDItemLastEditorNameSymbolLoc_ptr;
  v90 = getMDItemLastEditorNameSymbolLoc_ptr;
  if (!getMDItemLastEditorNameSymbolLoc_ptr)
  {
    v46 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v46, "MDItemLastEditorName");
    getMDItemLastEditorNameSymbolLoc_ptr = v88[3];
    v45 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v45)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v47 = *v45;
  v91[30] = v47;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v48 = getMDItemIsTrashedSymbolLoc_ptr;
  v90 = getMDItemIsTrashedSymbolLoc_ptr;
  if (!getMDItemIsTrashedSymbolLoc_ptr)
  {
    v49 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v49, "MDItemIsTrashed");
    getMDItemIsTrashedSymbolLoc_ptr = v88[3];
    v48 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v48)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v50 = *v48;
  v91[31] = v50;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v51 = getMDItemContentURLSymbolLoc_ptr;
  v90 = getMDItemContentURLSymbolLoc_ptr;
  if (!getMDItemContentURLSymbolLoc_ptr)
  {
    v52 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v52, "MDItemContentURL");
    getMDItemContentURLSymbolLoc_ptr = v88[3];
    v51 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v51)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v69 = v38;
  v70 = v41;
  v53 = *v51;
  v91[32] = v53;
  v54 = getMDItemFileItemID();
  v91[33] = v54;
  v55 = getMDItemFileProviderID();
  v91[34] = v55;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v56 = getMDItemParentFileItemIDSymbolLoc_ptr;
  v90 = getMDItemParentFileItemIDSymbolLoc_ptr;
  if (!getMDItemParentFileItemIDSymbolLoc_ptr)
  {
    v57 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v57, "MDItemParentFileItemID");
    getMDItemParentFileItemIDSymbolLoc_ptr = v88[3];
    v56 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v56)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v58 = *v56;
  v91[35] = v58;
  v91[36] = @"FPAppContainerBundleID";
  v91[37] = @"FPCloudContainerID";
  v91[38] = @"FPIsContainer";
  v91[39] = @"FPIsContainerPristine";
  v91[40] = @"FPIsUbiquitous";
  v91[41] = @"FPParentFileItemID";
  v91[42] = @"FPLastModifiedByCurrentUser";
  v91[43] = @"FPEvictable";
  v91[44] = @"FPItemIsPinned";
  v91[45] = @"FPItemIsInPinnedFolder";
  v91[46] = @"FPIsTopLevelSharedItem";
  v91[47] = @"FPCollaborationIdentifier";
  v91[48] = @"FPParentDomainID";
  v91[49] = @"FPItemVersion";
  v91[50] = @"FPItemIsRecursivelyDownloaded";
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v59 = getMDItemDocumentIdentifierSymbolLoc_ptr;
  v90 = getMDItemDocumentIdentifierSymbolLoc_ptr;
  if (!getMDItemDocumentIdentifierSymbolLoc_ptr)
  {
    v60 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v60, "MDItemDocumentIdentifier");
    getMDItemDocumentIdentifierSymbolLoc_ptr = v88[3];
    v59 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v59)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v61 = *v59;
  v91[51] = v61;
  v91[52] = @"com_apple_mobilesms_syndicationContentType";
  v91[53] = @"FPOnDiskIdentifier";
  v91[54] = @"com.apple.synapse:DocumentAttributes";
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v62 = getMDItemAttributeChangeDateSymbolLoc_ptr;
  v90 = getMDItemAttributeChangeDateSymbolLoc_ptr;
  if (!getMDItemAttributeChangeDateSymbolLoc_ptr)
  {
    v63 = CoreSpotlightLibrary_2();
    v88[3] = dlsym(v63, "MDItemAttributeChangeDate");
    getMDItemAttributeChangeDateSymbolLoc_ptr = v88[3];
    v62 = v88[3];
  }

  _Block_object_dispose(&v87, 8);
  if (!v62)
  {
    +[FPItem(CSSearchableItem) fp_queryFetchAttributes];
  }

  v92 = *v62;
  v64 = MEMORY[0x1E695DEC8];
  v65 = v92;
  v66 = [v64 arrayWithObjects:v91 count:56];

  v67 = *MEMORY[0x1E69E9840];

  return v66;
}

- (NSArray)itemDecorations
{
  providerID = [(FPItem *)self providerID];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  decorations = self->_decorations;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __25__FPItem_itemDecorations__block_invoke;
  v17 = &unk_1E793A128;
  v5 = providerID;
  v18 = v5;
  v19 = v20;
  v6 = [(NSArray *)decorations fp_map:&v14];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  if ([(FPItem *)self isShared])
  {
    _sharedByDecorationType = [(FPItem *)self _sharedByDecorationType];
    v12 = [FPItemDecoration decorationWithIdentifier:_sharedByDecorationType bundleIdentifier:@"com.apple.FileProvider"];

    [v10 addObject:v12];
  }

  _Block_object_dispose(v20, 8);

  return v10;
}

- (NSString)providerItemIdentifier
{
  providerItemID = [(FPItem *)self providerItemID];
  identifier = [providerItemID identifier];

  return identifier;
}

- (FPItemID)providerItemID
{
  itemID = [(FPItem *)self itemID];
  isDiskIdentifier = [itemID isDiskIdentifier];

  if (isDiskIdentifier)
  {
    [(FPItem *)self formerItemID];
  }

  else
  {
    [(FPItem *)self itemID];
  }
  v5 = ;

  return v5;
}

- (FPItemID)formerItemID
{
  if (self->_formerIdentifier)
  {
    v3 = [[FPItemID alloc] initWithProviderID:self->_providerID domainIdentifier:self->_domainIdentifier itemIdentifier:self->_formerIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)providerIDForDeduplication
{
  providerID = [(FPItem *)self providerID];
  if ([providerID isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
    v3 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  }

  else if ([providerID isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"])
  {
    v3 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  }

  else
  {
    v3 = providerID;
  }

  return v3;
}

- (NSProgress)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progress = selfCopy->_progress;
  if (progress)
  {
    v4 = progress;
    objc_sync_exit(selfCopy);
    v5 = selfCopy;
  }

  else
  {
    objc_sync_exit(selfCopy);

    v5 = +[FPProgressManager defaultManager];
    if (selfCopy->_offline)
    {
      v6 = 0;
    }

    else
    {
      if (selfCopy->_downloading || [(FPItem *)selfCopy isExternalDownloadPlaceholder])
      {
        v7 = [v5 downloadProgressForItem:selfCopy];
      }

      else if (selfCopy->_uploading)
      {
        v7 = [v5 uploadProgressForItem:selfCopy];
      }

      else
      {
        v7 = [v5 copyProgressForItem:selfCopy];
      }

      v6 = v7;
    }

    v8 = selfCopy;
    objc_sync_enter(v8);
    v9 = selfCopy->_progress;
    if (!v9)
    {
      objc_storeStrong(&selfCopy->_progress, v6);
      v9 = selfCopy->_progress;
    }

    v4 = v9;
    objc_sync_exit(v8);
  }

  return v4;
}

- (BOOL)isExternalDownloadPlaceholder
{
  typeIdentifier = [(FPItem *)self typeIdentifier];
  v3 = [typeIdentifier isEqualToString:@"com.apple.safari.download"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_providerID hash];
  v4 = [(NSString *)self->_domainIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_itemIdentifier hash];
}

- (NSProgress)copyingProgress
{
  progress = [(FPItem *)self progress];
  if ([(NSProgress *)progress fp_isAccountedAsCopyProgress])
  {
    v3 = progress;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSProgress)downloadingProgress
{
  if (self->_downloading || [(FPItem *)self isExternalDownloadPlaceholder])
  {
    progress = [(FPItem *)self progress];
  }

  else
  {
    progress = 0;
  }

  return progress;
}

- (NSProgress)uploadingProgress
{
  if (self->_uploading)
  {
    progress = [(FPItem *)self progress];
  }

  else
  {
    progress = 0;
  }

  return progress;
}

- (unint64_t)folderType
{
  if (![(FPItem *)self isFolder])
  {
    return 0;
  }

  result = self->_folderType;
  if (!result)
  {
    filename = [(FPItem *)self filename];
    parentItemIdentifier = [(FPItem *)self parentItemIdentifier];
    providerID = [(FPItem *)self providerID];
    detachedRootLogicalURL = [(FPItem *)self detachedRootLogicalURL];
    fileURL = detachedRootLogicalURL;
    if (!detachedRootLogicalURL)
    {
      fileURL = [(FPItem *)self fileURL];
    }

    isContainer = [(FPItem *)self isContainer];
    cloudContainerIdentifier = [(FPItem *)self cloudContainerIdentifier];
    self->_folderType = CalculateFolderType(filename, parentItemIdentifier, providerID, fileURL, isContainer, cloudContainerIdentifier);

    if (!detachedRootLogicalURL)
    {
    }

    return self->_folderType;
  }

  return result;
}

- (BOOL)isPinnedSubitem
{
  isInPinnedFolder = [(FPItem *)self isInPinnedFolder];
  if (isInPinnedFolder)
  {
    LOBYTE(isInPinnedFolder) = ![(FPItem *)self isPinned];
  }

  return isInPinnedFolder;
}

- (FPItemID)parentItemID
{
  v3 = [FPItemID alloc];
  fp_parentDomainIdentifier = self->_fp_parentDomainIdentifier;
  if (!fp_parentDomainIdentifier)
  {
    fp_parentDomainIdentifier = self->_domainIdentifier;
  }

  v5 = [(FPItemID *)v3 initWithProviderID:self->_providerID domainIdentifier:fp_parentDomainIdentifier itemIdentifier:self->_parentItemIdentifier];

  return v5;
}

- (id)humanReadableCapabilities
{
  capabilities = self->_capabilities;
  v4 = MEMORY[0x1E696AEC0];
  isReadable = [(FPItem *)self isReadable];
  isWritable = [(FPItem *)self isWritable];
  v7 = 83;
  v8 = 45;
  if ((capabilities & 0x2000000) == 0)
  {
    v7 = 45;
  }

  v9 = 120;
  if ((capabilities & 0x80) == 0)
  {
    v9 = 45;
  }

  v27 = v9;
  v28 = v7;
  v10 = 85;
  if ((capabilities & 0x8000000) == 0)
  {
    v10 = 45;
  }

  v11 = 80;
  if ((capabilities & 0x10000000) == 0)
  {
    v11 = 45;
  }

  v25 = v11;
  v26 = v10;
  v12 = 84;
  if ((capabilities & 0x10) == 0)
  {
    v12 = 45;
  }

  v13 = 116;
  if ((capabilities & 0x20000000) == 0)
  {
    v13 = 45;
  }

  v23 = v13;
  v24 = v12;
  v14 = 101;
  if ((capabilities & 0x40) == 0)
  {
    v14 = 45;
  }

  v15 = 102;
  if ((capabilities & 8) == 0)
  {
    v15 = 45;
  }

  v21 = v15;
  v22 = v14;
  v16 = 112;
  if ((capabilities & 4) == 0)
  {
    v16 = 45;
  }

  v17 = 100;
  if ((capabilities & 0x20) == 0)
  {
    v17 = 45;
  }

  v20 = v16;
  v18 = 119;
  if (!isWritable)
  {
    v18 = 45;
  }

  if (isReadable)
  {
    v8 = 114;
  }

  return [v4 stringWithFormat:@"%c%c%c%c%c%c%c%c%c%c%c%c", v8, v18, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28];
}

- (NSPersonNameComponents)ownerNameComponents
{
  if (!self->_ownerNameComponents && [(NSString *)self->_preformattedOwnerName length])
  {
    v3 = objc_opt_new();
    v4 = [v3 personNameComponentsFromString:self->_preformattedOwnerName];
    ownerNameComponents = self->_ownerNameComponents;
    self->_ownerNameComponents = v4;
  }

  v6 = self->_ownerNameComponents;

  return v6;
}

- (NSPersonNameComponents)mostRecentEditorNameComponents
{
  if (!self->_mostRecentEditorNameComponents && [(NSString *)self->_preformattedMostRecentEditorName length])
  {
    v3 = objc_opt_new();
    v4 = [v3 personNameComponentsFromString:self->_preformattedMostRecentEditorName];
    mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
    self->_mostRecentEditorNameComponents = v4;
  }

  v6 = self->_mostRecentEditorNameComponents;

  return v6;
}

- (FPItem)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier parentItemIdentifier:(id)parentItemIdentifier filename:(id)filename contentType:(id)type
{
  dCopy = d;
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  parentItemIdentifierCopy = parentItemIdentifier;
  filenameCopy = filename;
  typeCopy = type;
  v29.receiver = self;
  v29.super_class = FPItem;
  v18 = [(FPItem *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_providerID, d);
    objc_storeStrong(&v19->_domainIdentifier, identifier);
    objc_storeStrong(&v19->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v19->_parentItemIdentifier, parentItemIdentifier);
    if (@"NSFileProviderTrashContainerItemIdentifier" == parentItemIdentifierCopy)
    {
      v19->_trashed = 1;
    }

    objc_storeStrong(&v19->_filename, filename);
    v19->_capabilities = 3;
    v19->_contentPolicy = 0;
    v20 = [(NSString *)v19->_filename hasPrefix:@"."];
    v21 = 22;
    if (v20)
    {
      v21 = 30;
    }

    v19->_fileSystemFlags = v21;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [FPItem initWithProviderID:a2 domainIdentifier:v19 itemIdentifier:? parentItemIdentifier:? filename:? contentType:?];
      }
    }

    [(FPItem *)v19 setContentType:typeCopy, a2, itemIdentifierCopy, identifierCopy, dCopy];
    if (!v19->_domainIdentifier)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v25 object:v19 file:@"FPItem.m" lineNumber:496 description:@"domain identifier must not be nil"];
    }

    [(FPItem *)v19 setAllowsContextualMenuDownloadEntry:1];
  }

  return v19;
}

- (FPItem)initWithProviderID:(id)d domainIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier parentItemIdentifier:(id)parentItemIdentifier filename:(id)filename isDirectory:(BOOL)directory
{
  v8 = MEMORY[0x1E6982DC8];
  if (!directory)
  {
    v8 = MEMORY[0x1E6982E48];
  }

  return [(FPItem *)self initWithProviderID:d domainIdentifier:identifier itemIdentifier:itemIdentifier parentItemIdentifier:parentItemIdentifier filename:filename contentType:*v8];
}

- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename contentType:(id)type
{
  typeCopy = type;
  filenameCopy = filename;
  itemIdentifierCopy = itemIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  v19 = [(FPItem *)self initWithProviderID:fp_toProviderID domainIdentifier:fp_toDomainIdentifier itemIdentifier:identifierCopy parentItemIdentifier:itemIdentifierCopy filename:filenameCopy contentType:typeCopy];
  return v19;
}

- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename typeIdentifier:(id)typeIdentifier
{
  v12 = MEMORY[0x1E6982C40];
  filenameCopy = filename;
  itemIdentifierCopy = itemIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  v17 = [v12 fp_cachedTypeWithIdentifier:typeIdentifier];
  v18 = [(FPItem *)self initWithProviderDomainID:dCopy itemIdentifier:identifierCopy parentItemIdentifier:itemIdentifierCopy filename:filenameCopy contentType:v17];

  return v18;
}

- (FPItem)initWithProviderDomainID:(id)d itemIdentifier:(id)identifier parentItemIdentifier:(id)itemIdentifier filename:(id)filename isDirectory:(BOOL)directory
{
  v7 = MEMORY[0x1E6982DC8];
  if (!directory)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [(FPItem *)self initWithProviderDomainID:d itemIdentifier:identifier parentItemIdentifier:itemIdentifier filename:filename contentType:*v7];
}

- (FPItem)initWithVendorItem:(id)item provider:(id)provider domain:(id)domain spotlightDomainIdentifier:(id)identifier extensionCapabilities:(unint64_t)capabilities useFPFS:(BOOL)s
{
  sCopy = s;
  capabilitiesCopy = capabilities;
  v235 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  providerCopy = provider;
  domainCopy = domain;
  obj = identifier;
  identifierCopy = identifier;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = [itemCopy conformsToProtocol:&unk_1F1FCDF20];
  if (v19)
  {
    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
    {
      providerIdentifier = [itemCopy providerIdentifier];

      if (isKindOfClass)
      {
        goto LABEL_9;
      }
    }

    else
    {
      providerIdentifier = providerCopy;
    }

    if (objc_opt_respondsToSelector())
    {
LABEL_9:
      fp_domainIdentifier = [itemCopy fp_domainIdentifier];
      goto LABEL_11;
    }
  }

  else
  {
    providerIdentifier = providerCopy;
  }

  fp_domainIdentifier = domainCopy;
LABEL_11:
  v22 = fp_domainIdentifier;

  if (providerIdentifier)
  {
    v223 = v19;
    v227 = v22;
    parentItemIdentifier = [itemCopy parentItemIdentifier];
    itemIdentifier = [itemCopy itemIdentifier];
    v25 = itemIdentifier;
    if (sCopy)
    {
      v26 = @"NSFileProviderRootContainerItemIdentifier";
      if (([itemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) != 0 || (v26 = @"NSFileProviderTrashContainerItemIdentifier", objc_msgSend(v25, "isEqualToString:", @"NSFileProviderTrashContainerItemIdentifier")))
      {
        v27 = v26;

        parentItemIdentifier = v27;
      }
    }

    v225 = identifierCopy;
    v226 = parentItemIdentifier;
    v222 = a2;
    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
    {
      itemVersion = [itemCopy itemVersion];
      p_itemVersion = &self->_itemVersion;
      itemVersion = self->_itemVersion;
      self->_itemVersion = itemVersion;

      if (self->_itemVersion)
      {
        goto LABEL_25;
      }

      if (isKindOfClass)
      {
LABEL_24:
        versionIdentifier = [itemCopy versionIdentifier];
        v34 = [NSFileProviderItemVersion alloc];
        data = [MEMORY[0x1E695DEF0] data];
        v36 = [(NSFileProviderItemVersion *)v34 initWithContentVersion:versionIdentifier metadataVersion:data];
        v37 = *p_itemVersion;
        *p_itemVersion = v36;

LABEL_25:
        filename = [itemCopy filename];
        if (isKindOfClass)
        {
LABEL_29:
          contentType = [itemCopy contentType];
          objc_opt_class();
          v40 = objc_opt_isKindOfClass();

          if (v40)
          {
            contentType2 = [itemCopy contentType];
            goto LABEL_36;
          }

          if (isKindOfClass)
          {
LABEL_33:
            contentType2 = [itemCopy typeIdentifier];

            if (contentType2)
            {
              v42 = MEMORY[0x1E6982C40];
              typeIdentifier = [itemCopy typeIdentifier];
              contentType2 = [v42 fp_cachedTypeWithIdentifier:typeIdentifier];
            }

LABEL_36:
            if (!-[__CFString length](filename, "length") && (dyld_program_sdk_at_least() & 1) == 0 && [v25 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
            {
              v44 = fp_current_or_default_log();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AAAE1000, v44, OS_LOG_TYPE_DEFAULT, "[WARNING] Working around missing file name for root item of legacy provider", buf, 2u);
              }

              filename = @"Root";
            }

            if (!contentType2)
            {
              if (dyld_program_sdk_at_least())
              {
                contentType2 = 0;
              }

              else
              {
                v45 = fp_current_or_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v234 = v25;
                  _os_log_impl(&dword_1AAAE1000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] Working around missing type identifier of legacy provider for item %@", buf, 0xCu);
                }

                contentType2 = *MEMORY[0x1E6982E48];
              }
            }

            if ([providerIdentifier length] && objc_msgSend(v25, "length") && -[__CFString length](filename, "length") && contentType2)
            {
              if (!sCopy || *p_itemVersion)
              {
                v46 = [(FPItem *)self initWithProviderID:providerIdentifier domainIdentifier:v227 itemIdentifier:v25 parentItemIdentifier:v226 filename:filename contentType:contentType2];

                if (!v46)
                {
LABEL_371:
                  self = v46;
                  selfCopy = self;
                  identifierCopy = v225;
LABEL_63:

                  v22 = v227;
                  goto LABEL_64;
                }

                v221 = capabilitiesCopy;
                if (isKindOfClass)
                {
                  v46->_capabilities = [itemCopy capabilities];
                  v47 = v223;
                  v48 = sCopy;
                }

                else
                {
                  if (sCopy)
                  {
                    capabilities = 67;
                  }

                  else
                  {
                    capabilities = 3;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    capabilities = [itemCopy capabilities];
                  }

                  v46->_capabilities = capabilities;
                  v47 = v223;
                  v48 = sCopy;
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    documentSize = v46->_documentSize;
                    v46->_documentSize = 0;

                    goto LABEL_75;
                  }
                }

                documentSize = [itemCopy documentSize];
                v63 = v46->_documentSize;
                v46->_documentSize = documentSize;

                if (isKindOfClass)
                {
                  childItemCount = [itemCopy childItemCount];
                  childItemCount = v46->_childItemCount;
                  v46->_childItemCount = childItemCount;

                  goto LABEL_79;
                }

LABEL_75:
                if (objc_opt_respondsToSelector())
                {
                  childItemCount2 = [itemCopy childItemCount];
                }

                else
                {
                  childItemCount2 = 0;
                }

                v68 = v46->_childItemCount;
                v46->_childItemCount = childItemCount2;

                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  date = [MEMORY[0x1E695DF00] date];
                  creationDate = v46->_creationDate;
                  v46->_creationDate = date;

                  v46->_unsupportedFields |= 0x40uLL;
LABEL_82:
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    date2 = [MEMORY[0x1E695DF00] date];
                    contentModificationDate = v46->_contentModificationDate;
                    v46->_contentModificationDate = date2;

                    v46->_unsupportedFields |= 0x80uLL;
                    if (v47)
                    {
LABEL_87:
                      if (objc_opt_respondsToSelector())
                      {
                        formerIdentifier = [itemCopy formerIdentifier];
                      }

                      else
                      {
                        formerIdentifier = 0;
                      }

                      formerIdentifier = v46->_formerIdentifier;
                      v46->_formerIdentifier = formerIdentifier;

                      if (objc_opt_respondsToSelector())
                      {
                        goto LABEL_92;
                      }

LABEL_93:
                      parentFormerIdentifier = 0;
                      goto LABEL_94;
                    }

LABEL_89:
                    v80 = v46->_formerIdentifier;
                    v46->_formerIdentifier = 0;

                    goto LABEL_93;
                  }

LABEL_83:
                  contentModificationDate = [itemCopy contentModificationDate];
                  v74 = v46->_contentModificationDate;
                  v46->_contentModificationDate = contentModificationDate;

                  if (v47)
                  {
                    if (isKindOfClass)
                    {
                      formerIdentifier2 = [itemCopy formerIdentifier];
                      v76 = v46->_formerIdentifier;
                      v46->_formerIdentifier = formerIdentifier2;

LABEL_92:
                      parentFormerIdentifier = [itemCopy parentFormerIdentifier];
LABEL_94:
                      parentFormerIdentifier = v46->_parentFormerIdentifier;
                      v46->_parentFormerIdentifier = parentFormerIdentifier;

                      if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                      {
                        lastUsedDate = [itemCopy lastUsedDate];
                        lastUsedDate = v46->_lastUsedDate;
                        v46->_lastUsedDate = lastUsedDate;

                        if ((v47 & 1) == 0)
                        {
                          goto LABEL_102;
                        }

                        if (isKindOfClass)
                        {
                          goto LABEL_101;
                        }
                      }

                      else
                      {
                        v86 = v46->_lastUsedDate;
                        v46->_lastUsedDate = 0;

                        v46->_unsupportedFields |= 8uLL;
                        if ((v47 & 1) == 0)
                        {
                          goto LABEL_102;
                        }
                      }

                      if (objc_opt_respondsToSelector())
                      {
LABEL_101:
                        tags = [itemCopy tags];
                        goto LABEL_103;
                      }

LABEL_102:
                      tags = 0;
LABEL_103:
                      tags = v46->_tags;
                      v46->_tags = tags;

                      if (!v46->_tags)
                      {
                        if ((isKindOfClass & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
                        {
                          v46->_unsupportedFields |= 0x10uLL;
                          goto LABEL_112;
                        }

                        tagData = [itemCopy tagData];
                        v90 = tagData;
                        if (tagData)
                        {
                          v91 = FPGetTagsFromTagsData(tagData);
                          v92 = v46->_tags;
                          v46->_tags = v91;
                        }

                        v47 = v223;
                      }

                      if (isKindOfClass)
                      {
                        favoriteRank = [itemCopy favoriteRank];
                        favoriteRank = v46->_favoriteRank;
                        v46->_favoriteRank = favoriteRank;

                        v46->_trashed = [itemCopy isTrashed];
                        v46->_uploaded = [itemCopy isUploaded];
                        v46->_uploading = [itemCopy isUploading];
                        goto LABEL_124;
                      }

LABEL_112:
                      if (objc_opt_respondsToSelector())
                      {
                        favoriteRank2 = [itemCopy favoriteRank];
                        v96 = v46->_favoriteRank;
                        v46->_favoriteRank = favoriteRank2;
                      }

                      else
                      {
                        v97 = v46->_favoriteRank;
                        v46->_favoriteRank = 0;

                        v46->_unsupportedFields |= 0x20uLL;
                      }

                      if (objc_opt_respondsToSelector())
                      {
                        isTrashed = [itemCopy isTrashed];
                      }

                      else
                      {
                        isTrashed = 0;
                      }

                      v46->_trashed = isTrashed;
                      v99 = objc_opt_respondsToSelector();
                      isUploaded = v48;
                      if (v99)
                      {
                        isUploaded = [itemCopy isUploaded];
                      }

                      v46->_uploaded = isUploaded;
                      if (objc_opt_respondsToSelector())
                      {
                        isUploading = [itemCopy isUploading];
                      }

                      else
                      {
                        isUploading = 0;
                      }

                      v46->_uploading = isUploading;
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        uploadingError = 0;
LABEL_126:
                        v220 = uploadingError;
                        v103 = [uploadingError fp_internalErrorForVendorErrorWithCallerDescription:@"item.uploadingError" itemCreationBlock:0];
                        uploadingError = v46->_uploadingError;
                        v46->_uploadingError = v103;

                        if (isKindOfClass)
                        {
                          v46->_downloading = [itemCopy isDownloading];
                          v46->_downloaded = [itemCopy isDownloaded];
                          v46->_mostRecentVersionDownloaded = [itemCopy isMostRecentVersionDownloaded];
                          v46->_supportsMostRecentVersionDownloaded = 1;
                        }

                        else
                        {
                          if (objc_opt_respondsToSelector())
                          {
                            isDownloading = [itemCopy isDownloading];
                          }

                          else
                          {
                            isDownloading = 0;
                          }

                          v46->_downloading = isDownloading;
                          if (objc_opt_respondsToSelector())
                          {
                            isDownloaded = [itemCopy isDownloaded];
                          }

                          else
                          {
                            isDownloaded = 0;
                          }

                          v46->_downloaded = isDownloaded;
                          if (objc_opt_respondsToSelector())
                          {
                            downloaded = [itemCopy isMostRecentVersionDownloaded];
                          }

                          else
                          {
                            downloaded = v46->_downloaded;
                          }

                          v46->_mostRecentVersionDownloaded = downloaded;
                          if (objc_opt_respondsToSelector())
                          {
                            v46->_supportsMostRecentVersionDownloaded = 1;
                          }

                          v47 = v223;
                          if ((objc_opt_respondsToSelector() & 1) == 0)
                          {
                            downloadingError = 0;
LABEL_142:
                            v219 = downloadingError;
                            v109 = [downloadingError fp_internalErrorForVendorErrorWithCallerDescription:@"item.downloadingError" itemCreationBlock:0];
                            downloadingError = v46->_downloadingError;
                            v46->_downloadingError = v109;

                            if (isKindOfClass)
                            {
                              v46->_shared = [itemCopy isShared];
                              v46->_sharedByCurrentUser = [itemCopy isSharedByCurrentUser];
                              if ((v47 & 1) == 0)
                              {
                                goto LABEL_155;
                              }
                            }

                            else
                            {
                              if (objc_opt_respondsToSelector())
                              {
                                isShared = [itemCopy isShared];
                              }

                              else
                              {
                                isShared = 0;
                              }

                              v46->_shared = isShared;
                              if (objc_opt_respondsToSelector())
                              {
                                v46->_sharedByCurrentUser = [itemCopy isSharedByCurrentUser];
                                if ((v47 & 1) == 0)
                                {
LABEL_155:
                                  v46->_fp_lastModifiedByCurrentUser = 0;
                                  if (isKindOfClass)
                                  {
                                    goto LABEL_157;
                                  }

                                  goto LABEL_156;
                                }
                              }

                              else
                              {
                                v46->_sharedByCurrentUser = 0;
                                if (!v47)
                                {
                                  goto LABEL_155;
                                }
                              }

                              if ((objc_opt_respondsToSelector() & 1) == 0)
                              {
                                goto LABEL_155;
                              }
                            }

                            v46->_fp_lastModifiedByCurrentUser = [itemCopy fp_isLastModifiedByCurrentUser];
                            if (isKindOfClass)
                            {
                              goto LABEL_157;
                            }

LABEL_156:
                            if ((objc_opt_respondsToSelector() & 1) == 0)
                            {
                              if ((v47 & 1) == 0)
                              {
                                goto LABEL_165;
                              }

                              goto LABEL_161;
                            }

LABEL_157:
                            collaborationIdentifier = [itemCopy collaborationIdentifier];
                            collaborationIdentifier = v46->_collaborationIdentifier;
                            v46->_collaborationIdentifier = collaborationIdentifier;

                            if ((v47 & 1) == 0)
                            {
                              goto LABEL_165;
                            }

                            if (isKindOfClass)
                            {
LABEL_162:
                              v46->_isCollaborationInvitation = [itemCopy isCollaborationInvitation];
                              if ((isKindOfClass & 1) == 0)
                              {
                                goto LABEL_163;
                              }

                              goto LABEL_166;
                            }

LABEL_161:
                            if (objc_opt_respondsToSelector())
                            {
                              goto LABEL_162;
                            }

LABEL_165:
                            v46->_isCollaborationInvitation = 0;
                            if ((isKindOfClass & 1) == 0)
                            {
LABEL_163:
                              if (objc_opt_respondsToSelector())
                              {
                                ownerNameComponents = [itemCopy ownerNameComponents];
                              }

                              else
                              {
                                ownerNameComponents = 0;
                              }

                              ownerNameComponents = v46->_ownerNameComponents;
                              v46->_ownerNameComponents = ownerNameComponents;

                              if ((objc_opt_respondsToSelector() & 1) == 0)
                              {
                                mostRecentEditorNameComponents = v46->_mostRecentEditorNameComponents;
                                v46->_mostRecentEditorNameComponents = 0;

                                if ((v47 & 1) == 0)
                                {
                                  goto LABEL_175;
                                }

                                goto LABEL_173;
                              }

LABEL_169:
                              mostRecentEditorNameComponents = [itemCopy mostRecentEditorNameComponents];
                              v119 = v46->_mostRecentEditorNameComponents;
                              v46->_mostRecentEditorNameComponents = mostRecentEditorNameComponents;

                              if ((v47 & 1) == 0)
                              {
                                goto LABEL_175;
                              }

                              if (isKindOfClass)
                              {
                                goto LABEL_174;
                              }

LABEL_173:
                              if (objc_opt_respondsToSelector())
                              {
LABEL_174:
                                originatorInfo = [itemCopy originatorInfo];
LABEL_176:
                                originatorInfo = v46->_originatorInfo;
                                v46->_originatorInfo = originatorInfo;

                                if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                {
                                  userInfo = [itemCopy userInfo];
                                  userInfo = v46->_userInfo;
                                  v46->_userInfo = userInfo;

                                  if (v47)
                                  {
                                    if (isKindOfClass)
                                    {
                                      v46->_excludedFromSync = [itemCopy isExcludedFromSync];
                                      v46->_ignoreRoot = [itemCopy isIgnoreRoot];
LABEL_190:
                                      exclusionType = [itemCopy exclusionType];
                                      goto LABEL_192;
                                    }

LABEL_182:
                                    if (objc_opt_respondsToSelector())
                                    {
                                      isExcludedFromSync = [itemCopy isExcludedFromSync];
                                    }

                                    else
                                    {
                                      isExcludedFromSync = 0;
                                    }

                                    v46->_excludedFromSync = isExcludedFromSync;
                                    if (objc_opt_respondsToSelector())
                                    {
                                      isIgnoreRoot = [itemCopy isIgnoreRoot];
                                    }

                                    else
                                    {
                                      isIgnoreRoot = 0;
                                    }

                                    v46->_ignoreRoot = isIgnoreRoot;
                                    if ((objc_opt_respondsToSelector() & 1) == 0)
                                    {
                                      exclusionType = 0;
                                      goto LABEL_192;
                                    }

                                    goto LABEL_190;
                                  }
                                }

                                else
                                {
                                  v125 = v46->_userInfo;
                                  v46->_userInfo = 0;

                                  if (v47)
                                  {
                                    goto LABEL_182;
                                  }
                                }

                                exclusionType = 0;
                                *&v46->_excludedFromSync = 0;
LABEL_192:
                                v46->_exclusionType = exclusionType;
                                if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                {
                                  symlinkTargetPath = [itemCopy symlinkTargetPath];
                                }

                                else
                                {
                                  symlinkTargetPath = 0;
                                }

                                symlinkTargetPath = v46->_symlinkTargetPath;
                                v46->_symlinkTargetPath = symlinkTargetPath;

                                if (!v48)
                                {
                                  if (v47 && ((isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
                                  {
                                    fileURL = [itemCopy fileURL];
                                  }

                                  else
                                  {
                                    fileURL = 0;
                                  }

                                  fileURL = v46->_fileURL;
                                  v46->_fileURL = fileURL;
                                }

                                if (v225)
                                {
                                  objc_storeStrong(&v46->_spotlightDomainIdentifier, obj);
                                  if (v47)
                                  {
                                    if (isKindOfClass)
                                    {
                                      fp_spotlightSubDomainIdentifier = [itemCopy fp_spotlightSubDomainIdentifier];
                                      fp_spotlightSubDomainIdentifier = v46->_fp_spotlightSubDomainIdentifier;
                                      v46->_fp_spotlightSubDomainIdentifier = fp_spotlightSubDomainIdentifier;

                                      goto LABEL_221;
                                    }

LABEL_211:
                                    if (objc_opt_respondsToSelector())
                                    {
                                      if (objc_opt_respondsToSelector())
                                      {
LABEL_213:
                                        fp_spotlightSubDomainIdentifier2 = [itemCopy fp_spotlightSubDomainIdentifier];
                                        v138 = v46->_fp_spotlightSubDomainIdentifier;
                                        v46->_fp_spotlightSubDomainIdentifier = fp_spotlightSubDomainIdentifier2;

                                        if (isKindOfClass)
                                        {
                                          displayName = [itemCopy displayName];
                                          displayName = v46->_displayName;
                                          v46->_displayName = displayName;

                                          goto LABEL_225;
                                        }

LABEL_220:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v154 = v46->_displayName;
                                          v46->_displayName = 0;

                                          goto LABEL_224;
                                        }

LABEL_221:
                                        displayName2 = [itemCopy displayName];
                                        v151 = v46->_displayName;
                                        v46->_displayName = displayName2;

                                        if (isKindOfClass)
                                        {
                                          hasUnresolvedConflicts = [itemCopy hasUnresolvedConflicts];
                                          hasUnresolvedConflicts = v46->_hasUnresolvedConflicts;
                                          v46->_hasUnresolvedConflicts = hasUnresolvedConflicts;

                                          goto LABEL_229;
                                        }

LABEL_224:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v159 = v46->_hasUnresolvedConflicts;
                                          v46->_hasUnresolvedConflicts = 0;

                                          goto LABEL_228;
                                        }

LABEL_225:
                                        hasUnresolvedConflicts2 = [itemCopy hasUnresolvedConflicts];
                                        v156 = v46->_hasUnresolvedConflicts;
                                        v46->_hasUnresolvedConflicts = hasUnresolvedConflicts2;

                                        if (isKindOfClass)
                                        {
                                          isDownloadRequested = [itemCopy isDownloadRequested];
                                          isDownloadRequested = v46->_isDownloadRequested;
                                          v46->_isDownloadRequested = isDownloadRequested;

                                          goto LABEL_233;
                                        }

LABEL_228:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v164 = v46->_isDownloadRequested;
                                          v46->_isDownloadRequested = 0;

                                          goto LABEL_232;
                                        }

LABEL_229:
                                        isDownloadRequested2 = [itemCopy isDownloadRequested];
                                        v161 = v46->_isDownloadRequested;
                                        v46->_isDownloadRequested = isDownloadRequested2;

                                        if (isKindOfClass)
                                        {
                                          sharingPermissions = [itemCopy sharingPermissions];
                                          sharingPermissions = v46->_sharingPermissions;
                                          v46->_sharingPermissions = sharingPermissions;

                                          goto LABEL_234;
                                        }

LABEL_232:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v168 = v46->_sharingPermissions;
                                          v46->_sharingPermissions = 0;

                                          goto LABEL_238;
                                        }

LABEL_233:
                                        sharingPermissions2 = [itemCopy sharingPermissions];
                                        v166 = v46->_sharingPermissions;
                                        v46->_sharingPermissions = sharingPermissions2;

                                        if (isKindOfClass)
                                        {
LABEL_234:
                                          fp_isContainer = [itemCopy fp_isContainer];
                                          v46->_isContainer = fp_isContainer;
                                          p_isContainer = &v46->_isContainer;
                                          if ((fp_isContainer & 1) == 0)
                                          {
                                            goto LABEL_246;
                                          }

                                          if (isKindOfClass)
                                          {
                                            v46->_isContainerPristine = [itemCopy fp_isContainerPristine];
LABEL_245:
                                            fp_appContainerBundleIdentifier = [itemCopy fp_appContainerBundleIdentifier];
                                            fp_appContainerBundleIdentifier = v46->_fp_appContainerBundleIdentifier;
                                            v46->_fp_appContainerBundleIdentifier = fp_appContainerBundleIdentifier;

LABEL_246:
                                            if (isKindOfClass)
                                            {
                                              goto LABEL_250;
                                            }

                                            goto LABEL_249;
                                          }

                                          goto LABEL_240;
                                        }

LABEL_238:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v46->_isContainer = 0;
                                          p_isContainer = &v46->_isContainer;
                                          goto LABEL_249;
                                        }

                                        fp_isContainer2 = [itemCopy fp_isContainer];
                                        v46->_isContainer = fp_isContainer2;
                                        p_isContainer = &v46->_isContainer;
                                        if ((fp_isContainer2 & 1) == 0)
                                        {
                                          goto LABEL_249;
                                        }

LABEL_240:
                                        if (objc_opt_respondsToSelector())
                                        {
                                          fp_isContainerPristine = [itemCopy fp_isContainerPristine];
                                        }

                                        else
                                        {
                                          fp_isContainerPristine = 0;
                                        }

                                        v46->_isContainerPristine = fp_isContainerPristine;
                                        if (objc_opt_respondsToSelector())
                                        {
                                          goto LABEL_245;
                                        }

                                        v173 = v46->_fp_appContainerBundleIdentifier;
                                        v46->_fp_appContainerBundleIdentifier = 0;

LABEL_249:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          containerDisplayName = 0;
LABEL_252:
                                          containerDisplayName = v46->_containerDisplayName;
                                          v46->_containerDisplayName = containerDisplayName;

                                          if (!v46->_fp_appContainerBundleIdentifier)
                                          {
                                            if ((isKindOfClass & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
                                            {
                                              if (v47)
                                              {
                                                goto LABEL_260;
                                              }

                                              goto LABEL_262;
                                            }

                                            v175 = [itemCopy performSelector:sel_fp_cloudContainerClientBundleIdentifiers];
                                            v176 = [FPAppMetadata findBundleIDForCurrentPlatformInSet:v175];
                                            v177 = v46->_fp_appContainerBundleIdentifier;
                                            v46->_fp_appContainerBundleIdentifier = v176;
                                          }

                                          if (v47)
                                          {
                                            if (isKindOfClass)
                                            {
                                              fp_parentDomainIdentifier = [itemCopy fp_parentDomainIdentifier];
                                              fp_parentDomainIdentifier = v46->_fp_parentDomainIdentifier;
                                              v46->_fp_parentDomainIdentifier = fp_parentDomainIdentifier;

                                              goto LABEL_267;
                                            }

LABEL_260:
                                            if (objc_opt_respondsToSelector())
                                            {
                                              fp_parentDomainIdentifier2 = [itemCopy fp_parentDomainIdentifier];
                                            }

                                            else
                                            {
                                              fp_parentDomainIdentifier2 = 0;
                                            }

                                            v184 = v46->_fp_parentDomainIdentifier;
                                            v46->_fp_parentDomainIdentifier = fp_parentDomainIdentifier2;

                                            if ((objc_opt_respondsToSelector() & 1) == 0)
                                            {
                                              cloudContainerIdentifier = v46->_cloudContainerIdentifier;
                                              v46->_cloudContainerIdentifier = 0;

                                              if (!v46->_excludedFromSync)
                                              {
                                                goto LABEL_273;
                                              }

                                              goto LABEL_271;
                                            }

LABEL_267:
                                            fp_cloudContainerIdentifier = [itemCopy fp_cloudContainerIdentifier];
                                            v186 = v46->_cloudContainerIdentifier;
                                            v46->_cloudContainerIdentifier = fp_cloudContainerIdentifier;

                                            if (!v46->_excludedFromSync)
                                            {
                                              if (isKindOfClass)
                                              {
                                                goto LABEL_274;
                                              }

LABEL_273:
                                              if (objc_opt_respondsToSelector())
                                              {
LABEL_274:
                                                v46->_isUbiquitous = [itemCopy fp_isUbiquitous];
                                                goto LABEL_277;
                                              }

                                              goto LABEL_275;
                                            }

LABEL_271:
                                            v46->_isUbiquitous = 0;
                                            if (v47)
                                            {
LABEL_277:
                                              if (isKindOfClass)
                                              {
                                                v46->_topLevelSharedItem = [itemCopy isTopLevelSharedItem];
                                                v46->_contentZoneRoot = [itemCopy isContentZoneRoot];
                                                v46->_inPinnedFolder = [itemCopy isInPinnedFolder];
                                                v46->_pinned = [itemCopy isPinned];
                                                v46->_recursivelyDownloaded = [itemCopy isRecursivelyDownloaded];
                                              }

                                              else
                                              {
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  shared = [itemCopy isTopLevelSharedItem];
                                                }

                                                else
                                                {
                                                  shared = v46->_shared;
                                                }

                                                v46->_topLevelSharedItem = shared;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  isContentZoneRoot = [itemCopy isContentZoneRoot];
                                                }

                                                else
                                                {
                                                  isContentZoneRoot = 0;
                                                }

                                                v46->_contentZoneRoot = isContentZoneRoot;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  isInPinnedFolder = [itemCopy isInPinnedFolder];
                                                }

                                                else
                                                {
                                                  isInPinnedFolder = 0;
                                                }

                                                v46->_inPinnedFolder = isInPinnedFolder;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  isPinned = [itemCopy isPinned];
                                                }

                                                else
                                                {
                                                  isPinned = 0;
                                                }

                                                v46->_pinned = isPinned;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  isRecursivelyDownloaded = [itemCopy isRecursivelyDownloaded];
                                                }

                                                else
                                                {
                                                  isRecursivelyDownloaded = 0;
                                                }

                                                v46->_recursivelyDownloaded = isRecursivelyDownloaded;
                                                if ((objc_opt_respondsToSelector() & 1) == 0)
                                                {
                                                  conflictingVersions = 0;
                                                  goto LABEL_298;
                                                }
                                              }

                                              conflictingVersions = [itemCopy conflictingVersions];
LABEL_298:
                                              conflictingVersions = v46->_conflictingVersions;
                                              v46->_conflictingVersions = conflictingVersions;

                                              if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                              {
                                                extendedAttributes = [itemCopy extendedAttributes];
                                                if (extendedAttributes)
                                                {
                                                  objc_opt_class();
                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      [FPItem initWithVendorItem:extendedAttributes provider:v222 domain:v46 spotlightDomainIdentifier:itemCopy extensionCapabilities:? useFPFS:?];
                                                    }
                                                  }

                                                  v229[0] = MEMORY[0x1E69E9820];
                                                  v229[1] = 3221225472;
                                                  v229[2] = __101__FPItem_initWithVendorItem_provider_domain_spotlightDomainIdentifier_extensionCapabilities_useFPFS___block_invoke;
                                                  v229[3] = &unk_1E793A0B8;
                                                  v230 = itemCopy;
                                                  v232 = v222;
                                                  v196 = v46;
                                                  v231 = v196;
                                                  v197 = [extendedAttributes fp_filter:v229];
                                                  extendedAttributes = v196->_extendedAttributes;
                                                  v196->_extendedAttributes = v197;

                                                  v47 = v223;
                                                }

                                                if (isKindOfClass)
                                                {
                                                  v46->_fileSystemFlags = [itemCopy fileSystemFlags];
                                                  v46->_enumerationOrigin = 0;
                                                  v199 = sCopy;
                                                  goto LABEL_321;
                                                }
                                              }

                                              else
                                              {
                                                v46->_unsupportedFields |= 0x200uLL;
                                              }

                                              if (objc_opt_respondsToSelector())
                                              {
                                                v46->_fileSystemFlags = [itemCopy fileSystemFlags];
                                              }

                                              else
                                              {
                                                if ((v46->_capabilities & 2) != 0)
                                                {
                                                  v200 = 20;
                                                }

                                                else
                                                {
                                                  v200 = 16;
                                                }

                                                v201 = v200 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v46->_capabilities & 1));
                                                if (v47 && (objc_opt_respondsToSelector() & 1) != 0 && [itemCopy isHidden])
                                                {
                                                  v202 = v201 | 8;
                                                }

                                                else
                                                {
                                                  v203 = [(NSString *)v46->_filename hasPrefix:@"."];
                                                  v202 = v201 | 8;
                                                  if (!v203)
                                                  {
                                                    v202 = v201;
                                                  }
                                                }

                                                v46->_fileSystemFlags = v202;
                                                v46->_unsupportedFields |= 0x100uLL;
                                              }

                                              v199 = sCopy;
                                              v46->_enumerationOrigin = 0;
                                              if ((objc_opt_respondsToSelector() & 1) == 0)
                                              {
                                                v46->_contentPolicy = 0;
                                                if (sCopy)
                                                {
                                                  goto LABEL_330;
                                                }

LABEL_324:
                                                if (!v46->_downloaded || !v46->_uploaded || *p_isContainer || [(FPItem *)v46 isFolder]|| (v217 = [(NSNumber *)v46->_documentSize integerValue], (v221 & 2) == 0) || v217 <= 2048)
                                                {
                                                  if (!v46->_inPinnedFolder)
                                                  {
                                                    v46->_capabilities &= ~0x40uLL;
                                                  }
                                                }

LABEL_330:
                                                if ((v221 & 4) != 0)
                                                {
                                                  v46->_capabilities |= 0x20000000uLL;
                                                }

                                                if (v47)
                                                {
                                                  if (isKindOfClass)
                                                  {
                                                    preformattedOwnerName = [itemCopy preformattedOwnerName];
                                                    preformattedOwnerName = v46->_preformattedOwnerName;
                                                    v46->_preformattedOwnerName = preformattedOwnerName;

LABEL_341:
                                                    preformattedMostRecentEditorName = [itemCopy preformattedMostRecentEditorName];
LABEL_342:
                                                    preformattedMostRecentEditorName = v46->_preformattedMostRecentEditorName;
                                                    v46->_preformattedMostRecentEditorName = preformattedMostRecentEditorName;

                                                    if ([(NSData *)v46->_versionIdentifier length]>= 0x3E9)
                                                    {
                                                      [FPItem initWithVendorItem:v222 provider:v46 domain:? spotlightDomainIdentifier:? extensionCapabilities:? useFPFS:?];
                                                    }

                                                    if ([itemCopy conformsToProtocol:&unk_1F1FCDAF8])
                                                    {
                                                      if ((isKindOfClass & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
                                                      {
                                                        if (v47)
                                                        {
                                                          goto LABEL_352;
                                                        }

                                                        goto LABEL_354;
                                                      }

                                                      decorations = [itemCopy decorations];
                                                      decorations = v46->_decorations;
                                                      v46->_decorations = decorations;
                                                    }

                                                    if (v47)
                                                    {
                                                      if (isKindOfClass)
                                                      {
                                                        v46->_fileID = [itemCopy fileID];
                                                        v46->_documentID = [itemCopy documentID];
LABEL_360:
                                                        inheritedUserInfo = [itemCopy inheritedUserInfo];
                                                        goto LABEL_362;
                                                      }

LABEL_352:
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        fileID = [itemCopy fileID];
                                                      }

                                                      else
                                                      {
                                                        fileID = 0;
                                                      }

                                                      v46->_fileID = fileID;
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        documentID = [itemCopy documentID];
                                                      }

                                                      else
                                                      {
                                                        documentID = 0;
                                                      }

                                                      v46->_documentID = documentID;
                                                      if ((objc_opt_respondsToSelector() & 1) == 0)
                                                      {
                                                        inheritedUserInfo = 0;
                                                        goto LABEL_362;
                                                      }

                                                      goto LABEL_360;
                                                    }

LABEL_354:
                                                    inheritedUserInfo = 0;
                                                    v46->_fileID = 0;
                                                    v46->_documentID = 0;
LABEL_362:
                                                    inheritedUserInfo = v46->_inheritedUserInfo;
                                                    v46->_inheritedUserInfo = inheritedUserInfo;

                                                    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                                    {
                                                      v46->_typeAndCreator.type = [itemCopy typeAndCreator];
                                                      v46->_typeAndCreator.creator = [itemCopy typeAndCreator] >> 32;
                                                      if ((v47 & 1) == 0)
                                                      {
                                                        goto LABEL_370;
                                                      }

                                                      if (isKindOfClass)
                                                      {
                                                        goto LABEL_369;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v46->_typeAndCreator = 0;
                                                      v46->_unsupportedFields |= 0x400uLL;
                                                      if ((v47 & 1) == 0)
                                                      {
                                                        goto LABEL_370;
                                                      }
                                                    }

                                                    if (objc_opt_respondsToSelector())
                                                    {
LABEL_369:
                                                      v46->_unsupportedFields = [itemCopy unsupportedFields];
                                                    }

LABEL_370:

                                                    goto LABEL_371;
                                                  }

                                                  if (objc_opt_respondsToSelector())
                                                  {
                                                    preformattedOwnerName2 = [itemCopy preformattedOwnerName];
                                                  }

                                                  else
                                                  {
                                                    preformattedOwnerName2 = 0;
                                                  }

                                                  v209 = v46->_preformattedOwnerName;
                                                  v46->_preformattedOwnerName = preformattedOwnerName2;

                                                  if (objc_opt_respondsToSelector())
                                                  {
                                                    goto LABEL_341;
                                                  }
                                                }

                                                else
                                                {
                                                  v206 = v46->_preformattedOwnerName;
                                                  v46->_preformattedOwnerName = 0;
                                                }

                                                preformattedMostRecentEditorName = 0;
                                                goto LABEL_342;
                                              }

LABEL_321:
                                              __FILEPROVIDER_BAD_CONTENT_POLICY__([itemCopy contentPolicy], v199);
                                              v46->_contentPolicy = [itemCopy contentPolicy];
                                              v46->_capabilities |= 0x40uLL;
                                              if (v199)
                                              {
                                                goto LABEL_330;
                                              }

                                              goto LABEL_324;
                                            }

LABEL_279:
                                            conflictingVersions = 0;
                                            v46->_topLevelSharedItem = v46->_shared;
                                            v46->_contentZoneRoot = 0;
                                            *&v46->_inPinnedFolder = 0;
                                            v46->_recursivelyDownloaded = 0;
                                            goto LABEL_298;
                                          }

LABEL_262:
                                          v181 = v46->_fp_parentDomainIdentifier;
                                          v46->_fp_parentDomainIdentifier = 0;

                                          v182 = v46->_cloudContainerIdentifier;
                                          v46->_cloudContainerIdentifier = 0;

                                          if (!v46->_excludedFromSync)
                                          {
                                            if (isKindOfClass)
                                            {
                                              v183 = 1;
                                              goto LABEL_276;
                                            }

LABEL_275:
                                            v183 = objc_opt_respondsToSelector();
LABEL_276:
                                            v46->_isUbiquitous = v183 & 1;
                                            if (v47)
                                            {
                                              goto LABEL_277;
                                            }

                                            goto LABEL_279;
                                          }

                                          goto LABEL_271;
                                        }

LABEL_250:
                                        containerDisplayName = [itemCopy containerDisplayName];
                                        goto LABEL_252;
                                      }
                                    }

                                    else if (objc_opt_respondsToSelector())
                                    {
                                      fp_spotlightDomainIdentifier = [itemCopy fp_spotlightDomainIdentifier];
LABEL_219:
                                      v149 = v46->_fp_spotlightSubDomainIdentifier;
                                      v46->_fp_spotlightSubDomainIdentifier = fp_spotlightDomainIdentifier;

                                      goto LABEL_220;
                                    }

                                    fp_spotlightDomainIdentifier = 0;
                                    goto LABEL_219;
                                  }
                                }

                                else if (isKindOfClass)
                                {
                                  spotlightDomainIdentifier = [itemCopy spotlightDomainIdentifier];
                                  spotlightDomainIdentifier = v46->_spotlightDomainIdentifier;
                                  v46->_spotlightDomainIdentifier = spotlightDomainIdentifier;

                                  if (v47)
                                  {
                                    goto LABEL_213;
                                  }
                                }

                                else if (v47)
                                {
                                  goto LABEL_211;
                                }

                                v141 = v46->_fp_spotlightSubDomainIdentifier;
                                v46->_fp_spotlightSubDomainIdentifier = 0;

                                v142 = v46->_displayName;
                                v46->_displayName = 0;

                                v143 = v46->_hasUnresolvedConflicts;
                                v46->_hasUnresolvedConflicts = 0;

                                v144 = v46->_isDownloadRequested;
                                v46->_isDownloadRequested = 0;

                                v145 = v46->_sharingPermissions;
                                v46->_sharingPermissions = 0;

                                containerDisplayName = 0;
                                v46->_isContainer = 0;
                                p_isContainer = &v46->_isContainer;
                                goto LABEL_252;
                              }

LABEL_175:
                              originatorInfo = 0;
                              goto LABEL_176;
                            }

LABEL_166:
                            ownerNameComponents2 = [itemCopy ownerNameComponents];
                            v116 = v46->_ownerNameComponents;
                            v46->_ownerNameComponents = ownerNameComponents2;

                            goto LABEL_169;
                          }
                        }

                        downloadingError = [itemCopy downloadingError];
                        goto LABEL_142;
                      }

LABEL_124:
                      uploadingError = [itemCopy uploadingError];
                      goto LABEL_126;
                    }

                    goto LABEL_87;
                  }

                  goto LABEL_89;
                }

LABEL_79:
                creationDate = [itemCopy creationDate];
                v70 = v46->_creationDate;
                v46->_creationDate = creationDate;

                if (isKindOfClass)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }

              v50 = 1;
              v49 = sCopy;
            }

            else
            {
              v49 = sCopy;
              v50 = sCopy && *p_itemVersion == 0;
            }

            __FILEPROVIDER_BAD_ITEM__(itemCopy, providerIdentifier, v25, filename, contentType2, v50, v49);
            fp_simulate_crash(@"can't create item because at least one of the required properties is missing. See the log for more details.", v51, v52, v53, v54, v55, v56, v57, v218);
            v58 = fp_current_or_default_log();
            identifierCopy = v225;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              [FPItem initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:];
            }

            selfCopy = 0;
            goto LABEL_63;
          }

LABEL_32:
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            contentType2 = 0;
            goto LABEL_36;
          }

          goto LABEL_33;
        }

LABEL_28:
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else
    {
      p_itemVersion = &self->_itemVersion;
      v32 = self->_itemVersion;
      self->_itemVersion = 0;

      if (self->_itemVersion)
      {
        goto LABEL_27;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      goto LABEL_24;
    }

LABEL_27:
    filename = [itemCopy filename];
    goto LABEL_28;
  }

  selfCopy = 0;
LABEL_64:

  v59 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

uint64_t __101__FPItem_initWithVendorItem_provider_domain_spotlightDomainIdentifier_extensionCapabilities_useFPFS___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = a1[5];
    v10 = a1[6];
    v12 = a1[4];
    v13 = objc_opt_class();
    [v9 handleFailureInMethod:v10 object:v11 file:@"FPItem.m" lineNumber:836 description:{@"Key %@ in extendedAttributes of item %@ has class %@ instead of %@", v5, v12, v13, objc_opt_class()}];
  }

  if ((v8 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = a1[5];
    v15 = a1[6];
    v17 = a1[4];
    v18 = objc_opt_class();
    [v14 handleFailureInMethod:v15 object:v16 file:@"FPItem.m" lineNumber:837 description:{@"Value %@ in extendedAttributes of item %@ has class %@ instead of %@", v6, v17, v18, objc_opt_class()}];
  }

  return isKindOfClass & v8 & 1;
}

- (FPItem)initWithCoder:(id)coder
{
  v145[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  context = objc_autoreleasePoolPush();
  v6 = 0x1E696A000uLL;
  v142 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_providerIdentifier"];
  v143 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
  if (!v143)
  {
    v143 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v7 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:v142 domainIdentifier:v143];
  v8 = [coderCopy fp_checkProviderIdentifier:v7];

  if ((v8 & 1) == 0)
  {

    objc_autoreleasePoolPop(context);
LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentItemIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentType"];
  if (v12)
  {
    v13 = v12;
    v14 = v11;
    v15 = v10;
    v16 = v9;
    v17 = MEMORY[0x1E6982C40];
    identifier = [v12 identifier];
    v19 = [v17 fp_cachedTypeWithIdentifier:identifier alreadyAvailableType:v13];

    v20 = v19;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v16;
        v10 = v15;
        v11 = v14;
        v6 = 0x1E696A000;
        goto LABEL_14;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"FPItem.m" lineNumber:962 description:@"received contentType with an invalid type"];
    }

    v9 = v16;
    v10 = v15;
    v11 = v14;
    v6 = 0x1E696A000uLL;
  }

  else
  {
    v20 = 0;
  }

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_typeIdentifier"];
  if (!v22)
  {
    v78 = fp_current_or_default_log();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      [(FPItem *)v9 initWithCoder:v11];
    }

    v132 = 0;
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:v22];
  v25 = v20;
  v20 = v24;

LABEL_14:
  self = [(FPItem *)self initWithProviderID:v142 domainIdentifier:v143 itemIdentifier:v9 parentItemIdentifier:v10 filename:v11 contentType:v20];
  if (self)
  {
    v26 = *(v6 + 3776);
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formerIdentifier"];
    formerIdentifier = self->_formerIdentifier;
    self->_formerIdentifier = v27;

    v29 = *(v6 + 3776);
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentFormerIdentifier"];
    parentFormerIdentifier = self->_parentFormerIdentifier;
    self->_parentFormerIdentifier = v30;

    v32 = *(v6 + 3776);
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = self->_displayName;
    self->_displayName = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_documentSize"];
    documentSize = self->_documentSize;
    self->_documentSize = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlWrapper"];
    urlWrapper = self->_urlWrapper;
    self->_urlWrapper = v37;

    v39 = [(FPSandboxingURLWrapper *)self->_urlWrapper url];
    fileURL = self->_fileURL;
    self->_fileURL = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_detachedRootLogicalURL"];
    detachedRootLogicalURL = self->_detachedRootLogicalURL;
    self->_detachedRootLogicalURL = v41;

    self->_capabilities = [coderCopy decodeIntegerForKey:@"_capabilities"];
    self->_enumerationOrigin = [coderCopy decodeIntegerForKey:@"_enumerationOrigin"];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = self->_creationDate;
    self->_creationDate = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentModificationDate"];
    contentModificationDate = self->_contentModificationDate;
    self->_contentModificationDate = v45;

    self->_trashed = [coderCopy decodeBoolForKey:@"_trashed"];
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastUsedDate"];
    lastUsedDate = self->_lastUsedDate;
    self->_lastUsedDate = v47;

    v49 = MEMORY[0x1E695DFD8];
    v140 = v20;
    v50 = objc_opt_class();
    v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
    v52 = [coderCopy decodeObjectOfClasses:v51 forKey:@"_tags"];
    tags = self->_tags;
    self->_tags = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_favoriteRank"];
    favoriteRank = self->_favoriteRank;
    self->_favoriteRank = v54;

    self->_uploaded = [coderCopy decodeBoolForKey:@"_uploaded"];
    self->_uploading = [coderCopy decodeBoolForKey:@"_uploading"];
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uploadingError"];
    uploadingError = self->_uploadingError;
    self->_uploadingError = v56;

    self->_excludedFromSync = [coderCopy decodeBoolForKey:@"_excludedFromSync"];
    self->_ignoreRoot = [coderCopy decodeBoolForKey:@"_ignoreRoot"];
    self->_exclusionType = [coderCopy decodeIntegerForKey:@"_exclusionType"];
    self->_downloaded = [coderCopy decodeBoolForKey:@"_downloaded"];
    self->_downloading = [coderCopy decodeBoolForKey:@"_downloading"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downloadingError"];
    downloadingError = self->_downloadingError;
    self->_downloadingError = v58;

    self->_mostRecentVersionDownloaded = [coderCopy decodeBoolForKey:@"_mostRecentVersionDownloaded"];
    self->_shared = [coderCopy decodeBoolForKey:@"_shared"];
    self->_sharedByCurrentUser = [coderCopy decodeBoolForKey:@"_sharedByCurrentUser"];
    self->_fp_lastModifiedByCurrentUser = [coderCopy decodeBoolForKey:@"_fp_lastModifiedByCurrentUser"];
    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ownerNameComponents"];
    ownerNameComponents = self->_ownerNameComponents;
    self->_ownerNameComponents = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mostRecentEditorNameComponents"];
    mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
    self->_mostRecentEditorNameComponents = v62;

    v64 = v6;
    v65 = *(v6 + 3776);
    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_collaborationIdentifier"];
    collaborationIdentifier = self->_collaborationIdentifier;
    self->_collaborationIdentifier = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originatorInfo"];
    originatorInfo = self->_originatorInfo;
    self->_originatorInfo = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_childItemCount"];
    childItemCount = self->_childItemCount;
    self->_childItemCount = v70;

    v137 = MEMORY[0x1E695DFD8];
    v136 = objc_opt_class();
    v72 = *(v6 + 3776);
    v73 = objc_opt_class();
    v138 = v10;
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v139 = v9;
    v76 = objc_opt_class();
    v77 = objc_opt_class();
    v20 = v140;
    v78 = [v137 setWithObjects:{v136, v73, v74, v75, v76, v77, objc_opt_class(), 0}];
    v79 = [coderCopy decodeObjectOfClasses:v78 forKey:@"_userInfo"];
    userInfo = self->_userInfo;
    self->_userInfo = v79;

    self->_state = [coderCopy decodeIntegerForKey:@"_state"];
    v81 = *(v64 + 3776);
    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_placeholdIdentifier"];
    placeholderIdentifier = self->_placeholderIdentifier;
    self->_placeholderIdentifier = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_versionIdentifier"];
    versionIdentifier = self->_versionIdentifier;
    self->_versionIdentifier = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemVersion"];
    itemVersion = self->_itemVersion;
    self->_itemVersion = v86;

    v88 = *(v64 + 3776);
    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsdi"];
    spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
    self->_spotlightDomainIdentifier = v89;

    v91 = *(v64 + 3776);
    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_spotlightDomainIdentifier"];
    fp_spotlightSubDomainIdentifier = self->_fp_spotlightSubDomainIdentifier;
    self->_fp_spotlightSubDomainIdentifier = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hasUnresolvedConflicts"];
    hasUnresolvedConflicts = self->_hasUnresolvedConflicts;
    self->_hasUnresolvedConflicts = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_isDownloadRequested"];
    isDownloadRequested = self->_isDownloadRequested;
    self->_isDownloadRequested = v96;

    v98 = *(v64 + 3776);
    v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sharingPermissions"];
    sharingPermissions = self->_sharingPermissions;
    self->_sharingPermissions = v99;

    v101 = *(v64 + 3776);
    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerDisplayName"];
    containerDisplayName = self->_containerDisplayName;
    self->_containerDisplayName = v102;

    self->_supportsMostRecentVersionDownloaded = [coderCopy decodeBoolForKey:@"_supportsMostRecentVersionDownloaded"];
    v104 = *(v64 + 3776);
    v105 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fp_appContainerBundleIdentifier"];
    fp_appContainerBundleIdentifier = self->_fp_appContainerBundleIdentifier;
    self->_fp_appContainerBundleIdentifier = v105;

    v107 = *(v64 + 3776);
    v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fp_parentDomainIdentifier"];
    fp_parentDomainIdentifier = self->_fp_parentDomainIdentifier;
    self->_fp_parentDomainIdentifier = v108;

    v110 = *(v64 + 3776);
    v111 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cloudContainerIdentifier"];
    cloudContainerIdentifier = self->_cloudContainerIdentifier;
    self->_cloudContainerIdentifier = v111;

    self->_isUbiquitous = [coderCopy decodeBoolForKey:@"_isUbiquitous"];
    self->_isContainer = [coderCopy decodeBoolForKey:@"_isContainer"];
    self->_isContainerPristine = [coderCopy decodeBoolForKey:@"_isContainerPristine"];
    self->_topLevelSharedItem = [coderCopy decodeBoolForKey:@"_topLevelSharedItem"];
    self->_inPinnedFolder = [coderCopy decodeBoolForKey:@"_inPinnedFolder"];
    self->_pinned = [coderCopy decodeBoolForKey:@"_pinned"];
    self->_contentZoneRoot = [coderCopy decodeBoolForKey:@"_contentZoneRoot"];
    self->_isCollaborationInvitation = [coderCopy decodeBoolForKey:@"_isCollaborationInvitation"];
    self->_recursivelyDownloaded = [coderCopy decodeBoolForKey:@"_recursivelyDownloaded"];
    v113 = MEMORY[0x1E695DFD8];
    v114 = objc_opt_class();
    v115 = [v113 setWithObjects:{v114, objc_opt_class(), 0}];
    v116 = [coderCopy decodeObjectOfClasses:v115 forKey:@"_conflictingVersions"];
    conflictingVersions = self->_conflictingVersions;
    self->_conflictingVersions = v116;

    self->_fileSystemFlags = [coderCopy decodeIntegerForKey:@"_fileSystemFlags"];
    v118 = MEMORY[0x1E695DFD8];
    v145[0] = objc_opt_class();
    v119 = *(v64 + 3776);
    v145[1] = objc_opt_class();
    v145[2] = objc_opt_class();
    v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:3];
    v121 = [v118 setWithArray:v120];
    v122 = [coderCopy decodeObjectOfClasses:v121 forKey:@"_extendedAttributes"];
    extendedAttributes = self->_extendedAttributes;
    self->_extendedAttributes = v122;

    v124 = MEMORY[0x1E695DFD8];
    v10 = v138;
    v9 = v139;
    v144[0] = objc_opt_class();
    v125 = *(v64 + 3776);
    v144[1] = objc_opt_class();
    v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:2];
    v127 = [v124 setWithArray:v126];
    v128 = [coderCopy decodeObjectOfClasses:v127 forKey:@"_decorations"];
    decorations = self->_decorations;
    self->_decorations = v128;

    self->_fileID = [coderCopy decodeInt64ForKey:@"_fileID"];
    self->_documentID = [coderCopy decodeInt32ForKey:@"_documentID"];
    v130 = [coderCopy decodeObjectOfClasses:v78 forKey:@"_inheritedUserInfo"];
    inheritedUserInfo = self->_inheritedUserInfo;
    self->_inheritedUserInfo = v130;

    self->_allowsContextualMenuDownloadEntry = [coderCopy decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    self->_typeAndCreator.type = [coderCopy decodeInt32ForKey:@"_typeAndCreator.type"];
    self->_typeAndCreator.creator = [coderCopy decodeInt32ForKey:@"_typeAndCreator.creator"];
    self->_contentPolicy = [coderCopy decodeIntegerForKey:@"_contentPolicy"];
    self->_inheritedContentPolicy = [coderCopy decodeIntegerForKey:@"_inheritedContentPolicy"];
    self->_effectiveContentPolicy = [coderCopy decodeIntegerForKey:@"_effectiveContentPolicy"];
    self->_unsupportedFields = [coderCopy decodeIntegerForKey:@"_unsupportedFields"];
    self->_isEvictedWithClone = [coderCopy decodeBoolForKey:@"_isEvictedWithClone"];
    self->_syncPaused = [coderCopy decodeBoolForKey:@"_syncPaused"];
    self->_supportsUploadWithFailOnConflict = [coderCopy decodeBoolForKey:@"_supportsUploadWithFailOnConflict"];
    v132 = 1;
LABEL_19:

    goto LABEL_21;
  }

  v132 = 1;
LABEL_21:

  objc_autoreleasePoolPop(context);
  if (!v132)
  {
    goto LABEL_23;
  }

  self = self;
  selfCopy = self;
LABEL_24:

  v134 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self->_providerID || (itemIdentifier = self->_itemIdentifier) == 0 || !self->_filename || !self->_contentType)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FPItem *)self encodeWithCoder:v6];
    }

    fp_simulate_crash(@"item does not have all the required properties; encoding will be invalid", v7, v8, v9, v10, v11, v12, v13, v19);
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [FPItem encodeWithCoder:];
    }

    itemIdentifier = self->_itemIdentifier;
  }

  [coderCopy encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [coderCopy encodeObject:self->_formerIdentifier forKey:@"_formerIdentifier"];
  [coderCopy encodeObject:self->_parentFormerIdentifier forKey:@"_parentFormerIdentifier"];
  [coderCopy encodeObject:self->_parentItemIdentifier forKey:@"_parentItemIdentifier"];
  [coderCopy encodeObject:self->_providerID forKey:@"_providerIdentifier"];
  [coderCopy encodeObject:self->_domainIdentifier forKey:@"_domainIdentifier"];
  [coderCopy encodeObject:self->_filename forKey:@"_filename"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
  [coderCopy encodeObject:self->_contentType forKey:@"_contentType"];
  [coderCopy encodeObject:self->_documentSize forKey:@"_documentSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urlWrapper = self->_urlWrapper;
    if (urlWrapper)
    {
      [coderCopy encodeObject:urlWrapper forKey:@"_urlWrapper"];
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v17 = selfCopy->_fileURL;
      objc_sync_exit(selfCopy);

      if (v17)
      {
        v18 = [FPSandboxingURLWrapper wrapperWithURL:v17 readonly:0 error:0];
        [coderCopy encodeObject:v18 forKey:@"_urlWrapper"];
      }
    }
  }

  [coderCopy encodeObject:self->_detachedRootLogicalURL forKey:@"_detachedRootLogicalURL"];
  [coderCopy encodeInteger:self->_capabilities forKey:@"_capabilities"];
  [coderCopy encodeInteger:self->_enumerationOrigin forKey:@"_enumerationOrigin"];
  [coderCopy encodeObject:self->_creationDate forKey:@"_creationDate"];
  [coderCopy encodeObject:self->_contentModificationDate forKey:@"_contentModificationDate"];
  [coderCopy encodeBool:self->_trashed forKey:@"_trashed"];
  [coderCopy encodeObject:self->_lastUsedDate forKey:@"_lastUsedDate"];
  [coderCopy encodeObject:self->_tags forKey:@"_tags"];
  [coderCopy encodeObject:self->_favoriteRank forKey:@"_favoriteRank"];
  [coderCopy encodeBool:self->_uploaded forKey:@"_uploaded"];
  [coderCopy encodeBool:self->_uploading forKey:@"_uploading"];
  [coderCopy encodeObject:self->_uploadingError forKey:@"_uploadingError"];
  [coderCopy encodeBool:self->_excludedFromSync forKey:@"_excludedFromSync"];
  [coderCopy encodeBool:self->_ignoreRoot forKey:@"_ignoreRoot"];
  [coderCopy encodeInteger:self->_exclusionType forKey:@"_exclusionType"];
  [coderCopy encodeBool:self->_downloaded forKey:@"_downloaded"];
  [coderCopy encodeBool:self->_downloading forKey:@"_downloading"];
  [coderCopy encodeObject:self->_downloadingError forKey:@"_downloadingError"];
  [coderCopy encodeBool:self->_mostRecentVersionDownloaded forKey:@"_mostRecentVersionDownloaded"];
  [coderCopy encodeBool:self->_shared forKey:@"_shared"];
  [coderCopy encodeBool:self->_sharedByCurrentUser forKey:@"_sharedByCurrentUser"];
  [coderCopy encodeBool:self->_fp_lastModifiedByCurrentUser forKey:@"_fp_lastModifiedByCurrentUser"];
  [coderCopy encodeObject:self->_ownerNameComponents forKey:@"_ownerNameComponents"];
  [coderCopy encodeObject:self->_mostRecentEditorNameComponents forKey:@"_mostRecentEditorNameComponents"];
  [coderCopy encodeObject:self->_collaborationIdentifier forKey:@"_collaborationIdentifier"];
  [coderCopy encodeObject:self->_originatorInfo forKey:@"_originatorInfo"];
  [coderCopy encodeObject:self->_childItemCount forKey:@"_childItemCount"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
  [coderCopy encodeInteger:self->_state forKey:@"_state"];
  [coderCopy encodeObject:self->_placeholderIdentifier forKey:@"_placeholdIdentifier"];
  [coderCopy encodeObject:self->_versionIdentifier forKey:@"_versionIdentifier"];
  [coderCopy encodeObject:self->_itemVersion forKey:@"_itemVersion"];
  [coderCopy encodeObject:self->_spotlightDomainIdentifier forKey:@"rsdi"];
  [coderCopy encodeObject:self->_fp_spotlightSubDomainIdentifier forKey:@"_spotlightDomainIdentifier"];
  [coderCopy encodeBool:self->_inPinnedFolder forKey:@"_inPinnedFolder"];
  [coderCopy encodeBool:self->_pinned forKey:@"_pinned"];
  [coderCopy encodeObject:self->_hasUnresolvedConflicts forKey:@"_hasUnresolvedConflicts"];
  [coderCopy encodeObject:self->_isDownloadRequested forKey:@"_isDownloadRequested"];
  [coderCopy encodeObject:self->_sharingPermissions forKey:@"_sharingPermissions"];
  [coderCopy encodeObject:self->_containerDisplayName forKey:@"_containerDisplayName"];
  [coderCopy encodeBool:self->_supportsMostRecentVersionDownloaded forKey:@"_supportsMostRecentVersionDownloaded"];
  [coderCopy encodeObject:self->_fp_appContainerBundleIdentifier forKey:@"_fp_appContainerBundleIdentifier"];
  [coderCopy encodeObject:self->_fp_parentDomainIdentifier forKey:@"_fp_parentDomainIdentifier"];
  [coderCopy encodeObject:self->_cloudContainerIdentifier forKey:@"_cloudContainerIdentifier"];
  [coderCopy encodeBool:self->_isUbiquitous forKey:@"_isUbiquitous"];
  [coderCopy encodeBool:self->_isContainer forKey:@"_isContainer"];
  [coderCopy encodeBool:self->_isContainerPristine forKey:@"_isContainerPristine"];
  [coderCopy encodeBool:self->_topLevelSharedItem forKey:@"_topLevelSharedItem"];
  [coderCopy encodeBool:self->_recursivelyDownloaded forKey:@"_recursivelyDownloaded"];
  [coderCopy encodeBool:self->_contentZoneRoot forKey:@"_contentZoneRoot"];
  [coderCopy encodeObject:self->_conflictingVersions forKey:@"_conflictingVersions"];
  [coderCopy encodeBool:self->_isCollaborationInvitation forKey:@"_isCollaborationInvitation"];
  [coderCopy encodeInteger:self->_fileSystemFlags forKey:@"_fileSystemFlags"];
  [coderCopy encodeObject:self->_extendedAttributes forKey:@"_extendedAttributes"];
  [coderCopy encodeObject:self->_decorations forKey:@"_decorations"];
  [coderCopy encodeInt64:self->_fileID forKey:@"_fileID"];
  [coderCopy encodeInt32:self->_documentID forKey:@"_documentID"];
  [coderCopy encodeObject:self->_inheritedUserInfo forKey:@"_inheritedUserInfo"];
  [coderCopy encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [coderCopy encodeInt32:self->_typeAndCreator.type forKey:@"_typeAndCreator.type"];
  [coderCopy encodeInt32:self->_typeAndCreator.creator forKey:@"_typeAndCreator.creator"];
  [coderCopy encodeInteger:self->_contentPolicy forKey:@"_contentPolicy"];
  [coderCopy encodeInteger:self->_inheritedContentPolicy forKey:@"_inheritedContentPolicy"];
  [coderCopy encodeInteger:self->_effectiveContentPolicy forKey:@"_effectiveContentPolicy"];
  [coderCopy encodeInteger:self->_unsupportedFields forKey:@"_unsupportedFields"];
  [coderCopy encodeBool:self->_isEvictedWithClone forKey:@"_isEvictedWithClone"];
  [coderCopy encodeBool:self->_syncPaused forKey:@"_syncPaused"];
  [coderCopy encodeBool:self->_supportsUploadWithFailOnConflict forKey:@"_supportsUploadWithFailOnConflict"];
}

- (id)fieldDifferencesWithItem:(id)item onlyMetadata:(BOOL)metadata
{
  itemCopy = item;
  v9 = objc_opt_new();
  if (metadata)
  {
    goto LABEL_52;
  }

  itemIdentifier = [itemCopy itemIdentifier];
  if (itemIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self itemIdentifier];
    itemIdentifier3 = [itemCopy itemIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_9:
      [v9 addObject:@"itemIdentifier"];
      goto LABEL_12;
    }
  }

  itemIdentifier4 = [(FPItem *)self itemIdentifier];
  if (itemIdentifier4)
  {
    itemIdentifier5 = [itemCopy itemIdentifier];

    if (itemIdentifier)
    {
    }

    if (!itemIdentifier5)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (itemIdentifier)
    {
    }
  }

LABEL_12:
  formerIdentifier = [itemCopy formerIdentifier];
  if (formerIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self formerIdentifier];
    itemIdentifier3 = [itemCopy formerIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_19:
      [v9 addObject:@"formerIdentifier"];
      goto LABEL_22;
    }
  }

  formerIdentifier2 = [(FPItem *)self formerIdentifier];
  if (formerIdentifier2)
  {
    formerIdentifier3 = [itemCopy formerIdentifier];

    if (formerIdentifier)
    {
    }

    if (!formerIdentifier3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (formerIdentifier)
    {
    }
  }

LABEL_22:
  parentItemIdentifier = [itemCopy parentItemIdentifier];
  if (parentItemIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self parentItemIdentifier];
    itemIdentifier3 = [itemCopy parentItemIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_29:
      [v9 addObject:@"parentItemIdentifier"];
      goto LABEL_32;
    }
  }

  parentItemIdentifier2 = [(FPItem *)self parentItemIdentifier];
  if (parentItemIdentifier2)
  {
    parentItemIdentifier3 = [itemCopy parentItemIdentifier];

    if (parentItemIdentifier)
    {
    }

    if (!parentItemIdentifier3)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (parentItemIdentifier)
    {
    }
  }

LABEL_32:
  providerID = [itemCopy providerID];
  if (providerID)
  {
    itemIdentifier2 = [(FPItem *)self providerID];
    itemIdentifier3 = [itemCopy providerID];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_39:
      [v9 addObject:@"providerID"];
      goto LABEL_42;
    }
  }

  providerID2 = [(FPItem *)self providerID];
  if (!providerID2)
  {

    if (providerID)
    {
    }

    goto LABEL_42;
  }

  providerID3 = [itemCopy providerID];

  if (providerID)
  {
  }

  if (!providerID3)
  {
    goto LABEL_39;
  }

LABEL_42:
  domainIdentifier = [itemCopy domainIdentifier];
  if (domainIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self domainIdentifier];
    itemIdentifier3 = [itemCopy domainIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_49:
      [v9 addObject:@"domainIdentifier"];
      goto LABEL_52;
    }
  }

  domainIdentifier2 = [(FPItem *)self domainIdentifier];
  if (domainIdentifier2)
  {
    domainIdentifier3 = [itemCopy domainIdentifier];

    if (domainIdentifier)
    {
    }

    if (!domainIdentifier3)
    {
      goto LABEL_49;
    }
  }

  else
  {

    if (domainIdentifier)
    {
    }
  }

LABEL_52:
  filename = [itemCopy filename];
  if (filename)
  {
    itemIdentifier2 = [(FPItem *)self filename];
    itemIdentifier3 = [itemCopy filename];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_59:
      [v9 addObject:@"filename"];
      goto LABEL_62;
    }
  }

  filename2 = [(FPItem *)self filename];
  if (filename2)
  {
    filename3 = [itemCopy filename];

    if (filename)
    {
    }

    if (!filename3)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (filename)
    {
    }
  }

LABEL_62:
  displayName = [itemCopy displayName];
  if (displayName)
  {
    itemIdentifier2 = [(FPItem *)self displayName];
    itemIdentifier3 = [itemCopy displayName];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_69:
      [v9 addObject:@"displayName"];
      goto LABEL_72;
    }
  }

  displayName2 = [(FPItem *)self displayName];
  if (displayName2)
  {
    displayName3 = [itemCopy displayName];

    if (displayName)
    {
    }

    if (!displayName3)
    {
      goto LABEL_69;
    }
  }

  else
  {

    if (displayName)
    {
    }
  }

LABEL_72:
  contentType = [itemCopy contentType];
  if (contentType)
  {
    itemIdentifier2 = [(FPItem *)self contentType];
    itemIdentifier3 = [itemCopy contentType];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_79:
      [v9 addObject:@"contentType"];
      goto LABEL_82;
    }
  }

  contentType2 = [(FPItem *)self contentType];
  if (contentType2)
  {
    contentType3 = [itemCopy contentType];

    if (contentType)
    {
    }

    if (!contentType3)
    {
      goto LABEL_79;
    }
  }

  else
  {

    if (contentType)
    {
    }
  }

LABEL_82:
  documentSize = [itemCopy documentSize];
  if (documentSize)
  {
    itemIdentifier2 = [(FPItem *)self documentSize];
    itemIdentifier3 = [itemCopy documentSize];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_89:
      [v9 addObject:@"documentSize"];
      goto LABEL_92;
    }
  }

  documentSize2 = [(FPItem *)self documentSize];
  if (documentSize2)
  {
    documentSize3 = [itemCopy documentSize];

    if (documentSize)
    {
    }

    if (!documentSize3)
    {
      goto LABEL_89;
    }
  }

  else
  {

    if (documentSize)
    {
    }
  }

LABEL_92:
  fileURL = [itemCopy fileURL];
  if (fileURL)
  {
    itemIdentifier2 = [(FPItem *)self fileURL];
    itemIdentifier3 = [itemCopy fileURL];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_99:
      [v9 addObject:@"fileURL"];
      goto LABEL_102;
    }
  }

  fileURL2 = [(FPItem *)self fileURL];
  if (fileURL2)
  {
    fileURL3 = [itemCopy fileURL];

    if (fileURL)
    {
    }

    if (!fileURL3)
    {
      goto LABEL_99;
    }
  }

  else
  {

    if (fileURL)
    {
    }
  }

LABEL_102:
  capabilities = [(FPItem *)self capabilities];
  if (capabilities != [itemCopy capabilities])
  {
    [v9 addObject:@"capabilities"];
  }

  enumerationOrigin = [(FPItem *)self enumerationOrigin];
  if (enumerationOrigin != [itemCopy enumerationOrigin])
  {
    [v9 addObject:@"enumerationOrigin"];
  }

  creationDate = [itemCopy creationDate];
  if (creationDate)
  {
    itemIdentifier2 = [(FPItem *)self creationDate];
    itemIdentifier3 = [itemCopy creationDate];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_113:
      [v9 addObject:@"creationDate"];
      goto LABEL_116;
    }
  }

  creationDate2 = [(FPItem *)self creationDate];
  if (creationDate2)
  {
    creationDate3 = [itemCopy creationDate];

    if (creationDate)
    {
    }

    if (!creationDate3)
    {
      goto LABEL_113;
    }
  }

  else
  {

    if (creationDate)
    {
    }
  }

LABEL_116:
  contentModificationDate = [itemCopy contentModificationDate];
  if (contentModificationDate)
  {
    itemIdentifier2 = [(FPItem *)self contentModificationDate];
    itemIdentifier3 = [itemCopy contentModificationDate];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_123:
      [v9 addObject:@"contentModificationDate"];
      goto LABEL_126;
    }
  }

  contentModificationDate2 = [(FPItem *)self contentModificationDate];
  if (contentModificationDate2)
  {
    contentModificationDate3 = [itemCopy contentModificationDate];

    if (contentModificationDate)
    {
    }

    if (!contentModificationDate3)
    {
      goto LABEL_123;
    }
  }

  else
  {

    if (contentModificationDate)
    {
    }
  }

LABEL_126:
  isTrashed = [(FPItem *)self isTrashed];
  if (isTrashed != [itemCopy isTrashed])
  {
    [v9 addObject:@"isTrashed"];
  }

  lastUsedDate = [itemCopy lastUsedDate];
  if (lastUsedDate)
  {
    itemIdentifier2 = [(FPItem *)self lastUsedDate];
    itemIdentifier3 = [itemCopy lastUsedDate];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_135:
      [v9 addObject:@"lastUsedDate"];
      goto LABEL_138;
    }
  }

  lastUsedDate2 = [(FPItem *)self lastUsedDate];
  if (lastUsedDate2)
  {
    lastUsedDate3 = [itemCopy lastUsedDate];

    if (lastUsedDate)
    {
    }

    if (!lastUsedDate3)
    {
      goto LABEL_135;
    }
  }

  else
  {

    if (lastUsedDate)
    {
    }
  }

LABEL_138:
  tags = [itemCopy tags];
  if (tags)
  {
    itemIdentifier2 = [(FPItem *)self tags];
    itemIdentifier3 = [itemCopy tags];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_145:
      [v9 addObject:@"tags"];
      goto LABEL_148;
    }
  }

  tags2 = [(FPItem *)self tags];
  if (tags2)
  {
    tags3 = [itemCopy tags];

    if (tags)
    {
    }

    if (!tags3)
    {
      goto LABEL_145;
    }
  }

  else
  {

    if (tags)
    {
    }
  }

LABEL_148:
  favoriteRank = [itemCopy favoriteRank];
  if (favoriteRank)
  {
    itemIdentifier2 = [(FPItem *)self favoriteRank];
    itemIdentifier3 = [itemCopy favoriteRank];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_155:
      [v9 addObject:@"favoriteRank"];
      goto LABEL_158;
    }
  }

  favoriteRank2 = [(FPItem *)self favoriteRank];
  if (favoriteRank2)
  {
    favoriteRank3 = [itemCopy favoriteRank];

    if (favoriteRank)
    {
    }

    if (!favoriteRank3)
    {
      goto LABEL_155;
    }
  }

  else
  {

    if (favoriteRank)
    {
    }
  }

LABEL_158:
  if (metadata)
  {
    goto LABEL_225;
  }

  isUploaded = [(FPItem *)self isUploaded];
  if (isUploaded != [itemCopy isUploaded])
  {
    [v9 addObject:@"isUploaded"];
  }

  isUploading = [(FPItem *)self isUploading];
  if (isUploading != [itemCopy isUploading])
  {
    [v9 addObject:@"isUploading"];
  }

  uploadingError = [itemCopy uploadingError];
  if (uploadingError)
  {
    itemIdentifier2 = [(FPItem *)self uploadingError];
    itemIdentifier3 = [itemCopy uploadingError];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_170:
      [v9 addObject:@"uploadingError"];
      goto LABEL_173;
    }
  }

  uploadingError2 = [(FPItem *)self uploadingError];
  if (uploadingError2)
  {
    uploadingError3 = [itemCopy uploadingError];

    if (uploadingError)
    {
    }

    if (!uploadingError3)
    {
      goto LABEL_170;
    }
  }

  else
  {

    if (uploadingError)
    {
    }
  }

LABEL_173:
  isDownloaded = [(FPItem *)self isDownloaded];
  if (isDownloaded != [itemCopy isDownloaded])
  {
    [v9 addObject:@"isDownloaded"];
  }

  isDownloading = [(FPItem *)self isDownloading];
  if (isDownloading != [itemCopy isDownloading])
  {
    [v9 addObject:@"isDownloading"];
  }

  downloadingError = [itemCopy downloadingError];
  if (downloadingError)
  {
    itemIdentifier2 = [(FPItem *)self downloadingError];
    itemIdentifier3 = [itemCopy downloadingError];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_184:
      [v9 addObject:@"downloadingError"];
      goto LABEL_187;
    }
  }

  downloadingError2 = [(FPItem *)self downloadingError];
  if (downloadingError2)
  {
    downloadingError3 = [itemCopy downloadingError];

    if (downloadingError)
    {
    }

    if (!downloadingError3)
    {
      goto LABEL_184;
    }
  }

  else
  {

    if (downloadingError)
    {
    }
  }

LABEL_187:
  isMostRecentVersionDownloaded = [(FPItem *)self isMostRecentVersionDownloaded];
  if (isMostRecentVersionDownloaded != [itemCopy isMostRecentVersionDownloaded])
  {
    [v9 addObject:@"isMostRecentVersionDownloaded"];
  }

  isShared = [(FPItem *)self isShared];
  if (isShared != [itemCopy isShared])
  {
    [v9 addObject:@"isShared"];
  }

  isSharedByCurrentUser = [(FPItem *)self isSharedByCurrentUser];
  if (isSharedByCurrentUser != [itemCopy isSharedByCurrentUser])
  {
    [v9 addObject:@"isSharedByCurrentUser"];
  }

  fp_isLastModifiedByCurrentUser = [(FPItem *)self fp_isLastModifiedByCurrentUser];
  if (fp_isLastModifiedByCurrentUser != [itemCopy fp_isLastModifiedByCurrentUser])
  {
    [v9 addObject:@"fp_isLastModifiedByCurrentUser"];
  }

  ownerNameComponents = [itemCopy ownerNameComponents];
  if (ownerNameComponents)
  {
    itemIdentifier2 = [(FPItem *)self ownerNameComponents];
    itemIdentifier3 = [itemCopy ownerNameComponents];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_202:
      [v9 addObject:@"ownerNameComponents"];
      goto LABEL_205;
    }
  }

  ownerNameComponents2 = [(FPItem *)self ownerNameComponents];
  if (ownerNameComponents2)
  {
    ownerNameComponents3 = [itemCopy ownerNameComponents];

    if (ownerNameComponents)
    {
    }

    if (!ownerNameComponents3)
    {
      goto LABEL_202;
    }
  }

  else
  {

    if (ownerNameComponents)
    {
    }
  }

LABEL_205:
  mostRecentEditorNameComponents = [itemCopy mostRecentEditorNameComponents];
  if (mostRecentEditorNameComponents)
  {
    itemIdentifier2 = [(FPItem *)self mostRecentEditorNameComponents];
    itemIdentifier3 = [itemCopy mostRecentEditorNameComponents];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_212:
      [v9 addObject:@"mostRecentEditorNameComponents"];
      goto LABEL_215;
    }
  }

  mostRecentEditorNameComponents2 = [(FPItem *)self mostRecentEditorNameComponents];
  if (!mostRecentEditorNameComponents2)
  {

    if (mostRecentEditorNameComponents)
    {
    }

    goto LABEL_215;
  }

  mostRecentEditorNameComponents3 = [itemCopy mostRecentEditorNameComponents];

  if (mostRecentEditorNameComponents)
  {
  }

  if (!mostRecentEditorNameComponents3)
  {
    goto LABEL_212;
  }

LABEL_215:
  collaborationIdentifier = [itemCopy collaborationIdentifier];
  if (collaborationIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self collaborationIdentifier];
    itemIdentifier3 = [itemCopy collaborationIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_222:
      [v9 addObject:@"collaborationIdentifier"];
      goto LABEL_225;
    }
  }

  collaborationIdentifier2 = [(FPItem *)self collaborationIdentifier];
  if (collaborationIdentifier2)
  {
    collaborationIdentifier3 = [itemCopy collaborationIdentifier];

    if (collaborationIdentifier)
    {
    }

    if (!collaborationIdentifier3)
    {
      goto LABEL_222;
    }
  }

  else
  {

    if (collaborationIdentifier)
    {
    }
  }

LABEL_225:
  childItemCount = [itemCopy childItemCount];
  if (childItemCount)
  {
    itemIdentifier2 = [(FPItem *)self childItemCount];
    itemIdentifier3 = [itemCopy childItemCount];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_232:
      [v9 addObject:@"childItemCount"];
      goto LABEL_235;
    }
  }

  childItemCount2 = [(FPItem *)self childItemCount];
  if (childItemCount2)
  {
    childItemCount3 = [itemCopy childItemCount];

    if (childItemCount)
    {
    }

    if (!childItemCount3)
    {
      goto LABEL_232;
    }
  }

  else
  {

    if (childItemCount)
    {
    }
  }

LABEL_235:
  userInfo = [itemCopy userInfo];
  if (userInfo)
  {
    itemIdentifier2 = [(FPItem *)self userInfo];
    itemIdentifier3 = [itemCopy userInfo];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_242:
      [v9 addObject:@"userInfo"];
      goto LABEL_245;
    }
  }

  userInfo2 = [(FPItem *)self userInfo];
  if (userInfo2)
  {
    userInfo3 = [itemCopy userInfo];

    if (userInfo)
    {
    }

    if (!userInfo3)
    {
      goto LABEL_242;
    }
  }

  else
  {

    if (userInfo)
    {
    }
  }

LABEL_245:
  if (metadata)
  {
    goto LABEL_394;
  }

  state = [(FPItem *)self state];
  if (state != [itemCopy state])
  {
    [v9 addObject:@"state"];
  }

  placeholderIdentifier = [itemCopy placeholderIdentifier];
  if (placeholderIdentifier)
  {
    userInfo = [(FPItem *)self placeholderIdentifier];
    itemIdentifier2 = [itemCopy placeholderIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_255:
      [v9 addObject:@"placeholderIdentifier"];
      goto LABEL_258;
    }
  }

  placeholderIdentifier2 = [(FPItem *)self placeholderIdentifier];
  if (placeholderIdentifier2)
  {
    placeholderIdentifier3 = [itemCopy placeholderIdentifier];

    if (placeholderIdentifier)
    {
    }

    if (!placeholderIdentifier3)
    {
      goto LABEL_255;
    }
  }

  else
  {

    if (placeholderIdentifier)
    {
    }
  }

LABEL_258:
  versionIdentifier = [itemCopy versionIdentifier];
  if (versionIdentifier)
  {
    userInfo = [(FPItem *)self versionIdentifier];
    itemIdentifier2 = [itemCopy versionIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_265:
      [v9 addObject:@"versionIdentifier"];
      goto LABEL_268;
    }
  }

  versionIdentifier2 = [(FPItem *)self versionIdentifier];
  if (versionIdentifier2)
  {
    versionIdentifier3 = [itemCopy versionIdentifier];

    if (versionIdentifier)
    {
    }

    if (!versionIdentifier3)
    {
      goto LABEL_265;
    }
  }

  else
  {

    if (versionIdentifier)
    {
    }
  }

LABEL_268:
  itemVersion = [itemCopy itemVersion];
  if (itemVersion)
  {
    userInfo = [(FPItem *)self itemVersion];
    itemIdentifier2 = [itemCopy itemVersion];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_275:
      [v9 addObject:@"itemVersion"];
      goto LABEL_278;
    }
  }

  itemVersion2 = [(FPItem *)self itemVersion];
  if (itemVersion2)
  {
    itemVersion3 = [itemCopy itemVersion];

    if (itemVersion)
    {
    }

    if (!itemVersion3)
    {
      goto LABEL_275;
    }
  }

  else
  {

    if (itemVersion)
    {
    }
  }

LABEL_278:
  spotlightDomainIdentifier = [itemCopy spotlightDomainIdentifier];
  if (spotlightDomainIdentifier)
  {
    userInfo = [(FPItem *)self spotlightDomainIdentifier];
    itemIdentifier2 = [itemCopy spotlightDomainIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_285:
      [v9 addObject:@"spotlightDomainIdentifier"];
      goto LABEL_288;
    }
  }

  spotlightDomainIdentifier2 = [(FPItem *)self spotlightDomainIdentifier];
  if (spotlightDomainIdentifier2)
  {
    spotlightDomainIdentifier3 = [itemCopy spotlightDomainIdentifier];

    if (spotlightDomainIdentifier)
    {
    }

    if (!spotlightDomainIdentifier3)
    {
      goto LABEL_285;
    }
  }

  else
  {

    if (spotlightDomainIdentifier)
    {
    }
  }

LABEL_288:
  fp_spotlightSubDomainIdentifier = [itemCopy fp_spotlightSubDomainIdentifier];
  if (fp_spotlightSubDomainIdentifier)
  {
    userInfo = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    itemIdentifier2 = [itemCopy fp_spotlightSubDomainIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_295:
      [v9 addObject:@"fp_spotlightSubDomainIdentifier"];
      goto LABEL_298;
    }
  }

  fp_spotlightSubDomainIdentifier2 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
  if (fp_spotlightSubDomainIdentifier2)
  {
    fp_spotlightSubDomainIdentifier3 = [itemCopy fp_spotlightSubDomainIdentifier];

    if (fp_spotlightSubDomainIdentifier)
    {
    }

    if (!fp_spotlightSubDomainIdentifier3)
    {
      goto LABEL_295;
    }
  }

  else
  {

    if (fp_spotlightSubDomainIdentifier)
    {
    }
  }

LABEL_298:
  isInPinnedFolder = [(FPItem *)self isInPinnedFolder];
  if (isInPinnedFolder != [itemCopy isInPinnedFolder])
  {
    [v9 addObject:@"isInPinnedFolder"];
  }

  isPinned = [(FPItem *)self isPinned];
  if (isPinned != [itemCopy isPinned])
  {
    [v9 addObject:@"isPinned"];
  }

  hasUnresolvedConflicts = [itemCopy hasUnresolvedConflicts];
  if (hasUnresolvedConflicts)
  {
    userInfo = [(FPItem *)self hasUnresolvedConflicts];
    itemIdentifier2 = [itemCopy hasUnresolvedConflicts];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_309:
      [v9 addObject:@"hasUnresolvedConflicts"];
      goto LABEL_312;
    }
  }

  hasUnresolvedConflicts2 = [(FPItem *)self hasUnresolvedConflicts];
  if (hasUnresolvedConflicts2)
  {
    hasUnresolvedConflicts3 = [itemCopy hasUnresolvedConflicts];

    if (hasUnresolvedConflicts)
    {
    }

    if (!hasUnresolvedConflicts3)
    {
      goto LABEL_309;
    }
  }

  else
  {

    if (hasUnresolvedConflicts)
    {
    }
  }

LABEL_312:
  isDownloadRequested = [itemCopy isDownloadRequested];
  if (isDownloadRequested)
  {
    userInfo = [(FPItem *)self isDownloadRequested];
    itemIdentifier2 = [itemCopy isDownloadRequested];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_319:
      [v9 addObject:@"isDownloadRequested"];
      goto LABEL_322;
    }
  }

  isDownloadRequested2 = [(FPItem *)self isDownloadRequested];
  if (isDownloadRequested2)
  {
    isDownloadRequested3 = [itemCopy isDownloadRequested];

    if (isDownloadRequested)
    {
    }

    if (!isDownloadRequested3)
    {
      goto LABEL_319;
    }
  }

  else
  {

    if (isDownloadRequested)
    {
    }
  }

LABEL_322:
  sharingPermissions = [itemCopy sharingPermissions];
  if (sharingPermissions)
  {
    userInfo = [(FPItem *)self sharingPermissions];
    itemIdentifier2 = [itemCopy sharingPermissions];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_329:
      [v9 addObject:@"sharingPermissions"];
      goto LABEL_332;
    }
  }

  sharingPermissions2 = [(FPItem *)self sharingPermissions];
  if (sharingPermissions2)
  {
    sharingPermissions3 = [itemCopy sharingPermissions];

    if (sharingPermissions)
    {
    }

    if (!sharingPermissions3)
    {
      goto LABEL_329;
    }
  }

  else
  {

    if (sharingPermissions)
    {
    }
  }

LABEL_332:
  containerDisplayName = [itemCopy containerDisplayName];
  if (containerDisplayName)
  {
    userInfo = [(FPItem *)self containerDisplayName];
    itemIdentifier2 = [itemCopy containerDisplayName];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_339:
      [v9 addObject:@"containerDisplayName"];
      goto LABEL_342;
    }
  }

  containerDisplayName2 = [(FPItem *)self containerDisplayName];
  if (containerDisplayName2)
  {
    containerDisplayName3 = [itemCopy containerDisplayName];

    if (containerDisplayName)
    {
    }

    if (!containerDisplayName3)
    {
      goto LABEL_339;
    }
  }

  else
  {

    if (containerDisplayName)
    {
    }
  }

LABEL_342:
  supportsMostRecentVersionDownloaded = [(FPItem *)self supportsMostRecentVersionDownloaded];
  if (supportsMostRecentVersionDownloaded != [itemCopy supportsMostRecentVersionDownloaded])
  {
    [v9 addObject:@"supportsMostRecentVersionDownloaded"];
  }

  fp_appContainerBundleIdentifier = [itemCopy fp_appContainerBundleIdentifier];
  if (fp_appContainerBundleIdentifier)
  {
    userInfo = [(FPItem *)self fp_appContainerBundleIdentifier];
    itemIdentifier2 = [itemCopy fp_appContainerBundleIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_351:
      [v9 addObject:@"fp_appContainerBundleIdentifier"];
      goto LABEL_354;
    }
  }

  fp_appContainerBundleIdentifier2 = [(FPItem *)self fp_appContainerBundleIdentifier];
  if (fp_appContainerBundleIdentifier2)
  {
    fp_appContainerBundleIdentifier3 = [itemCopy fp_appContainerBundleIdentifier];

    if (fp_appContainerBundleIdentifier)
    {
    }

    if (!fp_appContainerBundleIdentifier3)
    {
      goto LABEL_351;
    }
  }

  else
  {

    if (fp_appContainerBundleIdentifier)
    {
    }
  }

LABEL_354:
  fp_parentDomainIdentifier = [itemCopy fp_parentDomainIdentifier];
  if (fp_parentDomainIdentifier)
  {
    userInfo = [(FPItem *)self fp_parentDomainIdentifier];
    itemIdentifier2 = [itemCopy fp_parentDomainIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_361:
      [v9 addObject:@"fp_parentDomainIdentifier"];
      goto LABEL_364;
    }
  }

  fp_parentDomainIdentifier2 = [(FPItem *)self fp_parentDomainIdentifier];
  if (fp_parentDomainIdentifier2)
  {
    fp_parentDomainIdentifier3 = [itemCopy fp_parentDomainIdentifier];

    if (fp_parentDomainIdentifier)
    {
    }

    if (!fp_parentDomainIdentifier3)
    {
      goto LABEL_361;
    }
  }

  else
  {

    if (fp_parentDomainIdentifier)
    {
    }
  }

LABEL_364:
  cloudContainerIdentifier = [itemCopy cloudContainerIdentifier];
  if (cloudContainerIdentifier)
  {
    userInfo = [(FPItem *)self cloudContainerIdentifier];
    itemIdentifier2 = [itemCopy cloudContainerIdentifier];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_371:
      [v9 addObject:@"cloudContainerIdentifier"];
      goto LABEL_374;
    }
  }

  cloudContainerIdentifier2 = [(FPItem *)self cloudContainerIdentifier];
  if (cloudContainerIdentifier2)
  {
    cloudContainerIdentifier3 = [itemCopy cloudContainerIdentifier];

    if (cloudContainerIdentifier)
    {
    }

    if (!cloudContainerIdentifier3)
    {
      goto LABEL_371;
    }
  }

  else
  {

    if (cloudContainerIdentifier)
    {
    }
  }

LABEL_374:
  isUbiquitous = [(FPItem *)self isUbiquitous];
  if (isUbiquitous != [itemCopy isUbiquitous])
  {
    [v9 addObject:@"isUbiquitous"];
  }

  isContainer = [(FPItem *)self isContainer];
  if (isContainer != [itemCopy isContainer])
  {
    [v9 addObject:@"isContainer"];
  }

  isContainerPristine = [(FPItem *)self isContainerPristine];
  if (isContainerPristine != [itemCopy isContainerPristine])
  {
    [v9 addObject:@"isContainerPristine"];
  }

  isTopLevelSharedItem = [(FPItem *)self isTopLevelSharedItem];
  if (isTopLevelSharedItem != [itemCopy isTopLevelSharedItem])
  {
    [v9 addObject:@"isTopLevelSharedItem"];
  }

  isRecursivelyDownloaded = [(FPItem *)self isRecursivelyDownloaded];
  if (isRecursivelyDownloaded != [itemCopy isRecursivelyDownloaded])
  {
    [v9 addObject:@"isRecursivelyDownloaded"];
  }

  conflictingVersions = [itemCopy conflictingVersions];
  if (conflictingVersions)
  {
    userInfo = [(FPItem *)self conflictingVersions];
    itemIdentifier2 = [itemCopy conflictingVersions];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_391:
      [v9 addObject:@"conflictingVersions"];
      goto LABEL_394;
    }
  }

  conflictingVersions2 = [(FPItem *)self conflictingVersions];
  if (conflictingVersions2)
  {
    conflictingVersions3 = [itemCopy conflictingVersions];

    if (conflictingVersions)
    {
    }

    if (!conflictingVersions3)
    {
      goto LABEL_391;
    }
  }

  else
  {

    if (conflictingVersions)
    {
    }
  }

LABEL_394:
  fileSystemFlags = [(FPItem *)self fileSystemFlags];
  if (fileSystemFlags != [itemCopy fileSystemFlags])
  {
    [v9 addObject:@"fileSystemFlags"];
  }

  extendedAttributes = [itemCopy extendedAttributes];
  if (extendedAttributes)
  {
    userInfo = [(FPItem *)self extendedAttributes];
    itemIdentifier2 = [itemCopy extendedAttributes];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_403:
      [v9 addObject:@"extendedAttributes"];
      goto LABEL_406;
    }
  }

  extendedAttributes2 = [(FPItem *)self extendedAttributes];
  if (extendedAttributes2)
  {
    extendedAttributes3 = [itemCopy extendedAttributes];

    if (extendedAttributes)
    {
    }

    if (!extendedAttributes3)
    {
      goto LABEL_403;
    }
  }

  else
  {

    if (extendedAttributes)
    {
    }
  }

LABEL_406:
  decorations = [itemCopy decorations];
  if (decorations)
  {
    userInfo = [(FPItem *)self decorations];
    itemIdentifier2 = [itemCopy decorations];
    if (([userInfo isEqual:itemIdentifier2] & 1) == 0)
    {

LABEL_413:
      [v9 addObject:@"decorations"];
      goto LABEL_416;
    }
  }

  decorations2 = [(FPItem *)self decorations];
  if (decorations2)
  {
    decorations3 = [itemCopy decorations];

    if (decorations)
    {
    }

    if (!decorations3)
    {
      goto LABEL_413;
    }
  }

  else
  {

    if (decorations)
    {
    }
  }

LABEL_416:
  typeAndCreator = [(FPItem *)self typeAndCreator];
  if (typeAndCreator != [itemCopy typeAndCreator] || (v143 = -[FPItem typeAndCreator](self, "typeAndCreator"), (objc_msgSend(itemCopy, "typeAndCreator") ^ *&v143) >> 32))
  {
    [v9 addObject:@"typeAndCreator"];
  }

  contentPolicy = [(FPItem *)self contentPolicy];
  if (contentPolicy != [itemCopy contentPolicy])
  {
    [v9 addObject:@"contentPolicy"];
  }

  inheritedContentPolicy = [(FPItem *)self inheritedContentPolicy];
  if (inheritedContentPolicy != [itemCopy inheritedContentPolicy])
  {
    [v9 addObject:@"inheritedContentPolicy"];
  }

  effectiveContentPolicy = [(FPItem *)self effectiveContentPolicy];
  if (effectiveContentPolicy != [itemCopy effectiveContentPolicy])
  {
    [v9 addObject:@"effectiveContentPolicy"];
  }

  isEvictedWithClone = [(FPItem *)self isEvictedWithClone];
  if (isEvictedWithClone != [itemCopy isEvictedWithClone])
  {
    [v9 addObject:@"isEvictedWithClone"];
  }

  isSyncPaused = [(FPItem *)self isSyncPaused];
  if (isSyncPaused != [itemCopy isSyncPaused])
  {
    [v9 addObject:@"isSyncPaused"];
  }

  v149 = fp_current_or_default_log();
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
  {
    [FPItem fieldDifferencesWithItem:v9 onlyMetadata:itemCopy];
  }

  v150 = v9;
  return v9;
}

- (void)overrideFields:(id)fields ofItem:(id)item
{
  fieldsCopy = fields;
  itemCopy = item;
  if (![fieldsCopy containsObject:@"itemIdentifier"])
  {
    goto LABEL_14;
  }

  itemIdentifier = [itemCopy itemIdentifier];
  if (itemIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self itemIdentifier];
    itemIdentifier3 = [itemCopy itemIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

LABEL_9:
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      itemIdentifier4 = [itemCopy itemIdentifier];
      itemIdentifier = self->_itemIdentifier;
      self->_itemIdentifier = itemIdentifier4;

      goto LABEL_14;
    }
  }

  itemIdentifier5 = [(FPItem *)self itemIdentifier];
  if (itemIdentifier5)
  {
    itemIdentifier6 = [itemCopy itemIdentifier];

    if (itemIdentifier)
    {
    }

    if (!itemIdentifier6)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (itemIdentifier)
    {
    }
  }

LABEL_14:
  if (![fieldsCopy containsObject:@"formerIdentifier"])
  {
    goto LABEL_28;
  }

  formerIdentifier = [itemCopy formerIdentifier];
  if (formerIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self formerIdentifier];
    itemIdentifier3 = [itemCopy formerIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  formerIdentifier = [(FPItem *)self formerIdentifier];
  if (!formerIdentifier)
  {

    if (!formerIdentifier)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  formerIdentifier2 = [itemCopy formerIdentifier];

  if (formerIdentifier)
  {
  }

  if (!formerIdentifier2)
  {
LABEL_22:
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    formerIdentifier3 = [itemCopy formerIdentifier];
    formerIdentifier = self->_formerIdentifier;
    self->_formerIdentifier = formerIdentifier3;
LABEL_27:
  }

LABEL_28:
  if (![fieldsCopy containsObject:@"parentFormerIdentifier"])
  {
    goto LABEL_42;
  }

  parentFormerIdentifier = [itemCopy parentFormerIdentifier];
  if (parentFormerIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self parentFormerIdentifier];
    itemIdentifier3 = [itemCopy parentFormerIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_36;
    }
  }

  parentFormerIdentifier = [(FPItem *)self parentFormerIdentifier];
  if (!parentFormerIdentifier)
  {

    if (!parentFormerIdentifier)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  parentFormerIdentifier2 = [itemCopy parentFormerIdentifier];

  if (parentFormerIdentifier)
  {
  }

  if (!parentFormerIdentifier2)
  {
LABEL_36:
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    parentFormerIdentifier3 = [itemCopy parentFormerIdentifier];
    parentFormerIdentifier = self->_parentFormerIdentifier;
    self->_parentFormerIdentifier = parentFormerIdentifier3;
LABEL_41:
  }

LABEL_42:
  if (![fieldsCopy containsObject:@"parentItemIdentifier"])
  {
    goto LABEL_56;
  }

  parentItemIdentifier = [itemCopy parentItemIdentifier];
  if (parentItemIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self parentItemIdentifier];
    itemIdentifier3 = [itemCopy parentItemIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_50;
    }
  }

  parentItemIdentifier = [(FPItem *)self parentItemIdentifier];
  if (!parentItemIdentifier)
  {

    if (!parentItemIdentifier)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  parentItemIdentifier2 = [itemCopy parentItemIdentifier];

  if (parentItemIdentifier)
  {
  }

  if (!parentItemIdentifier2)
  {
LABEL_50:
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    parentItemIdentifier3 = [itemCopy parentItemIdentifier];
    parentItemIdentifier = self->_parentItemIdentifier;
    self->_parentItemIdentifier = parentItemIdentifier3;
LABEL_55:
  }

LABEL_56:
  if (![fieldsCopy containsObject:@"providerID"])
  {
    goto LABEL_70;
  }

  providerID = [itemCopy providerID];
  if (providerID)
  {
    itemIdentifier2 = [(FPItem *)self providerID];
    itemIdentifier3 = [itemCopy providerID];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_64;
    }
  }

  providerID = [(FPItem *)self providerID];
  if (!providerID)
  {

    if (!providerID)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  providerID2 = [itemCopy providerID];

  if (providerID)
  {
  }

  if (!providerID2)
  {
LABEL_64:
    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    providerID3 = [itemCopy providerID];
    providerID = self->_providerID;
    self->_providerID = providerID3;
LABEL_69:
  }

LABEL_70:
  if (![fieldsCopy containsObject:@"domainIdentifier"])
  {
    goto LABEL_84;
  }

  domainIdentifier = [itemCopy domainIdentifier];
  if (domainIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self domainIdentifier];
    itemIdentifier3 = [itemCopy domainIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_78;
    }
  }

  domainIdentifier = [(FPItem *)self domainIdentifier];
  if (!domainIdentifier)
  {

    if (!domainIdentifier)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  domainIdentifier2 = [itemCopy domainIdentifier];

  if (domainIdentifier)
  {
  }

  if (!domainIdentifier2)
  {
LABEL_78:
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    domainIdentifier3 = [itemCopy domainIdentifier];
    domainIdentifier = self->_domainIdentifier;
    self->_domainIdentifier = domainIdentifier3;
LABEL_83:
  }

LABEL_84:
  if (![fieldsCopy containsObject:@"filename"])
  {
    goto LABEL_98;
  }

  filename = [itemCopy filename];
  if (filename)
  {
    itemIdentifier2 = [(FPItem *)self filename];
    itemIdentifier3 = [itemCopy filename];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_92;
    }
  }

  filename = [(FPItem *)self filename];
  if (!filename)
  {

    if (!filename)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  filename2 = [itemCopy filename];

  if (filename)
  {
  }

  if (!filename2)
  {
LABEL_92:
    v44 = fp_current_or_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    filename3 = [itemCopy filename];
    filename = self->_filename;
    self->_filename = filename3;
LABEL_97:
  }

LABEL_98:
  if (![fieldsCopy containsObject:@"displayName"])
  {
    goto LABEL_112;
  }

  displayName = [itemCopy displayName];
  if (displayName)
  {
    itemIdentifier2 = [(FPItem *)self displayName];
    itemIdentifier3 = [itemCopy displayName];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_106;
    }
  }

  displayName = [(FPItem *)self displayName];
  if (!displayName)
  {

    if (!displayName)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  displayName2 = [itemCopy displayName];

  if (displayName)
  {
  }

  if (!displayName2)
  {
LABEL_106:
    v49 = fp_current_or_default_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    displayName3 = [itemCopy displayName];
    displayName = self->_displayName;
    self->_displayName = displayName3;
LABEL_111:
  }

LABEL_112:
  if (![fieldsCopy containsObject:@"contentType"])
  {
    goto LABEL_126;
  }

  contentType = [itemCopy contentType];
  if (contentType)
  {
    itemIdentifier2 = [(FPItem *)self contentType];
    itemIdentifier3 = [itemCopy contentType];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_120;
    }
  }

  contentType2 = [(FPItem *)self contentType];
  if (!contentType2)
  {

    if (!contentType)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  contentType3 = [itemCopy contentType];

  if (contentType)
  {
  }

  if (!contentType3)
  {
LABEL_120:
    v54 = fp_current_or_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    contentType = [itemCopy contentType];
    [(FPItem *)self setContentType:contentType];
LABEL_125:
  }

LABEL_126:
  if (![fieldsCopy containsObject:@"documentSize"])
  {
    goto LABEL_140;
  }

  documentSize = [itemCopy documentSize];
  if (documentSize)
  {
    itemIdentifier2 = [(FPItem *)self documentSize];
    itemIdentifier3 = [itemCopy documentSize];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_134;
    }
  }

  documentSize = [(FPItem *)self documentSize];
  if (!documentSize)
  {

    if (!documentSize)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  documentSize2 = [itemCopy documentSize];

  if (documentSize)
  {
  }

  if (!documentSize2)
  {
LABEL_134:
    v58 = fp_current_or_default_log();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    documentSize3 = [itemCopy documentSize];
    documentSize = self->_documentSize;
    self->_documentSize = documentSize3;
LABEL_139:
  }

LABEL_140:
  if ([fieldsCopy containsObject:@"fileURL"])
  {
    fileURL = [itemCopy fileURL];
    if (fileURL)
    {
      itemIdentifier2 = [(FPItem *)self fileURL];
      itemIdentifier3 = [itemCopy fileURL];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_148:
        v63 = fp_current_or_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        fileURL = [itemCopy fileURL];
        fileURL = self->_fileURL;
        self->_fileURL = fileURL;
        goto LABEL_153;
      }
    }

    fileURL2 = [(FPItem *)self fileURL];
    if (fileURL2)
    {
      fileURL3 = [itemCopy fileURL];

      if (fileURL)
      {
      }

      if (!fileURL3)
      {
        goto LABEL_148;
      }
    }

    else
    {

      if (fileURL)
      {

LABEL_153:
      }
    }
  }

  if ([fieldsCopy containsObject:@"capabilities"])
  {
    capabilities = [(FPItem *)self capabilities];
    if (capabilities != [itemCopy capabilities])
    {
      v66 = fp_current_or_default_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v66 ofItem:?];
      }

      self->_capabilities = [itemCopy capabilities];
    }
  }

  if ([fieldsCopy containsObject:@"enumerationOrigin"])
  {
    enumerationOrigin = [(FPItem *)self enumerationOrigin];
    if (enumerationOrigin != [itemCopy enumerationOrigin])
    {
      v68 = fp_current_or_default_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v68 ofItem:?];
      }

      self->_enumerationOrigin = [itemCopy enumerationOrigin];
    }
  }

  if ([fieldsCopy containsObject:@"creationDate"])
  {
    creationDate = [itemCopy creationDate];
    if (creationDate)
    {
      itemIdentifier2 = [(FPItem *)self creationDate];
      itemIdentifier3 = [itemCopy creationDate];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_172;
      }
    }

    creationDate = [(FPItem *)self creationDate];
    if (!creationDate)
    {

      if (!creationDate)
      {
        goto LABEL_178;
      }

      goto LABEL_177;
    }

    creationDate2 = [itemCopy creationDate];

    if (creationDate)
    {
    }

    if (!creationDate2)
    {
LABEL_172:
      v72 = fp_current_or_default_log();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      creationDate3 = [itemCopy creationDate];
      creationDate = self->_creationDate;
      self->_creationDate = creationDate3;
LABEL_177:
    }
  }

LABEL_178:
  if ([fieldsCopy containsObject:@"contentModificationDate"])
  {
    contentModificationDate = [itemCopy contentModificationDate];
    if (contentModificationDate)
    {
      itemIdentifier2 = [(FPItem *)self contentModificationDate];
      itemIdentifier3 = [itemCopy contentModificationDate];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_186:
        v77 = fp_current_or_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        contentModificationDate = [itemCopy contentModificationDate];
        contentModificationDate = self->_contentModificationDate;
        self->_contentModificationDate = contentModificationDate;
        goto LABEL_191;
      }
    }

    contentModificationDate2 = [(FPItem *)self contentModificationDate];
    if (contentModificationDate2)
    {
      contentModificationDate3 = [itemCopy contentModificationDate];

      if (contentModificationDate)
      {
      }

      if (!contentModificationDate3)
      {
        goto LABEL_186;
      }
    }

    else
    {

      if (contentModificationDate)
      {

LABEL_191:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isTrashed"])
  {
    isTrashed = [(FPItem *)self isTrashed];
    if (isTrashed != [itemCopy isTrashed])
    {
      v80 = fp_current_or_default_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v80 ofItem:?];
      }

      self->_trashed = [itemCopy isTrashed];
    }
  }

  if ([fieldsCopy containsObject:@"lastUsedDate"])
  {
    lastUsedDate = [itemCopy lastUsedDate];
    if (lastUsedDate)
    {
      itemIdentifier2 = [(FPItem *)self lastUsedDate];
      itemIdentifier3 = [itemCopy lastUsedDate];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_205;
      }
    }

    lastUsedDate = [(FPItem *)self lastUsedDate];
    if (!lastUsedDate)
    {

      if (!lastUsedDate)
      {
        goto LABEL_211;
      }

      goto LABEL_210;
    }

    lastUsedDate2 = [itemCopy lastUsedDate];

    if (lastUsedDate)
    {
    }

    if (!lastUsedDate2)
    {
LABEL_205:
      v84 = fp_current_or_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      lastUsedDate3 = [itemCopy lastUsedDate];
      lastUsedDate = self->_lastUsedDate;
      self->_lastUsedDate = lastUsedDate3;
LABEL_210:
    }
  }

LABEL_211:
  if (![fieldsCopy containsObject:@"tags"])
  {
    goto LABEL_225;
  }

  tags = [itemCopy tags];
  if (tags)
  {
    itemIdentifier2 = [(FPItem *)self tags];
    itemIdentifier3 = [itemCopy tags];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_219;
    }
  }

  tags = [(FPItem *)self tags];
  if (!tags)
  {

    if (!tags)
    {
      goto LABEL_225;
    }

    goto LABEL_224;
  }

  tags2 = [itemCopy tags];

  if (tags)
  {
  }

  if (!tags2)
  {
LABEL_219:
    v89 = fp_current_or_default_log();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    tags3 = [itemCopy tags];
    tags = self->_tags;
    self->_tags = tags3;
LABEL_224:
  }

LABEL_225:
  if ([fieldsCopy containsObject:@"favoriteRank"])
  {
    favoriteRank = [itemCopy favoriteRank];
    if (favoriteRank)
    {
      itemIdentifier2 = [(FPItem *)self favoriteRank];
      itemIdentifier3 = [itemCopy favoriteRank];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_233:
        v94 = fp_current_or_default_log();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        favoriteRank = [itemCopy favoriteRank];
        favoriteRank = self->_favoriteRank;
        self->_favoriteRank = favoriteRank;
        goto LABEL_238;
      }
    }

    favoriteRank2 = [(FPItem *)self favoriteRank];
    if (favoriteRank2)
    {
      favoriteRank3 = [itemCopy favoriteRank];

      if (favoriteRank)
      {
      }

      if (!favoriteRank3)
      {
        goto LABEL_233;
      }
    }

    else
    {

      if (favoriteRank)
      {

LABEL_238:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isUploaded"])
  {
    isUploaded = [(FPItem *)self isUploaded];
    if (isUploaded != [itemCopy isUploaded])
    {
      v97 = fp_current_or_default_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v97 ofItem:?];
      }

      self->_uploaded = [itemCopy isUploaded];
    }
  }

  if ([fieldsCopy containsObject:@"isUploading"])
  {
    isUploading = [(FPItem *)self isUploading];
    if (isUploading != [itemCopy isUploading])
    {
      v99 = fp_current_or_default_log();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v99 ofItem:?];
      }

      self->_uploading = [itemCopy isUploading];
    }
  }

  if ([fieldsCopy containsObject:@"uploadingError"])
  {
    uploadingError = [itemCopy uploadingError];
    if (uploadingError)
    {
      itemIdentifier2 = [(FPItem *)self uploadingError];
      itemIdentifier3 = [itemCopy uploadingError];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_257:
        v103 = fp_current_or_default_log();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        uploadingError = [itemCopy uploadingError];
        uploadingError = self->_uploadingError;
        self->_uploadingError = uploadingError;
        goto LABEL_262;
      }
    }

    uploadingError2 = [(FPItem *)self uploadingError];
    if (uploadingError2)
    {
      uploadingError3 = [itemCopy uploadingError];

      if (uploadingError)
      {
      }

      if (!uploadingError3)
      {
        goto LABEL_257;
      }
    }

    else
    {

      if (uploadingError)
      {

LABEL_262:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isDownloaded"])
  {
    isDownloaded = [(FPItem *)self isDownloaded];
    if (isDownloaded != [itemCopy isDownloaded])
    {
      v106 = fp_current_or_default_log();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v106 ofItem:?];
      }

      self->_downloaded = [itemCopy isDownloaded];
    }
  }

  if ([fieldsCopy containsObject:@"isDownloading"])
  {
    isDownloading = [(FPItem *)self isDownloading];
    if (isDownloading != [itemCopy isDownloading])
    {
      v108 = fp_current_or_default_log();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v108 ofItem:?];
      }

      self->_downloading = [itemCopy isDownloading];
    }
  }

  if ([fieldsCopy containsObject:@"downloadingError"])
  {
    downloadingError = [itemCopy downloadingError];
    if (downloadingError)
    {
      itemIdentifier2 = [(FPItem *)self downloadingError];
      itemIdentifier3 = [itemCopy downloadingError];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_281:
        v112 = fp_current_or_default_log();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        downloadingError = [itemCopy downloadingError];
        downloadingError = self->_downloadingError;
        self->_downloadingError = downloadingError;
        goto LABEL_286;
      }
    }

    downloadingError2 = [(FPItem *)self downloadingError];
    if (downloadingError2)
    {
      downloadingError3 = [itemCopy downloadingError];

      if (downloadingError)
      {
      }

      if (!downloadingError3)
      {
        goto LABEL_281;
      }
    }

    else
    {

      if (downloadingError)
      {

LABEL_286:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isMostRecentVersionDownloaded"])
  {
    isMostRecentVersionDownloaded = [(FPItem *)self isMostRecentVersionDownloaded];
    if (isMostRecentVersionDownloaded != [itemCopy isMostRecentVersionDownloaded])
    {
      v115 = fp_current_or_default_log();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v115 ofItem:?];
      }

      self->_mostRecentVersionDownloaded = [itemCopy isMostRecentVersionDownloaded];
    }
  }

  if ([fieldsCopy containsObject:@"isShared"])
  {
    isShared = [(FPItem *)self isShared];
    if (isShared != [itemCopy isShared])
    {
      v117 = fp_current_or_default_log();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v117 ofItem:?];
      }

      self->_shared = [itemCopy isShared];
    }
  }

  if ([fieldsCopy containsObject:@"isSharedByCurrentUser"])
  {
    isSharedByCurrentUser = [(FPItem *)self isSharedByCurrentUser];
    if (isSharedByCurrentUser != [itemCopy isSharedByCurrentUser])
    {
      v119 = fp_current_or_default_log();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v119 ofItem:?];
      }

      self->_sharedByCurrentUser = [itemCopy isSharedByCurrentUser];
    }
  }

  if ([fieldsCopy containsObject:@"fp_isLastModifiedByCurrentUser"])
  {
    fp_isLastModifiedByCurrentUser = [(FPItem *)self fp_isLastModifiedByCurrentUser];
    if (fp_isLastModifiedByCurrentUser != [itemCopy fp_isLastModifiedByCurrentUser])
    {
      v121 = fp_current_or_default_log();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v121 ofItem:?];
      }

      self->_fp_lastModifiedByCurrentUser = [itemCopy fp_isLastModifiedByCurrentUser];
    }
  }

  if ([fieldsCopy containsObject:@"ownerNameComponents"])
  {
    ownerNameComponents = [itemCopy ownerNameComponents];
    if (ownerNameComponents)
    {
      itemIdentifier2 = [(FPItem *)self ownerNameComponents];
      itemIdentifier3 = [itemCopy ownerNameComponents];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_315;
      }
    }

    ownerNameComponents = [(FPItem *)self ownerNameComponents];
    if (!ownerNameComponents)
    {

      if (!ownerNameComponents)
      {
        goto LABEL_321;
      }

      goto LABEL_320;
    }

    ownerNameComponents2 = [itemCopy ownerNameComponents];

    if (ownerNameComponents)
    {
    }

    if (!ownerNameComponents2)
    {
LABEL_315:
      v125 = fp_current_or_default_log();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      ownerNameComponents3 = [itemCopy ownerNameComponents];
      ownerNameComponents = self->_ownerNameComponents;
      self->_ownerNameComponents = ownerNameComponents3;
LABEL_320:
    }
  }

LABEL_321:
  if (![fieldsCopy containsObject:@"mostRecentEditorNameComponents"])
  {
    goto LABEL_335;
  }

  mostRecentEditorNameComponents = [itemCopy mostRecentEditorNameComponents];
  if (mostRecentEditorNameComponents)
  {
    itemIdentifier2 = [(FPItem *)self mostRecentEditorNameComponents];
    itemIdentifier3 = [itemCopy mostRecentEditorNameComponents];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_329;
    }
  }

  mostRecentEditorNameComponents = [(FPItem *)self mostRecentEditorNameComponents];
  if (!mostRecentEditorNameComponents)
  {

    if (!mostRecentEditorNameComponents)
    {
      goto LABEL_335;
    }

    goto LABEL_334;
  }

  mostRecentEditorNameComponents2 = [itemCopy mostRecentEditorNameComponents];

  if (mostRecentEditorNameComponents)
  {
  }

  if (!mostRecentEditorNameComponents2)
  {
LABEL_329:
    v130 = fp_current_or_default_log();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    mostRecentEditorNameComponents3 = [itemCopy mostRecentEditorNameComponents];
    mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
    self->_mostRecentEditorNameComponents = mostRecentEditorNameComponents3;
LABEL_334:
  }

LABEL_335:
  if (![fieldsCopy containsObject:@"collaborationIdentifier"])
  {
    goto LABEL_349;
  }

  collaborationIdentifier = [itemCopy collaborationIdentifier];
  if (collaborationIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self collaborationIdentifier];
    itemIdentifier3 = [itemCopy collaborationIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_343;
    }
  }

  collaborationIdentifier = [(FPItem *)self collaborationIdentifier];
  if (!collaborationIdentifier)
  {

    if (!collaborationIdentifier)
    {
      goto LABEL_349;
    }

    goto LABEL_348;
  }

  collaborationIdentifier2 = [itemCopy collaborationIdentifier];

  if (collaborationIdentifier)
  {
  }

  if (!collaborationIdentifier2)
  {
LABEL_343:
    v135 = fp_current_or_default_log();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    collaborationIdentifier3 = [itemCopy collaborationIdentifier];
    collaborationIdentifier = self->_collaborationIdentifier;
    self->_collaborationIdentifier = collaborationIdentifier3;
LABEL_348:
  }

LABEL_349:
  if (![fieldsCopy containsObject:@"childItemCount"])
  {
    goto LABEL_363;
  }

  childItemCount = [itemCopy childItemCount];
  if (childItemCount)
  {
    itemIdentifier2 = [(FPItem *)self childItemCount];
    itemIdentifier3 = [itemCopy childItemCount];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_357;
    }
  }

  childItemCount = [(FPItem *)self childItemCount];
  if (!childItemCount)
  {

    if (!childItemCount)
    {
      goto LABEL_363;
    }

    goto LABEL_362;
  }

  childItemCount2 = [itemCopy childItemCount];

  if (childItemCount)
  {
  }

  if (!childItemCount2)
  {
LABEL_357:
    v140 = fp_current_or_default_log();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    childItemCount3 = [itemCopy childItemCount];
    childItemCount = self->_childItemCount;
    self->_childItemCount = childItemCount3;
LABEL_362:
  }

LABEL_363:
  if ([fieldsCopy containsObject:@"userInfo"])
  {
    userInfo = [itemCopy userInfo];
    if (userInfo)
    {
      itemIdentifier2 = [(FPItem *)self userInfo];
      itemIdentifier3 = [itemCopy userInfo];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_371:
        v145 = fp_current_or_default_log();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        userInfo = [itemCopy userInfo];
        userInfo = self->_userInfo;
        self->_userInfo = userInfo;
        goto LABEL_376;
      }
    }

    userInfo2 = [(FPItem *)self userInfo];
    if (userInfo2)
    {
      userInfo3 = [itemCopy userInfo];

      if (userInfo)
      {
      }

      if (!userInfo3)
      {
        goto LABEL_371;
      }
    }

    else
    {

      if (userInfo)
      {

LABEL_376:
      }
    }
  }

  if ([fieldsCopy containsObject:@"state"])
  {
    state = [(FPItem *)self state];
    if (state != [itemCopy state])
    {
      v148 = fp_current_or_default_log();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v148 ofItem:?];
      }

      self->_state = [itemCopy state];
    }
  }

  if ([fieldsCopy containsObject:@"placeholderIdentifier"])
  {
    placeholderIdentifier = [itemCopy placeholderIdentifier];
    if (placeholderIdentifier)
    {
      itemIdentifier2 = [(FPItem *)self placeholderIdentifier];
      itemIdentifier3 = [itemCopy placeholderIdentifier];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_390;
      }
    }

    placeholderIdentifier = [(FPItem *)self placeholderIdentifier];
    if (!placeholderIdentifier)
    {

      if (!placeholderIdentifier)
      {
        goto LABEL_396;
      }

      goto LABEL_395;
    }

    placeholderIdentifier2 = [itemCopy placeholderIdentifier];

    if (placeholderIdentifier)
    {
    }

    if (!placeholderIdentifier2)
    {
LABEL_390:
      v152 = fp_current_or_default_log();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      placeholderIdentifier3 = [itemCopy placeholderIdentifier];
      placeholderIdentifier = self->_placeholderIdentifier;
      self->_placeholderIdentifier = placeholderIdentifier3;
LABEL_395:
    }
  }

LABEL_396:
  if (![fieldsCopy containsObject:@"versionIdentifier"])
  {
    goto LABEL_410;
  }

  versionIdentifier = [itemCopy versionIdentifier];
  if (versionIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self versionIdentifier];
    itemIdentifier3 = [itemCopy versionIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_404;
    }
  }

  versionIdentifier = [(FPItem *)self versionIdentifier];
  if (!versionIdentifier)
  {

    if (!versionIdentifier)
    {
      goto LABEL_410;
    }

    goto LABEL_409;
  }

  versionIdentifier2 = [itemCopy versionIdentifier];

  if (versionIdentifier)
  {
  }

  if (!versionIdentifier2)
  {
LABEL_404:
    v157 = fp_current_or_default_log();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    versionIdentifier3 = [itemCopy versionIdentifier];
    versionIdentifier = self->_versionIdentifier;
    self->_versionIdentifier = versionIdentifier3;
LABEL_409:
  }

LABEL_410:
  if (![fieldsCopy containsObject:@"itemVersion"])
  {
    goto LABEL_424;
  }

  itemVersion = [itemCopy itemVersion];
  if (itemVersion)
  {
    itemIdentifier2 = [(FPItem *)self itemVersion];
    itemIdentifier3 = [itemCopy itemVersion];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_418;
    }
  }

  itemVersion = [(FPItem *)self itemVersion];
  if (!itemVersion)
  {

    if (!itemVersion)
    {
      goto LABEL_424;
    }

    goto LABEL_423;
  }

  itemVersion2 = [itemCopy itemVersion];

  if (itemVersion)
  {
  }

  if (!itemVersion2)
  {
LABEL_418:
    v162 = fp_current_or_default_log();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    itemVersion3 = [itemCopy itemVersion];
    itemVersion = self->_itemVersion;
    self->_itemVersion = itemVersion3;
LABEL_423:
  }

LABEL_424:
  if (![fieldsCopy containsObject:@"spotlightDomainIdentifier"])
  {
    goto LABEL_438;
  }

  spotlightDomainIdentifier = [itemCopy spotlightDomainIdentifier];
  if (spotlightDomainIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self spotlightDomainIdentifier];
    itemIdentifier3 = [itemCopy spotlightDomainIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_432;
    }
  }

  spotlightDomainIdentifier = [(FPItem *)self spotlightDomainIdentifier];
  if (!spotlightDomainIdentifier)
  {

    if (!spotlightDomainIdentifier)
    {
      goto LABEL_438;
    }

    goto LABEL_437;
  }

  spotlightDomainIdentifier2 = [itemCopy spotlightDomainIdentifier];

  if (spotlightDomainIdentifier)
  {
  }

  if (!spotlightDomainIdentifier2)
  {
LABEL_432:
    v167 = fp_current_or_default_log();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    spotlightDomainIdentifier3 = [itemCopy spotlightDomainIdentifier];
    spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
    self->_spotlightDomainIdentifier = spotlightDomainIdentifier3;
LABEL_437:
  }

LABEL_438:
  if ([fieldsCopy containsObject:@"fp_spotlightSubDomainIdentifier"])
  {
    fp_spotlightSubDomainIdentifier = [itemCopy fp_spotlightSubDomainIdentifier];
    if (fp_spotlightSubDomainIdentifier)
    {
      itemIdentifier2 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
      itemIdentifier3 = [itemCopy fp_spotlightSubDomainIdentifier];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_446:
        v172 = fp_current_or_default_log();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        fp_spotlightSubDomainIdentifier = [itemCopy fp_spotlightSubDomainIdentifier];
        fp_spotlightSubDomainIdentifier = self->_fp_spotlightSubDomainIdentifier;
        self->_fp_spotlightSubDomainIdentifier = fp_spotlightSubDomainIdentifier;
        goto LABEL_451;
      }
    }

    fp_spotlightSubDomainIdentifier2 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    if (fp_spotlightSubDomainIdentifier2)
    {
      fp_spotlightSubDomainIdentifier3 = [itemCopy fp_spotlightSubDomainIdentifier];

      if (fp_spotlightSubDomainIdentifier)
      {
      }

      if (!fp_spotlightSubDomainIdentifier3)
      {
        goto LABEL_446;
      }
    }

    else
    {

      if (fp_spotlightSubDomainIdentifier)
      {

LABEL_451:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isInPinnedFolder"])
  {
    isInPinnedFolder = [(FPItem *)self isInPinnedFolder];
    if (isInPinnedFolder != [itemCopy isInPinnedFolder])
    {
      v175 = fp_current_or_default_log();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v175 ofItem:?];
      }

      self->_inPinnedFolder = [itemCopy isInPinnedFolder];
    }
  }

  if ([fieldsCopy containsObject:@"isPinned"])
  {
    isPinned = [(FPItem *)self isPinned];
    if (isPinned != [itemCopy isPinned])
    {
      v177 = fp_current_or_default_log();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v177 ofItem:?];
      }

      self->_pinned = [itemCopy isPinned];
    }
  }

  if ([fieldsCopy containsObject:@"hasUnresolvedConflicts"])
  {
    hasUnresolvedConflicts = [itemCopy hasUnresolvedConflicts];
    if (hasUnresolvedConflicts)
    {
      itemIdentifier2 = [(FPItem *)self hasUnresolvedConflicts];
      itemIdentifier3 = [itemCopy hasUnresolvedConflicts];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_470;
      }
    }

    hasUnresolvedConflicts = [(FPItem *)self hasUnresolvedConflicts];
    if (!hasUnresolvedConflicts)
    {

      if (!hasUnresolvedConflicts)
      {
        goto LABEL_476;
      }

      goto LABEL_475;
    }

    hasUnresolvedConflicts2 = [itemCopy hasUnresolvedConflicts];

    if (hasUnresolvedConflicts)
    {
    }

    if (!hasUnresolvedConflicts2)
    {
LABEL_470:
      v181 = fp_current_or_default_log();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      hasUnresolvedConflicts3 = [itemCopy hasUnresolvedConflicts];
      hasUnresolvedConflicts = self->_hasUnresolvedConflicts;
      self->_hasUnresolvedConflicts = hasUnresolvedConflicts3;
LABEL_475:
    }
  }

LABEL_476:
  if (![fieldsCopy containsObject:@"isDownloadRequested"])
  {
    goto LABEL_490;
  }

  isDownloadRequested = [itemCopy isDownloadRequested];
  if (isDownloadRequested)
  {
    itemIdentifier2 = [(FPItem *)self isDownloadRequested];
    itemIdentifier3 = [itemCopy isDownloadRequested];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_484;
    }
  }

  isDownloadRequested = [(FPItem *)self isDownloadRequested];
  if (!isDownloadRequested)
  {

    if (!isDownloadRequested)
    {
      goto LABEL_490;
    }

    goto LABEL_489;
  }

  isDownloadRequested2 = [itemCopy isDownloadRequested];

  if (isDownloadRequested)
  {
  }

  if (!isDownloadRequested2)
  {
LABEL_484:
    v186 = fp_current_or_default_log();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    isDownloadRequested3 = [itemCopy isDownloadRequested];
    isDownloadRequested = self->_isDownloadRequested;
    self->_isDownloadRequested = isDownloadRequested3;
LABEL_489:
  }

LABEL_490:
  if (![fieldsCopy containsObject:@"sharingPermissions"])
  {
    goto LABEL_504;
  }

  sharingPermissions = [itemCopy sharingPermissions];
  if (sharingPermissions)
  {
    itemIdentifier2 = [(FPItem *)self sharingPermissions];
    itemIdentifier3 = [itemCopy sharingPermissions];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_498;
    }
  }

  sharingPermissions = [(FPItem *)self sharingPermissions];
  if (!sharingPermissions)
  {

    if (!sharingPermissions)
    {
      goto LABEL_504;
    }

    goto LABEL_503;
  }

  sharingPermissions2 = [itemCopy sharingPermissions];

  if (sharingPermissions)
  {
  }

  if (!sharingPermissions2)
  {
LABEL_498:
    v191 = fp_current_or_default_log();
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    sharingPermissions3 = [itemCopy sharingPermissions];
    sharingPermissions = self->_sharingPermissions;
    self->_sharingPermissions = sharingPermissions3;
LABEL_503:
  }

LABEL_504:
  if ([fieldsCopy containsObject:@"containerDisplayName"])
  {
    containerDisplayName = [itemCopy containerDisplayName];
    if (containerDisplayName)
    {
      itemIdentifier2 = [(FPItem *)self containerDisplayName];
      itemIdentifier3 = [itemCopy containerDisplayName];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_512:
        v196 = fp_current_or_default_log();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        containerDisplayName = [itemCopy containerDisplayName];
        containerDisplayName = self->_containerDisplayName;
        self->_containerDisplayName = containerDisplayName;
        goto LABEL_517;
      }
    }

    containerDisplayName2 = [(FPItem *)self containerDisplayName];
    if (containerDisplayName2)
    {
      containerDisplayName3 = [itemCopy containerDisplayName];

      if (containerDisplayName)
      {
      }

      if (!containerDisplayName3)
      {
        goto LABEL_512;
      }
    }

    else
    {

      if (containerDisplayName)
      {

LABEL_517:
      }
    }
  }

  if ([fieldsCopy containsObject:@"supportsMostRecentVersionDownloaded"])
  {
    supportsMostRecentVersionDownloaded = [(FPItem *)self supportsMostRecentVersionDownloaded];
    if (supportsMostRecentVersionDownloaded != [itemCopy supportsMostRecentVersionDownloaded])
    {
      v199 = fp_current_or_default_log();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v199 ofItem:?];
      }

      self->_supportsMostRecentVersionDownloaded = [itemCopy supportsMostRecentVersionDownloaded];
    }
  }

  if ([fieldsCopy containsObject:@"fp_appContainerBundleIdentifier"])
  {
    fp_appContainerBundleIdentifier = [itemCopy fp_appContainerBundleIdentifier];
    if (fp_appContainerBundleIdentifier)
    {
      itemIdentifier2 = [(FPItem *)self fp_appContainerBundleIdentifier];
      itemIdentifier3 = [itemCopy fp_appContainerBundleIdentifier];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_531;
      }
    }

    fp_appContainerBundleIdentifier = [(FPItem *)self fp_appContainerBundleIdentifier];
    if (!fp_appContainerBundleIdentifier)
    {

      if (!fp_appContainerBundleIdentifier)
      {
        goto LABEL_537;
      }

      goto LABEL_536;
    }

    fp_appContainerBundleIdentifier2 = [itemCopy fp_appContainerBundleIdentifier];

    if (fp_appContainerBundleIdentifier)
    {
    }

    if (!fp_appContainerBundleIdentifier2)
    {
LABEL_531:
      v203 = fp_current_or_default_log();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      fp_appContainerBundleIdentifier3 = [itemCopy fp_appContainerBundleIdentifier];
      fp_appContainerBundleIdentifier = self->_fp_appContainerBundleIdentifier;
      self->_fp_appContainerBundleIdentifier = fp_appContainerBundleIdentifier3;
LABEL_536:
    }
  }

LABEL_537:
  if (![fieldsCopy containsObject:@"fp_parentDomainIdentifier"])
  {
    goto LABEL_551;
  }

  fp_parentDomainIdentifier = [itemCopy fp_parentDomainIdentifier];
  if (fp_parentDomainIdentifier)
  {
    itemIdentifier2 = [(FPItem *)self fp_parentDomainIdentifier];
    itemIdentifier3 = [itemCopy fp_parentDomainIdentifier];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_545;
    }
  }

  fp_parentDomainIdentifier = [(FPItem *)self fp_parentDomainIdentifier];
  if (!fp_parentDomainIdentifier)
  {

    if (!fp_parentDomainIdentifier)
    {
      goto LABEL_551;
    }

    goto LABEL_550;
  }

  fp_parentDomainIdentifier2 = [itemCopy fp_parentDomainIdentifier];

  if (fp_parentDomainIdentifier)
  {
  }

  if (!fp_parentDomainIdentifier2)
  {
LABEL_545:
    v208 = fp_current_or_default_log();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    fp_parentDomainIdentifier3 = [itemCopy fp_parentDomainIdentifier];
    fp_parentDomainIdentifier = self->_fp_parentDomainIdentifier;
    self->_fp_parentDomainIdentifier = fp_parentDomainIdentifier3;
LABEL_550:
  }

LABEL_551:
  if ([fieldsCopy containsObject:@"cloudContainerIdentifier"])
  {
    cloudContainerIdentifier = [itemCopy cloudContainerIdentifier];
    if (cloudContainerIdentifier)
    {
      itemIdentifier2 = [(FPItem *)self cloudContainerIdentifier];
      itemIdentifier3 = [itemCopy cloudContainerIdentifier];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_559:
        v213 = fp_current_or_default_log();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        cloudContainerIdentifier = [itemCopy cloudContainerIdentifier];
        cloudContainerIdentifier = self->_cloudContainerIdentifier;
        self->_cloudContainerIdentifier = cloudContainerIdentifier;
        goto LABEL_564;
      }
    }

    cloudContainerIdentifier2 = [(FPItem *)self cloudContainerIdentifier];
    if (cloudContainerIdentifier2)
    {
      cloudContainerIdentifier3 = [itemCopy cloudContainerIdentifier];

      if (cloudContainerIdentifier)
      {
      }

      if (!cloudContainerIdentifier3)
      {
        goto LABEL_559;
      }
    }

    else
    {

      if (cloudContainerIdentifier)
      {

LABEL_564:
      }
    }
  }

  if ([fieldsCopy containsObject:@"isUbiquitous"])
  {
    isUbiquitous = [(FPItem *)self isUbiquitous];
    if (isUbiquitous != [itemCopy isUbiquitous])
    {
      v216 = fp_current_or_default_log();
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v216 ofItem:?];
      }

      self->_isUbiquitous = [itemCopy isUbiquitous];
    }
  }

  if ([fieldsCopy containsObject:@"isContainer"])
  {
    isContainer = [(FPItem *)self isContainer];
    if (isContainer != [itemCopy isContainer])
    {
      v218 = fp_current_or_default_log();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v218 ofItem:?];
      }

      self->_isContainer = [itemCopy isContainer];
    }
  }

  if ([fieldsCopy containsObject:@"isContainerPristine"])
  {
    isContainerPristine = [(FPItem *)self isContainerPristine];
    if (isContainerPristine != [itemCopy isContainerPristine])
    {
      v220 = fp_current_or_default_log();
      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v220 ofItem:?];
      }

      self->_isContainerPristine = [itemCopy isContainerPristine];
    }
  }

  if ([fieldsCopy containsObject:@"isTopLevelSharedItem"])
  {
    isTopLevelSharedItem = [(FPItem *)self isTopLevelSharedItem];
    if (isTopLevelSharedItem != [itemCopy isTopLevelSharedItem])
    {
      v222 = fp_current_or_default_log();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v222 ofItem:?];
      }

      self->_topLevelSharedItem = [itemCopy isTopLevelSharedItem];
    }
  }

  if ([fieldsCopy containsObject:@"isRecursivelyDownloaded"])
  {
    isRecursivelyDownloaded = [(FPItem *)self isRecursivelyDownloaded];
    if (isRecursivelyDownloaded != [itemCopy isRecursivelyDownloaded])
    {
      v224 = fp_current_or_default_log();
      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v224 ofItem:?];
      }

      self->_recursivelyDownloaded = [itemCopy isRecursivelyDownloaded];
    }
  }

  if ([fieldsCopy containsObject:@"conflictingVersions"])
  {
    conflictingVersions = [itemCopy conflictingVersions];
    if (conflictingVersions)
    {
      itemIdentifier2 = [(FPItem *)self conflictingVersions];
      itemIdentifier3 = [itemCopy conflictingVersions];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

LABEL_598:
        v228 = fp_current_or_default_log();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        conflictingVersions = [itemCopy conflictingVersions];
        conflictingVersions = self->_conflictingVersions;
        self->_conflictingVersions = conflictingVersions;
        goto LABEL_603;
      }
    }

    conflictingVersions2 = [(FPItem *)self conflictingVersions];
    if (conflictingVersions2)
    {
      conflictingVersions3 = [itemCopy conflictingVersions];

      if (conflictingVersions)
      {
      }

      if (!conflictingVersions3)
      {
        goto LABEL_598;
      }
    }

    else
    {

      if (conflictingVersions)
      {

LABEL_603:
      }
    }
  }

  if ([fieldsCopy containsObject:@"fileSystemFlags"])
  {
    fileSystemFlags = [(FPItem *)self fileSystemFlags];
    if (fileSystemFlags != [itemCopy fileSystemFlags])
    {
      v231 = fp_current_or_default_log();
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v231 ofItem:?];
      }

      self->_fileSystemFlags = [itemCopy fileSystemFlags];
    }
  }

  if ([fieldsCopy containsObject:@"extendedAttributes"])
  {
    extendedAttributes = [itemCopy extendedAttributes];
    if (extendedAttributes)
    {
      itemIdentifier2 = [(FPItem *)self extendedAttributes];
      itemIdentifier3 = [itemCopy extendedAttributes];
      if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
      {

        goto LABEL_617;
      }
    }

    extendedAttributes = [(FPItem *)self extendedAttributes];
    if (!extendedAttributes)
    {

      if (!extendedAttributes)
      {
        goto LABEL_623;
      }

      goto LABEL_622;
    }

    extendedAttributes2 = [itemCopy extendedAttributes];

    if (extendedAttributes)
    {
    }

    if (!extendedAttributes2)
    {
LABEL_617:
      v235 = fp_current_or_default_log();
      if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      extendedAttributes3 = [itemCopy extendedAttributes];
      extendedAttributes = self->_extendedAttributes;
      self->_extendedAttributes = extendedAttributes3;
LABEL_622:
    }
  }

LABEL_623:
  if (![fieldsCopy containsObject:@"decorations"])
  {
    goto LABEL_637;
  }

  decorations = [itemCopy decorations];
  if (decorations)
  {
    itemIdentifier2 = [(FPItem *)self decorations];
    itemIdentifier3 = [itemCopy decorations];
    if (([itemIdentifier2 isEqual:itemIdentifier3] & 1) == 0)
    {

      goto LABEL_631;
    }
  }

  decorations = [(FPItem *)self decorations];
  if (!decorations)
  {

    if (!decorations)
    {
      goto LABEL_637;
    }

    goto LABEL_636;
  }

  decorations2 = [itemCopy decorations];

  if (decorations)
  {
  }

  if (!decorations2)
  {
LABEL_631:
    v240 = fp_current_or_default_log();
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    decorations3 = [itemCopy decorations];
    decorations = self->_decorations;
    self->_decorations = decorations3;
LABEL_636:
  }

LABEL_637:
  if ([fieldsCopy containsObject:@"typeAndCreator"])
  {
    v242 = fp_current_or_default_log();
    if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:itemCopy ofItem:?];
    }

    self->_typeAndCreator = [itemCopy typeAndCreator];
  }

  if ([fieldsCopy containsObject:@"contentPolicy"])
  {
    contentPolicy = [(FPItem *)self contentPolicy];
    if (contentPolicy != [itemCopy contentPolicy])
    {
      v244 = fp_current_or_default_log();
      if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v244 ofItem:?];
      }

      self->_contentPolicy = [itemCopy contentPolicy];
    }
  }

  if ([fieldsCopy containsObject:@"inheritedContentPolicy"])
  {
    inheritedContentPolicy = [(FPItem *)self inheritedContentPolicy];
    if (inheritedContentPolicy != [itemCopy inheritedContentPolicy])
    {
      v246 = fp_current_or_default_log();
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v246 ofItem:?];
      }

      self->_inheritedContentPolicy = [itemCopy inheritedContentPolicy];
    }
  }

  if ([fieldsCopy containsObject:@"effectiveContentPolicy"])
  {
    effectiveContentPolicy = [(FPItem *)self effectiveContentPolicy];
    if (effectiveContentPolicy != [itemCopy effectiveContentPolicy])
    {
      v248 = fp_current_or_default_log();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v248 ofItem:?];
      }

      self->_effectiveContentPolicy = [itemCopy effectiveContentPolicy];
    }
  }

  if ([fieldsCopy containsObject:@"isEvictedWithClone"])
  {
    isEvictedWithClone = [(FPItem *)self isEvictedWithClone];
    if (isEvictedWithClone != [itemCopy isEvictedWithClone])
    {
      v250 = fp_current_or_default_log();
      if (os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v250 ofItem:?];
      }

      self->_isEvictedWithClone = [itemCopy isEvictedWithClone];
    }
  }

  if ([fieldsCopy containsObject:@"isSyncPaused"])
  {
    isSyncPaused = [(FPItem *)self isSyncPaused];
    if (isSyncPaused != [itemCopy isSyncPaused])
    {
      v252 = fp_current_or_default_log();
      if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v252 ofItem:?];
      }

      self->_syncPaused = [itemCopy isSyncPaused];
    }
  }

  if ([fieldsCopy containsObject:@"supportsUploadWithFailOnConflict"])
  {
    supportsUploadWithFailOnConflict = [(FPItem *)self supportsUploadWithFailOnConflict];
    if (supportsUploadWithFailOnConflict != [itemCopy supportsUploadWithFailOnConflict])
    {
      v254 = fp_current_or_default_log();
      if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)itemCopy overrideFields:v254 ofItem:?];
      }

      self->_supportsUploadWithFailOnConflict = [itemCopy supportsUploadWithFailOnConflict];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FPItem alloc] initWithVendorItem:self provider:self->_providerID domain:self->_domainIdentifier spotlightDomainIdentifier:self->_spotlightDomainIdentifier extensionCapabilities:-1 useFPFS:0];
  p_isa = &v4->super.isa;
  if (v4)
  {
    v4->_state = self->_state;
    objc_storeStrong(&v4->_uploadingError, self->_uploadingError);
    objc_storeStrong(p_isa + 14, self->_downloadingError);
    v6 = p_isa;
  }

  return p_isa;
}

- (id)copyAsPending
{
  result = [(FPItem *)self copy];
  *(result + 56) = 6;
  return result;
}

- (id)strippedCopy
{
  v3 = [FPItem alloc];
  providerDomainID = [(FPItem *)self providerDomainID];
  itemIdentifier = [(FPItem *)self itemIdentifier];
  parentItemIdentifier = [(FPItem *)self parentItemIdentifier];
  filename = [(FPItem *)self filename];
  typeIdentifier = [(FPItem *)self typeIdentifier];
  v9 = [(FPItem *)v3 initWithProviderDomainID:providerDomainID itemIdentifier:itemIdentifier parentItemIdentifier:parentItemIdentifier filename:filename typeIdentifier:typeIdentifier];

  itemVersion = [(FPItem *)self itemVersion];
  [(FPItem *)v9 setItemVersion:itemVersion];

  return v9;
}

- (BOOL)fp_isCloudDocsContainer
{
  if (![(FPItem *)self isContainer])
  {
    return 0;
  }

  providerItemIdentifier = [(FPItem *)self providerItemIdentifier];
  if ([providerItemIdentifier isEqualToString:@"self"])
  {
    providerID = [(FPItem *)self providerID];
    fp_isiCloudDriveIdentifier = [providerID fp_isiCloudDriveIdentifier];
  }

  else
  {
    fp_isiCloudDriveIdentifier = 0;
  }

  return fp_isiCloudDriveIdentifier;
}

- (void)setTypeIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:identifier];
  [(FPItem *)self setContentType:v4];
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  obj = self;
  objc_sync_enter(obj);
  contentType = obj->_contentType;
  obj->_contentType = typeCopy;

  obj->_typesEvaluated = 0;
  objc_sync_exit(obj);
}

- (NSDictionary)resolvedUserInfo
{
  resolvedUserInfoCache = self->_resolvedUserInfoCache;
  if (!resolvedUserInfoCache)
  {
    if ([(NSDictionary *)self->_userInfo count]|| [(NSDictionary *)self->_inheritedUserInfo count])
    {
      v4 = [[FPUserInfo alloc] initWithUserInfo:self->_userInfo];
      v5 = [[FPUserInfo alloc] initWithUserInfo:self->_inheritedUserInfo];
      v6 = [FPUserInfo mergeWithUserInfo:v4 intoParentUserInfo:v5];
      userInfo = [v6 userInfo];
      v8 = self->_resolvedUserInfoCache;
      self->_resolvedUserInfoCache = userInfo;
    }

    resolvedUserInfoCache = self->_resolvedUserInfoCache;
  }

  v9 = resolvedUserInfoCache;

  return v9;
}

- (NSString)displayName
{
  fileSystemFlags = [(FPItem *)self fileSystemFlags];
  v11 = [(FPItem *)self folderType]- 2;
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = FPLoc(off_1E793A170[v11], v4, v5, v6, v7, v8, v9, v10, v21);
  }

  if ([(NSString *)v12 length])
  {
    isFolder = [(FPItem *)self isFolder];
    v14 = v12;
    v15 = (fileSystemFlags >> 4) & 1;
LABEL_6:
    v16 = [(NSString *)v14 fp_displayNameFromFilenameWithHiddenPathExtension:v15 isFolder:isFolder];
    goto LABEL_9;
  }

  displayName = self->_displayName;
  if (!displayName)
  {
    filename = self->_filename;
    isFolder = [(FPItem *)self isFolder];
    v14 = filename;
    v15 = 1;
    goto LABEL_6;
  }

  v16 = displayName;
LABEL_9:
  v18 = v16;

  return v18;
}

- (void)setFilename:(id)filename
{
  filenameCopy = filename;
  if (filenameCopy)
  {
    objc_storeStrong(&self->_filename, filename);
    displayName = self->_displayName;
    self->_displayName = 0;
  }

  else
  {
    fp_simulate_crash(@"can't set a nil filename", v5, v6, v7, v8, v9, v10, v11, v15);
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [FPItem setFilename:];
    }
  }
}

- (void)setProviderID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_storeStrong(&self->_providerID, d);
  }

  else
  {
    fp_simulate_crash(@"can't set a nil provider identifier", v5, v6, v7, v8, v9, v10, v11, v14);
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [FPItem setProviderID:];
    }
  }
}

- (void)setItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_storeStrong(&self->_itemIdentifier, identifier);
  }

  else
  {
    fp_simulate_crash(@"can't set a nil item identifier", v5, v6, v7, v8, v9, v10, v11, v14);
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [FPItem setItemIdentifier:];
    }
  }
}

- (void)_evaluateTypes:(id)types
{
  v4 = [(UTType *)self->_contentType conformsToType:*MEMORY[0x1E6982F30]];
  v5 = [(UTType *)self->_contentType conformsToType:*MEMORY[0x1E6982D80]];
  isFlattenedPackage = 1;
  if (!v4)
  {
    isFlattenedPackage = [(FPItem *)self isFlattenedPackage];
  }

  obj = self;
  objc_sync_enter(obj);
  obj->_isFolder = v5 && !v4;
  obj->_isPackage = isFlattenedPackage;
  obj->_typesEvaluated = 1;
  objc_sync_exit(obj);
}

- (FPItemID)parentFormerItemID
{
  if (self->_parentFormerIdentifier)
  {
    v3 = [[FPItemID alloc] initWithProviderID:self->_providerID domainIdentifier:self->_domainIdentifier itemIdentifier:self->_parentFormerIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProviderDomainID:(id)d
{
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  providerID = self->_providerID;
  self->_providerID = fp_toProviderID;

  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  domainIdentifier = self->_domainIdentifier;
  self->_domainIdentifier = fp_toDomainIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPItem *)self isEqualToItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self == itemCopy)
  {
    goto LABEL_9;
  }

  itemIdentifier = self->_itemIdentifier;
  itemIdentifier = [(FPItem *)itemCopy itemIdentifier];
  LODWORD(itemIdentifier) = [(NSString *)itemIdentifier isEqualToString:itemIdentifier];

  if (!itemIdentifier)
  {
    goto LABEL_11;
  }

  domainIdentifier = self->_domainIdentifier;
  domainIdentifier = [(FPItem *)v5 domainIdentifier];
  v10 = domainIdentifier;
  if (domainIdentifier == domainIdentifier)
  {
  }

  else
  {
    domainIdentifier2 = [(FPItem *)v5 domainIdentifier];
    if (!domainIdentifier2)
    {

      goto LABEL_11;
    }

    v12 = domainIdentifier2;
    v13 = self->_domainIdentifier;
    domainIdentifier3 = [(FPItem *)v5 domainIdentifier];
    LODWORD(v13) = [(NSString *)v13 isEqualToString:domainIdentifier3];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  providerID = self->_providerID;
  providerID = [(FPItem *)v5 providerID];
  LOBYTE(providerID) = [(NSString *)providerID isEqualToString:providerID];

  if ((providerID & 1) == 0)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v17 = 1;
LABEL_12:

  return v17;
}

- (id)descriptionForFPCTL:(BOOL)l
{
  lCopy = l;
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  v6 = v5;
  if (!lCopy)
  {
    [v5 appendFormat:@"<"];
  }

  p_isa = self->_itemIdentifier;
  if ([(NSString *)p_isa isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
  {
    v8 = @"root";
  }

  else
  {
    if (![(NSString *)p_isa isEqualToString:@"NSFileProviderTrashContainerItemIdentifier"])
    {
      goto LABEL_8;
    }

    v8 = @"trash";
  }

  p_isa = &v8->isa;
LABEL_8:
  if (lCopy)
  {
    [v6 appendFormat:@"i:%@", p_isa, v76, v77];
  }

  else
  {
    [v6 appendFormat:@"%@ %p:%@", objc_opt_class(), self, p_isa];
  }

  if (self->_formerIdentifier)
  {
    [v6 appendFormat:@" (replacing:%@)", self->_formerIdentifier];
  }

  state = self->_state;
  if (state)
  {
    if ((state & 4) != 0)
    {
      [v6 appendString:@" pending"];
      state = self->_state;
      if ((state & 2) == 0)
      {
LABEL_16:
        if ((state & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((state & 2) == 0)
    {
      goto LABEL_16;
    }

    [v6 appendString:@" has-update"];
    if (self->_state)
    {
LABEL_17:
      [v6 appendString:@" is-placeholder"];
    }
  }

LABEL_18:
  displayName = self->_displayName;
  if (lCopy)
  {
    if (displayName)
    {
      [v6 appendFormat:@" l:%@", self->_displayName];
    }

    else
    {
      [v6 appendFormat:@" f:%@", self->_filename];
    }
  }

  else
  {
    if (displayName)
    {
      fp_obfuscatedFilename = [(NSString *)displayName fp_obfuscatedFilename];
      [v6 appendFormat:@" l:%@", fp_obfuscatedFilename];
    }

    else
    {
      fp_obfuscatedFilename = [(NSString *)self->_filename fp_obfuscatedFilename];
      [v6 appendFormat:@" f:%@", fp_obfuscatedFilename];
    }
  }

  if (self->_trashed)
  {
    [v6 appendFormat:@" trashed"];
  }

  if (self->_isContainer)
  {
    v12 = self->_isContainerPristine ? @" container-pristine" : @" container";
    [v6 appendFormat:v12];
    if (self->_fp_appContainerBundleIdentifier)
    {
      [v6 appendFormat:@" bid:%@", self->_fp_appContainerBundleIdentifier];
    }
  }

  v13 = self->_parentItemIdentifier;
  if ([(NSString *)v13 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
  {
    v14 = @"root";
  }

  else
  {
    if (![(NSString *)v13 isEqualToString:@"NSFileProviderTrashContainerItemIdentifier"])
    {
      goto LABEL_42;
    }

    v14 = @"trash";
  }

  v13 = &v14->isa;
LABEL_42:
  [v6 appendFormat:@" p:%@", v13];
  documentSize = self->_documentSize;
  if (documentSize)
  {
    if ([(NSNumber *)documentSize unsignedLongLongValue])
    {
      [(NSNumber *)self->_documentSize unsignedLongLongValue];
      v16 = NSLocalizedFileSizeDescription();
      [v6 appendFormat:@" sz:%@", v16];
    }

    else
    {
      [v6 appendFormat:@" sz:%@", @"0"];
    }
  }

  if (self->_childItemCount)
  {
    [v6 appendFormat:@" c:%@", self->_childItemCount];
  }

  humanReadableCapabilities = [(FPItem *)self humanReadableCapabilities];
  [v6 appendFormat:@" cap:%@", humanReadableCapabilities];

  [(NSDate *)self->_creationDate timeIntervalSince1970];
  [v6 appendFormat:@" bt:%lld", v18];
  [(NSDate *)self->_contentModificationDate timeIntervalSince1970];
  [v6 appendFormat:@" mt:%lld", v19];
  if ([(FPItem *)self isItemPinned]|| [(FPItem *)self isPinnedSubitem])
  {
    isPinnedSubitem = [(FPItem *)self isPinnedSubitem];
    v21 = 114;
    if (isPinnedSubitem)
    {
      v21 = 115;
    }

    [v6 appendFormat:@" pin:%c", v21];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [(NSDate *)lastUsedDate timeIntervalSince1970];
    [v6 appendFormat:@" lu:%lld", v23];
  }

  if (self->_shared)
  {
    array = [MEMORY[0x1E695DF70] array];
    v25 = array;
    if (self->_sharedByCurrentUser)
    {
      [array addObject:@"shared-by-me"];
    }

    else
    {
      ownerNameComponents = self->_ownerNameComponents;
      if (ownerNameComponents)
      {
        v27 = MEMORY[0x1E696AEC0];
        givenName = [(NSPersonNameComponents *)ownerNameComponents givenName];
        v29 = [v27 stringWithFormat:@"shared-by:%@", givenName];

        [v25 addObject:v29];
      }
    }

    if (self->_fp_lastModifiedByCurrentUser)
    {
      [v25 addObject:@"mod-by-me"];
    }

    else
    {
      mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
      if (mostRecentEditorNameComponents)
      {
        v31 = MEMORY[0x1E696AEC0];
        givenName2 = [(NSPersonNameComponents *)mostRecentEditorNameComponents givenName];
        v33 = [v31 stringWithFormat:@"mod-by:%@", givenName2];

        [v25 addObject:v33];
      }
    }

    if (self->_topLevelSharedItem)
    {
      [v25 addObject:@"top-lvl"];
    }

    if ([v25 count])
    {
      v34 = [v25 componentsJoinedByString:@"|"];
      [v6 appendFormat:@" shared{%@}", v34];
    }

    else
    {
      [v6 appendString:@" shared"];
    }
  }

  tags = [(FPItem *)self tags];
  v36 = [tags count];

  if (v36)
  {
    tags2 = [(FPItem *)self tags];
    v38 = [tags2 fp_map:&__block_literal_global_2];
    v39 = [v38 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" tags:[%@]", v39];
  }

  favoriteRank = self->_favoriteRank;
  if (favoriteRank)
  {
    [v6 appendFormat:@" fr:%llu", -[NSNumber unsignedLongLongValue](favoriteRank, "unsignedLongLongValue")];
  }

  if (!lCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v42 = selfCopy->_fileURL;
    objc_sync_exit(selfCopy);

    if (v42)
    {
      fp_shortDescription = [(NSURL *)v42 fp_shortDescription];
      [v6 appendFormat:@" url:%@", fp_shortDescription];
    }
  }

  extendedAttributes = self->_extendedAttributes;
  v45 = "";
  if (extendedAttributes && [(NSDictionary *)extendedAttributes count])
  {
    v45 = "@";
  }

  fileSystemFlags = self->_fileSystemFlags;
  v47 = 101;
  if ((fileSystemFlags & 0x10) == 0)
  {
    v47 = 45;
  }

  v48 = 104;
  if ((fileSystemFlags & 8) == 0)
  {
    v48 = 45;
  }

  v78 = v48;
  v79 = v47;
  v49 = 120;
  if ((fileSystemFlags & 1) == 0)
  {
    v49 = 45;
  }

  v50 = 119;
  if ((fileSystemFlags & 4) == 0)
  {
    v50 = 45;
  }

  v51 = 114;
  if ((self->_fileSystemFlags & 2) == 0)
  {
    v51 = 45;
  }

  [v6 appendFormat:@" mode:%s%c%c%c%c%c", v45, v51, v50, v49, v78, v79];
  if (self->_contentZoneRoot)
  {
    [v6 appendString:@" czr"];
  }

  if (self->_fileID)
  {
    [v6 appendFormat:@" fid:%llu", self->_fileID];
  }

  if (self->_documentID)
  {
    [v6 appendFormat:@" did:%u", self->_documentID];
  }

  if (self->_typeAndCreator.type)
  {
    [v6 appendFormat:@" ostype:%x", self->_typeAndCreator.type];
  }

  if (self->_typeAndCreator.creator)
  {
    [v6 appendFormat:@" creatorcode:%x", self->_typeAndCreator.creator];
  }

  typeIdentifier = [(FPItem *)self typeIdentifier];
  [v6 appendFormat:@" uti:%@", typeIdentifier];

  symlinkTargetPath = self->_symlinkTargetPath;
  if (symlinkTargetPath)
  {
    fp_obfuscatedPath = [(NSString *)symlinkTargetPath fp_obfuscatedPath];
    [v6 appendFormat:@" tg:%@", fp_obfuscatedPath];
  }

  if (self->_uploading)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v56 = selfCopy2->_progress;
    objc_sync_exit(selfCopy2);

    if ([(NSProgress *)v56 fp_isOfFileOperationKind:*MEMORY[0x1E696A870]])
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
    [v6 appendFormat:@" ul:uploading"];
    if (v58)
    {
      if ([(NSProgress *)v58 isIndeterminate])
      {
        [v6 appendString:@"(?%)"];
      }

      else
      {
        [(NSProgress *)v58 fractionCompleted];
        [v6 appendFormat:@"(%.2f)", v59];
      }
    }
  }

  else if (self->_uploaded)
  {
    [v6 appendString:@" ul:uploaded"];
  }

  if (self->_uploadingError)
  {
    [v6 appendFormat:@" ul-error:%@", self->_uploadingError];
  }

  conflictingVersions = self->_conflictingVersions;
  if (conflictingVersions)
  {
    v61 = [(NSArray *)conflictingVersions componentsJoinedByString:@", "];
    [v6 appendFormat:@" conflicts:[%@]", v61];
  }

  if (self->_downloading || [(FPItem *)self isExternalDownloadPlaceholder])
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    v63 = selfCopy3->_progress;
    objc_sync_exit(selfCopy3);

    if ([(NSProgress *)v63 fp_isOfFileOperationKind:*MEMORY[0x1E696A848]])
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;
    [v6 appendFormat:@" dl:downloading"];
    if (v65)
    {
      if ([(NSProgress *)v65 isIndeterminate])
      {
        [v6 appendString:@"(?%)"];
      }

      else
      {
        [(NSProgress *)v65 fractionCompleted];
        [v6 appendFormat:@"(%.2f)", v67];
      }
    }
  }

  else
  {
    if (self->_mostRecentVersionDownloaded)
    {
      v66 = @" dl:current";
    }

    else if (self->_downloaded)
    {
      v66 = @" dl:downloaded";
    }

    else
    {
      if (![(FPItem *)self isCloudItem])
      {
        goto LABEL_135;
      }

      v66 = @" dl:fault";
    }

    [v6 appendString:v66];
  }

LABEL_135:
  if (self->_downloadingError)
  {
    [v6 appendFormat:@" dl-error:%@", self->_downloadingError];
  }

  if ([(FPItem *)self isFolder])
  {
    if (self->_recursivelyDownloaded)
    {
      v68 = @" rec-dl:yes";
LABEL_143:
      [v6 appendString:v68];
      goto LABEL_144;
    }

LABEL_142:
    v68 = @" rec-dl:no";
    goto LABEL_143;
  }

  if ([(FPItem *)self isPackage]&& !self->_recursivelyDownloaded)
  {
    goto LABEL_142;
  }

LABEL_144:
  if (self->_fp_spotlightSubDomainIdentifier)
  {
    [v6 appendFormat:@" spd:%@", self->_fp_spotlightSubDomainIdentifier];
  }

  if (self->_excludedFromSync)
  {
    if (self->_ignoreRoot)
    {
      [v6 appendString:@" excluded:root"];
    }

    else
    {
      [v6 appendFormat:@" excluded:yes"];
    }
  }

  if (self->_contentPolicy)
  {
    [v6 appendFormat:@" contentPolicy:%lu", self->_contentPolicy];
  }

  if ([(NSArray *)self->_decorations count])
  {
    v69 = [(NSArray *)self->_decorations componentsJoinedByString:@", "];
    [v6 appendFormat:@" deco:%@", v69];
  }

  if (lCopy)
  {
    if ([(NSDictionary *)self->_userInfo count])
    {
      [v6 appendString:@" ui:{"];
      userInfo = self->_userInfo;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __30__FPItem_descriptionForFPCTL___block_invoke_2;
      v82[3] = &unk_1E793A100;
      v71 = v6;
      v83 = v71;
      [(NSDictionary *)userInfo enumerateKeysAndObjectsUsingBlock:v82];
      if ([v71 hasSuffix:{@", "}])
      {
        [v71 replaceCharactersInRange:objc_msgSend(v71 withString:{"length") - 2, 2, @"} "}];
      }
    }

    if ([(NSDictionary *)self->_inheritedUserInfo count])
    {
      [v6 appendString:@" iui:{"];
      inheritedUserInfo = self->_inheritedUserInfo;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __30__FPItem_descriptionForFPCTL___block_invoke_3;
      v80[3] = &unk_1E793A100;
      v73 = v6;
      v81 = v73;
      [(NSDictionary *)inheritedUserInfo enumerateKeysAndObjectsUsingBlock:v80];
      if ([v73 hasSuffix:{@", "}])
      {
        [v73 replaceCharactersInRange:objc_msgSend(v73 withString:{"length") - 2, 2, @"} "}];
      }
    }
  }

  else
  {
    [v6 appendString:@">"];
  }

  v74 = v6;

  return v6;
}

- (NSData)tagData
{
  tags = self->_tags;
  if (tags)
  {
    tags = FPGetTagsDataForTags(tags);
    v2 = vars8;
  }

  return tags;
}

- (void)setTagData:(id)data
{
  dataCopy = data;
  v8 = dataCopy;
  if (!dataCopy)
  {
    tags = self->_tags;
    self->_tags = 0;

    dataCopy = 0;
  }

  v6 = FPGetTagsFromTagsData(dataCopy);
  v7 = self->_tags;
  self->_tags = v6;
}

- (int64_t)localizedStandardTagsCompare:(id)compare
{
  compareCopy = compare;
  tags = [(FPItem *)self tags];
  tags2 = [compareCopy tags];
  v7 = [tags count];
  if (v7 >= [tags2 count])
  {
    v8 = tags2;
  }

  else
  {
    v8 = tags;
  }

  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [tags objectAtIndexedSubscript:v11];
      v14 = [tags2 objectAtIndexedSubscript:v11];
      v15 = [v13 localizedStandardCompare:v14];

      objc_autoreleasePoolPop(v12);
      if (v15)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if ([tags count] && objc_msgSend(tags2, "count"))
    {
      v16 = [tags count];
      if (v16 >= [tags2 count])
      {
        v17 = [tags count];
        v15 = v17 != [tags2 count];
      }

      else
      {
        v15 = -1;
      }
    }

    else if ([tags count] || objc_msgSend(tags2, "count"))
    {
      if ([tags count])
      {
        v15 = -1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (NSData)versionIdentifier
{
  versionIdentifier = self->_versionIdentifier;
  if (versionIdentifier)
  {
    contentVersion = versionIdentifier;
  }

  else
  {
    contentVersion = [(NSFileProviderItemVersion *)self->_itemVersion contentVersion];
  }

  return contentVersion;
}

- (void)setFileURL:(id)l
{
  lCopy = l;
  obj = self;
  objc_sync_enter(obj);
  fileURL = obj->_fileURL;
  obj->_fileURL = lCopy;

  objc_sync_exit(obj);
}

- (id)_sharedByDecorationType
{
  if ([(FPItem *)self isFolder])
  {
    goto LABEL_2;
  }

  if ([(FPItem *)self fp_isLastModifiedByCurrentUser])
  {
    return @"com.apple.FileProvider.ModifiedByMe";
  }

  mostRecentEditorNameComponents = [(FPItem *)self mostRecentEditorNameComponents];

  if (mostRecentEditorNameComponents)
  {
    return @"com.apple.FileProvider.ModifiedByOther";
  }

LABEL_2:
  if ([(FPItem *)self isSharedByCurrentUser])
  {
    return @"com.apple.FileProvider.SharedByMe";
  }

  ownerNameComponents = [(FPItem *)self ownerNameComponents];

  if (ownerNameComponents)
  {
    return @"com.apple.FileProvider.SharedByOther";
  }

  else
  {
    return @"com.apple.FileProvider.GenericShared";
  }
}

id __25__FPItem_itemDecorations__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [FPItemDecoration decorationWithIdentifier:a2 bundleIdentifier:*(a1 + 32)];
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"Sharing"];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3;
}

+ (id)allUbiquitousResourceKeys
{
  v15[17] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E695DCD8];
  v15[0] = *MEMORY[0x1E695DBD8];
  v15[1] = v3;
  v4 = *MEMORY[0x1E695DCB8];
  v15[2] = *MEMORY[0x1E695DCE0];
  v15[3] = v4;
  v5 = *MEMORY[0x1E695DCF0];
  v15[4] = *MEMORY[0x1E695DC98];
  v15[5] = v5;
  v6 = *MEMORY[0x1E695DD10];
  v15[6] = *MEMORY[0x1E695DC80];
  v15[7] = v6;
  v7 = *MEMORY[0x1E695DCA8];
  v15[8] = *MEMORY[0x1E695DD08];
  v15[9] = v7;
  v8 = *MEMORY[0x1E695DC78];
  v15[10] = *MEMORY[0x1E695DC70];
  v15[11] = v8;
  v9 = *MEMORY[0x1E695DD00];
  v15[12] = *MEMORY[0x1E695DCC8];
  v15[13] = v9;
  v10 = *MEMORY[0x1E695DCD0];
  v15[14] = *MEMORY[0x1E695DCF8];
  v15[15] = v10;
  v15[16] = *MEMORY[0x1E695DCE8];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:17];
  v12 = [v2 setWithArray:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)ubiquitousResourceKeysDiffAgainstItem:(id)item
{
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  isCloudItem = [(FPItem *)self isCloudItem];
  if (isCloudItem != [itemCopy isCloudItem])
  {
    [array addObject:*MEMORY[0x1E695DBD8]];
  }

  isUploaded = [(FPItem *)self isUploaded];
  if (isUploaded != [itemCopy isUploaded])
  {
    [array addObject:*MEMORY[0x1E695DCD8]];
  }

  isUploading = [(FPItem *)self isUploading];
  if (isUploading != [itemCopy isUploading])
  {
    [array addObject:*MEMORY[0x1E695DCE0]];
  }

  isDownloading = [(FPItem *)self isDownloading];
  if (isDownloading != [itemCopy isDownloading])
  {
    [array addObject:*MEMORY[0x1E695DCB8]];
  }

  _downloadingStatus = [(FPItem *)self _downloadingStatus];
  _downloadingStatus2 = [itemCopy _downloadingStatus];
  v12 = _downloadingStatus;
  v13 = _downloadingStatus2;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_16;
  }

  if (!v13)
  {

    goto LABEL_15;
  }

  v15 = [v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_15:
    [array addObject:*MEMORY[0x1E695DC98]];
  }

LABEL_16:
  uploadingError = [(FPItem *)self uploadingError];
  uploadingError2 = [itemCopy uploadingError];
  v18 = uploadingError;
  v19 = uploadingError2;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_23;
  }

  if (!v19)
  {

    goto LABEL_22;
  }

  v21 = [v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_22:
    [array addObject:*MEMORY[0x1E695DCF0]];
  }

LABEL_23:
  downloadingError = [(FPItem *)self downloadingError];
  downloadingError2 = [itemCopy downloadingError];
  v24 = downloadingError;
  v25 = downloadingError2;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_30;
  }

  if (!v25)
  {

    goto LABEL_29;
  }

  v27 = [v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_29:
    [array addObject:*MEMORY[0x1E695DC80]];
  }

LABEL_30:
  ownerNameComponents = [(FPItem *)self ownerNameComponents];
  ownerNameComponents2 = [itemCopy ownerNameComponents];
  v30 = ownerNameComponents;
  v31 = ownerNameComponents2;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_37;
  }

  if (!v31)
  {

    goto LABEL_36;
  }

  v33 = [v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
LABEL_36:
    [array addObject:*MEMORY[0x1E695DD10]];
  }

LABEL_37:
  mostRecentEditorNameComponents = [(FPItem *)self mostRecentEditorNameComponents];
  mostRecentEditorNameComponents2 = [itemCopy mostRecentEditorNameComponents];
  v36 = mostRecentEditorNameComponents;
  v37 = mostRecentEditorNameComponents2;
  v38 = v37;
  if (v36 == v37)
  {

    goto LABEL_44;
  }

  if (!v37)
  {

    goto LABEL_43;
  }

  v39 = [v36 isEqual:v37];

  if ((v39 & 1) == 0)
  {
LABEL_43:
    [array addObject:*MEMORY[0x1E695DD08]];
  }

LABEL_44:
  hasUnresolvedConflicts = [(FPItem *)self hasUnresolvedConflicts];
  hasUnresolvedConflicts2 = [itemCopy hasUnresolvedConflicts];
  v42 = hasUnresolvedConflicts;
  v43 = hasUnresolvedConflicts2;
  v44 = v43;
  if (v42 == v43)
  {

    goto LABEL_51;
  }

  if (!v43)
  {

    goto LABEL_50;
  }

  v45 = [v42 isEqual:v43];

  if ((v45 & 1) == 0)
  {
LABEL_50:
    [array addObject:*MEMORY[0x1E695DCA8]];
  }

LABEL_51:
  containerDisplayName = [(FPItem *)self containerDisplayName];
  containerDisplayName2 = [itemCopy containerDisplayName];
  v48 = containerDisplayName;
  v49 = containerDisplayName2;
  v50 = v49;
  if (v48 == v49)
  {

    goto LABEL_58;
  }

  if (!v49)
  {

    goto LABEL_57;
  }

  v51 = [v48 isEqual:v49];

  if ((v51 & 1) == 0)
  {
LABEL_57:
    [array addObject:*MEMORY[0x1E695DC70]];
  }

LABEL_58:
  isDownloadRequested = [(FPItem *)self isDownloadRequested];
  isDownloadRequested2 = [itemCopy isDownloadRequested];
  v54 = isDownloadRequested;
  v55 = isDownloadRequested2;
  v56 = v55;
  if (v54 == v55)
  {

    goto LABEL_65;
  }

  if (!v55)
  {

    goto LABEL_64;
  }

  v57 = [v54 isEqual:v55];

  if ((v57 & 1) == 0)
  {
LABEL_64:
    [array addObject:*MEMORY[0x1E695DC78]];
  }

LABEL_65:
  isShared = [(FPItem *)self isShared];
  if (isShared != [itemCopy isShared])
  {
    [array addObject:*MEMORY[0x1E695DCC8]];
  }

  if ([(FPItem *)self isShared])
  {
    if ([itemCopy isShared])
    {
      isSharedByCurrentUser = [(FPItem *)self isSharedByCurrentUser];
      if (isSharedByCurrentUser != [itemCopy isSharedByCurrentUser])
      {
        [array addObject:*MEMORY[0x1E695DD00]];
      }
    }
  }

  if ([(FPItem *)self isShared])
  {
    if ([itemCopy isShared])
    {
      isWritable = [(FPItem *)self isWritable];
      if (isWritable != [itemCopy isWritable])
      {
        [array addObject:*MEMORY[0x1E695DCF8]];
      }
    }
  }

  sharingPermissions = [(FPItem *)self sharingPermissions];
  sharingPermissions2 = [itemCopy sharingPermissions];
  v63 = sharingPermissions;
  v64 = sharingPermissions2;
  v65 = v64;
  if (v63 == v64)
  {

    goto LABEL_82;
  }

  if (!v64)
  {

    goto LABEL_81;
  }

  v66 = [v63 isEqual:v64];

  if ((v66 & 1) == 0)
  {
LABEL_81:
    [array addObject:*MEMORY[0x1E695DD20]];
  }

LABEL_82:
  isSyncPaused = [(FPItem *)self isSyncPaused];
  if (isSyncPaused != [itemCopy isSyncPaused])
  {
    [array addObject:*MEMORY[0x1E695DCD0]];
  }

  supportsUploadWithFailOnConflict = [(FPItem *)self supportsUploadWithFailOnConflict];
  if (supportsUploadWithFailOnConflict != [itemCopy supportsUploadWithFailOnConflict])
  {
    [array addObject:*MEMORY[0x1E695DCE8]];
  }

  v69 = [MEMORY[0x1E695DFD8] setWithArray:array];

  return v69;
}

- (id)_downloadingStatus
{
  if ([(FPItem *)self isCloudItem])
  {
    if ([(FPItem *)self isDownloaded])
    {
      if ([(FPItem *)self supportsMostRecentVersionDownloaded])
      {
        isMostRecentVersionDownloaded = [(FPItem *)self isMostRecentVersionDownloaded];
        v4 = MEMORY[0x1E695DC88];
        if (!isMostRecentVersionDownloaded)
        {
          v4 = MEMORY[0x1E695DC90];
        }
      }

      else
      {
        v4 = MEMORY[0x1E695DC88];
      }
    }

    else
    {
      v4 = MEMORY[0x1E695DCA0];
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isKnownByTheProvider
{
  itemIdentifier = [(FPItem *)self itemIdentifier];
  if ([itemIdentifier hasPrefix:@"__fp/"])
  {
    formerIdentifier = [(FPItem *)self formerIdentifier];
    if (formerIdentifier)
    {
      formerIdentifier2 = [(FPItem *)self formerIdentifier];
      v6 = [formerIdentifier2 hasPrefix:@"__fp/"] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)itemIsSupportedSearchScopeWithCachePolicy:(unint64_t)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(FPItem *)self isFolder]|| [(FPItem *)self exclusionType]|| [(FPItem *)self isIgnoreRoot])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FPItem_itemIsSupportedSearchScopeWithCachePolicy_completionHandler___block_invoke;
    v7[3] = &unk_1E793A150;
    v8 = handlerCopy;
    [FPProviderDomain fetchProviderDomainForItem:self cachePolicy:policy completionHandler:v7];
  }
}

uint64_t __70__FPItem_itemIsSupportedSearchScopeWithCachePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);
    v6 = 0;
  }

  else
  {
    v6 = [a2 supportsSearch];
    v4 = *(v3 + 16);
    v5 = v3;
    a3 = 0;
  }

  return v4(v5, v6, a3);
}

- (id)fp_valueForKeyPath:(id)path
{
  v13 = 0;
  v14 = 0;
  v4 = [path fp_splitKeyPathInProperty:&v14 remainder:&v13];
  v5 = v14;
  v6 = v13;
  v7 = 0;
  if (v4)
  {
    v8 = FPExtensionMatchingDictionaryForItem(self, 0);
    v9 = [v8 objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      if (!v6)
      {
        v11 = v9;
        goto LABEL_8;
      }

      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 fp_valueForKeyPath:v6];
LABEL_8:
        v7 = v11;
        goto LABEL_9;
      }
    }

    v7 = 0;
LABEL_9:
  }

  return v7;
}

- (FPItemID)providerParentItemID
{
  parentItemID = [(FPItem *)self parentItemID];
  isDiskIdentifier = [parentItemID isDiskIdentifier];

  if (isDiskIdentifier)
  {
    [(FPItem *)self parentFormerItemID];
  }

  else
  {
    [(FPItem *)self parentItemID];
  }
  v5 = ;

  return v5;
}

- (NSString)providerParentItemIdentifier
{
  providerParentItemID = [(FPItem *)self providerParentItemID];
  identifier = [providerParentItemID identifier];

  return identifier;
}

- (id)scopedSearchQueryUnderItem
{
  if ([(FPItem *)self isFolder])
  {
    v3 = [NSFileProviderSearchQuery alloc];
    itemID = [(FPItem *)self itemID];
    providerItemID = [(FPItem *)self providerItemID];
    v6 = [(NSFileProviderSearchQuery *)v3 initWithSearchScopedToItemID:itemID alternateItemID:providerItemID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)coreSpotlightIdentifier
{
  formerIdentifier = [(FPItem *)self formerIdentifier];

  if (formerIdentifier)
  {
    [(FPItem *)self formerItemID];
  }

  else
  {
    [(FPItem *)self itemID];
  }
  v4 = ;
  coreSpotlightIdentifier = [v4 coreSpotlightIdentifier];

  return coreSpotlightIdentifier;
}

+ (id)appLibraryFromContainerItem:(id)item documentsItem:(id)documentsItem
{
  itemCopy = item;
  documentsItemCopy = documentsItem;
  v9 = documentsItemCopy;
  if (itemCopy)
  {
    if (documentsItemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPItem+FPAppLibraryCollection.m" lineNumber:20 description:@"containerItem must not be nil"];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"FPItem+FPAppLibraryCollection.m" lineNumber:21 description:@"documentsItem must not be nil"];

LABEL_3:
  if ([itemCopy fp_isCloudDocsContainer])
  {
    v10 = 0;
  }

  else
  {
    v11 = [itemCopy copy];
    fileURL = [v9 fileURL];
    [v11 setFileURL:fileURL];

    itemIdentifier = [v9 itemIdentifier];
    [v11 setItemIdentifier:itemIdentifier];

    [v11 setFileID:{objc_msgSend(v9, "fileID")}];
    formerIdentifier = [v9 formerIdentifier];
    [v11 setFormerIdentifier:formerIdentifier];

    creationDate = [v9 creationDate];
    [v11 setCreationDate:creationDate];

    lastUsedDate = [v9 lastUsedDate];
    [v11 setLastUsedDate:lastUsedDate];

    contentModificationDate = [v9 contentModificationDate];
    [v11 setContentModificationDate:contentModificationDate];

    [v11 setRecursivelyDownloaded:{objc_msgSend(v9, "isRecursivelyDownloaded")}];
    [v11 setDownloaded:{objc_msgSend(v9, "isDownloaded")}];
    [v11 setDownloading:{objc_msgSend(v9, "isDownloading")}];
    [v11 setCapabilities:{objc_msgSend(v9, "capabilities")}];
    favoriteRank = [v9 favoriteRank];
    [v11 setFavoriteRank:favoriteRank];

    childItemCount = [v9 childItemCount];
    [v11 setChildItemCount:childItemCount];

    [v11 setPinned:{objc_msgSend(v9, "isPinned")}];
    [v11 setInPinnedFolder:{objc_msgSend(v9, "isInPinnedFolder")}];
    [v11 setContentPolicy:{objc_msgSend(v9, "contentPolicy")}];
    [v11 setInheritedContentPolicy:{objc_msgSend(v9, "inheritedContentPolicy")}];
    [v11 setEffectiveContentPolicy:{objc_msgSend(v9, "effectiveContentPolicy")}];
    if ([v11 isValidAppLibrary])
    {
      v10 = v11;
    }

    else
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPItem(FPAppLibraryCollection) appLibraryFromContainerItem:v11 documentsItem:v22];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isValidAppLibrary
{
  isValidContainerForAppLibrary = [(FPItem *)self isValidContainerForAppLibrary];
  if (isValidContainerForAppLibrary)
  {
    fileURL = [(FPItem *)self fileURL];
    lastPathComponent = [fileURL lastPathComponent];
    v6 = [lastPathComponent isEqualToString:@"Documents"];

    LOBYTE(isValidContainerForAppLibrary) = v6;
  }

  return isValidContainerForAppLibrary;
}

- (BOOL)isValidContainerForAppLibrary
{
  if ([(FPItem *)self fp_isCloudDocsContainer]|| ![(FPItem *)self isContainer])
  {
    return 0;
  }

  fp_appContainerBundleIdentifier = [(FPItem *)self fp_appContainerBundleIdentifier];
  if ([fp_appContainerBundleIdentifier length])
  {
    displayName = [(FPItem *)self displayName];
    if ([displayName length])
    {
      fileURL = [(FPItem *)self fileURL];
      v6 = fileURL != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)toSearchableItem
{
  spotlightDomainIdentifier = [(FPItem *)self spotlightDomainIdentifier];
  if (spotlightDomainIdentifier)
  {
    v4 = spotlightDomainIdentifier;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2050000000;
    v5 = getCSSearchableItemAttributeSetClass_softClass_0;
    v140 = getCSSearchableItemAttributeSetClass_softClass_0;
    if (!getCSSearchableItemAttributeSetClass_softClass_0)
    {
      v132 = MEMORY[0x1E69E9820];
      v133 = 3221225472;
      v134 = __getCSSearchableItemAttributeSetClass_block_invoke_0;
      v135 = &unk_1E793A2E8;
      v136 = &v137;
      __getCSSearchableItemAttributeSetClass_block_invoke_0(&v132);
      v5 = v138[3];
    }

    v6 = v5;
    _Block_object_dispose(&v137, 8);
    v7 = objc_alloc_init(v5);
    coreSpotlightIdentifier = [(FPItem *)self coreSpotlightIdentifier];
    providerID = [(FPItem *)self providerID];
    domainIdentifier = [(FPItem *)self domainIdentifier];
    filename = [(FPItem *)self filename];
    filename2 = [(FPItem *)self filename];
    displayName = [(FPItem *)self displayName];
    typeIdentifier = [(FPItem *)self typeIdentifier];
    formerIdentifier = [(FPItem *)self formerIdentifier];
    if (formerIdentifier)
    {
      v9 = formerIdentifier;
      formerIdentifier2 = [(FPItem *)self formerIdentifier];
      itemID = [(FPItem *)self itemID];
      identifier = [itemID identifier];
      v13 = [formerIdentifier2 isEqualToString:identifier];

      if ((v13 & 1) == 0)
      {
        v132 = 0;
        itemIdentifier = [(FPItem *)self itemIdentifier];
        v15 = [itemIdentifier fp_getParsedDiskIdentifier:&v132];

        if (v15)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v132];
          goto LABEL_15;
        }

        v18 = fp_current_or_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(FPItem(CSSearchableItem) *)self toSearchableItem];
        }
      }
    }

    v16 = 0;
LABEL_15:
    contentType = [(FPItem *)self contentType];
    if (contentType && (!-[FPItem isCloudItem](self, "isCloudItem") || -[FPItem isDownloaded](self, "isDownloaded")) && (([contentType conformsToType:*MEMORY[0x1E6982E30]] & 1) != 0 || objc_msgSend(contentType, "conformsToType:", *MEMORY[0x1E6982EE8])))
    {
      v20 = MEMORY[0x1E695E118];
    }

    else
    {
      v20 = 0;
    }

    contentType2 = [(FPItem *)self contentType];
    _localizedDescriptionDictionary = [contentType2 _localizedDescriptionDictionary];

    v84 = v20;
    if (_localizedDescriptionDictionary)
    {
      v137 = 0;
      v138 = &v137;
      v139 = 0x2050000000;
      v23 = getCSLocalizedStringClass_softClass;
      v140 = getCSLocalizedStringClass_softClass;
      if (!getCSLocalizedStringClass_softClass)
      {
        v132 = MEMORY[0x1E69E9820];
        v133 = 3221225472;
        v134 = __getCSLocalizedStringClass_block_invoke;
        v135 = &unk_1E793A2E8;
        v136 = &v137;
        __getCSLocalizedStringClass_block_invoke(&v132);
        v23 = v138[3];
      }

      v24 = v23;
      _Block_object_dispose(&v137, 8);
      v118 = [[v23 alloc] initWithLocalizedStrings:_localizedDescriptionDictionary];
    }

    else
    {
      v118 = 0;
    }

    creationDate = [(FPItem *)self creationDate];
    contentModificationDate = [(FPItem *)self contentModificationDate];
    tags = [(FPItem *)self tags];
    v82 = tags;
    v83 = _localizedDescriptionDictionary;
    if ([tags count])
    {
      v115 = [tags fp_map:&__block_literal_global_36];
      v26 = [tags count];
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __44__FPItem_CSSearchableItem__toSearchableItem__block_invoke_2;
      v130[3] = &unk_1E793CF78;
      v131 = tags;
      v27 = v130;
      v137 = 0;
      v138 = &v137;
      v139 = 0x2020000000;
      v28 = getMDPropertyCreateUserTagStringsSymbolLoc_ptr;
      v140 = getMDPropertyCreateUserTagStringsSymbolLoc_ptr;
      if (!getMDPropertyCreateUserTagStringsSymbolLoc_ptr)
      {
        v132 = MEMORY[0x1E69E9820];
        v133 = 3221225472;
        v134 = __getMDPropertyCreateUserTagStringsSymbolLoc_block_invoke;
        v135 = &unk_1E793A2E8;
        v136 = &v137;
        v29 = MetadataUtilitiesLibrary_0();
        v30 = dlsym(v29, "MDPropertyCreateUserTagStrings");
        *(v136[1] + 24) = v30;
        getMDPropertyCreateUserTagStringsSymbolLoc_ptr = *(v136[1] + 24);
        v28 = v138[3];
      }

      _Block_object_dispose(&v137, 8);
      if (!v28)
      {
        [FPItem(CSSearchableItem) toSearchableItem];
      }

      v114 = v28(v26, v27);
    }

    else
    {
      v114 = 0;
      v115 = 0;
    }

    lastUsedDate = [(FPItem *)self lastUsedDate];
    favoriteRank = [(FPItem *)self favoriteRank];
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploaded](self, "isUploaded")}];
    v111 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploaded](self, "isUploaded")}];

    v110 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploading](self, "isUploading")}];
    uploadingError = [(FPItem *)self uploadingError];
    v109 = [FPSearchableItemError stringFromError:uploadingError];

    v108 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isDownloaded](self, "isDownloaded")}];
    v107 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isDownloading](self, "isDownloading")}];
    downloadingError = [(FPItem *)self downloadingError];
    v106 = [FPSearchableItemError stringFromError:downloadingError];

    v105 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isRecursivelyDownloaded](self, "isRecursivelyDownloaded")}];
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FPItem capabilities](self, "capabilities")}];
    v103 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isPinned](self, "isPinned")}];
    v102 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isInPinnedFolder](self, "isInPinnedFolder")}];
    itemVersion = [(FPItem *)self itemVersion];
    v79 = itemVersion;
    if (itemVersion && (v35 = itemVersion, ([itemVersion isEmpty] & 1) == 0))
    {
      v100 = [FPSearchableItemVersion stringFromVersion:v35];
      v101 = 0;
    }

    else
    {
      versionIdentifier = [(FPItem *)self versionIdentifier];

      if (versionIdentifier)
      {
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        versionIdentifier2 = [(FPItem *)self versionIdentifier];
        v39 = [versionIdentifier2 base64EncodedDataWithOptions:0];
        v101 = [v37 initWithData:v39 encoding:4];

        v100 = 0;
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }
    }

    providerID2 = [(FPItem *)self providerID];
    fp_appContainerBundleIdentifier = [(FPItem *)self fp_appContainerBundleIdentifier];
    cloudContainerIdentifier = [(FPItem *)self cloudContainerIdentifier];
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isContainer](self, "isContainer")}];
    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isContainerPristine](self, "isContainerPristine")}];
    v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUbiquitous](self, "isUbiquitous")}];
    fp_parentDomainIdentifier = [(FPItem *)self fp_parentDomainIdentifier];

    if (fp_parentDomainIdentifier)
    {
      fp_parentDomainIdentifier2 = [(FPItem *)self fp_parentDomainIdentifier];
    }

    else
    {
      fp_parentDomainIdentifier2 = 0;
    }

    userInfo = [(FPItem *)self userInfo];
    v78 = userInfo;
    if ([userInfo count])
    {
      v128 = 0;
      v129 = 0;
      v42 = FPEncodeUserInfo(userInfo, &v129, &v128);
      v43 = v129;
      v44 = v128;
      v126 = 0;
      v127 = 0;
      if (v42)
      {
        v127 = v43;
        v126 = v44;
      }
    }

    else
    {
      v126 = 0;
      v127 = 0;
    }

    documentSize = [(FPItem *)self documentSize];
    v46 = documentSize;
    if (documentSize)
    {
      v92 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(documentSize, "unsignedIntegerValue") / 1000000.0}];
    }

    else
    {
      v92 = 0;
    }

    v91 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isShared](self, "isShared")}];
    v90 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isSharedByCurrentUser](self, "isSharedByCurrentUser")}];
    v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem fp_isLastModifiedByCurrentUser](self, "fp_isLastModifiedByCurrentUser")}];
    preformattedOwnerName = [(FPItem *)self preformattedOwnerName];

    if (preformattedOwnerName)
    {
      preformattedOwnerName2 = [(FPItem *)self preformattedOwnerName];
    }

    else
    {
      ownerNameComponents = [(FPItem *)self ownerNameComponents];

      if (ownerNameComponents)
      {
        v48 = objc_opt_new();
        ownerNameComponents2 = [(FPItem *)self ownerNameComponents];
        preformattedOwnerName2 = [v48 stringFromPersonNameComponents:ownerNameComponents2];

        goto LABEL_55;
      }

      preformattedOwnerName2 = 0;
    }

    v48 = 0;
LABEL_55:
    preformattedMostRecentEditorName = [(FPItem *)self preformattedMostRecentEditorName];

    v77 = v46;
    if (preformattedMostRecentEditorName)
    {
      v76 = v48;
      preformattedMostRecentEditorName2 = [(FPItem *)self preformattedMostRecentEditorName];
    }

    else
    {
      mostRecentEditorNameComponents = [(FPItem *)self mostRecentEditorNameComponents];

      if (mostRecentEditorNameComponents)
      {
        if (!v48)
        {
          v48 = objc_opt_new();
        }

        mostRecentEditorNameComponents2 = [(FPItem *)self mostRecentEditorNameComponents];
        v76 = v48;
        preformattedMostRecentEditorName2 = [v48 stringFromPersonNameComponents:mostRecentEditorNameComponents2];
      }

      else
      {
        v76 = v48;
        preformattedMostRecentEditorName2 = 0;
      }
    }

    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isMostRecentVersionDownloaded](self, "isMostRecentVersionDownloaded")}];
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isTrashed](self, "isTrashed")}];
    fileURL = [(FPItem *)self fileURL];
    fileURL2 = [(FPItem *)self fileURL];
    v56 = _CFURLPromiseCopyPhysicalURL();

    v80 = contentType;
    if (v56)
    {
      v57 = v56;

      fileURL = v57;
    }

    v58 = MEMORY[0x1E695E118];
    v59 = fileURL;
    parentFormerIdentifier = [(FPItem *)self parentFormerIdentifier];
    v61 = parentFormerIdentifier;
    if (parentFormerIdentifier)
    {
      parentItemIdentifier = parentFormerIdentifier;
    }

    else
    {
      parentItemIdentifier = [(FPItem *)self parentItemIdentifier];
    }

    v63 = parentItemIdentifier;

    capabilities = [(FPItem *)self capabilities];
    v65 = [MEMORY[0x1E696AD98] numberWithBool:(capabilities >> 6) & 1];
    if ([(FPItem *)self isTopLevelSharedItem])
    {
      v66 = v58;
    }

    else
    {
      v66 = 0;
    }

    collaborationIdentifier = [(FPItem *)self collaborationIdentifier];
    [v7 setFileItemID:coreSpotlightIdentifier];
    [v7 setFileProviderID:providerID];
    [v7 setFileProviderDomainIdentifier:domainIdentifier];
    [v7 setFilename:filename];
    [v7 setAttribute:filename2 forKey:@"FPFilename"];
    [v7 setDisplayName:displayName];
    [v7 setContentType:typeIdentifier];
    v81 = v16;
    [v7 setAttribute:v16 forKey:@"FPOnDiskIdentifier"];
    [v7 setEligibleForPhotosProcessing:v84];
    [v7 setKind:v118];
    [v7 setContentCreationDate:creationDate];
    [v7 setContentModificationDate:contentModificationDate];
    [v7 setUserTags:v115];
    [v7 setAttribute:v114 forKey:@"_kMDItemUserTags"];
    [v7 setLastUsedDate:lastUsedDate];
    [v7 setFavoriteRank:favoriteRank];
    [v7 setUploaded:v111];
    [v7 setUploading:v110];
    [v7 setAttribute:v109 forKey:@"FPUploadingError"];
    [v7 setAttribute:v108 forKey:@"FPDownloaded"];
    [v7 setDownloading:v107];
    [v7 setAttribute:v106 forKey:@"FPDownloadingError"];
    [v7 setAttribute:v105 forKey:@"FPItemIsRecursivelyDownloaded"];
    [v7 setAttribute:v104 forKey:@"FPCapabilities"];
    [v7 setAttribute:v103 forKey:@"FPItemIsPinned"];
    [v7 setAttribute:v102 forKey:@"FPItemIsInPinnedFolder"];
    [v7 setAttribute:v100 forKey:@"FPItemVersion"];
    [v7 setVersionIdentifier:v101];
    [v7 setBundleID:providerID2];
    [v7 setAttribute:fp_appContainerBundleIdentifier forKey:@"FPAppContainerBundleID"];
    [v7 setAttribute:cloudContainerIdentifier forKey:@"FPCloudContainerID"];
    [v7 setAttribute:v96 forKey:@"FPIsContainer"];
    [v7 setAttribute:v95 forKey:@"FPIsContainerPristine"];
    [v7 setAttribute:v94 forKey:@"FPIsUbiquitous"];
    [v7 setAttribute:fp_parentDomainIdentifier2 forKey:@"FPParentDomainID"];
    [v7 setAttribute:v127 forKey:@"FPUserInfoKeys"];
    [v7 setAttribute:v126 forKey:@"FPUserInfoValues"];
    [v7 setFileSize:v92];
    [v7 setShared:v91];
    [v7 setUserOwned:v90];
    [v7 setAttribute:v89 forKey:@"FPLastModifiedByCurrentUser"];
    [v7 setOwnerName:preformattedOwnerName2];
    [v7 setLastEditorName:preformattedMostRecentEditorName2];
    [v7 setAttribute:v86 forKey:@"FPMostRecentVersionDownloaded"];
    [v7 setTrashed:v85];
    [v7 setContentURL:v59];
    [v7 setAttribute:v63 forKey:@"FPParentFileItemID"];
    [v7 setAttribute:v65 forKey:@"FPEvictable"];
    [v7 setAttribute:v66 forKey:@"FPIsTopLevelSharedItem"];
    [v7 setAttribute:collaborationIdentifier forKey:@"FPCollaborationIdentifier"];
    fp_spotlightSubDomainIdentifier = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    if (fp_spotlightSubDomainIdentifier)
    {
      v69 = [v4 stringByAppendingPathExtension:fp_spotlightSubDomainIdentifier];

      v4 = v69;
    }

    v137 = 0;
    v138 = &v137;
    v139 = 0x2050000000;
    v70 = getCSSearchableItemClass_softClass_0;
    v140 = getCSSearchableItemClass_softClass_0;
    if (!getCSSearchableItemClass_softClass_0)
    {
      v132 = MEMORY[0x1E69E9820];
      v133 = 3221225472;
      v134 = __getCSSearchableItemClass_block_invoke_0;
      v135 = &unk_1E793A2E8;
      v136 = &v137;
      __getCSSearchableItemClass_block_invoke_0(&v132);
      v70 = v138[3];
    }

    v71 = v70;
    _Block_object_dispose(&v137, 8);
    v72 = [v70 alloc];
    coreSpotlightIdentifier2 = [(FPItem *)self coreSpotlightIdentifier];
    v17 = [v72 initWithUniqueIdentifier:coreSpotlightIdentifier2 domainIdentifier:v4 attributeSet:v7];

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [v17 setExpirationDate:distantFuture];

    goto LABEL_76;
  }

  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(FPItem(CSSearchableItem) *)v4 toSearchableItem];
  }

  v17 = 0;
LABEL_76:

  return v17;
}

void __44__FPItem_CSSearchableItem__toSearchableItem__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [v7 label];
  *a3 = v6;

  *a4 = [v7 color];
}

- (FPItem)initWithSearchableItem:(id)item
{
  itemCopy = item;
  v5 = [[_CSSearchableItemAdapter alloc] initWithSearchableItem:itemCopy];

  attributeSet = [(_CSSearchableItemAdapter *)v5 attributeSet];
  fileProviderID = [attributeSet fileProviderID];
  if (![fileProviderID length])
  {
    goto LABEL_14;
  }

  typeIdentifier = [(_CSSearchableItemAdapter *)v5 typeIdentifier];
  if (![typeIdentifier length])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  filename = [(_CSSearchableItemAdapter *)v5 filename];
  if (![filename length])
  {
LABEL_12:

    goto LABEL_13;
  }

  parentItemIdentifier = [(_CSSearchableItemAdapter *)v5 parentItemIdentifier];
  if (![parentItemIdentifier length])
  {

    goto LABEL_12;
  }

  itemIdentifier = [(_CSSearchableItemAdapter *)v5 itemIdentifier];
  v12 = [itemIdentifier length];

  if (!v12)
  {
LABEL_15:
    typeIdentifier2 = [(_CSSearchableItemAdapter *)v5 typeIdentifier];
    contentType = [typeIdentifier2 length];

    if (contentType)
    {
      contentType = [(_CSSearchableItemAdapter *)v5 contentType];
    }

    attributeSet2 = [(_CSSearchableItemAdapter *)v5 attributeSet];
    fileProviderID2 = [attributeSet2 fileProviderID];
    itemIdentifier2 = [(_CSSearchableItemAdapter *)v5 itemIdentifier];
    filename2 = [(_CSSearchableItemAdapter *)v5 filename];
    __FILEPROVIDER_BAD_ITEM__(v5, fileProviderID2, itemIdentifier2, filename2, contentType, 0, 0);
    v22 = 0;
    goto LABEL_18;
  }

  v13 = [FPItem alloc];
  attributeSet3 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  fileProviderID3 = [attributeSet3 fileProviderID];
  attributeSet4 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  fileProviderDomainIdentifier = [attributeSet4 fileProviderDomainIdentifier];
  v18 = fileProviderDomainIdentifier;
  if (fileProviderDomainIdentifier)
  {
    v19 = fileProviderDomainIdentifier;
  }

  else
  {
    v19 = @"NSFileProviderDomainDefaultIdentifier";
  }

  attributeSet5 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  domainIdentifier = [attributeSet5 domainIdentifier];
  v22 = [(FPItem *)v13 initWithVendorItem:v5 provider:fileProviderID3 domain:v19 spotlightDomainIdentifier:domainIdentifier extensionCapabilities:-1 useFPFS:0];

  [(FPItem *)v22 setEnumerationOrigin:2];
  if ([(FPItem *)v22 isFolder])
  {
    contentType = [(FPItem *)v22 filename];
    attributeSet2 = [(FPItem *)v22 parentItemIdentifier];
    fileProviderID2 = [(FPItem *)v22 providerID];
    itemIdentifier2 = [(_CSSearchableItemAdapter *)v5 attributeSet];
    filename2 = [itemIdentifier2 contentURL];
    isContainer = [(FPItem *)v22 isContainer];
    cloudContainerIdentifier = [(FPItem *)v22 cloudContainerIdentifier];
    [(FPItem *)v22 setFolderType:CalculateFolderType(contentType, attributeSet2, fileProviderID2, filename2, isContainer, cloudContainerIdentifier)];

LABEL_18:
  }

  return v22;
}

+ (id)fp_minimalAttributesForEvictionPriority
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = getMDItemLastUsedDate();
  v9[0] = v2;
  v3 = getMDItemFileSize();
  v9[1] = v3;
  v4 = getMDItemFileProviderID();
  v9[2] = v4;
  v5 = getMDItemFileProviderDomainIdentifier();
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)fp_minimalAttributesForEviction
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = getMDItemLastUsedDate();
  v10[0] = v2;
  v3 = getMDItemFileSize();
  v10[1] = v3;
  v4 = getMDItemFileItemID();
  v10[2] = v4;
  v5 = getMDItemFileProviderID();
  v10[3] = v5;
  v6 = getMDItemFileProviderDomainIdentifier();
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)generatePlaceholderIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [uUIDString componentsSeparatedByString:@"-"];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v2 stringWithFormat:@"%@/%@", @"__fp", v6];

  return v7;
}

+ (id)generatePlaceholderIdentifierWithOriginalID:(id)d
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  dCopy = d;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [uUIDString componentsSeparatedByString:@"-"];
  v9 = [v8 objectAtIndexedSubscript:0];
  dCopy = [v3 stringWithFormat:@"%@/%@/%@", @"__fp", v9, dCopy];

  return dCopy;
}

+ (id)temporaryPlaceholderFromItem:(id)item
{
  copyAsPending = [item copyAsPending];
  [copyAsPending setFavoriteRank:0];
  [copyAsPending setUploading:0];
  [copyAsPending setDownloading:0];
  [copyAsPending setFp_lastModifiedByCurrentUser:0];
  [copyAsPending setOwnerNameComponents:0];
  [copyAsPending setMostRecentEditorNameComponents:0];
  [copyAsPending setEnumerationOrigin:0];
  [copyAsPending setFp_spotlightSubDomainIdentifier:0];
  [copyAsPending setContainerDisplayName:0];
  [copyAsPending setFp_appContainerBundleIdentifier:0];
  [copyAsPending setFp_parentDomainIdentifier:0];
  [copyAsPending setCloudContainerIdentifier:0];
  [copyAsPending setFileURL:0];
  [copyAsPending setShared:0];
  [copyAsPending setSharedByCurrentUser:0];
  [copyAsPending setState:5];

  return copyAsPending;
}

+ (id)placeholderWithCopyOfExistingItem:(id)item lastUsageUpdatePolicy:(unint64_t)policy underParent:(id)parent inProviderDomainID:(id)d
{
  dCopy = d;
  parentCopy = parent;
  itemCopy = item;
  v13 = [self temporaryPlaceholderFromItem:itemCopy];
  generatePlaceholderIdentifier = [self generatePlaceholderIdentifier];
  [v13 setItemIdentifier:generatePlaceholderIdentifier];

  itemIdentifier = [itemCopy itemIdentifier];

  [v13 setPlaceholderIdentifier:itemIdentifier];
  [v13 setParentItemIdentifier:parentCopy];

  if (@"NSFileProviderTrashContainerItemIdentifier" == parentCopy)
  {
    [v13 setTrashed:1];
  }

  [v13 setProviderDomainID:dCopy];
  if (policy)
  {
    if (policy == 2)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v13 setLastUsedDate:date];
    }
  }

  else
  {
    [v13 setLastUsedDate:0];
  }

  return v13;
}

+ (id)genericArchivePlaceholderUnderParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format
{
  v23 = 0;
  dCopy = d;
  parentCopy = parent;
  v9 = [FPArchiveOperation extensionForArchiveFormat:format utType:&v23];
  v10 = v23;
  v18 = FPLoc(@"ARCHIVE_FILENAME", v11, v12, v13, v14, v15, v16, v17, v22);
  v19 = [v18 stringByAppendingPathExtension:v9];
  v20 = [FPItem placeholderWithName:v19 contentType:v10 contentAccessDate:0 underParent:parentCopy inProviderDomainID:dCopy];

  return v20;
}

+ (id)archivePlaceholderForItem:(id)item underParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format
{
  v22 = 0;
  dCopy = d;
  parentCopy = parent;
  itemCopy = item;
  v12 = [FPArchiveOperation extensionForArchiveFormat:format utType:&v22];
  v13 = v22;
  filename = [itemCopy filename];
  v15 = [filename fp_displayNameFromFilenameWithHiddenPathExtension:1 isFolder:{objc_msgSend(itemCopy, "isFolder")}];
  v16 = [v15 fp_filenameFromDisplayNameWithExtension:v12];

  v17 = [FPItem placeholderWithName:v16 contentType:v13 contentAccessDate:0 underParent:parentCopy inProviderDomainID:dCopy];

  displayName = [itemCopy displayName];
  [v17 setDisplayName:displayName];

  itemIdentifier = [itemCopy itemIdentifier];
  [v17 setPlaceholderIdentifier:itemIdentifier];

  [v17 setCapabilities:{objc_msgSend(itemCopy, "capabilities")}];
  [v17 setEnumerationOrigin:{objc_msgSend(itemCopy, "enumerationOrigin")}];
  fileSystemFlags = [itemCopy fileSystemFlags];

  [v17 setFileSystemFlags:fileSystemFlags];

  return v17;
}

+ (id)placeholderWithName:(id)name contentType:(id)type contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  dateCopy = date;
  dCopy = d;
  parentCopy = parent;
  typeCopy = type;
  nameCopy = name;
  v17 = [FPItem alloc];
  generatePlaceholderIdentifier = [self generatePlaceholderIdentifier];
  v19 = [(FPItem *)v17 initWithProviderDomainID:dCopy itemIdentifier:generatePlaceholderIdentifier parentItemIdentifier:parentCopy filename:nameCopy contentType:typeCopy];

  if (dateCopy)
  {
    [(FPItem *)v19 setLastUsedDate:dateCopy];
  }

  date = [MEMORY[0x1E695DF00] date];
  [(FPItem *)v19 setCreationDate:date];

  creationDate = [(FPItem *)v19 creationDate];
  [(FPItem *)v19 setContentModificationDate:creationDate];

  [(FPItem *)v19 setState:5];

  return v19;
}

+ (id)placeholderWithName:(id)name typeIdentifier:(id)identifier contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  v11 = MEMORY[0x1E6982C40];
  dCopy = d;
  parentCopy = parent;
  dateCopy = date;
  nameCopy = name;
  v16 = [v11 fp_cachedTypeWithIdentifier:identifier];
  v17 = [FPItem placeholderWithName:nameCopy contentType:v16 contentAccessDate:dateCopy underParent:parentCopy inProviderDomainID:dCopy];

  return v17;
}

+ (id)placeholderWithName:(id)name isFolder:(BOOL)folder contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  v7 = MEMORY[0x1E6982DC8];
  if (!folder)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [self placeholderWithName:name contentType:*v7 contentAccessDate:date underParent:parent inProviderDomainID:d];
}

- (void)_coreSpotlightAttributeForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"kMDItemIsTrashed"])
  {
    v5 = @"isTrashed";
LABEL_8:
    v6 = [(FPItem *)self valueForKey:v5];
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"kMDItemDisplayName"])
  {
    v5 = @"displayName";
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"FPDomainIdentifier"] || objc_msgSend(keyCopy, "isEqualToString:", @"kMDItemFileProviderID"))
  {
    v5 = @"providerDomainID";
    goto LABEL_8;
  }

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(FPItem(MDSimpleQueryEvaluator) *)keyCopy _coreSpotlightAttributeForKey:v8];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)initWithProviderID:(uint64_t)a1 domainIdentifier:(uint64_t)a2 itemIdentifier:parentItemIdentifier:filename:contentType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItem.m" lineNumber:493 description:@"contentType is not of the current type"];
}

- (void)initWithVendorItem:(uint64_t)a3 provider:(uint64_t)a4 domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_1();
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  [v7 handleFailureInMethod:v5 object:v4 file:@"FPItem.m" lineNumber:832 description:{@"extendedAttributes on %@ has class %@ instead of %@", a4, v8, objc_opt_class()}];
}

- (void)initWithVendorItem:(uint64_t)a1 provider:(uint64_t)a2 domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItem.m" lineNumber:900 description:{@"version identifiers are limited to %lu bytes", 1000}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_obfuscatedFilename];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(os_log_t)log .cold.1(void *a1, uint64_t *a2, os_log_t log)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a1[10];
  v5 = a1[45];
  v6 = a1[22];
  v8 = 138413314;
  v9 = a1;
  v10 = 2112;
  v11 = v3;
  v12 = 2112;
  v13 = v4;
  v14 = 2112;
  v15 = v5;
  v16 = 2112;
  v17 = v6;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] item %@ does not have all the required properties; encoding will be invalid (%@, %@, %@, %@)", &v8, 0x34u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fieldDifferencesWithItem:(uint64_t)a1 onlyMetadata:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 itemID];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() itemIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() itemIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() formerIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() formerIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() parentFormerIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() parentFormerIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() parentItemIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() parentItemIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.5()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() providerID];
  v4 = [OUTLINED_FUNCTION_9_1() providerID];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.6()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() domainIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() domainIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.7()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() filename];
  v4 = [OUTLINED_FUNCTION_9_1() filename];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.8()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() displayName];
  v4 = [OUTLINED_FUNCTION_9_1() displayName];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.9()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() contentType];
  v4 = [OUTLINED_FUNCTION_9_1() contentType];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.10()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() documentSize];
  v4 = [OUTLINED_FUNCTION_9_1() documentSize];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.11()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() fileURL];
  v4 = [OUTLINED_FUNCTION_9_1() fileURL];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.14()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() creationDate];
  v4 = [OUTLINED_FUNCTION_9_1() creationDate];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.15()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() contentModificationDate];
  v4 = [OUTLINED_FUNCTION_9_1() contentModificationDate];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.17()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() lastUsedDate];
  v4 = [OUTLINED_FUNCTION_9_1() lastUsedDate];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.18()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() tags];
  v4 = [OUTLINED_FUNCTION_9_1() tags];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.19()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() favoriteRank];
  v4 = [OUTLINED_FUNCTION_9_1() favoriteRank];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.22()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() uploadingError];
  v4 = [OUTLINED_FUNCTION_9_1() uploadingError];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.25()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() downloadingError];
  v4 = [OUTLINED_FUNCTION_9_1() downloadingError];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.30()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() ownerNameComponents];
  v4 = [OUTLINED_FUNCTION_9_1() ownerNameComponents];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.31()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() mostRecentEditorNameComponents];
  v4 = [OUTLINED_FUNCTION_9_1() mostRecentEditorNameComponents];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.32()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() collaborationIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() collaborationIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.33()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() childItemCount];
  v4 = [OUTLINED_FUNCTION_9_1() childItemCount];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.34()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() userInfo];
  v4 = [OUTLINED_FUNCTION_9_1() userInfo];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.36()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() placeholderIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() placeholderIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.37()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() versionIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() versionIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.38()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() itemVersion];
  v4 = [OUTLINED_FUNCTION_9_1() itemVersion];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.39()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() spotlightDomainIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() spotlightDomainIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.40()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() fp_spotlightSubDomainIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() fp_spotlightSubDomainIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.43()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() hasUnresolvedConflicts];
  v4 = [OUTLINED_FUNCTION_9_1() hasUnresolvedConflicts];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.44()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() isDownloadRequested];
  v4 = [OUTLINED_FUNCTION_9_1() isDownloadRequested];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.45()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() sharingPermissions];
  v4 = [OUTLINED_FUNCTION_9_1() sharingPermissions];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.46()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() containerDisplayName];
  v4 = [OUTLINED_FUNCTION_9_1() containerDisplayName];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.48()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() fp_appContainerBundleIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() fp_appContainerBundleIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.49()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() fp_parentDomainIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() fp_parentDomainIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.50()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() cloudContainerIdentifier];
  v4 = [OUTLINED_FUNCTION_9_1() cloudContainerIdentifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.56()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() conflictingVersions];
  v4 = [OUTLINED_FUNCTION_9_1() conflictingVersions];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.58()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() extendedAttributes];
  v4 = [OUTLINED_FUNCTION_9_1() extendedAttributes];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:ofItem:.cold.59()
{
  OUTLINED_FUNCTION_3_1();
  v12 = *MEMORY[0x1E69E9840];
  [v2 itemID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_0() decorations];
  v4 = [OUTLINED_FUNCTION_9_1() decorations];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_2(&dword_1AAAE1000, v5, v6, "[DEBUG] Overriding field %@ for itemID %@ - old %@ new %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)overrideFields:(void *)a1 ofItem:.cold.60(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 itemID];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end