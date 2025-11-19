@interface PHExternalAssetResource
+ (id)assetResourceForDuplicatingAssetResource:(id)a3 asData:(BOOL)a4 error:(id *)a5;
+ (id)assetResourceForDuplicatingAssetResource:(id)a3 newResourceType:(int64_t)a4 asData:(BOOL)a5 error:(id *)a6;
+ (unint64_t)probableCPLResourceTypeFromAssetResourceType:(int64_t)a3;
- (PHExternalAssetResource)init;
- (PHExternalAssetResource)initWithPropertyListRepresentation:(id)a3;
- (PHExternalAssetResource)initWithResourceType:(int64_t)a3;
- (id)_issueSandboxExtension;
- (id)description;
- (id)propertyListRepresentation;
- (void)_consumeSandboxExtension:(id)a3;
- (void)_releaseSandboxExtension;
- (void)dealloc;
@end

@implementation PHExternalAssetResource

- (id)propertyListRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PHExternalAssetResource *)self fileURL];
  v5 = [v4 path];
  [v3 setObject:v5 forKeyedSubscript:@"fileURL"];

  v6 = [(PHExternalAssetResource *)self _issueSandboxExtension];
  [v3 setObject:v6 forKeyedSubscript:@"sandboxExtensionToken"];

  [v3 setObject:self->_data forKeyedSubscript:@"data"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resourceType];
  [v3 setObject:v7 forKeyedSubscript:@"type"];

  v8 = [(PHAssetResourceCreationOptions *)self->_creationOptions propertyListRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"creationOptions"];

  return v3;
}

- (void)_releaseSandboxExtension
{
  if ((self->_sandboxExtensionHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    self->_sandboxExtensionHandle = -1;
  }
}

- (void)_consumeSandboxExtension:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    if (self->_sandboxExtensionHandle != -1)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PHExternalAssetResource.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"_sandboxExtensionHandle == -1"}];
    }

    if (![v5 UTF8String])
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v8 = "Unable to get UTF8String from sandbox extension token";
        v9 = buf;
        goto LABEL_10;
      }

LABEL_11:

      goto LABEL_12;
    }

    v6 = sandbox_extension_consume();
    self->_sandboxExtensionHandle = v6;
    if (v6 == -1)
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v12 = 0;
        v8 = "Unable to consume sandbox extension";
        v9 = &v12;
LABEL_10:
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_FAULT, v8, v9, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (id)_issueSandboxExtension
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(NSURL *)self->_fileURL path];
  if ([v2 length])
  {
    v3 = PLGetSandboxExtensionTokenIfPossible();
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E69BF220] descriptionWithPath:v2];
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_INFO, "PHExternalAssetResource: fallback to readonly sandbox extension for %@", &v10, 0xCu);
    }

    v3 = PLGetSandboxExtensionToken();
    if (v3)
    {
LABEL_6:
      v6 = v3;
      goto LABEL_11;
    }

    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E69BF220] descriptionWithPath:v2];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "PHExternalAssetResource: Unable to issue sandbox extension for %@", &v10, 0xCu);
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHExternalAssetResource *)self originalFilename];
  v7 = [(PHExternalAssetResource *)self uniformTypeIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p> filename: %@ uti: %@", v5, self, v6, v7];

  return v8;
}

- (void)dealloc
{
  [(PHExternalAssetResource *)self _releaseSandboxExtension];
  v3.receiver = self;
  v3.super_class = PHExternalAssetResource;
  [(PHExternalAssetResource *)&v3 dealloc];
}

- (PHExternalAssetResource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PHExternalAssetResource.m" lineNumber:148 description:@"Calling init on PHExternalAssetResource without additional arguments is invalid"];

  return [(PHExternalAssetResource *)self initWithResourceType:1];
}

