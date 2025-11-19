id STStorageLocStr(void *a1)
{
  v1 = qword_C798;
  v2 = a1;
  if (v1 != -1)
  {
    sub_2A64();
  }

  v3 = [qword_C790 localizedStringForKey:v2 value:v2 table:0];

  return v3;
}

void sub_145C(id a1)
{
  qword_C790 = [NSBundle bundleForClass:NSClassFromString(@"STStorageController")];

  _objc_release_x1();
}

void sub_1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (([v4 isEqualToString:@"com.apple.news"] & 1) == 0)
  {
    v5 = [v3 size];
    if (v5 >= 1)
    {
      v6 = v5;
      *(*(*(a1 + 40) + 8) + 24) += v5;
      if ([v3 size] >= 50000001)
      {
        [*(a1 + 32) addObject:v3];
      }

      if ([v3 purgeabilityScoreAtUrgency:3])
      {
        *(*(*(a1 + 48) + 8) + 24) += v6;
      }
    }
  }

  return 1;
}

int64_t sub_1BB0(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a3;
  v5 = [(CacheManagementAsset *)a2 size];
  v6 = [(CacheManagementAsset *)v4 size];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_22A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 24) setImmediateGain:{objc_msgSend(v4, "purgeableSize")}];
  }
}

void sub_23C8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[3])
  {
    v11 = v3;
    LODWORD(v12) = -1.0;
    [v11 setActivationPercent:v12];
    if ((+[UIApplication isRunningInStoreDemoMode]& 1) == 0)
    {
      [*(a1 + 40) setAutoDemoteEnabled:1];
      v13 = dispatch_semaphore_create(0);
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v14 = qword_C7B0;
      v27 = qword_C7B0;
      if (!qword_C7B0)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_28AC;
        v23[3] = &unk_83D8;
        v23[4] = &v24;
        sub_28AC(v23);
        v14 = v25[3];
      }

      v15 = v14;
      _Block_object_dispose(&v24, 8);
      v16 = objc_opt_new();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_26C4;
      v21[3] = &unk_8368;
      v22 = v13;
      v17 = v13;
      [v16 startWithCompletionHandler:v21];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    usleep(0xF4240u);
    LODWORD(v18) = 1.0;
    [v11 setActivationPercent:v18];
    [*(a1 + 32) setSize:0];
    [*(a1 + 32) setImmediateGain:0];
    v19 = STStorageLocStr(@"OPTIMIZE_APPS_ENABLED");
    [*(a1 + 32) setInfoText:v19];
  }

  else if (v3 == v2[9])
  {
    v4 = [v2[10] longLongValue];
    v5 = @"Low";
    if (v4 <= 10485760)
    {
      v5 = @"Large";
    }

    v6 = *(*(a1 + 40) + 80);
    v7 = v5;
    [v6 longLongValue];
    v8 = STFormattedSize();
    v20 = [NSString stringWithFormat:@"[%@ System Data]: %@ of System Data", v7, v8];

    v9 = STTapToRadarURLWithTitle();
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    [v10 openURL:v9 configuration:0 completionHandler:0];
  }
}

void sub_2860(id a1)
{
  qword_C7A0 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];

  _objc_release_x1();
}

Class sub_28AC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_C7B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_29F0;
    v4[4] = &unk_8410;
    v4[5] = v4;
    v5 = off_83F8;
    v6 = 0;
    qword_C7B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_C7B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDPushCacheDeleteUpdateRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2A8C();
  }

  qword_C7B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C7B8 = result;
  return result;
}