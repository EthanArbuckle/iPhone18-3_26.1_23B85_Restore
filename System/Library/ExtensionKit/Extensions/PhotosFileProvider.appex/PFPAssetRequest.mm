@interface PFPAssetRequest
+ (void)_exportThumbnailForAsset:(id)asset thumbnailSize:(int64_t)size fileProviderURL:(id)l progress:(id)progress completion:(id)completion;
+ (void)_markURLAsPurgable:(id)purgable completionHandler:(id)handler;
+ (void)_replaceAssetAtURL:(id)l withItemAtURL:(id)rL completionHandler:(id)handler;
+ (void)_saveImageRef:(CGImage *)ref toURL:(id)l completionHandler:(id)handler;
+ (void)requestFileForPhotosFileProviderURL:(id)l progressCreation:(id)creation completion:(id)completion;
@end

@implementation PFPAssetRequest

+ (void)_markURLAsPurgable:(id)purgable completionHandler:(id)handler
{
  purgableCopy = purgable;
  handlerCopy = handler;
  if ([PLCacheDeleteSupport markPurgeableForFileAtURL:purgableCopy withUrgency:0 outInode:0])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = purgableCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Marked file provider URL (%@) as purgeable.", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = purgableCopy;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to mark file provider URL (%@) as purgeable.", &v7, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = purgableCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully provided file at URL: %@", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, purgableCopy, 0);
}

+ (void)_replaceAssetAtURL:(id)l withItemAtURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v11 = +[NSFileManager defaultManager];
  v14 = 0;
  v12 = [v11 replaceItemAtURL:lCopy withItemAtURL:rLCopy backupItemName:0 options:0 resultingItemURL:0 error:&v14];
  v13 = v14;

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = lCopy;
      v17 = 2112;
      v18 = rLCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Replaced existing file at URL (%@) with URL (%@).", buf, 0x16u);
    }

    [self _markURLAsPurgable:lCopy completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = lCopy;
      v17 = 2112;
      v18 = rLCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to replace file at URL (%@) with URL (%@) with error: %@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 0, v13);
  }
}

+ (void)_saveImageRef:(CGImage *)ref toURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  identifier = [UTTypeJPEG identifier];
  v11 = CGImageDestinationCreateWithURL(lCopy, identifier, 1uLL, 0);

  if (v11)
  {
    CGImageDestinationAddImage(v11, ref, 0);
    if (CGImageDestinationFinalize(v11))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = lCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Saved image ref at URL (%@).", buf, 0xCu);
      }

      [self _markURLAsPurgable:lCopy completionHandler:handlerCopy];
    }

    else
    {
      v22 = NSDebugDescriptionErrorKey;
      v23 = @"Failed to write image ref";
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [NSError errorWithDomain:@"PFPAssetRequestErrorDomain" code:-1 userInfo:v14];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = lCopy;
        v20 = 2112;
        v21 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to saved image ref to URL (%@) with error: %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 0, v15);
    }

    CFRelease(v11);
  }

  else
  {
    v16 = NSDebugDescriptionErrorKey;
    v17 = @"Failed to create destination ref";
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:@"PFPAssetRequestErrorDomain" code:-1 userInfo:v12];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = lCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to saved image ref to URL (%@) with error: %@", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0, v13);
  }
}

+ (void)_exportThumbnailForAsset:(id)asset thumbnailSize:(int64_t)size fileProviderURL:(id)l progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  lCopy = l;
  progressCopy = progress;
  completionCopy = completion;
  if (size == 1)
  {
    v17 = 120.0;
  }

  else
  {
    v17 = 360.0;
    if (!size)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PFPAssetRequest.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"thumbnailSize != PXPhotosFileProviderThumbnailSizeUndefined"}];

      v17 = 360.0;
    }
  }

  v19 = objc_alloc_init(PHImageRequestOptions);
  [v19 setDeliveryMode:1];
  [v19 setNetworkAccessAllowed:0];
  v20 = +[PHImageManager defaultManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100001F60;
  v24[3] = &unk_1000082A0;
  v25 = lCopy;
  v26 = progressCopy;
  v27 = completionCopy;
  selfCopy = self;
  v21 = completionCopy;
  v22 = progressCopy;
  v23 = lCopy;
  [v20 requestNewCGImageForAsset:assetCopy targetSize:0 contentMode:v19 options:v24 resultHandler:{v17, v17}];
}

