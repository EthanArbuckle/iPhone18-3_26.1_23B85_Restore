int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(CLEEDMediaService);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 activate];

  return 0;
}

id sub_1000012D8()
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v1 = qword_100029E68;

  return v1;
}

void sub_1000045FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 delayTimer];
      v8 = 136446466;
      v9 = "[CLEEDMediaServiceItem setupUploadTaskForSession:withRequest:resumeData:urlSessionError:]_block_invoke";
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Delay Timer[%{public}@] fired, proceeding with UploadTask", &v8, 0x16u);
    }

    [WeakRetained cancelDelayTimer];
    [WeakRetained handleUploadTaskForSession:*(a1 + 40) withRequest:*(a1 + 48) resumeData:*(a1 + 56)];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v7 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000140E0(a1, v7);
    }
  }
}

void sub_1000053A0(uint64_t a1)
{
  [*(a1 + 32) setUploadProgressFraction:*(a1 + 56) / *(a1 + 64)];
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v2 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = v2;
    [v6 uploadProgressFraction];
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10 = *(a1 + 56);
    v12 = 136447746;
    v13 = "[CLEEDMediaServiceItem URLSession:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:]_block_invoke";
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v4;
    v18 = 2050;
    v19 = v11;
    v20 = 2050;
    v21 = v8;
    v22 = 2050;
    v23 = v10;
    v24 = 2050;
    v25 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, Session:%{public}@, task:%{public}@, progressFraction:%{public}0.2lf, bytesSent:%{public}lld, totalBytesSent:%{public}lld, totalBytesExpectedToSend:%{public}lld", &v12, 0x48u);
  }

  v3 = [*(a1 + 32) mediaService];
  [v3 updateProgress];
}

void sub_100005654(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v19 = 136446979;
      v20 = "[CLEEDMediaServiceItem URLSession:task:didCompleteWithError:]_block_invoke";
      v21 = 2113;
      v22 = v4;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Session:%{private}@, task:%{public}@, error:%{public}@", &v19, 0x2Au);
    }

    if (!*(a1 + 48))
    {
      v11 = [WeakRetained mediaItem];
      v12 = [*(a1 + 40) response];
      v13 = *(a1 + 48);
      goto LABEL_11;
    }

    v7 = [WeakRetained mediaService];
    v8 = [v7 sessionInvalidated];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 48) domain];
      v10 = v9;
      if (v9 != NSURLErrorDomain)
      {

LABEL_15:
        v17 = *(a1 + 32);
        v11 = [*(a1 + 40) originalRequest];
        v12 = [*(a1 + 48) userInfo];
        v18 = [v12 objectForKeyedSubscript:NSURLSessionUploadTaskResumeData];
        [WeakRetained setupUploadTaskForSession:v17 withRequest:v11 resumeData:v18 urlSessionError:*(a1 + 48)];

        goto LABEL_16;
      }

      v14 = [*(a1 + 48) code];

      if (v14 != -999)
      {
        goto LABEL_15;
      }

      v15 = [*(a1 + 56) mediaService];
      v16 = [v15 delayRequired];

      v11 = [WeakRetained mediaItem];
      v12 = [*(a1 + 40) response];
      v13 = *(a1 + 48);
      if (v16)
      {
        [WeakRetained handleUploadTaskDelayForItem:v11 response:v12 error:v13];
        goto LABEL_16;
      }

LABEL_11:
      [WeakRetained handleUploadTaskCompletionForItem:v11 response:v12 error:v13];
LABEL_16:
    }
  }
}

void sub_1000059F4(uint64_t a1)
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v2 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 136446979;
    v9 = "[CLEEDMediaServiceItem URLSession:task:didReceiveChallenge:completionHandler:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2113;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Session:%{public}@, task:%{public}@, challenge:%{private}@", &v8, 0x2Au);
  }

  v6 = [CLEEDRequestHelper validateServerCertificateChallenge:*(a1 + 48)];
  (*(*(a1 + 64) + 16))();
  if (v6 != 1)
  {
    v7 = [*(a1 + 56) mediaItem];
    [v7 setServerUploadStatus:v6];
  }
}

