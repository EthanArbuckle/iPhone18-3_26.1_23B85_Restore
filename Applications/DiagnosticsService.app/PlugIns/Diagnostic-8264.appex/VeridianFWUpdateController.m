@interface VeridianFWUpdateController
- (int64_t)_downloadVeridianFirmwareWithError:(id *)a3;
- (int64_t)_requestFWURLAndDigestFromAST2WithError:(id *)a3;
- (int64_t)_updateVeridianFirmwareWithError:(id *)a3;
- (int64_t)_validateDeviceWithError:(id *)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation VeridianFWUpdateController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[VeridianFWUpdateController setupWithInputs:responder:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v11, 0x20u);
  }

  [(VeridianFWUpdateController *)self setInputs:v6];
  v9 = [(VeridianFWUpdateController *)self inputs];

  if (!v9)
  {
    v10 = [(VeridianFWUpdateController *)self result];
    [v10 setStatusCode:&off_1000089C0];

    [(VeridianFWUpdateController *)self setFinished:1];
  }
}

- (void)start
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[VeridianFWUpdateController start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(VeridianFWUpdateController *)self inputs];
  if ([v4 forceUpdate])
  {
  }

  else
  {
    v5 = +[CRRepairStatus isVeridianFWUpdateRequiredLite];

    if ((v5 & 1) == 0)
    {
      v22 = +[CRRepairStatus getVeridianFWVersionInfo];
      v10 = handleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No need to update Veridian FW", buf, 2u);
      }

      v8 = 0;
      v9 = 0;
      v19 = v22;
      v41 = v22;
      goto LABEL_24;
    }
  }

  v6 = [(VeridianFWUpdateController *)self inputs];
  v7 = [v6 needRequestURL];

  if (v7)
  {
    v45 = 0;
    v8 = [(VeridianFWUpdateController *)self _requestFWURLAndDigestFromAST2WithError:&v45];
    v9 = v45;
    if (v8)
    {
      v10 = handleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000041F0();
      }

LABEL_15:
      v19 = 0;
      v41 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v11 = [(VeridianFWUpdateController *)self inputs];
    v12 = [v11 FWURL];
    [(VeridianFWUpdateController *)self setFwURL:v12];

    v13 = [(VeridianFWUpdateController *)self inputs];
    v14 = [v13 FWDigest];
    [(VeridianFWUpdateController *)self setFwDigest:v14];

    v9 = 0;
    v8 = -24;
  }

  v15 = [(VeridianFWUpdateController *)self fwURL];
  v16 = [v15 absoluteString];
  if ([v16 length] >= 0x401)
  {

LABEL_13:
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100004318();
    }

    goto LABEL_15;
  }

  v17 = [(VeridianFWUpdateController *)self fwDigest];
  v18 = [v17 length];

  if (v18 >= 0x401)
  {
    goto LABEL_13;
  }

  v20 = +[CRRepairStatus getVeridianFWVersionInfo];
  v44 = v9;
  v8 = [(VeridianFWUpdateController *)self _validateDeviceWithError:&v44];
  v21 = v44;

  v41 = v20;
  if (v8)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000422C();
    }

    goto LABEL_53;
  }

  v43 = v21;
  v8 = [(VeridianFWUpdateController *)self _downloadVeridianFirmwareWithError:&v43];
  v9 = v43;

  if (!v8)
  {
    v42 = v9;
    v8 = [(VeridianFWUpdateController *)self _updateVeridianFirmwareWithError:&v42];
    v21 = v42;

    if (!v8)
    {
      v19 = +[CRRepairStatus getVeridianFWVersionInfo];
      v10 = v20;
LABEL_20:
      v9 = v21;
      goto LABEL_24;
    }

    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000042A4();
    }

LABEL_53:
    v19 = v20;
    goto LABEL_20;
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100004268();
  }

  v19 = v20;
