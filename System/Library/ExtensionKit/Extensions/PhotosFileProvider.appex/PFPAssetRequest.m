@interface PFPAssetRequest
+ (void)_exportThumbnailForAsset:(id)a3 thumbnailSize:(int64_t)a4 fileProviderURL:(id)a5 progress:(id)a6 completion:(id)a7;
+ (void)_markURLAsPurgable:(id)a3 completionHandler:(id)a4;
+ (void)_replaceAssetAtURL:(id)a3 withItemAtURL:(id)a4 completionHandler:(id)a5;
+ (void)_saveImageRef:(CGImage *)a3 toURL:(id)a4 completionHandler:(id)a5;
+ (void)requestFileForPhotosFileProviderURL:(id)a3 progressCreation:(id)a4 completion:(id)a5;
@end

@implementation PFPAssetRequest

+ (void)_markURLAsPurgable:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([PLCacheDeleteSupport markPurgeableForFileAtURL:v5 withUrgency:0 outInode:0])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Marked file provider URL (%@) as purgeable.", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to mark file provider URL (%@) as purgeable.", &v7, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully provided file at URL: %@", &v7, 0xCu);
  }

  v6[2](v6, v5, 0);
}

+ (void)_replaceAssetAtURL:(id)a3 withItemAtURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSFileManager defaultManager];
  v14 = 0;
  v12 = [v11 replaceItemAtURL:v8 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:&v14];
  v13 = v14;

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Replaced existing file at URL (%@) with URL (%@).", buf, 0x16u);
    }

    [a1 _markURLAsPurgable:v8 completionHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to replace file at URL (%@) with URL (%@) with error: %@", buf, 0x20u);
    }

    v10[2](v10, 0, v13);
  }
}

+ (void)_saveImageRef:(CGImage *)a3 toURL:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [UTTypeJPEG identifier];
  v11 = CGImageDestinationCreateWithURL(v8, v10, 1uLL, 0);

  if (v11)
  {
    CGImageDestinationAddImage(v11, a3, 0);
    if (CGImageDestinationFinalize(v11))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Saved image ref at URL (%@).", buf, 0xCu);
      }

      [a1 _markURLAsPurgable:v8 completionHandler:v9];
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
        v19 = v8;
        v20 = 2112;
        v21 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to saved image ref to URL (%@) with error: %@", buf, 0x16u);
      }

      v9[2](v9, 0, v15);
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
      v19 = v8;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to saved image ref to URL (%@) with error: %@", buf, 0x16u);
    }

    v9[2](v9, 0, v13);
  }
}

+ (void)_exportThumbnailForAsset:(id)a3 thumbnailSize:(int64_t)a4 fileProviderURL:(id)a5 progress:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a4 == 1)
  {
    v17 = 120.0;
  }

  else
  {
    v17 = 360.0;
    if (!a4)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"PFPAssetRequest.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"thumbnailSize != PXPhotosFileProviderThumbnailSizeUndefined"}];

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
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = a1;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  [v20 requestNewCGImageForAsset:v13 targetSize:0 contentMode:v19 options:v24 resultHandler:{v17, v17}];
}

+ (void)requestFileForPhotosFileProviderURL:(id)a3 progressCreation:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_33:
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PFPAssetRequest.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"progressCreation"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"PFPAssetRequest.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"fileProviderURL"}];

  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_34:
  v29 = +[NSAssertionHandler currentHandler];
  [v29 handleFailureInMethod:a2 object:a1 file:@"PFPAssetRequest.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v12 = [NSProgress progressWithTotalUnitCount:100];
  v10[2](v10, v12);
  v13 = [[PFPAssetRequestConfiguration alloc] initWithFileProviderURL:v9];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PFPAssetRequestConfiguration *)v13 debugDescription];
    *buf = 138412546;
    v43 = v14;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Created configuration (%@) from file provider URL: %@", buf, 0x16u);
  }

  v15 = [(PFPAssetRequestConfiguration *)v13 photoLibrary];
  if (v15)
  {
LABEL_11:
    v18 = [(PFPAssetRequestConfiguration *)v13 localIdentifier];
    if (!v18)
    {
      v19 = [(PFPAssetRequestConfiguration *)v13 UUID];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [(PFPAssetRequestConfiguration *)v13 UUID];
        v18 = [PHAsset localIdentifierWithUUID:v21];
      }

      else
      {
        v18 = 0;
      }
    }

    v22 = [v15 px_fetchObjectWithLocalIdentifier:v18];
    if (!v22)
    {
      v30 = v11;
      v40[0] = NSDebugDescriptionErrorKey;
      v40[1] = NSURLErrorKey;
      v41[0] = @"Failed to fetch PHObject";
      v41[1] = v9;
      v25 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      v24 = [NSError errorWithDomain:@"PFPAssetRequestErrorDomain" code:0 userInfo:v25];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v18;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch PHObject with localIdentifier: %@", buf, 0xCu);
      }

      v11 = v30;
      (*(v30 + 2))(v30, 0, v24);
      goto LABEL_30;
    }

    [v12 setCompletedUnitCount:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 localizedDescription];
      *buf = 138412546;
      v43 = v22;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finished fetching object: %@ (progress: %@)", buf, 0x16u);
    }

    v24 = [(PFPAssetRequestConfiguration *)v13 exportConfiguration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(PFPAssetRequestConfiguration *)v13 thumbnailSize])
      {
        [a1 _exportThumbnailForAsset:v22 thumbnailSize:-[PFPAssetRequestConfiguration thumbnailSize](v13 fileProviderURL:"thumbnailSize") progress:v9 completion:{v12, v11}];
LABEL_30:

        goto LABEL_31;
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000284C;
      v35[3] = &unk_100008278;
      v38 = a1;
      v36 = v9;
      v37 = v11;
      [PXPhotosExportUtilities exportAsset:v22 configuration:v24 progress:v12 completion:v35];

      v26 = v36;
    }

    else
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100002874;
      v31[3] = &unk_100008278;
      v34 = a1;
      v32 = v9;
      v33 = v11;
      [PXPhotosExportUtilities exportAssetsInContainer:v22 configuration:v24 progress:v12 completion:v31];

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
  v15 = v17;
  if (v16)
  {

    v15 = v16;
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v15;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Can't open system photo library: %@", buf, 0xCu);
  }

  (*(v11 + 2))(v11, 0, v15);
LABEL_31:
}

@end