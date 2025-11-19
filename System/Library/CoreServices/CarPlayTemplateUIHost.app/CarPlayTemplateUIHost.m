id sub_100001280(unint64_t a1)
{
  if (a1 >= 0x1E)
  {
    sub_10000E3A8();
  }

  if (qword_1000254E8 != -1)
  {
    sub_1000012F0();
  }

  v2 = qword_1000253F8[a1];

  return v2;
}

void sub_100001414(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  [v3 setUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
}

void sub_1000024D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002518(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 applicationWindowScene];
  v10 = a1[4];

  if (v9 == v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000029F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100002A30(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 ownsWindowScene:a1[4]])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100003230(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100004624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v30 - 144));
  _Unwind_Resume(a1);
}

void sub_10000467C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004724;
  v4[3] = &unk_10001C410;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v2 updateSettingsWithBlock:v4];
}

void sub_100004724(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 view];
  [v4 bounds];
  [v3 setFrame:?];
}

void sub_100004788(uint64_t a1, void *a2)
{
  v3 = [a2 settings];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CRSUIMapStyleProviding])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained scene];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004860;
    v7[3] = &unk_10001C410;
    v8 = WeakRetained;
    v6 = WeakRetained;
    [v5 updateSettingsWithBlock:v7];
  }
}

void sub_100004860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setMapStyle:{objc_msgSend(v2, "mapStyle")}];
}

void sub_1000048B8(uint64_t a1, void *a2)
{
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating frameRateLimit on template scene", buf, 2u);
  }

  v5 = [a2 settings];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___CRSUIFrameRateLimitProviding])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained scene];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000049DC;
    v9[3] = &unk_10001C410;
    v10 = WeakRetained;
    v8 = WeakRetained;
    [v7 updateSettingsWithBlock:v9];
  }
}

void sub_1000049DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 frameRateLimit];
  [v3 setFrameRateLimit:v4];
}

void sub_100004BEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 view];
  [v4 bounds];
  [v5 setFrame:?];

  [*(a1 + 32) _safeAreaInsets];
  [v5 setSafeAreaInsetsPortrait:?];
}

void sub_100005060(id a1, UIMutableScenePresentationContext *a2)
{
  v2 = a2;
  [(UIMutableScenePresentationContext *)v2 setAppearanceStyle:1];
  v3 = +[UIColor clearColor];
  [(UIMutableScenePresentationContext *)v2 setBackgroundColorWhileHosting:v3];
}

void sub_1000050CC(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneHostView];
  v3 = [v2 _window];
  v4 = [v3 _contextId];

  v5 = [*(a1 + 32) sceneHostView];
  v6 = [v5 layer];
  RenderId = CALayerGetRenderId();

  v8 = [*(a1 + 32) scene];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000051C4;
  v9[3] = &unk_10001C4C0;
  v10 = v4;
  v9[4] = RenderId;
  [v8 updateUISettingsWithBlock:v9];
}

void sub_1000051C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setHostContextIdentifierForSnapshotting:v3];
  [v4 setScenePresenterRenderIdentifierForSnapshotting:*(a1 + 32)];
}

void sub_10000573C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id sub_10000576C(uint64_t a1)
{
  v2 = objc_alloc_init(FBMutableProcessExecutionContext);
  if ([*(a1 + 32) isForeground])
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  [v2 setLaunchIntent:v3];

  return v2;
}

id sub_1000057D0(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDescription];
  if (BSLogStateCaptureCheckPlistSizeIsPermitted())
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(a1 + 32) description];
  }

  v4 = v3;

  return v4;
}

void sub_100005838(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateUserInterfaceStyle];
  [WeakRetained setCurrentTransaction:0];
  v2 = [WeakRetained pendingTransaction];

  if (v2)
  {
    v3 = [WeakRetained pendingTransaction];
    [WeakRetained setPendingTransaction:0];
    [WeakRetained setCurrentTransaction:v3];
    [v3 begin];
  }
}

void sub_1000058E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UIOpenURLAction alloc];
  v5 = [v3 URL];

  v6 = [v4 initWithURL:v5];
  [*(a1 + 32) addObject:v6];
}

void sub_100005E78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  [v3 setUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
}

