@interface ATStoreAssetLink
- (ATAssetLinkDelegate)delegate;
- (ATStoreAssetLink)init;
- (BOOL)canEnqueueAsset:(id)a3;
- (BOOL)open;
- (id)_assetForDownload:(id)a3;
- (id)_assetTypeForStoreKind:(id)a3;
- (id)_dataClassForStoreKind:(id)a3;
- (id)_downloadForAsset:(id)a3 error:(id *)a4;
- (id)_storeKindForAsset:(id)a3;
- (id)enqueueAssets:(id)a3 force:(BOOL)a4;
- (void)_enqueueAssets:(id)a3;
- (void)_finishAsset:(id)a3 error:(id)a4 retryable:(BOOL)a5;
- (void)_updateInstallProgress:(double)a3 forAsset:(id)a4;
- (void)cancelAssets:(id)a3;
- (void)close;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)prioritizeAsset:(id)a3;
@end

@implementation ATStoreAssetLink

- (ATAssetLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_assetForDownload:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CEA438]);
  [v5 setIsDownload:1];
  v6 = *MEMORY[0x277D6A010];
  v7 = [v4 valueForProperty:*MEMORY[0x277D6A010]];
  v8 = [(ATStoreAssetLink *)self _dataClassForStoreKind:v7];
  [v5 setDataclass:v8];

  v9 = [v4 valueForProperty:v6];
  v10 = [(ATStoreAssetLink *)self _assetTypeForStoreKind:v9];
  [v5 setAssetType:v10];

  v11 = [v5 dataclass];
  LODWORD(v10) = [v11 isEqualToString:@"Book"];

  if (v10 || ([v5 dataclass], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"Media"), v12, v13))
  {
    v14 = [v4 valueForProperty:*MEMORY[0x277D6A020]];
    [v5 setIdentifier:v14];
  }

  else
  {
    ATStoreAssetLinkRaiseWithSerialABCReport(@"Unknown kind for download", v4);
  }

  v15 = [v5 dataclass];
  v16 = [v15 isEqualToString:@"Media"];

  if (v16)
  {
    [v5 setVariantOptions:&unk_2836F51B8];
  }

  v17 = [v4 valueForProperty:*MEMORY[0x277D6A000]];
  [v5 setIsRestore:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v4 valueForProperty:*MEMORY[0x277D6A0D8]];
  [v5 setPrettyName:v18];

  v19 = [v4 valueForProperty:*MEMORY[0x277D6A0C8]];
  [v5 setIcon:v19];

  [v5 setStorePID:{objc_msgSend(v4, "persistentIdentifier")}];
  v20 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Created download asset=%{public}@ for SSDownload=%{public}@", &v22, 0x20u);
  }

  return v5;
}

