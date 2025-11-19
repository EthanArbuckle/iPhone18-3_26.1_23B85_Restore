@interface UpdatePluginsController
- (id)diskPluginsMap;
- (int64_t)_downloadPDIWithCDN:(id *)a3;
- (int64_t)_downloadPDIWithMobileAsset:(id *)a3;
- (int64_t)_performPluginsUpdateWithError:(id *)a3;
- (int64_t)_requestUpdateURLAndDigestFromAST2WithError:(id *)a3;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation UpdatePluginsController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[UpdatePluginsController setupWithInputs:responder:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v12, 0x20u);
  }

  [(UpdatePluginsController *)self setInputs:v6];
  diagsReponder = self->diagsReponder;
  self->diagsReponder = v7;

  v10 = [(UpdatePluginsController *)self inputs];

  if (!v10)
  {
    v11 = [(UpdatePluginsController *)self result];
    [v11 setStatusCode:&off_100008CB8];

    [(UpdatePluginsController *)self setFinished:1];
  }
}

- (int64_t)_downloadPDIWithMobileAsset:(id *)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UpdatePluginsController _downloadPDIWithMobileAsset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x3032000000;
  v67 = sub_1000021D8;
  v68 = sub_1000021E8;
  v69 = 0;
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.MobileAsset", @"RepairUpdate"];
  v51 = +[NSFileManager defaultManager];
  v6 = objc_alloc_init(MAAutoAssetPolicy);
  [v6 setUserInitiated:1];
  v7 = dispatch_semaphore_create(0);
  v64 = v5;
  v52 = [NSArray arrayWithObjects:&v64 count:1];
  v57[1] = _NSConcreteStackBlock;
  v57[2] = 3221225472;
  v57[3] = sub_1000021F0;
  v57[4] = &unk_1000082F0;
  p_buf = &buf;
  v8 = v7;
  v58 = v8;
  MAPurgeAll();
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(*(&buf + 1) + 40);
  if (v9)
  {
    v48 = sub_10000425C(0xFFFFFFFFFFFFFFE9, @"Failed to purge existing asset", v9);
LABEL_56:
    v37 = v48;
    v19 = 0;
    v27 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_46;
  }

  v10 = [[MAAutoAssetSelector alloc] initForAssetType:v5 withAssetSpecifier:@"RepairUpdate"];
  if (!v10)
  {
    v48 = sub_10000425C(0xFFFFFFFFFFFFFFE9, @"Failed to init assetSelector", 0);
    goto LABEL_56;
  }

  v57[0] = 0;
  v11 = [[MAAutoAsset alloc] initForClientName:@"RepairUpdateClient" selectingAsset:v10 error:v57];
  v12 = v57[0];
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 138412546;
      v61 = v5;
      v62 = 2112;
      v63 = @"RepairUpdate";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Start to download assetType: %@, assetSpecifier: %@", v60, 0x16u);
    }

    v15 = [(UpdatePluginsController *)self inputs];
    v16 = [v15 timeoutPeriod];
    v17 = [v16 intValue];
    v18 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    v56 = v10;
    v19 = [v11 lockContentSync:@"lockRepairUpdateContent" withUsagePolicy:v6 withTimeout:v17 lockedAssetSelector:&v56 newerInProgress:0 error:&obj];
    v49 = v56;

    objc_storeStrong((v18 + 40), obj);
    v20 = *(*(&buf + 1) + 40);
    if (!v19 || v20)
    {
      v35 = [CRUtils getInnermostNSError:v20];
      if ([*(*(&buf + 1) + 40) code] == 6201)
      {
        v36 = handleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No matching asset to download", v60, 2u);
        }

        v37 = 0;
      }

      else
      {
        v38 = [v35 code];
        v39 = *(*(&buf + 1) + 40);
        if (v38 == 59)
        {
          v40 = @"Can not find host";
          v41 = -13;
        }

        else
        {
          v43 = [*(*(&buf + 1) + 40) code];
          v39 = *(*(&buf + 1) + 40);
          v44 = v43 == 6505;
          if (v43 == 6505)
          {
            v41 = -2;
          }

          else
          {
            v41 = -23;
          }

          if (v44)
          {
            v40 = @"Download mobile asset timeout";
          }

          else
          {
            v40 = @"Failed to lock asset";
          }
        }

        v37 = sub_10000425C(v41, v40, v39);
      }
    }

    else
    {
      v21 = handleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 138412290;
        v61 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Lock asset successfully, local asset path: %@", v60, 0xCu);
      }

      v22 = [v11 endLockUsageSync:@"lockRepairUpdateContent"];
      v23 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v22;

      v24 = *(*(&buf + 1) + 40);
      if (!v24)
      {
        v25 = handleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unlock asset successfully", v60, 2u);
        }

        mkdir("/private/var/mobile/RepairDiskImage/", 0x1C0u);
        v26 = [v19 absoluteString];
        v27 = [NSString stringWithFormat:@"%@/FactoryDiskImagePersonalized.dmg", v26];

        if ([v51 fileExistsAtPath:v27])
        {
          v28 = handleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v60 = 138412290;
            v61 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Find Mobile Asset PDI at: %@", v60, 0xCu);
          }

          if ([v51 fileExistsAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"])
          {
            v29 = *(&buf + 1);
            v54 = *(*(&buf + 1) + 40);
            v30 = [v51 removeItemAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg" error:&v54];
            objc_storeStrong((v29 + 40), v54);
            if (!v30)
            {
              v37 = sub_10000425C(0xFFFFFFFFFFFFFFE9, @"Failed to remove existing asset", *(*(&buf + 1) + 40));
              goto LABEL_45;
            }

            v31 = handleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v60 = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Remove existing asset successfully", v60, 2u);
            }
          }

          v32 = *(&buf + 1);
          v53 = *(*(&buf + 1) + 40);
          [v51 moveItemAtPath:v27 toPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg" error:&v53];
          objc_storeStrong((v32 + 40), v53);
          if ([v51 fileExistsAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"] && !*(*(&buf + 1) + 40))
          {
            v37 = 0;
            goto LABEL_35;
          }

          v33 = [NSString stringWithFormat:@"Failed to move Mobile Asset PDI to: %@", @"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"];
          v34 = sub_10000425C(0xFFFFFFFFFFFFFFE9, v33, *(*(&buf + 1) + 40));
        }

        else
        {
          v33 = [NSString stringWithFormat:@"Download asset successfully, but there is no Mobile Asset PDI at: %@", v27];
          v34 = sub_10000425C(0xFFFFFFFFFFFFFFE9, v33, 0);
        }

        v37 = v34;

LABEL_35:
        v42 = dispatch_semaphore_create(0);

        v8 = v42;
        MAPurgeAll();

        dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
LABEL_45:
        v10 = v49;
        goto LABEL_46;
      }

      v37 = sub_10000425C(0xFFFFFFFFFFFFFFE9, @"Failed to unlock asset", v24);
    }

    v27 = 0;
    goto LABEL_45;
  }

  v37 = sub_10000425C(0xFFFFFFFFFFFFFFE9, @"Failed to init autoAsset", v12);

  v19 = 0;
  v27 = 0;
LABEL_46:
  if (a3)
  {
    v45 = v37;
    *a3 = v37;
  }

  if (v37)
  {
    v46 = [v37 code];
  }

  else
  {
    v46 = 0;
  }

  _Block_object_dispose(&buf, 8);
  return v46;
}

