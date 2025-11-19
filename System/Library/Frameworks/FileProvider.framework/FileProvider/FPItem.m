@interface FPItem
+ (id)allUbiquitousResourceKeys;
+ (id)appLibraryFromContainerItem:(id)a3 documentsItem:(id)a4;
+ (id)archivePlaceholderForItem:(id)a3 underParent:(id)a4 inProviderDomainID:(id)a5 withArchiveFormat:(unint64_t)a6;
+ (id)fp_minimalAttributesForEviction;
+ (id)fp_minimalAttributesForEvictionPriority;
+ (id)fp_queryFetchAttributes;
+ (id)generatePlaceholderIdentifier;
+ (id)generatePlaceholderIdentifierWithOriginalID:(id)a3;
+ (id)genericArchivePlaceholderUnderParent:(id)a3 inProviderDomainID:(id)a4 withArchiveFormat:(unint64_t)a5;
+ (id)placeholderWithCopyOfExistingItem:(id)a3 lastUsageUpdatePolicy:(unint64_t)a4 underParent:(id)a5 inProviderDomainID:(id)a6;
+ (id)placeholderWithName:(id)a3 contentType:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
+ (id)placeholderWithName:(id)a3 isFolder:(BOOL)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
+ (id)placeholderWithName:(id)a3 typeIdentifier:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
+ (id)temporaryPlaceholderFromItem:(id)a3;
- (BOOL)fp_isCloudDocsContainer;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
- (BOOL)isExternalDownloadPlaceholder;
- (BOOL)isFlattenedPackage;
- (BOOL)isFolder;
- (BOOL)isKnownByTheProvider;
- (BOOL)isPackage;
- (BOOL)isPinnedSubitem;
- (BOOL)isValidAppLibrary;
- (BOOL)isValidContainerForAppLibrary;
- (FPItem)initWithCoder:(id)a3;
- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 contentType:(id)a7;
- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 isDirectory:(BOOL)a7;
- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 typeIdentifier:(id)a7;
- (FPItem)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5 parentItemIdentifier:(id)a6 filename:(id)a7 contentType:(id)a8;
- (FPItem)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5 parentItemIdentifier:(id)a6 filename:(id)a7 isDirectory:(BOOL)a8;
- (FPItem)initWithSearchableItem:(id)a3;
- (FPItem)initWithVendorItem:(id)a3 provider:(id)a4 domain:(id)a5 spotlightDomainIdentifier:(id)a6 extensionCapabilities:(unint64_t)a7 useFPFS:(BOOL)a8;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)coreSpotlightIdentifier;
- (id)descriptionForFPCTL:(BOOL)a3;
- (id)fieldDifferencesWithItem:(id)a3 onlyMetadata:(BOOL)a4;
- (id)fp_valueForKeyPath:(id)a3;
- (id)humanReadableCapabilities;
- (id)scopedSearchQueryUnderItem;
- (id)strippedCopy;
- (id)toSearchableItem;
- (id)ubiquitousResourceKeysDiffAgainstItem:(id)a3;
- (int64_t)localizedStandardTagsCompare:(id)a3;
- (unint64_t)folderType;
- (unint64_t)hash;
- (void)_coreSpotlightAttributeForKey:(id)a3;
- (void)_evaluateTypes:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)itemIsSupportedSearchScopeWithCachePolicy:(unint64_t)a3 completionHandler:(id)a4;
- (void)overrideFields:(id)a3 ofItem:(id)a4;
- (void)setContentType:(id)a3;
- (void)setFileURL:(id)a3;
- (void)setFilename:(id)a3;
- (void)setItemIdentifier:(id)a3;
- (void)setProviderDomainID:(id)a3;
- (void)setProviderID:(id)a3;
- (void)setTagData:(id)a3;
- (void)setTypeIdentifier:(id)a3;
@end

@implementation FPItem

- (BOOL)isPackage
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_typesEvaluated)
  {
    isPackage = v2->_isPackage;
    objc_sync_exit(v2);
  }

  else
  {
    v4 = v2->_contentType;
    objc_sync_exit(v2);

    [(FPItem *)v2 _evaluateTypes:v4];
    isPackage = v2->_isPackage;
    v2 = v4;
  }

  return isPackage;
}

- (NSURL)fileURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fileURL;
  objc_sync_exit(v2);

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
  v2 = [(FPItem *)self filename];
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"pkgf"];

  return v4;
}

- (BOOL)isFolder
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_typesEvaluated)
  {
    isFolder = v2->_isFolder;
    objc_sync_exit(v2);
  }

  else
  {
    v4 = v2->_contentType;
    objc_sync_exit(v2);

    [(FPItem *)v2 _evaluateTypes:v4];
    isFolder = v2->_isFolder;
    v2 = v4;
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
  v2 = [(FPItem *)self creationDate];
  [v2 timeIntervalSince1970];
  is_busy_date = fpfs_is_busy_date(v3);

  return is_busy_date;
}

- (NSString)typeIdentifier
{
  v2 = [(FPItem *)self contentType];
  v3 = [v2 identifier];

  return v3;
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
  v3 = [(FPItem *)self providerID];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  decorations = self->_decorations;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __25__FPItem_itemDecorations__block_invoke;
  v17 = &unk_1E793A128;
  v5 = v3;
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
    v11 = [(FPItem *)self _sharedByDecorationType];
    v12 = [FPItemDecoration decorationWithIdentifier:v11 bundleIdentifier:@"com.apple.FileProvider"];

    [v10 addObject:v12];
  }

  _Block_object_dispose(v20, 8);

  return v10;
}

- (NSString)providerItemIdentifier
{
  v2 = [(FPItem *)self providerItemID];
  v3 = [v2 identifier];

  return v3;
}

