@interface _CSSearchableItemAdapter
- (BOOL)fp_isContainer;
- (BOOL)fp_isContainerPristine;
- (BOOL)fp_isLastModifiedByCurrentUser;
- (BOOL)fp_isUbiquitous;
- (BOOL)isCollaborationInvitation;
- (BOOL)isDownloaded;
- (BOOL)isDownloading;
- (BOOL)isInPinnedFolder;
- (BOOL)isMostRecentVersionDownloaded;
- (BOOL)isPinned;
- (BOOL)isRecursivelyDownloaded;
- (BOOL)isShared;
- (BOOL)isSharedByCurrentUser;
- (BOOL)isTopLevelSharedItem;
- (BOOL)isTrashed;
- (BOOL)isUploaded;
- (BOOL)isUploading;
- (NSData)originatorInfo;
- (NSData)tagData;
- (NSData)versionIdentifier;
- (NSDate)contentModificationDate;
- (NSDate)creationDate;
- (NSDate)lastUsedDate;
- (NSDictionary)userInfo;
- (NSError)downloadingError;
- (NSError)uploadingError;
- (NSFileProviderItemVersion)itemVersion;
- (NSNumber)childItemCount;
- (NSNumber)documentSize;
- (NSNumber)favoriteRank;
- (NSString)displayName;
- (NSString)filename;
- (NSString)fp_cloudContainerIdentifier;
- (NSString)fp_domainIdentifier;
- (NSString)fp_parentDomainIdentifier;
- (NSString)itemIdentifier;
- (NSString)parentItemIdentifier;
- (NSString)preformattedMostRecentEditorName;
- (NSString)preformattedOwnerName;
- (NSString)providerIdentifier;
- (NSString)typeIdentifier;
- (UTType)contentType;
- (_CSSearchableItemAdapter)initWithSearchableItem:(id)item;
- (id)collaborationIdentifier;
- (id)containerSubitemCount;
- (id)formerIdentifier;
- (id)fp_appContainerBundleIdentifier;
- (id)sharingCurrentUserPermissions;
- (id)sharingCurrentUserRole;
- (id)tags;
- (unint64_t)capabilities;
- (void)downloadingError;
- (void)uploadingError;
@end

@implementation _CSSearchableItemAdapter

- (NSString)typeIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  contentType = [attributeSet contentType];

  return contentType;
}

- (NSString)filename
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [attributeSet attributeForKey:@"FPFilename"];

  if (v4)
  {
    filename = v4;
  }

  else
  {
    item = [(_CSSearchableItemAdapter *)self item];
    attributeSet2 = [item attributeSet];
    filename = [attributeSet2 filename];
  }

  return filename;
}

- (NSString)parentItemIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPParentFileItemID"];

  return v3;
}

- (NSString)itemIdentifier
{
  attributeSet = [(CSSearchableItem *)self->_item attributeSet];
  v4 = [attributeSet attributeForKey:@"FPOnDiskIdentifier"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] fp_fromParsedDiskIdentifier:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    uniqueIdentifier = [(CSSearchableItem *)self->_item uniqueIdentifier];
    attributeSet2 = [(CSSearchableItem *)self->_item attributeSet];
    fileProviderDomainIdentifier = [attributeSet2 fileProviderDomainIdentifier];
    v5 = [FPItemID fpIdentifierFromCoreSpotlightIdentifier:uniqueIdentifier domainIdentifier:fileProviderDomainIdentifier];
  }

  return v5;
}

- (NSString)providerIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  fileProviderID = [attributeSet fileProviderID];

  return fileProviderID;
}

- (NSString)fp_domainIdentifier
{
  attributeSet = [(CSSearchableItem *)self->_item attributeSet];
  fileProviderDomainIdentifier = [attributeSet fileProviderDomainIdentifier];
  v4 = fileProviderDomainIdentifier;
  if (fileProviderDomainIdentifier)
  {
    v5 = fileProviderDomainIdentifier;
  }

  else
  {
    v5 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSFileProviderItemVersion)itemVersion
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPItemVersion"];

  if (v3)
  {
    v4 = [FPSearchableItemVersion versionFromString:v3];
  }

  else
  {
    v4 = objc_alloc_init(NSFileProviderItemVersion);
  }

  v5 = v4;

  return v5;
}

- (UTType)contentType
{
  v2 = MEMORY[0x1E6982C40];
  typeIdentifier = [(_CSSearchableItemAdapter *)self typeIdentifier];
  v4 = [v2 fp_cachedTypeWithIdentifier:typeIdentifier];

  return v4;
}

