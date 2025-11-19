@interface FCUIFocusListWelcomeController
+ (id)welcomeControllerWithPlaceholderModes:(id)a3 allReservedModes:(id)a4;
- (FCUIFocusListWelcomeController)initWithPlaceholderModes:(id)a3 allReservedModes:(id)a4;
- (id)_activityControlForCustomMode;
- (id)_activityControlForPlaceholderMode:(id)a3;
- (void)_configureActivityListView;
- (void)viewDidLoad;
@end

@implementation FCUIFocusListWelcomeController

+ (id)welcomeControllerWithPlaceholderModes:(id)a3 allReservedModes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FCUIFocusListWelcomeController alloc] initWithPlaceholderModes:v6 allReservedModes:v5];

  return v7;
}

- (FCUIFocusListWelcomeController)initWithPlaceholderModes:(id)a3 allReservedModes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FCUIFocusListWelcomeController *)self initWithTitle:&stru_21648 detailText:&stru_21648 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((&v9->super + 1), a3);
    objc_storeStrong((&v10->_placeholderModes + 1), a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = FCUIFocusListWelcomeController;
  [(FCUIBaseWelcomeController *)&v25 viewDidLoad];
  v3 = [(FCUIFocusListWelcomeController *)self headerView];
  LODWORD(v4) = 1036831949;
  [v3 setTitleHyphenationFactor:v4];
  v5 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v6 = [v5 localizedStringForKey:@"ONBOARDING_FOCUS_LIST_TITLE" value:&stru_21648 table:0];

  [v3 setTitle:v6];
  v7 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v8 = [v7 localizedStringForKey:@"ONBOARDING_FOCUS_LIST_DETAIL_TEXT" value:&stru_21648 table:0];

  [v3 setDetailText:v8];
  v9 = [(FCUIFocusListWelcomeController *)self contentView];
  v10 = objc_alloc_init(FCUIActivityListView);
  v11 = *(&self->_allReservedModes + 1);
  *(&self->_allReservedModes + 1) = v10;

  [*(&self->_allReservedModes + 1) setScrollEnabled:0];
  [*(&self->_allReservedModes + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:*(&self->_allReservedModes + 1)];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [*(&self->_allReservedModes + 1) leadingAnchor];
  v14 = [v9 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:30.0];
  [v12 addObject:v15];

  v16 = [v9 trailingAnchor];
  v17 = [*(&self->_allReservedModes + 1) trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:30.0];
  [v12 addObject:v18];

  v19 = [*(&self->_allReservedModes + 1) topAnchor];
  v20 = [v9 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:40.0];
  [v12 addObject:v21];

  v22 = [v9 bottomAnchor];
  v23 = [*(&self->_allReservedModes + 1) bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:40.0];
  [v12 addObject:v24];

  [NSLayoutConstraint activateConstraints:v12];
  [(FCUIFocusListWelcomeController *)self _configureActivityListView];
}

- (void)_configureActivityListView
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(FCUIFocusListWelcomeController *)self _activityControlForCustomMode];
  [v3 addObject:v4];

  v5 = [*(&self->super + 1) allObjects];
  v6 = [v5 sortedArrayUsingComparator:&stru_20FA0];

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

- (id)_activityControlForPlaceholderMode:(id)a3
{
  v4 = a3;
  v5 = [[FCUIFocus alloc] initWithMode:v4];
  v6 = [[FCUIActivityControl alloc] initWithActivityDescription:v5];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6FE0;
  v10[3] = &unk_20FC8;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [UIAction actionWithHandler:v10];
  [v6 addAction:v8 forControlEvents:64];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

@end