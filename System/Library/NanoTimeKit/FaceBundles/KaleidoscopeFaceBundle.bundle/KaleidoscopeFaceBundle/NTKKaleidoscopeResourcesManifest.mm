@interface NTKKaleidoscopeResourcesManifest
- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4;
@end

@implementation NTKKaleidoscopeResourcesManifest

- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = NTKPhotoResourcesManifestImageListLocalIdentifierKey;
  v7 = [v5 objectForKeyedSubscript:NTKPhotoResourcesManifestImageListLocalIdentifierKey];
  if (!v7 || (v8 = v7, [v5 objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) == 0))
  {
    v20 = _NTKLoggingObjectForDomain();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v22 = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    v23 = [v22 lastPathComponent];
    v24 = [v5 objectForKeyedSubscript:v6];
    v27 = 138412546;
    v28 = v23;
    v29 = 2112;
    v30 = v24;
    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid image list item identifier: %@", &v27, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    v13 = [v12 lastPathComponent];
    v14 = [v5 objectForKeyedSubscript:v6];
    v27 = 138412546;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", &v27, 0x16u);
  }

  v15 = NTKPhotoResourcesManifestImageListImageURLKey;
  v16 = [v5 objectForKeyedSubscript:NTKPhotoResourcesManifestImageListImageURLKey];
  if (!v16 || (v17 = v16, [v5 objectForKeyedSubscript:v15], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) == 0))
  {
    v20 = _NTKLoggingObjectForDomain();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v22 = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    v23 = [v22 lastPathComponent];
    v25 = [v5 objectForKeyedSubscript:v15];
    v27 = 138412802;
    v28 = v23;
    v29 = 2112;
    v30 = v25;
    v31 = 2112;
    v32 = v15;
    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid value: %@ for key: %@", &v27, 0x20u);

    goto LABEL_13;
  }

  v20 = [v5 objectForKeyedSubscript:v15];
  if (![(NTKKaleidoscopeResourcesManifest *)self resourceWithName:v20 isValidMediaAssetOfType:&off_265E0 withMinFileSize:1000 maxFileSize:2000000])
  {
LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  v21 = [(NTKKaleidoscopeResourcesManifest *)self resourceWithNameIsValidImage:v20];
LABEL_15:

  return v21;
}

@end