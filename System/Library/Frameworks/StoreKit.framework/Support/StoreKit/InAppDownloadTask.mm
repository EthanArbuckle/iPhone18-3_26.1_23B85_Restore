@interface InAppDownloadTask
- (InAppDownloadTask)initWithDownloadID:(id)a3 info:(id)a4 bundleID:(id)a5 containerID:(id)a6;
- (id)_bomInstallFromPath:(id)a3 withError:(id *)a4;
- (void)_bomInstall;
- (void)_downloadedBytes:(int64_t)a3 expectedBytes:(int64_t)a4;
- (void)_finalizeTaskWithError:(id)a3;
- (void)_sendDownloadStatus;
- (void)_updateDownloadStatus:(id)a3;
- (void)cancel;
- (void)main;
- (void)pause;
@end

@implementation InAppDownloadTask

- (InAppDownloadTask)initWithDownloadID:(id)a3 info:(id)a4 bundleID:(id)a5 containerID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = InAppDownloadTask;
  v13 = [(Task *)&v19 init];
  if (v13)
  {
    if ([v11 count])
    {
      v14 = +[NSUUID lib_shortLogKey];
      v15 = *(v13 + 138);
      *(v13 + 138) = v14;

      objc_storeStrong((v13 + 162), a5);
      objc_storeStrong((v13 + 50), a4);
      objc_storeStrong((v13 + 130), a3);
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
  v3 = [(InAppDownloadTask *)self logKey];
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
  v6 = [v5 unsignedLongLongValue];

  v7 = NSOpenStepRootDirectory();
  v8 = [DiskSpaceManager ensureAvailableDiskSpace:v6 atPath:v7];

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

  v9 = [[InAppDownloadTimeEstimator alloc] initWithMaxValue:v6];
  v10 = *(&self->_pendingDownloadStatus + 2);
  *(&self->_pendingDownloadStatus + 2) = v9;

  v11 = [*(&self->_assetPromise + 2) tcr_arrayForKey:@"sinfs"];
  v48 = [v11 firstObject];

  v47 = [v48 tcr_dataForKey:@"dpInfo"];
  v55 = 0;
  v12 = [[DecryptDataConsumer alloc] initWithDPInfo:v47 error:&v55];
  v13 = v55;
  if (v12)
  {
    v49 = [*(&self->_assetPromise + 2) tcr_dictionaryForKey:@"chunks"];
    v45 = [v49 tcr_arrayForKey:@"hashes"];
    v44 = [v49 tcr_arrayForKey:@"clearHashes"];
    v14 = [v49 tcr_numberForKey:@"chunkSize"];
    v15 = [v14 unsignedIntValue];

    if (v45 && v44)
    {
      v46 = objc_alloc_init(ChunkedDigest);
      [(ChunkedDigest *)v46 setChunkDigests:v45];
      [(ChunkedDigest *)v46 setChunkSize:v15];
      [(ChunkedDigest *)v46 setChunkType:0];
      [(DecryptDataConsumer *)v12 setDigest:v46];
      v40 = [v4 lastPathComponent];
      v41 = +[NSFileManager defaultManager];
      v16 = [v41 sk_downloadURL];
      v17 = [(InAppDownloadTask *)self downloadID];
      v18 = [v17 stringValue];
      v19 = [v16 URLByAppendingPathComponent:v18 isDirectory:1];

      v20 = [v19 path];
      v21 = [v41 lib_ensureDirectoryExistsAtPath:v20];

      v39 = [v19 URLByAppendingPathComponent:v40 isDirectory:0];

      v22 = [v39 path];
      v23 = *(&self->_downloadInfo + 2);
      *(&self->_downloadInfo + 2) = v22;

      if (qword_1003D4B70 != -1)
      {
        sub_1002D1B4C();
      }

      v24 = off_1003CBBB8;
      if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(&self->_downloadInfo + 2);
        *buf = 138543618;
        v57 = v3;
        v58 = 2114;
        v59 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Downloading payload to: %{public}@", buf, 0x16u);
      }

      v43 = objc_alloc_init(ChunkedDigest);
      [(ChunkedDigest *)v43 setChunkDigests:v44];
      [(ChunkedDigest *)v43 setChunkSize:v15];
      [(ChunkedDigest *)v43 setChunkType:0];
      v42 = [[FileWriteStreamAdapter alloc] initWithDownloadPath:*(&self->_downloadInfo + 2)];
      [(FileWriteStreamAdapter *)v42 setLogKey:v3];
      [(FileWriteStreamAdapter *)v42 setDigest:v43];
      [(DecryptDataConsumer *)v12 setStreamAdapter:v42];
      v26 = objc_alloc_init(AssetRequestProperties);
      [(AssetRequestProperties *)v26 setDataConsumer:v12];
      [(AssetRequestProperties *)v26 setLogKey:v3];
      v27 = [(InAppDownloadTask *)self bundleID];
      [(AssetRequestProperties *)v26 setNetworkBudgetingIdentifier:v27];

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
        v57 = v3;
        v58 = 2114;
        v59 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Downloading asset for request: %{public}@", buf, 0x16u);
      }

      v30 = self;
      objc_sync_enter(v30);
      v31 = +[AssetSession defaultSession];
      v32 = [v31 assetPromiseWithRequest:v28];
      v33 = *(&v30->super._finished + 1);
      *(&v30->super._finished + 1) = v32;

      objc_sync_exit(v30);
      v34 = [NSTimer timerWithTimeInterval:v30 target:"_sendDownloadStatus" selector:0 userInfo:1 repeats:1.0];
      v35 = *(&v30->_installPath + 2);
      *(&v30->_installPath + 2) = v34;

      v36 = +[NSRunLoop mainRunLoop];
      [v36 addTimer:*(&v30->_installPath + 2) forMode:NSRunLoopCommonModes];

      objc_initWeak(buf, v30);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100079EC4;
      v53[3] = &unk_100383190;
      objc_copyWeak(&v54, buf);
      [*(&v30->super._finished + 1) setProgress:v53];
      v37 = *(&v30->super._finished + 1);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100079F1C;
      v50[3] = &unk_1003831B8;
      objc_copyWeak(&v52, buf);
      v51 = v3;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(InAppDownloadTask *)v2 status];
  if ([v3 state] == 1)
  {
  }

  else
  {
    v4 = [(InAppDownloadTask *)v2 status];
    v5 = [v4 state];

    if (v5 != 2)
    {
      goto LABEL_12;
    }
  }

  if (*(&v2->super._finished + 1))
  {
    if ((BYTE2(v2->_timeEstimator) & 1) == 0)
    {
      if (qword_1003D4B70 != -1)
      {
        sub_1002D1ACC();
      }

      v6 = off_1003CBBB8;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(InAppDownloadTask *)v2 logKey];
        *buf = 138543362;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling download", buf, 0xCu);
      }
    }

    v8.receiver = v2;
    v8.super_class = InAppDownloadTask;
    [(InAppDownloadTask *)&v8 cancel];
    [*(&v2->super._finished + 1) cancel];
  }

