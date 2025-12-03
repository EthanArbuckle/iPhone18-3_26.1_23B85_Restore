@interface AEFileAssetPackageGenerator
+ (id)calculateLivePhotoVideoPath:(id)path;
+ (id)generateAssetFromFileURLs:(id)ls previewImage:(id)image error:(id *)error;
+ (id)videoComplementFromFileURL:(id)l metadata:(id)metadata;
+ (int64_t)playbackStyleFromMetadata:(id)metadata isLivePhoto:(BOOL)photo;
+ (unint64_t)mediaSubtypeFromMetadata:(id)metadata;
+ (void)generateMetadataFromFileURLs:(id)ls fileURL:(id *)l videoComplementURL:(id *)rL metadata:(id *)metadata;
@end

@implementation AEFileAssetPackageGenerator

+ (id)calculateLivePhotoVideoPath:(id)path
{
  path = [path path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  v5 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"MOV"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    goto LABEL_4;
  }

  stringByDeletingPathExtension2 = [v5 stringByDeletingPathExtension];
  v9 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"mov"];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(stringByDeletingPathExtension2) = [defaultManager2 fileExistsAtPath:v9];

  if (stringByDeletingPathExtension2)
  {
    v5 = v9;
LABEL_4:
    v11 = v5;
    v9 = v11;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (id)videoComplementFromFileURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  livePhotoPairingIdentifier = [metadata livePhotoPairingIdentifier];
  if (livePhotoPairingIdentifier)
  {
    v7 = [AEFileAssetPackageGenerator calculateLivePhotoVideoPath:lCopy];
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277D3B520]);
      path = [lCopy path];
      v12 = *MEMORY[0x277CC0898];
      v13 = *(MEMORY[0x277CC0898] + 16);
      v10 = [v8 initWithPathToVideo:v7 pathToImage:path imageDisplayTime:&v12 pairingIdentifier:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int64_t)playbackStyleFromMetadata:(id)metadata isLivePhoto:(BOOL)photo
{
  photoCopy = photo;
  metadataCopy = metadata;
  if ([metadataCopy isImage])
  {
    isAnimatedImage = [metadataCopy isAnimatedImage];
    v7 = 3;
    if (!photoCopy)
    {
      v7 = 1;
    }

    if (isAnimatedImage)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }
  }

  else if ([metadataCopy isMovie])
  {
    if ([metadataCopy isAutoloop])
    {
      v8 = 5;
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)mediaSubtypeFromMetadata:(id)metadata
{
  if ([metadata isSpatialMedia])
  {
    return 1024;
  }

  else
  {
    return 0;
  }
}

+ (void)generateMetadataFromFileURLs:(id)ls fileURL:(id *)l videoComplementURL:(id *)rL metadata:(id *)metadata
{
  lsCopy = ls;
  v9 = objc_alloc(MEMORY[0x277D3B458]);
  firstObject = [lsCopy firstObject];
  v11 = [v9 initWithMediaURL:firstObject options:13 timeZoneLookup:0 shouldCache:1];

  if ([lsCopy count] != 2 || (v12 = objc_alloc(MEMORY[0x277D3B458]), objc_msgSend(lsCopy, "lastObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "initWithMediaURL:options:timeZoneLookup:shouldCache:", v13, 13, 0, 1), v13, !v14))
  {
    *l = [lsCopy firstObject];
    *rL = 0;
    v16 = v11;
    v14 = 0;
    goto LABEL_7;
  }

  if ([v11 isImage] && objc_msgSend(v14, "isMovie"))
  {
    *l = [lsCopy firstObject];
    *rL = [lsCopy lastObject];
    v15 = v11;
LABEL_7:
    v17 = v11;
LABEL_8:
    *metadata = v17;
    goto LABEL_9;
  }

  if ([v11 isMovie] && objc_msgSend(v14, "isImage"))
  {
    *l = [lsCopy lastObject];
    *rL = [lsCopy firstObject];
    v18 = v14;
    v17 = v14;
    goto LABEL_8;
  }

LABEL_9:
}

+ (id)generateAssetFromFileURLs:(id)ls previewImage:(id)image error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  imageCopy = image;
  if (![lsCopy count])
  {
    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ([lsCopy count] >= 3)
  {
    if (error)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = 1;
LABEL_7:
      [v9 errorWithDomain:@"AEFileAssetPackageGeneratorErrorDomain" code:v10 userInfo:0];
      *error = v11 = 0;
      goto LABEL_48;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_48;
  }

  v57 = 0;
  v58 = 0;
  v56 = 0;
  [AEFileAssetPackageGenerator generateMetadataFromFileURLs:lsCopy fileURL:&v58 videoComplementURL:&v57 metadata:&v56];
  v12 = v58;
  v13 = v57;
  v14 = v56;
  v15 = v14;
  if (v12 && v14)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v11 = [[AEMutableAssetPackage alloc] initWithAssetIdentifier:uUIDString];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isImage = [v15 isImage];
    if (isImage)
    {
      identifier = [*MEMORY[0x277CE1DB0] identifier];
      [(AEMutableAssetPackage *)v11 storeURL:v12 forType:identifier];

      if (!v13)
      {
        isImage = 0;
LABEL_18:
        [v15 orientedPixelSize];
        v23 = v22;
        v25 = v24;
        [imageCopy size];
        v28 = v26;
        v29 = v27;
        v54 = uUIDString;
        if (imageCopy && v23 == v26 && v25 == v27)
        {
          v30 = PLAssetExplorerGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(time.value) = 0;
            _os_log_impl(&dword_2411DE000, v30, OS_LOG_TYPE_DEFAULT, "Using preview image from preview.", &time, 2u);
          }

          [(AEMutableAssetPackage *)v11 setSidecarObject:imageCopy forKey:@"com.apple.assetexplorer.asset-preview-image"];
        }

        else
        {
          isImage2 = [v15 isImage];
          v32 = PLAssetExplorerGetLog();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (isImage2)
          {
            if (v33)
            {
              LOWORD(time.value) = 0;
              _os_log_impl(&dword_2411DE000, v32, OS_LOG_TYPE_DEFAULT, "Generating preview image.", &time, 2u);
            }

            v34 = objc_alloc(MEMORY[0x277D755B8]);
            path = [v12 path];
            v36 = [v34 initWithContentsOfFile:path];

            [(AEMutableAssetPackage *)v11 setSidecarObject:v36 forKey:@"com.apple.assetexplorer.asset-preview-image"];
          }

          else
          {
            if (v33)
            {
              v37 = @"not nil";
              if (!imageCopy)
              {
                v37 = @"nil";
              }

              v53 = v37;
              v65.width = v23;
              v65.height = v25;
              v38 = NSStringFromCGSize(v65);
              v66.width = v28;
              v66.height = v29;
              v39 = NSStringFromCGSize(v66);
              isImage3 = [v15 isImage];
              v41 = @"NO";
              LODWORD(time.value) = 138413058;
              *(&time.value + 4) = v53;
              LOWORD(time.flags) = 2112;
              if (isImage3)
              {
                v41 = @"YES";
              }

              *(&time.flags + 2) = v38;
              HIWORD(time.epoch) = 2112;
              v60 = v39;
              v61 = 2112;
              v62 = v41;
              _os_log_impl(&dword_2411DE000, v32, OS_LOG_TYPE_DEFAULT, "Not generating preview. previewImage = %@, size = %@, previewImage.size = %@, isImage = %@", &time, 0x2Au);
            }
          }
        }

        v42 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        [v18 setValue:v42 forKey:@"AEAssetPackageDisplayPixelWidth"];

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
        [v18 setValue:v43 forKey:@"AEAssetPackageDisplayPixelHeight"];

        creationDate = [v15 creationDate];
        [v18 setValue:creationDate forKey:@"AEAssetPackageDisplayCreationDate"];

        if ([v15 isImage])
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
        [v18 setValue:v46 forKey:@"AEAssetPackageDisplayMediaType"];

        v47 = [MEMORY[0x277CCABB0] numberWithInteger:{+[AEFileAssetPackageGenerator playbackStyleFromMetadata:isLivePhoto:](AEFileAssetPackageGenerator, "playbackStyleFromMetadata:isLivePhoto:", v15, isImage)}];
        [v18 setValue:v47 forKey:@"AEAssetPackageDisplayPlaybackStyle"];

        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[AEFileAssetPackageGenerator mediaSubtypeFromMetadata:](AEFileAssetPackageGenerator, "mediaSubtypeFromMetadata:", v15)}];
        [v18 setValue:v48 forKey:@"AEAssetPackageDisplayMediaSubtypes"];

        [(AEMutableAssetPackage *)v11 addSidecarEntriesFromDictionary:v18];
        v49 = PLAssetExplorerGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          if (v13)
          {
            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@" and video complement url %@", v13];
          }

          else
          {
            v50 = &stru_2852F4758;
          }

          LODWORD(time.value) = 138412546;
          *(&time.value + 4) = v12;
          LOWORD(time.flags) = 2112;
          *(&time.flags + 2) = v50;
          _os_log_impl(&dword_2411DE000, v49, OS_LOG_TYPE_DEFAULT, "Package generated from file url %@%@", &time, 0x16u);
          if (v13)
          {
          }
        }

        goto LABEL_47;
      }

      identifier2 = [*MEMORY[0x277CE1E00] identifier];
      [(AEMutableAssetPackage *)v11 storeURL:v13 forType:identifier2];
    }

    else
    {
      identifier3 = [*MEMORY[0x277CE1E00] identifier];
      [(AEMutableAssetPackage *)v11 storeURL:v12 forType:identifier3];

      [v15 duration];
      identifier2 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
      [v18 setValue:identifier2 forKey:@"AEAssetPackageDisplayDuration"];
    }

    goto LABEL_18;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"AEFileAssetPackageGeneratorErrorDomain" code:2 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_47:

LABEL_48:
  v51 = *MEMORY[0x277D85DE8];

  return v11;
}

@end