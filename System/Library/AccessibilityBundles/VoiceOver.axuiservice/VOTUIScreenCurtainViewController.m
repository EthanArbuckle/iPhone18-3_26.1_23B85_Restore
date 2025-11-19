@interface VOTUIScreenCurtainViewController
- (void)_updateScreenCurtainForInvertColors:(id)a3;
- (void)removeFromParentViewController;
- (void)setEnabled:(BOOL)a3 animate:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation VOTUIScreenCurtainViewController

- (void)setEnabled:(BOOL)a3 animate:(BOOL)a4
{
  enabled = self->_enabled;
  if (enabled && !a3)
  {
    v7 = 0.3;
    if (!a4)
    {
      v7 = 0.0;
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_11820;
    v17 = &unk_3D218;
    v18 = self;
    v8 = &v14;
LABEL_11:
    [UIView animateWithDuration:v8 animations:v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18];
    goto LABEL_12;
  }

  if (a3 && !enabled)
  {
    v7 = 0.3;
    if (!a4)
    {
      v7 = 0.0;
    }

    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_11868;
    v12 = &unk_3D218;
    v13 = self;
    v8 = &v9;
    goto LABEL_11;
  }

LABEL_12:
  self->_enabled = a3;
  [(VOTUIScreenCurtainViewController *)self _updateScreenCurtainForInvertColors:0, a4];
}

- (void)removeFromParentViewController
{
  v6.receiver = self;
  v6.super_class = VOTUIScreenCurtainViewController;
  [(VOTUIScreenCurtainViewController *)&v6 removeFromParentViewController];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[AXSpringBoardServer server];
  v5 = [(VOTUIScreenCurtainViewController *)self screenshotActionHandlerIdentifier];
  [v4 removeActionHandler:v5];
}

- (void)_updateScreenCurtainForInvertColors:(id)a3
{
  if (!self->_enabled)
  {
    return;
  }

  v4 = self;
  if (AXIsInternalInstall())
  {
    if (CFPreferencesGetAppBooleanValue(@"UseAlpha1ScreenCurtain", kAXSAccessibilityPreferenceDomain, 0))
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.999999881;
    }
  }

  else
  {
    v5 = 0.999999881;
  }

  v9 = [v4 curtainView];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (IsInvertColorsEnabled || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), ([v4 classicInvertColors] & 1) != 0))
  {
    v7 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:v5];
    [v9 setBackgroundColor:v7];

    if (IsInvertColorsEnabled)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v5];
    [v9 setBackgroundColor:v8];
  }

LABEL_14:
}

- (void)viewDidLoad
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(VOTUIScreenCurtainViewController *)self setView:v7];

  v8 = [(VOTUIScreenCurtainViewController *)self view];
  [v8 setAutoresizingMask:18];

  v9 = [(VOTUIScreenCurtainViewController *)self view];
  [v9 autoresizesSubviews];

  v10 = [[VOTUIScreenCurtainView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(VOTUIScreenCurtainViewController *)self setCurtainView:v10];

  v11 = [(VOTUIScreenCurtainViewController *)self curtainView];
  [v11 setAutoresizingMask:18];

  v12 = [(VOTUIScreenCurtainViewController *)self curtainView];
  [v12 setUserInteractionEnabled:0];

  if (self->_enabled)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_11E68;
    v26[3] = &unk_3D218;
    v26[4] = self;
    [UIView animateWithDuration:v26 animations:0.3];
  }

  else
  {
    v13 = [(VOTUIScreenCurtainViewController *)self curtainView];
    [v13 setAlpha:0.0];
  }

  v14 = [(VOTUIScreenCurtainViewController *)self view];
  v15 = [(VOTUIScreenCurtainViewController *)self curtainView];
  [v14 addSubview:v15];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_11EBC;
  v24[4] = sub_11ECC;
  v16 = self;
  v25 = v16;
  v17 = +[AXSpringBoardServer server];
  v22[4] = v16;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_11ED4;
  v23[3] = &unk_3D448;
  v23[4] = v24;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_11FA8;
  v22[3] = &unk_3D470;
  [v17 registerSpringBoardActionHandler:v23 withIdentifierCallback:v22];

  v18 = +[AXSettings sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_11FB4;
  v21[3] = &unk_3D1A0;
  v21[4] = v24;
  [v18 registerUpdateBlock:v21 forRetrieveSelector:"classicInvertColors" withListener:v16];

  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:v16 selector:"_updateScreenCurtainForInvertColors:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  v20.receiver = v16;
  v20.super_class = VOTUIScreenCurtainViewController;
  [(VOTUIScreenCurtainViewController *)&v20 viewDidLoad];
  _Block_object_dispose(v24, 8);
}

@end