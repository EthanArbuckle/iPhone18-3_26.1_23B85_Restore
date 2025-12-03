@interface ATStorePodcastDownloadAssetsOperation
- (id)_downloadConfigurationWithSessionIdentifier:(id)identifier isHLS:(BOOL)s;
- (id)_icavUrlSession;
- (id)_urlSession;
- (id)keyLoader;
- (void)_moveAssetToPurchasesDirectoryFromTmpPath:(id)path downloadError:(id)error isHLSAsset:(BOOL)asset;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)error operationResult:(id)result;
@end

@implementation ATStorePodcastDownloadAssetsOperation

- (void)_moveAssetToPurchasesDirectoryFromTmpPath:(id)path downloadError:(id)error isHLSAsset:(BOOL)asset
{
  assetCopy = asset;
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  asset = [(ATStoreDownloadOperation *)self asset];
  [asset setProtectionType:1];

  asset2 = [(ATStoreDownloadOperation *)self asset];
  identifier = [asset2 identifier];

  if (assetCopy)
  {
    pathExtension = @"movpkg";
  }

  else
  {
    pathExtension = [pathCopy pathExtension];
    if (!pathExtension)
    {
      goto LABEL_5;
    }
  }

  v14 = [identifier stringByAppendingPathExtension:pathExtension];

  identifier = v14;
LABEL_5:
  v15 = [MEMORY[0x277D2B5F8] pathForBaseLocationPath:400];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];

  v17 = [v15 stringByAppendingPathComponent:identifier];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager2 removeItemAtPath:v17 error:0];

  v28 = assetCopy;
  if (assetCopy)
  {
    v19 = [pathCopy stringByAppendingPathExtension:pathExtension];

    pathCopy = v19;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = errorCopy;
  v21 = [defaultManager3 moveItemAtPath:pathCopy toPath:v17 error:&v29];
  v22 = v29;

  if ((v21 & 1) == 0)
  {
    v23 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = &stru_2836EC190;
      *buf = 138544386;
      selfCopy = self;
      v32 = 2114;
      if (v28)
      {
        v24 = @"HLS";
      }

      v33 = v24;
      v34 = 2114;
      v35 = pathCopy;
      v36 = 2114;
      v37 = v17;
      v38 = 2114;
      v39 = v22;
      _os_log_impl(&dword_223819000, v23, OS_LOG_TYPE_ERROR, "%{public}@ failed to rename %{public}@ downloaded file from %{public}@ --> %{public}@. err=%{public}@", buf, 0x34u);
    }
  }

  v25 = objc_alloc_init(ATStoreDownloadOperationResult);
  v26 = v25;
  if (v22)
  {
    v27 = 0;
  }

  else
  {
    v27 = v17;
  }

  [(ATStoreDownloadOperationResult *)v25 setDownloadFilePath:v27];
  [(ATStorePodcastDownloadAssetsOperation *)self finishWithError:v22 operationResult:v26];
}

- (id)_downloadConfigurationWithSessionIdentifier:(id)identifier isHLS:(BOOL)s
{
  identifierCopy = identifier;
  if (s)
  {
    [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:identifierCopy];
  }

  else
  {
    [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  }
  v7 = ;
  asset = [(ATStoreDownloadOperation *)self asset];
  [v7 setAllowsCellularAccess:{objc_msgSend(asset, "canUseCellularData")}];

  [v7 setHTTPShouldUsePipelining:1];
  [v7 setHTTPShouldSetCookies:0];
  [v7 setHTTPCookieAcceptPolicy:1];
  currentDeviceInfo = [MEMORY[0x277D7FA80] currentDeviceInfo];
  isWatch = [currentDeviceInfo isWatch];

  if (isWatch)
  {
    [v7 set_prefersInfraWiFi:1];
    [v7 set_companionProxyPreference:2];
  }

  return v7;
}

- (id)_urlSession
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.airtraffic.ATPodcastEpisodeDownloadOperation"];
  asset = [(ATStoreDownloadOperation *)self asset];
  powerRequired = [asset powerRequired];

  if (powerRequired)
  {
    [v3 appendString:@".power"];
  }

  asset2 = [(ATStoreDownloadOperation *)self asset];
  canUseCellularData = [asset2 canUseCellularData];

  if ((canUseCellularData & 1) == 0)
  {
    [v3 appendString:@".wifi"];
  }

  mEMORY[0x277D7FC90] = [MEMORY[0x277D7FC90] sharedSessionManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__ATStorePodcastDownloadAssetsOperation__urlSession__block_invoke;
  v12[3] = &unk_2784E5B18;
  v12[4] = self;
  v13 = v3;
  v9 = v3;
  v10 = [mEMORY[0x277D7FC90] sessionWithIdentifier:v9 creationBlock:v12];

  return v10;
}

id __52__ATStorePodcastDownloadAssetsOperation__urlSession__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D7FC88]);
  v3 = [*(a1 + 32) _downloadConfigurationWithSessionIdentifier:*(a1 + 40) isHLS:0];
  v4 = [v2 initWithConfiguration:v3];

  return v4;
}

