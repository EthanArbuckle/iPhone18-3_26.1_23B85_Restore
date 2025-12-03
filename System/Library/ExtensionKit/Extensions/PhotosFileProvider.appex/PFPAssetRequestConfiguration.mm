@interface PFPAssetRequestConfiguration
+ (id)analyticsActivityTypeFromFileProviderURL:(id)l;
- (PFPAssetRequestConfiguration)initWithFileProviderURL:(id)l;
- (id)debugDescription;
@end

@implementation PFPAssetRequestConfiguration

- (id)debugDescription
{
  uUID = [(PFPAssetRequestConfiguration *)self UUID];
  photoLibrary = [(PFPAssetRequestConfiguration *)self photoLibrary];
  exportConfiguration = [(PFPAssetRequestConfiguration *)self exportConfiguration];
  v6 = [NSString stringWithFormat:@"UUID: %@, PhotoLibrary: %@, ExportConfiguration: %@", uUID, photoLibrary, exportConfiguration];

  return v6;
}

- (PFPAssetRequestConfiguration)initWithFileProviderURL:(id)l
{
  lCopy = l;
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
  v53 = lCopy;
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  [v7 setQuery:lastPathComponent];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = v7;
  queryItems = [v7 queryItems];
  v11 = [queryItems countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (!v11)
  {
    integerValue = 0;
    v55 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v12 = v11;
  integerValue = 0;
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
        objc_enumerationMutation(queryItems);
      }

      v17 = *(*(&v57 + 1) + 8 * v16);
      name = [v17 name];
      v19 = PXPhotosFileProviderURLQueryItemUUIDKey();
      v20 = [name isEqualToString:v19];

      if (v20)
      {
        value = [v17 value];

        v14 = value;
        goto LABEL_17;
      }

      name2 = [v17 name];
      v23 = PXPhotosFileProviderURLQueryItemIdentifierCodeKey();
      v24 = [name2 isEqualToString:v23];

      if (v24)
      {
        value2 = [v17 value];

        v13 = value2;
        goto LABEL_17;
      }

      name3 = [v17 name];
      v27 = PXPhotosFileProviderURLQueryItemLibraryIdentifierKey();
      v28 = [name3 isEqualToString:v27];

      if (v28)
      {
        value3 = [v17 value];

        v55 = value3;
        goto LABEL_17;
      }

      name4 = [v17 name];
      v31 = PXPhotosFileProviderURLQueryItemThumbnailSizeKey();
      v32 = [name4 isEqualToString:v31];

      if (v32)
      {
        value4 = [v17 value];
        integerValue = [value4 integerValue];
LABEL_15:

        goto LABEL_17;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        value4 = [v17 name];
        value5 = [v17 value];
        *buf = 138412546;
        v63 = value4;
        v64 = 2112;
        v65 = value5;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unknown URL query item (name: %@, value: %@)", buf, 0x16u);

        goto LABEL_15;
      }

LABEL_17:
      v16 = v16 + 1;
    }

    while (v12 != v16);
    v35 = [queryItems countByEnumeratingWithState:&v57 objects:v66 count:16];
    v12 = v35;
  }

  while (v35);
LABEL_23:

  if ([v55 isEqualToString:@"cmm"])
  {
    v36 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
    v37 = 0;
    v6 = v52;
    lCopy = v53;
    if (!v36)
    {
      goto LABEL_30;
    }
  }

  else
  {
    integerValue2 = [v55 integerValue];
    v6 = v52;
    lCopy = v53;
    if ((integerValue2 - 1) > 2)
    {
      v37 = 0;
      goto LABEL_30;
    }

    v56 = 0;
    v36 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:integerValue2 error:&v56];
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

  pathExtension = [lCopy pathExtension];
  v40 = [PFUniformTypeUtilities typeWithFilenameExtension:pathExtension];

  if (!v40 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    pathExtension2 = [lCopy pathExtension];
    *buf = 138412290;
    v63 = pathExtension2;
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

  v6->_thumbnailSize = integerValue;
  queryItems2 = [v51 queryItems];
  v46 = [PXPhotosExportConfiguration configurationWithQueryItems:queryItems2 possibleContentType:v40];
  exportConfiguration = v6->_exportConfiguration;
  v6->_exportConfiguration = v46;

  v48 = [objc_opt_class() analyticsActivityTypeFromFileProviderURL:lCopy];
  [(PXPhotosExportConfiguration *)v6->_exportConfiguration setActivityTypeForAssetExportAnalytics:v48];

LABEL_40:
  return v6;
}

+ (id)analyticsActivityTypeFromFileProviderURL:(id)l
{
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  lastPathComponent = [uRLByDeletingLastPathComponent lastPathComponent];
  if (![(__CFString *)lastPathComponent length])
  {

    lastPathComponent = @"unknown";
  }

  lowercaseString = [(__CFString *)lastPathComponent lowercaseString];

  v6 = +[NSBundle mainBundle];
  bundleIdentifier = [v6 bundleIdentifier];

  if (![(__CFString *)bundleIdentifier length])
  {

    bundleIdentifier = @"com.apple.PhotosFileProvider";
  }

  v8 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, lowercaseString];

  return v8;
}

@end