- (FPItemID)providerItemID
{
  v3 = [(FPItem *)self itemID];
  v4 = [v3 isDiskIdentifier];

  if (v4)
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
  v2 = [(FPItem *)self providerID];
  if ([v2 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
    v3 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  }

  else if ([v2 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"])
  {
    v3 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (NSProgress)progress
{
  v2 = self;
  objc_sync_enter(v2);
  progress = v2->_progress;
  if (progress)
  {
    v4 = progress;
    objc_sync_exit(v2);
    v5 = v2;
  }

  else
  {
    objc_sync_exit(v2);

    v5 = +[FPProgressManager defaultManager];
    if (v2->_offline)
    {
      v6 = 0;
    }

    else
    {
      if (v2->_downloading || [(FPItem *)v2 isExternalDownloadPlaceholder])
      {
        v7 = [v5 downloadProgressForItem:v2];
      }

      else if (v2->_uploading)
      {
        v7 = [v5 uploadProgressForItem:v2];
      }

      else
      {
        v7 = [v5 copyProgressForItem:v2];
      }

      v6 = v7;
    }

    v8 = v2;
    objc_sync_enter(v8);
    v9 = v2->_progress;
    if (!v9)
    {
      objc_storeStrong(&v2->_progress, v6);
      v9 = v2->_progress;
    }

    v4 = v9;
    objc_sync_exit(v8);
  }

  return v4;
}

- (BOOL)isExternalDownloadPlaceholder
{
  v2 = [(FPItem *)self typeIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.safari.download"];

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
  v2 = [(FPItem *)self progress];
  if ([(NSProgress *)v2 fp_isAccountedAsCopyProgress])
  {
    v3 = v2;
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
    v3 = [(FPItem *)self progress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSProgress)uploadingProgress
{
  if (self->_uploading)
  {
    v4 = [(FPItem *)self progress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = [(FPItem *)self filename];
    v5 = [(FPItem *)self parentItemIdentifier];
    v6 = [(FPItem *)self providerID];
    v7 = [(FPItem *)self detachedRootLogicalURL];
    v8 = v7;
    if (!v7)
    {
      v8 = [(FPItem *)self fileURL];
    }

    v9 = [(FPItem *)self isContainer];
    v10 = [(FPItem *)self cloudContainerIdentifier];
    self->_folderType = CalculateFolderType(v4, v5, v6, v8, v9, v10);

    if (!v7)
    {
    }

    return self->_folderType;
  }

  return result;
}

- (BOOL)isPinnedSubitem
{
  v3 = [(FPItem *)self isInPinnedFolder];
  if (v3)
  {
    LOBYTE(v3) = ![(FPItem *)self isPinned];
  }

  return v3;
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
  v5 = [(FPItem *)self isReadable];
  v6 = [(FPItem *)self isWritable];
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
  if (!v6)
  {
    v18 = 45;
  }

  if (v5)
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

- (FPItem)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5 parentItemIdentifier:(id)a6 filename:(id)a7 contentType:(id)a8
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = FPItem;
  v18 = [(FPItem *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_providerID, a3);
    objc_storeStrong(&v19->_domainIdentifier, a4);
    objc_storeStrong(&v19->_itemIdentifier, a5);
    objc_storeStrong(&v19->_parentItemIdentifier, a6);
    if (@"NSFileProviderTrashContainerItemIdentifier" == v15)
    {
      v19->_trashed = 1;
    }

    objc_storeStrong(&v19->_filename, a7);
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

    [(FPItem *)v19 setContentType:v17, a2, v26, v27, v28];
    if (!v19->_domainIdentifier)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:v25 object:v19 file:@"FPItem.m" lineNumber:496 description:@"domain identifier must not be nil"];
    }

    [(FPItem *)v19 setAllowsContextualMenuDownloadEntry:1];
  }

  return v19;
}

- (FPItem)initWithProviderID:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5 parentItemIdentifier:(id)a6 filename:(id)a7 isDirectory:(BOOL)a8
{
  v8 = MEMORY[0x1E6982DC8];
  if (!a8)
  {
    v8 = MEMORY[0x1E6982E48];
  }

  return [(FPItem *)self initWithProviderID:a3 domainIdentifier:a4 itemIdentifier:a5 parentItemIdentifier:a6 filename:a7 contentType:*v8];
}

- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 contentType:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 fp_toProviderID];
  v18 = [v16 fp_toDomainIdentifier];

  v19 = [(FPItem *)self initWithProviderID:v17 domainIdentifier:v18 itemIdentifier:v15 parentItemIdentifier:v14 filename:v13 contentType:v12];
  return v19;
}

- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 typeIdentifier:(id)a7
{
  v12 = MEMORY[0x1E6982C40];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 fp_cachedTypeWithIdentifier:a7];
  v18 = [(FPItem *)self initWithProviderDomainID:v16 itemIdentifier:v15 parentItemIdentifier:v14 filename:v13 contentType:v17];

  return v18;
}

- (FPItem)initWithProviderDomainID:(id)a3 itemIdentifier:(id)a4 parentItemIdentifier:(id)a5 filename:(id)a6 isDirectory:(BOOL)a7
{
  v7 = MEMORY[0x1E6982DC8];
  if (!a7)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [(FPItem *)self initWithProviderDomainID:a3 itemIdentifier:a4 parentItemIdentifier:a5 filename:a6 contentType:*v7];
}

- (FPItem)initWithVendorItem:(id)a3 provider:(id)a4 domain:(id)a5 spotlightDomainIdentifier:(id)a6 extensionCapabilities:(unint64_t)a7 useFPFS:(BOOL)a8
{
  v228 = a8;
  v8 = a7;
  v235 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v17 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = [v14 conformsToProtocol:&unk_1F1FCDF20];
  if (v19)
  {
    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v20 = [v14 providerIdentifier];

      if (isKindOfClass)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = v15;
    }

    if (objc_opt_respondsToSelector())
    {
LABEL_9:
      v21 = [v14 fp_domainIdentifier];
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v15;
  }

  v21 = v16;
LABEL_11:
  v22 = v21;

  if (v20)
  {
    v223 = v19;
    v227 = v22;
    v23 = [v14 parentItemIdentifier];
    v24 = [v14 itemIdentifier];
    v25 = v24;
    if (v228)
    {
      v26 = @"NSFileProviderRootContainerItemIdentifier";
      if (([v24 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) != 0 || (v26 = @"NSFileProviderTrashContainerItemIdentifier", objc_msgSend(v25, "isEqualToString:", @"NSFileProviderTrashContainerItemIdentifier")))
      {
        v27 = v26;

        v23 = v27;
      }
    }

    v225 = v17;
    v226 = v23;
    v222 = a2;
    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v28 = [v14 itemVersion];
      p_itemVersion = &self->_itemVersion;
      itemVersion = self->_itemVersion;
      self->_itemVersion = v28;

      if (self->_itemVersion)
      {
        goto LABEL_25;
      }

      if (isKindOfClass)
      {
LABEL_24:
        v33 = [v14 versionIdentifier];
        v34 = [NSFileProviderItemVersion alloc];
        v35 = [MEMORY[0x1E695DEF0] data];
        v36 = [(NSFileProviderItemVersion *)v34 initWithContentVersion:v33 metadataVersion:v35];
        v37 = *p_itemVersion;
        *p_itemVersion = v36;

LABEL_25:
        v38 = [v14 filename];
        if (isKindOfClass)
        {
LABEL_29:
          v39 = [v14 contentType];
          objc_opt_class();
          v40 = objc_opt_isKindOfClass();

          if (v40)
          {
            v41 = [v14 contentType];
            goto LABEL_36;
          }

          if (isKindOfClass)
          {
LABEL_33:
            v41 = [v14 typeIdentifier];

            if (v41)
            {
              v42 = MEMORY[0x1E6982C40];
              v43 = [v14 typeIdentifier];
              v41 = [v42 fp_cachedTypeWithIdentifier:v43];
            }

LABEL_36:
            if (!-[__CFString length](v38, "length") && (dyld_program_sdk_at_least() & 1) == 0 && [v25 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
            {
              v44 = fp_current_or_default_log();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AAAE1000, v44, OS_LOG_TYPE_DEFAULT, "[WARNING] Working around missing file name for root item of legacy provider", buf, 2u);
              }

              v38 = @"Root";
            }

            if (!v41)
            {
              if (dyld_program_sdk_at_least())
              {
                v41 = 0;
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

                v41 = *MEMORY[0x1E6982E48];
              }
            }

            if ([v20 length] && objc_msgSend(v25, "length") && -[__CFString length](v38, "length") && v41)
            {
              if (!v228 || *p_itemVersion)
              {
                v46 = [(FPItem *)self initWithProviderID:v20 domainIdentifier:v227 itemIdentifier:v25 parentItemIdentifier:v226 filename:v38 contentType:v41];

                if (!v46)
                {
LABEL_371:
                  self = v46;
                  v31 = self;
                  v17 = v225;
LABEL_63:

                  v22 = v227;
                  goto LABEL_64;
                }

                v221 = v8;
                if (isKindOfClass)
                {
                  v46->_capabilities = [v14 capabilities];
                  v47 = v223;
                  v48 = v228;
                }

                else
                {
                  if (v228)
                  {
                    v61 = 67;
                  }

                  else
                  {
                    v61 = 3;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v61 = [v14 capabilities];
                  }

                  v46->_capabilities = v61;
                  v47 = v223;
                  v48 = v228;
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    documentSize = v46->_documentSize;
                    v46->_documentSize = 0;

                    goto LABEL_75;
                  }
                }

                v62 = [v14 documentSize];
                v63 = v46->_documentSize;
                v46->_documentSize = v62;

                if (isKindOfClass)
                {
                  v64 = [v14 childItemCount];
                  childItemCount = v46->_childItemCount;
                  v46->_childItemCount = v64;

                  goto LABEL_79;
                }

LABEL_75:
                if (objc_opt_respondsToSelector())
                {
                  v67 = [v14 childItemCount];
                }

                else
                {
                  v67 = 0;
                }

                v68 = v46->_childItemCount;
                v46->_childItemCount = v67;

                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  v71 = [MEMORY[0x1E695DF00] date];
                  creationDate = v46->_creationDate;
                  v46->_creationDate = v71;

                  v46->_unsupportedFields |= 0x40uLL;
LABEL_82:
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    v77 = [MEMORY[0x1E695DF00] date];
                    contentModificationDate = v46->_contentModificationDate;
                    v46->_contentModificationDate = v77;

                    v46->_unsupportedFields |= 0x80uLL;
                    if (v47)
                    {
LABEL_87:
                      if (objc_opt_respondsToSelector())
                      {
                        v79 = [v14 formerIdentifier];
                      }

                      else
                      {
                        v79 = 0;
                      }

                      formerIdentifier = v46->_formerIdentifier;
                      v46->_formerIdentifier = v79;

                      if (objc_opt_respondsToSelector())
                      {
                        goto LABEL_92;
                      }

LABEL_93:
                      v82 = 0;
                      goto LABEL_94;
                    }

LABEL_89:
                    v80 = v46->_formerIdentifier;
                    v46->_formerIdentifier = 0;

                    goto LABEL_93;
                  }

LABEL_83:
                  v73 = [v14 contentModificationDate];
                  v74 = v46->_contentModificationDate;
                  v46->_contentModificationDate = v73;

                  if (v47)
                  {
                    if (isKindOfClass)
                    {
                      v75 = [v14 formerIdentifier];
                      v76 = v46->_formerIdentifier;
                      v46->_formerIdentifier = v75;

LABEL_92:
                      v82 = [v14 parentFormerIdentifier];
LABEL_94:
                      parentFormerIdentifier = v46->_parentFormerIdentifier;
                      v46->_parentFormerIdentifier = v82;

                      if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                      {
                        v84 = [v14 lastUsedDate];
                        lastUsedDate = v46->_lastUsedDate;
                        v46->_lastUsedDate = v84;

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
                        v87 = [v14 tags];
                        goto LABEL_103;
                      }

LABEL_102:
                      v87 = 0;
LABEL_103:
                      tags = v46->_tags;
                      v46->_tags = v87;

                      if (!v46->_tags)
                      {
                        if ((isKindOfClass & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
                        {
                          v46->_unsupportedFields |= 0x10uLL;
                          goto LABEL_112;
                        }

                        v89 = [v14 tagData];
                        v90 = v89;
                        if (v89)
                        {
                          v91 = FPGetTagsFromTagsData(v89);
                          v92 = v46->_tags;
                          v46->_tags = v91;
                        }

                        v47 = v223;
                      }

                      if (isKindOfClass)
                      {
                        v93 = [v14 favoriteRank];
                        favoriteRank = v46->_favoriteRank;
                        v46->_favoriteRank = v93;

                        v46->_trashed = [v14 isTrashed];
                        v46->_uploaded = [v14 isUploaded];
                        v46->_uploading = [v14 isUploading];
                        goto LABEL_124;
                      }

LABEL_112:
                      if (objc_opt_respondsToSelector())
                      {
                        v95 = [v14 favoriteRank];
                        v96 = v46->_favoriteRank;
                        v46->_favoriteRank = v95;
                      }

                      else
                      {
                        v97 = v46->_favoriteRank;
                        v46->_favoriteRank = 0;

                        v46->_unsupportedFields |= 0x20uLL;
                      }

                      if (objc_opt_respondsToSelector())
                      {
                        v98 = [v14 isTrashed];
                      }

                      else
                      {
                        v98 = 0;
                      }

                      v46->_trashed = v98;
                      v99 = objc_opt_respondsToSelector();
                      v100 = v48;
                      if (v99)
                      {
                        v100 = [v14 isUploaded];
                      }

                      v46->_uploaded = v100;
                      if (objc_opt_respondsToSelector())
                      {
                        v101 = [v14 isUploading];
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v46->_uploading = v101;
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        v102 = 0;
LABEL_126:
                        v220 = v102;
                        v103 = [v102 fp_internalErrorForVendorErrorWithCallerDescription:@"item.uploadingError" itemCreationBlock:0];
                        uploadingError = v46->_uploadingError;
                        v46->_uploadingError = v103;

                        if (isKindOfClass)
                        {
                          v46->_downloading = [v14 isDownloading];
                          v46->_downloaded = [v14 isDownloaded];
                          v46->_mostRecentVersionDownloaded = [v14 isMostRecentVersionDownloaded];
                          v46->_supportsMostRecentVersionDownloaded = 1;
                        }

                        else
                        {
                          if (objc_opt_respondsToSelector())
                          {
                            v105 = [v14 isDownloading];
                          }

                          else
                          {
                            v105 = 0;
                          }

                          v46->_downloading = v105;
                          if (objc_opt_respondsToSelector())
                          {
                            v106 = [v14 isDownloaded];
                          }

                          else
                          {
                            v106 = 0;
                          }

                          v46->_downloaded = v106;
                          if (objc_opt_respondsToSelector())
                          {
                            downloaded = [v14 isMostRecentVersionDownloaded];
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
                            v108 = 0;
LABEL_142:
                            v219 = v108;
                            v109 = [v108 fp_internalErrorForVendorErrorWithCallerDescription:@"item.downloadingError" itemCreationBlock:0];
                            downloadingError = v46->_downloadingError;
                            v46->_downloadingError = v109;

                            if (isKindOfClass)
                            {
                              v46->_shared = [v14 isShared];
                              v46->_sharedByCurrentUser = [v14 isSharedByCurrentUser];
                              if ((v47 & 1) == 0)
                              {
                                goto LABEL_155;
                              }
                            }

                            else
                            {
                              if (objc_opt_respondsToSelector())
                              {
                                v111 = [v14 isShared];
                              }

                              else
                              {
                                v111 = 0;
                              }

                              v46->_shared = v111;
                              if (objc_opt_respondsToSelector())
                              {
                                v46->_sharedByCurrentUser = [v14 isSharedByCurrentUser];
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

                            v46->_fp_lastModifiedByCurrentUser = [v14 fp_isLastModifiedByCurrentUser];
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
                            v112 = [v14 collaborationIdentifier];
                            collaborationIdentifier = v46->_collaborationIdentifier;
                            v46->_collaborationIdentifier = v112;

                            if ((v47 & 1) == 0)
                            {
                              goto LABEL_165;
                            }

                            if (isKindOfClass)
                            {
LABEL_162:
                              v46->_isCollaborationInvitation = [v14 isCollaborationInvitation];
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
                                v114 = [v14 ownerNameComponents];
                              }

                              else
                              {
                                v114 = 0;
                              }

                              ownerNameComponents = v46->_ownerNameComponents;
                              v46->_ownerNameComponents = v114;

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
                              v118 = [v14 mostRecentEditorNameComponents];
                              v119 = v46->_mostRecentEditorNameComponents;
                              v46->_mostRecentEditorNameComponents = v118;

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
                                v121 = [v14 originatorInfo];
LABEL_176:
                                originatorInfo = v46->_originatorInfo;
                                v46->_originatorInfo = v121;

                                if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                {
                                  v123 = [v14 userInfo];
                                  userInfo = v46->_userInfo;
                                  v46->_userInfo = v123;

                                  if (v47)
                                  {
                                    if (isKindOfClass)
                                    {
                                      v46->_excludedFromSync = [v14 isExcludedFromSync];
                                      v46->_ignoreRoot = [v14 isIgnoreRoot];
LABEL_190:
                                      v127 = [v14 exclusionType];
                                      goto LABEL_192;
                                    }

LABEL_182:
                                    if (objc_opt_respondsToSelector())
                                    {
                                      v126 = [v14 isExcludedFromSync];
                                    }

                                    else
                                    {
                                      v126 = 0;
                                    }

                                    v46->_excludedFromSync = v126;
                                    if (objc_opt_respondsToSelector())
                                    {
                                      v128 = [v14 isIgnoreRoot];
                                    }

                                    else
                                    {
                                      v128 = 0;
                                    }

                                    v46->_ignoreRoot = v128;
                                    if ((objc_opt_respondsToSelector() & 1) == 0)
                                    {
                                      v127 = 0;
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

                                v127 = 0;
                                *&v46->_excludedFromSync = 0;
LABEL_192:
                                v46->_exclusionType = v127;
                                if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                {
                                  v129 = [v14 symlinkTargetPath];
                                }

                                else
                                {
                                  v129 = 0;
                                }

                                symlinkTargetPath = v46->_symlinkTargetPath;
                                v46->_symlinkTargetPath = v129;

                                if (!v48)
                                {
                                  if (v47 && ((isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
                                  {
                                    v131 = [v14 fileURL];
                                  }

                                  else
                                  {
                                    v131 = 0;
                                  }

                                  fileURL = v46->_fileURL;
                                  v46->_fileURL = v131;
                                }

                                if (v225)
                                {
                                  objc_storeStrong(&v46->_spotlightDomainIdentifier, obj);
                                  if (v47)
                                  {
                                    if (isKindOfClass)
                                    {
                                      v133 = [v14 fp_spotlightSubDomainIdentifier];
                                      fp_spotlightSubDomainIdentifier = v46->_fp_spotlightSubDomainIdentifier;
                                      v46->_fp_spotlightSubDomainIdentifier = v133;

                                      goto LABEL_221;
                                    }

LABEL_211:
                                    if (objc_opt_respondsToSelector())
                                    {
                                      if (objc_opt_respondsToSelector())
                                      {
LABEL_213:
                                        v137 = [v14 fp_spotlightSubDomainIdentifier];
                                        v138 = v46->_fp_spotlightSubDomainIdentifier;
                                        v46->_fp_spotlightSubDomainIdentifier = v137;

                                        if (isKindOfClass)
                                        {
                                          v139 = [v14 displayName];
                                          displayName = v46->_displayName;
                                          v46->_displayName = v139;

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
                                        v150 = [v14 displayName];
                                        v151 = v46->_displayName;
                                        v46->_displayName = v150;

                                        if (isKindOfClass)
                                        {
                                          v152 = [v14 hasUnresolvedConflicts];
                                          hasUnresolvedConflicts = v46->_hasUnresolvedConflicts;
                                          v46->_hasUnresolvedConflicts = v152;

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
                                        v155 = [v14 hasUnresolvedConflicts];
                                        v156 = v46->_hasUnresolvedConflicts;
                                        v46->_hasUnresolvedConflicts = v155;

                                        if (isKindOfClass)
                                        {
                                          v157 = [v14 isDownloadRequested];
                                          isDownloadRequested = v46->_isDownloadRequested;
                                          v46->_isDownloadRequested = v157;

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
                                        v160 = [v14 isDownloadRequested];
                                        v161 = v46->_isDownloadRequested;
                                        v46->_isDownloadRequested = v160;

                                        if (isKindOfClass)
                                        {
                                          v162 = [v14 sharingPermissions];
                                          sharingPermissions = v46->_sharingPermissions;
                                          v46->_sharingPermissions = v162;

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
                                        v165 = [v14 sharingPermissions];
                                        v166 = v46->_sharingPermissions;
                                        v46->_sharingPermissions = v165;

                                        if (isKindOfClass)
                                        {
LABEL_234:
                                          v167 = [v14 fp_isContainer];
                                          v46->_isContainer = v167;
                                          p_isContainer = &v46->_isContainer;
                                          if ((v167 & 1) == 0)
                                          {
                                            goto LABEL_246;
                                          }

                                          if (isKindOfClass)
                                          {
                                            v46->_isContainerPristine = [v14 fp_isContainerPristine];
LABEL_245:
                                            v171 = [v14 fp_appContainerBundleIdentifier];
                                            fp_appContainerBundleIdentifier = v46->_fp_appContainerBundleIdentifier;
                                            v46->_fp_appContainerBundleIdentifier = v171;

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

                                        v169 = [v14 fp_isContainer];
                                        v46->_isContainer = v169;
                                        p_isContainer = &v46->_isContainer;
                                        if ((v169 & 1) == 0)
                                        {
                                          goto LABEL_249;
                                        }

LABEL_240:
                                        if (objc_opt_respondsToSelector())
                                        {
                                          v170 = [v14 fp_isContainerPristine];
                                        }

                                        else
                                        {
                                          v170 = 0;
                                        }

                                        v46->_isContainerPristine = v170;
                                        if (objc_opt_respondsToSelector())
                                        {
                                          goto LABEL_245;
                                        }

                                        v173 = v46->_fp_appContainerBundleIdentifier;
                                        v46->_fp_appContainerBundleIdentifier = 0;

LABEL_249:
                                        if ((objc_opt_respondsToSelector() & 1) == 0)
                                        {
                                          v146 = 0;
LABEL_252:
                                          containerDisplayName = v46->_containerDisplayName;
                                          v46->_containerDisplayName = v146;

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

                                            v175 = [v14 performSelector:sel_fp_cloudContainerClientBundleIdentifiers];
                                            v176 = [FPAppMetadata findBundleIDForCurrentPlatformInSet:v175];
                                            v177 = v46->_fp_appContainerBundleIdentifier;
                                            v46->_fp_appContainerBundleIdentifier = v176;
                                          }

                                          if (v47)
                                          {
                                            if (isKindOfClass)
                                            {
                                              v178 = [v14 fp_parentDomainIdentifier];
                                              fp_parentDomainIdentifier = v46->_fp_parentDomainIdentifier;
                                              v46->_fp_parentDomainIdentifier = v178;

                                              goto LABEL_267;
                                            }

LABEL_260:
                                            if (objc_opt_respondsToSelector())
                                            {
                                              v180 = [v14 fp_parentDomainIdentifier];
                                            }

                                            else
                                            {
                                              v180 = 0;
                                            }

                                            v184 = v46->_fp_parentDomainIdentifier;
                                            v46->_fp_parentDomainIdentifier = v180;

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
                                            v185 = [v14 fp_cloudContainerIdentifier];
                                            v186 = v46->_cloudContainerIdentifier;
                                            v46->_cloudContainerIdentifier = v185;

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
                                                v46->_isUbiquitous = [v14 fp_isUbiquitous];
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
                                                v46->_topLevelSharedItem = [v14 isTopLevelSharedItem];
                                                v46->_contentZoneRoot = [v14 isContentZoneRoot];
                                                v46->_inPinnedFolder = [v14 isInPinnedFolder];
                                                v46->_pinned = [v14 isPinned];
                                                v46->_recursivelyDownloaded = [v14 isRecursivelyDownloaded];
                                              }

                                              else
                                              {
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  shared = [v14 isTopLevelSharedItem];
                                                }

                                                else
                                                {
                                                  shared = v46->_shared;
                                                }

                                                v46->_topLevelSharedItem = shared;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  v190 = [v14 isContentZoneRoot];
                                                }

                                                else
                                                {
                                                  v190 = 0;
                                                }

                                                v46->_contentZoneRoot = v190;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  v191 = [v14 isInPinnedFolder];
                                                }

                                                else
                                                {
                                                  v191 = 0;
                                                }

                                                v46->_inPinnedFolder = v191;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  v192 = [v14 isPinned];
                                                }

                                                else
                                                {
                                                  v192 = 0;
                                                }

                                                v46->_pinned = v192;
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  v193 = [v14 isRecursivelyDownloaded];
                                                }

                                                else
                                                {
                                                  v193 = 0;
                                                }

                                                v46->_recursivelyDownloaded = v193;
                                                if ((objc_opt_respondsToSelector() & 1) == 0)
                                                {
                                                  v188 = 0;
                                                  goto LABEL_298;
                                                }
                                              }

                                              v188 = [v14 conflictingVersions];
LABEL_298:
                                              conflictingVersions = v46->_conflictingVersions;
                                              v46->_conflictingVersions = v188;

                                              if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                              {
                                                v195 = [v14 extendedAttributes];
                                                if (v195)
                                                {
                                                  objc_opt_class();
                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      [FPItem initWithVendorItem:v195 provider:v222 domain:v46 spotlightDomainIdentifier:v14 extensionCapabilities:? useFPFS:?];
                                                    }
                                                  }

                                                  v229[0] = MEMORY[0x1E69E9820];
                                                  v229[1] = 3221225472;
                                                  v229[2] = __101__FPItem_initWithVendorItem_provider_domain_spotlightDomainIdentifier_extensionCapabilities_useFPFS___block_invoke;
                                                  v229[3] = &unk_1E793A0B8;
                                                  v230 = v14;
                                                  v232 = v222;
                                                  v196 = v46;
                                                  v231 = v196;
                                                  v197 = [v195 fp_filter:v229];
                                                  extendedAttributes = v196->_extendedAttributes;
                                                  v196->_extendedAttributes = v197;

                                                  v47 = v223;
                                                }

                                                if (isKindOfClass)
                                                {
                                                  v46->_fileSystemFlags = [v14 fileSystemFlags];
                                                  v46->_enumerationOrigin = 0;
                                                  v199 = v228;
                                                  goto LABEL_321;
                                                }
                                              }

                                              else
                                              {
                                                v46->_unsupportedFields |= 0x200uLL;
                                              }

                                              if (objc_opt_respondsToSelector())
                                              {
                                                v46->_fileSystemFlags = [v14 fileSystemFlags];
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
                                                if (v47 && (objc_opt_respondsToSelector() & 1) != 0 && [v14 isHidden])
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

                                              v199 = v228;
                                              v46->_enumerationOrigin = 0;
                                              if ((objc_opt_respondsToSelector() & 1) == 0)
                                              {
                                                v46->_contentPolicy = 0;
                                                if (v228)
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
                                                    v204 = [v14 preformattedOwnerName];
                                                    preformattedOwnerName = v46->_preformattedOwnerName;
                                                    v46->_preformattedOwnerName = v204;

LABEL_341:
                                                    v207 = [v14 preformattedMostRecentEditorName];
LABEL_342:
                                                    preformattedMostRecentEditorName = v46->_preformattedMostRecentEditorName;
                                                    v46->_preformattedMostRecentEditorName = v207;

                                                    if ([(NSData *)v46->_versionIdentifier length]>= 0x3E9)
                                                    {
                                                      [FPItem initWithVendorItem:v222 provider:v46 domain:? spotlightDomainIdentifier:? extensionCapabilities:? useFPFS:?];
                                                    }

                                                    if ([v14 conformsToProtocol:&unk_1F1FCDAF8])
                                                    {
                                                      if ((isKindOfClass & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
                                                      {
                                                        if (v47)
                                                        {
                                                          goto LABEL_352;
                                                        }

                                                        goto LABEL_354;
                                                      }

                                                      v211 = [v14 decorations];
                                                      decorations = v46->_decorations;
                                                      v46->_decorations = v211;
                                                    }

                                                    if (v47)
                                                    {
                                                      if (isKindOfClass)
                                                      {
                                                        v46->_fileID = [v14 fileID];
                                                        v46->_documentID = [v14 documentID];
LABEL_360:
                                                        v214 = [v14 inheritedUserInfo];
                                                        goto LABEL_362;
                                                      }

LABEL_352:
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        v213 = [v14 fileID];
                                                      }

                                                      else
                                                      {
                                                        v213 = 0;
                                                      }

                                                      v46->_fileID = v213;
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        v215 = [v14 documentID];
                                                      }

                                                      else
                                                      {
                                                        v215 = 0;
                                                      }

                                                      v46->_documentID = v215;
                                                      if ((objc_opt_respondsToSelector() & 1) == 0)
                                                      {
                                                        v214 = 0;
                                                        goto LABEL_362;
                                                      }

                                                      goto LABEL_360;
                                                    }

LABEL_354:
                                                    v214 = 0;
                                                    v46->_fileID = 0;
                                                    v46->_documentID = 0;
LABEL_362:
                                                    inheritedUserInfo = v46->_inheritedUserInfo;
                                                    v46->_inheritedUserInfo = v214;

                                                    if (isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector())
                                                    {
                                                      v46->_typeAndCreator.type = [v14 typeAndCreator];
                                                      v46->_typeAndCreator.creator = [v14 typeAndCreator] >> 32;
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
                                                      v46->_unsupportedFields = [v14 unsupportedFields];
                                                    }

LABEL_370:

                                                    goto LABEL_371;
                                                  }

                                                  if (objc_opt_respondsToSelector())
                                                  {
                                                    v208 = [v14 preformattedOwnerName];
                                                  }

                                                  else
                                                  {
                                                    v208 = 0;
                                                  }

                                                  v209 = v46->_preformattedOwnerName;
                                                  v46->_preformattedOwnerName = v208;

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

                                                v207 = 0;
                                                goto LABEL_342;
                                              }

LABEL_321:
                                              __FILEPROVIDER_BAD_CONTENT_POLICY__([v14 contentPolicy], v199);
                                              v46->_contentPolicy = [v14 contentPolicy];
                                              v46->_capabilities |= 0x40uLL;
                                              if (v199)
                                              {
                                                goto LABEL_330;
                                              }

                                              goto LABEL_324;
                                            }

LABEL_279:
                                            v188 = 0;
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
                                        v146 = [v14 containerDisplayName];
                                        goto LABEL_252;
                                      }
                                    }

                                    else if (objc_opt_respondsToSelector())
                                    {
                                      v148 = [v14 fp_spotlightDomainIdentifier];
LABEL_219:
                                      v149 = v46->_fp_spotlightSubDomainIdentifier;
                                      v46->_fp_spotlightSubDomainIdentifier = v148;

                                      goto LABEL_220;
                                    }

                                    v148 = 0;
                                    goto LABEL_219;
                                  }
                                }

                                else if (isKindOfClass)
                                {
                                  v135 = [v14 spotlightDomainIdentifier];
                                  spotlightDomainIdentifier = v46->_spotlightDomainIdentifier;
                                  v46->_spotlightDomainIdentifier = v135;

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

                                v146 = 0;
                                v46->_isContainer = 0;
                                p_isContainer = &v46->_isContainer;
                                goto LABEL_252;
                              }

LABEL_175:
                              v121 = 0;
                              goto LABEL_176;
                            }

LABEL_166:
                            v115 = [v14 ownerNameComponents];
                            v116 = v46->_ownerNameComponents;
                            v46->_ownerNameComponents = v115;

                            goto LABEL_169;
                          }
                        }

                        v108 = [v14 downloadingError];
                        goto LABEL_142;
                      }

LABEL_124:
                      v102 = [v14 uploadingError];
                      goto LABEL_126;
                    }

                    goto LABEL_87;
                  }

                  goto LABEL_89;
                }

LABEL_79:
                v69 = [v14 creationDate];
                v70 = v46->_creationDate;
                v46->_creationDate = v69;

                if (isKindOfClass)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }

              v50 = 1;
              v49 = v228;
            }

            else
            {
              v49 = v228;
              v50 = v228 && *p_itemVersion == 0;
            }

            __FILEPROVIDER_BAD_ITEM__(v14, v20, v25, v38, v41, v50, v49);
            fp_simulate_crash(@"can't create item because at least one of the required properties is missing. See the log for more details.", v51, v52, v53, v54, v55, v56, v57, v218);
            v58 = fp_current_or_default_log();
            v17 = v225;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              [FPItem initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:];
            }

            v31 = 0;
            goto LABEL_63;
          }

LABEL_32:
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v41 = 0;
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
    v38 = [v14 filename];
    goto LABEL_28;
  }

  v31 = 0;
LABEL_64:

  v59 = *MEMORY[0x1E69E9840];
  return v31;
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

- (FPItem)initWithCoder:(id)a3
{
  v145[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = 0x1E696A000uLL;
  v142 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_providerIdentifier"];
  v143 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
  if (!v143)
  {
    v143 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v7 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:v142 domainIdentifier:v143];
  v8 = [v5 fp_checkProviderIdentifier:v7];

  if ((v8 & 1) == 0)
  {

    objc_autoreleasePoolPop(context);
LABEL_23:
    v133 = 0;
    goto LABEL_24;
  }

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_parentItemIdentifier"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_filename"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_contentType"];
  if (v12)
  {
    v13 = v12;
    v14 = v11;
    v15 = v10;
    v16 = v9;
    v17 = MEMORY[0x1E6982C40];
    v18 = [v12 identifier];
    v19 = [v17 fp_cachedTypeWithIdentifier:v18 alreadyAvailableType:v13];

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

      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"FPItem.m" lineNumber:962 description:@"received contentType with an invalid type"];
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

  v22 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_typeIdentifier"];
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
    v27 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_formerIdentifier"];
    formerIdentifier = self->_formerIdentifier;
    self->_formerIdentifier = v27;

    v29 = *(v6 + 3776);
    v30 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_parentFormerIdentifier"];
    parentFormerIdentifier = self->_parentFormerIdentifier;
    self->_parentFormerIdentifier = v30;

    v32 = *(v6 + 3776);
    v33 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = self->_displayName;
    self->_displayName = v33;

    v35 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_documentSize"];
    documentSize = self->_documentSize;
    self->_documentSize = v35;

    v37 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_urlWrapper"];
    urlWrapper = self->_urlWrapper;
    self->_urlWrapper = v37;

    v39 = [(FPSandboxingURLWrapper *)self->_urlWrapper url];
    fileURL = self->_fileURL;
    self->_fileURL = v39;

    v41 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_detachedRootLogicalURL"];
    detachedRootLogicalURL = self->_detachedRootLogicalURL;
    self->_detachedRootLogicalURL = v41;

    self->_capabilities = [v5 decodeIntegerForKey:@"_capabilities"];
    self->_enumerationOrigin = [v5 decodeIntegerForKey:@"_enumerationOrigin"];
    v43 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = self->_creationDate;
    self->_creationDate = v43;

    v45 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_contentModificationDate"];
    contentModificationDate = self->_contentModificationDate;
    self->_contentModificationDate = v45;

    self->_trashed = [v5 decodeBoolForKey:@"_trashed"];
    v47 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_lastUsedDate"];
    lastUsedDate = self->_lastUsedDate;
    self->_lastUsedDate = v47;

    v49 = MEMORY[0x1E695DFD8];
    v140 = v20;
    v50 = objc_opt_class();
    v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
    v52 = [v5 decodeObjectOfClasses:v51 forKey:@"_tags"];
    tags = self->_tags;
    self->_tags = v52;

    v54 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_favoriteRank"];
    favoriteRank = self->_favoriteRank;
    self->_favoriteRank = v54;

    self->_uploaded = [v5 decodeBoolForKey:@"_uploaded"];
    self->_uploading = [v5 decodeBoolForKey:@"_uploading"];
    v56 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_uploadingError"];
    uploadingError = self->_uploadingError;
    self->_uploadingError = v56;

    self->_excludedFromSync = [v5 decodeBoolForKey:@"_excludedFromSync"];
    self->_ignoreRoot = [v5 decodeBoolForKey:@"_ignoreRoot"];
    self->_exclusionType = [v5 decodeIntegerForKey:@"_exclusionType"];
    self->_downloaded = [v5 decodeBoolForKey:@"_downloaded"];
    self->_downloading = [v5 decodeBoolForKey:@"_downloading"];
    v58 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_downloadingError"];
    downloadingError = self->_downloadingError;
    self->_downloadingError = v58;

    self->_mostRecentVersionDownloaded = [v5 decodeBoolForKey:@"_mostRecentVersionDownloaded"];
    self->_shared = [v5 decodeBoolForKey:@"_shared"];
    self->_sharedByCurrentUser = [v5 decodeBoolForKey:@"_sharedByCurrentUser"];
    self->_fp_lastModifiedByCurrentUser = [v5 decodeBoolForKey:@"_fp_lastModifiedByCurrentUser"];
    v60 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerNameComponents"];
    ownerNameComponents = self->_ownerNameComponents;
    self->_ownerNameComponents = v60;

    v62 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_mostRecentEditorNameComponents"];
    mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
    self->_mostRecentEditorNameComponents = v62;

    v64 = v6;
    v65 = *(v6 + 3776);
    v66 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_collaborationIdentifier"];
    collaborationIdentifier = self->_collaborationIdentifier;
    self->_collaborationIdentifier = v66;

    v68 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_originatorInfo"];
    originatorInfo = self->_originatorInfo;
    self->_originatorInfo = v68;

    v70 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_childItemCount"];
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
    v79 = [v5 decodeObjectOfClasses:v78 forKey:@"_userInfo"];
    userInfo = self->_userInfo;
    self->_userInfo = v79;

    self->_state = [v5 decodeIntegerForKey:@"_state"];
    v81 = *(v64 + 3776);
    v82 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_placeholdIdentifier"];
    placeholderIdentifier = self->_placeholderIdentifier;
    self->_placeholderIdentifier = v82;

    v84 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_versionIdentifier"];
    versionIdentifier = self->_versionIdentifier;
    self->_versionIdentifier = v84;

    v86 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_itemVersion"];
    itemVersion = self->_itemVersion;
    self->_itemVersion = v86;

    v88 = *(v64 + 3776);
    v89 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"rsdi"];
    spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
    self->_spotlightDomainIdentifier = v89;

    v91 = *(v64 + 3776);
    v92 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_spotlightDomainIdentifier"];
    fp_spotlightSubDomainIdentifier = self->_fp_spotlightSubDomainIdentifier;
    self->_fp_spotlightSubDomainIdentifier = v92;

    v94 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_hasUnresolvedConflicts"];
    hasUnresolvedConflicts = self->_hasUnresolvedConflicts;
    self->_hasUnresolvedConflicts = v94;

    v96 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_isDownloadRequested"];
    isDownloadRequested = self->_isDownloadRequested;
    self->_isDownloadRequested = v96;

    v98 = *(v64 + 3776);
    v99 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_sharingPermissions"];
    sharingPermissions = self->_sharingPermissions;
    self->_sharingPermissions = v99;

    v101 = *(v64 + 3776);
    v102 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_containerDisplayName"];
    containerDisplayName = self->_containerDisplayName;
    self->_containerDisplayName = v102;

    self->_supportsMostRecentVersionDownloaded = [v5 decodeBoolForKey:@"_supportsMostRecentVersionDownloaded"];
    v104 = *(v64 + 3776);
    v105 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_fp_appContainerBundleIdentifier"];
    fp_appContainerBundleIdentifier = self->_fp_appContainerBundleIdentifier;
    self->_fp_appContainerBundleIdentifier = v105;

    v107 = *(v64 + 3776);
    v108 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_fp_parentDomainIdentifier"];
    fp_parentDomainIdentifier = self->_fp_parentDomainIdentifier;
    self->_fp_parentDomainIdentifier = v108;

    v110 = *(v64 + 3776);
    v111 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_cloudContainerIdentifier"];
    cloudContainerIdentifier = self->_cloudContainerIdentifier;
    self->_cloudContainerIdentifier = v111;

    self->_isUbiquitous = [v5 decodeBoolForKey:@"_isUbiquitous"];
    self->_isContainer = [v5 decodeBoolForKey:@"_isContainer"];
    self->_isContainerPristine = [v5 decodeBoolForKey:@"_isContainerPristine"];
    self->_topLevelSharedItem = [v5 decodeBoolForKey:@"_topLevelSharedItem"];
    self->_inPinnedFolder = [v5 decodeBoolForKey:@"_inPinnedFolder"];
    self->_pinned = [v5 decodeBoolForKey:@"_pinned"];
    self->_contentZoneRoot = [v5 decodeBoolForKey:@"_contentZoneRoot"];
    self->_isCollaborationInvitation = [v5 decodeBoolForKey:@"_isCollaborationInvitation"];
    self->_recursivelyDownloaded = [v5 decodeBoolForKey:@"_recursivelyDownloaded"];
    v113 = MEMORY[0x1E695DFD8];
    v114 = objc_opt_class();
    v115 = [v113 setWithObjects:{v114, objc_opt_class(), 0}];
    v116 = [v5 decodeObjectOfClasses:v115 forKey:@"_conflictingVersions"];
    conflictingVersions = self->_conflictingVersions;
    self->_conflictingVersions = v116;

    self->_fileSystemFlags = [v5 decodeIntegerForKey:@"_fileSystemFlags"];
    v118 = MEMORY[0x1E695DFD8];
    v145[0] = objc_opt_class();
    v119 = *(v64 + 3776);
    v145[1] = objc_opt_class();
    v145[2] = objc_opt_class();
    v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:3];
    v121 = [v118 setWithArray:v120];
    v122 = [v5 decodeObjectOfClasses:v121 forKey:@"_extendedAttributes"];
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
    v128 = [v5 decodeObjectOfClasses:v127 forKey:@"_decorations"];
    decorations = self->_decorations;
    self->_decorations = v128;

    self->_fileID = [v5 decodeInt64ForKey:@"_fileID"];
    self->_documentID = [v5 decodeInt32ForKey:@"_documentID"];
    v130 = [v5 decodeObjectOfClasses:v78 forKey:@"_inheritedUserInfo"];
    inheritedUserInfo = self->_inheritedUserInfo;
    self->_inheritedUserInfo = v130;

    self->_allowsContextualMenuDownloadEntry = [v5 decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    self->_typeAndCreator.type = [v5 decodeInt32ForKey:@"_typeAndCreator.type"];
    self->_typeAndCreator.creator = [v5 decodeInt32ForKey:@"_typeAndCreator.creator"];
    self->_contentPolicy = [v5 decodeIntegerForKey:@"_contentPolicy"];
    self->_inheritedContentPolicy = [v5 decodeIntegerForKey:@"_inheritedContentPolicy"];
    self->_effectiveContentPolicy = [v5 decodeIntegerForKey:@"_effectiveContentPolicy"];
    self->_unsupportedFields = [v5 decodeIntegerForKey:@"_unsupportedFields"];
    self->_isEvictedWithClone = [v5 decodeBoolForKey:@"_isEvictedWithClone"];
    self->_syncPaused = [v5 decodeBoolForKey:@"_syncPaused"];
    self->_supportsUploadWithFailOnConflict = [v5 decodeBoolForKey:@"_supportsUploadWithFailOnConflict"];
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
  v133 = self;
LABEL_24:

  v134 = *MEMORY[0x1E69E9840];
  return v133;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
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

  [v4 encodeObject:itemIdentifier forKey:@"_itemIdentifier"];
  [v4 encodeObject:self->_formerIdentifier forKey:@"_formerIdentifier"];
  [v4 encodeObject:self->_parentFormerIdentifier forKey:@"_parentFormerIdentifier"];
  [v4 encodeObject:self->_parentItemIdentifier forKey:@"_parentItemIdentifier"];
  [v4 encodeObject:self->_providerID forKey:@"_providerIdentifier"];
  [v4 encodeObject:self->_domainIdentifier forKey:@"_domainIdentifier"];
  [v4 encodeObject:self->_filename forKey:@"_filename"];
  [v4 encodeObject:self->_displayName forKey:@"_displayName"];
  [v4 encodeObject:self->_contentType forKey:@"_contentType"];
  [v4 encodeObject:self->_documentSize forKey:@"_documentSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urlWrapper = self->_urlWrapper;
    if (urlWrapper)
    {
      [v4 encodeObject:urlWrapper forKey:@"_urlWrapper"];
    }

    else
    {
      v16 = self;
      objc_sync_enter(v16);
      v17 = v16->_fileURL;
      objc_sync_exit(v16);

      if (v17)
      {
        v18 = [FPSandboxingURLWrapper wrapperWithURL:v17 readonly:0 error:0];
        [v4 encodeObject:v18 forKey:@"_urlWrapper"];
      }
    }
  }

  [v4 encodeObject:self->_detachedRootLogicalURL forKey:@"_detachedRootLogicalURL"];
  [v4 encodeInteger:self->_capabilities forKey:@"_capabilities"];
  [v4 encodeInteger:self->_enumerationOrigin forKey:@"_enumerationOrigin"];
  [v4 encodeObject:self->_creationDate forKey:@"_creationDate"];
  [v4 encodeObject:self->_contentModificationDate forKey:@"_contentModificationDate"];
  [v4 encodeBool:self->_trashed forKey:@"_trashed"];
  [v4 encodeObject:self->_lastUsedDate forKey:@"_lastUsedDate"];
  [v4 encodeObject:self->_tags forKey:@"_tags"];
  [v4 encodeObject:self->_favoriteRank forKey:@"_favoriteRank"];
  [v4 encodeBool:self->_uploaded forKey:@"_uploaded"];
  [v4 encodeBool:self->_uploading forKey:@"_uploading"];
  [v4 encodeObject:self->_uploadingError forKey:@"_uploadingError"];
  [v4 encodeBool:self->_excludedFromSync forKey:@"_excludedFromSync"];
  [v4 encodeBool:self->_ignoreRoot forKey:@"_ignoreRoot"];
  [v4 encodeInteger:self->_exclusionType forKey:@"_exclusionType"];
  [v4 encodeBool:self->_downloaded forKey:@"_downloaded"];
  [v4 encodeBool:self->_downloading forKey:@"_downloading"];
  [v4 encodeObject:self->_downloadingError forKey:@"_downloadingError"];
  [v4 encodeBool:self->_mostRecentVersionDownloaded forKey:@"_mostRecentVersionDownloaded"];
  [v4 encodeBool:self->_shared forKey:@"_shared"];
  [v4 encodeBool:self->_sharedByCurrentUser forKey:@"_sharedByCurrentUser"];
  [v4 encodeBool:self->_fp_lastModifiedByCurrentUser forKey:@"_fp_lastModifiedByCurrentUser"];
  [v4 encodeObject:self->_ownerNameComponents forKey:@"_ownerNameComponents"];
  [v4 encodeObject:self->_mostRecentEditorNameComponents forKey:@"_mostRecentEditorNameComponents"];
  [v4 encodeObject:self->_collaborationIdentifier forKey:@"_collaborationIdentifier"];
  [v4 encodeObject:self->_originatorInfo forKey:@"_originatorInfo"];
  [v4 encodeObject:self->_childItemCount forKey:@"_childItemCount"];
  [v4 encodeObject:self->_userInfo forKey:@"_userInfo"];
  [v4 encodeInteger:self->_state forKey:@"_state"];
  [v4 encodeObject:self->_placeholderIdentifier forKey:@"_placeholdIdentifier"];
  [v4 encodeObject:self->_versionIdentifier forKey:@"_versionIdentifier"];
  [v4 encodeObject:self->_itemVersion forKey:@"_itemVersion"];
  [v4 encodeObject:self->_spotlightDomainIdentifier forKey:@"rsdi"];
  [v4 encodeObject:self->_fp_spotlightSubDomainIdentifier forKey:@"_spotlightDomainIdentifier"];
  [v4 encodeBool:self->_inPinnedFolder forKey:@"_inPinnedFolder"];
  [v4 encodeBool:self->_pinned forKey:@"_pinned"];
  [v4 encodeObject:self->_hasUnresolvedConflicts forKey:@"_hasUnresolvedConflicts"];
  [v4 encodeObject:self->_isDownloadRequested forKey:@"_isDownloadRequested"];
  [v4 encodeObject:self->_sharingPermissions forKey:@"_sharingPermissions"];
  [v4 encodeObject:self->_containerDisplayName forKey:@"_containerDisplayName"];
  [v4 encodeBool:self->_supportsMostRecentVersionDownloaded forKey:@"_supportsMostRecentVersionDownloaded"];
  [v4 encodeObject:self->_fp_appContainerBundleIdentifier forKey:@"_fp_appContainerBundleIdentifier"];
  [v4 encodeObject:self->_fp_parentDomainIdentifier forKey:@"_fp_parentDomainIdentifier"];
  [v4 encodeObject:self->_cloudContainerIdentifier forKey:@"_cloudContainerIdentifier"];
  [v4 encodeBool:self->_isUbiquitous forKey:@"_isUbiquitous"];
  [v4 encodeBool:self->_isContainer forKey:@"_isContainer"];
  [v4 encodeBool:self->_isContainerPristine forKey:@"_isContainerPristine"];
  [v4 encodeBool:self->_topLevelSharedItem forKey:@"_topLevelSharedItem"];
  [v4 encodeBool:self->_recursivelyDownloaded forKey:@"_recursivelyDownloaded"];
  [v4 encodeBool:self->_contentZoneRoot forKey:@"_contentZoneRoot"];
  [v4 encodeObject:self->_conflictingVersions forKey:@"_conflictingVersions"];
  [v4 encodeBool:self->_isCollaborationInvitation forKey:@"_isCollaborationInvitation"];
  [v4 encodeInteger:self->_fileSystemFlags forKey:@"_fileSystemFlags"];
  [v4 encodeObject:self->_extendedAttributes forKey:@"_extendedAttributes"];
  [v4 encodeObject:self->_decorations forKey:@"_decorations"];
  [v4 encodeInt64:self->_fileID forKey:@"_fileID"];
  [v4 encodeInt32:self->_documentID forKey:@"_documentID"];
  [v4 encodeObject:self->_inheritedUserInfo forKey:@"_inheritedUserInfo"];
  [v4 encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [v4 encodeInt32:self->_typeAndCreator.type forKey:@"_typeAndCreator.type"];
  [v4 encodeInt32:self->_typeAndCreator.creator forKey:@"_typeAndCreator.creator"];
  [v4 encodeInteger:self->_contentPolicy forKey:@"_contentPolicy"];
  [v4 encodeInteger:self->_inheritedContentPolicy forKey:@"_inheritedContentPolicy"];
  [v4 encodeInteger:self->_effectiveContentPolicy forKey:@"_effectiveContentPolicy"];
  [v4 encodeInteger:self->_unsupportedFields forKey:@"_unsupportedFields"];
  [v4 encodeBool:self->_isEvictedWithClone forKey:@"_isEvictedWithClone"];
  [v4 encodeBool:self->_syncPaused forKey:@"_syncPaused"];
  [v4 encodeBool:self->_supportsUploadWithFailOnConflict forKey:@"_supportsUploadWithFailOnConflict"];
}

- (id)fieldDifferencesWithItem:(id)a3 onlyMetadata:(BOOL)a4
{
  v8 = a3;
  v9 = objc_opt_new();
  if (a4)
  {
    goto LABEL_52;
  }

  v10 = [v8 itemIdentifier];
  if (v10)
  {
    v4 = [(FPItem *)self itemIdentifier];
    v5 = [v8 itemIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_9:
      [v9 addObject:@"itemIdentifier"];
      goto LABEL_12;
    }
  }

  v11 = [(FPItem *)self itemIdentifier];
  if (v11)
  {
    v12 = [v8 itemIdentifier];

    if (v10)
    {
    }

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v10)
    {
    }
  }

LABEL_12:
  v13 = [v8 formerIdentifier];
  if (v13)
  {
    v4 = [(FPItem *)self formerIdentifier];
    v5 = [v8 formerIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_19:
      [v9 addObject:@"formerIdentifier"];
      goto LABEL_22;
    }
  }

  v14 = [(FPItem *)self formerIdentifier];
  if (v14)
  {
    v15 = [v8 formerIdentifier];

    if (v13)
    {
    }

    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v13)
    {
    }
  }

LABEL_22:
  v16 = [v8 parentItemIdentifier];
  if (v16)
  {
    v4 = [(FPItem *)self parentItemIdentifier];
    v5 = [v8 parentItemIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_29:
      [v9 addObject:@"parentItemIdentifier"];
      goto LABEL_32;
    }
  }

  v17 = [(FPItem *)self parentItemIdentifier];
  if (v17)
  {
    v18 = [v8 parentItemIdentifier];

    if (v16)
    {
    }

    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v16)
    {
    }
  }

LABEL_32:
  v19 = [v8 providerID];
  if (v19)
  {
    v4 = [(FPItem *)self providerID];
    v5 = [v8 providerID];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_39:
      [v9 addObject:@"providerID"];
      goto LABEL_42;
    }
  }

  v20 = [(FPItem *)self providerID];
  if (!v20)
  {

    if (v19)
    {
    }

    goto LABEL_42;
  }

  v21 = [v8 providerID];

  if (v19)
  {
  }

  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_42:
  v22 = [v8 domainIdentifier];
  if (v22)
  {
    v4 = [(FPItem *)self domainIdentifier];
    v5 = [v8 domainIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_49:
      [v9 addObject:@"domainIdentifier"];
      goto LABEL_52;
    }
  }

  v23 = [(FPItem *)self domainIdentifier];
  if (v23)
  {
    v24 = [v8 domainIdentifier];

    if (v22)
    {
    }

    if (!v24)
    {
      goto LABEL_49;
    }
  }

  else
  {

    if (v22)
    {
    }
  }

LABEL_52:
  v25 = [v8 filename];
  if (v25)
  {
    v4 = [(FPItem *)self filename];
    v5 = [v8 filename];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_59:
      [v9 addObject:@"filename"];
      goto LABEL_62;
    }
  }

  v26 = [(FPItem *)self filename];
  if (v26)
  {
    v27 = [v8 filename];

    if (v25)
    {
    }

    if (!v27)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (v25)
    {
    }
  }

LABEL_62:
  v28 = [v8 displayName];
  if (v28)
  {
    v4 = [(FPItem *)self displayName];
    v5 = [v8 displayName];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_69:
      [v9 addObject:@"displayName"];
      goto LABEL_72;
    }
  }

  v29 = [(FPItem *)self displayName];
  if (v29)
  {
    v30 = [v8 displayName];

    if (v28)
    {
    }

    if (!v30)
    {
      goto LABEL_69;
    }
  }

  else
  {

    if (v28)
    {
    }
  }

LABEL_72:
  v31 = [v8 contentType];
  if (v31)
  {
    v4 = [(FPItem *)self contentType];
    v5 = [v8 contentType];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_79:
      [v9 addObject:@"contentType"];
      goto LABEL_82;
    }
  }

  v32 = [(FPItem *)self contentType];
  if (v32)
  {
    v33 = [v8 contentType];

    if (v31)
    {
    }

    if (!v33)
    {
      goto LABEL_79;
    }
  }

  else
  {

    if (v31)
    {
    }
  }

LABEL_82:
  v34 = [v8 documentSize];
  if (v34)
  {
    v4 = [(FPItem *)self documentSize];
    v5 = [v8 documentSize];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_89:
      [v9 addObject:@"documentSize"];
      goto LABEL_92;
    }
  }

  v35 = [(FPItem *)self documentSize];
  if (v35)
  {
    v36 = [v8 documentSize];

    if (v34)
    {
    }

    if (!v36)
    {
      goto LABEL_89;
    }
  }

  else
  {

    if (v34)
    {
    }
  }

LABEL_92:
  v37 = [v8 fileURL];
  if (v37)
  {
    v4 = [(FPItem *)self fileURL];
    v5 = [v8 fileURL];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_99:
      [v9 addObject:@"fileURL"];
      goto LABEL_102;
    }
  }

  v38 = [(FPItem *)self fileURL];
  if (v38)
  {
    v39 = [v8 fileURL];

    if (v37)
    {
    }

    if (!v39)
    {
      goto LABEL_99;
    }
  }

  else
  {

    if (v37)
    {
    }
  }

LABEL_102:
  v40 = [(FPItem *)self capabilities];
  if (v40 != [v8 capabilities])
  {
    [v9 addObject:@"capabilities"];
  }

  v41 = [(FPItem *)self enumerationOrigin];
  if (v41 != [v8 enumerationOrigin])
  {
    [v9 addObject:@"enumerationOrigin"];
  }

  v42 = [v8 creationDate];
  if (v42)
  {
    v4 = [(FPItem *)self creationDate];
    v5 = [v8 creationDate];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_113:
      [v9 addObject:@"creationDate"];
      goto LABEL_116;
    }
  }

  v43 = [(FPItem *)self creationDate];
  if (v43)
  {
    v44 = [v8 creationDate];

    if (v42)
    {
    }

    if (!v44)
    {
      goto LABEL_113;
    }
  }

  else
  {

    if (v42)
    {
    }
  }

LABEL_116:
  v45 = [v8 contentModificationDate];
  if (v45)
  {
    v4 = [(FPItem *)self contentModificationDate];
    v5 = [v8 contentModificationDate];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_123:
      [v9 addObject:@"contentModificationDate"];
      goto LABEL_126;
    }
  }

  v46 = [(FPItem *)self contentModificationDate];
  if (v46)
  {
    v47 = [v8 contentModificationDate];

    if (v45)
    {
    }

    if (!v47)
    {
      goto LABEL_123;
    }
  }

  else
  {

    if (v45)
    {
    }
  }

LABEL_126:
  v48 = [(FPItem *)self isTrashed];
  if (v48 != [v8 isTrashed])
  {
    [v9 addObject:@"isTrashed"];
  }

  v49 = [v8 lastUsedDate];
  if (v49)
  {
    v4 = [(FPItem *)self lastUsedDate];
    v5 = [v8 lastUsedDate];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_135:
      [v9 addObject:@"lastUsedDate"];
      goto LABEL_138;
    }
  }

  v50 = [(FPItem *)self lastUsedDate];
  if (v50)
  {
    v51 = [v8 lastUsedDate];

    if (v49)
    {
    }

    if (!v51)
    {
      goto LABEL_135;
    }
  }

  else
  {

    if (v49)
    {
    }
  }

LABEL_138:
  v52 = [v8 tags];
  if (v52)
  {
    v4 = [(FPItem *)self tags];
    v5 = [v8 tags];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_145:
      [v9 addObject:@"tags"];
      goto LABEL_148;
    }
  }

  v53 = [(FPItem *)self tags];
  if (v53)
  {
    v54 = [v8 tags];

    if (v52)
    {
    }

    if (!v54)
    {
      goto LABEL_145;
    }
  }

  else
  {

    if (v52)
    {
    }
  }