- (id)_icavUrlSession
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.airtraffic.ATPodcastEpisodeDownloadOperation.HLS"];
  asset = [(ATStoreDownloadOperation *)self asset];
  powerRequired = [asset powerRequired];

  if (powerRequired)
  {
    [v3 appendString:@".power"];
  }

  asset2 = [(ATStoreDownloadOperation *)self asset];
  canUseCellularData = [asset2 canUseCellularData];

  if ((canUseCellularData & 1) == 0)
  {
    [v3 appendString:@".wifi"];
  }

  mEMORY[0x277D7FC90] = [MEMORY[0x277D7FC90] sharedSessionManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ATStorePodcastDownloadAssetsOperation__icavUrlSession__block_invoke;
  v12[3] = &unk_2784E5B18;
  v12[4] = self;
  v13 = v3;
  v9 = v3;
  v10 = [mEMORY[0x277D7FC90] sessionWithIdentifier:v9 creationBlock:v12];

  return v10;
}

id __56__ATStorePodcastDownloadAssetsOperation__icavUrlSession__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D7FA18]);
  v3 = [*(a1 + 32) _downloadConfigurationWithSessionIdentifier:*(a1 + 40) isHLS:1];
  v4 = [v2 initWithConfiguration:v3];

  return v4;
}

- (void)finishWithError:(id)error operationResult:(id)result
{
  v8.receiver = self;
  v8.super_class = ATStorePodcastDownloadAssetsOperation;
  [(ATStoreDownloadOperation *)&v8 finishWithError:error operationResult:result];
  request = self->_request;
  self->_request = 0;

  hlsSession = self->_hlsSession;
  self->_hlsSession = 0;

  session = self->_session;
  self->_session = 0;
}

- (void)cancel
{
  v13.receiver = self;
  v13.super_class = ATStorePodcastDownloadAssetsOperation;
  [(ATStorePodcastDownloadAssetsOperation *)&v13 cancel];
  if (self->_request)
  {
    v3 = MEMORY[0x277CBEBC0];
    asset = [(ATStoreDownloadOperation *)self asset];
    storeInfo = [asset storeInfo];
    redownloadParams = [storeInfo redownloadParams];
    v7 = [v3 URLWithString:redownloadParams];
    pf_isHLSPlaylistObjC = [v7 pf_isHLSPlaylistObjC];

    v9 = _ATLogCategoryStoreDownloads();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (pf_isHLSPlaylistObjC)
    {
      if (v10)
      {
        *v12 = 0;
        _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling HLS download", v12, 2u);
      }

      v11 = &OBJC_IVAR___ATStorePodcastDownloadAssetsOperation__hlsSession;
    }

    else
    {
      if (v10)
      {
        *v12 = 0;
        _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling regular, non-HLS download", v12, 2u);
      }

      v11 = &OBJC_IVAR___ATStorePodcastDownloadAssetsOperation__session;
    }

    [*(&self->super.super.super.super.super.super.isa + *v11) cancelRequest:self->_request];
  }
}

- (void)execute
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    asset = [(ATStoreDownloadOperation *)self asset];
    asset2 = [(ATStoreDownloadOperation *)self asset];
    powerRequired = [asset2 powerRequired];
    asset3 = [(ATStoreDownloadOperation *)self asset];
    canUseCellularData = [asset3 canUseCellularData];
    asset4 = [(ATStoreDownloadOperation *)self asset];
    resumeData = [asset4 resumeData];
    *buf = 138544386;
    selfCopy = self;
    v30 = 2114;
    v31 = asset;
    v32 = 1024;
    v33 = powerRequired;
    v34 = 1024;
    v35 = canUseCellularData;
    v36 = 1024;
    v37 = resumeData != 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting download for asset %{public}@. requiresPower=%d, canUseCellularData=%d, hasResumeData=%d", buf, 0x28u);
  }

  asset5 = [(ATStoreDownloadOperation *)self asset];
  storeInfo = [asset5 storeInfo];
  redownloadParams = [storeInfo redownloadParams];

  v14 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = redownloadParams;
    _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "Downloading from remote url: %@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277CBEBC0] URLWithString:redownloadParams];
  if (redownloadParams)
  {
    if (![(ATStorePodcastDownloadAssetsOperation *)self isCancelled])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke;
      v26[3] = &unk_2784E5AC8;
      v26[4] = self;
      v27 = v15;
      v19 = MEMORY[0x223DED0C0](v26);
      mEMORY[0x277D7FC00] = [MEMORY[0x277D7FC00] sharedManager];
      asset6 = [(ATStoreDownloadOperation *)self asset];
      totalBytes = [asset6 totalBytes];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_33;
      v24[3] = &unk_2784E5AF0;
      v25 = v19;
      v23 = v19;
      [mEMORY[0x277D7FC00] ensureStorageIsAvailable:totalBytes withCompletionHandler:v24];

      goto LABEL_11;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = 2;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 26;
  }

  v18 = [v16 errorWithDomain:@"ATError" code:v17 userInfo:0];
  [(ATStorePodcastDownloadAssetsOperation *)self finishWithError:v18 operationResult:0];

