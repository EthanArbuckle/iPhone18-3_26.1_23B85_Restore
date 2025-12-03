@interface ATStoreMusicDownloadAssetsOperation
- (unint64_t)_maximumSampleRateForResolutionPreference:(int64_t)preference;
- (unint64_t)_minimumBitrateForResolutionPreference:(int64_t)preference;
- (void)_getStorageSpaceAvailableForMediaResponseItem:(id)item completion:(id)completion;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)error operationResult:(id)result;
@end

@implementation ATStoreMusicDownloadAssetsOperation

- (unint64_t)_maximumSampleRateForResolutionPreference:(int64_t)preference
{
  if (preference == 48000)
  {
    v3 = 48000;
  }

  else
  {
    v3 = 0;
  }

  if (preference == 192000)
  {
    return 192000;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_minimumBitrateForResolutionPreference:(int64_t)preference
{
  result = preference;
  if (preference <= 255)
  {
    if (preference && preference != 64)
    {
      return 256;
    }
  }

  else if (preference != 256)
  {
    if (preference != 192000)
    {
      return 256;
    }

    return 512;
  }

  return result;
}

- (void)_getStorageSpaceAvailableForMediaResponseItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  currentDeviceInfo = [MEMORY[0x277D7FA80] currentDeviceInfo];
  isWatch = [currentDeviceInfo isWatch];

  if (isWatch)
  {
    mEMORY[0x277D7FC00] = [MEMORY[0x277D7FC00] sharedManager];
    completionCopy[2](completionCopy, [mEMORY[0x277D7FC00] storageSpaceAvailable]);
  }

  else
  {
    mEMORY[0x277D7FC00] = [itemCopy downloadableAsset];
    fileSize = [mEMORY[0x277D7FC00] fileSize];
    mEMORY[0x277D7FC00]2 = [MEMORY[0x277D7FC00] sharedManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__ATStoreMusicDownloadAssetsOperation__getStorageSpaceAvailableForMediaResponseItem_completion___block_invoke;
    v12[3] = &unk_2784E5AF0;
    v13 = completionCopy;
    [mEMORY[0x277D7FC00]2 ensureStorageIsAvailable:fileSize withCompletionHandler:v12];
  }
}

- (void)finishWithError:(id)error operationResult:(id)result
{
  errorCopy = error;
  resultCopy = result;
  v8 = errorCopy;
  v9 = v8;
  if (!v8)
  {
    if ([(ATStoreMusicDownloadAssetsOperation *)self isCancelled])
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }

    else
    {
      v9 = 0;
    }
  }

  v11.receiver = self;
  v11.super_class = ATStoreMusicDownloadAssetsOperation;
  [(ATStoreDownloadOperation *)&v11 finishWithError:v9 operationResult:resultCopy];
  assetDownloadRequest = self->_assetDownloadRequest;
  self->_assetDownloadRequest = 0;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = ATStoreMusicDownloadAssetsOperation;
  [(ATStoreMusicDownloadAssetsOperation *)&v3 cancel];
  [(ICMediaAssetDownloadRequest *)self->_assetDownloadRequest cancel];
}

- (void)execute
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(ATStoreMusicDownloadAssetsOperation *)self isCancelled])
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    [ATStoreMusicDownloadAssetsOperation finishWithError:"finishWithError:operationResult:" operationResult:?];
  }

  else
  {
    asset = [(ATStoreDownloadOperation *)self asset];
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v27 = 2114;
      v28 = asset;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ starting download phase for asset %{public}@", buf, 0x16u);
    }

    prepareOperationResult = [(ATStoreDownloadAssetsOperation *)self prepareOperationResult];
    requestContext = [prepareOperationResult requestContext];

    prepareOperationResult2 = [(ATStoreDownloadAssetsOperation *)self prepareOperationResult];
    storeMediaResponseItem = [prepareOperationResult2 storeMediaResponseItem];

    downloadableAsset = [storeMediaResponseItem downloadableAsset];
    hlsAsset = [storeMediaResponseItem hlsAsset];
    v11 = hlsAsset;
    if (downloadableAsset || ([hlsAsset playlistURL], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      fileSize = [downloadableAsset fileSize];
      v14 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v27 = 2048;
        v28 = fileSize;
        _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ downloadable asset size=%lld", buf, 0x16u);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__ATStoreMusicDownloadAssetsOperation_execute__block_invoke;
      v18[3] = &unk_2784E5700;
      v24 = fileSize;
      v18[4] = self;
      v19 = requestContext;
      v20 = storeMediaResponseItem;
      v21 = asset;
      v22 = v11;
      v23 = downloadableAsset;
      [(ATStoreMusicDownloadAssetsOperation *)self _getStorageSpaceAvailableForMediaResponseItem:v20 completion:v18];
    }

    else
    {
      v15 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ no asset found in prepare response - stopping", buf, 0xCu);
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:26 userInfo:0];
      [(ATStoreMusicDownloadAssetsOperation *)self finishWithError:v16 operationResult:0];
    }
  }
}