LABEL_148:
  v55 = [v8 favoriteRank];
  if (v55)
  {
    v4 = [(FPItem *)self favoriteRank];
    v5 = [v8 favoriteRank];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_155:
      [v9 addObject:@"favoriteRank"];
      goto LABEL_158;
    }
  }

  v56 = [(FPItem *)self favoriteRank];
  if (v56)
  {
    v57 = [v8 favoriteRank];

    if (v55)
    {
    }

    if (!v57)
    {
      goto LABEL_155;
    }
  }

  else
  {

    if (v55)
    {
    }
  }

LABEL_158:
  if (a4)
  {
    goto LABEL_225;
  }

  v58 = [(FPItem *)self isUploaded];
  if (v58 != [v8 isUploaded])
  {
    [v9 addObject:@"isUploaded"];
  }

  v59 = [(FPItem *)self isUploading];
  if (v59 != [v8 isUploading])
  {
    [v9 addObject:@"isUploading"];
  }

  v60 = [v8 uploadingError];
  if (v60)
  {
    v4 = [(FPItem *)self uploadingError];
    v5 = [v8 uploadingError];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_170:
      [v9 addObject:@"uploadingError"];
      goto LABEL_173;
    }
  }

  v61 = [(FPItem *)self uploadingError];
  if (v61)
  {
    v62 = [v8 uploadingError];

    if (v60)
    {
    }

    if (!v62)
    {
      goto LABEL_170;
    }
  }

  else
  {

    if (v60)
    {
    }
  }