- (id)_downloadForAsset:(id)a3 error:(id *)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 storePID])
  {
    v7 = [objc_alloc(MEMORY[0x277D69AA8]) initWithPersistentIdentifier:{objc_msgSend(v6, "storePID")}];
    goto LABEL_37;
  }

  v91 = objc_alloc_init(MEMORY[0x277D69AB0]);
  v8 = objc_alloc_init(MEMORY[0x277D69AA8]);
  v9 = [v6 storeInfo];
  v90 = [v6 storePlist];
  v10 = [v6 infoPlist];
  v11 = v10;
  if (v9)
  {
    v12 = [v9 downloadDictionary];
    [v8 setValuesWithDictionary:v12];

    v13 = [v9 assetDictionary];
    [v91 setValuesWithDictionary:v13];

    [v6 setStoreInfo:0];
  }

  else if (v90)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v90];
    if (v14)
    {
      v15 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:0];
      v16 = [objc_alloc(MEMORY[0x277D69AE0]) initWithDictionary:v15];
      [v8 setValuesWithStoreDownloadMetadata:v16];
    }

    else
    {
      v15 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v97 = self;
        v98 = 2114;
        v99 = v6;
        _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing store plist file for %{public}@", buf, 0x16u);
      }
    }

    [v6 setStorePlist:0];
  }

  else if (v10)
  {
    v17 = self;
    v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10];
    v19 = [MEMORY[0x277CCAC58] propertyListWithData:v18 options:0 format:0 error:0];
    v20 = [v19 objectForKey:@"UIBackgroundModes"];
    v21 = v20;
    if (v20 && [v20 containsObject:@"newsstand-content"])
    {
      [v8 setValue:*MEMORY[0x277D6A0E8] forProperty:*MEMORY[0x277D6A048]];
    }

    [v6 setInfoPlist:0];

    self = v17;
  }

  v22 = [v6 dataclass];
  v23 = [v22 isEqualToString:@"Media"];

  if (!v23)
  {
    v87 = a4;
    v35 = [v6 dataclass];
    v36 = [v35 isEqualToString:@"Book"];

    if (!v36 || (v86 = MEMORY[0x277CBEAC0], v84 = *MEMORY[0x277D69EB0], v82 = *MEMORY[0x277D6A010], v89 = v11, [MEMORY[0x277CCABB0] numberWithBool:0], v80 = objc_claimAutoreleasedReturnValue(), v78 = *MEMORY[0x277D69FA8], objc_msgSend(v6, "identifier"), v37 = objc_claimAutoreleasedReturnValue(), v38 = self, v39 = v8, v40 = *MEMORY[0x277D6A020], objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", objc_msgSend(v6, "isRestore")), v41 = objc_claimAutoreleasedReturnValue(), v42 = *MEMORY[0x277D6A000], objc_msgSend(v6, "prettyName"), v43 = v9, v44 = objc_claimAutoreleasedReturnValue(), v72 = v40, v8 = v39, self = v38, objc_msgSend(v86, "dictionaryWithObjectsAndKeys:", v84, v82, v80, v78, v37, v72, v41, v42, v44, *MEMORY[0x277D6A0D8], 0), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setValuesWithDictionary:", v45), v45, v44, v9 = v43, v41, v11 = v89, v37, v80, objc_msgSend(v6, "icon"), v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
    {
LABEL_23:
      [v8 setValue:*MEMORY[0x277CEA3D0] forProperty:*MEMORY[0x277D69FB8]];
      [v8 addAsset:v91 forType:*MEMORY[0x277D69E70]];
      v49 = [v6 dataclass];
      if ([v49 isEqualToString:@"Book"])
      {
      }

      else
      {
        v50 = [v6 dataclass];
        v51 = [v50 isEqualToString:@"Media"];

        if (!v51)
        {
LABEL_35:
          v7 = v8;
          goto LABEL_36;
        }
      }

      v52 = +[ATRestoreManager sharedManager];
      v53 = [v52 hasProperNetworkConditions];

      if (v53)
      {
        v54 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v6 shortDescription];
          *buf = 138543618;
          v97 = self;
          v98 = 2114;
          v99 = v55;
          _os_log_impl(&dword_223819000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ removing network constraints for %{public}@", buf, 0x16u);
        }

        v56 = [v6 dataclass];
        if ([v56 isEqualToString:@"Book"])
        {
          v57 = *MEMORY[0x277D69EB0];
        }

        else
        {
          v57 = [(ATStoreAssetLink *)self _storeKindForAsset:v6];
        }

        v63 = v57;

        if (!v63)
        {
          v92 = *MEMORY[0x277CCA450];
          v67 = MEMORY[0x277CCACA8];
          v68 = [v6 assetType];
          v69 = [v6 description];
          v70 = [v67 stringWithFormat:@"No valid download kind for asset type %@. asset=%@", v68, v69];
          v93 = v70;
          v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];

          *v87 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:v71];

          v7 = 0;
          goto LABEL_36;
        }

        v64 = [objc_alloc(MEMORY[0x277D69AF0]) initWithDownloadKind:v63 URLBagType:0];
        v65 = objc_alloc_init(MEMORY[0x277D69AF8]);
        [v65 setCellularDataStates:0];
        [v64 setPolicyRule:v65];
        [v8 setDownloadPolicy:v64];
      }

      goto LABEL_35;
    }

    v47 = [v6 icon];
    v48 = [v47 absoluteString];
    [v8 setValue:v48 forProperty:*MEMORY[0x277D6A0C8]];

    v25 = objc_alloc_init(MEMORY[0x277D69AB0]);
    [v8 addAsset:v25 forType:*MEMORY[0x277D69E68]];