void sub_100006CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006D08(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v9 = [NSSet setWithObjects:v1, v2, v3, v4, objc_opt_class(), 0];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLEEDMediaServiceProtocol];
  v6 = qword_100029E50;
  qword_100029E50 = v5;

  [qword_100029E50 setClasses:v9 forSelector:"processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:" argumentIndex:6 ofReply:0];
  [qword_100029E50 setClasses:v9 forSelector:"processMediaServicesMitigations:" argumentIndex:0 ofReply:0];
  [qword_100029E50 setClasses:v9 forSelector:"connectToMediaService:uploadConfig:" argumentIndex:0 ofReply:0];
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLEEDMediaServiceDelegate];
  v8 = qword_100029E58;
  qword_100029E58 = v7;
}

void sub_100006E60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v2 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = +[NSXPCConnection currentConnection];
      v5 = 136446466;
      v6 = "[CLEEDMediaService listener:shouldAcceptNewConnection:]_block_invoke";
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Client connection[%{public}@] invalidated", &v5, 0x16u);
    }

    WeakRetained[129] = 1;
    [WeakRetained cleanupOnInvalidation];
  }
}

void sub_100006F7C(id a1)
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_100014624();
  }
}

void sub_1000077B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 40);
      v5 = 136446466;
      v6 = "[CLEEDMediaService setDebounceTimerForReleasingOSTransaction]_block_invoke";
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Timer[%{public}@] fired, proceeding with releasing OS Transaction", &v5, 0x16u);
    }

    [WeakRetained cancelDebounceTimerForReleasingOSTransaction];
    [WeakRetained clearCache];
    [WeakRetained sendCompletionIndication];
    [WeakRetained releaseOSTransaction];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014904(a1);
    }
  }
}

void sub_100007C4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[12];
  v4 = a2;
  [v2 handleRemoteProxyError:v4 forProcessIdentifier:{objc_msgSend(v3, "processIdentifier")}];
}

void sub_100008A84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 22) frontmostCall];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = [v4 callUUID];
    v7 = [*(a1 + 32) mediaRequest];
    v8 = [v7 callUUID];
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v10 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v11 mediaItem];
        v14 = [v13 assetIdentifier];
        v15 = [*(a1 + 32) mediaItem];
        v43 = 136446723;
        v44 = "[CLEEDMediaService updateCallRecordForMediaServiceItem:]_block_invoke";
        v45 = 2113;
        v46 = v14;
        v47 = 1026;
        v48 = [v15 type];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Adding media item to current call,assetID,%{private}@,mediaType,%{public}d", &v43, 0x1Cu);
      }

      v16 = [*(a1 + 32) mediaItem];
      v17 = [v16 type];

      v18 = v17 == 2;
      sub_1000165F8(v19);
      v21 = objc_alloc(*(v20 + 848));
      v22 = [*(a1 + 32) mediaItem];
      v23 = [v22 assetIdentifier];
      v24 = [v21 initWithAssetId:v23 mediaType:v18];

      v25 = [v5 emergencyMediaItems];
      v26 = [NSMutableSet setWithSet:v25];

      [v26 addObject:v24];
      [v5 setEmergencyMediaItems:v26];
    }

    else
    {
LABEL_9:
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v27 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = v27;
        v30 = [v28 mediaItem];
        v31 = [v30 assetIdentifier];
        v32 = [*(a1 + 32) mediaItem];
        v43 = 136446723;
        v44 = "[CLEEDMediaService updateCallRecordForMediaServiceItem:]_block_invoke";
        v45 = 2113;
        v46 = v31;
        v47 = 1026;
        v48 = [v32 type];
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Adding media item to call history,assetID,%{private}@,mediaType,%{public}d", &v43, 0x1Cu);
      }

      v33 = [*(a1 + 32) mediaItem];
      v34 = [v33 type];

      v35 = v34 == 2;
      sub_10001658C(v36);
      v38 = objc_alloc(*(v37 + 856));
      v39 = [*(a1 + 32) mediaItem];
      v40 = [v39 assetIdentifier];
      v24 = [v38 initWithAssetId:v40 mediaType:v35];

      v41 = v3[23];
      v26 = [*(a1 + 32) mediaRequest];
      v42 = [v26 callUUID];
      [v41 updateEmergencyMediaItemFor:v42 with:v24];
    }
  }
}

