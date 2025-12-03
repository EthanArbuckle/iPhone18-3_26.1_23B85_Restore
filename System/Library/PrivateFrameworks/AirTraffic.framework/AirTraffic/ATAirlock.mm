@interface ATAirlock
+ (id)sharedInstance;
- (ATAirlock)init;
- (id)artworkPathForDataclass:(id)dataclass artworkIdentifier:(id)identifier;
- (id)geniusPathForDataclass:(id)dataclass geniusIdentifier:(id)identifier;
- (id)lyricsPathForDataclass:(id)dataclass lyricsIdentifier:(id)identifier;
- (id)pathForAsset:(id)asset withDataclass:(id)dataclass;
- (void)copyAssetToAirlock:(id)airlock;
- (void)createAirlockForDataclasses:(id)dataclasses;
- (void)evacuate;
- (void)evacuateDataclasses:(id)dataclasses;
- (void)processCompletedAsset:(id)asset;
- (void)purgeAssetWithIdentifier:(id)identifier dataclass:(id)dataclass;
@end

@implementation ATAirlock

- (void)evacuate
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(NSFileManager *)self->_fm fileExistsAtPath:self->_basePath])
  {
    fm = self->_fm;
    basePath = self->_basePath;
    v9 = 0;
    v5 = [(NSFileManager *)fm removeItemAtPath:basePath error:&v9];
    v6 = v9;
    if (!v5)
    {
      v7 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_23EC61000, v7, OS_LOG_TYPE_ERROR, "failed to evacuate airlock. err=%{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)pathForAsset:(id)asset withDataclass:(id)dataclass
{
  assetCopy = asset;
  identifier = [assetCopy identifier];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v8 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  basePath = self->_basePath;
  dataclass = [assetCopy dataclass];

  v11 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v12 = [v11 stringByAppendingPathComponent:v8];

  return v12;
}

- (id)lyricsPathForDataclass:(id)dataclass lyricsIdentifier:(id)identifier
{
  basePath = self->_basePath;
  identifierCopy = identifier;
  v7 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v8 = [v7 stringByAppendingPathComponent:@"Lyrics"];
  v9 = [v8 stringByAppendingPathComponent:identifierCopy];

  return v9;
}

- (id)geniusPathForDataclass:(id)dataclass geniusIdentifier:(id)identifier
{
  basePath = self->_basePath;
  identifierCopy = identifier;
  v7 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v8 = [v7 stringByAppendingPathComponent:@"Genius"];
  v9 = [v8 stringByAppendingPathComponent:identifierCopy];

  return v9;
}

- (id)artworkPathForDataclass:(id)dataclass artworkIdentifier:(id)identifier
{
  basePath = self->_basePath;
  identifierCopy = identifier;
  v7 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v8 = [v7 stringByAppendingPathComponent:@"Artwork"];
  v9 = [v8 stringByAppendingPathComponent:identifierCopy];

  return v9;
}

- (void)processCompletedAsset:(id)asset
{
  v66 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  storeInfo = [assetCopy storeInfo];
  syncID = [storeInfo syncID];
  longLongValue = [syncID longLongValue];

  if (longLongValue)
  {
    storeInfo2 = [assetCopy storeInfo];
    syncID2 = [storeInfo2 syncID];
    stringByRemovingPercentEncoding = [syncID2 stringByRemovingPercentEncoding];
  }

  else
  {
    storeInfo2 = [assetCopy identifier];
    stringByRemovingPercentEncoding = [storeInfo2 stringByRemovingPercentEncoding];
  }

  basePath = self->_basePath;
  dataclass = [assetCopy dataclass];
  v13 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v14 = [v13 stringByAppendingPathComponent:stringByRemovingPercentEncoding];

  path = [assetCopy path];
  v16 = [@"/var/mobile/Media/" stringByAppendingPathComponent:path];
  stringByStandardizingPath = [v16 stringByStandardizingPath];

  if (([stringByStandardizingPath hasPrefix:@"/var/mobile/Media/"] & 1) == 0)
  {
    stringByDeletingLastPathComponent = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (!os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v28 = 0;
      goto LABEL_19;
    }

    *buf = 138543362;
    v59 = stringByStandardizingPath;
    v24 = "Cannot move asset outside of AFC root: %{public}@";
    v25 = stringByDeletingLastPathComponent;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 12;
LABEL_17:
    _os_log_impl(&dword_23EC61000, v25, v26, v24, buf, v27);
    goto LABEL_18;
  }

  if (![assetCopy isDownload])
  {
    goto LABEL_14;
  }

  path2 = [assetCopy path];
  if (!path2)
  {
    goto LABEL_14;
  }

  v19 = path2;
  path3 = [assetCopy path];
  if (![path3 length])
  {

    goto LABEL_14;
  }

  v21 = [(NSFileManager *)self->_fm fileExistsAtPath:v14];

  if (!v21)
  {
LABEL_14:
    if (([assetCopy isDownload] & 1) == 0)
    {
      fm = self->_fm;
      v54 = 0;
      v31 = [(NSFileManager *)fm removeItemAtPath:v14 error:&v54];
      v28 = v54;
      v32 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      stringByDeletingLastPathComponent = v32;
      if (v31)
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 138543362;
        v59 = assetCopy;
        v33 = "Removed completed upload for asset %{public}@";
        v34 = stringByDeletingLastPathComponent;
        v35 = OS_LOG_TYPE_DEFAULT;
        v36 = 12;
      }

      else
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138543618;
        v59 = assetCopy;
        v60 = 2114;
        v61 = v28;
        v33 = "Failed ro remove completed upload for asset %{public}@, error: %{public}@";
        v34 = stringByDeletingLastPathComponent;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 22;
      }

      _os_log_impl(&dword_23EC61000, v34, v35, v33, buf, v36);
      goto LABEL_19;
    }

    stringByDeletingLastPathComponent = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (!os_log_type_enabled(stringByDeletingLastPathComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138543618;
    v59 = assetCopy;
    v60 = 2114;
    v61 = v14;
    v24 = "asset not found in airlock. asset=%{public}@, airlockPath=%{public}@";
    v25 = stringByDeletingLastPathComponent;
    v26 = OS_LOG_TYPE_INFO;
    v27 = 22;
    goto LABEL_17;
  }

  stringByDeletingLastPathComponent = [stringByStandardizingPath stringByDeletingLastPathComponent];
  if ([(NSFileManager *)self->_fm fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v23 = 0;
  }

  else
  {
    v37 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_23EC61000, v37, OS_LOG_TYPE_DEFAULT, "Airlock destination directory not present, creating %{public}@", buf, 0xCu);
    }

    v38 = self->_fm;
    v57 = 0;
    v39 = [(NSFileManager *)v38 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v57];
    v23 = v57;
    if (!v39)
    {
      v40 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v59 = stringByDeletingLastPathComponent;
        v60 = 2114;
        v61 = v23;
        _os_log_impl(&dword_23EC61000, v40, OS_LOG_TYPE_ERROR, "Could not create directory %{public}@, error: %{public}@", buf, 0x16u);
      }
    }
  }

  v41 = self->_fm;
  v56 = v23;
  v42 = [(NSFileManager *)v41 moveItemAtPath:v14 toPath:stringByStandardizingPath error:&v56];
  v28 = v56;

  if (v42)
  {
    v43 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      path4 = [assetCopy path];
      v45 = [@"/var/mobile/Media/" stringByAppendingPathComponent:path4];
      *buf = 138543618;
      v59 = v14;
      v60 = 2112;
      v61 = v45;
      _os_log_impl(&dword_23EC61000, v43, OS_LOG_TYPE_DEFAULT, "Airlock moved %{public}@ to %{pubic}@", buf, 0x16u);
    }

LABEL_49:

    goto LABEL_19;
  }

  if ([(NSFileManager *)self->_fm fileExistsAtPath:stringByStandardizingPath])
  {
    v46 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = stringByStandardizingPath;
      _os_log_impl(&dword_23EC61000, v46, OS_LOG_TYPE_DEFAULT, "File already exists at %{public}@, removing", buf, 0xCu);
    }

    [(NSFileManager *)self->_fm removeItemAtPath:stringByStandardizingPath error:0];
    v47 = self->_fm;
    v55 = v28;
    [(NSFileManager *)v47 moveItemAtPath:v14 toPath:stringByStandardizingPath error:&v55];
    v48 = v55;

    v28 = v48;
  }

  if (![(NSFileManager *)self->_fm fileExistsAtPath:stringByStandardizingPath])
  {
    v49 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v59 = assetCopy;
      v60 = 2114;
      v61 = v28;
      _os_log_impl(&dword_23EC61000, v49, OS_LOG_TYPE_ERROR, "Failed to move completed file for asset %{public}@, error: %{public}@", buf, 0x16u);
    }

    v50 = [(NSFileManager *)self->_fm fileExistsAtPath:stringByDeletingLastPathComponent];
    v51 = [(NSFileManager *)self->_fm fileExistsAtPath:v14];
    v43 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v52 = "does not exist";
      *buf = 136315906;
      if (v51)
      {
        v53 = "exists";
      }

      else
      {
        v53 = "does not exist";
      }

      v59 = v53;
      v60 = 2114;
      v61 = v14;
      if (v50)
      {
        v52 = "exists";
      }

      v62 = 2080;
      v63 = v52;
      v64 = 2114;
      v65 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_23EC61000, v43, OS_LOG_TYPE_ERROR, "Source %s: %{public}@, Destination %s: %{public}@", buf, 0x2Au);
    }

    goto LABEL_49;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)copyAssetToAirlock:(id)airlock
{
  v58 = *MEMORY[0x277D85DE8];
  airlockCopy = airlock;
  identifier = [airlockCopy identifier];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v7 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  path = [airlockCopy path];
  v9 = [@"/var/mobile/Media/" stringByAppendingPathComponent:path];

  basePath = self->_basePath;
  v40 = airlockCopy;
  dataclass = [airlockCopy dataclass];
  v12 = [(NSString *)basePath stringByAppendingPathComponent:dataclass];
  v43 = [v12 stringByAppendingPathComponent:v7];

  v50 = 0;
  if (![(NSFileManager *)self->_fm fileExistsAtPath:v9 isDirectory:&v50])
  {
    v14 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v52 = airlockCopy;
      _os_log_impl(&dword_23EC61000, v14, OS_LOG_TYPE_ERROR, "Trying to upload asset with no path! %{public}@", buf, 0xCu);
    }

LABEL_24:
    v32 = 0;
    goto LABEL_25;
  }

  fm = self->_fm;
  if (v50 != 1)
  {
    v44 = 0;
    v34 = [(NSFileManager *)fm copyItemAtPath:v9 toPath:v43 error:&v44];
    v32 = v44;
    v35 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    v14 = v35;
    if (v34)
    {
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138543618;
      v52 = v9;
      v53 = 2114;
      v54 = v43;
      v36 = "Airlock successfully cloned %{public}@ to %{public}@";
      v37 = v14;
      v38 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138543618;
      v52 = airlockCopy;
      v53 = 2114;
      v54 = v32;
      v36 = "Failed to create clone for upload %{public}@, error: %{public}@";
      v37 = v14;
      v38 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_23EC61000, v37, v38, v36, buf, 0x16u);
    goto LABEL_25;
  }

  [(NSFileManager *)fm createDirectoryAtPath:v43 withIntermediateDirectories:1 attributes:0 error:0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = [(NSFileManager *)self->_fm subpathsOfDirectoryAtPath:v9 error:0];
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  v39 = v7;
  v17 = 0;
  v18 = *v47;
  v41 = *v47;
  v42 = v14;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v47 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v46 + 1) + 8 * i);
      v21 = self->_fm;
      v22 = [v9 stringByAppendingPathComponent:{v20, v39}];
      LODWORD(v21) = [(NSFileManager *)v21 fileExistsAtPath:v22 isDirectory:&v50];

      if (v21)
      {
        v23 = self->_fm;
        if (v50 == 1)
        {
          v24 = [v43 stringByAppendingPathComponent:v20];
          [(NSFileManager *)v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:0];
LABEL_18:

          continue;
        }

        v25 = v9;
        v26 = [v9 stringByAppendingPathComponent:v20];
        v27 = [v43 stringByAppendingPathComponent:v20];
        v45 = v17;
        v28 = [(NSFileManager *)v23 copyItemAtPath:v26 toPath:v27 error:&v45];
        v29 = v45;

        v30 = os_log_create("com.apple.amp.AirTraffic", "Framework");
        v24 = v30;
        if (v28)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v43 stringByAppendingPathComponent:v20];
            *buf = 138543874;
            v52 = v20;
            v53 = 2114;
            v9 = v25;
            v54 = v25;
            v55 = 2114;
            v56 = v31;
            _os_log_impl(&dword_23EC61000, v24, OS_LOG_TYPE_DEFAULT, "Airlock cloned subpath %{public}@ of upload %{public}@ to %{public}@", buf, 0x20u);

            v17 = v29;
