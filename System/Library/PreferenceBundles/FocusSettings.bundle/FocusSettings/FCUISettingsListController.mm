@interface FCUISettingsListController
- (id)_configuredModeForSemanticType:(int64_t)a3;
- (void)_handleSetupRequestForSemanticType:(int64_t)a3;
- (void)_presentSetupControllerForUnknownMode;
- (void)_processSetupFlowRequest;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentSetupControllerForPlaceholderMode:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setupNavigationController:(id)a3 createDefaultModeConfigurationForMode:(id)a4;
- (void)viewDidLoad;
@end

@implementation FCUISettingsListController

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = FCUISettingsListController;
  v4 = a3;
  [(FCUISettingsListController *)&v7 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"FCUISettingsDeferredURLStateKey", v7.receiver, v7.super_class}];

  deferredURLState = self->_deferredURLState;
  self->_deferredURLState = v5;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = FCUISettingsListController;
  [(FCUISettingsListController *)&v16 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Focus" value:&stru_21648 table:0];
  [(FCUISettingsListController *)self setTitle:v4];

  v5 = [UIImageSymbolConfiguration configurationWithPointSize:[(FCUISettingsListController *)self imageSymbolWeight] weight:24.0];
  v6 = [UIImage systemImageNamed:@"plus" withConfiguration:v5];
  v7 = [UIButton buttonWithType:0];
  [v7 addTarget:self action:"_addButtonPressed:" forControlEvents:64];
  [v7 setFrame:{0.0, 0.0, 44.0, 44.0}];
  [v7 setImage:v6 forState:0];
  v8 = [v7 imageView];
  [v8 setContentMode:4];

  v9 = [v7 imageView];
  v10 = [(FCUISettingsListController *)self tintColor];
  [v9 setTintColor:v10];

  v11 = [[UIBarButtonItem alloc] initWithCustomView:v7];
  addButtomItem = self->_addButtomItem;
  self->_addButtomItem = v11;

  [(UIBarButtonItem *)self->_addButtomItem setHidden:self->_addButtonHidden];
  v13 = [(FCUISettingsListController *)self navigationItem];
  [v13 setRightBarButtonItem:self->_addButtomItem];

  deferredURLState = self->_deferredURLState;
  if (deferredURLState)
  {
    v15 = NSStringFromSelector("shouldPresentSetupFlow");
    [(FCUISettingsDeferredURLState *)deferredURLState addObserver:self forKeyPath:v15 options:1 context:&off_20F70];
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_56FC;
  v9[3] = &unk_20F80;
  v10 = a3;
  v11 = self;
  v12 = a4;
  v8.receiver = self;
  v8.super_class = FCUISettingsListController;
  v6 = v12;
  v7 = v10;
  [(FCUISettingsListController *)&v8 handleURL:v7 withCompletion:v9];
}

- (void)dealloc
{
  deferredURLState = self->_deferredURLState;
  if (deferredURLState)
  {
    v4 = NSStringFromSelector("shouldPresentSetupFlow");
    [(FCUISettingsDeferredURLState *)deferredURLState removeObserver:self forKeyPath:v4 context:&off_20F70];
  }

  v5.receiver = self;
  v5.super_class = FCUISettingsListController;
  [(FCUISettingsListController *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == &off_20F70)
  {
    v12 = a3;
    v13 = NSStringFromSelector("shouldPresentSetupFlow");
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = [v10 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_59EC;
        block[3] = &unk_20F08;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = FCUISettingsListController;
    v11 = a3;
    [(FCUISettingsListController *)&v17 observeValueForKeyPath:v11 ofObject:a4 change:v10 context:a6];
  }
}

- (void)presentSetupControllerForPlaceholderMode:(id)a3
{
  v4 = a3;
  v5 = [DNDMode alloc];
  v6 = [v4 name];
  v7 = [v4 modeIdentifier];
  v8 = [v4 symbolImageName];
  v9 = [v4 tintColorName];
  v10 = [v4 semanticType];

  v12 = [v5 initWithName:v6 modeIdentifier:v7 symbolImageName:v8 tintColorName:v9 semanticType:v10];
  v11 = [FCUISetupNavigationController setupNavigationControllerForMode:v12];
  [v11 setSetupDelegate:self];
  [(FCUISettingsListController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setupNavigationController:(id)a3 createDefaultModeConfigurationForMode:(id)a4
{
  v5 = a4;
  v6 = [(FCUISettingsListController *)self specifierDataSource];
  [v6 createDefaultModeConfigurationForMode:v5];
}

- (void)_processSetupFlowRequest
{
  [(FCUISettingsDeferredURLState *)self->_deferredURLState setShouldPresentSetupFlow:0];

  [(FCUISettingsListController *)self _presentSetupControllerForUnknownMode];
}

- (id)_configuredModeForSemanticType:(int64_t)a3
{
  v4 = [(FCUISettingsListController *)self specifierDataSource];
  v5 = [v4 allReservedModes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5D24;
  v8[3] = &unk_20DF0;
  v8[4] = a3;
  v6 = [v5 bs_firstObjectPassingTest:v8];

  return v6;
}

- (void)_presentSetupControllerForUnknownMode
{
  v6 = [(FCUISettingsListController *)self specifierDataSource];
  v3 = [v6 placeholderModes];
  v4 = [v6 allReservedModes];
  v5 = [FCUISetupNavigationController setupNavigationControllerForUnknownModeWithPlaceholderModes:v3 allReservedModes:v4];
  [v5 setSetupDelegate:self];
  [(FCUISettingsListController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_handleSetupRequestForSemanticType:(int64_t)a3
{
  v6 = [(FCUISettingsListController *)self specifierDataSource];
  v5 = [v6 placeholderModeForSemanticType:a3];
  [(FCUISettingsListController *)self presentSetupControllerForPlaceholderMode:v5];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Focus"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:@"Focus" table:0 locale:v7 bundleURL:v5];

  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(FCUISettingsListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.focus" title:v8 localizedNavigationComponents:v9 deepLink:v3];
}

@end