void sub_1000092DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ![WeakRetained abortRequested])
  {
    v5 = *(a1 + 32);
    v6 = [v5 mediaItem];
    v9 = 0;
    v7 = [v5 encryptMediaItem:v6 returnedAuthTag:&v9];
    v8 = v9;

    [v3 handleEncryptionCompletionForServiceItem:*(a1 + 32) encryptedFileURL:v7 authTag:v8];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v4 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "[CLEEDMediaService triggerAllProcessing]_block_invoke";
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, self[%{public}@] or abort requested, early return.", buf, 0x16u);
    }
  }
}

void sub_100009AA4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSDate date];
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [*(a1 + 40) copyMediaItemToStaging:v5];
  if ([v5 uploadStatus] == 1)
  {
    [v4 timeIntervalSinceNow];
    [v5 setDurationCopyMs:(fabs(v6) * 1000.0)];
  }

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v16 = [v5 mediaItemID];
    v9 = [v16 UUIDString];
    v10 = [v9 UTF8String];
    v11 = [v5 uploadStatus];
    v12 = [v5 durationCopyMs];
    v13 = [v5 URL];
    [v13 path];
    v15 = v14 = v4;
    *buf = 136447491;
    v18 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]_block_invoke";
    v19 = 2050;
    v20 = a2;
    v21 = 2081;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 2050;
    v26 = v12;
    v27 = 2081;
    v28 = [v15 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, iteration:%{public}zu, mediaItemID:%{private}s, status:%{public}ld, copyDuration:%{public}ld, url:%{private}s", buf, 0x3Eu);

    v4 = v14;
  }
}

void sub_10000A0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_10000A144(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained abortRequested])
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v6 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 136446466;
        v54 = "[CLEEDMediaService copyMediaItemToStaging:]_block_invoke";
        v55 = 2114;
        v56 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, copy aborted for mediaItem:%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) setUploadStatus:7];
    }

    else
    {
      v50 = v3;
      v8 = +[NSUUID UUID];
      v9 = (a1 + 32);
      [*(a1 + 32) setMediaItemID:v8];

      v10 = [@"/private/var/mobile/Library/CLEEDMediaService/" UTF8String];
      v11 = [*(a1 + 32) mediaItemID];
      v12 = [v11 UUIDString];
      v13 = [v12 UTF8String];
      v14 = [*(a1 + 32) URL];
      v15 = [v14 pathExtension];
      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s%s.%s", v10, v13, [v15 UTF8String]);

      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v3 = v50;
      v17 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
      {
        sub_100014F18(v17, v50, v16);
      }

      v18 = +[NSFileManager defaultManager];
      v19 = [v50 path];
      v52 = 0;
      v20 = [v18 copyItemAtPath:v19 toPath:v16 error:&v52];
      v21 = v52;
      *(*(*(a1 + 48) + 8) + 24) = v20;

      if (v21)
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          sub_100015000();
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
      }

      else
      {
        v22 = +[NSFileManager defaultManager];
        v23 = [v22 fileExistsAtPath:v16];

        if (v23)
        {
          v24 = [[NSURL alloc] initWithString:v16];
          [*v9 setStagingURL:v24];

          v25 = [NSString alloc];
          v26 = [v16 pathExtension];
          v27 = [v25 initWithString:v26];
          [*v9 setMediaItemFormat:v27];

          v28 = +[NSFileManager defaultManager];
          v29 = [*v9 stagingURL];
          v30 = [v29 path];
          v51 = 0;
          v31 = [v28 attributesOfItemAtPath:v30 error:&v51];
          v32 = v51;
          v33 = [v31 fileSize];

          v49 = v32;
          if (!v32)
          {
            [*v9 setOriginalSizeBytes:v33];
          }

          v34 = [*(*(a1 + 40) + 120) maxUploadFileSizeMB] * 1048576.0;
          v35 = *(a1 + 32);
          if (v34 >= v33)
          {
            [v35 setUploadStatus:1];
            v3 = v50;
            v38 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
            v21 = 0;
          }

          else
          {
            [v35 setUploadStatus:9];
            v36 = [*v9 stagingURL];
            v37 = [v36 path];
            [CLEEDMediaService deleteFileAtPath:v37];

            v38 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
            v3 = v50;
            v21 = 0;
            if (qword_100029E70 != -1)
            {
              sub_100013358();
            }

            v39 = qword_100029E68;
            if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
            {
              sub_100015120((a1 + 32), v39);
            }
          }

          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          v41 = qword_100029E68;
          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
          {
            v42 = *v9;
            v43 = v41;
            v44 = [v42 stagingURL];
            v45 = [v44 path];
            v46 = [v45 UTF8String];
            *buf = 136446467;
            v54 = "[CLEEDMediaService copyMediaItemToStaging:]_block_invoke";
            v55 = 2081;
            v56 = v46;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, copy to staging successful for mediaItem:%{private}s", buf, 0x16u);

            v38 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
          }
        }

        else
        {
          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          v40 = qword_100029E68;
          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
          {
            sub_10001507C(v16, v40);
          }

          [*v9 setUploadStatus:2];
          v38 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        }

        v47 = *(a1 + 64);
        if (sandbox_extension_release())
        {
          if (v38[462] != -1)
          {
            sub_100013358();
          }

          v48 = qword_100029E68;
          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
          {
            sub_100015218(v48);
          }
        }
      }
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000152BC();
    }
  }
}