- (int64_t)_requestUpdateURLAndDigestFromAST2WithError:(id *)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UpdatePluginsController _requestUpdateURLAndDigestFromAST2WithError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = sub_1000021D8;
  v58 = sub_1000021E8;
  v59 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1000021D8;
  v49 = sub_1000021E8;
  v50 = 0;
  v6 = MGCopyAnswer();
  if (!v6)
  {
    v21 = sub_10000425C(0xFFFFFFFFFFFFFFD6, @"Failed to get OS version from MG", 0);
    v18 = 0;
    v14 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 138412290;
    v52 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request repair update pdiURL & pdiDigest with OS version: %@", v51, 0xCu);
  }

  v8 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v9 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:0];

  v10 = [(UpdatePluginsController *)self inputs];
  v11 = [v10 ast2RequestURL];
  v12 = [NSURL URLWithString:v11];
  v13 = [NSMutableURLRequest requestWithURL:v12];

  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v14 = +[NSMutableDictionary dictionary];
  [v14 setObject:v6 forKey:@"osVersion"];
  v15 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:0];
  [v13 setHTTPBody:v15];

  v16 = dispatch_semaphore_create(0);
  v17 = objc_autoreleasePoolPush();
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100002A88;
  v41[3] = &unk_100008340;
  v43 = &v45;
  p_buf = &buf;
  v18 = v16;
  v42 = v18;
  v19 = [v9 dataTaskWithRequest:v13 completionHandler:v41];
  [v19 resume];

  objc_autoreleasePoolPop(v17);
  v20 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v18, v20))
  {
    v21 = sub_10000425C(0xFFFFFFFFFFFFFFF3, @"Waiting for pdiURL & pdiDigest from AST2 timeout", 0);
LABEL_9:
    v22 = 0;
    v23 = 0;
LABEL_10:
    v24 = v46[5];
    v46[5] = v21;
    v25 = 1;
    goto LABEL_11;
  }

  if (v46[5])
  {
    v22 = 0;
    v23 = 0;
    v25 = 1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v27 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"plugin"];
  v23 = [v27 objectForKeyedSubscript:@"dmgURL"];

  v28 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"plugin"];
  v22 = [v28 objectForKeyedSubscript:@"dmgDigest"];

  if (v23 && v22)
  {
    v29 = [NSURL URLWithString:v23];
    [(UpdatePluginsController *)self setPdiURL:v29];

    [(UpdatePluginsController *)self setPdiDigest:v22];
    v30 = [(UpdatePluginsController *)self pdiURL];
    if (v30)
    {
      v40 = [(UpdatePluginsController *)self pdiURL];
      v39 = [v40 host];
      if (v39)
      {
        v38 = [(UpdatePluginsController *)self pdiURL];
        v37 = [v38 scheme];
        if ([v37 caseInsensitiveCompare:@"http"])
        {

          goto LABEL_28;
        }

        v36 = [(UpdatePluginsController *)self pdiURL];
        v34 = [v36 scheme];
        v35 = [v34 caseInsensitiveCompare:@"https"] == 0;

        if (!v35)
        {
LABEL_28:
          v24 = handleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v51 = 138412546;
            v52 = v23;
            v53 = 2112;
            v54 = v22;
            v31 = "Request repair udpate pdiURL: %@, pdiDigest: %@";
            v32 = v24;
            v33 = 22;
            goto LABEL_30;
          }

          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v21 = sub_10000425C(0xFFFFFFFFFFFFFFE8, @"Invaild PDI URL from AST2", 0);
    goto LABEL_10;
  }

  v24 = handleForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 0;
    v31 = "No need to update repair software";
    v32 = v24;
    v33 = 2;
LABEL_30:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, v51, v33);
  }