LABEL_22:

    goto LABEL_23;
  }

  v88 = v11;
  v24 = [(ATStoreAssetLink *)self _storeKindForAsset:v6];
  if (v24)
  {
    v25 = v24;
    v85 = MEMORY[0x277CBEAC0];
    v87 = a4;
    v81 = *MEMORY[0x277D6A010];
    v79 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v77 = *MEMORY[0x277D69F98];
    v76 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v75 = *MEMORY[0x277D69FA8];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v27 = *MEMORY[0x277D69FB0];
    v28 = [v6 identifier];
    v29 = v8;
    v30 = *MEMORY[0x277D6A020];
    v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isRestore")}];
    v74 = self;
    v32 = *MEMORY[0x277D6A000];
    [v6 prettyName];
    v33 = v83 = v9;
    v73 = v30;
    v8 = v29;
    v34 = [v85 dictionaryWithObjectsAndKeys:{v25, v81, v79, v77, v76, v75, v26, v27, v28, v73, v31, v32, v33, *MEMORY[0x277D6A0D8], 0}];
    [v29 setValuesWithDictionary:v34];

    v9 = v83;
    self = v74;

    v11 = v88;
    goto LABEL_22;
  }

  v94 = *MEMORY[0x277CCA450];
  v58 = MEMORY[0x277CCACA8];
  v59 = [v6 assetType];
  v60 = [v6 description];
  v61 = [v58 stringWithFormat:@"No valid store kind for asset type %@. asset=%@", v59, v60];
  v95 = v61;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];

  *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:v62];

  v7 = 0;
  v11 = v88;
LABEL_36:

LABEL_37:

  return v7;
}

- (void)_enqueueAssets:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  [v4 count];
  ATReportEventAddIntToScalarKey();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v5)
  {
    v7 = *v42;
    *&v6 = 138543874;
    v30 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v40 = 0;
        v10 = [(ATStoreAssetLink *)self _downloadForAsset:v9 error:&v40, v30];
        v11 = v40;
        v12 = v11;
        if (v10)
        {
          [v32 addObject:v10];
          v13 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v9 shortDescription];
            *buf = v30;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v10;
            *&buf[22] = 2114;
            v51 = v14;
            _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Created %{public}@ for %{public}@", buf, 0x20u);
          }

          assetsByStoreID = self->_assetsByStoreID;
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "persistentIdentifier")}];
          [(NSMutableDictionary *)assetsByStoreID setObject:v9 forKey:v16];

          [(NSMapTable *)self->_downloadsByAsset setObject:v10 forKey:v9];
        }

        else
        {
          if (v11)
          {
            v17 = ATIsRecoverableError();
          }

          else
          {
            v17 = 1;
          }

          [(ATStoreAssetLink *)self _finishAsset:v9 error:v12 retryable:v17];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v5);
  }

  if ([v32 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    v18 = dispatch_semaphore_create(0);
    downloadManager = self->_downloadManager;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __35__ATStoreAssetLink__enqueueAssets___block_invoke;
    v37[3] = &unk_2784E47C8;
    v39 = buf;
    v20 = v18;
    v38 = v20;
    [(SSDownloadManager *)downloadManager addDownloads:v32 completionBlock:v37];
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    if (*(*&buf[8] + 40))
    {
      v21 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(*&buf[8] + 40);
        *v46 = 138543618;
        v47 = self;
        v48 = 2114;
        v49 = v22;
        _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed adding downloads to store queue - error:%{public}@", v46, 0x16u);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = v32;
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v24)
      {
        v25 = *v34;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = self->_assetsByStoreID;
            v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v33 + 1) + 8 * j), "persistentIdentifier")}];
            v29 = [(NSMutableDictionary *)v27 objectForKey:v28];

            [(ATStoreAssetLink *)self _finishAsset:v29 error:*(*&buf[8] + 40) retryable:1];
          }

          v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v24);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void __35__ATStoreAssetLink__enqueueAssets___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_dataClassForStoreKind:(id)a3
{
  v3 = a3;
  if (_dataClassForStoreKind__onceToken != -1)
  {
    dispatch_once(&_dataClassForStoreKind__onceToken, &__block_literal_global_64);
  }

  v4 = [_dataClassForStoreKind__dataClassByKind objectForKeyedSubscript:v3];
  if (!v4)
  {
    ATStoreAssetLinkRaiseWithSerialABCReport(@"Unknown dataclass for kind %@", v3);
  }

  return v4;
}