void sub_10000B0E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained || [WeakRetained abortRequested])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v4 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 136446466;
      v41 = "[CLEEDMediaService handleEncryptionCompletionForServiceItem:encryptedFileURL:authTag:]_block_invoke";
      v42 = 2114;
      v43 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, self[%{public}@] or abort requested, early return.", &v40, 0x16u);
    }

    goto LABEL_30;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = [v6 path];
    v10 = [v9 UTF8String];
    v11 = [*(a1 + 48) base64EncodedStringWithOptions:0];
    v40 = 136446979;
    v41 = "[CLEEDMediaService handleEncryptionCompletionForServiceItem:encryptedFileURL:authTag:]_block_invoke";
    v42 = 2114;
    v43 = v7;
    v44 = 2081;
    v45 = v10;
    v46 = 2081;
    v47 = [v11 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaServiceItem:%{public}@, encryptedURL:%{private}s, authTag:%{private}s", &v40, 0x2Au);
  }

  v12 = (a1 + 32);
  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) mediaItem];
  [v14 setAuthTag:v13];

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) mediaItem];
  [v16 setEncryptedFileURL:v15];

  v17 = [*(a1 + 32) mediaItem];
  v18 = [v17 encryptedFileURL];
  if (!v18)
  {

    goto LABEL_16;
  }

  v19 = v18;
  v20 = [*v12 mediaItem];
  v21 = [v20 authTag];

  if (!v21)
  {
LABEL_16:
    v26 = [*v12 mediaItem];
    [v26 setUploadStatus:4];

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v27 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000153FC((a1 + 32), v27);
    }

    v28 = [*v12 mediaRequest];
    v29 = [*v12 mediaItem];
    v30 = [v28 updateQueueForProcessedMediaItem:v29];

    if (!v30)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v31 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *v12;
        v33 = v31;
        v34 = [v32 mediaRequest];
        v35 = [v34 requestID];
        v40 = 136446466;
        v41 = "[CLEEDMediaService handleEncryptionCompletionForServiceItem:encryptedFileURL:authTag:]_block_invoke";
        v42 = 2114;
        v43 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, All media items processed for requestID:%{public}@", &v40, 0x16u);
      }
    }

    [v3[10] addObject:*v12];
    v36 = [*v12 mediaItem];
    [v3 submitCAMetricForUploadItem:v36];
    goto LABEL_28;
  }

  v22 = [*(a1 + 32) mediaItem];
  [v22 setUploadStatus:3];

  v23 = [*(a1 + 56) delayRequired];
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  if (v23)
  {
    [v24 handleDelayForMediaServiceItem:v25];
  }

  else
  {
    [v24 insertMediaServiceItemInUploadList:v25];
  }

  v36 = [*v12 timestampEncryptionStart];
  [v36 timeIntervalSinceNow];
  v38 = (fabs(v37) * 1000.0);
  v39 = [*v12 mediaItem];
  [v39 setDurationEncryptionMs:v38];

