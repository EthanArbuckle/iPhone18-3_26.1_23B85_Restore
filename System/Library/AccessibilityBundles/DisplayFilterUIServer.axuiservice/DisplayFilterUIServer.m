uint64_t sub_10F8(uint64_t a1)
{
  qword_CB18 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_13FC(uint64_t a1)
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [*(a1 + 32) _overlayController];
  v4 = *(a1 + 32);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_14BC;
  v8 = &unk_8248;
  v9 = v4;
  [v2 addContentViewController:v3 withUserInteractionEnabled:0 forService:? context:? completion:?];
}

void sub_14BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1550;
  v3[3] = &unk_8220;
  v3[4] = *(a1 + 32);
  [v2 fadeToBlackAndComeBack:v3 completion:1.0];
}

void sub_1550(uint64_t a1)
{
  v2 = +[AXSubsystemInvertColors sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemInvertColors identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v12, 0xCu);
      }
    }
  }

  v9 = +[AXUIDisplayManager sharedDisplayManager];
  v10 = [*(a1 + 32) _overlayController];
  [v9 removeContentViewController:v10 withUserInteractionEnabled:0 forService:*(a1 + 32)];

  [*(a1 + 32) set_overlayController:0];
  v11 = +[AXUIServiceManager sharedServiceManager];
  [v11 endTransactionWithIdentifier:@"SmartInvertDisplay" forService:*(a1 + 32)];
}

void sub_1CFC(uint64_t a1)
{
  v1 = [*(a1 + 32) _filterView];
  [v1 setAlpha:1.0];
}

void sub_1D44(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + v1) * 0.25;
  v3 = v1 * 0.25;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1E44;
  v6[3] = &unk_8220;
  v6[4] = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1E8C;
  v4[3] = &unk_8270;
  v5 = *(a1 + 40);
  [UIView animateWithDuration:0 delay:v6 options:v4 animations:v2 completion:v3];
}

void sub_1E44(uint64_t a1)
{
  v1 = [*(a1 + 32) _filterView];
  [v1 setAlpha:0.0];
}

uint64_t sub_1E8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}