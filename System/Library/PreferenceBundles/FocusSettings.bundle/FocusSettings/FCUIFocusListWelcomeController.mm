@interface FCUIFocusListWelcomeController
+ (id)welcomeControllerWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes;
- (FCUIFocusListWelcomeController)initWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes;
- (id)_activityControlForCustomMode;
- (id)_activityControlForPlaceholderMode:(id)mode;
- (void)_configureActivityListView;
- (void)viewDidLoad;
@end

@implementation FCUIFocusListWelcomeController

+ (id)welcomeControllerWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes
{
  reservedModesCopy = reservedModes;
  modesCopy = modes;
  v7 = [[FCUIFocusListWelcomeController alloc] initWithPlaceholderModes:modesCopy allReservedModes:reservedModesCopy];

  return v7;
}

- (FCUIFocusListWelcomeController)initWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes
{
  modesCopy = modes;
  reservedModesCopy = reservedModes;
  v9 = [(FCUIFocusListWelcomeController *)self initWithTitle:&stru_21648 detailText:&stru_21648 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((&v9->super + 1), modes);
    objc_storeStrong((&v10->_placeholderModes + 1), reservedModes);
  }

  return v10;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = FCUIFocusListWelcomeController;
  [(FCUIBaseWelcomeController *)&v25 viewDidLoad];
  headerView = [(FCUIFocusListWelcomeController *)self headerView];
  LODWORD(v4) = 1036831949;
  [headerView setTitleHyphenationFactor:v4];
  v5 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v6 = [v5 localizedStringForKey:@"ONBOARDING_FOCUS_LIST_TITLE" value:&stru_21648 table:0];

  [headerView setTitle:v6];
  v7 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v8 = [v7 localizedStringForKey:@"ONBOARDING_FOCUS_LIST_DETAIL_TEXT" value:&stru_21648 table:0];

  [headerView setDetailText:v8];
  contentView = [(FCUIFocusListWelcomeController *)self contentView];
  v10 = objc_alloc_init(FCUIActivityListView);
  v11 = *(&self->_allReservedModes + 1);
  *(&self->_allReservedModes + 1) = v10;

  [*(&self->_allReservedModes + 1) setScrollEnabled:0];
  [*(&self->_allReservedModes + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:*(&self->_allReservedModes + 1)];
  v12 = objc_alloc_init(NSMutableArray);
  leadingAnchor = [*(&self->_allReservedModes + 1) leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  [v12 addObject:v15];

  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [*(&self->_allReservedModes + 1) trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:30.0];
  [v12 addObject:v18];

  topAnchor = [*(&self->_allReservedModes + 1) topAnchor];
  topAnchor2 = [contentView topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:40.0];
  [v12 addObject:v21];

  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [*(&self->_allReservedModes + 1) bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:40.0];
  [v12 addObject:v24];

  [NSLayoutConstraint activateConstraints:v12];
  [(FCUIFocusListWelcomeController *)self _configureActivityListView];
}

- (void)_configureActivityListView
{
  v3 = objc_alloc_init(NSMutableArray);
  _activityControlForCustomMode = [(FCUIFocusListWelcomeController *)self _activityControlForCustomMode];
  [v3 addObject:_activityControlForCustomMode];

  allObjects = [*(&self->super + 1) allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&stru_20FA0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(FCUIFocusListWelcomeController *)self _activityControlForPlaceholderMode:*(*(&v13 + 1) + 8 * v11), v13];
        [v3 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [*(&self->_allReservedModes + 1) setActivityViews:v3];
}

- (id)_activityControlForCustomMode
{
  v3 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v4 = [v3 localizedStringForKey:@"ONBOARDING_FOCUS_LIST_CUSTOM_MODE_NAME" value:&stru_21648 table:0];

  v5 = [[DNDMode alloc] initWithName:v4 modeIdentifier:&stru_21648 symbolImageName:@"plus.circle.fill" tintColorName:@"systemDarkGrayColor" semanticType:-1];
  v6 = [[FCUIFocus alloc] initWithMode:v5];
  v7 = [[FCUIActivityControl alloc] initWithActivityDescription:v6];
  v8 = *(&self->_placeholderModes + 1);
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_6E00;
  v12[3] = &unk_20FC8;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v13 = v9;
  v10 = [UIAction actionWithHandler:v12];
  [v7 addAction:v10 forControlEvents:64];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_activityControlForPlaceholderMode:(id)mode
{
  modeCopy = mode;
  v5 = [[FCUIFocus alloc] initWithMode:modeCopy];
  v6 = [[FCUIActivityControl alloc] initWithActivityDescription:v5];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6FE0;
  v10[3] = &unk_20FC8;
  objc_copyWeak(&v12, &location);
  v7 = modeCopy;
  v11 = v7;
  v8 = [UIAction actionWithHandler:v10];
  [v6 addAction:v8 forControlEvents:64];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

@end