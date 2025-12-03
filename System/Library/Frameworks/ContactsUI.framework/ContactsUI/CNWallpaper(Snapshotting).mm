@interface CNWallpaper(Snapshotting)
+ (id)log;
- (__CFData)snapshotDataFromSnapshotImage:()Snapshotting forSize:topPadding:extensionBundleID:;
- (id)snapshotImageDataForWatch;
- (uint64_t)imageIsFullyTransparent:()Snapshotting;
- (void)posterSnapshotForSize:()Snapshotting topPadding:contact:posterConfiguration:completion:;
- (void)snapshotImageDataWithPreferredSize:()Snapshotting topPadding:contact:posterConfiguration:completion:;
@end

@implementation CNWallpaper(Snapshotting)

- (void)snapshotImageDataWithPreferredSize:()Snapshotting topPadding:contact:posterConfiguration:completion:
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = *MEMORY[0x1E6996540];
  generatedWatchImageData = [self generatedWatchImageData];
  LOBYTE(v17) = (*(v17 + 16))(v17, generatedWatchImageData);

  if (v17)
  {
    if (objc_opt_respondsToSelector())
    {
      [self posterSnapshotForSize:v14 topPadding:v15 contact:v16 posterConfiguration:a2 completion:{a3, a4}];
    }

    else
    {
      v20 = [objc_opt_class() log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
      }

      v16[2](v16, 0);
    }
  }

  else
  {
    generatedWatchImageData2 = [self generatedWatchImageData];
    (v16)[2](v16, generatedWatchImageData2);
  }
}

- (id)snapshotImageDataForWatch
{
  v2 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CNWallpaper_Snapshotting__snapshotImageDataForWatch__block_invoke;
  v8[3] = &unk_1E74E5678;
  v3 = v2;
  v9 = v3;
  [self snapshotImageDataWithPreferredSize:0 topPadding:0 contact:v8 posterConfiguration:410.0 completion:{502.0, 165.0}];
  future = [v3 future];
  v5 = [future resultWithTimeout:0 error:5.0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = (*(*MEMORY[0x1E6996590] + 16))();
  }

  return v6;
}

- (__CFData)snapshotDataFromSnapshotImage:()Snapshotting forSize:topPadding:extensionBundleID:
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = [objc_opt_class() log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v56.width = a2;
    v56.height = a3;
    v15 = NSStringFromCGSize(v56);
    *buf = 138412290;
    v53 = v15;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "Generating image data for snapshot image of size: %@", buf, 0xCu);
  }

  ioSurface = [v12 ioSurface];
  if (ioSurface)
  {
    [v12 ioSurface];
    cGImage = UICreateCGImageFromIOSurface();
  }

  else
  {
    cGImage = [v12 CGImage];
  }

  v18 = cGImage;
  v19 = [_TtC10ContactsUI20CNWallpaperUtilities supportsWatchImageDataRepairFor:v13];
  v20 = floor(a4);
  Width = CGImageGetWidth(v18);
  v22 = Width / CGImageGetHeight(v18);
  v23 = 0.0;
  if (!v19)
  {
    v23 = v20;
  }

  v24 = a3 + v23;
  v25 = a2 / (a3 + v23);
  if (v22 >= v25)
  {
    v26 = a3 + v23;
  }

  else
  {
    v26 = a2 / v22;
  }

  v27 = CGImageCreateByScaling();
  if (ioSurface)
  {
    CGImageRelease(v18);
  }

  if (v19)
  {
    v28 = v20;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = v28 + v24;
  v30 = 0.0;
  if (v22 < v25)
  {
    if (v19)
    {
      +[_TtC10ContactsUI20CNWallpaperUtilities monogramPosterOffset];
      v30 = floor(v24 * -0.5 + v26 * v31 - v20);
    }

    else
    {
      v30 = v26 * 0.0;
    }
  }

  v32 = fmax(v30, 0.0);
  if (v30 > 0.0)
  {
    v30 = 0.0;
  }

  v33 = v29 + v30;
  v34 = 0;
  v35 = a2;
  v36 = CGImageCreateWithImageInRect(v27, *(&v32 - 1));
  CGImageRelease(v27);
  v37 = objc_opt_new();
  Height = CGImageGetHeight(v36);
  v39 = CGImageGetWidth(v36);
  v40 = v29 > Height && v19;
  cGImage2 = v36;
  if (v40)
  {
    v42 = v39;
    v43 = objc_opt_new();
    [v43 setScale:1.0];
    [v43 setOpaque:0];
    v44 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v43 format:{a2, v29}];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __96__CNWallpaper_Snapshotting__snapshotDataFromSnapshotImage_forSize_topPadding_extensionBundleID___block_invoke;
    v51[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v51[4] = v36;
    *&v51[5] = v42;
    *&v51[6] = Height;
    v45 = [v44 imageWithActions:v51];
    cGImage2 = [v45 CGImage];
  }

  if ([self imageIsFullyTransparent:cGImage2])
  {
    v46 = [objc_opt_class() log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v13;
      _os_log_error_impl(&dword_199A75000, v46, OS_LOG_TYPE_ERROR, "Failed to generate watch snapshot image data from image, resulting image is fully transparent. %@", buf, 0xCu);
    }

    CGImageRelease(v36);
LABEL_37:
    v49 = 0;
    goto LABEL_39;
  }

  v47 = CGImageDestinationCreateWithData(v37, @"public.heic", 1uLL, 0);
  CGImageDestinationAddImage(v47, cGImage2, 0);
  CGImageDestinationFinalize(v47);
  CGImageRelease(v36);
  if (v47)
  {
    CFRelease(v47);
  }

  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    v48 = [objc_opt_class() log];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v48, OS_LOG_TYPE_ERROR, "Failed to generate watch snapshot image data from image", buf, 2u);
    }

    goto LABEL_37;
  }

  v49 = v37;