- (unint64_t)capabilities
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [attributeSet attributeForKey:@"FPCapabilities"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  attributeSet2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v7 = [attributeSet2 attributeForKey:@"FPEvictable"];
  LODWORD(v4) = [v7 BOOLValue];

  if (v4)
  {
    return unsignedIntegerValue | 0x40;
  }

  else
  {
    return unsignedIntegerValue;
  }
}

- (NSNumber)documentSize
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  fileSize = [attributeSet fileSize];

  if (fileSize)
  {
    v5 = MEMORY[0x1E696AD98];
    attributeSet2 = [(_CSSearchableItemAdapter *)self attributeSet];
    fileSize2 = [attributeSet2 fileSize];
    [fileSize2 doubleValue];
    v9 = [v5 numberWithDouble:v8 * 1000000.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSNumber)childItemCount
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  subItemCount = [attributeSet subItemCount];

  return subItemCount;
}

- (NSDate)creationDate
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];

  return contentCreationDate;
}

- (NSDate)contentModificationDate
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  contentModificationDate = [attributeSet contentModificationDate];

  return contentModificationDate;
}

- (id)formerIdentifier
{
  attributeSet = [(CSSearchableItem *)self->_item attributeSet];
  v4 = [attributeSet attributeForKey:@"FPOnDiskIdentifier"];

  if (v4)
  {
    uniqueIdentifier = [(CSSearchableItem *)self->_item uniqueIdentifier];
    attributeSet2 = [(CSSearchableItem *)self->_item attributeSet];
    fileProviderDomainIdentifier = [attributeSet2 fileProviderDomainIdentifier];
    v8 = [FPItemID fpIdentifierFromCoreSpotlightIdentifier:uniqueIdentifier domainIdentifier:fileProviderDomainIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)lastUsedDate
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  lastUsedDate = [attributeSet lastUsedDate];

  return lastUsedDate;
}

- (id)tags
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [attributeSet attributeForKey:@"_kMDItemUserTags"];

  if (v4)
  {
    v5 = [v4 fp_mapWithIndex:&__block_literal_global_131];
  }

  else
  {
    attributeSet2 = [(_CSSearchableItemAdapter *)self attributeSet];
    userTags = [attributeSet2 userTags];

    if (userTags)
    {
      attributeSet3 = [(_CSSearchableItemAdapter *)self attributeSet];
      v9 = [attributeSet3 attributeForKey:@"FPTagColors"];

      if (v9 && (v10 = [userTags count], v10 == objc_msgSend(v9, "count")))
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __32___CSSearchableItemAdapter_tags__block_invoke_2;
        v12[3] = &unk_1E793CFC0;
        v13 = v9;
        v5 = [userTags fp_mapWithIndex:v12];
      }

      else
      {
        v5 = [userTags fp_mapWithIndex:&__block_literal_global_134_0];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSNumber)favoriteRank
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  favoriteRank = [attributeSet favoriteRank];

  return favoriteRank;
}

- (BOOL)isTrashed
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isTrashed = [attributeSet isTrashed];
  bOOLValue = [isTrashed BOOLValue];

  return bOOLValue;
}

- (BOOL)isUploaded
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isUploaded = [attributeSet isUploaded];
  bOOLValue = [isUploaded BOOLValue];

  return bOOLValue;
}

- (BOOL)isUploading
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isUploading = [attributeSet isUploading];
  bOOLValue = [isUploading BOOLValue];

  return bOOLValue;
}

- (NSError)uploadingError
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMDItemUploadErrorSymbolLoc_ptr;
  v14 = getMDItemUploadErrorSymbolLoc_ptr;
  if (!getMDItemUploadErrorSymbolLoc_ptr)
  {
    v5 = CoreSpotlightLibrary_2();
    v12[3] = dlsym(v5, "MDItemUploadError");
    getMDItemUploadErrorSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    [_CSSearchableItemAdapter uploadingError];
  }

  v6 = [attributeSet attributeForKey:*v4];

  if (v6)
  {
    v7 = [FPSearchableItemError errorFromString:v6];
    fileURL = [(_CSSearchableItemAdapter *)self fileURL];
    v9 = [v7 fp_annotatedErrorWithURL:fileURL variant:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDownloading
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isDownloading = [attributeSet isDownloading];
  bOOLValue = [isDownloading BOOLValue];

  return bOOLValue;
}

- (BOOL)isDownloaded
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPDownloaded"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isMostRecentVersionDownloaded
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPMostRecentVersionDownloaded"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSError)downloadingError
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMDItemDownloadErrorSymbolLoc_ptr;
  v14 = getMDItemDownloadErrorSymbolLoc_ptr;
  if (!getMDItemDownloadErrorSymbolLoc_ptr)
  {
    v5 = CoreSpotlightLibrary_2();
    v12[3] = dlsym(v5, "MDItemDownloadError");
    getMDItemDownloadErrorSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    [_CSSearchableItemAdapter downloadingError];
  }

  v6 = [attributeSet attributeForKey:*v4];

  if (v6)
  {
    v7 = [FPSearchableItemError errorFromString:v6];
    fileURL = [(_CSSearchableItemAdapter *)self fileURL];
    v9 = [v7 fp_annotatedErrorWithURL:fileURL variant:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isShared
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isShared = [attributeSet isShared];
  bOOLValue = [isShared BOOLValue];

  return bOOLValue;
}

- (BOOL)isSharedByCurrentUser
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  isUserOwned = [attributeSet isUserOwned];
  bOOLValue = [isUserOwned BOOLValue];

  return bOOLValue;
}

- (BOOL)fp_isLastModifiedByCurrentUser
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPLastModifiedByCurrentUser"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)collaborationIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPCollaborationIdentifier"];

  return v3;
}

