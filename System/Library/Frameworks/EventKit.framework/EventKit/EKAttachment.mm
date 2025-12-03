@interface EKAttachment
+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2;
+ (id)_compressItemAtURLToTemporaryDirectory:(id)directory;
+ (id)_prepareFileAtURLInTemporaryDirectory:(id)directory;
+ (id)createTempDestinationURLWithExtension:(id)extension;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
- (BOOL)copyLocalFileToNewSource;
- (BOOL)save:(id *)save;
- (BOOL)shouldSetQuarantineAttributesOnCopiedFile;
- (BOOL)validateWithOwner:(id)owner error:(id *)error;
- (EKAttachment)init;
- (EKAttachment)initWithFilepath:(id)filepath;
- (EKAttachment)initWithUUID:(id)d;
- (NSString)contentType;
- (NSString)fileName;
- (NSURL)URL;
- (NSURL)URLForPendingFileCopy;
- (NSURL)localURL;
- (NSURL)localURLForArchivedData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)duplicateWithNewIdentity;
- (int64_t)compareFileNames:(id)names;
- (unsigned)flags;
- (void)_setFlagValue:(BOOL)value withMask:(unsigned int)mask;
- (void)assignIdentity:(id)identity;
- (void)assignNewIdentity;
- (void)invalidateLocalFilePropertiesForNewCopiedFile;
- (void)setURL:(id)l;
- (void)setURLForPendingFileCopy:(id)copy;
@end

@implementation EKAttachment

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_12 != -1)
  {
    +[EKAttachment knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_12;

  return v3;
}

void __46__EKAttachment_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_12;
  knownIdentityKeysForComparison_keys_12 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_11 != -1)
  {
    +[EKAttachment knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_11;

  return v3;
}

void __49__EKAttachment_knownSingleValueKeysForComparison__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69924B0];
  v6[0] = *MEMORY[0x1E69924A8];
  v6[1] = v0;
  v1 = *MEMORY[0x1E69924C8];
  v6[2] = *MEMORY[0x1E69924B8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E69924E0];
  v6[4] = *MEMORY[0x1E69924D0];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = knownSingleValueKeysForComparison_keys_11;
  knownSingleValueKeysForComparison_keys_11 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_7 != -1)
  {
    +[EKAttachment knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_7;

  return v3;
}

void __41__EKAttachment_knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B18];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys_7;
  knownRelationshipWeakKeys_keys_7 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (EKAttachment)init
{
  v3 = EKUUIDString();
  v4 = [(EKAttachment *)self initWithUUID:v3];

  return v4;
}

- (EKAttachment)initWithUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = EKAttachment;
  v5 = [(EKObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKAttachment *)v5 setUUID:dCopy];
    [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v6;
}

- (EKAttachment)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v5 = [(EKAttachment *)self init];
  if (v5)
  {
    v11 = 0;
    [filepathCopy getResourceValue:&v11 forKey:*MEMORY[0x1E695DB78] error:0];
    v6 = v11;
    lastPathComponent = [filepathCopy lastPathComponent];
    [(EKAttachment *)v5 setFileNameRaw:lastPathComponent];
    bOOLValue = [v6 BOOLValue];

    [(EKAttachment *)v5 setAutoArchived:bOOLValue];
    v9 = [objc_opt_class() _prepareFileAtURLInTemporaryDirectory:filepathCopy];
    [(EKAttachment *)v5 setURLForPendingFileCopy:v9];
  }

  return v5;
}

- (id)duplicateWithNewIdentity
{
  duplicate = [(EKObject *)self duplicate];
  [(EKAttachment *)self assignNewIdentity];

  return duplicate;
}

- (void)assignNewIdentity
{
  securityScopedLocalURLForArchivedDataWrapper = [(EKAttachment *)self securityScopedLocalURLForArchivedDataWrapper];
  v7 = securityScopedLocalURLForArchivedDataWrapper;
  if (securityScopedLocalURLForArchivedDataWrapper)
  {
    securityScopedLocalURLWrapper = securityScopedLocalURLForArchivedDataWrapper;
  }

  else
  {
    securityScopedLocalURLWrapper = [(EKAttachment *)self securityScopedLocalURLWrapper];
    if (!securityScopedLocalURLWrapper)
    {
      goto LABEL_5;
    }
  }

  v5 = [securityScopedLocalURLWrapper url];
  [(EKAttachment *)self setURLForPendingFileCopy:v5];

LABEL_5:
  v6 = EKUUIDString();
  [(EKAttachment *)self assignIdentity:v6];
}

