@interface BuddyUserInterfaceStyleSelector
+ (void)clearUserInterfaceStyleMode:(id)a3;
+ (void)setUserInterfaceStyleModeValue:(int64_t)a3 presented:(BOOL)a4 buddyPreferences:(id)a5;
- (BOOL)controllerNeedsToRun;
- (BuddyUserInterfaceStyleSelector)init;
- (_SelectionContentDisplayModel)_contentDisplayModel;
- (id)_darkImageNameForImageName:(id)a3;
- (void)_continuePressed;
- (void)_decorateComposedItemView:(id)a3 displayModel:(_SelectionContentDisplayModel)a4;
- (void)didSelectSegment:(int64_t)a3;
- (void)loadView;
- (void)userInterfaceStyleModeDidChange:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyUserInterfaceStyleSelector

- (BuddyUserInterfaceStyleSelector)init
{
  v14 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"APPEARANCE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"APPEARANCE_DETAIL"];
  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v13.receiver = self;
  v13.super_class = BuddyUserInterfaceStyleSelector;
  location = [(BuddyUserInterfaceStyleSelector *)&v13 initWithTitle:v4 detailText:v7 symbolName:0];
  objc_storeStrong(&location, location);

  if (location)
  {
    v8 = [UISUserInterfaceStyleMode alloc];
    v9 = [v8 initWithDelegate:location];
    v10 = *(location + 8);
    *(location + 8) = v9;
  }

  v11 = location;
  objc_storeStrong(&location, 0);
  return v11;
}

