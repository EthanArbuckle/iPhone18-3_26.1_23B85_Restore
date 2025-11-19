@interface FPFileVersion
+ (id)etagForVersion:(id)a3 providerDomainID:(id)a4;
+ (id)parseEtag:(id)a3;
+ (id)parseInfoFromVersionURL:(id)a3 domainIdentifier:(id *)a4 fpItemIdentifier:(id *)a5 etag:(id *)a6;
+ (id)storagePrefixForOriginalURL:(id)a3;
+ (id)stripExtensionFromAddition:(id)a3;
+ (id)versionFaultName:(id)a3 identifier:(id)a4 ext:(id)a5;
- (FPFileVersion)initWithCoder:(id)a3;
- (FPFileVersion)initWithVersion:(id)a3 displayName:(id)a4 originalURL:(id)a5 physicalURL:(id)a6 identifier:(id)a7 modificationDate:(id)a8 lastEditorNameComponents:(id)a9 size:(id)a10;
- (NSCopying)persistentIdentifier;
- (NSString)etag;
- (NSString)lastEditorFormattedName;
- (id)description;
- (id)fetchGSURLForNamespace:(id)a3;
- (void)checkThumbnailChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)registerThumbnailNotification;
@end

@implementation FPFileVersion

- (FPFileVersion)initWithVersion:(id)a3 displayName:(id)a4 originalURL:(id)a5 physicalURL:(id)a6 identifier:(id)a7 modificationDate:(id)a8 lastEditorNameComponents:(id)a9 size:(id)a10
{
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v17 = a9;
  v18 = a10;
  v41.receiver = self;
  v41.super_class = FPFileVersion;
  v19 = [(FPFileVersion *)&v41 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_version, a3);
    objc_storeStrong(&v20->_displayName, a4);
    objc_storeStrong(&v20->_originalURL, a5);
    objc_storeStrong(&v20->_wrapper, a6);
    objc_storeStrong(&v20->_fpItemIdentifier, a7);
    objc_storeStrong(&v20->_modificationDate, a8);
    objc_storeStrong(&v20->_lastEditorNameComponents, a9);
    v20->_size = [v18 unsignedIntValue];
    v21 = [MEMORY[0x1E69A07C0] manager];
    originalURL = v20->_originalURL;
    v40 = 0;
    v23 = [v21 permanentStorageForItemAtURL:originalURL allocateIfNone:1 error:&v40];
    v24 = v40;
    storage = v20->_storage;
    v20->_storage = v23;

    if (v20->_storage)
    {
      v26 = [objc_opt_class() gsNamespace];
      v27 = [(FPFileVersion *)v20 fetchGSURLForNamespace:v26];
      url = v20->_url;
      v20->_url = v27;

      if (v20->_url)
      {
        v29 = [(FPFileVersion *)v20 physicalURL];

        if (v29)
        {
          v30 = v20->_url;
          [(FPFileVersion *)v20 physicalURL];
          _CFURLPromiseSetPhysicalURL();
        }

        [(FPFileVersion *)v20 registerThumbnailNotification];
        [(FPFileVersion *)v20 checkThumbnailChanged];

        goto LABEL_7;
      }
    }

    else
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [FPFileVersion initWithVersion:v24 displayName:? originalURL:? physicalURL:? identifier:? modificationDate:? lastEditorNameComponents:? size:?];
      }
    }

    v31 = 0;
    goto LABEL_12;
  }

LABEL_7:
  v31 = v20;
LABEL_12:

  return v31;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  notifyToken = v2->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  objc_sync_exit(v2);

  v4.receiver = v2;
  v4.super_class = FPFileVersion;
  [(FPFileVersion *)&v4 dealloc];
}

- (void)checkThumbnailChanged
{
  v3 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  v4 = [v3 startAccessingSecurityScopedResource];

  v5 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  v6 = [v5 fp_hasThumbnailOnImmutableDocument];

  if (v4)
  {
    v7 = [(FPSandboxingURLWrapper *)self->_wrapper url];
    [v7 stopAccessingSecurityScopedResource];
  }

  v8 = self;
  objc_sync_enter(v8);
  if (v6)
  {
    notifyToken = v8->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
    }
  }

  objc_sync_exit(v8);

  [(FPFileVersion *)v8 setHasThumbnail:v6];
}

- (void)registerThumbnailNotification
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSURL *)self->_url path];
  v5 = [v3 stringWithFormat:@"com.apple.fileprovider.thumbnail-available.%@", v4];
  v6 = [v5 fp_libnotifyPerUserNotificationName];

  if (registerThumbnailNotification_onceToken != -1)
  {
    [FPFileVersion registerThumbnailNotification];
  }

  objc_initWeak(&location, self);
  v7 = [v6 UTF8String];
  v8 = registerThumbnailNotification_thumbnailQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __46__FPFileVersion_registerThumbnailNotification__block_invoke_2;
  handler[3] = &unk_1E7938FE8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v7, &self->_notifyToken, v8, handler);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__FPFileVersion_registerThumbnailNotification__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.fileprovider.version.thumbnails", v2);
  v1 = registerThumbnailNotification_thumbnailQueue;
  registerThumbnailNotification_thumbnailQueue = v0;
}