LABEL_173:
  v63 = [(FPItem *)self isDownloaded];
  if (v63 != [v8 isDownloaded])
  {
    [v9 addObject:@"isDownloaded"];
  }

  v64 = [(FPItem *)self isDownloading];
  if (v64 != [v8 isDownloading])
  {
    [v9 addObject:@"isDownloading"];
  }

  v65 = [v8 downloadingError];
  if (v65)
  {
    v4 = [(FPItem *)self downloadingError];
    v5 = [v8 downloadingError];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_184:
      [v9 addObject:@"downloadingError"];
      goto LABEL_187;
    }
  }

  v66 = [(FPItem *)self downloadingError];
  if (v66)
  {
    v67 = [v8 downloadingError];

    if (v65)
    {
    }

    if (!v67)
    {
      goto LABEL_184;
    }
  }

  else
  {

    if (v65)
    {
    }
  }

LABEL_187:
  v68 = [(FPItem *)self isMostRecentVersionDownloaded];
  if (v68 != [v8 isMostRecentVersionDownloaded])
  {
    [v9 addObject:@"isMostRecentVersionDownloaded"];
  }

  v69 = [(FPItem *)self isShared];
  if (v69 != [v8 isShared])
  {
    [v9 addObject:@"isShared"];
  }

  v70 = [(FPItem *)self isSharedByCurrentUser];
  if (v70 != [v8 isSharedByCurrentUser])
  {
    [v9 addObject:@"isSharedByCurrentUser"];
  }

  v71 = [(FPItem *)self fp_isLastModifiedByCurrentUser];
  if (v71 != [v8 fp_isLastModifiedByCurrentUser])
  {
    [v9 addObject:@"fp_isLastModifiedByCurrentUser"];
  }

  v72 = [v8 ownerNameComponents];
  if (v72)
  {
    v4 = [(FPItem *)self ownerNameComponents];
    v5 = [v8 ownerNameComponents];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_202:
      [v9 addObject:@"ownerNameComponents"];
      goto LABEL_205;
    }
  }

  v73 = [(FPItem *)self ownerNameComponents];
  if (v73)
  {
    v74 = [v8 ownerNameComponents];

    if (v72)
    {
    }

    if (!v74)
    {
      goto LABEL_202;
    }
  }

  else
  {

    if (v72)
    {
    }
  }

LABEL_205:
  v75 = [v8 mostRecentEditorNameComponents];
  if (v75)
  {
    v4 = [(FPItem *)self mostRecentEditorNameComponents];
    v5 = [v8 mostRecentEditorNameComponents];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_212:
      [v9 addObject:@"mostRecentEditorNameComponents"];
      goto LABEL_215;
    }
  }

  v76 = [(FPItem *)self mostRecentEditorNameComponents];
  if (!v76)
  {

    if (v75)
    {
    }

    goto LABEL_215;
  }

  v77 = [v8 mostRecentEditorNameComponents];

  if (v75)
  {
  }

  if (!v77)
  {
    goto LABEL_212;
  }

LABEL_215:
  v78 = [v8 collaborationIdentifier];
  if (v78)
  {
    v4 = [(FPItem *)self collaborationIdentifier];
    v5 = [v8 collaborationIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_222:
      [v9 addObject:@"collaborationIdentifier"];
      goto LABEL_225;
    }
  }

  v79 = [(FPItem *)self collaborationIdentifier];
  if (v79)
  {
    v80 = [v8 collaborationIdentifier];

    if (v78)
    {
    }

    if (!v80)
    {
      goto LABEL_222;
    }
  }

  else
  {

    if (v78)
    {
    }
  }

LABEL_225:
  v81 = [v8 childItemCount];
  if (v81)
  {
    v4 = [(FPItem *)self childItemCount];
    v5 = [v8 childItemCount];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_232:
      [v9 addObject:@"childItemCount"];
      goto LABEL_235;
    }
  }

  v82 = [(FPItem *)self childItemCount];
  if (v82)
  {
    v83 = [v8 childItemCount];

    if (v81)
    {
    }

    if (!v83)
    {
      goto LABEL_232;
    }
  }

  else
  {

    if (v81)
    {
    }
  }

LABEL_235:
  v84 = [v8 userInfo];
  if (v84)
  {
    v4 = [(FPItem *)self userInfo];
    v5 = [v8 userInfo];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_242:
      [v9 addObject:@"userInfo"];
      goto LABEL_245;
    }
  }

  v85 = [(FPItem *)self userInfo];
  if (v85)
  {
    v86 = [v8 userInfo];

    if (v84)
    {
    }

    if (!v86)
    {
      goto LABEL_242;
    }
  }

  else
  {

    if (v84)
    {
    }
  }

LABEL_245:
  if (a4)
  {
    goto LABEL_394;
  }

  v87 = [(FPItem *)self state];
  if (v87 != [v8 state])
  {
    [v9 addObject:@"state"];
  }

  v88 = [v8 placeholderIdentifier];
  if (v88)
  {
    v84 = [(FPItem *)self placeholderIdentifier];
    v4 = [v8 placeholderIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_255:
      [v9 addObject:@"placeholderIdentifier"];
      goto LABEL_258;
    }
  }

  v89 = [(FPItem *)self placeholderIdentifier];
  if (v89)
  {
    v90 = [v8 placeholderIdentifier];

    if (v88)
    {
    }

    if (!v90)
    {
      goto LABEL_255;
    }
  }

  else
  {

    if (v88)
    {
    }
  }

LABEL_258:
  v91 = [v8 versionIdentifier];
  if (v91)
  {
    v84 = [(FPItem *)self versionIdentifier];
    v4 = [v8 versionIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_265:
      [v9 addObject:@"versionIdentifier"];
      goto LABEL_268;
    }
  }

  v92 = [(FPItem *)self versionIdentifier];
  if (v92)
  {
    v93 = [v8 versionIdentifier];

    if (v91)
    {
    }

    if (!v93)
    {
      goto LABEL_265;
    }
  }

  else
  {

    if (v91)
    {
    }
  }

LABEL_268:
  v94 = [v8 itemVersion];
  if (v94)
  {
    v84 = [(FPItem *)self itemVersion];
    v4 = [v8 itemVersion];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_275:
      [v9 addObject:@"itemVersion"];
      goto LABEL_278;
    }
  }

  v95 = [(FPItem *)self itemVersion];
  if (v95)
  {
    v96 = [v8 itemVersion];

    if (v94)
    {
    }

    if (!v96)
    {
      goto LABEL_275;
    }
  }

  else
  {

    if (v94)
    {
    }
  }

LABEL_278:
  v97 = [v8 spotlightDomainIdentifier];
  if (v97)
  {
    v84 = [(FPItem *)self spotlightDomainIdentifier];
    v4 = [v8 spotlightDomainIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_285:
      [v9 addObject:@"spotlightDomainIdentifier"];
      goto LABEL_288;
    }
  }

  v98 = [(FPItem *)self spotlightDomainIdentifier];
  if (v98)
  {
    v99 = [v8 spotlightDomainIdentifier];

    if (v97)
    {
    }

    if (!v99)
    {
      goto LABEL_285;
    }
  }

  else
  {

    if (v97)
    {
    }
  }

LABEL_288:
  v100 = [v8 fp_spotlightSubDomainIdentifier];
  if (v100)
  {
    v84 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    v4 = [v8 fp_spotlightSubDomainIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_295:
      [v9 addObject:@"fp_spotlightSubDomainIdentifier"];
      goto LABEL_298;
    }
  }

  v101 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
  if (v101)
  {
    v102 = [v8 fp_spotlightSubDomainIdentifier];

    if (v100)
    {
    }

    if (!v102)
    {
      goto LABEL_295;
    }
  }

  else
  {

    if (v100)
    {
    }
  }

LABEL_298:
  v103 = [(FPItem *)self isInPinnedFolder];
  if (v103 != [v8 isInPinnedFolder])
  {
    [v9 addObject:@"isInPinnedFolder"];
  }

  v104 = [(FPItem *)self isPinned];
  if (v104 != [v8 isPinned])
  {
    [v9 addObject:@"isPinned"];
  }

  v105 = [v8 hasUnresolvedConflicts];
  if (v105)
  {
    v84 = [(FPItem *)self hasUnresolvedConflicts];
    v4 = [v8 hasUnresolvedConflicts];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_309:
      [v9 addObject:@"hasUnresolvedConflicts"];
      goto LABEL_312;
    }
  }

  v106 = [(FPItem *)self hasUnresolvedConflicts];
  if (v106)
  {
    v107 = [v8 hasUnresolvedConflicts];

    if (v105)
    {
    }

    if (!v107)
    {
      goto LABEL_309;
    }
  }

  else
  {

    if (v105)
    {
    }
  }

LABEL_312:
  v108 = [v8 isDownloadRequested];
  if (v108)
  {
    v84 = [(FPItem *)self isDownloadRequested];
    v4 = [v8 isDownloadRequested];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_319:
      [v9 addObject:@"isDownloadRequested"];
      goto LABEL_322;
    }
  }

  v109 = [(FPItem *)self isDownloadRequested];
  if (v109)
  {
    v110 = [v8 isDownloadRequested];

    if (v108)
    {
    }

    if (!v110)
    {
      goto LABEL_319;
    }
  }

  else
  {

    if (v108)
    {
    }
  }

LABEL_322:
  v111 = [v8 sharingPermissions];
  if (v111)
  {
    v84 = [(FPItem *)self sharingPermissions];
    v4 = [v8 sharingPermissions];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_329:
      [v9 addObject:@"sharingPermissions"];
      goto LABEL_332;
    }
  }

  v112 = [(FPItem *)self sharingPermissions];
  if (v112)
  {
    v113 = [v8 sharingPermissions];

    if (v111)
    {
    }

    if (!v113)
    {
      goto LABEL_329;
    }
  }

  else
  {

    if (v111)
    {
    }
  }

LABEL_332:
  v114 = [v8 containerDisplayName];
  if (v114)
  {
    v84 = [(FPItem *)self containerDisplayName];
    v4 = [v8 containerDisplayName];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_339:
      [v9 addObject:@"containerDisplayName"];
      goto LABEL_342;
    }
  }

  v115 = [(FPItem *)self containerDisplayName];
  if (v115)
  {
    v116 = [v8 containerDisplayName];

    if (v114)
    {
    }

    if (!v116)
    {
      goto LABEL_339;
    }
  }

  else
  {

    if (v114)
    {
    }
  }

LABEL_342:
  v117 = [(FPItem *)self supportsMostRecentVersionDownloaded];
  if (v117 != [v8 supportsMostRecentVersionDownloaded])
  {
    [v9 addObject:@"supportsMostRecentVersionDownloaded"];
  }

  v118 = [v8 fp_appContainerBundleIdentifier];
  if (v118)
  {
    v84 = [(FPItem *)self fp_appContainerBundleIdentifier];
    v4 = [v8 fp_appContainerBundleIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_351:
      [v9 addObject:@"fp_appContainerBundleIdentifier"];
      goto LABEL_354;
    }
  }

  v119 = [(FPItem *)self fp_appContainerBundleIdentifier];
  if (v119)
  {
    v120 = [v8 fp_appContainerBundleIdentifier];

    if (v118)
    {
    }

    if (!v120)
    {
      goto LABEL_351;
    }
  }

  else
  {

    if (v118)
    {
    }
  }

LABEL_354:
  v121 = [v8 fp_parentDomainIdentifier];
  if (v121)
  {
    v84 = [(FPItem *)self fp_parentDomainIdentifier];
    v4 = [v8 fp_parentDomainIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_361:
      [v9 addObject:@"fp_parentDomainIdentifier"];
      goto LABEL_364;
    }
  }

  v122 = [(FPItem *)self fp_parentDomainIdentifier];
  if (v122)
  {
    v123 = [v8 fp_parentDomainIdentifier];

    if (v121)
    {
    }

    if (!v123)
    {
      goto LABEL_361;
    }
  }

  else
  {

    if (v121)
    {
    }
  }

LABEL_364:
  v124 = [v8 cloudContainerIdentifier];
  if (v124)
  {
    v84 = [(FPItem *)self cloudContainerIdentifier];
    v4 = [v8 cloudContainerIdentifier];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_371:
      [v9 addObject:@"cloudContainerIdentifier"];
      goto LABEL_374;
    }
  }

  v125 = [(FPItem *)self cloudContainerIdentifier];
  if (v125)
  {
    v126 = [v8 cloudContainerIdentifier];

    if (v124)
    {
    }

    if (!v126)
    {
      goto LABEL_371;
    }
  }

  else
  {

    if (v124)
    {
    }
  }