void __46__ATStoreMusicDownloadAssetsOperation_execute__block_invoke(uint64_t a1, unint64_t a2)
{
  v102 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) > a2)
  {
    v4 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 80);
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = v6;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ not enough free space available for download. available=%lld, needed=%lld", buf, 0x20u);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:14 userInfo:0];
    [v7 finishWithError:v8 operationResult:0];

    return;
  }

  v9 = [objc_alloc(MEMORY[0x277D7FB08]) initWithRequestContext:*(a1 + 40) storeMediaResponseItem:*(a1 + 48) resumeData:0];
  v10 = *(a1 + 32);
  v11 = *(v10 + 328);
  *(v10 + 328) = v9;

  [*(*(a1 + 32) + 328) setAllowsCellularFallback:*(a1 + 80) >> 21 < 0x19uLL];
  [*(*(a1 + 32) + 328) setAllowsCellularData:{objc_msgSend(*(a1 + 56), "canUseCellularData")}];
  [*(*(a1 + 32) + 328) setAllowsProxyCellularData:{objc_msgSend(*(a1 + 56), "canProxyUseCellularData")}];
  v12 = *(a1 + 32);
  v13 = v12[41];
  v14 = [v12 asset];
  if ([v14 isForeground])
  {
    v15 = 25;
  }

  else
  {
    v15 = -1;
  }

  [v13 setQualityOfService:v15];

  v16 = [MEMORY[0x277D7FA80] currentDeviceInfo];
  v17 = [v16 isWatch];

  if ((v17 & 1) == 0)
  {
    v20 = [*(a1 + 64) playlistURL];
    if (v20)
    {
      v21 = [*(a1 + 64) keyServerURL];
      if (v21)
      {
        v22 = [*(a1 + 64) keyCertificateURL];
        if (v22)
        {
          v23 = [*(a1 + 64) keyServerProtocolType];
          v24 = [v23 isEqualToString:*MEMORY[0x277D7F978]];

          v25 = v24 ^ 1;
        }

        else
        {
          v25 = 1;
        }
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 1;
    }

    v26 = [*(a1 + 64) audioTraits];
    v90 = [v26 containsObject:*MEMORY[0x277D7F9A8]];
    v89 = [v26 containsObject:*MEMORY[0x277D7F9A0]];
    if ([v26 containsObject:*MEMORY[0x277D7F998]] & 1) != 0 || (objc_msgSend(v26, "containsObject:", *MEMORY[0x277D7F9B0]))
    {
      v27 = 1;
    }

    else
    {
      v27 = [v26 containsObject:*MEMORY[0x277D7F9B8]];
    }

    v28 = [*(a1 + 56) assetType];
    v29 = [v28 isEqualToString:@"MusicVideo"];

    *v100 = 0;
    *&v100[8] = v100;
    *&v100[16] = 0x2050000000;
    v30 = getMPPlaybackUserDefaultsClass_softClass;
    v101 = getMPPlaybackUserDefaultsClass_softClass;
    if (!getMPPlaybackUserDefaultsClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPPlaybackUserDefaultsClass_block_invoke;
      *&buf[24] = &unk_2784E5B40;
      *&buf[32] = v100;
      __getMPPlaybackUserDefaultsClass_block_invoke(buf);
      v30 = *(*&v100[8] + 24);
    }

    v31 = v30;
    _Block_object_dispose(v100, 8);
    v91 = [v30 standardUserDefaults];
    v32 = [v91 preferredMusicDownloadResolution];
    v33 = v32;
    v34 = v90 | v89;
    if ((v25 | v29))
    {
      v19 = v25 ^ 1;
    }

    else
    {
      v19 = v34 & (v32 > 47999);
      if (!v19 && ((v27 ^ 1) & 1) == 0)
      {
        v19 = [v91 prefersSpatialDownloads];
      }
    }

    v35 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v37 = [v91 prefersSpatialDownloads];
      *buf = 138544386;
      *&buf[4] = v36;
      *&buf[12] = 1024;
      *&buf[14] = v19;
      *&buf[18] = 2114;
      *&buf[20] = v26;
      *&buf[28] = 2048;
      *&buf[30] = v33;
      *&buf[38] = 1024;
      *&buf[40] = v37;
      _os_log_impl(&dword_223819000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ isHLSDownload=%{BOOL}u [traits=%{public}@, preferredDownloadResolution=%ld, prefersSpatialDownloads=%{BOOL}u]", buf, 0x2Cu);
    }

    if (!v19)
    {
      v18 = 0;
LABEL_75:

      goto LABEL_76;
    }

    v38 = [v91 prefersSpatialDownloads];
    v40 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 32);
      *buf = 138544130;
      *&buf[4] = v41;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 1024;
      *&buf[24] = v38;
      *&buf[28] = 1024;
      *&buf[30] = v33 > 47999;
      _os_log_impl(&dword_223819000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ HLS Download input: traits=%{public}@, prefersSpatialAudio=%{BOOL}u, prefersLossless=%{BOOL}u", buf, 0x22u);
    }

    v42 = v27 & v38;
    v43 = *(a1 + 32);
    v39 = v33 > 47999;
    v88 = v34 & ~v42 & v39;
    if (v88)
    {
      v87 = [v43 _maximumSampleRateForResolutionPreference:v33];
      v44 = *(*(a1 + 32) + 328);
      if (v87)
      {
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        [v44 setMaximumSampleRate:v45];

LABEL_41:
        [*(*(a1 + 32) + 328) setPrefersLossless:v88];
        [*(*(a1 + 32) + 328) setPrefersMultichannel:v42];
        [*(*(a1 + 32) + 328) setPrefersHLSAsset:1];
        v46 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = *(a1 + 32);
          *buf = 138544130;
          *&buf[4] = v47;
          *&buf[12] = 1024;
          *&buf[14] = v34 & ~v42 & v39;
          *&buf[18] = 1024;
          *&buf[20] = v42;
          *&buf[24] = 2048;
          *&buf[26] = v87;
          _os_log_impl(&dword_223819000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ HLS Download setup: shouldUseLosslessAsset=%{BOOL}u, shouldUseSpatialAsset=%{BOOL}u, sample rate=%lu", buf, 0x22u);
        }

        if (v42)
        {
          if ([v26 containsObject:*MEMORY[0x277D7F998]])
          {
            v48 = 9;
          }

          else
          {
            v48 = 8;
          }

          if ([v26 containsObject:*MEMORY[0x277D7F9B0]])
          {
            v48 |= 0x20uLL;
          }

          if ([v26 containsObject:*MEMORY[0x277D7F9B8]])
          {
            v18 = v48 | 2;
          }

          else
          {
            v18 = v48;
          }
        }

        else
        {
          v49 = 8;
          if ((v90 & (v33 > 47999)) != 0)
          {
            v49 = 4;
          }

          if ((v89 & (v33 == 192000)) != 0)
          {
            v18 = 16;
          }

          else
          {
            v18 = v49;
          }
        }

        v50 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 32);
          v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6];
          if ((v18 & 8) != 0)
          {
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"lossy stereo"];
            [v52 addObject:v53];
          }

          if ((v18 & 4) != 0)
          {
            v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"lossless"];
            [v52 addObject:v54];
          }

          if ((v18 & 0x10) != 0)
          {
            v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"high-res lossless"];
            [v52 addObject:v55];
          }

          if ((v18 & 0x20) != 0)
          {
            v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"spatial"];
            [v52 addObject:v56];
          }

          if (v18)
          {
            v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"atmos"];
            [v52 addObject:v57];
          }

          if ((v18 & 2) != 0)
          {
            v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"surround"];
            [v52 addObject:v58];
          }

          if ([v52 count])
          {
            v59 = [v52 componentsJoinedByString:{@", "}];
          }

          else
          {
            v59 = @"None";
          }

          *buf = 138544386;
          *&buf[4] = v51;
          *&buf[12] = 2114;
          *&buf[14] = v59;
          *&buf[22] = 1024;
          *&buf[24] = v42;
          *&buf[28] = 1024;
          *&buf[30] = v88;
          *&buf[34] = 2048;
          *&buf[36] = v87;
          _os_log_impl(&dword_223819000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ HLS Download outcome: traits=[%{public}@], spatial=%{BOOL}u, lossless=%{BOOL}u, sample rate=%lu", buf, 0x2Cu);
        }

        goto LABEL_75;
      }
    }

    else
    {
      v44 = v43[41];
    }

    [v44 setMaximumSampleRate:0];
    v87 = 0;
    goto LABEL_41;
  }

  v18 = 0;
  LOBYTE(v19) = 0;