uint64_t __43__ATStoreAssetLink__dataClassForStoreKind___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _dataClassForStoreKind__dataClassByKind;
  _dataClassForStoreKind__dataClassByKind = v0;

  [_dataClassForStoreKind__dataClassByKind setObject:@"Application" forKeyedSubscript:*MEMORY[0x277D69EE0]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Book" forKeyedSubscript:*MEMORY[0x277D69EB0]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EA0]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EB8]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EC0]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EC8]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69EF0]];
  [_dataClassForStoreKind__dataClassByKind setObject:@"Media" forKeyedSubscript:*MEMORY[0x277D69F00]];
  v2 = _dataClassForStoreKind__dataClassByKind;
  v3 = *MEMORY[0x277D69ED0];

  return [v2 setObject:@"Media" forKeyedSubscript:v3];
}

- (id)_assetTypeForStoreKind:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_assetTypeForStoreKind__onceToken != -1)
  {
    dispatch_once(&_assetTypeForStoreKind__onceToken, &__block_literal_global_625);
  }

  v4 = [_assetTypeForStoreKind__assetTypeByStoreKind objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = v3;
      v9 = 2114;
      v10 = @"Unknown";
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "Could not find matching assetType for storeKind=%{public}@, setting assetType=%{public}@", &v7, 0x16u);
    }

    v4 = @"Unknown";
  }

  return v4;
}

uint64_t __43__ATStoreAssetLink__assetTypeForStoreKind___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _assetTypeForStoreKind__assetTypeByStoreKind;
  _assetTypeForStoreKind__assetTypeByStoreKind = v0;

  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"Audiobook" forKeyedSubscript:*MEMORY[0x277D69EA0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"Movie" forKeyedSubscript:*MEMORY[0x277D69EB8]];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"Music" forKeyedSubscript:*MEMORY[0x277D69EC0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"MusicVideo" forKeyedSubscript:*MEMORY[0x277D69EC8]];
  v2 = *MEMORY[0x277D69ED0];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"Podcast" forKeyedSubscript:*MEMORY[0x277D69ED0]];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"TVEpisode" forKeyedSubscript:*MEMORY[0x277D69EF0]];
  v3 = *MEMORY[0x277D69F00];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"VideoPodcast" forKeyedSubscript:*MEMORY[0x277D69F00]];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"iTunesU" forKeyedSubscript:v2];
  [_assetTypeForStoreKind__assetTypeByStoreKind setObject:@"iTunesUVideo" forKeyedSubscript:v3];
  v4 = _assetTypeForStoreKind__assetTypeByStoreKind;
  v5 = *MEMORY[0x277D69EE0];

  return [v4 setObject:@"Application" forKeyedSubscript:v5];
}