void sub_1000064D0(id a1)
{
  v1 = os_log_create("com.apple.CarPlayApp", "Default");
  v2 = qword_1000253F8[0];
  qword_1000253F8[0] = v1;

  v3 = os_log_create("com.apple.CarPlayApp", "Applications");
  v4 = qword_100025400;
  qword_100025400 = v3;

  v5 = os_log_create("com.apple.CarPlayApp", "Dashboard");
  v6 = qword_100025408;
  qword_100025408 = v5;

  v7 = os_log_create("com.apple.CarPlayApp", "Siri");
  v8 = qword_100025410;
  qword_100025410 = v7;

  v9 = os_log_create("com.apple.CarPlayApp", "Dock");
  v10 = qword_100025418;
  qword_100025418 = v9;

  v11 = os_log_create("com.apple.CarPlayApp", "Focus");
  v12 = qword_100025420;
  qword_100025420 = v11;

  v13 = os_log_create("com.apple.CarPlayApp", "StatusBar");
  v14 = qword_100025428;
  qword_100025428 = v13;

  v15 = os_log_create("com.apple.CarPlayApp", "TemplateUIHostApp");
  v16 = qword_100025430;
  qword_100025430 = v15;

  v17 = os_log_create("com.apple.CarPlayApp", "Workspace");
  v18 = qword_100025438;
  qword_100025438 = v17;

  v19 = os_log_create("com.apple.CarPlayApp", "SmartWidget");
  v20 = qword_100025440;
  qword_100025440 = v19;

  v21 = os_log_create("com.apple.CarPlayApp", "InstrumentCluster");
  v22 = qword_100025448;
  qword_100025448 = v21;

  v23 = os_log_create("com.apple.CarPlayApp", "SplashScreen");
  v24 = qword_100025450;
  qword_100025450 = v23;

  v25 = os_log_create("com.apple.CarPlayApp", "MediaPlayer");
  v26 = qword_100025458;
  qword_100025458 = v25;

  v27 = os_log_create("com.apple.CarPlayApp", "Analytics");
  v28 = qword_100025460;
  qword_100025460 = v27;

  v29 = os_log_create("com.apple.CarPlayApp", "Diagnostics");
  v30 = qword_100025468;
  qword_100025468 = v29;

  v31 = os_log_create("com.apple.CarPlayApp", "TelemetrySignposts");
  v32 = qword_100025470;
  qword_100025470 = v31;

  v33 = os_log_create("com.apple.CarPlayApp", "IconBadging");
  v34 = qword_100025478;
  qword_100025478 = v33;

  v35 = os_log_create("com.apple.CarPlayApp", "Icons");
  v36 = qword_100025480;
  qword_100025480 = v35;

  v37 = os_log_create("com.apple.CarPlayApp", "SynchronizedAnimations");
  v38 = qword_100025488;
  qword_100025488 = v37;

  v39 = os_log_create("com.apple.CarPlayApp", "Appearance");
  v40 = qword_100025490;
  qword_100025490 = v39;

  v41 = os_log_create("com.apple.CarPlayApp", "Notification");
  v42 = qword_100025498;
  qword_100025498 = v41;

  v43 = os_log_create("com.apple.CarPlayApp", "UISync");
  v44 = qword_1000254A0;
  qword_1000254A0 = v43;

  v45 = os_log_create("com.apple.CarPlayApp", "LayerMetadataService");
  v46 = qword_1000254C8;
  qword_1000254C8 = v45;

  v47 = os_log_create("com.apple.CarPlayApp", "Navigation");
  v48 = qword_1000254A8;
  qword_1000254A8 = v47;

  v49 = os_log_create("com.apple.CarPlayApp", "PassengerDisplay");
  v50 = qword_1000254B0;
  qword_1000254B0 = v49;

  v51 = os_log_create("com.apple.CarPlayApp", "CarCamera");
  v52 = qword_1000254B8;
  qword_1000254B8 = v51;

  v53 = os_log_create("com.apple.CarPlayApp", "AppLink");
  v54 = qword_1000254D8;
  qword_1000254D8 = v53;

  v55 = os_log_create("com.apple.CarPlayApp", "Widgets");
  v56 = qword_1000254C0;
  qword_1000254C0 = v55;

  v57 = os_log_create("com.apple.CarPlayApp", "DisplayScale");
  v58 = qword_1000254D0;
  qword_1000254D0 = v57;

  qword_1000254E0 = os_log_create("com.apple.CarPlayApp", "Session");

  _objc_release_x1();
}