LABEL_12:
  objc_sync_exit(v2);
}

- (void)pause
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(InAppDownloadTask *)v2 status];
  v4 = [v3 state];

  if (v4 == 1)
  {
    if (qword_1003D4B70 != -1)
    {
      sub_1002D1ACC();
    }

    v5 = off_1003CBBB8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(InAppDownloadTask *)v2 logKey];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pausing download", &v7, 0xCu);
    }

    BYTE2(v2->_timeEstimator) = 1;
  }

  objc_sync_exit(v2);

  [(InAppDownloadTask *)v2 cancel];
}

- (void)_downloadedBytes:(int64_t)a3 expectedBytes:(int64_t)a4
{
  v5 = a4;
  if (a4 < 1.0)
  {
    v5 = 1.0;
  }

  v6 = a3 / v5 * 0.8;
  [*(&self->_pendingDownloadStatus + 2) setCurrentValue:a3];
  v7 = [InAppDownloadStatus alloc];
  v8 = [(InAppDownloadTask *)self downloadID];
  v9 = [(InAppDownloadStatus *)v7 initWithDownloadID:v8];

  [(InAppDownloadStatus *)v9 setState:1];
  [(InAppDownloadStatus *)v9 setProgress:v6];
  [*(&self->_pendingDownloadStatus + 2) estimatedTimeRemaining];
  [(InAppDownloadStatus *)v9 setTimeRemaining:?];
  [(InAppDownloadTask *)self _updateDownloadStatus:v9];
}

- (void)_finalizeTaskWithError:(id)a3
{
  v4 = a3;
  if (qword_1003D4B70 != -1)
  {
    sub_1002D1ACC();
  }

  v5 = off_1003CBBB8;
  if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(InAppDownloadTask *)self logKey];
    *buf = 138543362;
    v18 = v7;
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
    v13 = [(InAppDownloadTask *)self status];
    [(InAppDownloadStatus *)v13 setState:2];
  }

  else
  {
    v14 = [InAppDownloadStatus alloc];
    v15 = [(InAppDownloadTask *)self downloadID];
    v13 = [(InAppDownloadStatus *)v14 initWithDownloadID:v15];

    [(InAppDownloadStatus *)v13 setProgress:1.0];
    [(InAppDownloadStatus *)v13 setTimeRemaining:0.0];
    if (v4)
    {
      [(InAppDownloadStatus *)v13 setState:4];
      [(InAppDownloadStatus *)v13 setError:v4];
    }

    else
    {
      [(InAppDownloadStatus *)v13 setState:3];
      [(InAppDownloadStatus *)v13 setInstallPath:*(&self->_downloadPath + 2)];
    }
  }

  [(InAppDownloadTask *)self _updateDownloadStatus:v13];
  [(InAppDownloadTask *)self _sendDownloadStatus];
  [(InAppDownloadTask *)self setStatusBlock:0];
  if (v4)
  {
    [(AsyncTask *)self completeWithError:v4];
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
    v3 = [(InAppDownloadTask *)obj statusBlock];

    v2 = obj;
    if (v3)
    {
      v4 = [(InAppDownloadTask *)obj statusBlock];
      v4[2](v4, *(&obj->_statusTimer + 2));

      v2 = obj;
    }
  }

  v5 = *(&v2->_statusTimer + 2);
  *(&v2->_statusTimer + 2) = 0;

  objc_sync_exit(obj);
}

