@interface HPRFApplicationLinkCell
+ (id)_cachedInstallStateByAppID;
+ (id)_cachedInstalledProgressByAppID;
+ (id)_iconCache;
+ (id)reuseIdentifierForClassAndType:(int64_t)a3;
- (HPRFApplicationLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)activePairedDevice;
- (id)blankIcon;
- (id)getLazyIcon;
- (int64_t)appInstallStateForAppBundleID:(id)a3;
- (void)dealloc;
- (void)installApp;
- (void)installNanoBundle:(id)a3 forDevice:(id)a4;
- (void)layoutSubviews;
- (void)performInstall;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUpWatchAppAvailabilityForAppBundleID:(id)a3 device:(id)a4;
- (void)updateProgressUIForBundleID:(id)a3;
- (void)updateUIWithInstallState:(int64_t)a3 forBundleID:(id)a4;
- (void)watchAppAvailability:(id)a3 appInstallProgressDidUpdate:(id)a4;
- (void)watchAppAvailability:(id)a3 appInstallStateDidChange:(int64_t)a4;
@end

@implementation HPRFApplicationLinkCell

- (HPRFApplicationLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9 = a5;
  v48.receiver = self;
  v48.super_class = HPRFApplicationLinkCell;
  v10 = [(HPRFApplicationLinkCell *)&v48 initWithStyle:a3 reuseIdentifier:a4 specifier:v9];
  v11 = v10;
  if (v10)
  {
    [(HPRFApplicationLinkCell *)v10 setSelectionStyle:0];
    v12 = [(HPRFApplicationLinkCell *)v11 titleLabel];
    [v12 setNumberOfLines:0];

    v13 = +[UIColor systemOrangeColor];
    enabledColor = v11->_enabledColor;
    v11->_enabledColor = v13;

    v46 = 0.0;
    v47 = 0.0;
    v45 = 0.0;
    v15 = +[UIColor systemOrangeColor];
    [v15 getRed:&v47 green:&v46 blue:&v45 alpha:0];

    v17 = v46;
    v16 = v47;
    v18 = v45;
    UIInterfaceGetContentDisabledAlpha();
    v20 = [UIColor colorWithRed:v16 green:v17 blue:v18 alpha:v19];
    disabledColor = v11->_disabledColor;
    v11->_disabledColor = v20;

    v22 = [UIButton buttonWithType:1];
    installButton = v11->_installButton;
    v11->_installButton = v22;

    v24 = [(UIButton *)v11->_installButton layer];
    [v24 setBorderWidth:1.0];

    v25 = [(UIButton *)v11->_installButton layer];
    [v25 setCornerRadius:3.0];

    v26 = v11->_installButton;
    v27 = HKHeartRateLocalizedString();
    [(UIButton *)v26 setTitle:v27 forState:0];

    v28 = v11->_installButton;
    v29 = HKHeartRateLocalizedString();
    [(UIButton *)v28 setTitle:v29 forState:2];

    v30 = v11->_installButton;
    v31 = [(HPRFApplicationLinkCell *)v11 _accessibilityHigherContrastTintColorForColor:v11->_enabledColor];
    [(UIButton *)v30 setTitleColor:v31 forState:0];

    v32 = v11->_installButton;
    v33 = [(HPRFApplicationLinkCell *)v11 _accessibilityHigherContrastTintColorForColor:v11->_disabledColor];
    [(UIButton *)v32 setTitleColor:v33 forState:2];

    [(UIButton *)v11->_installButton setContentEdgeInsets:5.0, 5.0, 5.0, 5.0];
    [(UIButton *)v11->_installButton setAlpha:1.0];
    v34 = [(UIButton *)v11->_installButton titleLabel];
    v35 = [UIFont systemFontOfSize:14.0];
    [v34 setFont:v35];

    [(UIButton *)v11->_installButton setEnabled:1];
    [(UIButton *)v11->_installButton addTarget:v11 action:"performInstall" forControlEvents:64];
    v36 = [[HPRFInstallSpinnerButton alloc] initWithFrame:0 showSquare:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    installSpinnerButton = v11->_installSpinnerButton;
    v11->_installSpinnerButton = v36;

    v38 = [v9 propertyForKey:@"HPRFAppBundleID"];
    v39 = [(HPRFApplicationLinkCell *)v11 activePairedDevice];
    v40 = v39;
    if (v38 && v39)
    {
      [(HPRFApplicationLinkCell *)v11 setUpWatchAppAvailabilityForAppBundleID:v38 device:v39];
    }

    else
    {
      _HKInitializeLogging();
      v41 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        v43 = v41;
        v44 = NSStringFromSelector(a2);
        *buf = 138544130;
        v50 = v11;
        v51 = 2114;
        v52 = v44;
        v53 = 2112;
        v54 = v38;
        v55 = 2112;
        v56 = v40;
        _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to setup watch app availability for app bundle identifier(%@) on watch(%@)", buf, 0x2Au);
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  [(HKWatchAppAvailability *)self->_watchAppAvailability removeObserver:self];
  v3.receiver = self;
  v3.super_class = HPRFApplicationLinkCell;
  [(HPRFApplicationLinkCell *)&v3 dealloc];
}

- (void)setUpWatchAppAvailabilityForAppBundleID:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  watchAppAvailability = self->_watchAppAvailability;
  if (watchAppAvailability)
  {
    v10 = [(HKWatchAppAvailability *)watchAppAvailability bundleID];
    v11 = [v10 isEqualToString:v7];

    if (v11)
    {
      goto LABEL_7;
    }

    [(HKWatchAppAvailability *)self->_watchAppAvailability removeObserver:self];
  }

  _HKInitializeLogging();
  v12 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544130;
    v22 = self;
    v23 = 2114;
    v24 = v14;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Setting up watch app availability for app bundle identifier(%@) on watch(%@)", buf, 0x2Au);
  }

  v15 = [[HKWatchAppAvailability alloc] initWithBundleID:v7];
  v16 = self->_watchAppAvailability;
  self->_watchAppAvailability = v15;

  [(HKWatchAppAvailability *)self->_watchAppAvailability addObserver:self queue:&_dispatch_main_q];
  objc_initWeak(buf, self);
  v17 = self->_watchAppAvailability;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_9DC0;
  v18[3] = &unk_188C0;
  objc_copyWeak(&v20, buf);
  v19 = v7;
  [(HKWatchAppAvailability *)v17 appInstallStateOnWatch:v8 completion:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
LABEL_7:
}

- (id)activePairedDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

- (void)installNanoBundle:(id)a3 forDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() _cachedInstallStateByAppID];
  [v9 setObject:&off_19498 forKey:v7];

  v10 = [[ASDSystemAppMetadata alloc] initWithBundleID:v7];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_A07C;
  v13[3] = &unk_18910;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = a2;
  v11 = v8;
  v12 = v7;
  [ASDInstallApps installApp:v10 onPairedDevice:v11 withCompletionHandler:v13];
}