LABEL_31:
  v25 = 0;
LABEL_11:

  if (a3)
  {
LABEL_12:
    *a3 = v46[5];
  }

LABEL_13:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&buf, 8);

  return v25;
}

- (int64_t)_downloadPDIWithCDN:(id *)a3
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UpdatePluginsController _downloadPDIWithCDN:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v41 = [NSURL fileURLWithPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x3032000000;
  v65 = sub_1000021D8;
  v66 = sub_1000021E8;
  v67 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1000021D8;
  v59 = sub_1000021E8;
  v60 = dispatch_semaphore_create(0);
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_1000021D8;
  v53[4] = sub_1000021E8;
  v54 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000021D8;
  v47 = sub_1000021E8;
  v48 = 0;
  mkdir("/private/var/mobile/RepairDiskImage/", 0x1C0u);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v39 = -23;
  do
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v44[5];
    v44[5] = 0;

    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"];

    if (v11)
    {
      v12 = +[NSFileManager defaultManager];
      [v12 removeItemAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg" error:0];
    }

    sleep(v5);
    v13 = handleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v61 = 67109120;
      v62 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Downloading the Disk Image:counter:%d", v61, 8u);
    }

    v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v15 = objc_opt_new();
    v16 = [NSURLSession sessionWithConfiguration:v14 delegate:v15 delegateQueue:0];
    v17 = [(UpdatePluginsController *)self pdiURL];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100003344;
    v42[3] = &unk_100008368;
    v42[4] = &buf;
    v42[5] = &v49;
    v42[6] = v53;
    v42[7] = &v43;
    v42[8] = &v55;
    v18 = [v16 downloadTaskWithURL:v17 completionHandler:v42];
    [v18 resume];

    v19 = v56[5];
    v20 = [(UpdatePluginsController *)self inputs];
    v21 = [v20 timeoutPeriod];
    v22 = dispatch_time(0, 1000000000 * [v21 intValue]);
    v23 = dispatch_semaphore_wait(v19, v22);

    if (v23 || !*(*(&buf + 1) + 40) || v44[5] || (v50[3] & 1) == 0)
    {
      v24 = [(UpdatePluginsController *)self pdiDigest];
      v25 = [NSString stringWithFormat:@"Failed to download Disk Image::location:%@:error:%@", v24, v6];

      v26 = sub_10000425C(0xFFFFFFFFFFFFFFE9, v25, 0);
      v27 = v44[5];
      v44[5] = v26;

      v28 = 0;
    }

    else
    {
      v31 = handleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Asset download success", v61, 2u);
      }

      v32 = [v41 SHA256DigestString];

      v33 = [(UpdatePluginsController *)self pdiDigest];
      v34 = [v33 caseInsensitiveCompare:v32] == 0;

      if (v34)
      {
        v25 = handleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Asset digest match success", v61, 2u);
        }

        v39 = 0;
        v28 = 1;
      }

      else
      {
        v35 = [(UpdatePluginsController *)self pdiDigest];
        v25 = [NSString stringWithFormat:@"Digest Mismatched, Download Failure:%@:%@", v35, v32];

        v36 = sub_10000425C(0xFFFFFFFFFFFFFFE9, v25, 0);
        v37 = v44[5];
        v44[5] = v36;

        v28 = 0;
      }

      v6 = v32;
    }

    objc_autoreleasePoolPop(v8);
    if (v7++ > 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v28;
    }

    v5 += 3;
  }

  while (v30 != 1);
  if (a3)
  {
    *a3 = v44[5];
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&buf, 8);

  return v39;
}