- (void)loadView
{
  v51 = self;
  v50 = a2;
  v49.receiver = self;
  v49.super_class = BuddyUserInterfaceStyleSelector;
  [(BuddyUserInterfaceStyleSelector *)&v49 loadView];
  v2 = +[NSMutableArray array];
  [(BuddyUserInterfaceStyleSelector *)v51 setTimeLabelWidthConstraints:v2];

  v3 = +[NSMutableArray array];
  [(BuddyUserInterfaceStyleSelector *)v51 setTimeLabelCenterYConstraints:v3];

  [(BuddyUserInterfaceStyleSelector *)v51 _contentDisplayModel];
  v47 = v4;
  v48 = v5;
  +[BuddyPosedDeviceSelectionView posedDevicesPadding];
  v46 = v6;
  v7 = [(BuddyUserInterfaceStyleSelector *)v51 view];
  [v7 directionalLayoutMargins];
  *&v44 = v8;
  *(&v44 + 1) = v9;
  *&v45 = v10;
  *(&v45 + 1) = v11;

  v12 = +[NSBundle mainBundle];
  v13 = [(NSBundle *)v12 localizedStringForKey:@"APPEARANCE_CHOICE_LIGHT" value:&stru_10032F900 table:@"Localizable"];
  v43 = [BuddyPosedDeviceSelectionView selectionItemWithImageName:@"Appearance" symbolName:@"checkmark.circle.fill" segment:0 text:v13 hostViewLayoutMargins:v44 posedDevicesPadding:v45, v46];

  v14 = +[NSBundle mainBundle];
  v15 = [(NSBundle *)v14 localizedStringForKey:@"APPEARANCE_CHOICE_AUTO" value:&stru_10032F900 table:@"Localizable"];
  v42 = [BuddyPosedDeviceSelectionView selectionItemWithImageName:@"Appearance-Auto" symbolName:@"checkmark.circle.fill" segment:2 text:v15 hostViewLayoutMargins:v44 posedDevicesPadding:v45, v46];

  v16 = +[NSBundle mainBundle];
  v17 = [(NSBundle *)v16 localizedStringForKey:@"APPEARANCE_CHOICE_DARK" value:&stru_10032F900 table:@"Localizable"];
  v41 = [BuddyPosedDeviceSelectionView selectionItemWithImageName:@"Appearance-Dark" symbolName:@"checkmark.circle.fill" segment:1 text:v17 hostViewLayoutMargins:v44 posedDevicesPadding:v45, v46];

  v18 = [[BuddyPosedDeviceSelectionView alloc] initWithLeftView:v43 centerView:v42 rightView:v41];
  [(BuddyPosedDeviceSelectionController *)v51 setSelectionView:v18];

  objc_initWeak(&location, v51);
  v34 = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = sub_1001379EC;
  v38 = &unk_10032D570;
  objc_copyWeak(&v39, &location);
  [(BuddyPosedDeviceSelectionController *)v51 setSelectionViewHeightChangeBlock:&v34];
  v19 = v51;
  v20 = +[NSBundle mainBundle];
  v21 = [(NSBundle *)v20 localizedStringForKey:@"APPEARANCE_CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v19 addBoldButton:v21 action:"_continuePressed"];

  v22 = v51;
  v23 = [(BuddyPosedDeviceSelectionController *)v51 selectionView];
  v24 = [(BuddyPosedDeviceSelectionView *)v23 leftPosedView];
  v25 = [(BuddyPosedDeviceSelectionItemView *)v24 contentContainer];
  [(BuddyUserInterfaceStyleSelector *)v22 _decorateComposedItemView:v25 displayModel:v47, v48];

  v26 = v51;
  v27 = [(BuddyPosedDeviceSelectionController *)v51 selectionView];
  v28 = [(BuddyPosedDeviceSelectionView *)v27 centerPosedView];
  v29 = [(BuddyPosedDeviceSelectionItemView *)v28 contentContainer];
  [(BuddyUserInterfaceStyleSelector *)v26 _decorateComposedItemView:v29 displayModel:v47, v48];

  v30 = v51;
  v31 = [(BuddyPosedDeviceSelectionController *)v51 selectionView];
  v32 = [(BuddyPosedDeviceSelectionView *)v31 rightPosedView];
  v33 = [(BuddyPosedDeviceSelectionItemView *)v32 contentContainer];
  [(BuddyUserInterfaceStyleSelector *)v30 _decorateComposedItemView:v33 displayModel:v47, v48];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = BuddyUserInterfaceStyleSelector;
  [(BuddyPosedDeviceSelectionController *)&v9 viewWillAppear:a3];
  location = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  v3 = [location modeValue];
  if (v3 == 1)
  {
    v7 = 0;
  }

  else if (v3 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v4 = [(BuddyPosedDeviceSelectionController *)v12 selectionView];
  [(BuddyPosedDeviceSelectionView *)v4 selectSegment:v7];

  v5 = [(BuddyUserInterfaceStyleSelector *)v12 buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanFalse forKey:@"UserInterfaceStyleModePresented"];

  v6 = [(BuddyUserInterfaceStyleSelector *)v12 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v6 clearActionForFeature:9];

  objc_storeStrong(&location, 0);
}

+ (void)setUserInterfaceStyleModeValue:(int64_t)a3 presented:(BOOL)a4 buddyPreferences:(id)a5
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  [v5 setModeValue:{v11, v5}];
  v6 = location;
  v7 = [NSNumber numberWithBool:v10];
  [v6 setObject:v7 forKey:@"UserInterfaceStyleModePresented"];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearUserInterfaceStyleMode:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [objc_opt_class() setUserInterfaceStyleModeValue:1 presented:0 buddyPreferences:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyUserInterfaceStyleSelector *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"UserInterfaceStyleModePresented"]^ 1;

  return v3 & 1;
}

- (void)_decorateComposedItemView:(id)a3 displayModel:(_SelectionContentDisplayModel)a4
{
  v30 = a4;
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v27 setNumberOfLines:1];
  v4 = [UIFont systemFontOfSize:60.5 weight:UIFontWeightMedium];
  [v27 setFont:v4];

  [v27 setAdjustsFontSizeToFitWidth:1];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"APPEARANCE_CHOICE_POSED_TIME" value:&stru_10032F900 table:@"Localizable"];
  [v27 setText:v6];

  [v27 setBaselineAdjustment:1];
  [v27 setTextAlignment:1];
  v7 = +[UIColor systemWhiteColor];
  [v27 setTextColor:v7];

  [location[0] addSubview:v27];
  v8 = [v27 widthAnchor];
  var1 = v30.var1;
  [location[0] bounds];
  v25[2] = v10;
  v25[1] = v11;
  v25[4] = v12;
  v25[3] = v13;
  v26 = [v8 constraintEqualToConstant:var1 * *&v12];

  [v26 setActive:1];
  v14 = [v27 centerXAnchor];
  v15 = [location[0] centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:2.0];
  [v16 setActive:1];

  v17 = [v27 centerYAnchor];
  v18 = [location[0] centerYAnchor];
  [location[0] bounds];
  v25[0] = [v17 constraintEqualToAnchor:v18 constant:{-(v19 * v30.var0), v20, v21, v22, *&v19}];

  [v25[0] setActive:1];
  v23 = [(BuddyUserInterfaceStyleSelector *)v29 timeLabelCenterYConstraints];
  [(NSMutableArray *)v23 addObject:v25[0]];

  v24 = [(BuddyUserInterfaceStyleSelector *)v29 timeLabelWidthConstraints];
  [(NSMutableArray *)v24 addObject:v26];

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (_SelectionContentDisplayModel)_contentDisplayModel
{
  v15 = self;
  v14 = a2;
  v13 = 0.256222486;
  v12 = 0x3FC99999A0000000;
  location = +[BYDevice currentDevice];
  if ([location type] == 1)
  {
    if ([location hasHomeButton])
    {
      v13 = 0.239999995;
      v12 = 0x3FCB851EC0000000;
    }

    else
    {
      v13 = 0.256229997;
      v12 = 0x3FC99999A0000000;
    }
  }

  else
  {
    v2 = [location size];
    if (!v2)
    {
      goto LABEL_25;
    }

    if ((v2 - 1) < 2)
    {
      v13 = 0.239999995;
      v12 = 0x3FD051EB80000000;
      goto LABEL_28;
    }

    if (v2 == 3)
    {
      v13 = 0.263000011;
      v12 = 0x3FCCCCCCC0000000;
      goto LABEL_28;
    }

    if (v2 == 4)
    {
LABEL_25:
      if ([location mainScreenClass] == 22 || objc_msgSend(location, "mainScreenClass") == 24 || objc_msgSend(location, "mainScreenClass") == 25)
      {
        v13 = 0.263000011;
        v12 = 0x3FCCCCCCC0000000;
      }

      else
      {
        v13 = 0.230000004;
        v12 = 0x3FD051EB80000000;
      }
    }

    else if (v2 == 5)
    {
      v13 = 0.272000015;
      v12 = 0x3FCCCCCCC0000000;
    }

    else if (v2 == 6)
    {
      v3 = +[UIScreen mainScreen];
      [(UIScreen *)v3 bounds];
      v9 = 0;
      v5 = 0;
      if (v4 >= 414.0)
      {
        v10 = +[UIScreen mainScreen];
        v9 = 1;
        [(UIScreen *)v10 bounds];
        v5 = v6 >= 896.0;
      }

      if (v9)
      {
      }

      if (v5)
      {
        v13 = 0.272000015;
      }

      else
      {
        v13 = 0.263000011;
      }

      v12 = 0x3FCCCCCCC0000000;
    }
  }

LABEL_28:
  v16 = v13 * 1.2;
  v17 = *&v12;
  objc_storeStrong(&location, 0);
  v7 = v16;
  v8 = v17;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)_darkImageNameForImageName:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] stringByAppendingString:@"_dark"];
  objc_storeStrong(location, 0);

  return v3;
}