void sub_100006F50(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v2 leftAnchor];
  v29 = [*(a1 + 40) view];
  v27 = [v29 leftAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v35[0] = v26;
  v24 = [v2 rightAnchor];
  v25 = [*(a1 + 40) view];
  v23 = [v25 rightAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v35[1] = v22;
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v35[2] = v6;
  v30 = v2;
  v7 = [v2 bottomAnchor];
  v8 = [*(a1 + 40) view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v35[3] = v10;
  v11 = [NSArray arrayWithObjects:v35 count:4];
  [NSLayoutConstraint activateConstraints:v11];

  v12 = [*(a1 + 40) view];
  v13 = [v12 window];
  v14 = [v13 windowScene];
  if ([v14 activationState] == 1)
  {
    v15 = 1;
  }

  else
  {
    v16 = [*(a1 + 40) view];
    v17 = [v16 window];
    v18 = [v17 windowScene];
    v15 = [v18 activationState] == 0;
  }

  v19 = sub_100001280(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromBOOL();
    v21 = [*(a1 + 40) bundleIdentifier];
    *buf = 138543618;
    v32 = v20;
    v33 = 2114;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending cluster scene update with foreground: %{public}@ for bundle identifier: %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) sendSceneUpdate:v15 openURLContexts:0];
}

void sub_100007414(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v2 leftAnchor];
  v19 = [*(a1 + 40) view];
  v17 = [v19 leftAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [v2 rightAnchor];
  v15 = [*(a1 + 40) view];
  v13 = [v15 rightAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v12;
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v20[2] = v6;
  v7 = [v2 bottomAnchor];
  v8 = [*(a1 + 40) view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v20[3] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v11];
}

void sub_100007848(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v2 leftAnchor];
  v19 = [*(a1 + 40) view];
  v17 = [v19 leftAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [v2 rightAnchor];
  v15 = [*(a1 + 40) view];
  v13 = [v15 rightAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v12;
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v20[2] = v6;
  v7 = [v2 bottomAnchor];
  v8 = [*(a1 + 40) view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v20[3] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v11];
}

void sub_100007BE4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v2 leftAnchor];
  v19 = [*(a1 + 40) view];
  v17 = [v19 leftAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [v2 rightAnchor];
  v15 = [*(a1 + 40) view];
  v13 = [v15 rightAnchor];
  v12 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v12;
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v20[2] = v6;
  v7 = [v2 bottomAnchor];
  v8 = [*(a1 + 40) view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v20[3] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v11];
}

void sub_10000981C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009918;
  v4[3] = &unk_10001C410;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v2 updateSettingsWithBlock:v4];
}

void sub_100009918(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 view];
  [v4 bounds];
  [v3 setFrame:?];
}

void sub_10000997C(uint64_t a1, void *a2)
{
  v3 = [a2 settings];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained scene];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009A44;
  v7[3] = &unk_10001C410;
  v8 = v3;
  v6 = v3;
  [v5 updateSettingsWithBlock:v7];
}

void sub_100009A44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setMapStyle:{objc_msgSend(v2, "mapStyle")}];
}

void sub_100009A9C(uint64_t a1, void *a2)
{
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating frameRateLimit on template app scene", buf, 2u);
  }

  v5 = [a2 settings];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained scene];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009BB0;
  v9[3] = &unk_10001C410;
  v10 = v5;
  v8 = v5;
  [v7 updateSettingsWithBlock:v9];
}

void sub_100009BB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 frameRateLimit];
  [v3 setFrameRateLimit:v4];
}

id sub_10000A060(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 pendingActivityContinuationAction];
  [v2 _handleActivityContinuationAction:v3];

  v4 = *(a1 + 32);

  return [v4 setPendingActivityContinuationAction:0];
}

void sub_10000A318(id a1, UIMutableScenePresentationContext *a2)
{
  v2 = a2;
  [(UIMutableScenePresentationContext *)v2 setAppearanceStyle:1];
  v3 = +[UIColor clearColor];
  [(UIMutableScenePresentationContext *)v2 setBackgroundColorWhileHosting:v3];
}