- (id)_storeKindForAsset:(id)a3
{
  v3 = [a3 assetType];
  if ([v3 isEqualToString:@"Audiobook"])
  {
    v4 = MEMORY[0x277D69EA0];
LABEL_15:
    v5 = *v4;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"Movie"])
  {
    v4 = MEMORY[0x277D69EB8];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"Music"])
  {
    v4 = MEMORY[0x277D69EC0];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"MusicVideo"])
  {
    v4 = MEMORY[0x277D69EC8];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"Podcast"])
  {
LABEL_10:
    v4 = MEMORY[0x277D69ED0];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"TVEpisode"])
  {
    v4 = MEMORY[0x277D69EF0];
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"VideoPodcast"])
  {
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"iTunesU"])
  {
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"iTunesUVideo"])
  {
LABEL_14:
    v4 = MEMORY[0x277D69F00];
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

- (void)_finishAsset:(id)a3 error:(id)a4 retryable:(BOOL)a5
{
  v38[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMapTable *)self->_downloadsByAsset objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    assetsByStoreID = self->_assetsByStoreID;
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "persistentIdentifier")}];
    [(NSMutableDictionary *)assetsByStoreID removeObjectForKey:v13];
  }

  [(NSMapTable *)self->_downloadsByAsset removeObjectForKey:v8];
  v14 = [v9 domain];
  if ([v14 isEqualToString:*MEMORY[0x277D6A5A0]])
  {
    v15 = [v9 code];

    v16 = v9;
    if (v15 == 2040)
    {
      v17 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA7E8];
      v38[0] = v9;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v16 = [v17 errorWithDomain:@"ATError" code:26 userInfo:v18];
    }
  }

  else
  {

    v16 = v9;
  }

  v19 = [v9 domain];
  if ([v19 isEqualToString:*MEMORY[0x277D6A108]])
  {
    v20 = [v9 code];

    if (v20 != 103)
    {
      goto LABEL_11;
    }

    v21 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA7E8];
    v36 = v9;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = [v21 errorWithDomain:@"ATError" code:14 userInfo:v19];

    v16 = v22;
  }

LABEL_11:
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ATStoreAssetLink__finishAsset_error_retryable___block_invoke;
  block[3] = &unk_2784E4A80;
  v24 = v8;
  v31 = v24;
  v32 = self;
  v25 = v16;
  v33 = v25;
  v34 = a5;
  dispatch_async(callbackQueue, block);
  if (v9)
  {
    ATReportEventIncrementingScalarKey();
    v26 = [v25 domain];
    v27 = [v26 isEqualToString:@"ATError"];

    if (v27)
    {
      v28 = [v25 code];
      if (v28 == 8 || v28 == 4 || v28 == 2)
      {
        ATReportEventIncrementingScalarKey();
      }
    }
  }

  else
  {
    ATReportEventIncrementingScalarKey();
    [v24 transferStartTime];
    if (v29 != 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [v24 transferStartTime];
      ATReportEventAddDoubleToScalarKey();
    }
  }
}

void __49__ATStoreAssetLink__finishAsset_error_retryable___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
    [WeakRetained assetLink:*(a1 + 40) didFinishAsset:*(a1 + 32) error:*(a1 + 48) retryable:*(a1 + 56)];
  }
}