LABEL_28:
  [v3[7] removeObject:*(a1 + 32)];
  [v3 storeDataToCache];
  if (([*(a1 + 56) delayRequired] & 1) == 0)
  {
    [v3 processNextInFlightServiceItem];
  }

LABEL_30:
}

void sub_10000C074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10000C0A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    if ([WeakRetained abortRequested])
    {
      v5 = [v4 mediaItem];
      v6 = [v5 uploadStatus];

      if (v6 != 5)
      {
        v7 = [v4 mediaItem];
        [v7 setUploadStatus:7];
      }
    }

    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v8 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 mediaItem];
      v11 = [v10 mediaItemID];
      v12 = [v11 UUIDString];
      v13 = [v12 UTF8String];
      v14 = [v4 mediaRequest];
      v15 = [v14 requestID];
      v28 = 136446722;
      v29 = "[CLEEDMediaService triggerUploadForServiceItem:]_block_invoke";
      v30 = 2082;
      v31 = v13;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Completion called for mediaID:%{public}s, requestID:%{public}@", &v28, 0x20u);
    }

    if ([WeakRetained delayRequired] && (objc_msgSend(v4, "mediaItem"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "uploadStatus"), v16, v17 != 5))
    {
      [v4 setTimestampUploadStart:0];
      [WeakRetained handleDelayForMediaServiceItem:v4];
    }

    else
    {
      v18 = [v4 mediaRequest];
      v19 = [v4 mediaItem];
      v20 = [v18 updateQueueForProcessedMediaItem:v19];

      if (!v20)
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        v21 = qword_100029E68;
        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = [v4 mediaRequest];
          v24 = [v23 requestID];
          v28 = 136446466;
          v29 = "[CLEEDMediaService triggerUploadForServiceItem:]_block_invoke";
          v30 = 2114;
          v31 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, All media items processed for requestID:%{public}@", &v28, 0x16u);
        }
      }

      v25 = [v4 mediaItem];
      [WeakRetained submitCAMetricForUploadItem:v25];

      [WeakRetained[10] addObject:v4];
    }

    [WeakRetained storeDataToCache];
    v26 = [v4 mediaItem];
    v27 = [v26 uploadStatus];

    if (v27 == 5)
    {
      [WeakRetained updateCallRecordForMediaServiceItem:v4];
    }

    [WeakRetained[11] removeObject:v4];
  }

  [WeakRetained updateProgress];
  [WeakRetained processNextInFlightServiceItem];
}

void sub_10000D21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10000D254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained getQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D330;
    block[3] = &unk_1000245A0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v8);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 setTaskCompletedWithSuccess:0];
  }
}

void sub_10000D330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[169] = 1;
  [WeakRetained abortMediaUpload];
  v1 = *(WeakRetained + 18);
  *(WeakRetained + 18) = 0;

  v2 = *(WeakRetained + 20);
  *(WeakRetained + 20) = 0;

  *(WeakRetained + 38) = 0;
}

void sub_10000D620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 136);
      v9 = 136446466;
      v10 = "[CLEEDMediaService checkAndStartBGTaskStartGuardTimer]_block_invoke";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Timer[%{public}@] fired, fallback handling has kicked in.", &v9, 0x16u);
    }

    [WeakRetained cancelBGTaskStartGuardTimer];
    v6 = sub_100016568(v5);
    v8 = [*(v7 + 824) sharedScheduler];
    [v8 cancelTaskRequestWithIdentifier:@"com.corelocation.eedmediaservice.progress"];

    *(*(a1 + 32) + 155) = 0;
    *(*(a1 + 32) + 168) = 1;
    [*(a1 + 32) triggerAllProcessing];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000156EC(a1);
    }
  }
}

void sub_10000DF60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setProgressUITaskCompletion];
    WeakRetained = v2;
  }
}

void sub_100011F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013220(id a1)
{
  qword_100029E68 = os_log_create("com.apple.locationd.eedmediaservice", "EmergencyMS");

  _objc_release_x1();
}

