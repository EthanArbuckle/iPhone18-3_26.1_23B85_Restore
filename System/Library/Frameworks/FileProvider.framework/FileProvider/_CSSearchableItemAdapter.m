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
- (_CSSearchableItemAdapter)initWithSearchableItem:(id)a3;
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
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 contentType];

  return v3;
}

- (NSString)filename
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [v3 attributeForKey:@"FPFilename"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(_CSSearchableItemAdapter *)self item];
    v7 = [v6 attributeSet];
    v5 = [v7 filename];
  }

  return v5;
}

- (NSString)parentItemIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPParentFileItemID"];

  return v3;
}

- (NSString)itemIdentifier
{
  v3 = [(CSSearchableItem *)self->_item attributeSet];
  v4 = [v3 attributeForKey:@"FPOnDiskIdentifier"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] fp_fromParsedDiskIdentifier:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    v6 = [(CSSearchableItem *)self->_item uniqueIdentifier];
    v7 = [(CSSearchableItem *)self->_item attributeSet];
    v8 = [v7 fileProviderDomainIdentifier];
    v5 = [FPItemID fpIdentifierFromCoreSpotlightIdentifier:v6 domainIdentifier:v8];
  }

  return v5;
}

- (NSString)providerIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 fileProviderID];

  return v3;
}

- (NSString)fp_domainIdentifier
{
  v2 = [(CSSearchableItem *)self->_item attributeSet];
  v3 = [v2 fileProviderDomainIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPItemVersion"];

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
  v3 = [(_CSSearchableItemAdapter *)self typeIdentifier];
  v4 = [v2 fp_cachedTypeWithIdentifier:v3];

  return v4;
}

- (unint64_t)capabilities
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [v3 attributeForKey:@"FPCapabilities"];
  v5 = [v4 unsignedIntegerValue];

  v6 = [(_CSSearchableItemAdapter *)self attributeSet];
  v7 = [v6 attributeForKey:@"FPEvictable"];
  LODWORD(v4) = [v7 BOOLValue];

  if (v4)
  {
    return v5 | 0x40;
  }

  else
  {
    return v5;
  }
}

- (NSNumber)documentSize
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [v3 fileSize];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(_CSSearchableItemAdapter *)self attributeSet];
    v7 = [v6 fileSize];
    [v7 doubleValue];
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
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 subItemCount];

  return v3;
}

- (NSDate)creationDate
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 contentCreationDate];

  return v3;
}

- (NSDate)contentModificationDate
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 contentModificationDate];

  return v3;
}

- (id)formerIdentifier
{
  v3 = [(CSSearchableItem *)self->_item attributeSet];
  v4 = [v3 attributeForKey:@"FPOnDiskIdentifier"];

  if (v4)
  {
    v5 = [(CSSearchableItem *)self->_item uniqueIdentifier];
    v6 = [(CSSearchableItem *)self->_item attributeSet];
    v7 = [v6 fileProviderDomainIdentifier];
    v8 = [FPItemID fpIdentifierFromCoreSpotlightIdentifier:v5 domainIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)lastUsedDate
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 lastUsedDate];

  return v3;
}

- (id)tags
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [v3 attributeForKey:@"_kMDItemUserTags"];

  if (v4)
  {
    v5 = [v4 fp_mapWithIndex:&__block_literal_global_131];
  }

  else
  {
    v6 = [(_CSSearchableItemAdapter *)self attributeSet];
    v7 = [v6 userTags];

    if (v7)
    {
      v8 = [(_CSSearchableItemAdapter *)self attributeSet];
      v9 = [v8 attributeForKey:@"FPTagColors"];

      if (v9 && (v10 = [v7 count], v10 == objc_msgSend(v9, "count")))
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __32___CSSearchableItemAdapter_tags__block_invoke_2;
        v12[3] = &unk_1E793CFC0;
        v13 = v9;
        v5 = [v7 fp_mapWithIndex:v12];
      }

      else
      {
        v5 = [v7 fp_mapWithIndex:&__block_literal_global_134_0];
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
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 favoriteRank];

  return v3;
}

