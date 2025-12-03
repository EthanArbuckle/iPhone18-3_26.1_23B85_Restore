@interface ASDApp
- (ASDApp)initWithBundleID:(id)d;
- (ASDApp)initWithCoder:(id)coder;
- (ASDProgress)remoteProgress;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToApp:(id)app;
- (NSData)rawUpdateData;
- (NSDate)updateInstallDate;
- (NSDictionary)updateMetadata;
- (NSProgress)downloadProgress;
- (NSProgress)installProgress;
- (NSProgress)postProcessProgress;
- (NSProgress)progress;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)_cachedOpenableStatus;
- (uint64_t)_openableStatus;
- (unint64_t)hash;
- (void)_loadUpdateMetadataIfNecessary;
- (void)encodeWithCoder:(id)coder;
- (void)loadUpdateMetadataIfNecessary;
- (void)setAutoUpdateEnabled:(BOOL)enabled;
- (void)setDownloadProgress:(id)progress;
- (void)setHasPostProcessing:(BOOL)processing;
- (void)setInstallProgress:(id)progress;
- (void)setPostProcessProgress:(id)progress;
- (void)setProgress:(id)progress;
- (void)setRawUpdateData:(id)data;
- (void)setRemoteProgress:(id)progress;
- (void)setUpdateInstallDate:(id)date;
- (void)setUpdateMetadata:(id)metadata;
- (void)updateCodedPropertiesFromApp:(id)app;
@end

@implementation ASDApp

- (ASDApp)initWithBundleID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ASDApp;
  v5 = [(ASDApp *)&v11 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_openableStatus = -1;
    v8 = objc_alloc_init(ASDUnfairLock);
    propertyLock = v5->_propertyLock;
    v5->_propertyLock = v8;
  }

  return v5;
}

- (uint64_t)_cachedOpenableStatus
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v5 = 0;
    goto LABEL_11;
  }

  executablePath = [self executablePath];
  v3 = executablePath;
  if (executablePath && [executablePath length])
  {
    _openableStatus = [(ASDApp *)self _openableStatus];
    if (_openableStatus == 255)
    {
      v5 = [ASDAppLibrary openableStatusForExecutableAtPath:v3];
      v8 = self[2];
      *v11 = MEMORY[0x1E69E9820];
      *&v11[8] = 3221225472;
      *&v11[16] = __29__ASDApp__setOpenableStatus___block_invoke;
      v12 = &unk_1E7CDBEE8;
      selfCopy = self;
      v14 = v5;
      ASDWithLock(v8, v11);
      v6 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = v3;
        *&v11[12] = 1024;
        *&v11[14] = v5;
        v7 = "[Library] Loaded openable status for '%@': %i";
        goto LABEL_13;
      }
    }

    else
    {
      v5 = _openableStatus;
      v6 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 138412546;
        *&v11[4] = v3;
        *&v11[12] = 1024;
        *&v11[14] = v5;
        v7 = "[Library] Cached openable status for '%@': %i";
LABEL_13:
        _os_log_debug_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEBUG, v7, v11, 0x12u);
      }
    }

    goto LABEL_10;
  }

  v5 = 255;
LABEL_10:

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSProgress)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__ASDApp_progress__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__ASDApp_setProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  ASDWithLock(propertyLock, v7);
}

- (NSProgress)downloadProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__ASDApp_downloadProgress__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDownloadProgress:(id)progress
{
  progressCopy = progress;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ASDApp_setDownloadProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  ASDWithLock(propertyLock, v7);
}

- (void)setHasPostProcessing:(BOOL)processing
{
  processingCopy = processing;
  v5 = [(ASDApp *)self status]& 0xFFFFFFFFFFFFDFFFLL;
  v6 = 0x2000;
  if (!processingCopy)
  {
    v6 = 0;
  }

  [(ASDApp *)self setStatus:v5 | v6];
}

- (NSProgress)installProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ASDApp_installProgress__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setInstallProgress:(id)progress
{
  progressCopy = progress;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__ASDApp_setInstallProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  ASDWithLock(propertyLock, v7);
}

- (NSProgress)postProcessProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__ASDApp_postProcessProgress__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPostProcessProgress:(id)progress
{
  progressCopy = progress;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ASDApp_setPostProcessProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  ASDWithLock(propertyLock, v7);
}