LABEL_17:
            v18 = v41;
            v14 = v42;
            goto LABEL_18;
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v52 = v20;
          v53 = 2114;
          v54 = v40;
          v55 = 2114;
          v56 = v29;
          _os_log_impl(&dword_23EC61000, v24, OS_LOG_TYPE_ERROR, "Failed to create clone for subpath %{public}@ of upload %{public}@, error: %{public}@", buf, 0x20u);
        }

        v17 = v29;
        v9 = v25;
        goto LABEL_17;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
  }

  while (v16);
  v32 = v17;
  v7 = v39;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)purgeAssetWithIdentifier:(id)identifier dataclass:(id)dataclass
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataclassCopy = dataclass;
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v9 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  v10 = [(NSString *)self->_basePath stringByAppendingPathComponent:dataclassCopy];
  v11 = [v10 stringByAppendingPathComponent:v9];

  v12 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543874;
    v15 = dataclassCopy;
    v16 = 2114;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_23EC61000, v12, OS_LOG_TYPE_DEFAULT, "Purging %{public}@ with identifier %{public}@, path: %{public}@", &v14, 0x20u);
  }

  [(NSFileManager *)self->_fm removeItemAtPath:v11 error:0];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)evacuateDataclasses:(id)dataclasses
{
  v31 = *MEMORY[0x277D85DE8];
  dataclassesCopy = dataclasses;
  v5 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "Evacuating airlock", buf, 2u);
  }

  v6 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSFileManager *)self->_fm subpathsOfDirectoryAtPath:@"/var/mobile/Media/Airlock/" error:0];
    *buf = 138543362;
    v30 = v7;
    _os_log_impl(&dword_23EC61000, v6, OS_LOG_TYPE_DEFAULT, "Airlock contents: %{public}@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = dataclassesCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 isEqualToString:{@"Application", v24}])
        {
          fm = self->_fm;
          v15 = [@"/var/mobile/Media/" stringByAppendingPathComponent:@"PublicStaging"];
          LODWORD(fm) = [(NSFileManager *)fm fileExistsAtPath:v15];

          if (fm)
          {
            v16 = os_log_create("com.apple.amp.AirTraffic", "Framework");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23EC61000, v16, OS_LOG_TYPE_DEFAULT, "Removing PublicStaging", buf, 2u);
            }

            v17 = self->_fm;
            v18 = [@"/var/mobile/Media/" stringByAppendingPathComponent:@"PublicStaging"];
            [(NSFileManager *)v17 removeItemAtPath:v18 error:0];
          }
        }

        v19 = self->_fm;
        v20 = [(NSString *)self->_basePath stringByAppendingPathComponent:v13];
        LODWORD(v19) = [(NSFileManager *)v19 fileExistsAtPath:v20];

        if (v19)
        {
          v21 = self->_fm;
          v22 = [(NSString *)self->_basePath stringByAppendingPathComponent:v13];
          [(NSFileManager *)v21 removeItemAtPath:v22 error:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)createAirlockForDataclasses:(id)dataclasses
{
  v21 = *MEMORY[0x277D85DE8];
  dataclassesCopy = dataclasses;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [dataclassesCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138543362;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(dataclassesCopy);
        }

        v10 = [(NSString *)self->_basePath stringByAppendingPathComponent:*(*(&v14 + 1) + 8 * v9), v13];
        if (![(NSFileManager *)self->_fm fileExistsAtPath:v10])
        {
          v11 = os_log_create("com.apple.amp.AirTraffic", "Framework");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = dataclassesCopy;
            _os_log_impl(&dword_23EC61000, v11, OS_LOG_TYPE_DEFAULT, "Creating airlock for %{public}@", buf, 0xCu);
          }

          [(NSFileManager *)self->_fm createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [dataclassesCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (ATAirlock)init
{
  v8.receiver = self;
  v8.super_class = ATAirlock;
  v2 = [(ATAirlock *)&v8 init];
  v3 = v2;
  if (v2)
  {
    basePath = v2->_basePath;
    v2->_basePath = @"/var/mobile/Media/Airlock/";

    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    fm = v3->_fm;
    v3->_fm = v5;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1841);
  }

  v3 = sharedInstance___sharedAirlock;

  return v3;
}

uint64_t __27__ATAirlock_sharedInstance__block_invoke()
{
  sharedInstance___sharedAirlock = objc_alloc_init(ATAirlock);

  return MEMORY[0x2821F96F8]();
}

@end