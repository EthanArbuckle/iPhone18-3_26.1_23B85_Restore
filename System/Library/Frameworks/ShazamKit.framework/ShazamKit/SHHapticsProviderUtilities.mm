@interface SHHapticsProviderUtilities
+ (BOOL)isValidAppleArchiveFileURL:(id)a3;
+ (id)availableHapticAlgorithms;
+ (id)cachedHapticTracksForMediaItem:(id)a3;
+ (id)decompressionDirectoryForMediaItem:(id)a3;
+ (id)folderNameForMediaItem:(id)a3;
+ (id)hapticFromResponse:(id)a3;
+ (id)hapticTracksForMediaItem:(id)a3 inDirectory:(id)a4;
+ (id)hapticsFromDownloadResponses:(id)a3;
+ (id)musicHapticsRootDirectory;
@end

@implementation SHHapticsProviderUtilities

+ (id)hapticsFromDownloadResponses:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 hapticFromResponse:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)cachedHapticTracksForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 appleMusicID];

  if (v5)
  {
    v6 = [a1 decompressionDirectoryForMediaItem:v4];
    v7 = [a1 hapticTracksForMediaItem:v4 inDirectory:v6];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

+ (id)hapticFromResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 networkDownloadResponse];
  v6 = [v5 error];

  v7 = [v4 networkDownloadResponse];
  v8 = [v7 downloadedFileLocation];

  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v4 mediaItem];
    v11 = [v10 appleMusicID];
    v12 = [v4 mediaItem];
    v13 = [v12 isrc];
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Validating spatial information of Adam ID %@, ISRC: %@", buf, 0x16u);
  }

  v14 = [v4 spatialTrackInformation];
  if ([SHHapticSpatialTrackValidator isValidSpatialTrackInformation:v14])
  {
    v15 = [v4 spatialTrackInformation];
  }

  else
  {
    v15 = 0;
  }

  if ([a1 isValidAppleArchiveFileURL:v8])
  {
    v16 = [v4 mediaItem];
    v17 = [a1 decompressionDirectoryForMediaItem:v16];

    v31 = v6;
    v18 = [SHCompression decompressAppleArchiveAtURL:v8 toDirectoryURL:v17 error:&v31];
    v19 = v31;

    v20 = [v4 mediaItem];
    v21 = [a1 hapticTracksForMediaItem:v20 inDirectory:v17];

    if (v18 && [v21 count])
    {
      v22 = [SHHaptic alloc];
      v23 = [v4 mediaItem];
      v24 = [v22 initWithHapticTracks:v21 representingMediaItem:v23 spatialTrackInformation:v15 error:0];

      goto LABEL_15;
    }

    v29 = sh_log_object();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = @"No";
      if (v18)
      {
        v30 = @"Yes";
      }

      *buf = 138412290;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Could not find default haptics file in archive. ArchiveWasDecompressed: %@", buf, 0xCu);
    }

    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = v6;
    if (!v6)
    {
LABEL_11:
      v32 = NSDebugDescriptionErrorKey;
      v33 = @"Failed to download/unzip archive to extract haptics file";
      v25 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v19 = [SHError errorWithCode:600 underlyingError:0 keyOverrides:v25];
    }
  }

  v26 = sh_log_object();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v35 = @"Failed to download/unzip archive to extract haptics file";
    v36 = 2112;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@. Error: %@", buf, 0x16u);
  }

  v27 = [SHHaptic alloc];
  v17 = [v4 mediaItem];
  v24 = [v27 initWithHapticTracks:0 representingMediaItem:v17 spatialTrackInformation:v15 error:v19];
LABEL_15:

  return v24;
}

+ (id)hapticTracksForMediaItem:(id)a3 inDirectory:(id)a4
{
  v6 = a3;
  v32 = a4;
  v7 = [a1 availableHapticAlgorithms];
  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = a1;
  obj = [a1 availableHapticAlgorithms];
  v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v34;
    *&v9 = 138412802;
    v28 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v32 URLByAppendingPathComponent:v13 conformingToType:{UTTypeAHAP, v28}];
        v15 = +[NSFileManager defaultManager];
        v16 = [v14 path];
        v17 = [v15 fileExistsAtPath:v16];

        v18 = sh_log_object();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          if (v19)
          {
            v20 = [v6 appleMusicID];
            v21 = [v6 isrc];
            *buf = v28;
            v38 = v13;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Downloaded variant: %@ for media item. AdamID: %@, ISRC: %@", buf, 0x20u);
          }

          v18 = [NSData dataWithContentsOfURL:v14];
          v22 = [SHHapticTrack alloc];
          v23 = [v29 folderNameForMediaItem:v6];
          v24 = [v22 initWithFileIdentifier:v23 hapticData:v18 algorithm:v13];

          [v30 addObject:v24];
        }

        else
        {
          if (!v19)
          {
            goto LABEL_13;
          }

          v24 = [v6 appleMusicID];
          v25 = [v6 isrc];
          *buf = v28;
          v38 = v13;
          v39 = 2112;
          v40 = v24;
          v41 = 2112;
          v42 = v25;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "No variant: %@ downloaded for media item. AdamID: %@, ISRC: %@", buf, 0x20u);
        }

LABEL_13:
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v10);
  }

  v26 = [v30 copy];

  return v26;
}

+ (BOOL)isValidAppleArchiveFileURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pathExtension];

    if (v5)
    {
      v6 = [v4 pathExtension];
      v7 = [UTType typeWithFilenameExtension:v6];

      LOBYTE(v5) = v7 == UTTypeAppleArchive;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)decompressionDirectoryForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [a1 musicHapticsRootDirectory];
  v6 = [a1 folderNameForMediaItem:v4];

  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)folderNameForMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 appleMusicID];
  if (v4)
  {
    v5 = v4;
    goto LABEL_4;
  }

  v5 = [v3 isrc];
  if (v5)
  {
LABEL_4:
    v6 = v5;
    if (![v5 isEqualToString:&stru_10007EB10])
    {
      goto LABEL_11;
    }
  }

  v7 = [v3 identifier];
  v8 = [v7 UUIDString];
  v9 = v8;
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    v10 = +[NSUUID UUID];
    v6 = [v10 UUIDString];

    v5 = v10;
  }

  v11 = sh_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 properties];
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Setting haptics folder name: %@ using media item identifier in media item: %@", &v17, 0x16u);
  }

LABEL_11:
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v3 appleMusicID];
    v15 = [v3 isrc];
    v17 = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Returning haptics folder name: %@, MusicID: %@, ISRC:%@", &v17, 0x20u);
  }

  return v6;
}

+ (id)musicHapticsRootDirectory
{
  if (qword_100098308 != -1)
  {
    sub_1000491A8();
  }

  v3 = qword_100098300;

  return v3;
}

+ (id)availableHapticAlgorithms
{
  if (qword_100098318 != -1)
  {
    sub_1000491BC();
  }

  v3 = qword_100098310;

  return v3;
}

@end