LABEL_39:

  return v49;
}

- (uint64_t)imageIsFullyTransparent:()Snapshotting
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v6 = 1;
  v7 = malloc_type_calloc(Height * Width, 1uLL, 0x100004077774924uLL);
  v8 = CGBitmapContextCreate(v7, Width, Height, 8uLL, Width, 0, 7u);
  v15.size.width = Width;
  v15.size.height = Height;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  CGContextDrawImage(v8, v15, image);
  if (Height >= 1)
  {
    v9 = 0;
    v10 = v7;
    while (1)
    {
      v11 = Width;
      v12 = v10;
      if (Width >= 1)
      {
        break;
      }

LABEL_6:
      ++v9;
      v10 += Width;
      if (v9 == Height)
      {
        v6 = 1;
        goto LABEL_9;
      }
    }

    while (!*v12++)
    {
      if (!--v11)
      {
        goto LABEL_6;
      }
    }

    v6 = 0;
  }

LABEL_9:
  free(v7);
  CGContextRelease(v8);
  return v6;
}

- (void)posterSnapshotForSize:()Snapshotting topPadding:contact:posterConfiguration:completion:
{
  v40 = a6;
  v39 = a7;
  v14 = a8;
  v15 = [objc_opt_class() log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_INFO, "Initiating request for poster snapshot", buf, 2u);
  }

  v16 = *MEMORY[0x1E6996540];
  posterArchiveData = [self posterArchiveData];
  LODWORD(v16) = (*(v16 + 16))(v16, posterArchiveData);

  if (v16)
  {
    v18 = [objc_opt_class() log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v18, OS_LOG_TYPE_ERROR, "Attempting to generate a snapshot when poster archive data is empty", buf, 2u);
    }

    v14[2](v14, 0);
  }

  else
  {
    v19 = v39;
    if (!v19)
    {
      posterArchiveData2 = [self posterArchiveData];
      v19 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData2 error:0];
    }

    if (v40)
    {
      v21 = [[CNPRUISIncomingCallPosterContext alloc] initWithContact:v40 showName:0];
    }

    else
    {
      v21 = +[CNPRUISIncomingCallPosterContext emptyContext];
    }

    v22 = v21;
    v23 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v21 attachmentIdentifiers:0];
    v24 = [CNPRUISPosterSnapshotRequest requestForConfiguration:v19 definition:v23 interfaceOrientation:1];
    v25 = objc_alloc_init(CNPRUISPosterSnapshotController);
    extensionBundleID = [self extensionBundleID];
    v27 = extensionBundleID;
    if (extensionBundleID)
    {
      providerBundleIdentifier = extensionBundleID;
    }

    else
    {
      providerBundleIdentifier = [v19 providerBundleIdentifier];
    }

    v38 = providerBundleIdentifier;

    v48 = 0;
    v29 = [(CNPRUISPosterSnapshotController *)v25 latestSnapshotBundleForRequest:v24 error:&v48];
    v37 = v48;
    if (v29 && ([v23 levelSets], v36 = v23, v30 = v22, v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "snapshotForLevelSet:", v32), v33 = objc_claimAutoreleasedReturnValue(), v32, v31, v22 = v30, v23 = v36, v33))
    {
      v34 = v38;
      v35 = [self snapshotDataFromSnapshotImage:v33 forSize:v38 topPadding:a2 extensionBundleID:{a3, a4}];
      (v14)[2](v14, v35);
    }

    else
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __101__CNWallpaper_Snapshotting__posterSnapshotForSize_topPadding_contact_posterConfiguration_completion___block_invoke;
      v41[3] = &unk_1E74E5630;
      v41[4] = self;
      v44 = v14;
      v42 = v23;
      v45 = a2;
      v46 = a3;
      v47 = a4;
      v34 = v38;
      v43 = v38;
      [(CNPRUISPosterSnapshotController *)v25 executeSnapshotRequest:v24 completion:v41];
    }
  }
}

+ (id)log
{
  if (log_cn_once_token_1_49447 != -1)
  {
    dispatch_once(&log_cn_once_token_1_49447, &__block_literal_global_49448);
  }

  v1 = log_cn_once_object_1_49449;

  return v1;
}

@end