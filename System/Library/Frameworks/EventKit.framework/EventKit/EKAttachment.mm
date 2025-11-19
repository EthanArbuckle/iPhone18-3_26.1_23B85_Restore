@interface EKAttachment
+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7;
+ (id)_compressItemAtURLToTemporaryDirectory:(id)a3;
+ (id)_prepareFileAtURLInTemporaryDirectory:(id)a3;
+ (id)createTempDestinationURLWithExtension:(id)a3;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
- (BOOL)copyLocalFileToNewSource;
- (BOOL)save:(id *)a3;
- (BOOL)shouldSetQuarantineAttributesOnCopiedFile;
- (BOOL)validateWithOwner:(id)a3 error:(id *)a4;
- (EKAttachment)init;
- (EKAttachment)initWithFilepath:(id)a3;
- (EKAttachment)initWithUUID:(id)a3;
- (NSString)contentType;
- (NSString)fileName;
- (NSURL)URL;
- (NSURL)URLForPendingFileCopy;
- (NSURL)localURL;
- (NSURL)localURLForArchivedData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)duplicateWithNewIdentity;
- (int64_t)compareFileNames:(id)a3;
- (unsigned)flags;
- (void)_setFlagValue:(BOOL)a3 withMask:(unsigned int)a4;
- (void)assignIdentity:(id)a3;
- (void)assignNewIdentity;
- (void)invalidateLocalFilePropertiesForNewCopiedFile;
- (void)setURL:(id)a3;
- (void)setURLForPendingFileCopy:(id)a3;
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

- (EKAttachment)initWithUUID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKAttachment;
  v5 = [(EKObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKAttachment *)v5 setUUID:v4];
    [(EKObject *)v6 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
  }

  return v6;
}

- (EKAttachment)initWithFilepath:(id)a3
{
  v4 = a3;
  v5 = [(EKAttachment *)self init];
  if (v5)
  {
    v11 = 0;
    [v4 getResourceValue:&v11 forKey:*MEMORY[0x1E695DB78] error:0];
    v6 = v11;
    v7 = [v4 lastPathComponent];
    [(EKAttachment *)v5 setFileNameRaw:v7];
    v8 = [v6 BOOLValue];

    [(EKAttachment *)v5 setAutoArchived:v8];
    v9 = [objc_opt_class() _prepareFileAtURLInTemporaryDirectory:v4];
    [(EKAttachment *)v5 setURLForPendingFileCopy:v9];
  }

  return v5;
}

- (id)duplicateWithNewIdentity
{
  v3 = [(EKObject *)self duplicate];
  [(EKAttachment *)self assignNewIdentity];

  return v3;
}

- (void)assignNewIdentity
{
  v3 = [(EKAttachment *)self securityScopedLocalURLForArchivedDataWrapper];
  v7 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(EKAttachment *)self securityScopedLocalURLWrapper];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = [v4 url];
  [(EKAttachment *)self setURLForPendingFileCopy:v5];

LABEL_5:
  v6 = EKUUIDString();
  [(EKAttachment *)self assignIdentity:v6];
}

- (void)assignIdentity:(id)a3
{
  [(EKAttachment *)self setUUID:a3];
  v4 = *MEMORY[0x1E6992B08];

  [(EKObject *)self updatePersistentValueForKeyIfNeeded:v4];
}

- (BOOL)copyLocalFileToNewSource
{
  v3 = [(EKAttachment *)self localURL];
  v4 = v3;
  if (v3)
  {
    [v3 startAccessingSecurityScopedResource];
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
  v2 = [(EKObject *)self persistentObject];
  [v2 unloadPropertyForKey:*MEMORY[0x1E69924E8]];
  [v2 unloadPropertyForKey:*MEMORY[0x1E69924F8]];
  [v2 unloadPropertyForKey:*MEMORY[0x1E69924F0]];
  [v2 unloadPropertyForKey:*MEMORY[0x1E69924B0]];
}

+ (id)createTempDestinationURLWithExtension:(id)a3
{
  v3 = a3;
  v4 = CalTemporaryDirectory();
  v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v5 setPath:v4];
  [v5 setScheme:@"file"];
  v6 = [v5 URL];
  v7 = EKUUIDString();
  v8 = [v6 URLByAppendingPathComponent:v7];

  v9 = [v8 URLByAppendingPathExtension:v3];

  return v9;
}

+ (id)_prepareFileAtURLInTemporaryDirectory:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];

  if (!v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v4 path];
    v8 = [v6 fileURLWithPath:v7];

    v4 = v8;
  }

  v38 = 0;
  v9 = *MEMORY[0x1E695DB78];
  v37 = 0;
  v10 = [v4 getResourceValue:&v38 forKey:v9 error:&v37];
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
    v13 = [a1 _compressItemAtURLToTemporaryDirectory:v4];
    goto LABEL_20;
  }

LABEL_9:
  v14 = [v4 pathExtension];
  v15 = [EKAttachment createTempDestinationURLWithExtension:v14];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v36 = v12;
    v17 = [v16 copyItemAtURL:v4 toURL:v15 error:&v36];
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

+ (id)_compressItemAtURLToTemporaryDirectory:(id)a3
{
  v3 = a3;
  v4 = [EKAttachment createTempDestinationURLWithExtension:@"zip"];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v6 = [v5 archiveURLToFile:v3 toFile:v4 createPKZipArchive:1 error:&v18];
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
  v2 = [(EKAttachment *)self URLString];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKAttachment *)self setURLString:v4];
}