void sub_1000132EC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100013480(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() base64EncodedStringWithOptions:0];
  [v3 UTF8String];
  sub_100013278();
  sub_1000132EC(&_mh_execute_header, v4, v5, "#EED2EMS,%{public}s, Shared info:%{private}s", v6, v7, v8, v9, 3u);
}

void sub_1000135A8(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() base64EncodedStringWithOptions:0];
  [v3 UTF8String];
  sub_100013278();
  sub_1000132EC(&_mh_execute_header, v4, v5, "#EED2EMS,%{public}s, Device key confirmation tag:%{private}s", v6, v7, v8, v9, 3u);
}

void sub_100013750()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000137CC()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100013848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = a2;
  v10 = [v8 count];
  v11 = [*(a1 + 88) count];
  v12 = [*(a1 + 96) count];
  v13 = [*(a1 + 104) count];
  *buf = 136449283;
  v18 = "[CLEEDMediaServiceRequest encodeWithCoder:]";
  v19 = 2114;
  v20 = v3;
  v21 = 2114;
  v22 = v5;
  v23 = 2114;
  v24 = v4;
  v25 = 2114;
  v26 = v6;
  v27 = 2113;
  v28 = v7;
  v29 = 2113;
  v30 = v14;
  v31 = 2113;
  v32 = v15;
  v33 = 2113;
  v34 = v16;
  v35 = 2050;
  v36 = v10;
  v37 = 2050;
  v38 = v11;
  v39 = 2050;
  v40 = v12;
  v41 = 2050;
  v42 = v13;
  _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s[requestID:%{public}@,uploadURL:%{public}@,callUUID:%{public}@,requestTimestamp:%{public}@,sharedInfoPrefix:%{private}@,combinedSecret:%{private}@,deviceKeyConfirmation:%{private}@,Token:%{private}@,numFiltered:%{public}lu,numPending:%{public}lu,numDelayed:%{public}lu,numCompleted:%{public}lu]", buf, 0x84u);
}

void sub_1000139C0(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() base64EncodedStringWithOptions:0];
  [v3 UTF8String];
  sub_100013278();
  sub_1000132EC(&_mh_execute_header, v4, v5, "#EED2EMS,%{public}s, Shared info:%{private}s", v6, v7, v8, v9, 3u);
}

