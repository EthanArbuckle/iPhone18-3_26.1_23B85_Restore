@interface ASDApp
- (ASDApp)initWithBundleID:(id)a3;
- (ASDApp)initWithCoder:(id)a3;
- (ASDProgress)remoteProgress;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToApp:(id)a3;
- (NSData)rawUpdateData;
- (NSDate)updateInstallDate;
- (NSDictionary)updateMetadata;
- (NSProgress)downloadProgress;
- (NSProgress)installProgress;
- (NSProgress)postProcessProgress;
- (NSProgress)progress;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_cachedOpenableStatus;
- (uint64_t)_openableStatus;
- (unint64_t)hash;
- (void)_loadUpdateMetadataIfNecessary;
- (void)encodeWithCoder:(id)a3;
- (void)loadUpdateMetadataIfNecessary;
- (void)setAutoUpdateEnabled:(BOOL)a3;
- (void)setDownloadProgress:(id)a3;
- (void)setHasPostProcessing:(BOOL)a3;
- (void)setInstallProgress:(id)a3;
- (void)setPostProcessProgress:(id)a3;
- (void)setProgress:(id)a3;
- (void)setRawUpdateData:(id)a3;
- (void)setRemoteProgress:(id)a3;
- (void)setUpdateInstallDate:(id)a3;
- (void)setUpdateMetadata:(id)a3;
- (void)updateCodedPropertiesFromApp:(id)a3;
@end

@implementation ASDApp

- (ASDApp)initWithBundleID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDApp;
  v5 = [(ASDApp *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  if (!a1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v2 = [a1 executablePath];
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [(ASDApp *)a1 _openableStatus];
    if (v4 == 255)
    {
      v5 = [ASDAppLibrary openableStatusForExecutableAtPath:v3];
      v8 = a1[2];
      *v11 = MEMORY[0x1E69E9820];
      *&v11[8] = 3221225472;
      *&v11[16] = __29__ASDApp__setOpenableStatus___block_invoke;
      v12 = &unk_1E7CDBEE8;
      v13 = a1;
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
      v5 = v4;
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

- (void)setProgress:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__ASDApp_setProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setDownloadProgress:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ASDApp_setDownloadProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ASDWithLock(propertyLock, v7);
}

- (void)setHasPostProcessing:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASDApp *)self status]& 0xFFFFFFFFFFFFDFFFLL;
  v6 = 0x2000;
  if (!v3)
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

- (void)setInstallProgress:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__ASDApp_setInstallProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setPostProcessProgress:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ASDApp_setPostProcessProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setRemoteProgress:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__ASDApp_setRemoteProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ASDWithLock(propertyLock, v7);
}

- (void)setAutoUpdateEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASDApp *)self status]& 0xFFFFFFFFFFFFBFFFLL;
  v6 = 0x4000;
  if (!v3)
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

- (void)setUpdateInstallDate:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ASDApp_setUpdateInstallDate___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  if (a1 && !*(a1 + 80))
  {
    if ([*(a1 + 88) length])
    {
      v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:*(a1 + 88) options:0 error:0];
      v3 = *(a1 + 80);
      *(a1 + 80) = v2;

      MEMORY[0x1EEE66BB8]();
    }

    else if ((*(a1 + 8) & 1) == 0 && *(a1 + 104))
    {
      *(a1 + 8) = 1;
      v4 = +[ASDServiceBroker defaultBroker];
      v5 = [v4 getUpdatesServiceWithError:0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke;
      v9[3] = &unk_1E7CDB980;
      v9[4] = a1;
      v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

      v7 = *(a1 + 104);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__ASDApp__loadUpdateMetadataIfNecessary__block_invoke_4;
      v8[3] = &unk_1E7CDCC20;
      v8[4] = a1;
      [v6 getUpdateMetadataForBundleID:v7 withReplyHandler:v8];
    }
  }
}

- (void)setUpdateMetadata:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__ASDApp_setUpdateMetadata___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setRawUpdateData:(id)a3
{
  v4 = a3;
  propertyLock = self->_propertyLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASDApp_setRawUpdateData___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  ASDWithLock(propertyLock, v7);
}

- (uint64_t)_openableStatus
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__ASDApp__openableStatus__block_invoke;
  v4[3] = &unk_1E7CDB840;
  v4[4] = a1;
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

- (void)updateCodedPropertiesFromApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    propertyLock = self->_propertyLock;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__ASDApp_updateCodedPropertiesFromApp___block_invoke;
    v7[3] = &unk_1E7CDB868;
    v7[4] = self;
    v8 = v4;
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
  v5 = [(ASDApp *)self bundleID];
  v6 = [v4 stringWithFormat:@"bundleID = %@", v5];
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

    v9 = [(ASDApp *)self storeCohort];

    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(ASDApp *)self storeCohort];
      v12 = [v10 stringWithFormat:@"storeCohort = %@", v11];
      [v3 addObject:v12];
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"storeExternalVersionID = %lld", -[ASDApp storeExternalVersionID](self, "storeExternalVersionID")];
    [v3 addObject:v13];

    if (![(ASDApp *)self isBetaApp]&& ![(ASDApp *)self isSystemApp])
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [(ASDApp *)self isUpdateAvailable];
      v16 = @"NO";
      if (v15)
      {
        v16 = @"YES";
      }

      v17 = [v14 stringWithFormat:@"update available = %@", v16];
      [v3 addObject:v17];
    }
  }

  v18 = [(ASDApp *)self progress];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    [v18 fractionCompleted];
    v22 = [v20 stringWithFormat:@"fractionCompleted = %.2f", v21];
    [v3 addObject:v22];
  }

  else
  {
    v23 = [(ASDApp *)self remoteProgress];
    v22 = v23;
    if (v23)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"completedUnitCount = %lld", objc_msgSend(v23, "completedUnitCount")];
      [v3 addObject:v24];
    }
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = [(ASDApp *)self bundlePath];
  v27 = [v25 stringWithFormat:@"path = %@", v26];
  [v3 addObject:v27];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"installed = %d", -[ASDApp isInstalled](self, "isInstalled")];
  [v3 addObject:v28];

  if ([(ASDApp *)self isOcelot])
  {
    [v3 addObject:@"ocelot = 1"];
    v29 = [(ASDApp *)self _openableStatus];
    if (v29 == 255)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"arcadeOpenable = ?", v43];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"arcadeOpenable = %d", v29 & 1];
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

  v32 = [(ASDApp *)self installError];

  if (v32)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = [(ASDApp *)self installError];
    v35 = [v33 stringWithFormat:@"installError = %@", v34];
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
  v2 = [(ASDApp *)self bundleID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASDApp *)self isEqualToApp:v4];
  }

  return v5;
}