void __46__FPFileVersion_registerThumbnailNotification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkThumbnailChanged];
}

- (NSString)lastEditorFormattedName
{
  lastEditorNameComponents = self->_lastEditorNameComponents;
  if (lastEditorNameComponents)
  {
    v4 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:lastEditorNameComponents style:0 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FPFileVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = FPFileVersion;
  v5 = [(FPFileVersion *)&v33 init];
  if (!v5)
  {
LABEL_6:
    v29 = v5;
    goto LABEL_10;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = *(v5 + 4);
  *(v5 + 4) = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
  v9 = *(v5 + 5);
  *(v5 + 5) = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v11 = *(v5 + 9);
  *(v5 + 9) = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"physicalURL"];
  v13 = *(v5 + 1);
  *(v5 + 1) = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpItemIdentifier"];
  v15 = *(v5 + 10);
  *(v5 + 10) = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
  v17 = *(v5 + 7);
  *(v5 + 7) = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastEditorNameComponents"];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  *(v5 + 6) = [v4 decodeInt64ForKey:@"size"];
  v20 = [MEMORY[0x1E69A07C0] manager];
  v21 = *(v5 + 9);
  v32 = 0;
  v22 = [v20 permanentStorageForItemAtURL:v21 allocateIfNone:1 error:&v32];
  v23 = v32;
  v24 = *(v5 + 11);
  *(v5 + 11) = v22;

  if (*(v5 + 11))
  {
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GSURL"];
    v26 = *(v5 + 2);
    *(v5 + 2) = v25;

    v27 = [v5 physicalURL];

    if (v27)
    {
      v28 = *(v5 + 2);
      [v5 physicalURL];
      _CFURLPromiseSetPhysicalURL();
      [v5 registerThumbnailNotification];
      [v5 checkThumbnailChanged];
    }

    goto LABEL_6;
  }

  v30 = fp_current_or_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [FPFileVersion initWithVersion:v23 displayName:? originalURL:? physicalURL:? identifier:? modificationDate:? lastEditorNameComponents:? size:?];
  }

  v29 = 0;
LABEL_10:

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeObject:version forKey:@"version"];
  [v5 encodeObject:self->_displayName forKey:@"filename"];
  [v5 encodeObject:self->_originalURL forKey:@"url"];
  [v5 encodeObject:self->_fpItemIdentifier forKey:@"fpItemIdentifier"];
  [v5 encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [v5 encodeObject:self->_lastEditorNameComponents forKey:@"lastEditorNameComponents"];
  [v5 encodeInt64:self->_size forKey:@"size"];
  [v5 encodeObject:self->_wrapper forKey:@"physicalURL"];
  [v5 encodeObject:self->_url forKey:@"GSURL"];
}

+ (id)etagForVersion:(id)a3 providerDomainID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 fp_toProviderID];
  if (([v7 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getBRFieldContentSignatureClass_softClass;
    v19 = getBRFieldContentSignatureClass_softClass;
    if (!getBRFieldContentSignatureClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getBRFieldContentSignatureClass_block_invoke;
      v15[3] = &unk_1E793A2E8;
      v15[4] = &v16;
      __getBRFieldContentSignatureClass_block_invoke(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = [v8 alloc];
    v11 = [v5 contentVersion];
    v12 = [v10 initWithData:v11];

    v13 = [v12 etag];
  }

  else
  {
    v13 = [v5 etagHash];
  }

  return v13;
}

- (NSString)etag
{
  version = self->_version;
  v3 = [(FPItemID *)self->_fpItemIdentifier providerDomainID];
  v4 = [FPFileVersion etagForVersion:version providerDomainID:v3];

  return v4;
}

+ (id)versionFaultName:(id)a3 identifier:(id)a4 ext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 providerDomainID];
  v11 = [FPFileVersion etagForVersion:v9 providerDomainID:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v8 domainIdentifier];
  v14 = [v8 identifier];

  v15 = [v12 stringWithFormat:@"%@_%@_%@.%@", v13, v14, v11, v7];

  return v15;
}

- (NSCopying)persistentIdentifier
{
  v3 = [MEMORY[0x1E69A07C0] manager];
  v4 = [(FPFileVersion *)self storage];
  v5 = [(NSURL *)self->_url lastPathComponent];
  v6 = [objc_opt_class() gsNamespace];
  v7 = [v3 persistentIdentifierInStorage:v4 forAdditionNamed:v5 inNameSpace:v6];

  return v7;
}

+ (id)storagePrefixForOriginalURL:(id)a3
{
  v3 = a3;
  v4 = open([v3 fileSystemRepresentation], 0x200000);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FPFileVersion storagePrefixForOriginalURL:v3];
    }

    v6 = 0;
  }

  else
  {
    v5 = v4;
    v11 = 0;
    v6 = [MEMORY[0x1E69A07B8] storagePrefixForFileDescriptor:v4 error:&v11];
    v7 = v11;
    close(v5);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(FPFileVersion *)v3 storagePrefixForOriginalURL:v7];
      }
    }
  }

  return v6;
}