+ (void)requestFileForPhotosFileProviderURL:(id)l progressCreation:(id)creation completion:(id)completion
{
  lCopy = l;
  creationCopy = creation;
  completionCopy = completion;
  if (lCopy)
  {
    if (creationCopy)
    {
      goto LABEL_3;
    }

LABEL_33:
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PFPAssetRequest.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"progressCreation"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"PFPAssetRequest.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"fileProviderURL"}];

  if (!creationCopy)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_34:
  v29 = +[NSAssertionHandler currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"PFPAssetRequest.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v12 = [NSProgress progressWithTotalUnitCount:100];
  creationCopy[2](creationCopy, v12);
  v13 = [[PFPAssetRequestConfiguration alloc] initWithFileProviderURL:lCopy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PFPAssetRequestConfiguration *)v13 debugDescription];
    *buf = 138412546;
    v43 = v14;
    v44 = 2112;
    v45 = lCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Created configuration (%@) from file provider URL: %@", buf, 0x16u);
  }

  photoLibrary = [(PFPAssetRequestConfiguration *)v13 photoLibrary];
  if (photoLibrary)
  {
LABEL_11:
    localIdentifier = [(PFPAssetRequestConfiguration *)v13 localIdentifier];
    if (!localIdentifier)
    {
      uUID = [(PFPAssetRequestConfiguration *)v13 UUID];
      v20 = [uUID length];

      if (v20)
      {
        uUID2 = [(PFPAssetRequestConfiguration *)v13 UUID];
        localIdentifier = [PHAsset localIdentifierWithUUID:uUID2];
      }

      else
      {
        localIdentifier = 0;
      }
    }

    v22 = [photoLibrary px_fetchObjectWithLocalIdentifier:localIdentifier];
    if (!v22)
    {
      v30 = completionCopy;
      v40[0] = NSDebugDescriptionErrorKey;
      v40[1] = NSURLErrorKey;
      v41[0] = @"Failed to fetch PHObject";
      v41[1] = lCopy;
      v25 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      exportConfiguration = [NSError errorWithDomain:@"PFPAssetRequestErrorDomain" code:0 userInfo:v25];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = localIdentifier;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch PHObject with localIdentifier: %@", buf, 0xCu);
      }

      completionCopy = v30;
      (*(v30 + 2))(v30, 0, exportConfiguration);
      goto LABEL_30;
    }

    [v12 setCompletedUnitCount:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 138412546;
      v43 = v22;
      v44 = 2112;
      v45 = localizedDescription;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished fetching object: %@ (progress: %@)", buf, 0x16u);
    }

    exportConfiguration = [(PFPAssetRequestConfiguration *)v13 exportConfiguration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(PFPAssetRequestConfiguration *)v13 thumbnailSize])
      {
        [self _exportThumbnailForAsset:v22 thumbnailSize:-[PFPAssetRequestConfiguration thumbnailSize](v13 fileProviderURL:"thumbnailSize") progress:lCopy completion:{v12, completionCopy}];
LABEL_30:

        goto LABEL_31;
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000284C;
      v35[3] = &unk_100008278;
      selfCopy = self;
      v36 = lCopy;
      v37 = completionCopy;
      [PXPhotosExportUtilities exportAsset:v22 configuration:exportConfiguration progress:v12 completion:v35];

      v26 = v36;
    }

    else
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100002874;
      v31[3] = &unk_100008278;
      selfCopy2 = self;
      v32 = lCopy;
      v33 = completionCopy;
      [PXPhotosExportUtilities exportAssetsInContainer:v22 configuration:exportConfiguration progress:v12 completion:v31];

      v26 = v32;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Missing photo library so fallback to the system photo library.", buf, 2u);
  }

  v39 = 0;
  v16 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:1 error:&v39];
  v17 = v39;
  photoLibrary = v17;
  if (v16)
  {

    photoLibrary = v16;
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = photoLibrary;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Can't open system photo library: %@", buf, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 0, photoLibrary);
LABEL_31:
}

@end