LABEL_374:
  v127 = [(FPItem *)self isUbiquitous];
  if (v127 != [v8 isUbiquitous])
  {
    [v9 addObject:@"isUbiquitous"];
  }

  v128 = [(FPItem *)self isContainer];
  if (v128 != [v8 isContainer])
  {
    [v9 addObject:@"isContainer"];
  }

  v129 = [(FPItem *)self isContainerPristine];
  if (v129 != [v8 isContainerPristine])
  {
    [v9 addObject:@"isContainerPristine"];
  }

  v130 = [(FPItem *)self isTopLevelSharedItem];
  if (v130 != [v8 isTopLevelSharedItem])
  {
    [v9 addObject:@"isTopLevelSharedItem"];
  }

  v131 = [(FPItem *)self isRecursivelyDownloaded];
  if (v131 != [v8 isRecursivelyDownloaded])
  {
    [v9 addObject:@"isRecursivelyDownloaded"];
  }

  v132 = [v8 conflictingVersions];
  if (v132)
  {
    v84 = [(FPItem *)self conflictingVersions];
    v4 = [v8 conflictingVersions];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_391:
      [v9 addObject:@"conflictingVersions"];
      goto LABEL_394;
    }
  }

  v133 = [(FPItem *)self conflictingVersions];
  if (v133)
  {
    v134 = [v8 conflictingVersions];

    if (v132)
    {
    }

    if (!v134)
    {
      goto LABEL_391;
    }
  }

  else
  {

    if (v132)
    {
    }
  }

LABEL_394:
  v135 = [(FPItem *)self fileSystemFlags];
  if (v135 != [v8 fileSystemFlags])
  {
    [v9 addObject:@"fileSystemFlags"];
  }

  v136 = [v8 extendedAttributes];
  if (v136)
  {
    v84 = [(FPItem *)self extendedAttributes];
    v4 = [v8 extendedAttributes];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_403:
      [v9 addObject:@"extendedAttributes"];
      goto LABEL_406;
    }
  }

  v137 = [(FPItem *)self extendedAttributes];
  if (v137)
  {
    v138 = [v8 extendedAttributes];

    if (v136)
    {
    }

    if (!v138)
    {
      goto LABEL_403;
    }
  }

  else
  {

    if (v136)
    {
    }
  }

LABEL_406:
  v139 = [v8 decorations];
  if (v139)
  {
    v84 = [(FPItem *)self decorations];
    v4 = [v8 decorations];
    if (([v84 isEqual:v4] & 1) == 0)
    {

LABEL_413:
      [v9 addObject:@"decorations"];
      goto LABEL_416;
    }
  }

  v140 = [(FPItem *)self decorations];
  if (v140)
  {
    v141 = [v8 decorations];

    if (v139)
    {
    }

    if (!v141)
    {
      goto LABEL_413;
    }
  }

  else
  {

    if (v139)
    {
    }
  }

LABEL_416:
  v142 = [(FPItem *)self typeAndCreator];
  if (v142 != [v8 typeAndCreator] || (v143 = -[FPItem typeAndCreator](self, "typeAndCreator"), (objc_msgSend(v8, "typeAndCreator") ^ *&v143) >> 32))
  {
    [v9 addObject:@"typeAndCreator"];
  }

  v144 = [(FPItem *)self contentPolicy];
  if (v144 != [v8 contentPolicy])
  {
    [v9 addObject:@"contentPolicy"];
  }

  v145 = [(FPItem *)self inheritedContentPolicy];
  if (v145 != [v8 inheritedContentPolicy])
  {
    [v9 addObject:@"inheritedContentPolicy"];
  }

  v146 = [(FPItem *)self effectiveContentPolicy];
  if (v146 != [v8 effectiveContentPolicy])
  {
    [v9 addObject:@"effectiveContentPolicy"];
  }

  v147 = [(FPItem *)self isEvictedWithClone];
  if (v147 != [v8 isEvictedWithClone])
  {
    [v9 addObject:@"isEvictedWithClone"];
  }

  v148 = [(FPItem *)self isSyncPaused];
  if (v148 != [v8 isSyncPaused])
  {
    [v9 addObject:@"isSyncPaused"];
  }

  v149 = fp_current_or_default_log();
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
  {
    [FPItem fieldDifferencesWithItem:v9 onlyMetadata:v8];
  }

  v150 = v9;
  return v9;
}

- (void)overrideFields:(id)a3 ofItem:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (![v8 containsObject:@"itemIdentifier"])
  {
    goto LABEL_14;
  }

  v10 = [v9 itemIdentifier];
  if (v10)
  {
    v4 = [(FPItem *)self itemIdentifier];
    v5 = [v9 itemIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

LABEL_9:
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v14 = [v9 itemIdentifier];
      itemIdentifier = self->_itemIdentifier;
      self->_itemIdentifier = v14;

      goto LABEL_14;
    }
  }

  v11 = [(FPItem *)self itemIdentifier];
  if (v11)
  {
    v12 = [v9 itemIdentifier];

    if (v10)
    {
    }

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v10)
    {
    }
  }

LABEL_14:
  if (![v8 containsObject:@"formerIdentifier"])
  {
    goto LABEL_28;
  }

  formerIdentifier = [v9 formerIdentifier];
  if (formerIdentifier)
  {
    v4 = [(FPItem *)self formerIdentifier];
    v5 = [v9 formerIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  v17 = [(FPItem *)self formerIdentifier];
  if (!v17)
  {

    if (!formerIdentifier)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = [v9 formerIdentifier];

  if (formerIdentifier)
  {
  }

  if (!v18)
  {
LABEL_22:
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v20 = [v9 formerIdentifier];
    formerIdentifier = self->_formerIdentifier;
    self->_formerIdentifier = v20;
LABEL_27:
  }

LABEL_28:
  if (![v8 containsObject:@"parentFormerIdentifier"])
  {
    goto LABEL_42;
  }

  parentFormerIdentifier = [v9 parentFormerIdentifier];
  if (parentFormerIdentifier)
  {
    v4 = [(FPItem *)self parentFormerIdentifier];
    v5 = [v9 parentFormerIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_36;
    }
  }

  v22 = [(FPItem *)self parentFormerIdentifier];
  if (!v22)
  {

    if (!parentFormerIdentifier)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v23 = [v9 parentFormerIdentifier];

  if (parentFormerIdentifier)
  {
  }

  if (!v23)
  {
LABEL_36:
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v25 = [v9 parentFormerIdentifier];
    parentFormerIdentifier = self->_parentFormerIdentifier;
    self->_parentFormerIdentifier = v25;
LABEL_41:
  }

LABEL_42:
  if (![v8 containsObject:@"parentItemIdentifier"])
  {
    goto LABEL_56;
  }

  parentItemIdentifier = [v9 parentItemIdentifier];
  if (parentItemIdentifier)
  {
    v4 = [(FPItem *)self parentItemIdentifier];
    v5 = [v9 parentItemIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_50;
    }
  }

  v27 = [(FPItem *)self parentItemIdentifier];
  if (!v27)
  {

    if (!parentItemIdentifier)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v28 = [v9 parentItemIdentifier];

  if (parentItemIdentifier)
  {
  }

  if (!v28)
  {
LABEL_50:
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v30 = [v9 parentItemIdentifier];
    parentItemIdentifier = self->_parentItemIdentifier;
    self->_parentItemIdentifier = v30;
LABEL_55:
  }

LABEL_56:
  if (![v8 containsObject:@"providerID"])
  {
    goto LABEL_70;
  }

  providerID = [v9 providerID];
  if (providerID)
  {
    v4 = [(FPItem *)self providerID];
    v5 = [v9 providerID];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_64;
    }
  }

  v32 = [(FPItem *)self providerID];
  if (!v32)
  {

    if (!providerID)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v33 = [v9 providerID];

  if (providerID)
  {
  }

  if (!v33)
  {
LABEL_64:
    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v35 = [v9 providerID];
    providerID = self->_providerID;
    self->_providerID = v35;
LABEL_69:
  }

LABEL_70:
  if (![v8 containsObject:@"domainIdentifier"])
  {
    goto LABEL_84;
  }

  domainIdentifier = [v9 domainIdentifier];
  if (domainIdentifier)
  {
    v4 = [(FPItem *)self domainIdentifier];
    v5 = [v9 domainIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_78;
    }
  }

  v37 = [(FPItem *)self domainIdentifier];
  if (!v37)
  {

    if (!domainIdentifier)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v38 = [v9 domainIdentifier];

  if (domainIdentifier)
  {
  }

  if (!v38)
  {
LABEL_78:
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v40 = [v9 domainIdentifier];
    domainIdentifier = self->_domainIdentifier;
    self->_domainIdentifier = v40;
LABEL_83:
  }

LABEL_84:
  if (![v8 containsObject:@"filename"])
  {
    goto LABEL_98;
  }

  filename = [v9 filename];
  if (filename)
  {
    v4 = [(FPItem *)self filename];
    v5 = [v9 filename];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_92;
    }
  }

  v42 = [(FPItem *)self filename];
  if (!v42)
  {

    if (!filename)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v43 = [v9 filename];

  if (filename)
  {
  }

  if (!v43)
  {
LABEL_92:
    v44 = fp_current_or_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v45 = [v9 filename];
    filename = self->_filename;
    self->_filename = v45;
LABEL_97:
  }

LABEL_98:
  if (![v8 containsObject:@"displayName"])
  {
    goto LABEL_112;
  }

  displayName = [v9 displayName];
  if (displayName)
  {
    v4 = [(FPItem *)self displayName];
    v5 = [v9 displayName];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_106;
    }
  }

  v47 = [(FPItem *)self displayName];
  if (!v47)
  {

    if (!displayName)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v48 = [v9 displayName];

  if (displayName)
  {
  }

  if (!v48)
  {
LABEL_106:
    v49 = fp_current_or_default_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v50 = [v9 displayName];
    displayName = self->_displayName;
    self->_displayName = v50;
LABEL_111:
  }

LABEL_112:
  if (![v8 containsObject:@"contentType"])
  {
    goto LABEL_126;
  }

  v51 = [v9 contentType];
  if (v51)
  {
    v4 = [(FPItem *)self contentType];
    v5 = [v9 contentType];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_120;
    }
  }

  v52 = [(FPItem *)self contentType];
  if (!v52)
  {

    if (!v51)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v53 = [v9 contentType];

  if (v51)
  {
  }

  if (!v53)
  {
LABEL_120:
    v54 = fp_current_or_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v51 = [v9 contentType];
    [(FPItem *)self setContentType:v51];
LABEL_125:
  }

LABEL_126:
  if (![v8 containsObject:@"documentSize"])
  {
    goto LABEL_140;
  }

  documentSize = [v9 documentSize];
  if (documentSize)
  {
    v4 = [(FPItem *)self documentSize];
    v5 = [v9 documentSize];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_134;
    }
  }

  v56 = [(FPItem *)self documentSize];
  if (!v56)
  {

    if (!documentSize)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v57 = [v9 documentSize];

  if (documentSize)
  {
  }

  if (!v57)
  {
LABEL_134:
    v58 = fp_current_or_default_log();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v59 = [v9 documentSize];
    documentSize = self->_documentSize;
    self->_documentSize = v59;
LABEL_139:
  }

LABEL_140:
  if ([v8 containsObject:@"fileURL"])
  {
    fileURL = [v9 fileURL];
    if (fileURL)
    {
      v4 = [(FPItem *)self fileURL];
      v5 = [v9 fileURL];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_148:
        v63 = fp_current_or_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v64 = [v9 fileURL];
        fileURL = self->_fileURL;
        self->_fileURL = v64;
        goto LABEL_153;
      }
    }

    v61 = [(FPItem *)self fileURL];
    if (v61)
    {
      v62 = [v9 fileURL];

      if (fileURL)
      {
      }

      if (!v62)
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

  if ([v8 containsObject:@"capabilities"])
  {
    v65 = [(FPItem *)self capabilities];
    if (v65 != [v9 capabilities])
    {
      v66 = fp_current_or_default_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v66 ofItem:?];
      }

      self->_capabilities = [v9 capabilities];
    }
  }

  if ([v8 containsObject:@"enumerationOrigin"])
  {
    v67 = [(FPItem *)self enumerationOrigin];
    if (v67 != [v9 enumerationOrigin])
    {
      v68 = fp_current_or_default_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v68 ofItem:?];
      }

      self->_enumerationOrigin = [v9 enumerationOrigin];
    }
  }

  if ([v8 containsObject:@"creationDate"])
  {
    creationDate = [v9 creationDate];
    if (creationDate)
    {
      v4 = [(FPItem *)self creationDate];
      v5 = [v9 creationDate];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_172;
      }
    }

    v70 = [(FPItem *)self creationDate];
    if (!v70)
    {

      if (!creationDate)
      {
        goto LABEL_178;
      }

      goto LABEL_177;
    }

    v71 = [v9 creationDate];

    if (creationDate)
    {
    }

    if (!v71)
    {
LABEL_172:
      v72 = fp_current_or_default_log();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v73 = [v9 creationDate];
      creationDate = self->_creationDate;
      self->_creationDate = v73;
LABEL_177:
    }
  }

LABEL_178:
  if ([v8 containsObject:@"contentModificationDate"])
  {
    contentModificationDate = [v9 contentModificationDate];
    if (contentModificationDate)
    {
      v4 = [(FPItem *)self contentModificationDate];
      v5 = [v9 contentModificationDate];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_186:
        v77 = fp_current_or_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v78 = [v9 contentModificationDate];
        contentModificationDate = self->_contentModificationDate;
        self->_contentModificationDate = v78;
        goto LABEL_191;
      }
    }

    v75 = [(FPItem *)self contentModificationDate];
    if (v75)
    {
      v76 = [v9 contentModificationDate];

      if (contentModificationDate)
      {
      }

      if (!v76)
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

  if ([v8 containsObject:@"isTrashed"])
  {
    v79 = [(FPItem *)self isTrashed];
    if (v79 != [v9 isTrashed])
    {
      v80 = fp_current_or_default_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v80 ofItem:?];
      }

      self->_trashed = [v9 isTrashed];
    }
  }

  if ([v8 containsObject:@"lastUsedDate"])
  {
    lastUsedDate = [v9 lastUsedDate];
    if (lastUsedDate)
    {
      v4 = [(FPItem *)self lastUsedDate];
      v5 = [v9 lastUsedDate];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_205;
      }
    }

    v82 = [(FPItem *)self lastUsedDate];
    if (!v82)
    {

      if (!lastUsedDate)
      {
        goto LABEL_211;
      }

      goto LABEL_210;
    }

    v83 = [v9 lastUsedDate];

    if (lastUsedDate)
    {
    }

    if (!v83)
    {
LABEL_205:
      v84 = fp_current_or_default_log();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v85 = [v9 lastUsedDate];
      lastUsedDate = self->_lastUsedDate;
      self->_lastUsedDate = v85;
LABEL_210:
    }
  }

LABEL_211:
  if (![v8 containsObject:@"tags"])
  {
    goto LABEL_225;
  }

  tags = [v9 tags];
  if (tags)
  {
    v4 = [(FPItem *)self tags];
    v5 = [v9 tags];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_219;
    }
  }

  v87 = [(FPItem *)self tags];
  if (!v87)
  {

    if (!tags)
    {
      goto LABEL_225;
    }

    goto LABEL_224;
  }

  v88 = [v9 tags];

  if (tags)
  {
  }

  if (!v88)
  {
LABEL_219:
    v89 = fp_current_or_default_log();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v90 = [v9 tags];
    tags = self->_tags;
    self->_tags = v90;
LABEL_224:
  }

LABEL_225:
  if ([v8 containsObject:@"favoriteRank"])
  {
    favoriteRank = [v9 favoriteRank];
    if (favoriteRank)
    {
      v4 = [(FPItem *)self favoriteRank];
      v5 = [v9 favoriteRank];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_233:
        v94 = fp_current_or_default_log();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v95 = [v9 favoriteRank];
        favoriteRank = self->_favoriteRank;
        self->_favoriteRank = v95;
        goto LABEL_238;
      }
    }

    v92 = [(FPItem *)self favoriteRank];
    if (v92)
    {
      v93 = [v9 favoriteRank];

      if (favoriteRank)
      {
      }

      if (!v93)
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

  if ([v8 containsObject:@"isUploaded"])
  {
    v96 = [(FPItem *)self isUploaded];
    if (v96 != [v9 isUploaded])
    {
      v97 = fp_current_or_default_log();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v97 ofItem:?];
      }

      self->_uploaded = [v9 isUploaded];
    }
  }

  if ([v8 containsObject:@"isUploading"])
  {
    v98 = [(FPItem *)self isUploading];
    if (v98 != [v9 isUploading])
    {
      v99 = fp_current_or_default_log();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v99 ofItem:?];
      }

      self->_uploading = [v9 isUploading];
    }
  }

  if ([v8 containsObject:@"uploadingError"])
  {
    uploadingError = [v9 uploadingError];
    if (uploadingError)
    {
      v4 = [(FPItem *)self uploadingError];
      v5 = [v9 uploadingError];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_257:
        v103 = fp_current_or_default_log();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v104 = [v9 uploadingError];
        uploadingError = self->_uploadingError;
        self->_uploadingError = v104;
        goto LABEL_262;
      }
    }

    v101 = [(FPItem *)self uploadingError];
    if (v101)
    {
      v102 = [v9 uploadingError];

      if (uploadingError)
      {
      }

      if (!v102)
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

  if ([v8 containsObject:@"isDownloaded"])
  {
    v105 = [(FPItem *)self isDownloaded];
    if (v105 != [v9 isDownloaded])
    {
      v106 = fp_current_or_default_log();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v106 ofItem:?];
      }

      self->_downloaded = [v9 isDownloaded];
    }
  }

  if ([v8 containsObject:@"isDownloading"])
  {
    v107 = [(FPItem *)self isDownloading];
    if (v107 != [v9 isDownloading])
    {
      v108 = fp_current_or_default_log();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v108 ofItem:?];
      }

      self->_downloading = [v9 isDownloading];
    }
  }

  if ([v8 containsObject:@"downloadingError"])
  {
    downloadingError = [v9 downloadingError];
    if (downloadingError)
    {
      v4 = [(FPItem *)self downloadingError];
      v5 = [v9 downloadingError];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_281:
        v112 = fp_current_or_default_log();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v113 = [v9 downloadingError];
        downloadingError = self->_downloadingError;
        self->_downloadingError = v113;
        goto LABEL_286;
      }
    }

    v110 = [(FPItem *)self downloadingError];
    if (v110)
    {
      v111 = [v9 downloadingError];

      if (downloadingError)
      {
      }

      if (!v111)
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

  if ([v8 containsObject:@"isMostRecentVersionDownloaded"])
  {
    v114 = [(FPItem *)self isMostRecentVersionDownloaded];
    if (v114 != [v9 isMostRecentVersionDownloaded])
    {
      v115 = fp_current_or_default_log();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v115 ofItem:?];
      }

      self->_mostRecentVersionDownloaded = [v9 isMostRecentVersionDownloaded];
    }
  }

  if ([v8 containsObject:@"isShared"])
  {
    v116 = [(FPItem *)self isShared];
    if (v116 != [v9 isShared])
    {
      v117 = fp_current_or_default_log();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v117 ofItem:?];
      }

      self->_shared = [v9 isShared];
    }
  }

  if ([v8 containsObject:@"isSharedByCurrentUser"])
  {
    v118 = [(FPItem *)self isSharedByCurrentUser];
    if (v118 != [v9 isSharedByCurrentUser])
    {
      v119 = fp_current_or_default_log();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v119 ofItem:?];
      }

      self->_sharedByCurrentUser = [v9 isSharedByCurrentUser];
    }
  }

  if ([v8 containsObject:@"fp_isLastModifiedByCurrentUser"])
  {
    v120 = [(FPItem *)self fp_isLastModifiedByCurrentUser];
    if (v120 != [v9 fp_isLastModifiedByCurrentUser])
    {
      v121 = fp_current_or_default_log();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v121 ofItem:?];
      }

      self->_fp_lastModifiedByCurrentUser = [v9 fp_isLastModifiedByCurrentUser];
    }
  }

  if ([v8 containsObject:@"ownerNameComponents"])
  {
    ownerNameComponents = [v9 ownerNameComponents];
    if (ownerNameComponents)
    {
      v4 = [(FPItem *)self ownerNameComponents];
      v5 = [v9 ownerNameComponents];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_315;
      }
    }

    v123 = [(FPItem *)self ownerNameComponents];
    if (!v123)
    {

      if (!ownerNameComponents)
      {
        goto LABEL_321;
      }

      goto LABEL_320;
    }

    v124 = [v9 ownerNameComponents];

    if (ownerNameComponents)
    {
    }

    if (!v124)
    {
LABEL_315:
      v125 = fp_current_or_default_log();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v126 = [v9 ownerNameComponents];
      ownerNameComponents = self->_ownerNameComponents;
      self->_ownerNameComponents = v126;
LABEL_320:
    }
  }

