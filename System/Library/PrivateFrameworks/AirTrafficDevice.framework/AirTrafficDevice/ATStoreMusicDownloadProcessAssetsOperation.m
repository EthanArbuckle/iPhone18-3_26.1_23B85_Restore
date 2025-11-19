@interface ATStoreMusicDownloadProcessAssetsOperation
- (void)_removeDRMFromDownloadedAssetWithCompletion:(id)a3;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)a3 operationResult:(id)a4;
@end

@implementation ATStoreMusicDownloadProcessAssetsOperation

- (void)_removeDRMFromDownloadedAssetWithCompletion:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
  v6 = [v5 storeMediaResponseItem];

  v24 = v6;
  v7 = [v6 downloadableAsset];
  v8 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
  v9 = [v8 downloadFilePath];

  v10 = [v7 fairPlayInfoList];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) responseSinfDictionary];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v14);
  }

  v18 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
  if ([v18 isHLSDownload])
  {
  }

  else
  {
    v19 = [v11 count];

    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277D7FBD0]) initWithFilePath:v9 sinfs:v11];
      v21 = [(ICRequestOperation *)self progress];
      v22 = [v20 progress];
      [v21 addChild:v22 withPendingUnitCount:50];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __90__ATStoreMusicDownloadProcessAssetsOperation__removeDRMFromDownloadedAssetWithCompletion___block_invoke;
      v25[3] = &unk_2784E5750;
      v25[4] = self;
      v26 = v7;
      v27 = v9;
      v28 = v4;
      [v20 removeDRMWithCompletionHandler:v25];

      goto LABEL_15;
    }
  }

  v23 = _ATLogCategoryAssetUtils();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = self;
    _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping removing DRM from downloaded file", buf, 0xCu);
  }

  (*(v4 + 2))(v4, v9, 0);
LABEL_15:
}

void __90__ATStoreMusicDownloadProcessAssetsOperation__removeDRMFromDownloadedAssetWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryAssetUtils();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing DRM completed. err=%{public}@", buf, 0x16u);
  }

  v9 = v6;
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = [*(a1 + 40) fileExtension];
  }

  v11 = v10;
  if (v9)
  {
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = [*(a1 + 48) pathExtension];
    v15 = v14;
    if (!v11 || v14 && ([v14 isEqualToString:v11] & 1) != 0)
    {
      v13 = 0;
    }

    else
    {
      v16 = [*(a1 + 48) stringByDeletingPathExtension];
      v17 = [v16 stringByAppendingPathExtension:v11];

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = *(a1 + 48);
      v25 = 0;
      v20 = [v18 moveItemAtPath:v19 toPath:v17 error:&v25];
      v13 = v25;

      if (v20)
      {
        v21 = v17;
        v17 = 0;
      }

      else
      {
        v22 = _ATLogCategoryAssetUtils();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          v24 = *(a1 + 48);
          *buf = 138544130;
          v27 = v23;
          v28 = 2114;
          v29 = v24;
          v30 = 2114;
          v31 = v17;
          v32 = 2114;
          v33 = v13;
          _os_log_impl(&dword_223819000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to rename downloaded file from %{public}@ --> %{public}@. err=%{public}@", buf, 0x2Au);
        }

        v21 = v13;
        v13 = 0;
      }

      v12 = v17;
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)finishWithError:(id)a3 operationResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    if ([(ATStoreMusicDownloadProcessAssetsOperation *)self isCancelled])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }

    else
    {
      v9 = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = ATStoreMusicDownloadProcessAssetsOperation;
  [(ATStoreDownloadOperation *)&v11 finishWithError:v9 operationResult:v7];
  downloadDoneRequest = self->_downloadDoneRequest;
  self->_downloadDoneRequest = 0;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = ATStoreMusicDownloadProcessAssetsOperation;
  [(ATStoreMusicDownloadProcessAssetsOperation *)&v3 cancel];
  [(ICSongDownloadDoneRequest *)self->_downloadDoneRequest cancel];
}

- (void)execute
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(ATStoreMusicDownloadProcessAssetsOperation *)self isCancelled])
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    [ATStoreMusicDownloadProcessAssetsOperation finishWithError:"finishWithError:operationResult:" operationResult:?];
  }

  else
  {
    v3 = [(ATStoreDownloadOperation *)self asset];
    v4 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
    v5 = [v4 requestContext];

    v6 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
    v7 = [v6 storeMediaResponseItem];

    v8 = [v7 downloadableAsset];
    v9 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = self;
      v25 = 2114;
      v26 = v3;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ starting process assets phase for asset %{public}@", buf, 0x16u);
    }

    v10 = [(ATStoreDownloadProcessAssetsOperation *)self assetsOperationResult];
    v11 = [v10 isHLSDownload];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__ATStoreMusicDownloadProcessAssetsOperation_execute__block_invoke;
    v17[3] = &unk_2784E5728;
    v17[4] = self;
    v18 = v3;
    v22 = v11;
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v12 = v5;
    v13 = v7;
    v14 = v8;
    v15 = v3;
    [(ATStoreMusicDownloadProcessAssetsOperation *)self _removeDRMFromDownloadedAssetWithCompletion:v17];
  }
}