LABEL_24:

  v23 = [CRUtils getInnermostNSError:v9];

  v24 = [NSNumber numberWithInteger:v8];
  v25 = [(VeridianFWUpdateController *)self result];
  [v25 setStatusCode:v24];

  v46[0] = @"pluginVersion";
  v39 = +[NSBundle mainBundle];
  v26 = [v39 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v27 = v26;
  if (!v26)
  {
    v26 = +[NSNull null];
  }

  v38 = v26;
  v47[0] = v26;
  v46[1] = @"error";
  v28 = [v23 description];
  v29 = v28;
  if (!v28)
  {
    v28 = +[NSNull null];
  }

  v37 = v28;
  v47[1] = v28;
  v46[2] = @"errorCode";
  v40 = v23;
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 code]);
  v31 = v30;
  if (!v30)
  {
    v31 = +[NSNull null];
  }

  v47[2] = v31;
  v46[3] = @"oldVeridianFWVersion";
  v32 = v41;
  if (!v41)
  {
    v32 = +[NSNull null];
  }

  v47[3] = v32;
  v46[4] = @"newVeridianFWVersion";
  v33 = v19;
  if (!v19)
  {
    v33 = +[NSNull null];
  }

  v47[4] = v33;
  v34 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];
  v35 = self;
  v36 = [(VeridianFWUpdateController *)self result];
  [v36 setData:v34];

  if (!v19)
  {
  }

  if (v41)
  {
    if (v30)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v30)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  if (!v29)
  {
  }

  if (!v27)
  {
  }

  [(VeridianFWUpdateController *)v35 setFinished:1];
}