- (void)assignIdentity:(id)identity
{
  [(EKAttachment *)self setUUID:identity];
  v4 = *MEMORY[0x1E6992B08];

  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v4];
}

- (BOOL)copyLocalFileToNewSource
{
  localURL = [(EKAttachment *)self localURL];
  v4 = localURL;
  if (localURL)
  {
    [localURL startAccessingSecurityScopedResource];
    v5 = [EKAttachment _prepareFileAtURLInTemporaryDirectory:v4];
    [v4 stopAccessingSecurityScopedResource];
    v6 = v5 != 0;
    if (v5)
    {
      [(EKAttachment *)self invalidateLocalFilePropertiesForNewCopiedFile];
      [(EKAttachment *)self setURLForPendingFileCopy:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidateLocalFilePropertiesForNewCopiedFile
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E69924E8]];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E69924F8]];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E69924F0]];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E69924B0]];
}

+ (id)createTempDestinationURLWithExtension:(id)extension
{
  extensionCopy = extension;
  v4 = CalTemporaryDirectory();
  v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v5 setPath:v4];
  [v5 setScheme:@"file"];
  v6 = [v5 URL];
  v7 = EKUUIDString();
  v8 = [v6 URLByAppendingPathComponent:v7];

  v9 = [v8 URLByAppendingPathExtension:extensionCopy];

  return v9;
}

+ (id)_prepareFileAtURLInTemporaryDirectory:(id)directory
{
  directoryCopy = directory;
  scheme = [directoryCopy scheme];

  if (!scheme)
  {
    v6 = MEMORY[0x1E695DFF8];
    path = [directoryCopy path];
    v8 = [v6 fileURLWithPath:path];

    directoryCopy = v8;
  }

  v38 = 0;
  v9 = *MEMORY[0x1E695DB78];
  v37 = 0;
  v10 = [directoryCopy getResourceValue:&v38 forKey:v9 error:&v37];
  v11 = v38;
  v12 = v37;
  if ((v10 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKAttachment _prepareFileAtURLInTemporaryDirectory:];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  if ([v11 BOOLValue])
  {
    v13 = [self _compressItemAtURLToTemporaryDirectory:directoryCopy];
    goto LABEL_20;
  }

LABEL_9:
  pathExtension = [directoryCopy pathExtension];
  v15 = [EKAttachment createTempDestinationURLWithExtension:pathExtension];

  if (v15)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v36 = v12;
    v17 = [defaultManager copyItemAtURL:directoryCopy toURL:v15 error:&v36];
    v18 = v36;

    if (v17)
    {
      v13 = v15;
    }

    else
    {
      v27 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKAttachment *)v27 _prepareFileAtURLInTemporaryDirectory:v28, v29, v30, v31, v32, v33, v34];
      }

      v13 = 0;
    }

    v12 = v18;
  }

  else
  {
    v19 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKAttachment *)v19 _prepareFileAtURLInTemporaryDirectory:v20, v21, v22, v23, v24, v25, v26];
    }

    v13 = 0;
  }

LABEL_20:

  return v13;
}

+ (id)_compressItemAtURLToTemporaryDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [EKAttachment createTempDestinationURLWithExtension:@"zip"];
  if (v4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v6 = [defaultManager archiveURLToFile:directoryCopy toFile:v4 createPKZipArchive:1 error:&v18];
    v7 = v18;

    if (v6)
    {
      v8 = v4;
    }

    else
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        +[EKAttachment _compressItemAtURLToTemporaryDirectory:];
      }

      v8 = 0;
    }
  }

  else
  {
    v9 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKAttachment *)v9 _prepareFileAtURLInTemporaryDirectory:v10, v11, v12, v13, v14, v15, v16];
    }

    v8 = 0;
  }

  return v8;
}

