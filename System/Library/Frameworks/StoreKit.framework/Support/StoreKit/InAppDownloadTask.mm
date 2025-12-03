@interface InAppDownloadTask
- (InAppDownloadTask)initWithDownloadID:(id)d info:(id)info bundleID:(id)iD containerID:(id)containerID;
- (id)_bomInstallFromPath:(id)path withError:(id *)error;
- (void)_bomInstall;
- (void)_downloadedBytes:(int64_t)bytes expectedBytes:(int64_t)expectedBytes;
- (void)_finalizeTaskWithError:(id)error;
- (void)_sendDownloadStatus;
- (void)_updateDownloadStatus:(id)status;
- (void)cancel;
- (void)main;
- (void)pause;
@end

@implementation InAppDownloadTask

- (InAppDownloadTask)initWithDownloadID:(id)d info:(id)info bundleID:(id)iD containerID:(id)containerID
{
  dCopy = d;
  infoCopy = info;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = InAppDownloadTask;
  v13 = [(Task *)&v19 init];
  if (v13)
  {
    if ([infoCopy count])
    {
      v14 = +[NSUUID lib_shortLogKey];
      v15 = *(v13 + 138);
      *(v13 + 138) = v14;

      objc_storeStrong((v13 + 162), iD);
      objc_storeStrong((v13 + 50), info);
      objc_storeStrong((v13 + 130), d);
      v16 = [[InAppDownloadStatus alloc] initWithDownloadID:*(v13 + 130)];
      v17 = *(v13 + 154);
      *(v13 + 154) = v16;
    }

    else
    {
      v17 = v13;
      v13 = 0;
    }
  }

  return v13;
}

- (void)main
{
  logKey = [(InAppDownloadTask *)self logKey];
  v4 = [*(&self->_assetPromise + 2) tcr_urlForKey:@"URL"];
  if (!v4)
  {
    v13 = ASDErrorWithDescription();
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1ACC();
    }

    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1AE0();
    }

    goto LABEL_19;
  }

  v5 = [*(&self->_assetPromise + 2) tcr_numberForKey:@"file-size"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = NSOpenStepRootDirectory();
  v8 = [DiskSpaceManager ensureAvailableDiskSpace:unsignedLongLongValue atPath:v7];

  if ((v8 & 1) == 0)
  {
    v13 = ASDErrorWithDescription();
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1ACC();
    }

    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1AE0();
    }