void sub_100013AE8(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() stagingURL];
  v4 = [v3 absoluteString];
  [v4 UTF8String];
  sub_100013278();
  sub_1000132C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100013BAC()
{
  sub_10001329C();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013C28()
{
  sub_10001329C();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013CA4()
{
  sub_10001329C();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013D20()
{
  sub_1000132E0();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100013DB4()
{
  sub_10001329C();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013E30()
{
  sub_10001329C();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100013EAC()
{
  v0 = __error();
  strerror(*v0);
  sub_1000132E0();
  sub_10001328C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100013F48()
{
  v0 = __error();
  strerror(*v0);
  sub_1000132E0();
  sub_10001328C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100013FE4()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000140E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_10001330C() delayTimer];
  sub_100013264();
  sub_1000132C4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100014184(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() delayTimer];
  sub_100013264();
  sub_1000132EC(&_mh_execute_header, v4, v5, "#EED2EMS,%{public}s, cancelling timer[%{public}@]", v6, v7, v8, v9, 2u);
}

void sub_1000144C8(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  sub_10001329C();
  sub_10001328C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100014568(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 executablePathOfConnection:a3];
  sub_100013264();
  sub_10001328C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_1000146A4(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 localizedDescription];
  v7 = [a2 localizedFailureReason];
  v8 = 136446978;
  v9 = "[CLEEDMediaService handleRemoteProxyError:forProcessIdentifier:]";
  v10 = 1026;
  v11 = a3;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, [%{public}d]: %{public}@ %{public}@\n", &v8, 0x26u);
}

void sub_100014794(uint64_t a1, void *a2)
{
  v3 = *(a1 + 200);
  v4 = a2;
  v5 = [v3 count];
  v6 = *(a1 + 208);
  v7 = *(a1 + 192) == 0;
  v9 = 136446978;
  v10 = "[CLEEDMediaService encodeWithCoder:]";
  if (v7)
  {
    v8 = "NO";
  }

  else
  {
    v8 = "YES";
  }

  v11 = 2050;
  v12 = v5;
  v13 = 2082;
  v14 = v8;
  v15 = 2050;
  v16 = v6;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s[numRequests:%{public}lu, extendedSessionEnded:%{public}s, totalBytesUploadedInCall:%{public}ld]", &v9, 0x2Au);
}

void sub_100014904(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  sub_100013318();
  sub_1000132D4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014988(uint64_t *a1)
{
  v1 = *a1;
  sub_100013318();
  sub_10001332C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014A08(void *a1)
{
  v1 = a1;
  [@"/private/var/mobile/Library/CLEEDMediaService/" UTF8String];
  sub_100013278();
  sub_100013338();
  sub_1000132C4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100014AB0()
{
  sub_1000132B0();
  sub_10001332C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100014B2C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mediaItem];
  v5 = [v4 assetIdentifier];
  v6 = [a2 mediaItem];
  [v6 uploadStatus];
  sub_10001328C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x1Cu);
}

void sub_100014C9C(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "[CLEEDMediaService copyMediaItemToStaging:]";
  *(buf + 6) = 2082;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Sandbox extension release failure:%{public}s", buf, 0x16u);
}

void sub_100014CF8(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_1000132E0();
  sub_10001328C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100014DA0()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100014E1C()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100014F18(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 path];
  v7 = 136446723;
  v8 = "[CLEEDMediaService copyMediaItemToStaging:]_block_invoke";
  v9 = 2081;
  v10 = [v6 UTF8String];
  v11 = 2081;
  v12 = [a3 UTF8String];
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, Copying from accessorURL:%{private}s to %{private}s", &v7, 0x20u);
}

void sub_100015000()
{
  sub_1000132B0();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001507C(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 UTF8String];
  sub_100013278();
  sub_10001328C();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100015120(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  vcvtd_n_f64_u64([v3 originalSizeBytes], 0x14uLL);
  v5 = [*a1 stagingURL];
  v6 = [v5 path];
  [v6 UTF8String];
  sub_10001328C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);
}

void sub_100015218(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  sub_1000132E0();
  sub_10001328C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000152BC()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015338(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() stagingURL];
  v4 = [v3 lastPathComponent];
  [v4 UTF8String];
  sub_100013278();
  sub_1000132C4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000153FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_10001330C() mediaItem];
  v6 = [v5 URL];
  v7 = [v6 path];
  sub_1000132B0();
  sub_1000132C4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100015548(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() localizedDescription];
  sub_100013264();
  sub_1000132C4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000156EC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  sub_100013318();
  sub_1000132D4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100015770(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() mediaRequest];
  v4 = [v3 requestID];
  sub_100013264();
  sub_1000132EC(&_mh_execute_header, v5, v6, "#EED2EMS,%{public}s, All media items aborted for requestID:%{public}@", v7, v8, v9, v10, 2u);
}

void sub_100015824(void *a1)
{
  v2 = a1;
  v3 = [sub_10001330C() mediaRequest];
  v4 = [v3 requestID];
  sub_100013264();
  sub_1000132EC(&_mh_execute_header, v5, v6, "#EED2EMS,%{public}s, All media items delayed for requestID:%{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000158D8(void *a1)
{
  v1 = a1;
  [@"/private/var/mobile/Library/CLEEDMediaService/" UTF8String];
  sub_100013278();
  sub_100013338();
  sub_1000132C4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100015980()
{
  v2[0] = 136446723;
  sub_1000132B0();
  sub_100013338();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Error removing staged file:%{private}@, removeError:%{public}@", v2, 0x20u);
}

void sub_100015A0C()
{
  sub_1000132B0();
  sub_100013338();
  sub_10001332C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100015A90(void *a1)
{
  v1 = a1;
  [0 UTF8String];
  sub_100013278();
  sub_10001328C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100015BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = 136446722;
  v7 = "[CLEEDMediaService storeDataToCache]";
  v8 = 2114;
  v9 = a1;
  v10 = 2050;
  v11 = [a3 length];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, failed to encode CLEEDMediaService cache, encodeError:%{public}@, cacheSize:%{public}lu", &v6, 0x20u);
}

void sub_100015C70()
{
  sub_100013264();
  sub_1000132D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100015CEC(void *a1)
{
  v1 = a1;
  [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
  sub_100013278();
  sub_10001328C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

uint64_t sub_100016408(double a1)
{
  if (!atomic_load(&dword_100029E48))
  {
    sub_100016984(a1);
  }

  return AnalyticsSendEventLazy();
}

void sub_100016434(CGImageDestination *a1, CGImageSource *a2, size_t a3, const __CFDictionary *a4, double a5)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a5);
  }

  CGImageDestinationAddImageFromSource(a1, a2, a3, a4);
}

CGImageDestinationRef sub_100016460(const __CFURL *a1, const __CFString *a2, size_t a3, const __CFDictionary *a4, double a5)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a5);
  }

  return CGImageDestinationCreateWithURL(a1, a2, a3, a4);
}

BOOL sub_10001648C(CGImageDestinationRef idst, double a2)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a2);
  }

  return CGImageDestinationFinalize(idst);
}

CFDictionaryRef sub_1000164B8(CGImageSource *a1, size_t a2, const __CFDictionary *a3, double a4)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a4);
  }

  return CGImageSourceCopyPropertiesAtIndex(a1, a2, a3);
}

CGImageSourceRef sub_1000164E4(const __CFURL *a1, const __CFDictionary *a2, double a3)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a3);
  }

  return CGImageSourceCreateWithURL(a1, a2);
}