- (void)_updateInstallProgress:(double)a3 forAsset:(id)a4
{
  v6 = a4;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ATStoreAssetLink__updateInstallProgress_forAsset___block_invoke;
  block[3] = &unk_2784E5520;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

void __52__ATStoreAssetLink__updateInstallProgress_forAsset___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
    [WeakRetained assetLink:*(a1 + 40) didUpdateAsset:*(a1 + 32) progress:*(a1 + 48)];
  }
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ATStoreAssetLink_downloadManager_downloadStatesDidChange___block_invoke;
  block[3] = &unk_2784E59B0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __60__ATStoreAssetLink_downloadManager_downloadStatesDidChange___block_invoke(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v2)
  {
    v4 = v2;
    v30 = *v32;
    v5 = *MEMORY[0x277D69F48];
    v27 = *MEMORY[0x277D69F38];
    v26 = *MEMORY[0x277D69F28];
    v25 = *MEMORY[0x277D69F58];
    *&v3 = 134218498;
    v24 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v7 downloadPhaseIdentifier];
        v9 = [v7 persistentIdentifier];
        v10 = *(a1[5] + 2);
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
        v12 = [v10 objectForKey:v11];

        v13 = [v8 isEqualToString:v5];
        if (v12)
        {
          if (v13)
          {
            [v29 addObject:v7];
            v14 = _ATLogCategoryStoreDownloads();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v37 = v9;
              v38 = 2114;
              v39 = v12;
              _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "Got finished asset %lld, %{public}@", buf, 0x16u);
            }

            [a1[5] _finishAsset:v12 error:0 retryable:1];
          }

          else if ([v8 isEqualToString:v27])
          {
            [v29 addObject:v7];
            v15 = [v7 failureError];
            if (!v15)
            {
              v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
            }

            v16 = _ATLogCategoryStoreDownloads();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v37 = v9;
              v38 = 2114;
              v39 = v12;
              v40 = 2114;
              v41 = v15;
              _os_log_impl(&dword_223819000, v16, OS_LOG_TYPE_DEFAULT, "Got failed asset %lld, %{public}@ with download error %{public}@", buf, 0x20u);
            }

            [a1[5] _finishAsset:v12 error:v15 retryable:1];
          }

          else if ([v8 isEqualToString:v26])
          {
            [v29 addObject:v7];
            v17 = _ATLogCategoryStoreDownloads();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v37 = v9;
              v38 = 2114;
              v39 = v12;
              _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "Got canceled asset %lld, %{public}@", buf, 0x16u);
            }

            v18 = a1[5];
            v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
            [v18 _finishAsset:v12 error:v19 retryable:1];
          }

          else if ([v8 isEqualToString:v25])
          {
            [v12 setInstallStarted:1];
            [v12 setInstalled:1];
            if ([v12 assetState] != 1)
            {
              [v12 setAssetState:1];
              WeakRetained = objc_loadWeakRetained(a1[5] + 7);
              v21 = a1[5];
              v35 = v12;
              v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
              [WeakRetained assetLink:v21 didTransitionAssetStates:v22];
            }

            v23 = a1[5];
            [v7 percentComplete];
            [v23 _updateInstallProgress:v12 forAsset:?];
          }
        }

        else if ((v13 & 1) != 0 || ([v8 isEqualToString:v27] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", v26))
        {
          [v29 addObject:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v4);
  }

  [a1[6] finishDownloads:v29];
}

- (void)prioritizeAsset:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Prioritize %{public}@", buf, 0x16u);
  }

  v6 = [(NSMapTable *)self->_downloadsByAsset objectForKey:v4];
  if (v6)
  {
    [v4 setIsPrioritized:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__ATStoreAssetLink_prioritizeAsset___block_invoke;
    v8[3] = &unk_2784E59D8;
    v8[4] = self;
    v9 = v6;
    [v9 prioritizeAboveDownload:0 completionBlock:v8];
  }

  else
  {
    v7 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_INFO, "%{public}@ Could not find download to prioritize for %{public}@", buf, 0x16u);
    }
  }
}

void __36__ATStoreAssetLink_prioritizeAsset___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Could not prioritize %{public}@: %{public}@", &v7, 0x20u);
    }
  }
}

- (void)cancelAssets:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ATStoreAssetLink_cancelAssets___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __33__ATStoreAssetLink_cancelAssets___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 40) + 24) objectForKey:*(*(&v15 + 1) + 8 * v7)];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [v2 count];
      *buf = 138543874;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 2114;
      v24 = v2;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Canceling %d downloads with store %{public}@", buf, 0x1Cu);
    }

    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __33__ATStoreAssetLink_cancelAssets___block_invoke_37;
    v14[3] = &unk_2784E58E8;
    v14[4] = v12;
    [v13 cancelDownloads:v2 completionBlock:v14];
  }
}

void __33__ATStoreAssetLink_cancelAssets___block_invoke_37(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Cancel failed with error: %{public}@", &v6, 0x16u);
    }
  }
}