- (int64_t)_requestFWURLAndDigestFromAST2WithError:(id *)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VeridianFWUpdateController _requestFWURLAndDigestFromAST2WithError:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v58 = 0x3032000000;
  v59 = sub_100001F7C;
  v60 = sub_100001F8C;
  v61 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100001F7C;
  v51 = sub_100001F8C;
  v52 = 0;
  v46 = 0;
  v5 = MGCopyAnswer();
  if (!v5)
  {
    v6 = sub_1000040B0(0xFFFFFFFFFFFFFFD6, @"Failed to get device FGSN", 0);
    goto LABEL_8;
  }

  if (+[CRBatteryController supportMultiBatteryTypes])
  {
    if (T200GetBoardIdFromDT())
    {
      v6 = sub_1000040B0(0xFFFFFFFFFFFFFFD6, @"Failed to get BMU BoardId", 0);
LABEL_8:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_16:
      v22 = 0;
      v23 = 0;
LABEL_17:
      v24 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v6;
      v25 = -24;
LABEL_18:

      goto LABEL_19;
    }

    v7 = [NSString stringWithFormat:@"0X%X", v46];
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 138412546;
      v54 = v5;
      v55 = 2112;
      v56 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request Veridian fwURL & fwDigest with device serial number: %@ and battery code: %@", v53, 0x16u);
    }
  }

  else
  {
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 138412290;
      v54 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request Veridian fwURL & fwDigest with device serial number: %@", v53, 0xCu);
    }

    v7 = 0;
  }

  v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v11 = [NSURLSession sessionWithConfiguration:v13 delegate:self delegateQueue:0];

  v14 = [(VeridianFWUpdateController *)self inputs];
  v15 = [v14 ast2RequestURL];
  v16 = [NSURL URLWithString:v15];
  v10 = [NSMutableURLRequest requestWithURL:v16];

  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:v5 forKey:@"serialNumber"];
  if (v7)
  {
    [v9 setObject:v7 forKey:@"batteryCode"];
  }

  v17 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
  [v10 setHTTPBody:v17];

  v18 = dispatch_semaphore_create(0);
  v19 = objc_autoreleasePoolPush();
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100001F94;
  v42[3] = &unk_100008330;
  p_buf = &buf;
  v45 = &v47;
  v8 = v18;
  v43 = v8;
  v20 = [v11 dataTaskWithRequest:v10 completionHandler:v42];
  [v20 resume];

  objc_autoreleasePoolPop(v19);
  v21 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v8, v21))
  {
    v6 = sub_1000040B0(0xFFFFFFFFFFFFFFF3, @"Waiting for fwURL & fwDigest from AST2 timeout", 0);
    goto LABEL_16;
  }

  if (!*(*(&buf + 1) + 40))
  {
    v27 = [v48[5] objectForKeyedSubscript:@"batteryFW"];
    v23 = [v27 objectForKeyedSubscript:@"fwURL"];

    if (!v23)
    {
      v6 = sub_1000040B0(0xFFFFFFFFFFFFFFE8, @"fwURL is nil from AST2", 0);
      goto LABEL_16;
    }

    v28 = [NSURL URLWithString:v23];
    [(VeridianFWUpdateController *)self setFwURL:v28];

    v29 = [(VeridianFWUpdateController *)self fwURL];
    if (v29)
    {
      v39 = [(VeridianFWUpdateController *)self fwURL];
      v37 = [v39 host];
      if (v37)
      {
        v36 = [(VeridianFWUpdateController *)self fwURL];
        v30 = [v36 scheme];
        if ([v30 caseInsensitiveCompare:@"http"])
        {

LABEL_36:
          v31 = [v48[5] objectForKeyedSubscript:@"batteryFW"];
          v22 = [v31 objectForKeyedSubscript:@"fwDigest"];

          if (v22)
          {
            [(VeridianFWUpdateController *)self setFwDigest:v22];
            v24 = handleForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v40 = [(VeridianFWUpdateController *)self fwURL];
              v32 = [(VeridianFWUpdateController *)self fwDigest];
              *v53 = 138412546;
              v54 = v40;
              v55 = 2112;
              v56 = v32;
              v38 = v32;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Request Veridian fwURL: %@ and fwDigest: %@ from AST2 successfully", v53, 0x16u);
            }

            v25 = 0;
            goto LABEL_18;
          }

          v6 = sub_1000040B0(0xFFFFFFFFFFFFFFE8, @"fwDigest is nil from AST2", 0);
          goto LABEL_34;
        }

        v35 = [(VeridianFWUpdateController *)self fwURL];
        v34 = [v35 scheme];
        v33 = [v34 caseInsensitiveCompare:@"https"] == 0;

        if (!v33)
        {
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v6 = sub_1000040B0(0xFFFFFFFFFFFFFFE8, @"Invaild fwURL from AST2", 0);
LABEL_34:
    v22 = 0;
    goto LABEL_17;
  }

  v22 = 0;
  v23 = 0;
  v25 = -24;
LABEL_19:
  if (a3)
  {
    *a3 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&buf, 8);

  return v25;
}

- (int64_t)_downloadVeridianFirmwareWithError:(id *)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VeridianFWUpdateController _downloadVeridianFirmwareWithError:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v39 = [NSURL fileURLWithPath:@"/private/var/tmp/VeridianFWImage/FirmwareMap.plist"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3032000000;
  v66 = sub_100001F7C;
  v67 = sub_100001F8C;
  v68 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100001F7C;
  v58 = sub_100001F8C;
  v59 = dispatch_semaphore_create(0);
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_100001F7C;
  v52[4] = sub_100001F8C;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100001F7C;
  v46 = sub_100001F8C;
  v47 = 0;
  mkdir("/private/var/tmp/VeridianFWImage/", 0x1C0u);
  v5 = 0;
  v40 = 0;
  v6 = 0;
  v37 = -23;
  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v43[5];
    v43[5] = 0;

    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:@"/private/var/tmp/VeridianFWImage/FirmwareMap.plist"];

    if (v10)
    {
      v11 = +[NSFileManager defaultManager];
      [v11 removeItemAtPath:@"/private/var/tmp/VeridianFWImage/FirmwareMap.plist" error:0];
    }

    sleep(v5);
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 67109120;
      LODWORD(v61) = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Downloading the FirmwareMap:counter:%d", v60, 8u);
    }

    v13 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v14 = objc_opt_new();
    v15 = [NSURLSession sessionWithConfiguration:v13 delegate:v14 delegateQueue:0];
    v16 = [(VeridianFWUpdateController *)self fwURL];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100002874;
    v41[3] = &unk_100008358;
    v41[4] = &buf;
    v41[5] = &v48;
    v41[6] = v52;
    v41[7] = &v42;
    v41[8] = &v54;
    v17 = [v15 downloadTaskWithURL:v16 completionHandler:v41];
    [v17 resume];

    v18 = v55[5];
    v19 = [(VeridianFWUpdateController *)self inputs];
    v20 = [v19 timeoutPeriod];
    v21 = dispatch_time(0, 1000000000 * [v20 intValue]);
    v22 = dispatch_semaphore_wait(v18, v21);

    if (v22 || !*(*(&buf + 1) + 40) || v43[5] || (v49[3] & 1) == 0)
    {
      v23 = handleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v34 = *(*(&buf + 1) + 40);
        v35 = v43[5];
        *v60 = 138412546;
        v61 = v34;
        v62 = 2112;
        v63 = v35;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to download firmwareMap::location:%@:error:%@", v60, 0x16u);
      }

      v24 = 0;
    }

    else
    {
      v27 = handleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Asset download success", v60, 2u);
      }

      v28 = [v39 SHA256DigestString];

      v29 = [(VeridianFWUpdateController *)self fwDigest];
      v30 = [v29 caseInsensitiveCompare:v28] == 0;

      if (v30)
      {
        v23 = handleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Asset digest match success", v60, 2u);
        }

        v37 = 0;
        v24 = 1;
      }

      else
      {
        v31 = [(VeridianFWUpdateController *)self fwDigest];
        v23 = [NSString stringWithFormat:@"Digest Mismatched, Download Failure:%@:%@", v31, v28];

        v32 = sub_1000040B0(0xFFFFFFFFFFFFFFE9, v23, 0);
        v33 = v43[5];
        v43[5] = v32;

        v24 = 0;
      }

      v40 = v28;
    }

    objc_autoreleasePoolPop(v7);
    if (v6++ > 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v24;
    }

    v5 += 3;
  }

  while (v26 != 1);
  if (a3)
  {
    *a3 = v43[5];
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&buf, 8);

  return v37;
}

