@interface CARWallpaperPanel
- (CARWallpaperPanel)initWithPanelController:(id)a3;
- (CGSize)cachedEffectiveSectionInsetLayoutSize;
- (UIEdgeInsets)cachedEffectiveSectionInset;
- (UIEdgeInsets)effectiveSectionHeaderInset;
- (UIEdgeInsets)effectiveSectionInset;
- (UIEdgeInsets)sectionInset;
- (id)_newPreviewPanelForWallpaper:(id)a3;
- (id)cellSpecifier;
- (id)specifierSections;
- (unint64_t)numberOfRows;
- (void)_vehicleDidChange:(id)a3;
- (void)invalidate;
@end

@implementation CARWallpaperPanel

- (CARWallpaperPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CARWallpaperPanel;
  v5 = [(CARSettingsPanel *)&v10 initWithPanelController:v4];
  if (v5)
  {
    v6 = [v4 loadWallpaperPreferences];
    wallpaperPreferences = v5->_wallpaperPreferences;
    v5->_wallpaperPreferences = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"_vehicleDidChange:" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];
  }

  return v5;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v5 = sub_10001C80C(@"WALLPAPER_TITLE");
    v6 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.wallpaper"];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100008690;
    v14 = &unk_1000DAE40;
    objc_copyWeak(&v15, &location);
    v7 = [(CARSettingsCellSpecifier *)v4 initWithTitle:v5 image:0 icon:v6 accessoryType:1 actionBlock:&v11];
    v8 = self->_cellSpecifier;
    self->_cellSpecifier = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  [(CARSettingsCellSpecifier *)cellSpecifier setAccessibilityIdentifier:@"CPSettingsWallpaperCell", v11, v12, v13, v14];
  v9 = self->_cellSpecifier;

  return v9;
}