- (ASDProgress)remoteProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__ASDApp_remoteProgress__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setRemoteProgress:(id)progress
{
  progressCopy = progress;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__ASDApp_setRemoteProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  ASDWithLock(propertyLock, v7);
}

- (void)setAutoUpdateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [(ASDApp *)self status]& 0xFFFFFFFFFFFFBFFFLL;
  v6 = 0x4000;
  if (!enabledCopy)
  {
    v6 = 0;
  }

  [(ASDApp *)self setStatus:v5 | v6];
}

- (NSDate)updateInstallDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__ASDApp_updateInstallDate__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setUpdateInstallDate:(id)date
{
  dateCopy = date;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ASDApp_setUpdateInstallDate___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  ASDWithLock(propertyLock, v7);
}

- (NSDictionary)updateMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__ASDApp_updateMetadata__block_invoke;
  v5[3] = &unk_1E7CDCBF8;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__ASDApp_updateMetadata__block_invoke(uint64_t a1)
{
  [(ASDApp *)*(a1 + 32) _loadUpdateMetadataIfNecessary];
  v2 = *(*(a1 + 32) + 80);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_loadUpdateMetadataIfNecessary
{
  if (self && !*(self + 80))
  {
    if ([*(self + 88) length])
    {
      v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:*(self + 88) options:0 error:0];
      v3 = *(self + 80);
      *(self + 80) = v2;

      MEMORY[0x1EEE66BB8]();
    }

    else if ((*(self + 8) & 1) == 0 && *(self + 104))
    {
      *(self + 8) = 1;
      v4 = +[ASDServiceBroker defaultBroker];
      v5 = [v4 getUpdatesServiceWithError:0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke;
      v9[3] = &unk_1E7CDB980;
      v9[4] = self;
      v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

      v7 = *(self + 104);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke_4;
      v8[3] = &unk_1E7CDCC20;
      v8[4] = self;
      [v6 getUpdateMetadataForBundleID:v7 withReplyHandler:v8];
    }
  }
}

- (void)setUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__ASDApp_setUpdateMetadata___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  ASDWithLock(propertyLock, v7);
}

- (NSData)rawUpdateData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  propertyLock = self->_propertyLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__ASDApp_rawUpdateData__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  ASDWithLock(propertyLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setRawUpdateData:(id)data
{
  dataCopy = data;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASDApp_setRawUpdateData___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  ASDWithLock(propertyLock, v7);
}

- (uint64_t)_openableStatus
{
  if (!self)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v1 = *(self + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__ASDApp__openableStatus__block_invoke;
  v4[3] = &unk_1E7CDB840;
  v4[4] = self;
  v4[5] = &v5;
  ASDWithLock(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)loadUpdateMetadataIfNecessary
{
  propertyLock = self->_propertyLock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__ASDApp_loadUpdateMetadataIfNecessary__block_invoke;
  v3[3] = &unk_1E7CDB930;
  v3[4] = self;
  ASDWithLock(propertyLock, v3);
}

void __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Error fetching updates service: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 length])
  {
    objc_storeStrong((*(a1 + 32) + 88), a2);
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;
  }
}

- (void)updateCodedPropertiesFromApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy != self)
  {
    propertyLock = self->_propertyLock;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__ASDApp_updateCodedPropertiesFromApp___block_invoke;
    v7[3] = &unk_1E7CDB868;
    v7[4] = self;
    v8 = appCopy;
    ASDWithLock(propertyLock, v7);
  }
}