- (NSString)fileName
{
  v3 = [(EKAttachment *)self fileNameRaw];
  if (!v3)
  {
    v4 = [(EKAttachment *)self URL];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 lastPathComponent];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)contentType
{
  v3 = [(EKAttachment *)self localURL];
  v4 = [v3 pathExtension];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKAttachment *)self localURL];
    v7 = [v6 pathExtension];
    v8 = [v7 isEqual:&stru_1F1B49D68];

    if ((v8 & 1) == 0)
    {
      v9 = [(EKAttachment *)self localURL];
LABEL_8:
      v16 = v9;
      v17 = [v9 pathExtension];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = [(EKAttachment *)self URL];
  v11 = [v10 pathExtension];
  if (v11)
  {
    v12 = v11;
    v13 = [(EKAttachment *)self URL];
    v14 = [v13 pathExtension];
    v15 = [v14 isEqual:&stru_1F1B49D68];

    if ((v15 & 1) == 0)
    {
      v9 = [(EKAttachment *)self URL];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v18 = [(EKAttachment *)self fileFormat];
  v19 = [v18 componentsSeparatedByString:@""];;
  v16 = [v19 firstObject];

  v20 = [v16 componentsSeparatedByString:@"/"];
  v17 = [v20 lastObject];

LABEL_11:

  return v17;
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992760]];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)_setFlagValue:(BOOL)a3 withMask:(unsigned int)a4
{
  v5 = a3;
  v7 = [(EKAttachment *)self flags];
  if (v5)
  {
    v8 = v7 | a4;
  }

  else
  {
    v8 = v7 & ~a4;
  }

  [(EKAttachment *)self setFlags:v8];
}

- (NSURL)localURL
{
  v3 = [(EKAttachment *)self URLForPendingFileCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(EKAttachment *)self securityScopedLocalURLWrapper];
    v5 = [v6 url];
  }

  return v5;
}

- (NSURL)localURLForArchivedData
{
  v2 = [(EKAttachment *)self securityScopedLocalURLForArchivedDataWrapper];
  v3 = [v2 url];

  return v3;
}

- (NSURL)URLForPendingFileCopy
{
  v2 = [(EKAttachment *)self URLWrapperForPendingFileCopy];
  v3 = [v2 url];

  return v3;
}

- (void)setURLForPendingFileCopy:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E6993010];
    v5 = a3;
    v6 = [[v4 alloc] initWithURL:v5];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)compareFileNames:(id)a3
{
  v4 = a3;
  v5 = [(EKAttachment *)self fileName];
  v6 = [v4 fileName];

  if (v6)
  {
    v7 = [v5 compare:v6];
  }

  else if (v5)
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
  v7 = [(EKAttachment *)self localRelativePath];
  v8 = [(EKAttachment *)self fileName];
  v9 = [(EKAttachment *)self fileFormat];
  v10 = [(EKAttachment *)self fileSize];
  v11 = [(EKAttachment *)self UUID];
  v12 = [v4 stringWithFormat:@"%@ <%p> {%@ URL:%@; localRelativePath:%@; filename:%@; fileFormat:%@; fileSize:%@; UUID: %@\n", v5, self, v3, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v13.receiver = self;
    v13.super_class = EKAttachment;
    return [(EKObject *)&v13 copyWithZone:a3];
  }

  else
  {
    v5 = [[EKAttachment allocWithZone:?]];
    if (v5)
    {
      v6 = [(EKAttachment *)self URLString];
      [(EKAttachment *)v5 setURLString:v6];

      v7 = [(EKAttachment *)self fileNameRaw];
      [(EKAttachment *)v5 setFileNameRaw:v7];

      v8 = [(EKAttachment *)self fileFormat];
      [(EKAttachment *)v5 setFileFormat:v8];

      [(EKAttachment *)v5 setIsBinary:[(EKAttachment *)self isBinary]];
      v9 = [(EKAttachment *)self fileSize];
      [(EKAttachment *)v5 setFileSize:v9];

      v10 = [(EKAttachment *)self XPropertiesData];
      [(EKAttachment *)v5 setXPropertiesData:v10];

      v11 = [(EKAttachment *)self externalID];
      [(EKAttachment *)v5 setExternalID:v11];
    }
  }

  return v5;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 isEqualToString:*MEMORY[0x1E69924B0]])
  {
    v17 = v12;
    v18 = v13;
    v19 = [v17 url];
    if (v19 || ([v18 url], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = [v17 url];
      [v18 url];
      v33 = v19;
      v21 = v14;
      v22 = v17;
      v23 = v18;
      v24 = v13;
      v25 = v16;
      v26 = v12;
      v28 = v27 = v15;
      v29 = [v20 isEqual:v28];

      v15 = v27;
      v12 = v26;
      v16 = v25;
      v13 = v24;
      v18 = v23;
      v17 = v22;
      v14 = v21;
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

  v34.receiver = a1;
  v34.super_class = &OBJC_METACLASS___EKAttachment;
  v29 = objc_msgSendSuper2(&v34, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, v12, v13, v14, v15, v16);
LABEL_10:

  return v29;
}

- (BOOL)validateWithOwner:(id)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = EKAttachment;
  LODWORD(v7) = [EKObject validateWithOwner:sel_validateWithOwner_error_ error:?];
  if (v7)
  {
    v8 = [(EKObject *)self isNew];
    LOBYTE(v7) = 1;
    if (!a3 && v8)
    {
      if (a4)
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:66];
        v7 = v9;
        LOBYTE(v7) = 0;
        *a4 = v9;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

- (BOOL)save:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
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