void __53__ATStoreMusicDownloadProcessAssetsOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 || [*(a1 + 32) isCancelled] && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"ATError", 2, 0), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [*(a1 + 32) finishWithError:v7 operationResult:0];
  }

  else
  {
    v8 = [*(a1 + 40) storeInfo];
    v9 = [v8 endpointType];
    v10 = [v9 integerValue];

    if (*(a1 + 72) == 1)
    {
      v11 = [*(a1 + 40) assetType];
      v12 = [v11 isEqualToString:@"Music"];
    }

    else
    {
      v12 = 0;
    }

    v13 = 2;
    if (v10 != 3 && (v12 & 1) == 0)
    {
      if (*(a1 + 72))
      {
        v13 = 1;
      }

      else
      {
        v14 = [*(a1 + 48) fairPlayInfoList];
        if ([v14 count])
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v57 objects:v84 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v58;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v58 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v57 + 1) + 8 * i) dpInfoData];

                if (v20)
                {
                  v13 = 0;
                  goto LABEL_23;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v57 objects:v84 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v13 = 1;
LABEL_23:
        }

        else
        {
          v13 = 0;
        }
      }
    }

    [*(a1 + 40) setProtectionType:v13];
    v21 = [v5 pathExtension];
    v22 = [*(a1 + 40) identifier];
    v52 = v21;
    v23 = [v22 stringByAppendingPathExtension:v21];

    v24 = [MEMORY[0x277D2B5F8] pathForBaseLocationPath:250];
    v25 = [MEMORY[0x277CCAA00] defaultManager];
    [v25 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:0];

    v51 = v23;
    v26 = [v24 stringByAppendingPathComponent:v23];
    v27 = [MEMORY[0x277CCAA00] defaultManager];
    [v27 removeItemAtPath:v26 error:0];

    v28 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      buf.st_dev = 138543874;
      *&buf.st_mode = v29;
      WORD2(buf.st_ino) = 2114;
      *(&buf.st_ino + 6) = v5;
      HIWORD(buf.st_gid) = 2114;
      *&buf.st_rdev = v26;
      _os_log_impl(&dword_223819000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ moving downloaded file from %{public}@ --> %{public}@", &buf, 0x20u);
    }

    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v56 = 0;
    v31 = [v30 moveItemAtPath:v5 toPath:v26 error:&v56];
    v7 = v56;

    if (v31)
    {
      v32 = objc_alloc_init(ATStoreDownloadOperationResult);
      [(ATStoreDownloadOperationResult *)v32 setStoreMediaResponseItem:*(a1 + 56)];
      [(ATStoreDownloadOperationResult *)v32 setRequestContext:*(a1 + 64)];
      [(ATStoreDownloadOperationResult *)v32 setDownloadFilePath:v26];
      v33 = [*(a1 + 32) assetsOperationResult];
      v34 = [v33 assetClientParams];
      [(ATStoreDownloadOperationResult *)v32 setAssetClientParams:v34];

      v35 = [*(a1 + 56) downloadIdentifier];

      if (v35)
      {
        v36 = objc_alloc(MEMORY[0x277D7FBF8]);
        v37 = *(a1 + 64);
        v38 = [*(a1 + 56) downloadIdentifier];
        v39 = [v36 initWithRequestContext:v37 downloadIdentifier:v38 songID:{objc_msgSend(*(a1 + 56), "storeAdamID")}];
        v40 = *(a1 + 32);
        v41 = *(v40 + 328);
        *(v40 + 328) = v39;

        v42 = [*(a1 + 32) progress];
        v43 = [*(*(a1 + 32) + 328) progress];
        [v42 addChild:v43 withPendingUnitCount:50];

        v44 = *(a1 + 32);
        v45 = *(v44 + 328);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __53__ATStoreMusicDownloadProcessAssetsOperation_execute__block_invoke_109;
        v53[3] = &unk_2784E59D8;
        v53[4] = v44;
        v32 = v32;
        v54 = v32;
        [v45 performRequestWithResponseHandler:v53];
      }

      else
      {
        [*(a1 + 32) finishWithError:v7 operationResult:v32];
      }
    }

    else
    {
      v46 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = *(a1 + 32);
        buf.st_dev = 138543618;
        *&buf.st_mode = v47;
        WORD2(buf.st_ino) = 2114;
        *(&buf.st_ino + 6) = v7;
        _os_log_impl(&dword_223819000, v46, OS_LOG_TYPE_ERROR, "%{public}@ failed to rename downloaded file. err=%{public}@", &buf, 0x16u);
      }

      v48 = [v7 msv_errorByUnwrappingDomain:*MEMORY[0x277CCA050] code:513];

      if (v48)
      {
        memset(&buf, 0, sizeof(buf));
        stat([v5 UTF8String], &buf);
        memset(&v55, 0, sizeof(v55));
        stat([v24 UTF8String], &v55);
        v49 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = *(a1 + 32);
          *v61 = 138545922;
          v62 = v50;
          v63 = 2112;
          v64 = v5;
          v65 = 2048;
          st_ino = buf.st_ino;
          v67 = 1024;
          st_mode = buf.st_mode;
          v69 = 1024;
          st_uid = buf.st_uid;
          v71 = 1024;
          st_gid = buf.st_gid;
          v73 = 2112;
          v74 = v24;
          v75 = 2048;
          v76 = v55.st_ino;
          v77 = 1024;
          v78 = v55.st_mode;
          v79 = 1024;
          v80 = v55.st_uid;
          v81 = 1024;
          v82 = v55.st_gid;
          _os_log_impl(&dword_223819000, v49, OS_LOG_TYPE_ERROR, "%{public}@ Permission Denied moving file at path %@ (ino_t=%llu mode_t=%hu uid_t=%u gid_t=%u) to directory %@ (ino_t=%llu mode_t=%hu uid_t=%u gid_t=%u)", v61, 0x58u);
        }
      }

      [*(a1 + 32) finishWithError:v7 operationResult:0];
      v32 = [MEMORY[0x277CCAA00] defaultManager];
      [(ATStoreDownloadOperationResult *)v32 removeItemAtPath:v5 error:0];
    }
  }
}

@end