LABEL_19:
    [(InAppDownloadTask *)self _finalizeTaskWithError:v13];
    goto LABEL_37;
  }

  v9 = [[InAppDownloadTimeEstimator alloc] initWithMaxValue:unsignedLongLongValue];
  v10 = *(&self->_pendingDownloadStatus + 2);
  *(&self->_pendingDownloadStatus + 2) = v9;

  v11 = [*(&self->_assetPromise + 2) tcr_arrayForKey:@"sinfs"];
  firstObject = [v11 firstObject];

  v47 = [firstObject tcr_dataForKey:@"dpInfo"];
  v55 = 0;
  v12 = [[DecryptDataConsumer alloc] initWithDPInfo:v47 error:&v55];
  v13 = v55;
  if (v12)
  {
    v49 = [*(&self->_assetPromise + 2) tcr_dictionaryForKey:@"chunks"];
    v45 = [v49 tcr_arrayForKey:@"hashes"];
    v44 = [v49 tcr_arrayForKey:@"clearHashes"];
    v14 = [v49 tcr_numberForKey:@"chunkSize"];
    unsignedIntValue = [v14 unsignedIntValue];

    if (v45 && v44)
    {
      v46 = objc_alloc_init(ChunkedDigest);
      [(ChunkedDigest *)v46 setChunkDigests:v45];
      [(ChunkedDigest *)v46 setChunkSize:unsignedIntValue];
      [(ChunkedDigest *)v46 setChunkType:0];
      [(DecryptDataConsumer *)v12 setDigest:v46];
      lastPathComponent = [v4 lastPathComponent];
      v41 = +[NSFileManager defaultManager];
      sk_downloadURL = [v41 sk_downloadURL];
      downloadID = [(InAppDownloadTask *)self downloadID];
      stringValue = [downloadID stringValue];
      v19 = [sk_downloadURL URLByAppendingPathComponent:stringValue isDirectory:1];

      path = [v19 path];
      v21 = [v41 lib_ensureDirectoryExistsAtPath:path];

      v39 = [v19 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

      path2 = [v39 path];
      v23 = *(&self->_downloadInfo + 2);
      *(&self->_downloadInfo + 2) = path2;

      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      v24 = off_1003CBBB8;
      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(&self->_downloadInfo + 2);
        *buf = 138543618;
        v57 = logKey;
        v58 = 2114;
        v59 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Downloading payload to: %{public}@", buf, 0x16u);
      }

      v43 = objc_alloc_init(ChunkedDigest);
      [(ChunkedDigest *)v43 setChunkDigests:v44];
      [(ChunkedDigest *)v43 setChunkSize:unsignedIntValue];
      [(ChunkedDigest *)v43 setChunkType:0];
      v42 = [[FileWriteStreamAdapter alloc] initWithDownloadPath:*(&self->_downloadInfo + 2)];
      [(FileWriteStreamAdapter *)v42 setLogKey:logKey];
      [(FileWriteStreamAdapter *)v42 setDigest:v43];
      [(DecryptDataConsumer *)v12 setStreamAdapter:v42];
      v26 = objc_alloc_init(AssetRequestProperties);
      [(AssetRequestProperties *)v26 setDataConsumer:v12];
      [(AssetRequestProperties *)v26 setLogKey:logKey];
      bundleID = [(InAppDownloadTask *)self bundleID];
      [(AssetRequestProperties *)v26 setNetworkBudgetingIdentifier:bundleID];

      [(AssetRequestProperties *)v26 setTaskPriority:&off_1003A1570];
      [(AssetRequestProperties *)v26 setQosClass:25];
      [(AssetRequestProperties *)v26 setRequestReason:5];
      v28 = [[AssetRequest alloc] initWithURL:v4 properties:v26];
      [(AssetRequest *)v28 setCachePolicy:1];
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      v29 = off_1003CBBB8;
      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v57 = logKey;
        v58 = 2114;
        v59 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Downloading asset for request: %{public}@", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v31 = +[AssetSession defaultSession];
      v32 = [v31 assetPromiseWithRequest:v28];
      v33 = *(&selfCopy->super._finished + 1);
      *(&selfCopy->super._finished + 1) = v32;

      objc_sync_exit(selfCopy);
      v34 = [NSTimer timerWithTimeInterval:selfCopy target:"_sendDownloadStatus" selector:0 userInfo:1 repeats:1.0];
      v35 = *(&selfCopy->_installPath + 2);
      *(&selfCopy->_installPath + 2) = v34;

      v36 = +[NSRunLoop mainRunLoop];
      [v36 addTimer:*(&selfCopy->_installPath + 2) forMode:NSRunLoopCommonModes];

      objc_initWeak(buf, selfCopy);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100079EC4;
      v53[3] = &unk_100383190;
      objc_copyWeak(&v54, buf);
      [*(&selfCopy->super._finished + 1) setProgress:v53];
      v37 = *(&selfCopy->super._finished + 1);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100079F1C;
      v50[3] = &unk_1003831B8;
      objc_copyWeak(&v52, buf);
      v51 = logKey;
      [v37 addFinishBlock:v50];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&v54);
      objc_destroyWeak(buf);

      v38 = v13;
    }

    else
    {
      v46 = [NSString stringWithFormat:@"No hashes in download info"];
      v38 = ASDErrorWithDescription();

      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1AE0();
      }

      [(InAppDownloadTask *)self _finalizeTaskWithError:v38];
    }

    v13 = v38;
  }

  else
  {
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1B4C();
    }

    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1B74();
    }

    [(InAppDownloadTask *)self _finalizeTaskWithError:v13];
  }

LABEL_37:
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  status = [(InAppDownloadTask *)selfCopy status];
  if ([status state] == 1)
  {
  }

  else
  {
    status2 = [(InAppDownloadTask *)selfCopy status];
    state = [status2 state];

    if (state != 2)
    {
      goto LABEL_12;
    }
  }

  if (*(&selfCopy->super._finished + 1))
  {
    if ((BYTE2(selfCopy->_timeEstimator) & 1) == 0)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1ACC();
      }

      v6 = off_1003CBBB8;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        logKey = [(InAppDownloadTask *)selfCopy logKey];
        *buf = 138543362;
        v10 = logKey;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling download", buf, 0xCu);
      }
    }

    v8.receiver = selfCopy;
    v8.super_class = InAppDownloadTask;
    [(InAppDownloadTask *)&v8 cancel];
    [*(&selfCopy->super._finished + 1) cancel];
  }

LABEL_12:
  objc_sync_exit(selfCopy);
}

- (void)pause
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  status = [(InAppDownloadTask *)selfCopy status];
  state = [status state];

  if (state == 1)
  {
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1ACC();
    }

    v5 = off_1003CBBB8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [(InAppDownloadTask *)selfCopy logKey];
      v7 = 138543362;
      v8 = logKey;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pausing download", &v7, 0xCu);
    }

    BYTE2(selfCopy->_timeEstimator) = 1;
  }

  objc_sync_exit(selfCopy);

  [(InAppDownloadTask *)selfCopy cancel];
}

