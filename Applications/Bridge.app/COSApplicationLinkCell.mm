@interface COSApplicationLinkCell
- (COSApplicationLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)cachedInstalledProgressByAppID;
- (id)device;
- (void)dealloc;
- (void)installApp;
- (void)installNanoBundle:(id)a3 forDevice:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)stopInstallation;
- (void)updateProgress:(id)a3;
@end

@implementation COSApplicationLinkCell

- (COSApplicationLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36.receiver = self;
  v36.super_class = COSApplicationLinkCell;
  v4 = [(COSApplicationLinkCell *)&v36 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    appID = v4->_appID;
    v4->_appID = @"none";

    v7 = [[COSApplicationLabelAccessoryView alloc] initWithLabelAccessoryType:1];
    labelAccessoryView = v5->_labelAccessoryView;
    v5->_labelAccessoryView = v7;

    v9 = [(COSApplicationLinkCell *)v5 contentView];
    [v9 addSubview:v5->_labelAccessoryView];

    v10 = +[UIColor systemOrangeColor];
    enabledColor = v5->_enabledColor;
    v5->_enabledColor = v10;

    v34 = 0.0;
    v35 = 0.0;
    v33 = 0.0;
    v12 = +[UIColor systemOrangeColor];
    [v12 getRed:&v35 green:&v34 blue:&v33 alpha:0];

    v14 = v34;
    v13 = v35;
    v15 = v33;
    UIInterfaceGetContentDisabledAlpha();
    v17 = [UIColor colorWithRed:v13 green:v14 blue:v15 alpha:v16];
    disabledColor = v5->_disabledColor;
    v5->_disabledColor = v17;

    v19 = [UIButton buttonWithType:1];
    installButton = v5->_installButton;
    v5->_installButton = v19;

    v21 = [(UIButton *)v5->_installButton layer];
    [v21 setBorderWidth:1.0];

    v22 = [(UIButton *)v5->_installButton layer];
    [v22 setCornerRadius:3.0];

    v23 = v5->_installButton;
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"INSTALL_SUGGESTED_APP_BUTTON" value:&stru_10026E598 table:@"Localizable"];
    [(UIButton *)v23 setTitle:v25 forState:0];

    [(UIButton *)v5->_installButton setTitleColor:v5->_enabledColor forState:0];
    [(UIButton *)v5->_installButton setTitleColor:v5->_disabledColor forState:2];
    [(UIButton *)v5->_installButton setContentEdgeInsets:5.0, 5.0, 5.0, 5.0];
    [(UIButton *)v5->_installButton setAlpha:1.0];
    v26 = [(UIButton *)v5->_installButton titleLabel];
    v27 = [UIFont systemFontOfSize:14.0];
    [v26 setFont:v27];

    [(UIButton *)v5->_installButton addTarget:v5 action:"installApp" forEvents:64];
    v28 = [(COSApplicationLinkCell *)v5 contentView];
    [v28 addSubview:v5->_installButton];

    v29 = objc_alloc_init(COSInstallSpinnerButton);
    installSpinnerButton = v5->_installSpinnerButton;
    v5->_installSpinnerButton = v29;

    [(COSInstallSpinnerButton *)v5->_installSpinnerButton addTarget:v5 action:"stopInstallation" forEvents:64];
    v31 = [(COSApplicationLinkCell *)v5 contentView];
    [v31 addSubview:v5->_installSpinnerButton];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSApplicationLinkCell;
  [(COSApplicationLinkCell *)&v4 dealloc];
}

- (id)device
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 activeWatch];

  return v3;
}

- (void)installNanoBundle:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[COSApplicationLinkCell installNanoBundle:forDevice:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = +[ACXDeviceConnection sharedDeviceConnection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030060;
  v11[3] = &unk_1002685E8;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 installApplication:v10 onPairedDevice:v7 completion:v11];
}

- (void)installApp
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[COSApplicationLinkCell installApp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained propertyForKey:BPSNotificationAppBBSectionInfo];
  v7 = [v6 sectionID];

  v8 = [(COSApplicationLinkCell *)self device];
  v9 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
  [v9 setProperty:&off_100281990 forKey:@"COSSockPuppetInstallationState"];

  HasCapabilityForString = BPSDeviceHasCapabilityForString();
  v11 = pbb_bridge_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (HasCapabilityForString)
  {
    if (v12)
    {
      *buf = 138412546;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Check if app %@ needs update for %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13 = +[ACXDeviceConnection sharedDeviceConnection];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000306DC;
    v26[3] = &unk_100268D48;
    objc_copyWeak(&v29, buf);
    v27 = v7;
    v28 = v8;
    [v13 fetchLocallyAvailableApplicationWithBundleID:v27 forPairedDevice:v28 completion:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "app update check not needed", buf, 2u);
    }

    [(COSApplicationLinkCell *)self installNanoBundle:v7 forDevice:v8];
  }

  v14 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
  v15 = [v14 target];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
    v18 = [v17 propertyForKey:@"COSSockPuppetAppSectionKey"];
    v19 = [v18 integerValue];

    v20 = v19 == 1;
    v21 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
    v22 = [v21 target];
    v23 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
    v24 = [v23 propertyForKey:@"COSSockPuppetAppBundleIDKey"];
    [v22 registerRecentlyInstallingAppID:v24 isSuggested:v20];
  }

  v25 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v4]);
  [(COSApplicationLinkCell *)self refreshCellContentsWithSpecifier:v25];

  [(COSApplicationLinkCell *)self setNeedsLayout];
}