- (int64_t)_updateVeridianFirmwareWithError:(id *)a3
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v75 = "[VeridianFWUpdateController _updateVeridianFirmwareWithError:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v70 = 0;
  v71 = 0;
  v56 = [NSNumber numberWithInt:3];
  v68 = 0;
  v69 = 0;
  v4 = CFURLCreateWithFileSystemPath(0, @"/private/var/tmp/VeridianFWImage/", kCFURLPOSIXPathStyle, 1u);
  CStringPtr = CFStringGetCStringPtr(@"T200", 0x8000100u);
  v55 = MGGetBoolAnswer();
  v54 = CStringPtr;
  if (CStringPtr && v4)
  {
    v6 = 0;
    v7 = 0;
    v50 = -24;
    v8 = kCFAllocatorDefault;
    v46 = kT200OptionRestoreInternal;
    key = kT200TagFWSkipSameVersion;
    v53 = kT200TagPreflightContext;
    v52 = kT200PreflightContextLimited;
    v51 = kT200TagDeferredCommit;
    v49 = kAMAuthInstallUpdaterDeviceInfo;
    v48 = v4;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v68 = 0;
      v69 = 0;

      Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        v17 = handleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000044C0(&v66, v67);
        }

        goto LABEL_23;
      }

      v11 = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!v11)
      {
        v17 = handleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100004494(&v64, v65);
        }

        v6 = 0;
        v22 = 0;
        goto LABEL_32;
      }

      v12 = v11;
      if (v55)
      {
        v13 = [(VeridianFWUpdateController *)self inputs];
        v14 = [v13 forceUpdate];

        if (v14)
        {
          v15 = +[MSUDataAccessor sharedDataAccessor];
          v63 = 0;
          v16 = [v15 copyPathForPersonalizedData:7 error:&v63];
          v17 = v63;

          v18 = handleForCategory();
          v19 = v18;
          if (!v16 || v17)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v75 = v16;
              *&v75[8] = 2112;
              *&v75[10] = v17;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get prebootPath: %@, error: %@", buf, 0x16u);
            }

LABEL_23:
            v6 = 0;
            v22 = 0;
            goto LABEL_32;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v75 = v16;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "prebootPath: %@", buf, 0xCu);
          }

          CFDictionarySetValue(v12, @"RestoreSystemPartition", v16);
          CFDictionarySetValue(v12, v46, kCFBooleanTrue);
          CFDictionarySetValue(v12, key, kCFBooleanFalse);
        }
      }

      CFDictionarySetValue(v12, v53, v52);
      CFDictionarySetValue(v12, v51, kCFBooleanFalse);
      CFDictionarySetValue(Mutable, kT200OptionUpdateType, v56);
      CFDictionarySetValue(Mutable, @"BundlePath", v4);
      CFDictionarySetValue(Mutable, @"Options", v12);
      v20 = T200UpdaterCreate();
      v6 = v71;
      if (!v20 || v71)
      {
        v71 = 0;
        v17 = handleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *v75 = v54;
          *&v75[8] = 2112;
          *&v75[10] = v6;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create %s obj::error:%@", buf, 0x16u);
        }

        v22 = 0;
LABEL_30:
        v23 = -24;