- (BOOL)canEnqueueAsset:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 bypassStore])
  {
    goto LABEL_5;
  }

  if (![v4 isDownload])
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Application", @"Book", @"Media", 0}];
  v6 = [v4 dataclass];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v4 dataclass];
  v9 = [v8 isEqualToString:@"Application"];

  if (v9)
  {
    goto LABEL_5;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [v4 dataclass];
    v13 = [v12 isEqualToString:@"Book"];

    if (v13)
    {
      goto LABEL_5;
    }

    if (_os_feature_enabled_impl())
    {
      v14 = [v4 assetType];
      v15 = [v14 isEqualToString:@"Audiobook"];

      if (v15)
      {
        goto LABEL_5;
      }
    }
  }

  v16 = [v4 dataclass];
  v17 = [v16 isEqualToString:@"Media"];

  if (!v17)
  {
    goto LABEL_22;
  }

  if (![v4 isRestore])
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v18 = [v4 assetType];
  if ([v18 isEqualToString:@"Music"])
  {

    goto LABEL_16;
  }

  v19 = [v4 assetType];
  v20 = [v19 isEqualToString:@"MusicVideo"];

  if (!v20)
  {
LABEL_22:
    v10 = 1;
    goto LABEL_6;
  }

LABEL_16:
  v21 = [v4 storeInfo];
  v22 = [v21 endpointType];
  v23 = [v22 integerValue];

  if (v23 > 1)
  {
    goto LABEL_5;
  }

  v24 = [MEMORY[0x277D7FCA0] activeAccount];
  v25 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v33 = 0;
  v26 = [v25 DSIDForUserIdentity:v24 outError:&v33];
  v27 = v33;

  v28 = [v4 storeInfo];
  v29 = [v28 DSID];

  if (v26 == v29 || [v26 isEqual:v29])
  {
    v30 = _ATLogCategoryStoreDownloads();
    v31 = v30;
    if (v27)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = [v27 msv_description];
        *buf = 138543874;
        v35 = self;
        v36 = 2114;
        v37 = v4;
        v38 = 2114;
        v39 = v32;
        _os_log_impl(&dword_223819000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Could not get DSID for active account. (asset=%{public}@) error=%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v4;
      _os_log_impl(&dword_223819000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get DSID for active account. (asset=%{public}@)", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

LABEL_6:
  return v10;
}

- (id)enqueueAssets:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_opt_new();
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ATStoreAssetLink_enqueueAssets_force___block_invoke;
  v11[3] = &unk_2784E47A0;
  v12 = v6;
  v13 = self;
  v14 = &v16;
  v15 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __40__ATStoreAssetLink_enqueueAssets_force___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 dataclass];
        if ([v8 isEqualToString:@"Media"])
        {
          v9 = [v7 assetType];
          if ([v9 isEqualToString:@"Podcast"])
          {
            v10 = 100;
          }

          else
          {
            v10 = 3;
          }
        }

        else
        {
          v10 = 3;
        }

        v11 = [*(*(a1 + 40) + 24) objectForKey:v7];
        if (v11)
        {
          v12 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 40);
            v14 = [v11 downloadPhaseIdentifier];
            *buf = 138544130;
            v27 = v13;
            v28 = 2114;
            v29 = v11;
            v30 = 2114;
            v31 = v14;
            v32 = 2114;
            v33 = v7;
            _os_log_impl(&dword_223819000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Matched enqueued download %{public}@ (%{public}@) for %{public}@", buf, 0x2Au);
          }

          [*(*(a1 + 40) + 24) removeObjectForKey:v7];
          [*(*(a1 + 40) + 24) setObject:v11 forKey:v7];
          v15 = *(*(a1 + 40) + 16);
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "persistentIdentifier")}];
          [v15 setObject:v7 forKey:v16];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
          v17 = v2;
          v18 = v11;
          goto LABEL_19;
        }

        v19 = [*(*(a1 + 40) + 16) count];
        if ([*(*(*(a1 + 48) + 8) + 40) count] + v19 < v10 || *(a1 + 56) == 1)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
          v17 = v20;
          v18 = v7;
LABEL_19:
          [v17 addObject:v18];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    [*(a1 + 40) downloadManager:*(*(a1 + 40) + 8) downloadStatesDidChange:v2];
  }

  [*(a1 + 40) _enqueueAssets:v20];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ATStoreAssetLink_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __25__ATStoreAssetLink_close__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 48) = 0;
    [*(*(a1 + 32) + 8) removeObserver:?];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__ATStoreAssetLink_close__block_invoke_2;
    block[3] = &unk_2784E5938;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