- (id)fetchGSURLForNamespace:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FPFileVersion *)self version];
  v6 = [(FPFileVersion *)self fpItemIdentifier];
  v7 = [(FPFileVersion *)self originalURL];
  v8 = [v7 pathExtension];
  v9 = [FPFileVersion versionFaultName:v5 identifier:v6 ext:v8];

  v10 = [(FPFileVersion *)self originalURL];
  v11 = [FPFileVersion storagePrefixForOriginalURL:v10];

  if (v11)
  {
    v12 = MEMORY[0x1E695DFF8];
    v17[0] = v11;
    v17[1] = v4;
    v17[2] = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v14 = [v12 fileURLWithPathComponents:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)description
{
  v18 = MEMORY[0x1E696AD60];
  v17 = objc_opt_class();
  displayName = self->_displayName;
  v4 = [(NSFileProviderItemVersion *)self->_version lastEditorDeviceName];
  v5 = [(FPFileVersion *)self lastEditorFormattedName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"You";
  }

  size = self->_size;
  modificationDate = self->_modificationDate;
  v10 = [(FPFileVersion *)self hasThumbnail];
  v11 = [(FPFileVersion *)self etag];
  v12 = [(NSURL *)self->_url path];
  v13 = [v18 stringWithFormat:@"<%@ name:'%@' device:'%@' owner:'%@' size:%llu mtime:%@ thumbnail:%d etag:%@ url:'%@'", v17, displayName, v4, v7, size, modificationDate, v10, v11, v12];

  v14 = [(FPSandboxingURLWrapper *)self->_wrapper url];
  v15 = v14;
  if (v14 && self->_url != v14)
  {
    [v13 appendFormat:@" physical:'%@'", v14];
  }

  [v13 appendString:@">"];

  return v13;
}

+ (id)stripExtensionFromAddition:(id)a3
{
  v3 = [a3 stringByDeletingPathExtension];
  if ([v3 hasSuffix:@"."])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];

    v3 = v4;
  }

  return v3;
}

+ (id)parseInfoFromVersionURL:(id)a3 domainIdentifier:(id *)a4 fpItemIdentifier:(id *)a5 etag:(id *)a6
{
  *a6 = 0;
  *a5 = 0;
  *a4 = 0;
  v9 = [a3 pathComponents];
  v10 = [v9 indexOfObject:@".DocumentRevisions-V100"];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  v11 = v10;
  v12 = [v9 indexOfObject:@"PerUID"];
  v13 = 3;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 4;
  }

  v14 = v13 + v11;
  v15 = v13 + v11 + 1;
  if ([v9 count] < v15)
  {
LABEL_5:
    v16 = 0;
  }

  else
  {
    v16 = [v9 objectAtIndexedSubscript:v14];
    if ([v9 count] >= (v14 + 2) && (objc_msgSend(objc_opt_class(), "gsNamespace"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, (v18 & 1) != 0))
    {
      v19 = [v9 objectAtIndexedSubscript:v15];
      v20 = [FPFileVersion stripExtensionFromAddition:v19];

      v21 = [v20 rangeOfString:@"_" options:4];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v21;
        v23 = [v20 rangeOfString:@"_" options:4 range:{0, v21}];
        if (v23 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v23;
          *a4 = [v20 substringToIndex:v23];
          v25 = [v20 substringToIndex:v22];
          *a5 = [v25 substringFromIndex:v24 + 1];

          *a6 = [v20 substringFromIndex:v22 + 1];
        }
      }

      v26 = v16;
    }

    else
    {
      v27 = v16;
    }
  }

  return v16;
}

+ (id)parseEtag:(id)a3
{
  v3 = [FPFileVersion stripExtensionFromAddition:a3];
  v4 = [v3 componentsSeparatedByString:@"_"];

  if ([v4 count] >= 3)
  {
    v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithVersion:(uint64_t *)a1 displayName:(void *)a2 originalURL:physicalURL:identifier:modificationDate:lastEditorNameComponents:size:.cold.1(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)storagePrefixForOriginalURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)storagePrefixForOriginalURL:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = [a1 fp_shortDescription];
  v8 = *__error();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

@end