LABEL_31:
        v50 = v23;
        goto LABEL_32;
      }

      v21 = handleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created the Veridian Updater", buf, 2u);
      }

      if (T200UpdaterIsDone())
      {
        v6 = 0;
        v22 = 0;
        goto LABEL_33;
      }

      v22 = 0;
      while (1)
      {
        v6 = v71;
        if (v71)
        {
          v71 = 0;
          v17 = handleForCategory();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

LABEL_65:
          *buf = 138412290;
          *v75 = v6;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "T200UpdaterExecCommand failed:%@", buf, 0xCu);
          goto LABEL_30;
        }

        v25 = T200UpdaterExecCommand();
        v6 = v71;
        if (!v25 || v71)
        {
          v71 = 0;
          v17 = handleForCategory();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          goto LABEL_65;
        }

        v26 = handleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v75 = v69;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Device Info Dict is %@", buf, 0xCu);
        }

        CFDictionarySetValue(Mutable, v49, v69);
        v27 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
        if (!v27)
        {
          v17 = handleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100004468(&v61, v62);
          }

          v6 = 0;
          v23 = -15;
          goto LABEL_31;
        }

        v28 = v27;
        v29 = [(VeridianFWUpdateController *)self inputs];
        if ([v29 useAppleConnect])
        {

          v30 = &handleForCategory_ptr;
        }

        else
        {
          v30 = &handleForCategory_ptr;
          v31 = +[CRPersonalizationManager shouldPersonalizeWithSSOByDefault];

          if ((v31 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        if ([v30[62] enableSSO:v28])
        {
          v17 = handleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10000443C(&v59, v60);
          }

          v6 = 0;
          v41 = -15;
          goto LABEL_79;
        }

LABEL_48:
        v32 = [v30[62] initWithAuthInstallObj:v28];
        v58 = 0;
        v33 = [v32 getBMUTicketForVeridianFWUpdateWithOptions:Mutable BMUTicket:&v70 error:&v58];
        v6 = v58;

        v34 = handleForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v75 = v70;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "BMU ticket:%@", buf, 0xCu);
        }

        if (!v33 || !v70 || v6)
        {
          break;
        }

        v35 = +[CRBatteryController getBMUType];
        v17 = [NSString stringWithFormat:@"%@, Ticket", v35];

        CFDictionaryAddValue(Mutable, v17, v70);
        v72 = kT200SkipFirmwareMapStore;
        v73 = &__kCFBooleanTrue;
        CFDictionaryAddValue(Mutable, @"Options", [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1]);
        v36 = T200UpdaterExecCommand();
        v6 = v71;
        if (!v36 || v71)
        {
          v71 = 0;
          v40 = handleForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v75 = v6;
            *&v75[8] = 2112;
            *&v75[10] = v68;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "T200UpdaterExecCommand failed: %@:%@", buf, 0x16u);
          }

          v41 = -24;
LABEL_79:
          v50 = v41;
          goto LABEL_80;
        }

        v37 = handleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Veridian Firmware Update Successful", buf, 2u);
        }

        v22 = 1;
        v4 = v48;
        if (T200UpdaterIsDone())
        {
          v6 = 0;
          v50 = 0;
          goto LABEL_33;
        }
      }

      v38 = +[CRPersonalizationManager IsTatsuErrorNetworkingRelated:](CRPersonalizationManager, "IsTatsuErrorNetworkingRelated:", [v6 code]);
      v39 = -15;
      if (v38)
      {
        v39 = -13;
      }

      v50 = v39;
      v17 = handleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *v75 = v33;
        *&v75[4] = 2112;
        *&v75[6] = v6;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Veridan FW Personalization failed:%d:%@", buf, 0x12u);
      }

LABEL_80:
      v4 = v48;
LABEL_32:

LABEL_33:
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      objc_autoreleasePoolPop(v9);
      if ((v22 & 1) == 0)
      {
        v24 = v7++ >= 2;
        v8 = kCFAllocatorDefault;
        if (!v24)
        {
          continue;
        }
      }

      goto LABEL_84;
    }
  }

  v42 = handleForCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    sub_1000044EC();
  }

  v6 = 0;
  v50 = -24;
LABEL_84:
  if (a3)
  {
    v43 = v6;
    *a3 = v6;
  }

  AMSupportSafeRelease();

  return v50;
}

- (int64_t)_validateDeviceWithError:(id *)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[VeridianFWUpdateController _validateDeviceWithError:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  if (([CRFDRBaseDeviceHandler isFDRDataClassSupported:@"vcrt"]& 1) == 0)
  {
    v9 = @"Veridian FW Update not supported";
LABEL_14:
    v7 = -22;
    v10 = -22;
    goto LABEL_15;
  }

  if (!&kT200SkipFirmwareMapStore || !&_T200UpdaterExecCommand || !&_T200UpdaterIsDone || !&kT200OptionUpdateType || !&_T200UpdaterCreate)
  {
    v9 = @"Veridian symbols absent";
    goto LABEL_14;
  }

  v5 = objc_opt_new();
  v6 = [v5 isFirstAuthComplete];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = @"Veridian First Auth Not Complete";
  v7 = -21;
  v10 = -21;
LABEL_15:
  v8 = sub_1000040B0(v10, v9, 0);
  if (a3)
  {
LABEL_16:
    v8 = v8;
    *a3 = v8;
  }

LABEL_17:

  return v7;
}

@end