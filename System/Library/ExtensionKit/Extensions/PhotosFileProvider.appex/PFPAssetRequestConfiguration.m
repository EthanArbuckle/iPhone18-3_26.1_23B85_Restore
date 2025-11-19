@interface PFPAssetRequestConfiguration
+ (id)analyticsActivityTypeFromFileProviderURL:(id)a3;
- (PFPAssetRequestConfiguration)initWithFileProviderURL:(id)a3;
- (id)debugDescription;
@end

@implementation PFPAssetRequestConfiguration

- (id)debugDescription
{
  v3 = [(PFPAssetRequestConfiguration *)self UUID];
  v4 = [(PFPAssetRequestConfiguration *)self photoLibrary];
  v5 = [(PFPAssetRequestConfiguration *)self exportConfiguration];
  v6 = [NSString stringWithFormat:@"UUID: %@, PhotoLibrary: %@, ExportConfiguration: %@", v3, v4, v5];

  return v6;
}

- (PFPAssetRequestConfiguration)initWithFileProviderURL:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = PFPAssetRequestConfiguration;
  v5 = [(PFPAssetRequestConfiguration *)&v61 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_40;
  }

  v52 = v5;
  v7 = objc_alloc_init(NSURLComponents);
  v53 = v4;
  v8 = [v4 URLByDeletingPathExtension];
  v9 = [v8 lastPathComponent];
  [v7 setQuery:v9];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = v7;
  v10 = [v7 queryItems];
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (!v11)
  {
    v54 = 0;
    v55 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v12 = v11;
  v54 = 0;
  v55 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v58;
  do
  {
    v16 = 0;
    do
    {
      if (*v58 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v57 + 1) + 8 * v16);
      v18 = [v17 name];
      v19 = PXPhotosFileProviderURLQueryItemUUIDKey();
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = [v17 value];

        v14 = v21;
        goto LABEL_17;
      }

      v22 = [v17 name];
      v23 = PXPhotosFileProviderURLQueryItemIdentifierCodeKey();
      v24 = [v22 isEqualToString:v23];

      if (v24)
      {
        v25 = [v17 value];

        v13 = v25;
        goto LABEL_17;
      }

      v26 = [v17 name];
      v27 = PXPhotosFileProviderURLQueryItemLibraryIdentifierKey();
      v28 = [v26 isEqualToString:v27];

      if (v28)
      {
        v29 = [v17 value];

        v55 = v29;
        goto LABEL_17;
      }

      v30 = [v17 name];
      v31 = PXPhotosFileProviderURLQueryItemThumbnailSizeKey();
      v32 = [v30 isEqualToString:v31];

      if (v32)
      {
        v33 = [v17 value];
        v54 = [v33 integerValue];
LABEL_15:

        goto LABEL_17;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v33 = [v17 name];
        v34 = [v17 value];
        *buf = 138412546;
        v63 = v33;
        v64 = 2112;
        v65 = v34;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown URL query item (name: %@, value: %@)", buf, 0x16u);

        goto LABEL_15;
      }

LABEL_17:
      v16 = v16 + 1;
    }

    while (v12 != v16);
    v35 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
    v12 = v35;
  }

  while (v35);
LABEL_23:

  if ([v55 isEqualToString:@"cmm"])
  {
    v36 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
    v37 = 0;
    v6 = v52;
    v4 = v53;
    if (!v36)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v38 = [v55 integerValue];
    v6 = v52;
    v4 = v53;
    if ((v38 - 1) > 2)
    {
      v37 = 0;
      goto LABEL_30;
    }

    v56 = 0;
    v36 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:v38 error:&v56];
    v37 = v56;
    if (!v36)
    {
LABEL_30:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v63 = v55;
        v64 = 2112;
        v65 = v37;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Can't open photo library with identifier (%{public}@): %@", buf, 0x16u);
      }

      v36 = 0;
    }
  }

  v39 = [v4 pathExtension];
  v40 = [PFUniformTypeUtilities typeWithFilenameExtension:v39];

  if (!v40 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v50 = [v4 pathExtension];
    *buf = 138412290;
    v63 = v50;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Can't find possible content type with extension: %@", buf, 0xCu);
  }

  objc_storeStrong(&v6->_UUID, v14);
  v41 = [v14 length];
  if (v41)
  {
    v41 = [v13 length];
    if (v41)
    {
      v41 = [NSString stringWithFormat:@"%@/L0/%@", v14, v13];
    }
  }

  localIdentifier = v6->_localIdentifier;
  v6->_localIdentifier = v41;

  photoLibrary = v6->_photoLibrary;
  v6->_photoLibrary = v36;
  v44 = v36;

  v6->_thumbnailSize = v54;
  v45 = [v51 queryItems];
  v46 = [PXPhotosExportConfiguration configurationWithQueryItems:v45 possibleContentType:v40];
  exportConfiguration = v6->_exportConfiguration;
  v6->_exportConfiguration = v46;

  v48 = [objc_opt_class() analyticsActivityTypeFromFileProviderURL:v4];
  [(PXPhotosExportConfiguration *)v6->_exportConfiguration setActivityTypeForAssetExportAnalytics:v48];

LABEL_40:
  return v6;
}

+ (id)analyticsActivityTypeFromFileProviderURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 lastPathComponent];
  if (![(__CFString *)v4 length])
  {

    v4 = @"unknown";
  }

  v5 = [(__CFString *)v4 lowercaseString];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];

  if (![(__CFString *)v7 length])
  {

    v7 = @"com.apple.PhotosFileProvider";
  }

  v8 = [NSString stringWithFormat:@"%@.%@", v7, v5];

  return v8;
}

@end