- (void)_downloadedBytes:(int64_t)bytes expectedBytes:(int64_t)expectedBytes
{
  expectedBytesCopy = expectedBytes;
  if (expectedBytes < 1.0)
  {
    expectedBytesCopy = 1.0;
  }

  v6 = bytes / expectedBytesCopy * 0.8;
  [*(&self->_pendingDownloadStatus + 2) setCurrentValue:bytes];
  v7 = [InAppDownloadStatus alloc];
  downloadID = [(InAppDownloadTask *)self downloadID];
  v9 = [(InAppDownloadStatus *)v7 initWithDownloadID:downloadID];

  [(InAppDownloadStatus *)v9 setState:1];
  [(InAppDownloadStatus *)v9 setProgress:v6];
  [*(&self->_pendingDownloadStatus + 2) estimatedTimeRemaining];
  [(InAppDownloadStatus *)v9 setTimeRemaining:?];
  [(InAppDownloadTask *)self _updateDownloadStatus:v9];
}

- (void)_finalizeTaskWithError:(id)error
{
  errorCopy = error;
  if (qword_1003D4B70 != -1)
  {
    sub_1002D1ACC();
  }

  v5 = off_1003CBBB8;
  if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logKey = [(InAppDownloadTask *)self logKey];
    *buf = 138543362;
    v18 = logKey;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finalizing download task", buf, 0xCu);
  }

  [*(&self->_installPath + 2) invalidate];
  if ((BYTE2(self->_timeEstimator) & 1) == 0)
  {
    if (*(&self->_downloadInfo + 2))
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 fileExistsAtPath:*(&self->_downloadInfo + 2)];

      if (v9)
      {
        v10 = +[NSFileManager defaultManager];
        v11 = *(&self->_downloadInfo + 2);
        v16 = 0;
        [v10 removeItemAtPath:v11 error:&v16];
        v12 = v16;

        if (v12)
        {
          if (qword_1003D4B70 != -1)
          {
            sub_1002D1B4C();
          }

          if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
          {
            sub_1002D1D58();
          }
        }
      }
    }
  }

  if (BYTE2(self->_timeEstimator) == 1)
  {
    status = [(InAppDownloadTask *)self status];
    [(InAppDownloadStatus *)status setState:2];
  }

  else
  {
    v14 = [InAppDownloadStatus alloc];
    downloadID = [(InAppDownloadTask *)self downloadID];
    status = [(InAppDownloadStatus *)v14 initWithDownloadID:downloadID];

    [(InAppDownloadStatus *)status setProgress:1.0];
    [(InAppDownloadStatus *)status setTimeRemaining:0.0];
    if (errorCopy)
    {
      [(InAppDownloadStatus *)status setState:4];
      [(InAppDownloadStatus *)status setError:errorCopy];
    }

    else
    {
      [(InAppDownloadStatus *)status setState:3];
      [(InAppDownloadStatus *)status setInstallPath:*(&self->_downloadPath + 2)];
    }
  }

  [(InAppDownloadTask *)self _updateDownloadStatus:status];
  [(InAppDownloadTask *)self _sendDownloadStatus];
  [(InAppDownloadTask *)self setStatusBlock:0];
  if (errorCopy)
  {
    [(AsyncTask *)self completeWithError:errorCopy];
  }

  else
  {
    [(AsyncTask *)self completeWithSuccess];
  }
}

- (void)_sendDownloadStatus
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (*(&obj->_statusTimer + 2))
  {
    statusBlock = [(InAppDownloadTask *)obj statusBlock];

    v2 = obj;
    if (statusBlock)
    {
      statusBlock2 = [(InAppDownloadTask *)obj statusBlock];
      statusBlock2[2](statusBlock2, *(&obj->_statusTimer + 2));

      v2 = obj;
    }
  }

  v5 = *(&v2->_statusTimer + 2);
  *(&v2->_statusTimer + 2) = 0;

  objc_sync_exit(obj);
}

- (void)_updateDownloadStatus:(id)status
{
  statusCopy = status;
  obj = self;
  objc_sync_enter(obj);
  [(InAppDownloadTask *)obj setStatus:statusCopy];
  v5 = *(&obj->_statusTimer + 2);
  *(&obj->_statusTimer + 2) = statusCopy;

  objc_sync_exit(obj);
}