uint64_t __39__ASDApp_updateCodedPropertiesFromApp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) artistName];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  *(*(a1 + 32) + 264) = [*(a1 + 40) extensions];
  *(*(a1 + 32) + 272) = [*(a1 + 40) status];
  v5 = [*(a1 + 40) installError];
  v6 = *(a1 + 32);
  v7 = *(v6 + 224);
  *(v6 + 224) = v5;

  v8 = [*(a1 + 40) bundlePath];
  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = v8;

  v11 = [*(a1 + 40) bundleShortVersion];
  v12 = *(a1 + 32);
  v13 = *(v12 + 120);
  *(v12 + 120) = v11;

  v14 = [*(a1 + 40) bundleVersion];
  v15 = *(a1 + 32);
  v16 = *(v15 + 128);
  *(v15 + 128) = v14;

  v17 = [*(a1 + 40) executablePath];
  v18 = *(a1 + 32);
  v19 = *(v18 + 136);
  *(v18 + 136) = v17;

  v20 = [*(a1 + 40) localizedName];
  v21 = *(a1 + 32);
  v22 = *(v21 + 144);
  *(v21 + 144) = v20;

  *(*(a1 + 32) + 160) = [*(a1 + 40) storeExternalVersionID];
  *(*(a1 + 32) + 184) = [*(a1 + 40) storeItemID];
  v23 = [*(a1 + 40) storeCohort];
  v24 = *(a1 + 32);
  v25 = *(v24 + 168);
  *(v24 + 168) = v23;

  v26 = [*(a1 + 40) storeFront];
  v27 = *(a1 + 32);
  v28 = *(v27 + 176);
  *(v27 + 176) = v26;

  *(*(a1 + 32) + 192) = [*(a1 + 40) downloaderDSID];
  *(*(a1 + 32) + 200) = [*(a1 + 40) familyID];
  *(*(a1 + 32) + 208) = [*(a1 + 40) purchaserDSID];
  v29 = [*(a1 + 40) updateBuyParams];
  v30 = *(a1 + 32);
  v31 = *(v30 + 248);
  *(v30 + 248) = v29;

  v32 = [*(a1 + 40) updateInstallDate];
  v33 = *(a1 + 32);
  v34 = *(v33 + 72);
  *(v33 + 72) = v32;

  v35 = [*(a1 + 40) rawUpdateData];
  v36 = *(a1 + 32);
  v37 = *(v36 + 88);
  *(v36 + 88) = v35;

  result = [*(a1 + 40) watchApplicationMode];
  *(*(a1 + 32) + 256) = result;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:14];
  v4 = MEMORY[0x1E696AEC0];
  bundleID = [(ASDApp *)self bundleID];
  v6 = [v4 stringWithFormat:@"bundleID = %@", bundleID];
  [v3 addObject:v6];

  if ([(ASDApp *)self hasUnknownDistributor])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasUnknownDistributor"];
    [v3 addObject:v7];
  }

  if ([(ASDApp *)self isStoreApp])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeItemID = %lld", -[ASDApp storeItemID](self, "storeItemID")];
    [v3 addObject:v8];

    storeCohort = [(ASDApp *)self storeCohort];

    if (storeCohort)
    {
      v10 = MEMORY[0x1E696AEC0];
      storeCohort2 = [(ASDApp *)self storeCohort];
      v12 = [v10 stringWithFormat:@"storeCohort = %@", storeCohort2];
      [v3 addObject:v12];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeExternalVersionID = %lld", -[ASDApp storeExternalVersionID](self, "storeExternalVersionID")];
    [v3 addObject:v13];

    if (![(ASDApp *)self isBetaApp]&& ![(ASDApp *)self isSystemApp])
    {
      v14 = MEMORY[0x1E696AEC0];
      isUpdateAvailable = [(ASDApp *)self isUpdateAvailable];
      v16 = @"NO";
      if (isUpdateAvailable)
      {
        v16 = @"YES";
      }

      v17 = [v14 stringWithFormat:@"update available = %@", v16];
      [v3 addObject:v17];
    }
  }

  progress = [(ASDApp *)self progress];
  v19 = progress;
  if (progress)
  {
    v20 = MEMORY[0x1E696AEC0];
    [progress fractionCompleted];
    v22 = [v20 stringWithFormat:@"fractionCompleted = %.2f", v21];
    [v3 addObject:v22];
  }

  else
  {
    remoteProgress = [(ASDApp *)self remoteProgress];
    v22 = remoteProgress;
    if (remoteProgress)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"completedUnitCount = %lld", objc_msgSend(remoteProgress, "completedUnitCount")];
      [v3 addObject:v24];
    }
  }

  v25 = MEMORY[0x1E696AEC0];
  bundlePath = [(ASDApp *)self bundlePath];
  v27 = [v25 stringWithFormat:@"path = %@", bundlePath];
  [v3 addObject:v27];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"installed = %d", -[ASDApp isInstalled](self, "isInstalled")];
  [v3 addObject:v28];

  if ([(ASDApp *)self isOcelot])
  {
    [v3 addObject:@"ocelot = 1"];
    _openableStatus = [(ASDApp *)self _openableStatus];
    if (_openableStatus == 255)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"arcadeOpenable = ?", v43];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"arcadeOpenable = %d", _openableStatus & 1];
    }
    v30 = ;
    [v3 addObject:v30];
  }

  if ([(ASDApp *)self isManaged])
  {
    [v3 addObject:@"managed = 1"];
  }

  if ([(ASDApp *)self watchApplicationMode])
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"watch application mode = %ld", -[ASDApp watchApplicationMode](self, "watchApplicationMode")];
    [v3 addObject:v31];
  }

  installError = [(ASDApp *)self installError];

  if (installError)
  {
    v33 = MEMORY[0x1E696AEC0];
    installError2 = [(ASDApp *)self installError];
    v35 = [v33 stringWithFormat:@"installError = %@", installError2];
    [v3 addObject:v35];
  }

  if (self->_updateInstallDate)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updateInstallDate: %@", self->_updateInstallDate];
    [v3 addObject:v36];
  }

  if (self->_updateMetadata)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updateMetadata: %@", self->_updateMetadata];
    [v3 addObject:v37];
  }

  v38 = MEMORY[0x1E696AEC0];
  v44.receiver = self;
  v44.super_class = ASDApp;
  v39 = [(ASDApp *)&v44 description];
  v40 = [v3 componentsJoinedByString:@" "];;
  v41 = [v38 stringWithFormat:@"%@: {%@}", v39, v40];

  return v41;
}

