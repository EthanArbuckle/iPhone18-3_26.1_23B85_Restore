@interface FCUISettingsListController
- (id)_configuredModeForSemanticType:(int64_t)type;
- (void)_handleSetupRequestForSemanticType:(int64_t)type;
- (void)_presentSetupControllerForUnknownMode;
- (void)_processSetupFlowRequest;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentSetupControllerForPlaceholderMode:(id)mode;
- (void)setSpecifier:(id)specifier;
- (void)setupNavigationController:(id)controller createDefaultModeConfigurationForMode:(id)mode;
- (void)viewDidLoad;
@end

@implementation FCUISettingsListController

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = FCUISettingsListController;
  specifierCopy = specifier;
  [(FCUISettingsListController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"FCUISettingsDeferredURLStateKey", v7.receiver, v7.super_class}];

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
  imageView = [v7 imageView];
  [imageView setContentMode:4];

  imageView2 = [v7 imageView];
  tintColor = [(FCUISettingsListController *)self tintColor];
  [imageView2 setTintColor:tintColor];

  v11 = [[UIBarButtonItem alloc] initWithCustomView:v7];
  addButtomItem = self->_addButtomItem;
  self->_addButtomItem = v11;

  [(UIBarButtonItem *)self->_addButtomItem setHidden:self->_addButtonHidden];
  navigationItem = [(FCUISettingsListController *)self navigationItem];
  [navigationItem setRightBarButtonItem:self->_addButtomItem];

  deferredURLState = self->_deferredURLState;
  if (deferredURLState)
  {
    v15 = NSStringFromSelector("shouldPresentSetupFlow");
    [(FCUISettingsDeferredURLState *)deferredURLState addObserver:self forKeyPath:v15 options:1 context:&off_20F70];
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_56FC;
  v9[3] = &unk_20F80;
  lCopy = l;
  selfCopy = self;
  completionCopy = completion;
  v8.receiver = self;
  v8.super_class = FCUISettingsListController;
  v6 = completionCopy;
  v7 = lCopy;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == &off_20F70)
  {
    pathCopy = path;
    v13 = NSStringFromSelector("shouldPresentSetupFlow");
    v14 = [pathCopy isEqualToString:v13];

    if (v14)
    {
      v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
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
    pathCopy2 = path;
    [(FCUISettingsListController *)&v17 observeValueForKeyPath:pathCopy2 ofObject:object change:changeCopy context:context];
  }
}

- (void)presentSetupControllerForPlaceholderMode:(id)mode
{
  modeCopy = mode;
  v5 = [DNDMode alloc];
  name = [modeCopy name];
  modeIdentifier = [modeCopy modeIdentifier];
  symbolImageName = [modeCopy symbolImageName];
  tintColorName = [modeCopy tintColorName];
  semanticType = [modeCopy semanticType];

  v12 = [v5 initWithName:name modeIdentifier:modeIdentifier symbolImageName:symbolImageName tintColorName:tintColorName semanticType:semanticType];
  v11 = [FCUISetupNavigationController setupNavigationControllerForMode:v12];
  [v11 setSetupDelegate:self];
  [(FCUISettingsListController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setupNavigationController:(id)controller createDefaultModeConfigurationForMode:(id)mode
{
  modeCopy = mode;
  specifierDataSource = [(FCUISettingsListController *)self specifierDataSource];
  [specifierDataSource createDefaultModeConfigurationForMode:modeCopy];
}

- (void)_processSetupFlowRequest
{
  [(FCUISettingsDeferredURLState *)self->_deferredURLState setShouldPresentSetupFlow:0];

  [(FCUISettingsListController *)self _presentSetupControllerForUnknownMode];
}

- (id)_configuredModeForSemanticType:(int64_t)type
{
  specifierDataSource = [(FCUISettingsListController *)self specifierDataSource];
  allReservedModes = [specifierDataSource allReservedModes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5D24;
  v8[3] = &unk_20DF0;
  v8[4] = type;
  v6 = [allReservedModes bs_firstObjectPassingTest:v8];

  return v6;
}

- (void)_presentSetupControllerForUnknownMode
{
  specifierDataSource = [(FCUISettingsListController *)self specifierDataSource];
  placeholderModes = [specifierDataSource placeholderModes];
  allReservedModes = [specifierDataSource allReservedModes];
  v5 = [FCUISetupNavigationController setupNavigationControllerForUnknownModeWithPlaceholderModes:placeholderModes allReservedModes:allReservedModes];
  [v5 setSetupDelegate:self];
  [(FCUISettingsListController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_handleSetupRequestForSemanticType:(int64_t)type
{
  specifierDataSource = [(FCUISettingsListController *)self specifierDataSource];
  v5 = [specifierDataSource placeholderModeForSemanticType:type];
  [(FCUISettingsListController *)self presentSetupControllerForPlaceholderMode:v5];
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Focus"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:@"Focus" table:0 locale:v7 bundleURL:bundleURL];

  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(FCUISettingsListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.focus" title:v8 localizedNavigationComponents:v9 deepLink:v3];
}

@end