LABEL_11:
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke(uint64_t a1, unint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) asset];
  v5 = [v4 totalBytes];

  if (v5 <= a2)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v11 = *(a1 + 32);
      v66 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
      [v11 finishWithError:v66 operationResult:0];
    }

    else
    {
      v12 = ICBundleIdentifierForSystemApplicationType();
      v13 = [MEMORY[0x277D7FA48] defaultInfo];
      v14 = [v13 mutableCopy];

      [v14 setRequestingBundleIdentifier:v12];
      v15 = [*(a1 + 32) asset];
      v16 = [v15 canUseCellularData];

      v17 = objc_alloc(MEMORY[0x277D7FBD8]);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_11;
      v74[3] = &unk_2784E5A28;
      v62 = v12;
      v75 = v62;
      v77 = v16;
      v63 = v14;
      v76 = v63;
      v65 = [v17 initWithBlock:v74];
      v18 = [objc_alloc(MEMORY[0x277D7FC70]) initWithURL:*(a1 + 40) requestContext:v65 resumeData:0];
      v19 = *(*(a1 + 32) + 344);
      *(*(a1 + 32) + 344) = v18;

      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 UUIDString];

      v64 = [*(a1 + 40) pathExtension];
      v22 = [*(a1 + 40) pf_isHLSPlaylistObjC];
      if (!((v64 == 0) | v22 & 1))
      {
        v23 = [v21 stringByAppendingPathExtension:?];

        v21 = v23;
      }

      v67 = +[ATStoreDownloadService downloadDirectoryPath];
      v24 = [v67 stringByAppendingPathComponent:v21];
      v25 = [MEMORY[0x277CCAA00] defaultManager];
      [v25 createDirectoryAtPath:v67 withIntermediateDirectories:1 attributes:0 error:0];

      v26 = [MEMORY[0x277CCAA00] defaultManager];
      [v26 removeItemAtPath:v24 error:0];

      v27 = _ATLogCategoryStoreDownloads();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_impl(&dword_223819000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading to temporary file path '%{public}@'", buf, 0x16u);
      }

      v29 = [*(a1 + 32) progress];
      v30 = [*(*(a1 + 32) + 344) progress];
      [v29 addChild:v30 withPendingUnitCount:100];

      if (v22)
      {
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v31 = getMTStoreIdentifierClass_softClass;
        v81 = getMTStoreIdentifierClass_softClass;
        if (!getMTStoreIdentifierClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getMTStoreIdentifierClass_block_invoke;
          v85 = &unk_2784E5B40;
          v86 = &v78;
          __getMTStoreIdentifierClass_block_invoke(buf);
          v31 = v79[3];
        }

        v32 = v31;
        _Block_object_dispose(&v78, 8);
        v33 = [*(a1 + 32) asset];
        v34 = [v33 storeInfo];
        v35 = [v34 adamID];
        v36 = [v31 isEmptyNumber:v35];

        if (v36)
        {
          v37 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_223819000, v37, OS_LOG_TYPE_ERROR, "Can't download HLS content for episode without an adam id", buf, 2u);
          }

          v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:26 userInfo:0];
          [*(a1 + 32) finishWithError:v38 operationResult:0];
        }

        else
        {
          v48 = objc_alloc(MEMORY[0x277CE6650]);
          v49 = *(a1 + 40);
          v82 = *MEMORY[0x277CE61B8];
          v50 = [MEMORY[0x277CCABB0] numberWithBool:v16];
          v83 = v50;
          v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v61 = [v48 initWithURL:v49 options:v51];

          v52 = _ATLogCategoryStoreDownloads();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *(a1 + 32);
            *buf = 138543362;
            *&buf[4] = v53;
            _os_log_impl(&dword_223819000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning HLS download", buf, 0xCu);
          }

          v55 = *(a1 + 32);
          v54 = a1 + 32;
          v56 = [v55 _icavUrlSession];
          v57 = *(*v54 + 336);
          *(*v54 + 336) = v56;

          v58 = *(*v54 + 336);
          v59 = *(*v54 + 344);
          v60 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24 isDirectory:1];
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_21;
          v71[3] = &unk_2784E5AA0;
          v71[4] = *v54;
          v72 = v24;
          v73 = v22;
          [v58 enqueueAggregateAssetDownloadRequest:v59 toDestination:v60 withAVURLAsset:v61 options:0 completionHandler:v71];
        }
      }

      else
      {
        v39 = _ATLogCategoryStoreDownloads();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [*(a1 + 32) asset];
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&dword_223819000, v39, OS_LOG_TYPE_DEFAULT, "Downloading regular URL asset: %@", buf, 0xCu);
        }

        v42 = *(a1 + 32);
        v41 = a1 + 32;
        v43 = [v42 _urlSession];
        v44 = *(*v41 + 328);
        *(*v41 + 328) = v43;

        v45 = *(*v41 + 328);
        v46 = *(*v41 + 344);
        v47 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24 isDirectory:0];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_30;
        v68[3] = &unk_2784E5AA0;
        v68[4] = *v41;
        v69 = v24;
        v70 = v22;
        [v45 enqueueDownloadRequest:v46 toDestination:v47 withCompletionHandler:v68];
      }
    }
  }

  else
  {
    v6 = _ATLogCategoryStoreDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v7 asset];
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v85 = [v8 totalBytes];
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_ERROR, "%{public}@ not enough free space available for download. available=%lld, needed=%lld", buf, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:14 userInfo:0];
    [v9 finishWithError:v10 operationResult:0];
  }
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7FBA0];
  v4 = a2;
  v5 = [[v3 alloc] initWithBundleIdentifier:*(a1 + 32)];
  [v5 setShouldAllowDataForCellularNetworkTypes:*(a1 + 48)];
  [v4 setNetworkConstraints:v5];
  [v4 setClientInfo:*(a1 + 40)];
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = [v8 isCancelled];
    *&buf[18] = 2114;
    *&buf[20] = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Download complete. cancelled=%x err=%{public}@", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    [v9 finishWithError:v6 operationResult:0];
  }

  else if ([v9 isCancelled])
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  }

  else
  {
    v6 = [*(a1 + 40) stringByAppendingPathExtension:@"movpkg"];
    v10 = objc_alloc(MEMORY[0x277CE6650]);
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v12 = [v10 initWithURL:v11 options:0];

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getPFFairPlayAssetClass_softClass;
    v28 = getPFFairPlayAssetClass_softClass;
    if (!getPFFairPlayAssetClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPFFairPlayAssetClass_block_invoke;
      *&buf[24] = &unk_2784E5B40;
      v30 = &v25;
      __getPFFairPlayAssetClass_block_invoke(buf);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [v13 alloc];
    v16 = [*(a1 + 32) asset];
    v17 = [v16 storeInfo];
    v18 = [v17 adamID];
    v19 = [v15 initWithAdamID:objc_msgSend(v18 avAsset:{"longLongValue"), v12}];

    v20 = [*(a1 + 32) keyLoader];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_25;
    v21[3] = &unk_2784E5A78;
    v21[4] = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = 0;
    v24 = *(a1 + 48);
    [v20 createSessionWithAsset:v19 completion:v21];
  }
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ download complete. err=%{public}@", &v8, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v4)
  {
    [v7 finishWithError:v4 operationResult:0];
  }

  else if ([v7 isCancelled])
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
  }

  else
  {
    [*(a1 + 32) _moveAssetToPurchasesDirectoryFromTmpPath:*(a1 + 40) downloadError:0 isHLSAsset:*(a1 + 48)];
  }
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Created fairplay session. err=%{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    [v9 finishWithError:v10 operationResult:0];
  }

  else
  {
    v11 = [*(a1 + 32) keyLoader];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_26;
    v13[3] = &unk_2784E5A50;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v11 startKeyRequestWithSession:v5 completion:v13];
  }
}

void __48__ATStorePodcastDownloadAssetsOperation_execute__block_invoke_26(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryStoreDownloads();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Started key request. err=%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v3)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:0 userInfo:0];
    [v6 finishWithError:v7 operationResult:0];
  }

  else
  {
    [*(a1 + 32) _moveAssetToPurchasesDirectoryFromTmpPath:*(a1 + 40) downloadError:*(a1 + 48) isHLSAsset:*(a1 + 56)];
  }
}

- (id)keyLoader
{
  keyLoader = self->_keyLoader;
  if (!keyLoader)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPFFairPlayKeyLoaderClass_softClass;
    v13 = getPFFairPlayKeyLoaderClass_softClass;
    if (!getPFFairPlayKeyLoaderClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getPFFairPlayKeyLoaderClass_block_invoke;
      v9[3] = &unk_2784E5B40;
      v9[4] = &v10;
      __getPFFairPlayKeyLoaderClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_keyLoader;
    self->_keyLoader = v6;

    keyLoader = self->_keyLoader;
  }

  return keyLoader;
}

@end