- (void)performInstall
{
  v3 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  aSelectorName = [WeakRetained propertyForKey:@"HPRFAppInstallAction"];

  if (aSelectorName)
  {
    v5 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
    v6 = [v5 target];

    if (v6)
    {
      v7 = NSSelectorFromString(aSelectorName);
      v8 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
      v9 = [v8 target];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
        v12 = [v11 target];
        v13 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
        [v12 performSelectorOnMainThread:v7 withObject:v13 waitUntilDone:1];
      }
    }
  }

  [(HPRFApplicationLinkCell *)self installApp];
}

- (void)installApp
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained propertyForKey:@"HPRFAppBundleID"];

  if (v5)
  {
    v6 = [(HPRFApplicationLinkCell *)self activePairedDevice];
    if (v6)
    {
      [(HPRFApplicationLinkCell *)self installNanoBundle:v5 forDevice:v6];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = NSStringFromSelector(a2);
        v11 = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v10;
        v15 = 2112;
        v16 = v5;
        _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of app with bundle identifier(%@) on watch(nil)", &v11, 0x20u);
      }
    }

    [(HPRFApplicationLinkCell *)self updateUIWithInstallState:[(HPRFApplicationLinkCell *)self appInstallStateForAppBundleID:v5] forBundleID:v5];
    [(HPRFApplicationLinkCell *)self setNeedsLayout];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_CAAC(self, v7, a2);
    }
  }
}

