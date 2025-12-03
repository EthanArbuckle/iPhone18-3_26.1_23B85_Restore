@interface SHHapticsProviderUtilities
+ (BOOL)isValidAppleArchiveFileURL:(id)l;
+ (id)availableHapticAlgorithms;
+ (id)cachedHapticTracksForMediaItem:(id)item;
+ (id)decompressionDirectoryForMediaItem:(id)item;
+ (id)folderNameForMediaItem:(id)item;
+ (id)hapticFromResponse:(id)response;
+ (id)hapticTracksForMediaItem:(id)item inDirectory:(id)directory;
+ (id)hapticsFromDownloadResponses:(id)responses;
+ (id)musicHapticsRootDirectory;
@end

@implementation SHHapticsProviderUtilities

+ (id)hapticsFromDownloadResponses:(id)responses
{
  responsesCopy = responses;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [responsesCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = responsesCopy;
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

        v11 = [self hapticFromResponse:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)cachedHapticTracksForMediaItem:(id)item
{
  itemCopy = item;
  appleMusicID = [itemCopy appleMusicID];

  if (appleMusicID)
  {
    v6 = [self decompressionDirectoryForMediaItem:itemCopy];
    v7 = [self hapticTracksForMediaItem:itemCopy inDirectory:v6];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

+ (id)hapticFromResponse:(id)response
{
  responseCopy = response;
  networkDownloadResponse = [responseCopy networkDownloadResponse];
  error = [networkDownloadResponse error];

  networkDownloadResponse2 = [responseCopy networkDownloadResponse];
  downloadedFileLocation = [networkDownloadResponse2 downloadedFileLocation];

  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    mediaItem = [responseCopy mediaItem];
    appleMusicID = [mediaItem appleMusicID];
    mediaItem2 = [responseCopy mediaItem];
    isrc = [mediaItem2 isrc];
    *buf = 138412546;
    v35 = appleMusicID;
    v36 = 2112;
    v37 = isrc;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Validating spatial information of Adam ID %@, ISRC: %@", buf, 0x16u);
  }

  spatialTrackInformation = [responseCopy spatialTrackInformation];
  if ([SHHapticSpatialTrackValidator isValidSpatialTrackInformation:spatialTrackInformation])
  {
    spatialTrackInformation2 = [responseCopy spatialTrackInformation];
  }

  else
  {
    spatialTrackInformation2 = 0;
  }

  if ([self isValidAppleArchiveFileURL:downloadedFileLocation])
  {
    mediaItem3 = [responseCopy mediaItem];
    mediaItem6 = [self decompressionDirectoryForMediaItem:mediaItem3];

    v31 = error;
    v18 = [SHCompression decompressAppleArchiveAtURL:downloadedFileLocation toDirectoryURL:mediaItem6 error:&v31];
    v19 = v31;

    mediaItem4 = [responseCopy mediaItem];
    v21 = [self hapticTracksForMediaItem:mediaItem4 inDirectory:mediaItem6];

    if (v18 && [v21 count])
    {
      v22 = [SHHaptic alloc];
      mediaItem5 = [responseCopy mediaItem];
      v24 = [v22 initWithHapticTracks:v21 representingMediaItem:mediaItem5 spatialTrackInformation:spatialTrackInformation2 error:0];

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
    v19 = error;
    if (!error)
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
  mediaItem6 = [responseCopy mediaItem];
  v24 = [v27 initWithHapticTracks:0 representingMediaItem:mediaItem6 spatialTrackInformation:spatialTrackInformation2 error:v19];
LABEL_15:

  return v24;
}

+ (id)hapticTracksForMediaItem:(id)item inDirectory:(id)directory
{
  itemCopy = item;
  directoryCopy = directory;
  availableHapticAlgorithms = [self availableHapticAlgorithms];
  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [availableHapticAlgorithms count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [self availableHapticAlgorithms];
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
        v14 = [directoryCopy URLByAppendingPathComponent:v13 conformingToType:{UTTypeAHAP, v28}];
        v15 = +[NSFileManager defaultManager];
        path = [v14 path];
        v17 = [v15 fileExistsAtPath:path];

        v18 = sh_log_object();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          if (v19)
          {
            appleMusicID = [itemCopy appleMusicID];
            isrc = [itemCopy isrc];
            *buf = v28;
            v38 = v13;
            v39 = 2112;
            v40 = appleMusicID;
            v41 = 2112;
            v42 = isrc;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Downloaded variant: %@ for media item. AdamID: %@, ISRC: %@", buf, 0x20u);
          }

          v18 = [NSData dataWithContentsOfURL:v14];
          v22 = [SHHapticTrack alloc];
          v23 = [selfCopy folderNameForMediaItem:itemCopy];
          appleMusicID2 = [v22 initWithFileIdentifier:v23 hapticData:v18 algorithm:v13];

          [v30 addObject:appleMusicID2];
        }

        else
        {
          if (!v19)
          {
            goto LABEL_13;
          }

          appleMusicID2 = [itemCopy appleMusicID];
          isrc2 = [itemCopy isrc];
          *buf = v28;
          v38 = v13;
          v39 = 2112;
          v40 = appleMusicID2;
          v41 = 2112;
          v42 = isrc2;
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

+ (BOOL)isValidAppleArchiveFileURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    pathExtension = [lCopy pathExtension];

    if (pathExtension)
    {
      pathExtension2 = [v4 pathExtension];
      v7 = [UTType typeWithFilenameExtension:pathExtension2];

      LOBYTE(pathExtension) = v7 == UTTypeAppleArchive;
    }
  }

  else
  {
    LOBYTE(pathExtension) = 0;
  }

  return pathExtension;
}

+ (id)decompressionDirectoryForMediaItem:(id)item
{
  itemCopy = item;
  musicHapticsRootDirectory = [self musicHapticsRootDirectory];
  v6 = [self folderNameForMediaItem:itemCopy];

  v7 = [musicHapticsRootDirectory URLByAppendingPathComponent:v6];

  return v7;
}

+ (id)folderNameForMediaItem:(id)item
{
  itemCopy = item;
  appleMusicID = [itemCopy appleMusicID];
  if (appleMusicID)
  {
    isrc = appleMusicID;
    goto LABEL_4;
  }

  isrc = [itemCopy isrc];
  if (isrc)
  {
LABEL_4:
    uUIDString2 = isrc;
    if (![isrc isEqualToString:&stru_10007EB10])
    {
      goto LABEL_11;
    }
  }

  identifier = [itemCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = uUIDString;
  if (uUIDString)
  {
    uUIDString2 = uUIDString;
  }

  else
  {
    v10 = +[NSUUID UUID];
    uUIDString2 = [v10 UUIDString];

    isrc = v10;
  }

  v11 = sh_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    properties = [itemCopy properties];
    v17 = 138412546;
    v18 = uUIDString2;
    v19 = 2112;
    v20 = properties;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Setting haptics folder name: %@ using media item identifier in media item: %@", &v17, 0x16u);
  }

LABEL_11:
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    appleMusicID2 = [itemCopy appleMusicID];
    isrc2 = [itemCopy isrc];
    v17 = 138412802;
    v18 = uUIDString2;
    v19 = 2112;
    v20 = appleMusicID2;
    v21 = 2112;
    v22 = isrc2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Returning haptics folder name: %@, MusicID: %@, ISRC:%@", &v17, 0x20u);
  }

  return uUIDString2;
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