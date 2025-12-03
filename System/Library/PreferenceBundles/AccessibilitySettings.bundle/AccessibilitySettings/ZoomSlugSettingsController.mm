@interface ZoomSlugSettingsController
- (id)specifiers;
- (id)zoomControllerColorSummary:(id)summary;
- (id)zoomIdleSlugOpacitySummary:(id)summary;
- (id)zoomShouldShowSlug:(id)slug;
- (id)zoomSlugDoubleTapActionSummary:(id)summary;
- (id)zoomSlugSingleTapActionSummary:(id)summary;
- (id)zoomSlugTripleTapActionSummary:(id)summary;
- (id)zoomTapAndSlideToAdjustZoomLevel:(id)level;
- (int64_t)zoomConrtollerColor:(id)color;
- (void)setZoomShouldShowSlug:(id)slug specifier:(id)specifier;
- (void)setZoomTapAndSlideToAdjustZoomLevel:(id)level specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation ZoomSlugSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(ZoomSlugSettingsController *)self loadSpecifiersFromPlistName:@"ZoomSlugSettings" target:self];
    v7 = settingsLocString(@"ZOOM_SHOW_CONTROLLER_FOOTER_TEXT", @"ZoomSlugSettings");
    if (AXForceTouchAvailableAndEnabled())
    {
      v8 = settingsLocString(@"FORCE_TOUCH_ZOOM_INSTRUCTIONS", @"Accessibility");
      v9 = [v7 stringByAppendingString:v8];

      v7 = v9;
    }

    v10 = [PSSpecifier groupSpecifierWithName:0];
    [v10 setProperty:v7 forKey:PSFooterTextGroupKey];
    [v5 addObject:v10];
    [v5 addObjectsFromArray:v6];
    v11 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = ZoomSlugSettingsController;
  [(ZoomSlugSettingsController *)&v22 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke;
  v19[3] = &unk_255388;
  objc_copyWeak(&v20, &location);
  [v3 registerUpdateBlock:v19 forRetrieveSelector:"zoomSlugSingleTapAction" withListener:self];

  objc_destroyWeak(&v20);
  v4 = +[AXSettings sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_2;
  v17[3] = &unk_255388;
  objc_copyWeak(&v18, &location);
  [v4 registerUpdateBlock:v17 forRetrieveSelector:"zoomSlugDoubleTapAction" withListener:self];

  objc_destroyWeak(&v18);
  v5 = +[AXSettings sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_3;
  v15[3] = &unk_255388;
  objc_copyWeak(&v16, &location);
  [v5 registerUpdateBlock:v15 forRetrieveSelector:"zoomSlugTripleTapAction" withListener:self];

  objc_destroyWeak(&v16);
  v6 = +[AXSettings sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_4;
  v13[3] = &unk_255388;
  objc_copyWeak(&v14, &location);
  [v6 registerUpdateBlock:v13 forRetrieveSelector:"zoomIdleSlugOpacity" withListener:self];

  objc_destroyWeak(&v14);
  v7 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_5;
  v11[3] = &unk_255388;
  objc_copyWeak(&v12, &location);
  [v7 registerUpdateBlock:v11 forRetrieveSelector:"zoomShouldShowSlug" withListener:self];

  objc_destroyWeak(&v12);
  v8 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_6;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  [v8 registerUpdateBlock:v9 forRetrieveSelector:"zoomControllerColor" withListener:self];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ZoomSlugSettingsController_viewDidLoad__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (id)zoomShouldShowSlug:(id)slug
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomShouldShowSlug]);

  return v4;
}

- (void)setZoomShouldShowSlug:(id)slug specifier:(id)specifier
{
  bOOLValue = [slug BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomShouldShowSlug:bOOLValue];
}

- (id)zoomTapAndSlideToAdjustZoomLevel:(id)level
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 zoomSlugTapAndSlideToAdjustZoomLevelEnabled]);

  return v4;
}

- (void)setZoomTapAndSlideToAdjustZoomLevel:(id)level specifier:(id)specifier
{
  bOOLValue = [level BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setZoomSlugTapAndSlideToAdjustZoomLevelEnabled:bOOLValue];
}

- (int64_t)zoomConrtollerColor:(id)color
{
  v3 = +[AXSettings sharedInstance];
  zoomControllerColor = [v3 zoomControllerColor];

  return zoomControllerColor;
}

- (id)zoomControllerColorSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForColor([v3 zoomControllerColor]);

  return v4;
}

- (id)zoomIdleSlugOpacitySummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  [v3 zoomIdleSlugOpacity];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (id)zoomSlugSingleTapActionSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSlugAction([v3 zoomSlugSingleTapAction]);

  return v4;
}

- (id)zoomSlugDoubleTapActionSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSlugAction([v3 zoomSlugDoubleTapAction]);

  return v4;
}

- (id)zoomSlugTripleTapActionSummary:(id)summary
{
  v3 = +[AXSettings sharedInstance];
  v4 = AXLocalizedTitleForSlugAction([v3 zoomSlugTripleTapAction]);

  return v4;
}

@end