- (NSURL)URL
{
  uRLString = [(EKAttachment *)self URLString];
  if (uRLString)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:uRLString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKAttachment *)self setURLString:absoluteString];
}

- (NSString)fileName
{
  fileNameRaw = [(EKAttachment *)self fileNameRaw];
  if (!fileNameRaw)
  {
    v4 = [(EKAttachment *)self URL];
    v5 = v4;
    if (v4)
    {
      fileNameRaw = [v4 lastPathComponent];
    }

    else
    {
      fileNameRaw = 0;
    }
  }

  return fileNameRaw;
}

- (NSString)contentType
{
  localURL = [(EKAttachment *)self localURL];
  pathExtension = [localURL pathExtension];
  if (pathExtension)
  {
    v5 = pathExtension;
    localURL2 = [(EKAttachment *)self localURL];
    pathExtension2 = [localURL2 pathExtension];
    v8 = [pathExtension2 isEqual:&stru_1F1B49D68];

    if ((v8 & 1) == 0)
    {
      localURL3 = [(EKAttachment *)self localURL];
LABEL_8:
      firstObject = localURL3;
      pathExtension3 = [localURL3 pathExtension];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = [(EKAttachment *)self URL];
  pathExtension4 = [v10 pathExtension];
  if (pathExtension4)
  {
    v12 = pathExtension4;
    v13 = [(EKAttachment *)self URL];
    pathExtension5 = [v13 pathExtension];
    v15 = [pathExtension5 isEqual:&stru_1F1B49D68];

    if ((v15 & 1) == 0)
    {
      localURL3 = [(EKAttachment *)self URL];
      goto LABEL_8;
    }
  }

  else
  {
  }

  fileFormat = [(EKAttachment *)self fileFormat];
  v19 = [fileFormat componentsSeparatedByString:@""];;
  firstObject = [v19 firstObject];

  v20 = [firstObject componentsSeparatedByString:@"/"];
  pathExtension3 = [v20 lastObject];

LABEL_11:

  return pathExtension3;
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992760]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)_setFlagValue:(BOOL)value withMask:(unsigned int)mask
{
  valueCopy = value;
  flags = [(EKAttachment *)self flags];
  if (valueCopy)
  {
    v8 = flags | mask;
  }

  else
  {
    v8 = flags & ~mask;
  }

  [(EKAttachment *)self setFlags:v8];
}

- (NSURL)localURL
{
  uRLForPendingFileCopy = [(EKAttachment *)self URLForPendingFileCopy];
  v4 = uRLForPendingFileCopy;
  if (uRLForPendingFileCopy)
  {
    v5 = uRLForPendingFileCopy;
  }

  else
  {
    securityScopedLocalURLWrapper = [(EKAttachment *)self securityScopedLocalURLWrapper];
    v5 = [securityScopedLocalURLWrapper url];
  }

  return v5;
}

- (NSURL)localURLForArchivedData
{
  securityScopedLocalURLForArchivedDataWrapper = [(EKAttachment *)self securityScopedLocalURLForArchivedDataWrapper];
  v3 = [securityScopedLocalURLForArchivedDataWrapper url];

  return v3;
}

- (NSURL)URLForPendingFileCopy
{
  uRLWrapperForPendingFileCopy = [(EKAttachment *)self URLWrapperForPendingFileCopy];
  v3 = [uRLWrapperForPendingFileCopy url];

  return v3;
}

- (void)setURLForPendingFileCopy:(id)copy
{
  if (copy)
  {
    v4 = MEMORY[0x1E6993010];
    copyCopy = copy;
    v6 = [[v4 alloc] initWithURL:copyCopy];
  }

  else
  {
    v6 = 0;
  }

  [(EKAttachment *)self setURLWrapperForPendingFileCopy:v6];
}

- (BOOL)shouldSetQuarantineAttributesOnCopiedFile
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992500]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)compareFileNames:(id)names
{
  namesCopy = names;
  fileName = [(EKAttachment *)self fileName];
  fileName2 = [namesCopy fileName];

  if (fileName2)
  {
    v7 = [fileName compare:fileName2];
  }

  else if (fileName)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = EKAttachment;
  v3 = [(EKAttachment *)&v14 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(EKAttachment *)self URL];
  localRelativePath = [(EKAttachment *)self localRelativePath];
  fileName = [(EKAttachment *)self fileName];
  fileFormat = [(EKAttachment *)self fileFormat];
  fileSize = [(EKAttachment *)self fileSize];
  uUID = [(EKAttachment *)self UUID];
  v12 = [v4 stringWithFormat:@"%@ <%p> {%@ URL:%@; localRelativePath:%@; filename:%@; fileFormat:%@; fileSize:%@; UUID: %@\n", v5, self, v3, v6, localRelativePath, fileName, fileFormat, fileSize, uUID];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v13.receiver = self;
    v13.super_class = EKAttachment;
    return [(EKObject *)&v13 copyWithZone:zone];
  }

  else
  {
    v5 = [[EKAttachment allocWithZone:?]];
    if (v5)
    {
      uRLString = [(EKAttachment *)self URLString];
      [(EKAttachment *)v5 setURLString:uRLString];

      fileNameRaw = [(EKAttachment *)self fileNameRaw];
      [(EKAttachment *)v5 setFileNameRaw:fileNameRaw];

      fileFormat = [(EKAttachment *)self fileFormat];
      [(EKAttachment *)v5 setFileFormat:fileFormat];

      [(EKAttachment *)v5 setIsBinary:[(EKAttachment *)self isBinary]];
      fileSize = [(EKAttachment *)self fileSize];
      [(EKAttachment *)v5 setFileSize:fileSize];

      xPropertiesData = [(EKAttachment *)self XPropertiesData];
      [(EKAttachment *)v5 setXPropertiesData:xPropertiesData];

      externalID = [(EKAttachment *)self externalID];
      [(EKAttachment *)v5 setExternalID:externalID];
    }
  }

  return v5;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2
{
  value1Copy = value1;
  value2Copy = value2;
  keyCopy = key;
  object1Copy = object1;
  object2Copy = object2;
  if ([keyCopy isEqualToString:*MEMORY[0x1E69924B0]])
  {
    v17 = value1Copy;
    v18 = value2Copy;
    v19 = [v17 url];
    if (v19 || ([v18 url], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = [v17 url];
      [v18 url];
      v33 = v19;
      v21 = keyCopy;
      v22 = v17;
      v23 = v18;
      v24 = value2Copy;
      v25 = object2Copy;
      v26 = value1Copy;
      v28 = v27 = object1Copy;
      v29 = [v20 isEqual:v28];

      object1Copy = v27;
      value1Copy = v26;
      object2Copy = v25;
      value2Copy = v24;
      v18 = v23;
      v17 = v22;
      keyCopy = v21;
      v19 = v33;

      if (v33)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v32 = 0;
      v29 = 1;
    }

    goto LABEL_9;
  }

  v34.receiver = self;
  v34.super_class = &OBJC_METACLASS___EKAttachment;
  v29 = objc_msgSendSuper2(&v34, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, value1Copy, value2Copy, keyCopy, object1Copy, object2Copy);
LABEL_10:

  return v29;
}

- (BOOL)validateWithOwner:(id)owner error:(id *)error
{
  v11.receiver = self;
  v11.super_class = EKAttachment;
  LODWORD(v7) = [EKObject validateWithOwner:sel_validateWithOwner_error_ error:?];
  if (v7)
  {
    isNew = [(EKObject *)self isNew];
    LOBYTE(v7) = 1;
    if (!owner && isNew)
    {
      if (error)
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:66];
        v7 = v9;
        LOBYTE(v7) = 0;
        *error = v9;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

- (BOOL)save:(id *)save
{
  if (save)
  {
    *save = 0;
  }

  [(EKObject *)self insertPersistentObjectIfNeeded];
  [(EKObject *)self updatePersistentObject];
  return 1;
}

+ (void)_prepareFileAtURLInTemporaryDirectory:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Unable to determine if %@ is a file or directory: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_compressItemAtURLToTemporaryDirectory:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Error creating archive of %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end