LABEL_321:
  if (![v8 containsObject:@"mostRecentEditorNameComponents"])
  {
    goto LABEL_335;
  }

  mostRecentEditorNameComponents = [v9 mostRecentEditorNameComponents];
  if (mostRecentEditorNameComponents)
  {
    v4 = [(FPItem *)self mostRecentEditorNameComponents];
    v5 = [v9 mostRecentEditorNameComponents];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_329;
    }
  }

  v128 = [(FPItem *)self mostRecentEditorNameComponents];
  if (!v128)
  {

    if (!mostRecentEditorNameComponents)
    {
      goto LABEL_335;
    }

    goto LABEL_334;
  }

  v129 = [v9 mostRecentEditorNameComponents];

  if (mostRecentEditorNameComponents)
  {
  }

  if (!v129)
  {
LABEL_329:
    v130 = fp_current_or_default_log();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v131 = [v9 mostRecentEditorNameComponents];
    mostRecentEditorNameComponents = self->_mostRecentEditorNameComponents;
    self->_mostRecentEditorNameComponents = v131;
LABEL_334:
  }

LABEL_335:
  if (![v8 containsObject:@"collaborationIdentifier"])
  {
    goto LABEL_349;
  }

  collaborationIdentifier = [v9 collaborationIdentifier];
  if (collaborationIdentifier)
  {
    v4 = [(FPItem *)self collaborationIdentifier];
    v5 = [v9 collaborationIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_343;
    }
  }

  v133 = [(FPItem *)self collaborationIdentifier];
  if (!v133)
  {

    if (!collaborationIdentifier)
    {
      goto LABEL_349;
    }

    goto LABEL_348;
  }

  v134 = [v9 collaborationIdentifier];

  if (collaborationIdentifier)
  {
  }

  if (!v134)
  {
LABEL_343:
    v135 = fp_current_or_default_log();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v136 = [v9 collaborationIdentifier];
    collaborationIdentifier = self->_collaborationIdentifier;
    self->_collaborationIdentifier = v136;
LABEL_348:
  }

LABEL_349:
  if (![v8 containsObject:@"childItemCount"])
  {
    goto LABEL_363;
  }

  childItemCount = [v9 childItemCount];
  if (childItemCount)
  {
    v4 = [(FPItem *)self childItemCount];
    v5 = [v9 childItemCount];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_357;
    }
  }

  v138 = [(FPItem *)self childItemCount];
  if (!v138)
  {

    if (!childItemCount)
    {
      goto LABEL_363;
    }

    goto LABEL_362;
  }

  v139 = [v9 childItemCount];

  if (childItemCount)
  {
  }

  if (!v139)
  {
LABEL_357:
    v140 = fp_current_or_default_log();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v141 = [v9 childItemCount];
    childItemCount = self->_childItemCount;
    self->_childItemCount = v141;
LABEL_362:
  }

LABEL_363:
  if ([v8 containsObject:@"userInfo"])
  {
    userInfo = [v9 userInfo];
    if (userInfo)
    {
      v4 = [(FPItem *)self userInfo];
      v5 = [v9 userInfo];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_371:
        v145 = fp_current_or_default_log();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v146 = [v9 userInfo];
        userInfo = self->_userInfo;
        self->_userInfo = v146;
        goto LABEL_376;
      }
    }

    v143 = [(FPItem *)self userInfo];
    if (v143)
    {
      v144 = [v9 userInfo];

      if (userInfo)
      {
      }

      if (!v144)
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

  if ([v8 containsObject:@"state"])
  {
    v147 = [(FPItem *)self state];
    if (v147 != [v9 state])
    {
      v148 = fp_current_or_default_log();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v148 ofItem:?];
      }

      self->_state = [v9 state];
    }
  }

  if ([v8 containsObject:@"placeholderIdentifier"])
  {
    placeholderIdentifier = [v9 placeholderIdentifier];
    if (placeholderIdentifier)
    {
      v4 = [(FPItem *)self placeholderIdentifier];
      v5 = [v9 placeholderIdentifier];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_390;
      }
    }

    v150 = [(FPItem *)self placeholderIdentifier];
    if (!v150)
    {

      if (!placeholderIdentifier)
      {
        goto LABEL_396;
      }

      goto LABEL_395;
    }

    v151 = [v9 placeholderIdentifier];

    if (placeholderIdentifier)
    {
    }

    if (!v151)
    {
LABEL_390:
      v152 = fp_current_or_default_log();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v153 = [v9 placeholderIdentifier];
      placeholderIdentifier = self->_placeholderIdentifier;
      self->_placeholderIdentifier = v153;
LABEL_395:
    }
  }

LABEL_396:
  if (![v8 containsObject:@"versionIdentifier"])
  {
    goto LABEL_410;
  }

  versionIdentifier = [v9 versionIdentifier];
  if (versionIdentifier)
  {
    v4 = [(FPItem *)self versionIdentifier];
    v5 = [v9 versionIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_404;
    }
  }

  v155 = [(FPItem *)self versionIdentifier];
  if (!v155)
  {

    if (!versionIdentifier)
    {
      goto LABEL_410;
    }

    goto LABEL_409;
  }

  v156 = [v9 versionIdentifier];

  if (versionIdentifier)
  {
  }

  if (!v156)
  {
LABEL_404:
    v157 = fp_current_or_default_log();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v158 = [v9 versionIdentifier];
    versionIdentifier = self->_versionIdentifier;
    self->_versionIdentifier = v158;
LABEL_409:
  }

LABEL_410:
  if (![v8 containsObject:@"itemVersion"])
  {
    goto LABEL_424;
  }

  itemVersion = [v9 itemVersion];
  if (itemVersion)
  {
    v4 = [(FPItem *)self itemVersion];
    v5 = [v9 itemVersion];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_418;
    }
  }

  v160 = [(FPItem *)self itemVersion];
  if (!v160)
  {

    if (!itemVersion)
    {
      goto LABEL_424;
    }

    goto LABEL_423;
  }

  v161 = [v9 itemVersion];

  if (itemVersion)
  {
  }

  if (!v161)
  {
LABEL_418:
    v162 = fp_current_or_default_log();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v163 = [v9 itemVersion];
    itemVersion = self->_itemVersion;
    self->_itemVersion = v163;
LABEL_423:
  }

LABEL_424:
  if (![v8 containsObject:@"spotlightDomainIdentifier"])
  {
    goto LABEL_438;
  }

  spotlightDomainIdentifier = [v9 spotlightDomainIdentifier];
  if (spotlightDomainIdentifier)
  {
    v4 = [(FPItem *)self spotlightDomainIdentifier];
    v5 = [v9 spotlightDomainIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_432;
    }
  }

  v165 = [(FPItem *)self spotlightDomainIdentifier];
  if (!v165)
  {

    if (!spotlightDomainIdentifier)
    {
      goto LABEL_438;
    }

    goto LABEL_437;
  }

  v166 = [v9 spotlightDomainIdentifier];

  if (spotlightDomainIdentifier)
  {
  }

  if (!v166)
  {
LABEL_432:
    v167 = fp_current_or_default_log();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v168 = [v9 spotlightDomainIdentifier];
    spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
    self->_spotlightDomainIdentifier = v168;
LABEL_437:
  }

LABEL_438:
  if ([v8 containsObject:@"fp_spotlightSubDomainIdentifier"])
  {
    fp_spotlightSubDomainIdentifier = [v9 fp_spotlightSubDomainIdentifier];
    if (fp_spotlightSubDomainIdentifier)
    {
      v4 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
      v5 = [v9 fp_spotlightSubDomainIdentifier];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_446:
        v172 = fp_current_or_default_log();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v173 = [v9 fp_spotlightSubDomainIdentifier];
        fp_spotlightSubDomainIdentifier = self->_fp_spotlightSubDomainIdentifier;
        self->_fp_spotlightSubDomainIdentifier = v173;
        goto LABEL_451;
      }
    }

    v170 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    if (v170)
    {
      v171 = [v9 fp_spotlightSubDomainIdentifier];

      if (fp_spotlightSubDomainIdentifier)
      {
      }

      if (!v171)
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

  if ([v8 containsObject:@"isInPinnedFolder"])
  {
    v174 = [(FPItem *)self isInPinnedFolder];
    if (v174 != [v9 isInPinnedFolder])
    {
      v175 = fp_current_or_default_log();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v175 ofItem:?];
      }

      self->_inPinnedFolder = [v9 isInPinnedFolder];
    }
  }

  if ([v8 containsObject:@"isPinned"])
  {
    v176 = [(FPItem *)self isPinned];
    if (v176 != [v9 isPinned])
    {
      v177 = fp_current_or_default_log();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v177 ofItem:?];
      }

      self->_pinned = [v9 isPinned];
    }
  }

  if ([v8 containsObject:@"hasUnresolvedConflicts"])
  {
    hasUnresolvedConflicts = [v9 hasUnresolvedConflicts];
    if (hasUnresolvedConflicts)
    {
      v4 = [(FPItem *)self hasUnresolvedConflicts];
      v5 = [v9 hasUnresolvedConflicts];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_470;
      }
    }

    v179 = [(FPItem *)self hasUnresolvedConflicts];
    if (!v179)
    {

      if (!hasUnresolvedConflicts)
      {
        goto LABEL_476;
      }

      goto LABEL_475;
    }

    v180 = [v9 hasUnresolvedConflicts];

    if (hasUnresolvedConflicts)
    {
    }

    if (!v180)
    {
LABEL_470:
      v181 = fp_current_or_default_log();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v182 = [v9 hasUnresolvedConflicts];
      hasUnresolvedConflicts = self->_hasUnresolvedConflicts;
      self->_hasUnresolvedConflicts = v182;
LABEL_475:
    }
  }

LABEL_476:
  if (![v8 containsObject:@"isDownloadRequested"])
  {
    goto LABEL_490;
  }

  isDownloadRequested = [v9 isDownloadRequested];
  if (isDownloadRequested)
  {
    v4 = [(FPItem *)self isDownloadRequested];
    v5 = [v9 isDownloadRequested];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_484;
    }
  }

  v184 = [(FPItem *)self isDownloadRequested];
  if (!v184)
  {

    if (!isDownloadRequested)
    {
      goto LABEL_490;
    }

    goto LABEL_489;
  }

  v185 = [v9 isDownloadRequested];

  if (isDownloadRequested)
  {
  }

  if (!v185)
  {
LABEL_484:
    v186 = fp_current_or_default_log();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v187 = [v9 isDownloadRequested];
    isDownloadRequested = self->_isDownloadRequested;
    self->_isDownloadRequested = v187;
LABEL_489:
  }

LABEL_490:
  if (![v8 containsObject:@"sharingPermissions"])
  {
    goto LABEL_504;
  }

  sharingPermissions = [v9 sharingPermissions];
  if (sharingPermissions)
  {
    v4 = [(FPItem *)self sharingPermissions];
    v5 = [v9 sharingPermissions];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_498;
    }
  }

  v189 = [(FPItem *)self sharingPermissions];
  if (!v189)
  {

    if (!sharingPermissions)
    {
      goto LABEL_504;
    }

    goto LABEL_503;
  }

  v190 = [v9 sharingPermissions];

  if (sharingPermissions)
  {
  }

  if (!v190)
  {
LABEL_498:
    v191 = fp_current_or_default_log();
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v192 = [v9 sharingPermissions];
    sharingPermissions = self->_sharingPermissions;
    self->_sharingPermissions = v192;
LABEL_503:
  }

LABEL_504:
  if ([v8 containsObject:@"containerDisplayName"])
  {
    containerDisplayName = [v9 containerDisplayName];
    if (containerDisplayName)
    {
      v4 = [(FPItem *)self containerDisplayName];
      v5 = [v9 containerDisplayName];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_512:
        v196 = fp_current_or_default_log();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v197 = [v9 containerDisplayName];
        containerDisplayName = self->_containerDisplayName;
        self->_containerDisplayName = v197;
        goto LABEL_517;
      }
    }

    v194 = [(FPItem *)self containerDisplayName];
    if (v194)
    {
      v195 = [v9 containerDisplayName];

      if (containerDisplayName)
      {
      }

      if (!v195)
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

  if ([v8 containsObject:@"supportsMostRecentVersionDownloaded"])
  {
    v198 = [(FPItem *)self supportsMostRecentVersionDownloaded];
    if (v198 != [v9 supportsMostRecentVersionDownloaded])
    {
      v199 = fp_current_or_default_log();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v199 ofItem:?];
      }

      self->_supportsMostRecentVersionDownloaded = [v9 supportsMostRecentVersionDownloaded];
    }
  }

  if ([v8 containsObject:@"fp_appContainerBundleIdentifier"])
  {
    fp_appContainerBundleIdentifier = [v9 fp_appContainerBundleIdentifier];
    if (fp_appContainerBundleIdentifier)
    {
      v4 = [(FPItem *)self fp_appContainerBundleIdentifier];
      v5 = [v9 fp_appContainerBundleIdentifier];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_531;
      }
    }

    v201 = [(FPItem *)self fp_appContainerBundleIdentifier];
    if (!v201)
    {

      if (!fp_appContainerBundleIdentifier)
      {
        goto LABEL_537;
      }

      goto LABEL_536;
    }

    v202 = [v9 fp_appContainerBundleIdentifier];

    if (fp_appContainerBundleIdentifier)
    {
    }

    if (!v202)
    {
LABEL_531:
      v203 = fp_current_or_default_log();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v204 = [v9 fp_appContainerBundleIdentifier];
      fp_appContainerBundleIdentifier = self->_fp_appContainerBundleIdentifier;
      self->_fp_appContainerBundleIdentifier = v204;
LABEL_536:
    }
  }

LABEL_537:
  if (![v8 containsObject:@"fp_parentDomainIdentifier"])
  {
    goto LABEL_551;
  }

  fp_parentDomainIdentifier = [v9 fp_parentDomainIdentifier];
  if (fp_parentDomainIdentifier)
  {
    v4 = [(FPItem *)self fp_parentDomainIdentifier];
    v5 = [v9 fp_parentDomainIdentifier];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_545;
    }
  }

  v206 = [(FPItem *)self fp_parentDomainIdentifier];
  if (!v206)
  {

    if (!fp_parentDomainIdentifier)
    {
      goto LABEL_551;
    }

    goto LABEL_550;
  }

  v207 = [v9 fp_parentDomainIdentifier];

  if (fp_parentDomainIdentifier)
  {
  }

  if (!v207)
  {
LABEL_545:
    v208 = fp_current_or_default_log();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v209 = [v9 fp_parentDomainIdentifier];
    fp_parentDomainIdentifier = self->_fp_parentDomainIdentifier;
    self->_fp_parentDomainIdentifier = v209;
LABEL_550:
  }

LABEL_551:
  if ([v8 containsObject:@"cloudContainerIdentifier"])
  {
    cloudContainerIdentifier = [v9 cloudContainerIdentifier];
    if (cloudContainerIdentifier)
    {
      v4 = [(FPItem *)self cloudContainerIdentifier];
      v5 = [v9 cloudContainerIdentifier];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_559:
        v213 = fp_current_or_default_log();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v214 = [v9 cloudContainerIdentifier];
        cloudContainerIdentifier = self->_cloudContainerIdentifier;
        self->_cloudContainerIdentifier = v214;
        goto LABEL_564;
      }
    }

    v211 = [(FPItem *)self cloudContainerIdentifier];
    if (v211)
    {
      v212 = [v9 cloudContainerIdentifier];

      if (cloudContainerIdentifier)
      {
      }

      if (!v212)
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

  if ([v8 containsObject:@"isUbiquitous"])
  {
    v215 = [(FPItem *)self isUbiquitous];
    if (v215 != [v9 isUbiquitous])
    {
      v216 = fp_current_or_default_log();
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v216 ofItem:?];
      }

      self->_isUbiquitous = [v9 isUbiquitous];
    }
  }

  if ([v8 containsObject:@"isContainer"])
  {
    v217 = [(FPItem *)self isContainer];
    if (v217 != [v9 isContainer])
    {
      v218 = fp_current_or_default_log();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v218 ofItem:?];
      }

      self->_isContainer = [v9 isContainer];
    }
  }

  if ([v8 containsObject:@"isContainerPristine"])
  {
    v219 = [(FPItem *)self isContainerPristine];
    if (v219 != [v9 isContainerPristine])
    {
      v220 = fp_current_or_default_log();
      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v220 ofItem:?];
      }

      self->_isContainerPristine = [v9 isContainerPristine];
    }
  }

  if ([v8 containsObject:@"isTopLevelSharedItem"])
  {
    v221 = [(FPItem *)self isTopLevelSharedItem];
    if (v221 != [v9 isTopLevelSharedItem])
    {
      v222 = fp_current_or_default_log();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v222 ofItem:?];
      }

      self->_topLevelSharedItem = [v9 isTopLevelSharedItem];
    }
  }

  if ([v8 containsObject:@"isRecursivelyDownloaded"])
  {
    v223 = [(FPItem *)self isRecursivelyDownloaded];
    if (v223 != [v9 isRecursivelyDownloaded])
    {
      v224 = fp_current_or_default_log();
      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v224 ofItem:?];
      }

      self->_recursivelyDownloaded = [v9 isRecursivelyDownloaded];
    }
  }

  if ([v8 containsObject:@"conflictingVersions"])
  {
    conflictingVersions = [v9 conflictingVersions];
    if (conflictingVersions)
    {
      v4 = [(FPItem *)self conflictingVersions];
      v5 = [v9 conflictingVersions];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_598:
        v228 = fp_current_or_default_log();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
        {
          [FPItem overrideFields:ofItem:];
        }

        v229 = [v9 conflictingVersions];
        conflictingVersions = self->_conflictingVersions;
        self->_conflictingVersions = v229;
        goto LABEL_603;
      }
    }

    v226 = [(FPItem *)self conflictingVersions];
    if (v226)
    {
      v227 = [v9 conflictingVersions];

      if (conflictingVersions)
      {
      }

      if (!v227)
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

  if ([v8 containsObject:@"fileSystemFlags"])
  {
    v230 = [(FPItem *)self fileSystemFlags];
    if (v230 != [v9 fileSystemFlags])
    {
      v231 = fp_current_or_default_log();
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v231 ofItem:?];
      }

      self->_fileSystemFlags = [v9 fileSystemFlags];
    }
  }

  if ([v8 containsObject:@"extendedAttributes"])
  {
    extendedAttributes = [v9 extendedAttributes];
    if (extendedAttributes)
    {
      v4 = [(FPItem *)self extendedAttributes];
      v5 = [v9 extendedAttributes];
      if (([v4 isEqual:v5] & 1) == 0)
      {

        goto LABEL_617;
      }
    }

    v233 = [(FPItem *)self extendedAttributes];
    if (!v233)
    {

      if (!extendedAttributes)
      {
        goto LABEL_623;
      }

      goto LABEL_622;
    }

    v234 = [v9 extendedAttributes];

    if (extendedAttributes)
    {
    }

    if (!v234)
    {
LABEL_617:
      v235 = fp_current_or_default_log();
      if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
      {
        [FPItem overrideFields:ofItem:];
      }

      v236 = [v9 extendedAttributes];
      extendedAttributes = self->_extendedAttributes;
      self->_extendedAttributes = v236;
LABEL_622:
    }
  }