LABEL_76:
  v60 = [MEMORY[0x277D7FA80] currentDeviceInfo];
  v61 = [v60 isWatch];

  if ((v61 & 1) == 0)
  {
    [*(*(a1 + 32) + 328) setRequiresPower:{objc_msgSend(*(a1 + 56), "powerRequired")}];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__4252;
  *&buf[32] = __Block_byref_object_dispose__4253;
  *&buf[40] = 0;
  if (v19)
  {
    v62 = @"movpkg";
  }

  else
  {
    v62 = [*(a1 + 72) fileExtension];
  }

  v63 = MEMORY[0x277CCACA8];
  v64 = [*(a1 + 56) identifier];
  v65 = [MEMORY[0x277CCAD78] UUID];
  v66 = [v65 UUIDString];
  v67 = [v63 stringWithFormat:@"%@_%@", v64, v66];
  v68 = [v67 stringByAppendingPathExtension:v62];

  v69 = +[ATStoreDownloadService downloadDirectoryPath];
  v70 = [v69 stringByAppendingPathComponent:v68];
  v71 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v70;

  v72 = [MEMORY[0x277CCAA00] defaultManager];
  [v72 createDirectoryAtPath:v69 withIntermediateDirectories:1 attributes:0 error:0];

  v73 = [MEMORY[0x277CCAA00] defaultManager];
  [v73 removeItemAtPath:*(*&buf[8] + 40) error:0];

  v74 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = *(a1 + 32);
    v76 = *(*&buf[8] + 40);
    *v100 = 138543618;
    *&v100[4] = v75;
    *&v100[12] = 2114;
    *&v100[14] = v76;
    _os_log_impl(&dword_223819000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading to temporary file %{public}@", v100, 0x16u);
  }

  v77 = *(*(a1 + 32) + 328);
  v78 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*&buf[8] + 40)];
  [v77 setDestinationURL:v78];

  v79 = [*(a1 + 32) progress];
  v80 = [*(*(a1 + 32) + 328) progress];
  [v79 addChild:v80 withPendingUnitCount:100];

  v81 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = *(a1 + 32);
    v83 = *(v82 + 328);
    *v100 = 138543618;
    *&v100[4] = v82;
    *&v100[12] = 2114;
    *&v100[14] = v83;
    _os_log_impl(&dword_223819000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ Initiating download using request %{public}@", v100, 0x16u);
  }

  v84 = *(a1 + 32);
  v85 = *(v84 + 328);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __46__ATStoreMusicDownloadAssetsOperation_execute__block_invoke_87;
  v92[3] = &unk_2784E56D8;
  v92[4] = v84;
  v93 = *(a1 + 48);
  v86 = *(a1 + 40);
  v98 = v19;
  v94 = v86;
  v97 = v18;
  v95 = *(a1 + 64);
  v96 = buf;
  [v85 performRequestWithResponseHandler:v92];

  _Block_object_dispose(buf, 8);
}

