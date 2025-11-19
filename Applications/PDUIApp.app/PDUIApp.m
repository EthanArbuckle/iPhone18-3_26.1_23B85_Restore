void sub_100001048(uint64_t a1)
{
  v2 = PDCGlobalConsentStoreInstance();
  DMGetUserDataDisposition();
  v3 = PDCGlobalDeviceSettings();
  v4 = PDCGlobalApplicationEnvironment();
  v5 = PDCPerformOneTimeImplicitConsentGrant();

  if (v5 && (v6 = *(a1 + 32), (v6[24] & 1) == 0))
  {
    [v6 _dismissWithResponse:1];
  }

  else
  {
    v7 = [[PDURootViewController alloc] initWithApplicationIdentity:*(a1 + 40) consentStore:v2];
    v8 = [v7 view];
    [v7 setDelegate:*(a1 + 32)];
    v27 = v7;
    [*(a1 + 32) addChildViewController:v7];
    v9 = [*(a1 + 32) view];
    [v9 addSubview:v8];

    [v7 didMoveToParentViewController:*(a1 + 32)];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v8 topAnchor];
    v26 = [*(a1 + 32) view];
    v24 = [v26 topAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v28[0] = v23;
    v21 = [v8 bottomAnchor];
    v22 = [*(a1 + 32) view];
    v20 = [v22 bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v28[1] = v19;
    v18 = [v8 leadingAnchor];
    v10 = [*(a1 + 32) view];
    v11 = [v10 leadingAnchor];
    v12 = [v18 constraintEqualToAnchor:v11];
    v28[2] = v12;
    v13 = [v8 trailingAnchor];
    v14 = [*(a1 + 32) view];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v28[3] = v16;
    v17 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}