- (BOOL)isCollaborationInvitation
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"com_apple_mobilesms_syndicationContentType"];
  v4 = [v3 integerValue] > 0;

  return v4;
}

- (NSData)originatorInfo
{
  v11 = *MEMORY[0x1E69E9840];
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"com.apple.synapse:DocumentAttributes"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      goto LABEL_8;
    }

    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Found invalid class for originatorInfo, expected NSData, got %@", &v9, 0xCu);
    }
  }

  v4 = 0;
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSDictionary)userInfo
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [attributeSet attributeForKey:@"FPUserInfoKeys"];

  if (v4 && (-[_CSSearchableItemAdapter attributeSet](self, "attributeSet"), v5 = objc_claimAutoreleasedReturnValue(), [v5 attributeForKey:@"FPUserInfoValues"], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = FPDecodeUserInfo(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)displayName
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  displayName = [attributeSet displayName];

  return displayName;
}

- (BOOL)fp_isContainer
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPIsContainer"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)fp_parentDomainIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPParentDomainID"];

  return v3;
}

- (NSString)fp_cloudContainerIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPCloudContainerID"];

  return v3;
}

- (BOOL)fp_isUbiquitous
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPIsUbiquitous"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isTopLevelSharedItem
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPIsTopLevelSharedItem"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isInPinnedFolder
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPItemIsInPinnedFolder"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPinned
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPItemIsPinned"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRecursivelyDownloaded
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPItemIsRecursivelyDownloaded"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)preformattedOwnerName
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  ownerName = [attributeSet ownerName];

  return ownerName;
}

- (NSString)preformattedMostRecentEditorName
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  lastEditorName = [attributeSet lastEditorName];

  return lastEditorName;
}

- (NSData)tagData
{
  tags = [(_CSSearchableItemAdapter *)self tags];
  v4 = tags;
  if (tags)
  {
    v5 = FPGetTagsDataForTags(tags);
  }

  else
  {
    attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
    v5 = [attributeSet attributeForKey:@"FPTagsData"];
  }

  return v5;
}

- (_CSSearchableItemAdapter)initWithSearchableItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _CSSearchableItemAdapter;
  v6 = [(_CSSearchableItemAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (id)sharingCurrentUserRole
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  sharedItemCurrentUserRole = [attributeSet sharedItemCurrentUserRole];

  return sharedItemCurrentUserRole;
}

- (id)containerSubitemCount
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  subItemCount = [attributeSet subItemCount];

  return subItemCount;
}

- (NSData)versionIdentifier
{
  itemVersion = [(_CSSearchableItemAdapter *)self itemVersion];
  contentVersion = [itemVersion contentVersion];
  v5 = [contentVersion length];

  if (v5)
  {
    contentVersion2 = [itemVersion contentVersion];
  }

  else
  {
    attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
    versionIdentifier = [attributeSet versionIdentifier];

    if (versionIdentifier)
    {
      contentVersion2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:versionIdentifier options:0];
    }

    else
    {
      contentVersion2 = 0;
    }
  }

  return contentVersion2;
}

- (id)sharingCurrentUserPermissions
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPSharingCurrentUserPermissions"];

  return v3;
}

- (id)fp_appContainerBundleIdentifier
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPAppContainerBundleID"];

  return v3;
}

- (BOOL)fp_isContainerPristine
{
  attributeSet = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [attributeSet attributeForKey:@"FPIsContainerPristine"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)uploadingError
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemUploadError(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:59 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)downloadingError
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemDownloadError(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

@end