- (int64_t)_performPluginsUpdateWithError:(id *)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[UpdatePluginsController _performPluginsUpdateWithError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v34 = 0;
  v35 = 0;
  v6 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
  v7 = [(UpdatePluginsController *)self inputs];
  if ([v7 useAppleConnect])
  {
  }

  else
  {
    v8 = +[CRPersonalizationManager shouldPersonalizeWithSSOByDefault];

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if ([CRPersonalizationManager enableSSO:v6])
  {
    v31 = @"Failed to enable single sign on";
LABEL_39:
    v25 = sub_10000425C(0xFFFFFFFFFFFFFFF1, v31, 0);
    goto LABEL_41;
  }

LABEL_7:
  v9 = [(UpdatePluginsController *)self inputs];
  v10 = [v9 tatsuURL];

  if (v10)
  {
    v11 = handleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting Custom signing URL", buf, 2u);
    }

    v12 = [(UpdatePluginsController *)self inputs];
    v13 = [v12 tatsuURL];
    v14 = AMAuthInstallSetSigningServerURL();

    if (v14)
    {
      v31 = @"Failed to set tatsu URL";
      goto LABEL_39;
    }
  }

  v15 = [CRPersonalizationManager initWithAuthInstallObj:v6];
  v33 = 0;
  v16 = [v15 getPDIAPTicketUsingCache:0 apTicketData:&v35 error:&v33];
  v17 = v33;

  if (!v16 || !v35 || v17)
  {
    if (+[CRPersonalizationManager IsTatsuErrorNetworkingRelated:](CRPersonalizationManager, "IsTatsuErrorNetworkingRelated:", [v17 code]))
    {
      v26 = -13;
    }

    else
    {
      v26 = -15;
    }

    v27 = [NSString stringWithFormat:@"Asset Personalization failed:%d:%@", v16, v17];
    v25 = sub_10000425C(v26, v27, 0);

    if (!v6)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v36[0] = kMobileStorageDeviceTypeKey;
  v36[1] = kMSMDiskImageTypeKey;
  v37[0] = kMobileStorageDeviceTypeDiskImage;
  v37[1] = kMSMDiskImageTypePersonalized;
  v36[2] = kMSMSignatureKey;
  v37[2] = v35;
  v18 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
  v19 = MobileStorageMountWithError();
  pdiMountPath = self->pdiMountPath;
  self->pdiMountPath = v19;

  if (!self->pdiMountPath)
  {
    v32 = v34;
    v25 = sub_10000425C(0xFFFFFFFFFFFFFFF1, @"Failed to mount disk image", v34);

LABEL_41:
    v26 = -20;
    if (!v6)
    {
      goto LABEL_34;
    }

LABEL_33:
    CFRelease(v6);
    goto LABEL_34;
  }

  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->pdiMountPath;
    *buf = 138412290;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully mounted the disk image at: %@", buf, 0xCu);
  }

  if (![(CRPluginsController *)self->pluginsHandle isApplicationInstalledWithMaxRetries:5 bundleName:@"com.apple.corerepair.PluginsUpdaterApp"])
  {
    v28 = [NSString stringWithFormat:@"Unable to find Application after %d retries", 5];
    v26 = -20;
    v25 = sub_10000425C(0xFFFFFFFFFFFFFFECLL, v28, 0);

    goto LABEL_32;
  }

  v23 = handleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Application found", buf, 2u);
  }

  if (([(CRPluginsController *)self->pluginsHandle rebuildApplicationDataBase]& 1) == 0)
  {
    v26 = -20;
    v25 = sub_10000425C(0xFFFFFFFFFFFFFFECLL, @"Failed to rebuild DB", 0);
LABEL_32:

    if (!v6)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v24 = handleForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rebuilding DB successfully", buf, 2u);
  }

  v25 = 0;
  v26 = 0;
  if (v6)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (a3)
  {
    v29 = v25;
    *a3 = v25;
  }

  return v26;
}