- (PHExternalAssetResource)initWithPropertyListRepresentation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v5 integerValue];

  v7 = [(PHExternalAssetResource *)self initWithResourceType:v6];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"fileURL"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 objectForKeyedSubscript:@"sandboxExtensionToken"];
    [(PHExternalAssetResource *)v7 _consumeSandboxExtension:v10];

    v11 = [v4 objectForKeyedSubscript:@"data"];
    v12 = [v4 objectForKeyedSubscript:@"creationOptions"];
    v13 = [[PHAssetResourceCreationOptions alloc] initWithPropertyListRepresentation:v12];
    [(PHExternalAssetResource *)v7 setFileURL:v9];
    [(PHExternalAssetResource *)v7 setData:v11];
    [(PHExternalAssetResource *)v7 setCreationOptions:v13];
    if (v7->_sandboxExtensionHandle == -1 && !v7->_data)
    {
      v14 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = @"non-null";
        if (!v8)
        {
          v15 = @"null";
        }

        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "No sandbox extension and no data for %{public}@ filePath %@", &v17, 0x16u);
      }
    }
  }

  return v7;
}

- (PHExternalAssetResource)initWithResourceType:(int64_t)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHExternalAssetResource.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v10.receiver = self;
  v10.super_class = PHExternalAssetResource;
  v5 = [(PHExternalAssetResource *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_sandboxExtensionHandle = -1;
    v5->_resourceType = a3;
    v5->_cplResourceType = [PHExternalAssetResource probableCPLResourceTypeFromAssetResourceType:a3];
  }

  return v6;
}

+ (id)assetResourceForDuplicatingAssetResource:(id)a3 newResourceType:(int64_t)a4 asData:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PHExternalAssetResource.m" lineNumber:216 description:@"External resources invalid for duplication"];
  }

  v12 = [[a1 alloc] initWithResourceType:a4];
  v13 = [v11 privateFileURL];
  v14 = v13;
  if (!v7)
  {
    v17 = [v13 path];
    if (v17 && ([MEMORY[0x1E696AC08] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:isDirectory:", v17, 0), v18, v19))
    {
      [v12 setFileURL:v14];
    }

    else
    {

      if (a6)
      {
        [MEMORY[0x1E696ABC0] ph_errorWithCode:3303 localizedDescription:{@"Missing required asset resource file '%@'", v17}];
        *a6 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v28 = 0;
  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13 options:1 error:&v28];
  v16 = v28;
  if (v15)
  {
    [v12 setData:v15];
  }

  else
  {

    if (a6)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = [v14 path];
      v22 = [v16 description];
      *a6 = [v20 ph_errorWithCode:3302 localizedDescription:{@"Failed to read asset resource file '%@' %@", v21, v22}];
    }

    v12 = 0;
  }

  if (v12)
  {
LABEL_18:
    [v12 _setDuplicateAllowsReadAccess:1];
    v23 = [v11 originalFilename];
    v24 = [v11 uniformTypeIdentifier];
    if (v23 | v24)
    {
      v25 = objc_alloc_init(PHAssetResourceCreationOptions);
      [(PHAssetResourceCreationOptions *)v25 setOriginalFilename:v23];
      [(PHAssetResourceCreationOptions *)v25 setUniformTypeIdentifier:v24];
      [v12 setCreationOptions:v25];
    }
  }

LABEL_21:

  return v12;
}

+ (id)assetResourceForDuplicatingAssetResource:(id)a3 asData:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [a1 assetResourceForDuplicatingAssetResource:v8 newResourceType:objc_msgSend(v8 asData:"type") error:{v6, a5}];

  return v9;
}

+ (unint64_t)probableCPLResourceTypeFromAssetResourceType:(int64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 19:
      result = 1;
      break;
    case 4:
      result = 17;
      break;
    case 5:
      result = 2;
      break;
    case 6:
      result = 16;
      break;
    case 7:
    case 17:
    case 18:
      return result;
    case 8:
      result = 15;
      break;
    case 9:
      result = 18;
      break;
    case 10:
      result = 19;
      break;
    case 11:
      result = 20;
      break;
    case 12:
      result = 25;
      break;
    case 13:
    case 14:
      result = 23;
      break;
    case 15:
      result = 24;
      break;
    case 16:
      result = 22;
      break;
    default:
      v4 = 14;
      if (a3 != 110)
      {
        v4 = 0;
      }

      if (a3 == 108)
      {
        result = 13;
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

@end