- (unint64_t)hash
{
  bundleID = [(ASDApp *)self bundleID];
  v3 = [bundleID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASDApp *)self isEqualToApp:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToApp:(id)app
{
  appCopy = app;
  artistName = [(ASDApp *)self artistName];
  artistName2 = [appCopy artistName];
  if (artistName == artistName2 || [artistName isEqual:artistName2])
  {
    bundleID = [(ASDApp *)self bundleID];
    bundleID2 = [appCopy bundleID];
    if ((bundleID == bundleID2 || [bundleID isEqual:bundleID2]) && (v9 = -[ASDApp extensions](self, "extensions"), v9 == objc_msgSend(appCopy, "extensions")) && (v10 = -[ASDApp status](self, "status"), v10 == objc_msgSend(appCopy, "status")))
    {
      installError = [(ASDApp *)self installError];
      installError2 = [appCopy installError];
      if (installError == installError2 || [installError isEqual:installError2])
      {
        bundlePath = [(ASDApp *)self bundlePath];
        bundlePath2 = [appCopy bundlePath];
        if (bundlePath == bundlePath2 || [bundlePath isEqual:bundlePath2])
        {
          v49 = installError;
          v50 = bundlePath2;
          bundleShortVersion = [(ASDApp *)self bundleShortVersion];
          bundleShortVersion2 = [appCopy bundleShortVersion];
          v48 = bundleShortVersion;
          if (bundleShortVersion == bundleShortVersion2 || [bundleShortVersion isEqual:bundleShortVersion2])
          {
            v46 = installError2;
            v47 = bundleShortVersion2;
            bundleVersion = [(ASDApp *)self bundleVersion];
            bundleVersion2 = [appCopy bundleVersion];
            if (bundleVersion == bundleVersion2 || [bundleVersion isEqual:bundleVersion2])
            {
              v19 = bundlePath;
              v45 = bundleVersion2;
              executablePath = [(ASDApp *)self executablePath];
              executablePath2 = [appCopy executablePath];
              v44 = executablePath;
              if (executablePath == executablePath2 || [executablePath isEqual:executablePath2])
              {
                v42 = executablePath2;
                v43 = v19;
                storeExternalVersionID = [(ASDApp *)self storeExternalVersionID];
                if (storeExternalVersionID == [appCopy storeExternalVersionID])
                {
                  storeCohort = [(ASDApp *)self storeCohort];
                  storeCohort2 = [appCopy storeCohort];
                  if (storeCohort == storeCohort2 || [storeCohort isEqual:storeCohort2])
                  {
                    v41 = storeCohort2;
                    storeFront = [(ASDApp *)self storeFront];
                    storeFront2 = [appCopy storeFront];
                    v40 = storeFront2;
                    if (storeFront == storeFront2 || [storeFront isEqual:storeFront2])
                    {
                      v38 = storeFront;
                      v39 = storeCohort;
                      storeItemID = [(ASDApp *)self storeItemID];
                      if (storeItemID == [appCopy storeItemID] && (v28 = -[ASDApp downloaderDSID](self, "downloaderDSID"), v28 == objc_msgSend(appCopy, "downloaderDSID")) && (v29 = -[ASDApp familyID](self, "familyID"), v29 == objc_msgSend(appCopy, "familyID")) && (v30 = -[ASDApp purchaserDSID](self, "purchaserDSID"), v30 == objc_msgSend(appCopy, "purchaserDSID")))
                      {
                        updateBuyParams = [(ASDApp *)self updateBuyParams];
                        updateBuyParams2 = [appCopy updateBuyParams];
                        if (updateBuyParams == updateBuyParams2 || [updateBuyParams isEqual:updateBuyParams2])
                        {
                          v33 = updateBuyParams2;
                          watchApplicationMode = [(ASDApp *)self watchApplicationMode];
                          v35 = watchApplicationMode == [appCopy watchApplicationMode];
                          updateBuyParams2 = v33;
                          v36 = v35;
                        }

                        else
                        {
                          v36 = 0;
                        }
                      }

                      else
                      {
                        v36 = 0;
                      }

                      v19 = v43;
                      storeFront = v38;
                      storeCohort = v39;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    storeCohort2 = v41;
                  }

                  else
                  {
                    v36 = 0;
                  }
                }

                else
                {
                  v36 = 0;
                }

                executablePath2 = v42;
              }

              else
              {
                v36 = 0;
              }

              bundleVersion2 = v45;
              bundlePath = v19;
            }

            else
            {
              v36 = 0;
            }

            installError2 = v46;
            bundleShortVersion2 = v47;
          }

          else
          {
            v36 = 0;
          }

          bundlePath2 = v50;
          installError = v49;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ASDApp allocWithZone:?];
  bundleID = [(ASDApp *)self bundleID];
  v7 = [(ASDApp *)v5 initWithBundleID:bundleID];

  artistName = [(ASDApp *)self artistName];
  v9 = [artistName copyWithZone:zone];
  [(ASDApp *)v7 setArtistName:v9];

  [(ASDApp *)v7 setExtensions:[(ASDApp *)self extensions]];
  [(ASDApp *)v7 setStatus:[(ASDApp *)self status]];
  installError = [(ASDApp *)self installError];
  [(ASDApp *)v7 setInstallError:installError];

  bundlePath = [(ASDApp *)self bundlePath];
  v12 = [bundlePath copyWithZone:zone];
  [(ASDApp *)v7 setBundlePath:v12];

  bundleShortVersion = [(ASDApp *)self bundleShortVersion];
  v14 = [bundleShortVersion copyWithZone:zone];
  [(ASDApp *)v7 setBundleShortVersion:v14];

  bundleVersion = [(ASDApp *)self bundleVersion];
  v16 = [bundleVersion copyWithZone:zone];
  [(ASDApp *)v7 setBundleVersion:v16];

  executablePath = [(ASDApp *)self executablePath];
  v18 = [executablePath copyWithZone:zone];
  [(ASDApp *)v7 setExecutablePath:v18];

  [(ASDApp *)v7 setStoreExternalVersionID:[(ASDApp *)self storeExternalVersionID]];
  [(ASDApp *)v7 setStoreItemID:[(ASDApp *)self storeItemID]];
  storeCohort = [(ASDApp *)self storeCohort];
  v20 = [storeCohort copyWithZone:zone];
  [(ASDApp *)v7 setStoreCohort:v20];

  storeFront = [(ASDApp *)self storeFront];
  v22 = [storeFront copyWithZone:zone];
  [(ASDApp *)v7 setStoreFront:v22];

  [(ASDApp *)v7 setDownloaderDSID:[(ASDApp *)self downloaderDSID]];
  [(ASDApp *)v7 setFamilyID:[(ASDApp *)self familyID]];
  [(ASDApp *)v7 setPurchaserDSID:[(ASDApp *)self purchaserDSID]];
  remoteProgress = [(ASDApp *)self remoteProgress];
  v24 = [remoteProgress copyWithZone:zone];
  [(ASDApp *)v7 setRemoteProgress:v24];

  updateBuyParams = [(ASDApp *)self updateBuyParams];
  v26 = [updateBuyParams copyWithZone:zone];
  [(ASDApp *)v7 setUpdateBuyParams:v26];

  [(ASDApp *)v7 setWatchApplicationMode:[(ASDApp *)self watchApplicationMode]];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  artistName = [(ASDApp *)self artistName];
  [coderCopy encodeObject:artistName forKey:@"A"];

  bundleID = [(ASDApp *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"B"];

  [coderCopy encodeInteger:-[ASDApp extensions](self forKey:{"extensions"), @"G"}];
  [coderCopy encodeInteger:-[ASDApp status](self forKey:{"status"), @"L"}];
  installError = [(ASDApp *)self installError];
  v7 = installError;
  if (installError)
  {
    v8 = ASDErrorWithSafeUserInfo(installError);
    [coderCopy encodeObject:v8 forKey:@"S"];
  }

  bundlePath = [(ASDApp *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"C"];

  bundleShortVersion = [(ASDApp *)self bundleShortVersion];
  [coderCopy encodeObject:bundleShortVersion forKey:@"D"];

  bundleVersion = [(ASDApp *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"E"];

  executablePath = [(ASDApp *)self executablePath];
  [coderCopy encodeObject:executablePath forKey:@"T"];

  localizedName = [(ASDApp *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"I"];

  [coderCopy encodeInt64:-[ASDApp storeExternalVersionID](self forKey:{"storeExternalVersionID"), @"O"}];
  [coderCopy encodeInt64:-[ASDApp storeItemID](self forKey:{"storeItemID"), @"P"}];
  storeCohort = [(ASDApp *)self storeCohort];
  [coderCopy encodeObject:storeCohort forKey:@"M"];

  storeFront = [(ASDApp *)self storeFront];
  [coderCopy encodeObject:storeFront forKey:@"N"];

  [coderCopy encodeInt64:-[ASDApp downloaderDSID](self forKey:{"downloaderDSID"), @"F"}];
  [coderCopy encodeInt64:-[ASDApp familyID](self forKey:{"familyID"), @"H"}];
  [coderCopy encodeInt64:-[ASDApp purchaserDSID](self forKey:{"purchaserDSID"), @"J"}];
  remoteProgress = [(ASDApp *)self remoteProgress];
  [coderCopy encodeObject:remoteProgress forKey:@"K"];

  updateBuyParams = [(ASDApp *)self updateBuyParams];
  [coderCopy encodeObject:updateBuyParams forKey:@"Q"];

  [coderCopy encodeObject:self->_updateInstallDate forKey:@"W"];
  [coderCopy encodeObject:self->_rawUpdateData forKey:@"V"];
  [coderCopy encodeInteger:-[ASDApp watchApplicationMode](self forKey:{"watchApplicationMode"), @"R"}];
}

- (ASDApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
  v6 = [(ASDApp *)self initWithBundleID:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    artistName = v6->_artistName;
    v6->_artistName = v7;

    v6->_extensions = [coderCopy decodeIntegerForKey:@"G"];
    v6->_status = [coderCopy decodeIntegerForKey:@"L"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    installError = v6->_installError;
    v6->_installError = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    bundlePath = v6->_bundlePath;
    v6->_bundlePath = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    bundleShortVersion = v6->_bundleShortVersion;
    v6->_bundleShortVersion = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    bundleVersion = v6->_bundleVersion;
    v6->_bundleVersion = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    executablePath = v6->_executablePath;
    v6->_executablePath = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    localizedName = v6->_localizedName;
    v6->_localizedName = v19;

    v6->_storeExternalVersionID = [coderCopy decodeInt64ForKey:@"O"];
    v6->_storeItemID = [coderCopy decodeInt64ForKey:@"P"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"M"];
    storeCohort = v6->_storeCohort;
    v6->_storeCohort = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    storeFront = v6->_storeFront;
    v6->_storeFront = v23;

    v6->_downloaderDSID = [coderCopy decodeInt64ForKey:@"F"];
    v6->_familyID = [coderCopy decodeInt64ForKey:@"H"];
    v6->_purchaserDSID = [coderCopy decodeInt64ForKey:@"J"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    remoteProgress = v6->_remoteProgress;
    v6->_remoteProgress = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Q"];
    updateBuyParams = v6->_updateBuyParams;
    v6->_updateBuyParams = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"W"];
    updateInstallDate = v6->_updateInstallDate;
    v6->_updateInstallDate = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"V"];
    rawUpdateData = v6->_rawUpdateData;
    v6->_rawUpdateData = v31;

    v6->_watchApplicationMode = [coderCopy decodeIntegerForKey:@"R"];
  }

  return v6;
}

@end