- (id)diskPluginsMap
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[UpdatePluginsController diskPluginsMap]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 appendString:self->pdiMountPath];
  [v4 appendString:@"/Applications/PluginsUpdaterApp.app/PlugIns/"];
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Repair Update plugin path is: %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSFileManager);
  v8 = [v7 enumeratorAtPath:v4];

  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v35 = v8;
    v36 = v4;
    v34 = v5;
    while (1)
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fileName:%@", buf, 0xCu);
      }

      if ([v10 hasSuffix:@"Info.plist"])
      {
        break;
      }

      v17 = v11;
LABEL_26:
      v31 = [v8 nextObject];

      v10 = v31;
      if (!v31)
      {
        goto LABEL_30;
      }
    }

    v13 = objc_opt_new();
    [v13 appendString:v4];
    [v13 appendString:v10];
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FullPath:%@", buf, 0xCu);
    }

    v15 = [NSURL fileURLWithPath:v13];
    v37 = v11;
    v16 = [NSDictionary dictionaryWithContentsOfURL:v15 error:&v37];
    v17 = v37;

    if (!v17 && v16 && [v16 count])
    {
      v18 = handleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Plist:%@", buf, 0xCu);
      }

      v19 = [v16 objectForKeyedSubscript:@"NSExtension"];
      if (!v19)
      {
        goto LABEL_25;
      }

      v20 = v19;
      v21 = [v16 objectForKeyedSubscript:@"NSExtension"];
      v22 = [v21 objectForKeyedSubscript:@"NSExtensionAttributes"];
      if (v22)
      {
        v23 = v22;
        v24 = [v16 objectForKeyedSubscript:@"NSExtension"];
        v25 = [v24 objectForKeyedSubscript:@"NSExtensionAttributes"];
        v26 = [v25 objectForKeyedSubscript:@"DKDiagnosticIdentifier"];

        v5 = v34;
        if (!v26)
        {
LABEL_25:

          v11 = v17;
          v8 = v35;
          v4 = v36;
          goto LABEL_26;
        }

        v27 = [v16 objectForKeyedSubscript:@"NSExtension"];
        v28 = [v27 objectForKeyedSubscript:@"NSExtensionAttributes"];
        v20 = [v28 objectForKeyedSubscript:@"DKDiagnosticIdentifier"];

        v29 = [v16 objectForKeyedSubscript:@"CFBundleShortVersionString"];
        v30 = [v20 stringValue];
        [v34 setObject:v29 forKeyedSubscript:v30];
      }

      else
      {
      }
    }

    else
    {
      v20 = handleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v17;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to read file, error: %@", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  v17 = 0;
LABEL_30:
  v32 = handleForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Plugins map is: %@", buf, 0xCu);
  }

  return v5;
}