void __25__ATStoreAssetLink_close__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 assetLink:*(a1 + 32) didCloseWithOutstandingAssets:0];
}

- (BOOL)open
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ATStoreAssetLink_open__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(queue, block);
  return 1;
}

void __24__ATStoreAssetLink_open__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = 1;
    [*(*(a1 + 32) + 8) addObserver:?];
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [*(*(a1 + 32) + 8) downloads];
    v4 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = v4;
    v6 = *v30;
    v25 = *MEMORY[0x277D69F48];
    v24 = *MEMORY[0x277D69F38];
    v23 = *MEMORY[0x277D69F28];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = [v8 downloadPhaseIdentifier];
          *buf = 138543874;
          v35 = v10;
          v36 = 2114;
          v37 = v8;
          v38 = 2114;
          v39 = v11;
          _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Found existing download: %{public}@ (%{public}@)", buf, 0x20u);
        }

        v12 = [*(a1 + 32) _assetForDownload:v8];
        v13 = [v12 dataclass];
        if (![v13 isEqualToString:@"Media"])
        {

LABEL_17:
          [*(*(a1 + 32) + 24) setObject:v8 forKey:v12];
          v18 = *(*(a1 + 32) + 16);
          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentIdentifier")}];
          [v18 setObject:v12 forKey:v19];

          [v3 addObject:v12];
          goto LABEL_18;
        }

        v14 = [v12 isRestore];

        if (v14)
        {
          goto LABEL_17;
        }

        v15 = [v8 downloadPhaseIdentifier];
        if (([v15 isEqualToString:v25] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", v24) & 1) != 0 || objc_msgSend(v15, "isEqualToString:", v23))
        {
          v16 = *(*(a1 + 32) + 8);
          v33 = v8;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
          [v16 finishDownloads:v17];
        }

LABEL_18:
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (!v5)
      {
LABEL_20:

        v20 = *(a1 + 32);
        v21 = *(v20 + 40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __24__ATStoreAssetLink_open__block_invoke_11;
        block[3] = &unk_2784E5960;
        block[4] = v20;
        v28 = v3;
        v22 = v3;
        dispatch_async(v21, block);

        return;
      }
    }
  }
}

void __24__ATStoreAssetLink_open__block_invoke_11(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  [v4 assetLink:v2 didOpenWithPendingAssets:v3];
}

- (ATStoreAssetLink)init
{
  v19.receiver = self;
  v19.super_class = ATStoreAssetLink;
  v2 = [(ATStoreAssetLink *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_create("com.atc.storelink.callback", MEMORY[0x277D85CD8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:100];
    assetsByStoreID = v2->_assetsByStoreID;
    v2->_assetsByStoreID = v9;

    v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    downloadsByAsset = v2->_downloadsByAsset;
    v2->_downloadsByAsset = v11;

    v13 = objc_alloc_init(MEMORY[0x277D69AD0]);
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D69EA0], *MEMORY[0x277D69EB0], *MEMORY[0x277D69EB8], *MEMORY[0x277D69EC0], *MEMORY[0x277D69EC8], *MEMORY[0x277D69ED0], *MEMORY[0x277D69ED8], *MEMORY[0x277D69EF0], *MEMORY[0x277D69EF8], *MEMORY[0x277D69F00], 0}];
    [v13 setDownloadKinds:v14];

    [v13 setShouldFilterExternalOriginatedDownloads:1];
    [v13 setPersistenceIdentifier:@"com.apple.atc"];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D69F80], *MEMORY[0x277D6A020], *MEMORY[0x277D69FC0], 0}];
    [v13 setPrefetchedDownloadProperties:v15];

    v16 = [objc_alloc(MEMORY[0x277D69AC0]) initWithManagerOptions:v13];
    downloadManager = v2->_downloadManager;
    v2->_downloadManager = v16;
  }

  return v2;
}

@end