- (BOOL)isTrashed
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isTrashed];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isUploaded
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isUploaded];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isUploading
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isUploading];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSError)uploadingError
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
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

  v6 = [v3 attributeForKey:*v4];

  if (v6)
  {
    v7 = [FPSearchableItemError errorFromString:v6];
    v8 = [(_CSSearchableItemAdapter *)self fileURL];
    v9 = [v7 fp_annotatedErrorWithURL:v8 variant:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDownloading
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isDownloading];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isDownloaded
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPDownloaded"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isMostRecentVersionDownloaded
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPMostRecentVersionDownloaded"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSError)downloadingError
{
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
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

  v6 = [v3 attributeForKey:*v4];

  if (v6)
  {
    v7 = [FPSearchableItemError errorFromString:v6];
    v8 = [(_CSSearchableItemAdapter *)self fileURL];
    v9 = [v7 fp_annotatedErrorWithURL:v8 variant:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isShared
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isShared];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isSharedByCurrentUser
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 isUserOwned];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)fp_isLastModifiedByCurrentUser
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPLastModifiedByCurrentUser"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)collaborationIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPCollaborationIdentifier"];

  return v3;
}

- (BOOL)isCollaborationInvitation
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"com_apple_mobilesms_syndicationContentType"];
  v4 = [v3 integerValue] > 0;

  return v4;
}

- (NSData)originatorInfo
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"com.apple.synapse:DocumentAttributes"];

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
  v3 = [(_CSSearchableItemAdapter *)self attributeSet];
  v4 = [v3 attributeForKey:@"FPUserInfoKeys"];

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
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 displayName];

  return v3;
}

- (BOOL)fp_isContainer
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPIsContainer"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)fp_parentDomainIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPParentDomainID"];

  return v3;
}

- (NSString)fp_cloudContainerIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPCloudContainerID"];

  return v3;
}

- (BOOL)fp_isUbiquitous
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPIsUbiquitous"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isTopLevelSharedItem
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPIsTopLevelSharedItem"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isInPinnedFolder
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPItemIsInPinnedFolder"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isPinned
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPItemIsPinned"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isRecursivelyDownloaded
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPItemIsRecursivelyDownloaded"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)preformattedOwnerName
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 ownerName];

  return v3;
}

- (NSString)preformattedMostRecentEditorName
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 lastEditorName];

  return v3;
}

- (NSData)tagData
{
  v3 = [(_CSSearchableItemAdapter *)self tags];
  v4 = v3;
  if (v3)
  {
    v5 = FPGetTagsDataForTags(v3);
  }

  else
  {
    v6 = [(_CSSearchableItemAdapter *)self attributeSet];
    v5 = [v6 attributeForKey:@"FPTagsData"];
  }

  return v5;
}

- (_CSSearchableItemAdapter)initWithSearchableItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CSSearchableItemAdapter;
  v6 = [(_CSSearchableItemAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (id)sharingCurrentUserRole
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 sharedItemCurrentUserRole];

  return v3;
}

- (id)containerSubitemCount
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 subItemCount];

  return v3;
}

- (NSData)versionIdentifier
{
  v3 = [(_CSSearchableItemAdapter *)self itemVersion];
  v4 = [v3 contentVersion];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 contentVersion];
  }

  else
  {
    v7 = [(_CSSearchableItemAdapter *)self attributeSet];
    v8 = [v7 versionIdentifier];

    if (v8)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)sharingCurrentUserPermissions
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPSharingCurrentUserPermissions"];

  return v3;
}

- (id)fp_appContainerBundleIdentifier
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPAppContainerBundleID"];

  return v3;
}

- (BOOL)fp_isContainerPristine
{
  v2 = [(_CSSearchableItemAdapter *)self attributeSet];
  v3 = [v2 attributeForKey:@"FPIsContainerPristine"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)uploadingError
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemUploadError(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:59 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)downloadingError
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemDownloadError(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

@end