size_t sub_100016510(CGImageSourceRef isrc, double a2)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a2);
  }

  return CGImageSourceGetPrimaryImageIndex(isrc);
}

CFStringRef sub_10001653C(CGImageSourceRef isrc, double a2)
{
  if (!atomic_load(&dword_100029E3C))
  {
    sub_100016798(a2);
  }

  return CGImageSourceGetType(isrc);
}

double sub_100016568(double result)
{
  if (!atomic_load(&dword_100029E38))
  {
    return sub_1000166F4(result);
  }

  return result;
}

double sub_10001658C(double result)
{
  if (!atomic_load(&dword_100029E44))
  {
    return sub_1000168E0(result);
  }

  return result;
}

double sub_1000165B0(double result)
{
  if (!atomic_load(&dword_100029E44))
  {
    return sub_1000168E0(result);
  }

  return result;
}

double sub_1000165D4(double result)
{
  if (!atomic_load(&dword_100029E4C))
  {
    return sub_100016A28(result);
  }

  return result;
}

double sub_1000165F8(double result)
{
  if (!atomic_load(&dword_100029E4C))
  {
    return sub_100016A28(result);
  }

  return result;
}

double sub_10001661C(double result)
{
  if (!atomic_load(&dword_100029E40))
  {
    return sub_10001683C(result);
  }

  return result;
}

double sub_100016640(double result)
{
  if (!atomic_load(&dword_100029E38))
  {
    return sub_1000166F4(result);
  }

  return result;
}

double sub_100016664(double result)
{
  if (!atomic_load(&dword_100029E40))
  {
    return sub_10001683C(result);
  }

  return result;
}

double sub_100016688(double result)
{
  if (!atomic_load(&dword_100029E3C))
  {
    return sub_100016798(result);
  }

  return result;
}

double sub_1000166AC(double result)
{
  if (!atomic_load(&dword_100029E3C))
  {
    return sub_100016798(result);
  }

  return result;
}

double sub_1000166D0(double result)
{
  if (!atomic_load(&dword_100029E3C))
  {
    return sub_100016798(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000166F4(double a1)
{
  dlopen("/System/Library/Frameworks/BackgroundTasks.framework/BackgroundTasks", 0);
  atomic_store(1u, &dword_100029E38);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100016798(double a1)
{
  dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 0);
  atomic_store(1u, &dword_100029E3C);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10001683C(double a1)
{
  dlopen("/System/Library/Frameworks/UniformTypeIdentifiers.framework/UniformTypeIdentifiers", 0);
  atomic_store(1u, &dword_100029E40);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000168E0(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CallHistory.framework/CallHistory", 0);
  atomic_store(1u, &dword_100029E44);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100016984(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 0);
  atomic_store(1u, &dword_100029E48);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100016A28(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 0);
  atomic_store(1u, &dword_100029E4C);
  return a1;
}