void __46__ATStoreMusicDownloadAssetsOperation_execute__block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (([*(a1 + 32) isCancelled] & 1) != 0 || objc_msgSend(*(*(a1 + 32) + 328), "isCancelled"))
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = objc_alloc_init(ATStoreDownloadOperationResult);
  [(ATStoreDownloadOperationResult *)v8 setStoreMediaResponseItem:*(a1 + 40)];
  [(ATStoreDownloadOperationResult *)v8 setRequestContext:*(a1 + 48)];
  [(ATStoreDownloadOperationResult *)v8 setIsHLSDownload:*(a1 + 80)];
  if (*(a1 + 80) == 1)
  {
    v38[0] = *MEMORY[0x277D2B548];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    v39[0] = v9;
    v38[1] = *MEMORY[0x277D2B550];
    v10 = [*(a1 + 56) keyCertificateURL];
    v11 = [v10 absoluteString];
    v39[1] = v11;
    v38[2] = *MEMORY[0x277D2B560];
    [*(a1 + 56) keyServerURL];
    v29 = v5;
    v12 = v30 = v6;
    [v12 absoluteString];
    v14 = v13 = v7;
    v39[2] = v14;
    v38[3] = *MEMORY[0x277D2B558];
    v15 = [*(a1 + 56) keyServerProtocolType];
    v16 = v15;
    v17 = *MEMORY[0x277D7F980];
    if (v15)
    {
      v17 = v15;
    }

    v39[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

    v7 = v13;
    v5 = v29;
    v6 = v30;

    [(ATStoreDownloadOperationResult *)v8 setAssetClientParams:v18];
  }

  if (v7)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = *(*(*(a1 + 64) + 8) + 40);
    v31 = 0;
    [v19 removeItemAtPath:v20 error:&v31];
    v21 = v31;

    v22 = _ATLogCategoryStoreDownloads();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = *(*(*(a1 + 64) + 8) + 40);
        v26 = [v21 msv_description];
        *buf = 138543874;
        v33 = v24;
        v34 = 2114;
        v35 = v25;
        v36 = 2114;
        v37 = v26;
        _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Performed cleanup for download at path %{public}@ error=%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v33 = v27;
      v34 = 2114;
      v35 = v28;
      _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Performed cleanup for download at path %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(ATStoreDownloadOperationResult *)v8 setDownloadFilePath:*(*(*(a1 + 64) + 8) + 40)];
  }

  [*(a1 + 32) finishWithError:v7 operationResult:v8];
}

@end