- (void)stopInstallation
{
  v3 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained propertyForKey:BPSNotificationAppBBSectionInfo];
  v6 = [v5 sectionID];

  v7 = +[ACXDeviceConnection sharedDeviceConnection];
  v8 = [(COSApplicationLinkCell *)self device];
  v9 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v3]);
  [v9 setProperty:&off_1002819A8 forKey:@"COSSockPuppetInstallationState"];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100030B90;
  v12[3] = &unk_100268D70;
  v13 = v6;
  v10 = v6;
  [v7 removeApplication:v10 fromPairedDevice:v8 completionWithError:v12];
  v11 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v3]);
  [(COSApplicationLinkCell *)self refreshCellContentsWithSpecifier:v11];

  [(COSApplicationLinkCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v91.receiver = self;
  v91.super_class = COSApplicationLinkCell;
  [(COSApplicationLinkCell *)&v91 layoutSubviews];
  [(COSApplicationLinkCell *)self bounds];
  v87 = v4;
  v88 = v3;
  v85 = v6;
  v86 = v5;
  v7 = [(COSApplicationLinkCell *)self textLabel];
  v8 = [(COSApplicationLinkCell *)self detailTextLabel];
  [v7 frame];
  v10 = v9;
  v90 = v11;
  v13 = v12;
  v15 = v14;
  v16 = [(COSApplicationLinkCell *)self _shouldReverseLayoutDirection];
  labelAccessoryView = self->_labelAccessoryView;
  if (labelAccessoryView)
  {
    [(COSApplicationLabelAccessoryView *)labelAccessoryView frame];
    v19 = v18;
    v21 = v20;
    if (v16)
    {
      v22 = [(COSApplicationLinkCell *)self iconImageView];
      [v22 frame];
      v23 = CGRectGetMinX(v92) - v19 + -6.0;

      v24 = v10 + -6.0;
    }

    else
    {
      v24 = v10 + v18 + 6.0;
      v23 = v10;
    }

    [(COSApplicationLabelAccessoryView *)self->_labelAccessoryView setFrame:v23, v90 + floor((v15 - v21) * 0.5), v19, v21];
    v93.origin.x = v24;
    v93.origin.y = v90;
    v93.size.width = v13;
    v93.size.height = v15;
    MaxX = CGRectGetMaxX(v93);
    v26 = [(COSApplicationLinkCell *)self contentView];
    [v26 frame];
    v27 = CGRectGetMaxX(v94);

    if (MaxX >= v27)
    {
      v13 = v13 - (v24 - v10);
    }

    v10 = v24;
  }

  v89 = v15;
  if (self->_useInlineInstallButtonUI)
  {
    v83 = v8;
    v28 = OBJC_IVAR___PSTableCell__specifier;
    WeakRetained = objc_loadWeakRetained(&self->BPSLinkCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
    v30 = [WeakRetained propertyForKey:@"COSSockPuppetInstallationState"];

    v31 = [v30 integerValue];
    p_installButton = &self->_installButton;
    [(UIButton *)self->_installButton sizeToFit];
    [(UIButton *)self->_installButton frame];
    v34 = v33 + 5.0;
    v36 = v35 + -4.0;
    v95.origin.y = v87;
    v95.origin.x = v88;
    v95.size.height = v85;
    v95.size.width = v86;
    v37 = (CGRectGetHeight(v95) - v36) * 0.5;
    v38 = 15.0;
    if ((v16 & 1) == 0)
    {
      v96.origin.y = v87;
      v96.origin.x = v88;
      v96.size.height = v85;
      v96.size.width = v86;
      v38 = CGRectGetWidth(v96) - (v34 + 15.0);
    }

    [(UIButton *)*p_installButton setFrame:v38, v37, v34, v36];
    v39 = [(COSApplicationLinkCell *)self iconImageView];
    [v39 frame];
    p_installSpinnerButton = &self->_installSpinnerButton;
    [(COSInstallSpinnerButton *)self->_installSpinnerButton setFrame:?];

    [(UIButton *)*p_installButton center];
    [(COSInstallSpinnerButton *)self->_installSpinnerButton setCenter:?];
    [(COSInstallSpinnerButton *)self->_installSpinnerButton frame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(UIButton *)*p_installButton frame];
    if (v16)
    {
      MinX = CGRectGetMinX(*&v47);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v47) - v44;
    }

    [*p_installSpinnerButton setFrame:{MinX, v42, v44, v46}];
    v52 = [(COSApplicationLinkCell *)self iconImageView];
    [v52 frame];

    if (v31 == 2 || v31 == 4)
    {
      [(UIButton *)*p_installButton setHidden:1];
      [*p_installSpinnerButton setHidden:1];
      if (v31 == 2)
      {
        v53 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v28]);
        v54 = [v53 propertyForKey:@"COSSockPuppetAppSectionKey"];
        v55 = [v54 integerValue];

        if (v55 == 1)
        {
          [(COSApplicationLinkCell *)self setAccessoryType:0];
        }
      }

      v8 = v83;
    }

    else
    {
      v76 = objc_loadWeakRetained(&self->BPSLinkCell_opaque[v28]);
      v77 = [v76 propertyForKey:@"COSSockPuppetInstallationState"];

      v78 = [v77 integerValue];
      v79 = *p_installButton;
      if (v78 == 1)
      {
        [(UIButton *)v79 setHidden:1];
        [*p_installSpinnerButton setHidden:0];
        [*p_installSpinnerButton showProgressAnimation];
      }

      else
      {
        [(UIButton *)v79 setHidden:0];
        [*p_installSpinnerButton setHidden:1];
        [*p_installSpinnerButton stopProgressAnimation];
        p_installSpinnerButton = &self->_installButton;
      }

      v8 = v83;
      v57 = *p_installSpinnerButton;
      [(COSApplicationLinkCell *)self setAccessoryType:0];

      if (v57)
      {
        v56 = v10;
        [v57 size];
        v59 = v82;
        v60 = 15.0;
        goto LABEL_22;
      }
    }
  }

  else
  {
    [(COSInstallSpinnerButton *)self->_installSpinnerButton setHidden:1];
  }

  v56 = v10;
  v57 = v8;
  [v57 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v59 = v58;
  v60 = 35.0;
LABEL_22:
  [v57 frame];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = [(COSApplicationLinkCell *)self traitCollection];
  v70 = [v69 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v70);

  if (!v57 || (v97.origin.x = v62, v97.origin.y = v64, v97.size.width = v66, v97.size.height = v68, CGRectGetWidth(v97) <= 0.0 || IsAccessibilityCategory))
  {
LABEL_24:
    v72 = v89;
    goto LABEL_25;
  }

  if (!v16)
  {
    v84 = v60;
    v100.origin.x = v62;
    v100.origin.y = v64;
    v100.size.width = v66;
    v100.size.height = v68;
    v80 = CGRectGetMaxX(v100) - v59;
    v101.origin.x = v56;
    v101.size.height = v89;
    v101.origin.y = v90;
    v101.size.width = v13;
    v81 = v80 - (CGRectGetMaxX(v101) + 6.0);
    if (v81 < 0.0)
    {
      v13 = v13 + v81;
      v102.origin.y = v87;
      v102.origin.x = v88;
      v102.size.height = v85;
      v102.size.width = v86;
      v62 = CGRectGetWidth(v102) - (v84 + v59);
      v66 = v59;
    }

    goto LABEL_24;
  }

  v98.origin.x = v56;
  v72 = v89;
  v98.origin.y = v90;
  v98.size.width = v13;
  v98.size.height = v89;
  v73 = CGRectGetMinX(v98);
  v99.origin.x = v62;
  v99.origin.y = v64;
  v99.size.width = v66;
  v99.size.height = v68;
  v74 = v73 - CGRectGetMaxX(v99);
  if (v74 < 0.0)
  {
    v75 = v74 + -6.0;
    v13 = v13 + v75;
    v56 = v56 - v75;
  }

LABEL_25:
  [v57 setFrame:{v62, v64, v66, v68}];
  [v7 setFrame:{v56, v90, v13, v72}];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = COSApplicationLinkCell;
  [(COSApplicationLinkCell *)&v32 refreshCellContentsWithSpecifier:v4];
  v31 = [v4 propertyForKey:@"COSApplicationIsBeta"];
  -[COSApplicationLabelAccessoryView setHidden:](self->_labelAccessoryView, "setHidden:", [v31 BOOLValue] ^ 1);
  v5 = [v4 propertyForKey:BPSNotificationAppBBSectionInfo];
  v6 = [v5 sectionID];
  appID = self->_appID;
  self->_appID = v6;

  if (!self->_appID)
  {
    self->_appID = @"none";
  }

  v8 = [v4 propertyForKey:@"COSSockPuppetAppSectionKey"];
  self->_useInlineInstallButtonUI = v8 != 0;

  v30 = [v4 propertyForKey:@"COSSockPuppetInstallationState"];
  v9 = [v30 integerValue];
  v10 = [v4 propertyForKey:PSEnabledKey];
  -[UIButton setEnabled:](self->_installButton, "setEnabled:", [v10 BOOLValue]);

  if ([(UIButton *)self->_installButton isEnabled])
  {
    v11 = &OBJC_IVAR___COSApplicationLinkCell__enabledColor;
  }

  else
  {
    v11 = &OBJC_IVAR___COSApplicationLinkCell__disabledColor;
  }

  v12 = [(COSApplicationLinkCell *)self _accessibilityHigherContrastTintColorForColor:*&self->BPSLinkCell_opaque[*v11]];
  v13 = [v12 CGColor];
  v14 = [(UIButton *)self->_installButton layer];
  [v14 setBorderColor:v13];

  installButton = self->_installButton;
  v16 = [(COSApplicationLinkCell *)self _accessibilityHigherContrastTintColorForColor:self->_enabledColor];
  [(UIButton *)installButton setTitleColor:v16 forState:0];

  v17 = self->_installButton;
  v18 = [(COSApplicationLinkCell *)self _accessibilityHigherContrastTintColorForColor:self->_disabledColor];
  [(UIButton *)v17 setTitleColor:v18 forState:2];

  if (v9 == 1)
  {
    if (self->_useInlineInstallButtonUI)
    {
      v19 = &stru_10026E598;
    }

    else
    {
      v24 = +[NSBundle mainBundle];
      v19 = [v24 localizedStringForKey:@"GIZMO_APP_INSTALLING" value:&stru_10026E598 table:@"Localizable"];
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 removeObserver:self name:@"COSInstallProgressNotificationName" object:0];
    [v23 addObserver:self selector:"updateProgress:" name:@"COSInstallProgressNotificationName" object:0];
    v25 = [(COSApplicationLinkCell *)self cachedInstalledProgressByAppID];
    v26 = [v25 objectForKey:self->_appID];
    [v26 floatValue];
    v28 = v27;

    [(COSInstallSpinnerButton *)self->_installSpinnerButton setProgress:0 animated:v28];
  }

  else
  {
    if (v9 == 4)
    {
      v20 = +[NSBundle mainBundle];
      v21 = v20;
      v22 = @"GIZMO_APP_UNINSTALLING";
      goto LABEL_18;
    }

    if (v9 == 2)
    {
      if (self->_useInlineInstallButtonUI)
      {
        v19 = &stru_10026E598;
LABEL_19:
        v23 = [(COSApplicationLinkCell *)self cachedInstalledProgressByAppID];
        [v23 removeObjectForKey:self->_appID];
        goto LABEL_20;
      }

      v20 = +[NSBundle mainBundle];
      v21 = v20;
      v22 = @"INSTALLED";
LABEL_18:
      v19 = [v20 localizedStringForKey:v22 value:&stru_10026E598 table:@"Localizable"];

      goto LABEL_19;
    }

    v23 = [(COSApplicationLinkCell *)self cachedInstalledProgressByAppID];
    [v23 removeObjectForKey:self->_appID];
    v19 = 0;
  }

LABEL_20:

  v29 = [(COSApplicationLinkCell *)self detailTextLabel];
  [v29 setText:v19];

  [(COSApplicationLinkCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = COSApplicationLinkCell;
  [(COSApplicationLinkCell *)&v4 prepareForReuse];
  appID = self->_appID;
  self->_appID = @"none";

  self->_useInlineInstallButtonUI = 0;
}

- (id)cachedInstalledProgressByAppID
{
  if (qword_1002BD380 != -1)
  {
    sub_100186B60();
  }

  v3 = qword_1002BD378;

  return v3;
}

- (void)updateProgress:(id)a3
{
  v11 = [a3 object];
  v4 = [v11 objectForKeyedSubscript:@"appid"];
  v5 = [(COSApplicationLinkCell *)self appID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [v11 objectForKeyedSubscript:@"progress"];
    installSpinnerButton = self->_installSpinnerButton;
    [v7 doubleValue];
    [(COSInstallSpinnerButton *)installSpinnerButton setProgress:1 animated:?];
    v9 = [(COSApplicationLinkCell *)self cachedInstalledProgressByAppID];
    v10 = [(COSApplicationLinkCell *)self appID];
    [v9 setObject:v7 forKey:v10];
  }

  if (!v11)
  {
    [(COSApplicationLinkCell *)self setNeedsLayout];
  }
}

@end