LABEL_623:
  if (![v8 containsObject:@"decorations"])
  {
    goto LABEL_637;
  }

  decorations = [v9 decorations];
  if (decorations)
  {
    v4 = [(FPItem *)self decorations];
    v5 = [v9 decorations];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      goto LABEL_631;
    }
  }

  v238 = [(FPItem *)self decorations];
  if (!v238)
  {

    if (!decorations)
    {
      goto LABEL_637;
    }

    goto LABEL_636;
  }

  v239 = [v9 decorations];

  if (decorations)
  {
  }

  if (!v239)
  {
LABEL_631:
    v240 = fp_current_or_default_log();
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:ofItem:];
    }

    v241 = [v9 decorations];
    decorations = self->_decorations;
    self->_decorations = v241;
LABEL_636:
  }

LABEL_637:
  if ([v8 containsObject:@"typeAndCreator"])
  {
    v242 = fp_current_or_default_log();
    if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
    {
      [FPItem overrideFields:v9 ofItem:?];
    }

    self->_typeAndCreator = [v9 typeAndCreator];
  }

  if ([v8 containsObject:@"contentPolicy"])
  {
    v243 = [(FPItem *)self contentPolicy];
    if (v243 != [v9 contentPolicy])
    {
      v244 = fp_current_or_default_log();
      if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v244 ofItem:?];
      }

      self->_contentPolicy = [v9 contentPolicy];
    }
  }

  if ([v8 containsObject:@"inheritedContentPolicy"])
  {
    v245 = [(FPItem *)self inheritedContentPolicy];
    if (v245 != [v9 inheritedContentPolicy])
    {
      v246 = fp_current_or_default_log();
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v246 ofItem:?];
      }

      self->_inheritedContentPolicy = [v9 inheritedContentPolicy];
    }
  }

  if ([v8 containsObject:@"effectiveContentPolicy"])
  {
    v247 = [(FPItem *)self effectiveContentPolicy];
    if (v247 != [v9 effectiveContentPolicy])
    {
      v248 = fp_current_or_default_log();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v248 ofItem:?];
      }

      self->_effectiveContentPolicy = [v9 effectiveContentPolicy];
    }
  }

  if ([v8 containsObject:@"isEvictedWithClone"])
  {
    v249 = [(FPItem *)self isEvictedWithClone];
    if (v249 != [v9 isEvictedWithClone])
    {
      v250 = fp_current_or_default_log();
      if (os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v250 ofItem:?];
      }

      self->_isEvictedWithClone = [v9 isEvictedWithClone];
    }
  }

  if ([v8 containsObject:@"isSyncPaused"])
  {
    v251 = [(FPItem *)self isSyncPaused];
    if (v251 != [v9 isSyncPaused])
    {
      v252 = fp_current_or_default_log();
      if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v252 ofItem:?];
      }

      self->_syncPaused = [v9 isSyncPaused];
    }
  }

  if ([v8 containsObject:@"supportsUploadWithFailOnConflict"])
  {
    v253 = [(FPItem *)self supportsUploadWithFailOnConflict];
    if (v253 != [v9 supportsUploadWithFailOnConflict])
    {
      v254 = fp_current_or_default_log();
      if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
      {
        [(FPItem *)v9 overrideFields:v254 ofItem:?];
      }

      self->_supportsUploadWithFailOnConflict = [v9 supportsUploadWithFailOnConflict];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(FPItem *)self providerDomainID];
  v5 = [(FPItem *)self itemIdentifier];
  v6 = [(FPItem *)self parentItemIdentifier];
  v7 = [(FPItem *)self filename];
  v8 = [(FPItem *)self typeIdentifier];
  v9 = [(FPItem *)v3 initWithProviderDomainID:v4 itemIdentifier:v5 parentItemIdentifier:v6 filename:v7 typeIdentifier:v8];

  v10 = [(FPItem *)self itemVersion];
  [(FPItem *)v9 setItemVersion:v10];

  return v9;
}

- (BOOL)fp_isCloudDocsContainer
{
  if (![(FPItem *)self isContainer])
  {
    return 0;
  }

  v3 = [(FPItem *)self providerItemIdentifier];
  if ([v3 isEqualToString:@"a1"])
  {
    v4 = [(FPItem *)self providerID];
    v5 = [v4 fp_isiCloudDriveIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTypeIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E6982C40] fp_cachedTypeWithIdentifier:a3];
  [(FPItem *)self setContentType:v4];
}

- (void)setContentType:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  contentType = obj->_contentType;
  obj->_contentType = v4;

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
      v7 = [v6 userInfo];
      v8 = self->_resolvedUserInfoCache;
      self->_resolvedUserInfoCache = v7;
    }

    resolvedUserInfoCache = self->_resolvedUserInfoCache;
  }

  v9 = resolvedUserInfoCache;

  return v9;
}

- (NSString)displayName
{
  v3 = [(FPItem *)self fileSystemFlags];
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
    v13 = [(FPItem *)self isFolder];
    v14 = v12;
    v15 = (v3 >> 4) & 1;
LABEL_6:
    v16 = [(NSString *)v14 fp_displayNameFromFilenameWithHiddenPathExtension:v15 isFolder:v13];
    goto LABEL_9;
  }

  displayName = self->_displayName;
  if (!displayName)
  {
    filename = self->_filename;
    v13 = [(FPItem *)self isFolder];
    v14 = filename;
    v15 = 1;
    goto LABEL_6;
  }

  v16 = displayName;
LABEL_9:
  v18 = v16;

  return v18;
}

- (void)setFilename:(id)a3
{
  v12 = a3;
  if (v12)
  {
    objc_storeStrong(&self->_filename, a3);
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

- (void)setProviderID:(id)a3
{
  v12 = a3;
  if (v12)
  {
    objc_storeStrong(&self->_providerID, a3);
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

- (void)setItemIdentifier:(id)a3
{
  v12 = a3;
  if (v12)
  {
    objc_storeStrong(&self->_itemIdentifier, a3);
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

- (void)_evaluateTypes:(id)a3
{
  v4 = [(UTType *)self->_contentType conformsToType:*MEMORY[0x1E6982F30]];
  v5 = [(UTType *)self->_contentType conformsToType:*MEMORY[0x1E6982D80]];
  v6 = 1;
  if (!v4)
  {
    v6 = [(FPItem *)self isFlattenedPackage];
  }

  obj = self;
  objc_sync_enter(obj);
  obj->_isFolder = v5 && !v4;
  obj->_isPackage = v6;
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

- (void)setProviderDomainID:(id)a3
{
  v4 = a3;
  v5 = [v4 fp_toProviderID];
  providerID = self->_providerID;
  self->_providerID = v5;

  v7 = [v4 fp_toDomainIdentifier];

  domainIdentifier = self->_domainIdentifier;
  self->_domainIdentifier = v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPItem *)self isEqualToItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_9;
  }

  itemIdentifier = self->_itemIdentifier;
  v7 = [(FPItem *)v4 itemIdentifier];
  LODWORD(itemIdentifier) = [(NSString *)itemIdentifier isEqualToString:v7];

  if (!itemIdentifier)
  {
    goto LABEL_11;
  }

  domainIdentifier = self->_domainIdentifier;
  v9 = [(FPItem *)v5 domainIdentifier];
  v10 = v9;
  if (domainIdentifier == v9)
  {
  }

  else
  {
    v11 = [(FPItem *)v5 domainIdentifier];
    if (!v11)
    {

      goto LABEL_11;
    }

    v12 = v11;
    v13 = self->_domainIdentifier;
    v14 = [(FPItem *)v5 domainIdentifier];
    LODWORD(v13) = [(NSString *)v13 isEqualToString:v14];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  providerID = self->_providerID;
  v16 = [(FPItem *)v5 providerID];
  LOBYTE(providerID) = [(NSString *)providerID isEqualToString:v16];

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

- (id)descriptionForFPCTL:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  v6 = v5;
  if (!v3)
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
  if (v3)
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
  if (v3)
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
      v11 = [(NSString *)displayName fp_obfuscatedFilename];
      [v6 appendFormat:@" l:%@", v11];
    }

    else
    {
      v11 = [(NSString *)self->_filename fp_obfuscatedFilename];
      [v6 appendFormat:@" f:%@", v11];
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

  v17 = [(FPItem *)self humanReadableCapabilities];
  [v6 appendFormat:@" cap:%@", v17];

  [(NSDate *)self->_creationDate timeIntervalSince1970];
  [v6 appendFormat:@" bt:%lld", v18];
  [(NSDate *)self->_contentModificationDate timeIntervalSince1970];
  [v6 appendFormat:@" mt:%lld", v19];
  if ([(FPItem *)self isItemPinned]|| [(FPItem *)self isPinnedSubitem])
  {
    v20 = [(FPItem *)self isPinnedSubitem];
    v21 = 114;
    if (v20)
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
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = v24;
    if (self->_sharedByCurrentUser)
    {
      [v24 addObject:@"shared-by-me"];
    }

    else
    {
      ownerNameComponents = self->_ownerNameComponents;
      if (ownerNameComponents)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = [(NSPersonNameComponents *)ownerNameComponents givenName];
        v29 = [v27 stringWithFormat:@"shared-by:%@", v28];

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
        v32 = [(NSPersonNameComponents *)mostRecentEditorNameComponents givenName];
        v33 = [v31 stringWithFormat:@"mod-by:%@", v32];

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

  v35 = [(FPItem *)self tags];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [(FPItem *)self tags];
    v38 = [v37 fp_map:&__block_literal_global_2];
    v39 = [v38 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" tags:[%@]", v39];
  }

  favoriteRank = self->_favoriteRank;
  if (favoriteRank)
  {
    [v6 appendFormat:@" fr:%llu", -[NSNumber unsignedLongLongValue](favoriteRank, "unsignedLongLongValue")];
  }

  if (!v3)
  {
    v41 = self;
    objc_sync_enter(v41);
    v42 = v41->_fileURL;
    objc_sync_exit(v41);

    if (v42)
    {
      v43 = [(NSURL *)v42 fp_shortDescription];
      [v6 appendFormat:@" url:%@", v43];
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

  v52 = [(FPItem *)self typeIdentifier];
  [v6 appendFormat:@" uti:%@", v52];

  symlinkTargetPath = self->_symlinkTargetPath;
  if (symlinkTargetPath)
  {
    v54 = [(NSString *)symlinkTargetPath fp_obfuscatedPath];
    [v6 appendFormat:@" tg:%@", v54];
  }

  if (self->_uploading)
  {
    v55 = self;
    objc_sync_enter(v55);
    v56 = v55->_progress;
    objc_sync_exit(v55);

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
    v62 = self;
    objc_sync_enter(v62);
    v63 = v62->_progress;
    objc_sync_exit(v62);

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

  if (v3)
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

- (void)setTagData:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    tags = self->_tags;
    self->_tags = 0;

    v4 = 0;
  }

  v6 = FPGetTagsFromTagsData(v4);
  v7 = self->_tags;
  self->_tags = v6;
}

- (int64_t)localizedStandardTagsCompare:(id)a3
{
  v4 = a3;
  v5 = [(FPItem *)self tags];
  v6 = [v4 tags];
  v7 = [v5 count];
  if (v7 >= [v6 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [v5 objectAtIndexedSubscript:v11];
      v14 = [v6 objectAtIndexedSubscript:v11];
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
    if ([v5 count] && objc_msgSend(v6, "count"))
    {
      v16 = [v5 count];
      if (v16 >= [v6 count])
      {
        v17 = [v5 count];
        v15 = v17 != [v6 count];
      }

      else
      {
        v15 = -1;
      }
    }

    else if ([v5 count] || objc_msgSend(v6, "count"))
    {
      if ([v5 count])
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
    v3 = versionIdentifier;
  }

  else
  {
    v3 = [(NSFileProviderItemVersion *)self->_itemVersion contentVersion];
  }

  return v3;
}

- (void)setFileURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fileURL = obj->_fileURL;
  obj->_fileURL = v4;

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

  v5 = [(FPItem *)self mostRecentEditorNameComponents];

  if (v5)
  {
    return @"com.apple.FileProvider.ModifiedByOther";
  }

LABEL_2:
  if ([(FPItem *)self isSharedByCurrentUser])
  {
    return @"com.apple.FileProvider.SharedByMe";
  }

  v4 = [(FPItem *)self ownerNameComponents];

  if (v4)
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

- (id)ubiquitousResourceKeysDiffAgainstItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(FPItem *)self isCloudItem];
  if (v6 != [v4 isCloudItem])
  {
    [v5 addObject:*MEMORY[0x1E695DBD8]];
  }

  v7 = [(FPItem *)self isUploaded];
  if (v7 != [v4 isUploaded])
  {
    [v5 addObject:*MEMORY[0x1E695DCD8]];
  }

  v8 = [(FPItem *)self isUploading];
  if (v8 != [v4 isUploading])
  {
    [v5 addObject:*MEMORY[0x1E695DCE0]];
  }

  v9 = [(FPItem *)self isDownloading];
  if (v9 != [v4 isDownloading])
  {
    [v5 addObject:*MEMORY[0x1E695DCB8]];
  }

  v10 = [(FPItem *)self _downloadingStatus];
  v11 = [v4 _downloadingStatus];
  v12 = v10;
  v13 = v11;
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
    [v5 addObject:*MEMORY[0x1E695DC98]];
  }

LABEL_16:
  v16 = [(FPItem *)self uploadingError];
  v17 = [v4 uploadingError];
  v18 = v16;
  v19 = v17;
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
    [v5 addObject:*MEMORY[0x1E695DCF0]];
  }

LABEL_23:
  v22 = [(FPItem *)self downloadingError];
  v23 = [v4 downloadingError];
  v24 = v22;
  v25 = v23;
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
    [v5 addObject:*MEMORY[0x1E695DC80]];
  }

LABEL_30:
  v28 = [(FPItem *)self ownerNameComponents];
  v29 = [v4 ownerNameComponents];
  v30 = v28;
  v31 = v29;
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
    [v5 addObject:*MEMORY[0x1E695DD10]];
  }

LABEL_37:
  v34 = [(FPItem *)self mostRecentEditorNameComponents];
  v35 = [v4 mostRecentEditorNameComponents];
  v36 = v34;
  v37 = v35;
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
    [v5 addObject:*MEMORY[0x1E695DD08]];
  }

LABEL_44:
  v40 = [(FPItem *)self hasUnresolvedConflicts];
  v41 = [v4 hasUnresolvedConflicts];
  v42 = v40;
  v43 = v41;
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
    [v5 addObject:*MEMORY[0x1E695DCA8]];
  }

LABEL_51:
  v46 = [(FPItem *)self containerDisplayName];
  v47 = [v4 containerDisplayName];
  v48 = v46;
  v49 = v47;
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
    [v5 addObject:*MEMORY[0x1E695DC70]];
  }

LABEL_58:
  v52 = [(FPItem *)self isDownloadRequested];
  v53 = [v4 isDownloadRequested];
  v54 = v52;
  v55 = v53;
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
    [v5 addObject:*MEMORY[0x1E695DC78]];
  }

LABEL_65:
  v58 = [(FPItem *)self isShared];
  if (v58 != [v4 isShared])
  {
    [v5 addObject:*MEMORY[0x1E695DCC8]];
  }

  if ([(FPItem *)self isShared])
  {
    if ([v4 isShared])
    {
      v59 = [(FPItem *)self isSharedByCurrentUser];
      if (v59 != [v4 isSharedByCurrentUser])
      {
        [v5 addObject:*MEMORY[0x1E695DD00]];
      }
    }
  }

  if ([(FPItem *)self isShared])
  {
    if ([v4 isShared])
    {
      v60 = [(FPItem *)self isWritable];
      if (v60 != [v4 isWritable])
      {
        [v5 addObject:*MEMORY[0x1E695DCF8]];
      }
    }
  }

  v61 = [(FPItem *)self sharingPermissions];
  v62 = [v4 sharingPermissions];
  v63 = v61;
  v64 = v62;
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
    [v5 addObject:*MEMORY[0x1E695DD20]];
  }

LABEL_82:
  v67 = [(FPItem *)self isSyncPaused];
  if (v67 != [v4 isSyncPaused])
  {
    [v5 addObject:*MEMORY[0x1E695DCD0]];
  }

  v68 = [(FPItem *)self supportsUploadWithFailOnConflict];
  if (v68 != [v4 supportsUploadWithFailOnConflict])
  {
    [v5 addObject:*MEMORY[0x1E695DCE8]];
  }

  v69 = [MEMORY[0x1E695DFD8] setWithArray:v5];

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
        v3 = [(FPItem *)self isMostRecentVersionDownloaded];
        v4 = MEMORY[0x1E695DC88];
        if (!v3)
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
  v3 = [(FPItem *)self itemIdentifier];
  if ([v3 hasPrefix:@"__fp/"])
  {
    v4 = [(FPItem *)self formerIdentifier];
    if (v4)
    {
      v5 = [(FPItem *)self formerIdentifier];
      v6 = [v5 hasPrefix:@"__fp/"] ^ 1;
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

- (void)itemIsSupportedSearchScopeWithCachePolicy:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (![(FPItem *)self isFolder]|| [(FPItem *)self exclusionType]|| [(FPItem *)self isIgnoreRoot])
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FPItem_itemIsSupportedSearchScopeWithCachePolicy_completionHandler___block_invoke;
    v7[3] = &unk_1E793A150;
    v8 = v6;
    [FPProviderDomain fetchProviderDomainForItem:self cachePolicy:a3 completionHandler:v7];
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

- (id)fp_valueForKeyPath:(id)a3
{
  v13 = 0;
  v14 = 0;
  v4 = [a3 fp_splitKeyPathInProperty:&v14 remainder:&v13];
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
  v3 = [(FPItem *)self parentItemID];
  v4 = [v3 isDiskIdentifier];

  if (v4)
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
  v2 = [(FPItem *)self providerParentItemID];
  v3 = [v2 identifier];

  return v3;
}

- (id)scopedSearchQueryUnderItem
{
  if ([(FPItem *)self isFolder])
  {
    v3 = [NSFileProviderSearchQuery alloc];
    v4 = [(FPItem *)self itemID];
    v5 = [(FPItem *)self providerItemID];
    v6 = [(NSFileProviderSearchQuery *)v3 initWithSearchScopedToItemID:v4 alternateItemID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)coreSpotlightIdentifier
{
  v3 = [(FPItem *)self formerIdentifier];

  if (v3)
  {
    [(FPItem *)self formerItemID];
  }

  else
  {
    [(FPItem *)self itemID];
  }
  v4 = ;
  v5 = [v4 coreSpotlightIdentifier];

  return v5;
}

+ (id)appLibraryFromContainerItem:(id)a3 documentsItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"FPItem+FPAppLibraryCollection.m" lineNumber:20 description:@"containerItem must not be nil"];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:a1 file:@"FPItem+FPAppLibraryCollection.m" lineNumber:21 description:@"documentsItem must not be nil"];

LABEL_3:
  if ([v7 fp_isCloudDocsContainer])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 copy];
    v12 = [v9 fileURL];
    [v11 setFileURL:v12];

    v13 = [v9 itemIdentifier];
    [v11 setItemIdentifier:v13];

    [v11 setFileID:{objc_msgSend(v9, "fileID")}];
    v14 = [v9 formerIdentifier];
    [v11 setFormerIdentifier:v14];

    v15 = [v9 creationDate];
    [v11 setCreationDate:v15];

    v16 = [v9 lastUsedDate];
    [v11 setLastUsedDate:v16];

    v17 = [v9 contentModificationDate];
    [v11 setContentModificationDate:v17];

    [v11 setRecursivelyDownloaded:{objc_msgSend(v9, "isRecursivelyDownloaded")}];
    [v11 setDownloaded:{objc_msgSend(v9, "isDownloaded")}];
    [v11 setDownloading:{objc_msgSend(v9, "isDownloading")}];
    [v11 setCapabilities:{objc_msgSend(v9, "capabilities")}];
    v18 = [v9 favoriteRank];
    [v11 setFavoriteRank:v18];

    v19 = [v9 childItemCount];
    [v11 setChildItemCount:v19];

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
  v3 = [(FPItem *)self isValidContainerForAppLibrary];
  if (v3)
  {
    v4 = [(FPItem *)self fileURL];
    v5 = [v4 lastPathComponent];
    v6 = [v5 isEqualToString:@"Documents"];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isValidContainerForAppLibrary
{
  if ([(FPItem *)self fp_isCloudDocsContainer]|| ![(FPItem *)self isContainer])
  {
    return 0;
  }

  v3 = [(FPItem *)self fp_appContainerBundleIdentifier];
  if ([v3 length])
  {
    v4 = [(FPItem *)self displayName];
    if ([v4 length])
    {
      v5 = [(FPItem *)self fileURL];
      v6 = v5 != 0;
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
  v3 = [(FPItem *)self spotlightDomainIdentifier];
  if (v3)
  {
    v4 = v3;
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
    v125 = [(FPItem *)self coreSpotlightIdentifier];
    v124 = [(FPItem *)self providerID];
    v123 = [(FPItem *)self domainIdentifier];
    v122 = [(FPItem *)self filename];
    v121 = [(FPItem *)self filename];
    v120 = [(FPItem *)self displayName];
    v119 = [(FPItem *)self typeIdentifier];
    v8 = [(FPItem *)self formerIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [(FPItem *)self formerIdentifier];
      v11 = [(FPItem *)self itemID];
      v12 = [v11 identifier];
      v13 = [v10 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v132 = 0;
        v14 = [(FPItem *)self itemIdentifier];
        v15 = [v14 fp_getParsedDiskIdentifier:&v132];

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
    v19 = [(FPItem *)self contentType];
    if (v19 && (!-[FPItem isCloudItem](self, "isCloudItem") || -[FPItem isDownloaded](self, "isDownloaded")) && (([v19 conformsToType:*MEMORY[0x1E6982E30]] & 1) != 0 || objc_msgSend(v19, "conformsToType:", *MEMORY[0x1E6982EE8])))
    {
      v20 = MEMORY[0x1E695E118];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(FPItem *)self contentType];
    v22 = [v21 _localizedDescriptionDictionary];

    v84 = v20;
    if (v22)
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
      v118 = [[v23 alloc] initWithLocalizedStrings:v22];
    }

    else
    {
      v118 = 0;
    }

    v117 = [(FPItem *)self creationDate];
    v116 = [(FPItem *)self contentModificationDate];
    v25 = [(FPItem *)self tags];
    v82 = v25;
    v83 = v22;
    if ([v25 count])
    {
      v115 = [v25 fp_map:&__block_literal_global_36];
      v26 = [v25 count];
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __44__FPItem_CSSearchableItem__toSearchableItem__block_invoke_2;
      v130[3] = &unk_1E793CF78;
      v131 = v25;
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

    v113 = [(FPItem *)self lastUsedDate];
    v112 = [(FPItem *)self favoriteRank];
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploaded](self, "isUploaded")}];
    v111 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploaded](self, "isUploaded")}];

    v110 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUploading](self, "isUploading")}];
    v32 = [(FPItem *)self uploadingError];
    v109 = [FPSearchableItemError stringFromError:v32];

    v108 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isDownloaded](self, "isDownloaded")}];
    v107 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isDownloading](self, "isDownloading")}];
    v33 = [(FPItem *)self downloadingError];
    v106 = [FPSearchableItemError stringFromError:v33];

    v105 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isRecursivelyDownloaded](self, "isRecursivelyDownloaded")}];
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FPItem capabilities](self, "capabilities")}];
    v103 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isPinned](self, "isPinned")}];
    v102 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isInPinnedFolder](self, "isInPinnedFolder")}];
    v34 = [(FPItem *)self itemVersion];
    v79 = v34;
    if (v34 && (v35 = v34, ([v34 isEmpty] & 1) == 0))
    {
      v100 = [FPSearchableItemVersion stringFromVersion:v35];
      v101 = 0;
    }

    else
    {
      v36 = [(FPItem *)self versionIdentifier];

      if (v36)
      {
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        v38 = [(FPItem *)self versionIdentifier];
        v39 = [v38 base64EncodedDataWithOptions:0];
        v101 = [v37 initWithData:v39 encoding:4];

        v100 = 0;
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }
    }

    v99 = [(FPItem *)self providerID];
    v98 = [(FPItem *)self fp_appContainerBundleIdentifier];
    v97 = [(FPItem *)self cloudContainerIdentifier];
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isContainer](self, "isContainer")}];
    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isContainerPristine](self, "isContainerPristine")}];
    v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isUbiquitous](self, "isUbiquitous")}];
    v40 = [(FPItem *)self fp_parentDomainIdentifier];

    if (v40)
    {
      v93 = [(FPItem *)self fp_parentDomainIdentifier];
    }

    else
    {
      v93 = 0;
    }

    v41 = [(FPItem *)self userInfo];
    v78 = v41;
    if ([v41 count])
    {
      v128 = 0;
      v129 = 0;
      v42 = FPEncodeUserInfo(v41, &v129, &v128);
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

    v45 = [(FPItem *)self documentSize];
    v46 = v45;
    if (v45)
    {
      v92 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v45, "unsignedIntegerValue") / 1000000.0}];
    }

    else
    {
      v92 = 0;
    }

    v91 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isShared](self, "isShared")}];
    v90 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isSharedByCurrentUser](self, "isSharedByCurrentUser")}];
    v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem fp_isLastModifiedByCurrentUser](self, "fp_isLastModifiedByCurrentUser")}];
    v47 = [(FPItem *)self preformattedOwnerName];

    if (v47)
    {
      v88 = [(FPItem *)self preformattedOwnerName];
    }

    else
    {
      v49 = [(FPItem *)self ownerNameComponents];

      if (v49)
      {
        v48 = objc_opt_new();
        v50 = [(FPItem *)self ownerNameComponents];
        v88 = [v48 stringFromPersonNameComponents:v50];

        goto LABEL_55;
      }

      v88 = 0;
    }

    v48 = 0;
