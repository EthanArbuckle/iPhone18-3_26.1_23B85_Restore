@interface AXAppleWatchRemoteScreenController
- (id)specifiers;
- (id)twiceRemtoeScreenValue:(id)value;
- (void)dealloc;
- (void)twiceRemtoeScreenValue:(id)value specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation AXAppleWatchRemoteScreenController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = AXAppleWatchRemoteScreenController;
  [(AXAppleWatchRemoteScreenController *)&v13 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kAXSTwiceRemoteScreenNotification;
  v5 = +[NSOperationQueue mainQueue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __49__AXAppleWatchRemoteScreenController_viewDidLoad__block_invoke;
  v10 = &unk_2581B0;
  objc_copyWeak(&v11, &location);
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:&v7];
  [(AXAppleWatchRemoteScreenController *)self setObserverToken:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__AXAppleWatchRemoteScreenController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  observerToken = [(AXAppleWatchRemoteScreenController *)self observerToken];

  if (observerToken)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    observerToken2 = [(AXAppleWatchRemoteScreenController *)self observerToken];
    [v4 removeObserver:observerToken2];
  }

  v6.receiver = self;
  v6.super_class = AXAppleWatchRemoteScreenController;
  [(AccessibilitySettingsBaseController *)&v6 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = settingsLocString(@"APPLE_WATCH_REMOTE_SCREEN_FOOTER", @"Accessibility");
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    [v5 addObject:v6];
    v8 = settingsLocString(@"APPLE_WATCH_REMOTE_SCREEN", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"twiceRemtoeScreenValue:specifier:" get:"twiceRemtoeScreenValue:" detail:0 cell:6 edit:0];

    [v9 setProperty:@"APPLE_WATCH_REMOTE_SCREEN" forKey:PSIDKey];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v5 addObject:v9];
    v10 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)twiceRemtoeScreenValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  _AXSTwiceRemoteScreenSetPlatform();
  bOOLValue = [valueCopy BOOLValue];

  __AXSTwiceRemoteScreenSetEnabled(bOOLValue);
}

- (id)twiceRemtoeScreenValue:(id)value
{
  v3 = _AXSTwiceRemoteScreenEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

@end