- (void)_bomInstall
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->_paused + 2) = BOMCopierNew();
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  objc_sync_exit(selfCopy);

  if (!*(&selfCopy->_paused + 2))
  {
    goto LABEL_23;
  }

  fileSystemRepresentation = [*(&selfCopy->_downloadInfo + 2) fileSystemRepresentation];
  stringByDeletingPathExtension = [*(&selfCopy->_downloadInfo + 2) stringByDeletingPathExtension];
  fileSystemRepresentation2 = [stringByDeletingPathExtension fileSystemRepresentation];
  BOMCopierCountFilesInArchive();
  v6 = *(&selfCopy->_copier + 2);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  *(&selfCopy->_copier + 2) = v6;
  if (qword_1003D4B70 != -1)
  {
    sub_1002D1ACC();
  }

  v7 = off_1003CBBB8;
  if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    logKey = [(InAppDownloadTask *)selfCopy logKey];
    v10 = *(&selfCopy->_copier + 2);
    *buf = 138544130;
    v22 = logKey;
    v23 = 2048;
    v24 = v10;
    v25 = 2082;
    v26 = fileSystemRepresentation;
    v27 = 2082;
    v28 = fileSystemRepresentation2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Extracting %lld bytes in archive %{public}s to %{public}s", buf, 0x2Au);
  }

  v19 = @"extractPKZip";
  v20 = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = BOMCopierCopyWithOptions();
  if (v12)
  {
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1B4C();
    }

    v13 = off_1003CBBB8;
    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1DF4(v13, selfCopy, v12);
    }

    v14 = ASDErrorWithTitleAndMessage();
  }

  else
  {
    v18 = 0;
    v15 = [(InAppDownloadTask *)selfCopy _bomInstallFromPath:stringByDeletingPathExtension withError:&v18];
    v14 = v18;
    if (v14)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      v16 = off_1003CBBB8;
      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1EB8(v16, selfCopy, v14);
      }
    }

    else
    {
      objc_storeStrong((&selfCopy->_downloadPath + 2), v15);
    }
  }

  v17 = selfCopy;
  objc_sync_enter(v17);
  BOMCopierFree();
  *(&selfCopy->_paused + 2) = 0;
  objc_sync_exit(v17);

  if (v14)
  {
    [(InAppDownloadTask *)v17 _finalizeTaskWithError:v14];
  }

  else
  {
LABEL_23:
    [(InAppDownloadTask *)selfCopy _finalizeTaskWithError:0];
  }
}

- (id)_bomInstallFromPath:(id)path withError:(id *)error
{
  pathCopy = path;
  v7 = [LSApplicationRecord alloc];
  bundleID = [(InAppDownloadTask *)self bundleID];
  v41 = 0;
  v9 = [v7 initWithBundleIdentifier:bundleID allowPlaceholder:0 error:&v41];
  v10 = v41;

  if (v9)
  {
    errorCopy = error;
    v11 = [NSMutableArray alloc];
    dataContainerURL = [v9 dataContainerURL];
    path = [dataContainerURL path];
    v14 = [v11 initWithObjects:{path, 0}];

    [v14 addObjectsFromArray:&off_1003A15A0];
    v35 = v14;
    v15 = [NSString pathWithComponents:v14];
    bundleID2 = [(InAppDownloadTask *)self bundleID];
    v17 = [NSString stringWithFormat:@"%@-%@", bundleID2, *(&self->_totalInstalledSize + 2)];
    v18 = [v17 hash];

    v19 = [NSNumber numberWithUnsignedInteger:v18];
    stringValue = [v19 stringValue];

    v34 = stringValue;
    v21 = [v15 stringByAppendingPathComponent:stringValue];
    v22 = +[NSFileManager defaultManager];
    v40 = 0;
    [v22 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v40];
    v23 = v40;
    if (v23)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1F70();
      }
    }

    if ([v22 fileExistsAtPath:v21])
    {
      v39 = 0;
      [v22 removeItemAtPath:pathCopy error:&v39];
      v24 = v39;
      if (v24)
      {
        if (qword_1003D4B70 != -1)
        {
          sub_1002D1B4C();
        }

        if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
        {
          sub_1002D200C();
        }
      }
    }

    if (qword_1003D4B70 != -1)
    {
      sub_1002D1B4C();
    }

    v25 = off_1003CBBB8;
    if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      logKey = [(InAppDownloadTask *)self logKey];
      *buf = 138543874;
      v43 = logKey;
      v44 = 2114;
      v45 = pathCopy;
      v46 = 2114;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Moving downloaded asset from %{public}@ to %{public}@", buf, 0x20u);
    }

    v38 = v10;
    [v22 moveItemAtPath:pathCopy toPath:v21 error:&v38];
    v28 = v38;

    if (v28)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D20A8();
      }
    }

    error = errorCopy;
  }

  else
  {
    v21 = 0;
    v28 = v10;
  }

  v29 = +[NSFileManager defaultManager];
  if ([v29 fileExistsAtPath:pathCopy])
  {
    v37 = 0;
    [v29 removeItemAtPath:pathCopy error:&v37];
    v30 = v37;
    if (v30)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D200C();
      }
    }
  }

  if (error)
  {
    v31 = v28;
    *error = v28;
  }

  v32 = v21;

  return v21;
}

@end