- (BOOL)isEqualToApp:(id)a3
{
  v4 = a3;
  v5 = [(ASDApp *)self artistName];
  v6 = [v4 artistName];
  if (v5 == v6 || [v5 isEqual:v6])
  {
    v7 = [(ASDApp *)self bundleID];
    v8 = [v4 bundleID];
    if ((v7 == v8 || [v7 isEqual:v8]) && (v9 = -[ASDApp extensions](self, "extensions"), v9 == objc_msgSend(v4, "extensions")) && (v10 = -[ASDApp status](self, "status"), v10 == objc_msgSend(v4, "status")))
    {
      v11 = [(ASDApp *)self installError];
      v12 = [v4 installError];
      if (v11 == v12 || [v11 isEqual:v12])
      {
        v13 = [(ASDApp *)self bundlePath];
        v14 = [v4 bundlePath];
        if (v13 == v14 || [v13 isEqual:v14])
        {
          v49 = v11;
          v50 = v14;
          v15 = [(ASDApp *)self bundleShortVersion];
          v16 = [v4 bundleShortVersion];
          v48 = v15;
          if (v15 == v16 || [v15 isEqual:v16])
          {
            v46 = v12;
            v47 = v16;
            v17 = [(ASDApp *)self bundleVersion];
            v18 = [v4 bundleVersion];
            if (v17 == v18 || [v17 isEqual:v18])
            {
              v19 = v13;
              v45 = v18;
              v20 = [(ASDApp *)self executablePath];
              v21 = [v4 executablePath];
              v44 = v20;
              if (v20 == v21 || [v20 isEqual:v21])
              {
                v42 = v21;
                v43 = v19;
                v22 = [(ASDApp *)self storeExternalVersionID];
                if (v22 == [v4 storeExternalVersionID])
                {
                  v23 = [(ASDApp *)self storeCohort];
                  v24 = [v4 storeCohort];
                  if (v23 == v24 || [v23 isEqual:v24])
                  {
                    v41 = v24;
                    v25 = [(ASDApp *)self storeFront];
                    v26 = [v4 storeFront];
                    v40 = v26;
                    if (v25 == v26 || [v25 isEqual:v26])
                    {
                      v38 = v25;
                      v39 = v23;
                      v27 = [(ASDApp *)self storeItemID];
                      if (v27 == [v4 storeItemID] && (v28 = -[ASDApp downloaderDSID](self, "downloaderDSID"), v28 == objc_msgSend(v4, "downloaderDSID")) && (v29 = -[ASDApp familyID](self, "familyID"), v29 == objc_msgSend(v4, "familyID")) && (v30 = -[ASDApp purchaserDSID](self, "purchaserDSID"), v30 == objc_msgSend(v4, "purchaserDSID")))
                      {
                        v31 = [(ASDApp *)self updateBuyParams];
                        v32 = [v4 updateBuyParams];
                        if (v31 == v32 || [v31 isEqual:v32])
                        {
                          v33 = v32;
                          v34 = [(ASDApp *)self watchApplicationMode];
                          v35 = v34 == [v4 watchApplicationMode];
                          v32 = v33;
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
                      v25 = v38;
                      v23 = v39;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v24 = v41;
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

                v21 = v42;
              }

              else
              {
                v36 = 0;
              }

              v18 = v45;
              v13 = v19;
            }

            else
            {
              v36 = 0;
            }

            v12 = v46;
            v16 = v47;
          }

          else
          {
            v36 = 0;
          }

          v14 = v50;
          v11 = v49;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ASDApp allocWithZone:?];
  v6 = [(ASDApp *)self bundleID];
  v7 = [(ASDApp *)v5 initWithBundleID:v6];

  v8 = [(ASDApp *)self artistName];
  v9 = [v8 copyWithZone:a3];
  [(ASDApp *)v7 setArtistName:v9];

  [(ASDApp *)v7 setExtensions:[(ASDApp *)self extensions]];
  [(ASDApp *)v7 setStatus:[(ASDApp *)self status]];
  v10 = [(ASDApp *)self installError];
  [(ASDApp *)v7 setInstallError:v10];

  v11 = [(ASDApp *)self bundlePath];
  v12 = [v11 copyWithZone:a3];
  [(ASDApp *)v7 setBundlePath:v12];

  v13 = [(ASDApp *)self bundleShortVersion];
  v14 = [v13 copyWithZone:a3];
  [(ASDApp *)v7 setBundleShortVersion:v14];

  v15 = [(ASDApp *)self bundleVersion];
  v16 = [v15 copyWithZone:a3];
  [(ASDApp *)v7 setBundleVersion:v16];

  v17 = [(ASDApp *)self executablePath];
  v18 = [v17 copyWithZone:a3];
  [(ASDApp *)v7 setExecutablePath:v18];

  [(ASDApp *)v7 setStoreExternalVersionID:[(ASDApp *)self storeExternalVersionID]];
  [(ASDApp *)v7 setStoreItemID:[(ASDApp *)self storeItemID]];
  v19 = [(ASDApp *)self storeCohort];
  v20 = [v19 copyWithZone:a3];
  [(ASDApp *)v7 setStoreCohort:v20];

  v21 = [(ASDApp *)self storeFront];
  v22 = [v21 copyWithZone:a3];
  [(ASDApp *)v7 setStoreFront:v22];

  [(ASDApp *)v7 setDownloaderDSID:[(ASDApp *)self downloaderDSID]];
  [(ASDApp *)v7 setFamilyID:[(ASDApp *)self familyID]];
  [(ASDApp *)v7 setPurchaserDSID:[(ASDApp *)self purchaserDSID]];
  v23 = [(ASDApp *)self remoteProgress];
  v24 = [v23 copyWithZone:a3];
  [(ASDApp *)v7 setRemoteProgress:v24];

  v25 = [(ASDApp *)self updateBuyParams];
  v26 = [v25 copyWithZone:a3];
  [(ASDApp *)v7 setUpdateBuyParams:v26];

  [(ASDApp *)v7 setWatchApplicationMode:[(ASDApp *)self watchApplicationMode]];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(ASDApp *)self artistName];
  [v18 encodeObject:v4 forKey:@"A"];

  v5 = [(ASDApp *)self bundleID];
  [v18 encodeObject:v5 forKey:@"B"];

  [v18 encodeInteger:-[ASDApp extensions](self forKey:{"extensions"), @"G"}];
  [v18 encodeInteger:-[ASDApp status](self forKey:{"status"), @"L"}];
  v6 = [(ASDApp *)self installError];
  v7 = v6;
  if (v6)
  {
    v8 = ASDErrorWithSafeUserInfo(v6);
    [v18 encodeObject:v8 forKey:@"S"];
  }

  v9 = [(ASDApp *)self bundlePath];
  [v18 encodeObject:v9 forKey:@"C"];

  v10 = [(ASDApp *)self bundleShortVersion];
  [v18 encodeObject:v10 forKey:@"D"];

  v11 = [(ASDApp *)self bundleVersion];
  [v18 encodeObject:v11 forKey:@"E"];

  v12 = [(ASDApp *)self executablePath];
  [v18 encodeObject:v12 forKey:@"T"];

  v13 = [(ASDApp *)self localizedName];
  [v18 encodeObject:v13 forKey:@"I"];

  [v18 encodeInt64:-[ASDApp storeExternalVersionID](self forKey:{"storeExternalVersionID"), @"O"}];
  [v18 encodeInt64:-[ASDApp storeItemID](self forKey:{"storeItemID"), @"P"}];
  v14 = [(ASDApp *)self storeCohort];
  [v18 encodeObject:v14 forKey:@"M"];

  v15 = [(ASDApp *)self storeFront];
  [v18 encodeObject:v15 forKey:@"N"];

  [v18 encodeInt64:-[ASDApp downloaderDSID](self forKey:{"downloaderDSID"), @"F"}];
  [v18 encodeInt64:-[ASDApp familyID](self forKey:{"familyID"), @"H"}];
  [v18 encodeInt64:-[ASDApp purchaserDSID](self forKey:{"purchaserDSID"), @"J"}];
  v16 = [(ASDApp *)self remoteProgress];
  [v18 encodeObject:v16 forKey:@"K"];

  v17 = [(ASDApp *)self updateBuyParams];
  [v18 encodeObject:v17 forKey:@"Q"];

  [v18 encodeObject:self->_updateInstallDate forKey:@"W"];
  [v18 encodeObject:self->_rawUpdateData forKey:@"V"];
  [v18 encodeInteger:-[ASDApp watchApplicationMode](self forKey:{"watchApplicationMode"), @"R"}];
}

- (ASDApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
  v6 = [(ASDApp *)self initWithBundleID:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    artistName = v6->_artistName;
    v6->_artistName = v7;

    v6->_extensions = [v4 decodeIntegerForKey:@"G"];
    v6->_status = [v4 decodeIntegerForKey:@"L"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    installError = v6->_installError;
    v6->_installError = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    bundlePath = v6->_bundlePath;
    v6->_bundlePath = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    bundleShortVersion = v6->_bundleShortVersion;
    v6->_bundleShortVersion = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    bundleVersion = v6->_bundleVersion;
    v6->_bundleVersion = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    executablePath = v6->_executablePath;
    v6->_executablePath = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    localizedName = v6->_localizedName;
    v6->_localizedName = v19;

    v6->_storeExternalVersionID = [v4 decodeInt64ForKey:@"O"];
    v6->_storeItemID = [v4 decodeInt64ForKey:@"P"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"M"];
    storeCohort = v6->_storeCohort;
    v6->_storeCohort = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    storeFront = v6->_storeFront;
    v6->_storeFront = v23;

    v6->_downloaderDSID = [v4 decodeInt64ForKey:@"F"];
    v6->_familyID = [v4 decodeInt64ForKey:@"H"];
    v6->_purchaserDSID = [v4 decodeInt64ForKey:@"J"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    remoteProgress = v6->_remoteProgress;
    v6->_remoteProgress = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Q"];
    updateBuyParams = v6->_updateBuyParams;
    v6->_updateBuyParams = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"W"];
    updateInstallDate = v6->_updateInstallDate;
    v6->_updateInstallDate = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"V"];
    rawUpdateData = v6->_rawUpdateData;
    v6->_rawUpdateData = v31;

    v6->_watchApplicationMode = [v4 decodeIntegerForKey:@"R"];
  }

  return v6;
}

@end