- (void)_continuePressed
{
  v2 = [(BuddyUserInterfaceStyleSelector *)self settingsManager];
  v3 = [(BuddyUserInterfaceStyleSelector *)self styleMode];
  [(BFFSettingsManager *)v2 setUserInterfaceStyleMode:[(UISUserInterfaceStyleMode *)v3 modeValue]];

  v4 = [(BuddyUserInterfaceStyleSelector *)self buddyPreferences];
  [(BYPreferencesController *)v4 setObject:&__kCFBooleanTrue forKey:@"UserInterfaceStyleModePresented"];

  v5 = [(BuddyUserInterfaceStyleSelector *)self paneFeatureAnalyticsManager];
  v6 = [(BuddyUserInterfaceStyleSelector *)self styleMode];
  v7 = [NSNumber numberWithInteger:[(UISUserInterfaceStyleMode *)v6 modeValue]];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:v7 forFeature:9];

  v8 = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)v8 flowItemDone:self nextItemClass:0];
}

- (void)userInterfaceStyleModeDidChange:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  v8 = 0;
  if ([location[0] modeValue] == 2)
  {
    v3 = +[UIColor blackColor];
    v11 = v3;
    v10 = 1;
  }

  else
  {
    v3 = +[UIColor whiteColor];
    v9 = v3;
    v8 = 1;
  }

  v12 = v3;
  if (v8)
  {
  }

  if (v10)
  {
  }

  v4 = [v12 colorWithAlphaComponent:0.96];
  v7 = BFFPointImageOfColor();

  v5 = [(BuddyUserInterfaceStyleSelector *)v14 navigationController];
  v6 = [v5 navigationBar];
  [v6 setBackgroundImage:v7 forBarMetrics:0];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectSegment:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = [(BuddyUserInterfaceStyleSelector *)self styleMode];
      [(UISUserInterfaceStyleMode *)v5 setModeValue:2];
    }

    else if (a3 == 2)
    {
      v4 = [(BuddyUserInterfaceStyleSelector *)self styleMode];
      [(UISUserInterfaceStyleMode *)v4 setModeValue:100];
    }
  }

  else
  {
    v3 = [(BuddyUserInterfaceStyleSelector *)self styleMode];
    [(UISUserInterfaceStyleMode *)v3 setModeValue:1];
  }
}

@end