void sub_10000A9C4(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneHostView];
  [v1 setAlpha:1.0];
}

void sub_10000AAF0(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneHostView];
  [v1 setAlpha:0.0];
}

void sub_10000B0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000B0CC(uint64_t a1)
{
  v2 = objc_alloc_init(FBMutableProcessExecutionContext);
  if ([*(a1 + 32) isForeground])
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  [v2 setLaunchIntent:v3];

  return v2;
}

id sub_10000B130(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDescription];
  if (BSLogStateCaptureCheckPlistSizeIsPermitted())
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(a1 + 32) description];
  }

  v4 = v3;

  return v4;
}

void sub_10000B198(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateUserInterfaceStyle];
  [WeakRetained setCurrentTransaction:0];
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B288;
  v6[3] = &unk_10001C588;
  v6[4] = WeakRetained;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = [WeakRetained pendingTransaction];

  if (v4)
  {
    v5 = [WeakRetained pendingTransaction];
    [WeakRetained setPendingTransaction:0];
    [WeakRetained setCurrentTransaction:v5];
    [v5 begin];
  }
}

void sub_10000B288(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 URL];
  v6 = [v5 absoluteString];
  v7 = [v6 hasSuffix:@"show-now-playing"];

  if (v7)
  {
    *a3 = 1;
    v8 = [*(a1 + 32) templateInstance];
    [v8 clientRequestNowPlayingTemplateAnimated:0];
  }
}

void sub_10000B348(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attaching action to scene update for URL context: %{public}@", &v8, 0xCu);
  }

  v5 = [UIOpenURLAction alloc];
  v6 = [v3 URL];
  v7 = [v5 initWithURL:v6];

  [*(a1 + 32) addObject:v7];
}

id sub_10000B59C(uint64_t a1)
{
  v2 = objc_alloc_init(UIApplicationSceneTransitionContext);
  v3 = [NSSet setWithObject:*(a1 + 32)];
  [v2 setActions:v3];

  return v2;
}

void sub_10000C480(uint64_t a1)
{
  v34 = [*(a1 + 32) mapWidgetViewController];
  v33 = [v34 view];
  v30 = [v33 topAnchor];
  v32 = [*(a1 + 32) templateInstance];
  v31 = [v32 dashboardEstimatesViewController];
  v29 = [v31 view];
  v28 = [v29 topAnchor];
  v27 = [v30 constraintEqualToAnchor:v28];
  v35[0] = v27;
  v26 = [*(a1 + 32) mapWidgetViewController];
  v25 = [v26 view];
  v22 = [v25 bottomAnchor];
  v24 = [*(a1 + 32) templateInstance];
  v23 = [v24 dashboardEstimatesViewController];
  v21 = [v23 view];
  v20 = [v21 bottomAnchor];
  v19 = [v22 constraintEqualToAnchor:v20];
  v35[1] = v19;
  v18 = [*(a1 + 32) mapWidgetViewController];
  v17 = [v18 view];
  v14 = [v17 leftAnchor];
  v16 = [*(a1 + 32) templateInstance];
  v15 = [v16 dashboardEstimatesViewController];
  v13 = [v15 view];
  v12 = [v13 leftAnchor];
  v2 = [v14 constraintEqualToAnchor:v12];
  v35[2] = v2;
  v3 = [*(a1 + 32) mapWidgetViewController];
  v4 = [v3 view];
  v5 = [v4 rightAnchor];
  v6 = [*(a1 + 32) templateInstance];
  v7 = [v6 dashboardEstimatesViewController];
  v8 = [v7 view];
  v9 = [v8 rightAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];
  v35[3] = v10;
  v11 = [NSArray arrayWithObjects:v35 count:4];
  [NSLayoutConstraint activateConstraints:v11];
}

void sub_10000DC1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 scene];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    v9 = sub_100001280(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Invalidating cluster view controller: %@", &v10, 0xCu);
    }

    [v6 invalidate];
    *a4 = 1;
  }
}

void sub_10000E3D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Skipping scene bringup because we are invalidated, %@", &v2, 0xCu);
}

void sub_10000E44C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[CarPlayUI Assertion] Error acquiring assertion: %@", &v2, 0xCu);
}

void sub_10000E508(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown scene type: %@", &v2, 0xCu);
}