- (void)_updateDownloadStatus:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  [(InAppDownloadTask *)obj setStatus:v4];
  v5 = *(&obj->_statusTimer + 2);
  *(&obj->_statusTimer + 2) = v4;

  objc_sync_exit(obj);
}

- (void)_bomInstall
{
  v2 = self;
  objc_sync_enter(v2);
  *(&v2->_paused + 2) = BOMCopierNew();
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  objc_sync_exit(v2);

  if (!*(&v2->_paused + 2))
  {
    goto LABEL_23;
  }

  v3 = [*(&v2->_downloadInfo + 2) fileSystemRepresentation];
  v4 = [*(&v2->_downloadInfo + 2) stringByDeletingPathExtension];
  v5 = [v4 fileSystemRepresentation];
  BOMCopierCountFilesInArchive();
  v6 = *(&v2->_copier + 2);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  *(&v2->_copier + 2) = v6;
  if (qword_1003D4B70 != -1)
  {
    sub_1002D1ACC();
  }

  v7 = off_1003CBBB8;
  if (os_log_type_enabled(off_1003CBBB8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(InAppDownloadTask *)v2 logKey];
    v10 = *(&v2->_copier + 2);
    *buf = 138544130;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2082;
    v26 = v3;
    v27 = 2082;
    v28 = v5;
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
      sub_1002D1DF4(v13, v2, v12);
    }

    v14 = ASDErrorWithTitleAndMessage();
  }

  else
  {
    v18 = 0;
    v15 = [(InAppDownloadTask *)v2 _bomInstallFromPath:v4 withError:&v18];
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
        sub_1002D1EB8(v16, v2, v14);
      }
    }

    else
    {
      objc_storeStrong((&v2->_downloadPath + 2), v15);
    }
  }

  v17 = v2;
  objc_sync_enter(v17);
  BOMCopierFree();
  *(&v2->_paused + 2) = 0;
  objc_sync_exit(v17);

  if (v14)
  {
    [(InAppDownloadTask *)v17 _finalizeTaskWithError:v14];
  }

  else
  {
LABEL_23:
    [(InAppDownloadTask *)v2 _finalizeTaskWithError:0];
  }
}

- (id)_bomInstallFromPath:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [LSApplicationRecord alloc];
  v8 = [(InAppDownloadTask *)self bundleID];
  v41 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v41];
  v10 = v41;

  if (v9)
  {
    v36 = a4;
    v11 = [NSMutableArray alloc];
    v12 = [v9 dataContainerURL];
    v13 = [v12 path];
    v14 = [v11 initWithObjects:{v13, 0}];

    [v14 addObjectsFromArray:&off_1003A15A0];
    v35 = v14;
    v15 = [NSString pathWithComponents:v14];
    v16 = [(InAppDownloadTask *)self bundleID];
    v17 = [NSString stringWithFormat:@"%@-%@", v16, *(&self->_totalInstalledSize + 2)];
    v18 = [v17 hash];

    v19 = [NSNumber numberWithUnsignedInteger:v18];
    v20 = [v19 stringValue];

    v34 = v20;
    v21 = [v15 stringByAppendingPathComponent:v20];
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
      [v22 removeItemAtPath:v6 error:&v39];
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
      v27 = [(InAppDownloadTask *)self logKey];
      *buf = 138543874;
      v43 = v27;
      v44 = 2114;
      v45 = v6;
      v46 = 2114;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Moving downloaded asset from %{public}@ to %{public}@", buf, 0x20u);
    }

    v38 = v10;
    [v22 moveItemAtPath:v6 toPath:v21 error:&v38];
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

    a4 = v36;
  }

  else
  {
    v21 = 0;
    v28 = v10;
  }

  v29 = +[NSFileManager defaultManager];
  if ([v29 fileExistsAtPath:v6])
  {
    v37 = 0;
    [v29 removeItemAtPath:v6 error:&v37];
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

  if (a4)
  {
    v31 = v28;
    *a4 = v28;
  }

  v32 = v21;

  return v21;
}

@end