- (int64_t)appInstallStateForAppBundleID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _cachedInstallStateByAppID];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_194C8;
  }

  v7 = [v6 integerValue];

  return v7;
}

- (void)layoutSubviews
{
  v68.receiver = self;
  v68.super_class = HPRFApplicationLinkCell;
  [(HPRFApplicationLinkCell *)&v68 layoutSubviews];
  [(HPRFApplicationLinkCell *)self bounds];
  v4 = v3;
  v65 = v5;
  v7 = v6;
  v9 = v8;
  v10 = [(HPRFApplicationLinkCell *)self textLabel];
  v11 = [(HPRFApplicationLinkCell *)self detailTextLabel];
  [v10 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  rect = v18;
  v19 = [(HPRFApplicationLinkCell *)self _shouldReverseLayoutDirection];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v21 = [WeakRetained propertyForKey:@"HPRFAppBundleID"];
  v22 = [(HPRFApplicationLinkCell *)self appInstallStateForAppBundleID:v21];

  p_installButton = &self->_installButton;
  v63 = v9;
  v64 = v7;
  [(UIButton *)self->_installButton sizeThatFits:v7, v9];
  v25 = v24;
  v27 = v26;
  v28 = [(HPRFApplicationLinkCell *)self accessoryView];
  [v28 frame];
  MinY = CGRectGetMinY(v69);

  v30 = [(HPRFApplicationLinkCell *)self accessoryView];
  [v30 frame];
  v31 = CGRectGetMaxX(v70) - v25;

  [(UIButton *)self->_installButton setFrame:v31, MinY, v25, v27];
  v32 = [(HPRFApplicationLinkCell *)self iconImageView];
  [v32 bounds];
  v34 = v33;
  v35 = [(HPRFApplicationLinkCell *)self iconImageView];
  [v35 bounds];
  [(HPRFInstallSpinnerButton *)self->_installSpinnerButton setBounds:0.0, 0.0, v34];

  v36 = [(HPRFApplicationLinkCell *)self accessoryView];
  [v36 center];
  [(HPRFInstallSpinnerButton *)self->_installSpinnerButton setCenter:?];

  v66 = v4;
  if (v22 == 1)
  {
    p_installButton = &self->_installSpinnerButton;
  }

  v37 = v17;
  v38 = *p_installButton;
  [(HPRFApplicationLinkCell *)self setAccessoryView:v38];
  if (v38)
  {
    [v38 bounds];
    v40 = v39;
    v41 = 15.0;
  }

  else
  {
    v38 = v11;
    [v38 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v40 = v42;
    v41 = 35.0;
  }

  v62 = v41;
  [v38 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = [(HPRFApplicationLinkCell *)self traitCollection];
  v52 = [v51 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v52);

  if (!v38)
  {
    goto LABEL_14;
  }

  v71.origin.x = v44;
  v71.origin.y = v46;
  v71.size.width = v48;
  v71.size.height = v50;
  if (CGRectGetWidth(v71) <= 0.0 || IsAccessibilityCategory)
  {
    goto LABEL_14;
  }

  if (!v19)
  {
    v74.origin.x = v44;
    v74.origin.y = v46;
    v74.size.width = v48;
    v74.size.height = v50;
    MaxX = CGRectGetMaxX(v74);
    v75.origin.y = v15;
    v59 = MaxX - v40;
    v75.origin.x = v13;
    y = v75.origin.y;
    v75.size.width = v37;
    v75.size.height = rect;
    v60 = v59 - (CGRectGetMaxX(v75) + 6.0);
    if (v60 < 0.0)
    {
      v37 = v37 + v60;
      v76.origin.y = v65;
      v76.origin.x = v66;
      v76.size.height = v63;
      v76.size.width = v64;
      v44 = CGRectGetWidth(v76) - (v62 + v40);
      v48 = v40;
    }

    v15 = y;
LABEL_14:
    v54 = v13;
    goto LABEL_15;
  }

  v54 = v13;
  v72.origin.x = v13;
  v72.origin.y = v15;
  v72.size.width = v37;
  v72.size.height = rect;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v44;
  v73.origin.y = v46;
  v73.size.width = v48;
  v73.size.height = v50;
  v56 = MinX - CGRectGetMaxX(v73);
  if (v56 < 0.0)
  {
    v57 = v56 + -6.0;
    v37 = v37 + v57;
    v54 = v54 - v57;
  }

LABEL_15:
  [v38 setFrame:{v44, v46, v48, v50}];
  [v10 setFrame:{v54, v15, v37, rect}];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = HPRFApplicationLinkCell;
  v5 = a3;
  [(HPRFApplicationLinkCell *)&v12 refreshCellContentsWithSpecifier:v5];
  v6 = [v5 propertyForKey:{@"HPRFAppBundleID", v12.receiver, v12.super_class}];

  v7 = [(HPRFApplicationLinkCell *)self activePairedDevice];
  v8 = v7;
  if (v6 && v7)
  {
    [(HPRFApplicationLinkCell *)self setUpWatchAppAvailabilityForAppBundleID:v6 device:v7];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      *buf = 138544130;
      v14 = self;
      v15 = 2114;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to setup watch app availability for app bundle identifier(%@) on watch(%@)", buf, 0x2Au);
    }
  }

  [(HPRFApplicationLinkCell *)self updateUIWithInstallState:[(HPRFApplicationLinkCell *)self appInstallStateForAppBundleID:v6] forBundleID:v6];
  [(HPRFApplicationLinkCell *)self setNeedsLayout];
}

- (void)updateProgressUIForBundleID:(id)a3
{
  installButton = self->_installButton;
  v5 = a3;
  [(UIButton *)installButton setHidden:1];
  [(HPRFInstallSpinnerButton *)self->_installSpinnerButton setHidden:0];
  [(HPRFInstallSpinnerButton *)self->_installSpinnerButton showProgressAnimation];
  v6 = [objc_opt_class() _cachedInstalledProgressByAppID];
  v7 = [v6 objectForKey:v5];

  [v7 floatValue];
  v9 = v8;

  installSpinnerButton = self->_installSpinnerButton;

  [(HPRFInstallSpinnerButton *)installSpinnerButton setProgress:0 animated:v9];
}

- (void)updateUIWithInstallState:(int64_t)a3 forBundleID:(id)a4
{
  v6 = a4;
  v12 = v6;
  if (a3 == 2)
  {
    [(UIButton *)self->_installButton setHidden:0];
    [(UIButton *)self->_installButton setEnabled:0];
    [(HPRFInstallSpinnerButton *)self->_installSpinnerButton setHidden:1];
  }

  else if (a3 == 1)
  {
    [(HPRFApplicationLinkCell *)self updateProgressUIForBundleID:v6];
  }

  else
  {
    if (a3)
    {
      [(UIButton *)self->_installButton setEnabled:0];
    }

    [(UIButton *)self->_installButton setHidden:0];
    [(UIButton *)self->_installButton setEnabled:1];
    [(HPRFInstallSpinnerButton *)self->_installSpinnerButton setHidden:1];
    [(HPRFInstallSpinnerButton *)self->_installSpinnerButton stopProgressAnimation];
  }

  v7 = [(UIButton *)self->_installButton isEnabled];
  v8 = &OBJC_IVAR___HPRFApplicationLinkCell__disabledColor;
  if (v7)
  {
    v8 = &OBJC_IVAR___HPRFApplicationLinkCell__enabledColor;
  }

  v9 = [(HPRFApplicationLinkCell *)self _accessibilityHigherContrastTintColorForColor:*&self->PSTableCell_opaque[*v8]];
  v10 = [v9 CGColor];
  v11 = [(UIButton *)self->_installButton layer];
  [v11 setBorderColor:v10];
}

+ (id)_cachedInstalledProgressByAppID
{
  if (qword_1E3B0 != -1)
  {
    sub_CB78();
  }

  v3 = qword_1E3A8;

  return v3;
}

+ (id)_cachedInstallStateByAppID
{
  if (qword_1E3C0 != -1)
  {
    sub_CB8C();
  }

  v3 = qword_1E3B8;

  return v3;
}

+ (id)_iconCache
{
  if (qword_1E3D0 != -1)
  {
    sub_CBA0();
  }

  v3 = qword_1E3C8;

  return v3;
}

- (void)watchAppAvailability:(id)a3 appInstallStateDidChange:(int64_t)a4
{
  v7 = a3;
  _HKInitializeLogging();
  v8 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v11 = [NSNumber numberWithInteger:a4];
    v12 = [v7 bundleID];
    v19 = 138544130;
    v20 = self;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> App install state did change(%@) for app with bundle identifier(%@)", &v19, 0x2Au);
  }

  v13 = [objc_opt_class() _cachedInstallStateByAppID];
  v14 = [NSNumber numberWithInteger:a4];
  v15 = [v7 bundleID];
  [v13 setObject:v14 forKey:v15];

  if (a4 != 1)
  {
    v16 = [objc_opt_class() _cachedInstalledProgressByAppID];
    v17 = [v7 bundleID];
    [v16 removeObjectForKey:v17];
  }

  v18 = [v7 bundleID];
  [(HPRFApplicationLinkCell *)self updateUIWithInstallState:a4 forBundleID:v18];

  [(HPRFApplicationLinkCell *)self setNeedsLayout];
}

- (void)watchAppAvailability:(id)a3 appInstallProgressDidUpdate:(id)a4
{
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    v12 = [v7 bundleID];
    v16 = 138544130;
    v17 = self;
    v18 = 2114;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> App install progress did change(%@) for app with bundle identifier(%@)", &v16, 0x2Au);
  }

  v13 = [objc_opt_class() _cachedInstalledProgressByAppID];
  v14 = [v7 bundleID];
  [v13 setObject:v8 forKey:v14];

  v15 = [v7 bundleID];
  [(HPRFApplicationLinkCell *)self updateProgressUIForBundleID:v15];

  [(HPRFApplicationLinkCell *)self setNeedsLayout];
}