LABEL_55:
    v51 = [(FPItem *)self preformattedMostRecentEditorName];

    v77 = v46;
    if (v51)
    {
      v76 = v48;
      v87 = [(FPItem *)self preformattedMostRecentEditorName];
    }

    else
    {
      v52 = [(FPItem *)self mostRecentEditorNameComponents];

      if (v52)
      {
        if (!v48)
        {
          v48 = objc_opt_new();
        }

        v53 = [(FPItem *)self mostRecentEditorNameComponents];
        v76 = v48;
        v87 = [v48 stringFromPersonNameComponents:v53];
      }

      else
      {
        v76 = v48;
        v87 = 0;
      }
    }

    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isMostRecentVersionDownloaded](self, "isMostRecentVersionDownloaded")}];
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPItem isTrashed](self, "isTrashed")}];
    v54 = [(FPItem *)self fileURL];
    v55 = [(FPItem *)self fileURL];
    v56 = _CFURLPromiseCopyPhysicalURL();

    v80 = v19;
    if (v56)
    {
      v57 = v56;

      v54 = v57;
    }

    v58 = MEMORY[0x1E695E118];
    v59 = v54;
    v60 = [(FPItem *)self parentFormerIdentifier];
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = [(FPItem *)self parentItemIdentifier];
    }

    v63 = v62;

    v64 = [(FPItem *)self capabilities];
    v65 = [MEMORY[0x1E696AD98] numberWithBool:(v64 >> 6) & 1];
    if ([(FPItem *)self isTopLevelSharedItem])
    {
      v66 = v58;
    }

    else
    {
      v66 = 0;
    }

    v67 = [(FPItem *)self collaborationIdentifier];
    [v7 setFileItemID:v125];
    [v7 setFileProviderID:v124];
    [v7 setFileProviderDomainIdentifier:v123];
    [v7 setFilename:v122];
    [v7 setAttribute:v121 forKey:@"FPFilename"];
    [v7 setDisplayName:v120];
    [v7 setContentType:v119];
    v81 = v16;
    [v7 setAttribute:v16 forKey:@"FPOnDiskIdentifier"];
    [v7 setEligibleForPhotosProcessing:v84];
    [v7 setKind:v118];
    [v7 setContentCreationDate:v117];
    [v7 setContentModificationDate:v116];
    [v7 setUserTags:v115];
    [v7 setAttribute:v114 forKey:@"_kMDItemUserTags"];
    [v7 setLastUsedDate:v113];
    [v7 setFavoriteRank:v112];
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
    [v7 setBundleID:v99];
    [v7 setAttribute:v98 forKey:@"FPAppContainerBundleID"];
    [v7 setAttribute:v97 forKey:@"FPCloudContainerID"];
    [v7 setAttribute:v96 forKey:@"FPIsContainer"];
    [v7 setAttribute:v95 forKey:@"FPIsContainerPristine"];
    [v7 setAttribute:v94 forKey:@"FPIsUbiquitous"];
    [v7 setAttribute:v93 forKey:@"FPParentDomainID"];
    [v7 setAttribute:v127 forKey:@"FPUserInfoKeys"];
    [v7 setAttribute:v126 forKey:@"FPUserInfoValues"];
    [v7 setFileSize:v92];
    [v7 setShared:v91];
    [v7 setUserOwned:v90];
    [v7 setAttribute:v89 forKey:@"FPLastModifiedByCurrentUser"];
    [v7 setOwnerName:v88];
    [v7 setLastEditorName:v87];
    [v7 setAttribute:v86 forKey:@"FPMostRecentVersionDownloaded"];
    [v7 setTrashed:v85];
    [v7 setContentURL:v59];
    [v7 setAttribute:v63 forKey:@"FPParentFileItemID"];
    [v7 setAttribute:v65 forKey:@"FPEvictable"];
    [v7 setAttribute:v66 forKey:@"FPIsTopLevelSharedItem"];
    [v7 setAttribute:v67 forKey:@"FPCollaborationIdentifier"];
    v68 = [(FPItem *)self fp_spotlightSubDomainIdentifier];
    if (v68)
    {
      v69 = [v4 stringByAppendingPathExtension:v68];

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
    v73 = [(FPItem *)self coreSpotlightIdentifier];
    v17 = [v72 initWithUniqueIdentifier:v73 domainIdentifier:v4 attributeSet:v7];

    v74 = [MEMORY[0x1E695DF00] distantFuture];
    [v17 setExpirationDate:v74];

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

- (FPItem)initWithSearchableItem:(id)a3
{
  v4 = a3;
  v5 = [[_CSSearchableItemAdapter alloc] initWithSearchableItem:v4];

  v6 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  v7 = [v6 fileProviderID];
  if (![v7 length])
  {
    goto LABEL_14;
  }

  v8 = [(_CSSearchableItemAdapter *)v5 typeIdentifier];
  if (![v8 length])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v9 = [(_CSSearchableItemAdapter *)v5 filename];
  if (![v9 length])
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = [(_CSSearchableItemAdapter *)v5 parentItemIdentifier];
  if (![v10 length])
  {

    goto LABEL_12;
  }

  v11 = [(_CSSearchableItemAdapter *)v5 itemIdentifier];
  v12 = [v11 length];

  if (!v12)
  {
LABEL_15:
    v30 = [(_CSSearchableItemAdapter *)v5 typeIdentifier];
    v23 = [v30 length];

    if (v23)
    {
      v23 = [(_CSSearchableItemAdapter *)v5 contentType];
    }

    v24 = [(_CSSearchableItemAdapter *)v5 attributeSet];
    v25 = [v24 fileProviderID];
    v26 = [(_CSSearchableItemAdapter *)v5 itemIdentifier];
    v27 = [(_CSSearchableItemAdapter *)v5 filename];
    __FILEPROVIDER_BAD_ITEM__(v5, v25, v26, v27, v23, 0, 0);
    v22 = 0;
    goto LABEL_18;
  }

  v13 = [FPItem alloc];
  v14 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  v15 = [v14 fileProviderID];
  v16 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  v17 = [v16 fileProviderDomainIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v20 = [(_CSSearchableItemAdapter *)v5 attributeSet];
  v21 = [v20 domainIdentifier];
  v22 = [(FPItem *)v13 initWithVendorItem:v5 provider:v15 domain:v19 spotlightDomainIdentifier:v21 extensionCapabilities:-1 useFPFS:0];

  [(FPItem *)v22 setEnumerationOrigin:2];
  if ([(FPItem *)v22 isFolder])
  {
    v23 = [(FPItem *)v22 filename];
    v24 = [(FPItem *)v22 parentItemIdentifier];
    v25 = [(FPItem *)v22 providerID];
    v26 = [(_CSSearchableItemAdapter *)v5 attributeSet];
    v27 = [v26 contentURL];
    v28 = [(FPItem *)v22 isContainer];
    v29 = [(FPItem *)v22 cloudContainerIdentifier];
    [(FPItem *)v22 setFolderType:CalculateFolderType(v23, v24, v25, v27, v28, v29)];

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
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 componentsSeparatedByString:@"-"];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v2 stringWithFormat:@"%@/%@", @"__fp", v6];

  return v7;
}

+ (id)generatePlaceholderIdentifierWithOriginalID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 componentsSeparatedByString:@"-"];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v3 stringWithFormat:@"%@/%@/%@", @"__fp", v9, v5];

  return v10;
}

+ (id)temporaryPlaceholderFromItem:(id)a3
{
  v3 = [a3 copyAsPending];
  [v3 setFavoriteRank:0];
  [v3 setUploading:0];
  [v3 setDownloading:0];
  [v3 setFp_lastModifiedByCurrentUser:0];
  [v3 setOwnerNameComponents:0];
  [v3 setMostRecentEditorNameComponents:0];
  [v3 setEnumerationOrigin:0];
  [v3 setFp_spotlightSubDomainIdentifier:0];
  [v3 setContainerDisplayName:0];
  [v3 setFp_appContainerBundleIdentifier:0];
  [v3 setFp_parentDomainIdentifier:0];
  [v3 setCloudContainerIdentifier:0];
  [v3 setFileURL:0];
  [v3 setShared:0];
  [v3 setSharedByCurrentUser:0];
  [v3 setState:5];

  return v3;
}

+ (id)placeholderWithCopyOfExistingItem:(id)a3 lastUsageUpdatePolicy:(unint64_t)a4 underParent:(id)a5 inProviderDomainID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a1 temporaryPlaceholderFromItem:v12];
  v14 = [a1 generatePlaceholderIdentifier];
  [v13 setItemIdentifier:v14];

  v15 = [v12 itemIdentifier];

  [v13 setPlaceholderIdentifier:v15];
  [v13 setParentItemIdentifier:v11];

  if (@"NSFileProviderTrashContainerItemIdentifier" == v11)
  {
    [v13 setTrashed:1];
  }

  [v13 setProviderDomainID:v10];
  if (a4)
  {
    if (a4 == 2)
    {
      v16 = [MEMORY[0x1E695DF00] date];
      [v13 setLastUsedDate:v16];
    }
  }

  else
  {
    [v13 setLastUsedDate:0];
  }

  return v13;
}

+ (id)genericArchivePlaceholderUnderParent:(id)a3 inProviderDomainID:(id)a4 withArchiveFormat:(unint64_t)a5
{
  v23 = 0;
  v7 = a4;
  v8 = a3;
  v9 = [FPArchiveOperation extensionForArchiveFormat:a5 utType:&v23];
  v10 = v23;
  v18 = FPLoc(@"ARCHIVE_FILENAME", v11, v12, v13, v14, v15, v16, v17, v22);
  v19 = [v18 stringByAppendingPathExtension:v9];
  v20 = [FPItem placeholderWithName:v19 contentType:v10 contentAccessDate:0 underParent:v8 inProviderDomainID:v7];

  return v20;
}

+ (id)archivePlaceholderForItem:(id)a3 underParent:(id)a4 inProviderDomainID:(id)a5 withArchiveFormat:(unint64_t)a6
{
  v22 = 0;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [FPArchiveOperation extensionForArchiveFormat:a6 utType:&v22];
  v13 = v22;
  v14 = [v11 filename];
  v15 = [v14 fp_displayNameFromFilenameWithHiddenPathExtension:1 isFolder:{objc_msgSend(v11, "isFolder")}];
  v16 = [v15 fp_filenameFromDisplayNameWithExtension:v12];

  v17 = [FPItem placeholderWithName:v16 contentType:v13 contentAccessDate:0 underParent:v10 inProviderDomainID:v9];

  v18 = [v11 displayName];
  [v17 setDisplayName:v18];

  v19 = [v11 itemIdentifier];
  [v17 setPlaceholderIdentifier:v19];

  [v17 setCapabilities:{objc_msgSend(v11, "capabilities")}];
  [v17 setEnumerationOrigin:{objc_msgSend(v11, "enumerationOrigin")}];
  v20 = [v11 fileSystemFlags];

  [v17 setFileSystemFlags:v20];

  return v17;
}

+ (id)placeholderWithName:(id)a3 contentType:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [FPItem alloc];
  v18 = [a1 generatePlaceholderIdentifier];
  v19 = [(FPItem *)v17 initWithProviderDomainID:v13 itemIdentifier:v18 parentItemIdentifier:v14 filename:v16 contentType:v15];

  if (v12)
  {
    [(FPItem *)v19 setLastUsedDate:v12];
  }

  v20 = [MEMORY[0x1E695DF00] date];
  [(FPItem *)v19 setCreationDate:v20];

  v21 = [(FPItem *)v19 creationDate];
  [(FPItem *)v19 setContentModificationDate:v21];

  [(FPItem *)v19 setState:5];

  return v19;
}

+ (id)placeholderWithName:(id)a3 typeIdentifier:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v11 = MEMORY[0x1E6982C40];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [v11 fp_cachedTypeWithIdentifier:a4];
  v17 = [FPItem placeholderWithName:v15 contentType:v16 contentAccessDate:v14 underParent:v13 inProviderDomainID:v12];

  return v17;
}

+ (id)placeholderWithName:(id)a3 isFolder:(BOOL)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v7 = MEMORY[0x1E6982DC8];
  if (!a4)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [a1 placeholderWithName:a3 contentType:*v7 contentAccessDate:a5 underParent:a6 inProviderDomainID:a7];
}

- (void)_coreSpotlightAttributeForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"kMDItemIsTrashed"])
  {
    v5 = @"isTrashed";
LABEL_8:
    v6 = [(FPItem *)self valueForKey:v5];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"kMDItemDisplayName"])
  {
    v5 = @"displayName";
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"FPDomainIdentifier"] || objc_msgSend(v4, "isEqualToString:", @"kMDItemFileProviderID"))
  {
    v5 = @"providerDomainID";
    goto LABEL_8;
  }

  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(FPItem(MDSimpleQueryEvaluator) *)v4 _coreSpotlightAttributeForKey:v8];
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