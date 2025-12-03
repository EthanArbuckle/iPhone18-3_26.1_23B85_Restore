@interface NTKKaleidoscopeResourcesManifest
- (BOOL)validateImageListItem:(id)item withError:(id *)error;
@end

@implementation NTKKaleidoscopeResourcesManifest

- (BOOL)validateImageListItem:(id)item withError:(id *)error
{
  itemCopy = item;
  v6 = NTKPhotoResourcesManifestImageListLocalIdentifierKey;
  v7 = [itemCopy objectForKeyedSubscript:NTKPhotoResourcesManifestImageListLocalIdentifierKey];
  if (!v7 || (v8 = v7, [itemCopy objectForKeyedSubscript:v6], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) == 0))
  {
    v20 = _NTKLoggingObjectForDomain();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    resourceDirectoryURL = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    lastPathComponent = [resourceDirectoryURL lastPathComponent];
    v24 = [itemCopy objectForKeyedSubscript:v6];
    v27 = 138412546;
    v28 = lastPathComponent;
    v29 = 2112;
    v30 = v24;
    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid image list item identifier: %@", &v27, 0x16u);

LABEL_13:
    goto LABEL_14;
  }

  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    resourceDirectoryURL2 = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    lastPathComponent2 = [resourceDirectoryURL2 lastPathComponent];
    v14 = [itemCopy objectForKeyedSubscript:v6];
    v27 = 138412546;
    v28 = lastPathComponent2;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", &v27, 0x16u);
  }

  v15 = NTKPhotoResourcesManifestImageListImageURLKey;
  v16 = [itemCopy objectForKeyedSubscript:NTKPhotoResourcesManifestImageListImageURLKey];
  if (!v16 || (v17 = v16, [itemCopy objectForKeyedSubscript:v15], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) == 0))
  {
    v20 = _NTKLoggingObjectForDomain();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    resourceDirectoryURL = [(NTKKaleidoscopeResourcesManifest *)self resourceDirectoryURL];
    lastPathComponent = [resourceDirectoryURL lastPathComponent];
    v25 = [itemCopy objectForKeyedSubscript:v15];
    v27 = 138412802;
    v28 = lastPathComponent;
    v29 = 2112;
    v30 = v25;
    v31 = 2112;
    v32 = v15;
    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid value: %@ for key: %@", &v27, 0x20u);

    goto LABEL_13;
  }

  v20 = [itemCopy objectForKeyedSubscript:v15];
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