- (id)blankIcon
{
  v3 = [(HPRFApplicationLinkCell *)self getLazyIconID];
  v4 = [objc_opt_class() _iconCache];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    v11.receiver = self;
    v11.super_class = HPRFApplicationLinkCell;
    v5 = [(HPRFApplicationLinkCell *)&v11 blankIcon];
  }

  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained propertyForKey:PSIconImageShouldFlipForRightToLeftKey];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [v5 imageFlippedForRightToLeftLayoutDirection];

    v5 = v9;
  }

  return v5;
}

- (id)getLazyIcon
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_B684;
  v27 = sub_B694;
  v28 = 0;
  v2 = [(HPRFApplicationLinkCell *)self getLazyIconID];
  if (v2)
  {
    v3 = [objc_opt_class() _iconCache];
    v4 = [v3 objectForKey:v2];
    v5 = v24[5];
    v24[5] = v4;

    v6 = v24[5];
    if (!v6)
    {
      v7 = dispatch_semaphore_create(0);
      v8 = +[NanoResourceGrabber sharedInstance];
      v9 = +[UIScreen mainScreen];
      v10 = [v9 traitCollection];
      [v10 displayScale];
      if (v11 <= 2.0)
      {
        v12 = 47;
      }

      else
      {
        v12 = 48;
      }

      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_B69C;
      v20 = &unk_18998;
      v22 = &v23;
      v13 = v7;
      v21 = v13;
      [v8 getIconForBundleID:v2 iconVariant:v12 block:&v17 timeout:60.0];

      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      if (v24[5])
      {
        v14 = [objc_opt_class() _iconCache];
        [v14 setObject:v24[5] forKey:v2];
      }

      v6 = v24[5];
    }

    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v15;
}

+ (id)reuseIdentifierForClassAndType:(int64_t)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

@end