- (void)start
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[UpdatePluginsController start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = objc_opt_new();
  pluginsHandle = self->pluginsHandle;
  self->pluginsHandle = v4;

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v9 = sub_10000425C(0xFFFFFFFFFFFFFFB8, @"Device should reboot to Diagnostics mode", 0);
    v16 = 0;
    v8 = -20;
    goto LABEL_21;
  }

  v6 = [(UpdatePluginsController *)self inputs];
  v7 = [v6 useMobileAsset];

  if (v7)
  {
    v45 = 0;
    v8 = [(UpdatePluginsController *)self _downloadPDIWithMobileAsset:&v45];
    v9 = v45;
    if (v8)
    {
      v37 = handleForCategory();
      if (sub_100004244(v37))
      {
        sub_100004238(5.7779e-34);
        v36 = "Failed to download asset with MobileAsset, error: %@";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_14;
    }

    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:@"/private/var/mobile/RepairDiskImage/FactoryDiskImagePersonalized.dmg"];

    if ((v11 & 1) == 0)
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No need to update repair software", buf, 2u);
      }

      goto LABEL_41;
    }
  }

  else
  {
    v13 = [(UpdatePluginsController *)self inputs];
    v7 = [v13 needRequestURL];

    if (v7)
    {
      v44 = 0;
      v8 = [(UpdatePluginsController *)self _requestUpdateURLAndDigestFromAST2WithError:&v44];
      v9 = v44;
      if (v8)
      {
        v39 = handleForCategory();
        if (sub_100004244(v39))
        {
          sub_100004238(5.7779e-34);
          v36 = "Failed to get repair update URL and digest, error: %@";
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      v14 = [(UpdatePluginsController *)self pdiURL];
      if (!v14)
      {
LABEL_41:
        v8 = 0;
        goto LABEL_14;
      }

      v15 = v14;
      v8 = [(UpdatePluginsController *)self pdiDigest];

      if (!v8)
      {
LABEL_14:
        v16 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v17 = [(UpdatePluginsController *)self inputs];
      v18 = [v17 PDIURL];
      [(UpdatePluginsController *)self setPdiURL:v18];

      v19 = [(UpdatePluginsController *)self inputs];
      v20 = [v19 PDIDigest];
      [(UpdatePluginsController *)self setPdiDigest:v20];

      v9 = 0;
    }

    v7 = v9;
    v43 = v9;
    v8 = [(UpdatePluginsController *)self _downloadPDIWithCDN:&v43];
    v9 = v43;

    if (v8)
    {
      v38 = handleForCategory();
      if (sub_100004244(v38))
      {
        sub_100004238(5.7779e-34);
        v36 = "Asset Download Failed:%@";
        goto LABEL_48;
      }

      goto LABEL_49;
    }
  }

  v7 = v9;
  v42 = v9;
  v8 = [(UpdatePluginsController *)self _performPluginsUpdateWithError:&v42];
  v9 = v42;

  if (v8)
  {
    v35 = handleForCategory();
    if (sub_100004244(v35))
    {
      sub_100004238(5.7779e-34);
      v36 = "Failed to update plugins, error: %@";
LABEL_48:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v16 = [(UpdatePluginsController *)self diskPluginsMap];
  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reloading the Diagnostics Plugins", buf, 2u);
  }

  [(DKResponder *)self->diagsReponder requestPluginReloadOnFinishWithCompletion:&stru_1000082C8];
  v8 = 0;
LABEL_21:
  v22 = [CRUtils getInnermostNSError:v9];

  v23 = [NSNumber numberWithInteger:v8];
  v24 = [(UpdatePluginsController *)self result];
  [v24 setStatusCode:v23];

  v46[0] = @"MountPath";
  pdiMountPath = self->pdiMountPath;
  v26 = pdiMountPath;
  if (!pdiMountPath)
  {
    v26 = +[NSNull null];
  }

  v47[0] = v26;
  v47[1] = @"1.0";
  v46[1] = @"pluginVersion";
  v46[2] = @"error";
  v27 = [v22 description];
  v28 = v27;
  if (!v27)
  {
    v28 = +[NSNull null];
  }

  v47[2] = v28;
  v46[3] = @"errorCode";
  v41 = v22;
  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 code]);
  v30 = v29;
  if (!v29)
  {
    v30 = +[NSNull null];
  }

  v47[3] = v30;
  v46[4] = @"newPluginVersions";
  v31 = v16;
  v32 = v16;
  if (!v16)
  {
    v31 = +[NSNull null];
  }

  v47[4] = v31;
  v33 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];
  v34 = [(UpdatePluginsController *)self result];
  [v34 setData:v33];

  if (v32)
  {
    if (v29)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_31;
    }
  }

LABEL_31:
  if (!v27)
  {
  }

  if (!pdiMountPath)
  {
  }

  [(UpdatePluginsController *)self setFinished:1];
}

@end