- (id)specifierSections
{
  v3 = [(CARWallpaperPanel *)self sections];

  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = [(CARWallpaperPanel *)self wallpaperPreferences];
    v6 = [v5 dataProvider];
    v7 = [v6 wallpapers];

    objc_initWeak(&location, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000088D0;
    v17 = &unk_1000DAF00;
    v18 = self;
    objc_copyWeak(&v20, &location);
    v8 = v4;
    v19 = v8;
    [v7 enumerateObjectsUsingBlock:&v14];
    v9 = [CARSettingsCellSpecifierSection alloc];
    v10 = [(CARSettingsCellSpecifierSection *)v9 initWithTitle:0 specifiers:v8, v14, v15, v16, v17, v18];
    v22 = v10;
    v11 = [NSArray arrayWithObjects:&v22 count:1];
    [(CARWallpaperPanel *)self setSections:v11];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v12 = [(CARWallpaperPanel *)self sections];

  return v12;
}

- (unint64_t)numberOfRows
{
  v3 = [(CARWallpaperPanel *)self sections];
  v4 = [v3 firstObject];
  v5 = [v4 specifiers];
  v6 = [v5 count];

  v7 = [(CARWallpaperPanel *)self numberOfColumns]+ v6 - 1;
  return v7 / [(CARWallpaperPanel *)self numberOfColumns];
}

- (UIEdgeInsets)sectionInset
{
  v3 = [(CARWallpaperPanel *)self view];
  [v3 safeAreaInsets];
  v5 = v4 + 4.0;
  v6 = [(CARWallpaperPanel *)self view];
  [v6 safeAreaInsets];
  v8 = v7 + 4.0;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v12;
  result.bottom = v10;
  result.left = v11;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)effectiveSectionInset
{
  v3 = [(CARWallpaperPanel *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  height = CGSizeZero.height;

  if (CGSizeZero.width == v5 && height == v7)
  {
    v51 = sub_10001C784();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Using default sectionInset due to zero bounds", buf, 2u);
    }

    [(CARWallpaperPanel *)self sectionInset];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
  }

  else
  {
    v10 = [(CARSettingsPanel *)self panelController];
    v11 = [v10 carSession];
    v12 = [v11 configuration];
    v13 = [v12 screens];
    v14 = [v13 bs_firstObjectPassingTest:&stru_1000DAF20];

    v15 = [v14 currentViewArea];
    [v15 safeFrame];
    v17 = v16;
    v19 = v18;

    v20 = [(CARWallpaperPanel *)self view];
    v21 = [v20 safeAreaLayoutGuide];
    [v21 layoutFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(CARWallpaperPanel *)self cachedEffectiveSectionInsetLayoutSize];
    if (v27 != v31 || v29 != v30 || ([(CARWallpaperPanel *)self cachedEffectiveSectionInset], v33.f64[1] = v32, v35.f64[1] = v34, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v33), vceqq_f64(*&UIEdgeInsetsZero.bottom, v35)))) & 1) != 0))
    {
      [(CARWallpaperPanel *)self setCachedEffectiveSectionInsetLayoutSize:v27, v29];
      v107.origin.x = v23;
      v107.origin.y = v25;
      v107.size.width = v27;
      v107.size.height = v29;
      Width = CGRectGetWidth(v107);
      [(CARWallpaperPanel *)self sectionInset];
      v38 = Width - v37;
      [(CARWallpaperPanel *)self sectionInset];
      v40 = v38 - v39 - [(CARWallpaperPanel *)self numberOfColumns]* 8.0;
      v41 = v19 / v17;
      v42 = v41 * (v40 / [(CARWallpaperPanel *)self numberOfColumns]);
      v43 = [(CARWallpaperPanel *)self numberOfRows];
      v44 = [(CARWallpaperPanel *)self numberOfRows]* 8.0 + v42 * v43 + 32.0;
      v108.origin.x = v23;
      v108.origin.y = v25;
      v108.size.width = v27;
      v108.size.height = v29;
      v45 = CGRectGetHeight(v108) * 0.98;
      v46 = [v14 availableInteractionModels] & 2;
      if (v44 < v45 || v46 == 0)
      {
        v48 = sub_10001C784();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Using default sectionInset (no scroll bar needed)", buf, 2u);
        }

        [(CARWallpaperPanel *)self sectionInset];
        v50 = self;
      }

      else
      {
        v109.origin.x = v23;
        v109.origin.y = v25;
        v109.size.width = v27;
        v109.size.height = v29;
        v60 = CGRectGetWidth(v109) + -45.0;
        [(CARWallpaperPanel *)self sectionInset];
        v62 = v60 - v61;
        [(CARWallpaperPanel *)self sectionInset];
        v64 = v62 - v63 - [(CARWallpaperPanel *)self numberOfColumns]* 8.0;
        v65 = v41 * (v64 / [(CARWallpaperPanel *)self numberOfColumns]);
        v66 = [(CARWallpaperPanel *)self numberOfRows];
        v67 = [(CARWallpaperPanel *)self numberOfRows]* 8.0 + v65 * v66 + 32.0;
        v110.origin.x = v23;
        v110.origin.y = v25;
        v110.size.width = v27;
        v110.size.height = v29;
        v68 = CGRectGetHeight(v110) * 0.98;
        [(CARWallpaperPanel *)self sectionInset];
        v70 = v69;
        if (v67 >= v68)
        {
          v71 = [(CARSettingsPanel *)self panelController];
          v72 = [v71 carSession];
          v73 = [v72 configuration];
          [v73 rightHandDrive];

          [(CARWallpaperPanel *)self sectionInset];
        }

        v50 = self;
        v49 = v70;
      }

      [(CARWallpaperPanel *)v50 setCachedEffectiveSectionInset:v49];
      v74 = sub_10001C784();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v106.width = v27;
        v106.height = v29;
        v75 = NSStringFromCGSize(v106);
        [(CARWallpaperPanel *)self cachedEffectiveSectionInset];
        v76 = NSStringFromUIEdgeInsets(v111);
        [(CARWallpaperPanel *)self sectionInset];
        v77 = NSStringFromUIEdgeInsets(v112);
        v92 = [v14 currentViewArea];
        v93 = v14;
        [v92 safeFrame];
        v78 = NSStringFromCGRect(v113);
        v91 = [(CARWallpaperPanel *)self view];
        v79 = [v91 safeAreaLayoutGuide];
        [v79 layoutFrame];
        v80 = NSStringFromCGRect(v114);
        v81 = [(CARWallpaperPanel *)self view];
        [v81 safeAreaInsets];
        v82 = NSStringFromUIEdgeInsets(v115);
        *buf = 138413570;
        v95 = v75;
        v96 = 2112;
        v97 = v76;
        v98 = 2112;
        v99 = v77;
        v100 = 2112;
        v101 = v78;
        v102 = 2112;
        v103 = v80;
        v104 = 2112;
        v105 = v82;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[Settings] [CARWallpaper] Final effective section insets for layout: %@,                        using cachedEffectiveSectionInset: (%@);                        sectionInset:(%@);                        mainScreen.currentViewArea.safeFrame:(%@)                        self.view.safeAreaLayoutGuide.layoutFrame:(%@)                        self.view.safeAreaInsets(%@)", buf, 0x3Eu);

        v14 = v93;
      }
    }

    [(CARWallpaperPanel *)self cachedEffectiveSectionInset];
    v53 = v83;
    v55 = v84;
    v57 = v85;
    v59 = v86;
  }

  v87 = v53;
  v88 = v55;
  v89 = v57;
  v90 = v59;
  result.right = v90;
  result.bottom = v89;
  result.left = v88;
  result.top = v87;
  return result;
}

- (UIEdgeInsets)effectiveSectionHeaderInset
{
  [(CARWallpaperPanel *)self effectiveSectionInset];
  v5 = v4 + 4.0;
  v7 = v6 + 4.0;
  result.right = v7;
  result.bottom = v3;
  result.left = v5;
  result.top = v2;
  return result;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = CARWallpaperPanel;
  [(CARSettingsPanel *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (id)_newPreviewPanelForWallpaper:(id)a3
{
  v4 = a3;
  v5 = [_TtC15CarPlaySettings24CARWallpaperPreviewPanel alloc];
  v6 = [(CARWallpaperPanel *)self wallpaperPreferences];
  v7 = [(CARSettingsPanel *)self panelController];
  v8 = [(CARWallpaperPreviewPanel *)v5 initWithWallpaper:v4 wallpaperPreferences:v6 panelController:v7 completionHandler:&stru_1000DAF60];

  return v8;
}

- (void)_vehicleDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093A8;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (UIEdgeInsets)cachedEffectiveSectionInset
{
  top = self->_cachedEffectiveSectionInset.top;
  left = self->_cachedEffectiveSectionInset.left;
  bottom = self->_cachedEffectiveSectionInset.bottom;
  right = self->_cachedEffectiveSectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)cachedEffectiveSectionInsetLayoutSize
{
  width = self->_cachedEffectiveSectionInsetLayoutSize.width;
  height = self->_cachedEffectiveSectionInsetLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end