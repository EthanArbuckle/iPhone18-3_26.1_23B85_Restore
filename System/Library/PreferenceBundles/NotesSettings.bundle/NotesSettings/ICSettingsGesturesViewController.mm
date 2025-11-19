@interface ICSettingsGesturesViewController
- (BOOL)allowFingerToSwipeFromCornerOrDefaultFallback;
- (BOOL)chamoisWindowingEnabled;
- (ICSettingsGesturesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSBundle)settingsBundle;
- (PSSpecifier)fingerSwipeSpecifier;
- (id)allowFingerToSwipeFromCorner:(id)a3;
- (id)bottomLeftCornerGestureFeature:(id)a3;
- (id)bottomRightCornerGestureFeature:(id)a3;
- (id)fingerAndPencilSectionFooter;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAllowFingerToSwipeFromCorner:(id)a3 specifier:(id)a4;
- (void)setBottomLeftCornerGestureFeature:(id)a3 specifier:(id)a4;
- (void)setBottomRightCornerGestureFeature:(id)a3 specifier:(id)a4;
@end

@implementation ICSettingsGesturesViewController

- (ICSettingsGesturesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = ICSettingsGesturesViewController;
  v4 = [(ICSettingsGesturesViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(ICSettingsGesturesDefaults);
    cornerGestureDefaults = v4->_cornerGestureDefaults;
    v4->_cornerGestureDefaults = v5;

    v4->_backingStoreForAllowFingerToSwipeFromCorner = 1;
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
    springBoardDefaults = v4->_springBoardDefaults;
    v4->_springBoardDefaults = v7;

    [(NSUserDefaults *)v4->_springBoardDefaults addObserver:v4 forKeyPath:@"SBChamoisWindowingEnabled" options:1 context:&off_22918];
  }

  return v4;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_springBoardDefaults removeObserver:self forKeyPath:@"SBChamoisWindowingEnabled" context:&off_22918];
  v3.receiver = self;
  v3.super_class = ICSettingsGesturesViewController;
  [(ICSettingsGesturesViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICSettingsGesturesViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/SettingsBundle/ICSettingsGesturesViewController.m"]& 1) != 0)
  {
    v13 = [(ICSettingsGesturesViewController *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &off_22918 && (v13 & 1) == 0)
    {
      v14 = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
      v15 = [NSNumber numberWithInt:[(ICSettingsGesturesViewController *)self chamoisWindowingEnabled]^ 1];
      [v14 setProperty:v15 forKey:PSEnabledKey];

      v16 = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
      [(ICSettingsGesturesViewController *)self reloadSpecifier:v16 animated:1];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ICSettingsGesturesViewController;
    [(ICSettingsGesturesViewController *)&v17 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (NSBundle)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)fingerAndPencilSectionFooter
{
  v3 = [(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback];
  v4 = [(ICSettingsGesturesViewController *)self settingsBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"FINGER_AND_PENCIL_GESTURES";
    v7 = @"Actions when you swipe your finger or pencil from a bottom corner.";
  }

  else
  {
    v6 = @"PENCIL_GESTURES";
    v7 = @"Actions when you swipe your pencil from a bottom corner.";
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:@"Settings"];

  return v8;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v7 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v8 = [v7 localizedStringForKey:@"CORNER_GESTURES" value:@"Corner Gestures" table:@"Settings"];
    v9 = [PSSpecifier groupSpecifierWithName:v8];

    v40 = v9;
    [v6 addObject:v9];
    v10 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v11 = [v10 localizedStringForKey:@"ALLOW_FINGER_TO_SWIPE_FROM_CORNER" value:@"Allow Finger to Swipe From Corner" table:@"Settings"];

    v39 = v11;
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setAllowFingerToSwipeFromCorner:specifier:" get:"allowFingerToSwipeFromCorner:" detail:0 cell:6 edit:0];
    [v12 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
    v13 = [NSNumber numberWithInt:[(ICSettingsGesturesViewController *)self chamoisWindowingEnabled]^ 1];
    [v12 setProperty:v13 forKey:PSEnabledKey];

    [(ICSettingsGesturesViewController *)self setFingerSwipeSpecifier:v12];
    v38 = v12;
    [v6 addObject:v12];
    [PSSpecifier groupSpecifierWithID:@"GESTURES"];
    v37 = v32 = v6;
    [v6 addObject:?];
    v14 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v15 = [v14 localizedStringForKey:@"OFF" value:@"Off" table:@"Settings"];

    v16 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v17 = [v16 localizedStringForKey:@"QUICK_NOTE" value:@"Quick Note" table:@"Settings"];

    v18 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v19 = [v18 localizedStringForKey:@"SCREENSHOT" value:@"Screenshot" table:@"Settings"];

    v20 = +[NSMutableArray array];
    [v20 addObject:&off_1EF98];
    if (+[ICDeviceSupport deviceSupportsSystemPaper])
    {
      [v20 addObject:&off_1EFB0];
    }

    [v20 addObject:&off_1EFC8];
    v21 = +[NSMutableDictionary dictionary];
    v36 = v15;
    [v21 setObject:v15 forKeyedSubscript:&off_1EF98];
    if (+[ICDeviceSupport deviceSupportsSystemPaper])
    {
      [v21 setObject:v17 forKeyedSubscript:&off_1EFB0];
    }

    v35 = v19;
    [v21 setObject:v19 forKeyedSubscript:&off_1EFC8];
    v22 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v33 = [v22 localizedStringForKey:@"BOTTOM_LEFT_CORNER_SWIPE" value:@"Left Corner Swipe" table:@"Settings"];

    v34 = v17;
    v23 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"setBottomLeftCornerGestureFeature:specifier:" get:"bottomLeftCornerGestureFeature:" detail:objc_opt_class() cell:2 edit:0];
    [v23 setIdentifier:ICBottomLeftCornerSwipePrefIdentifier];
    [v23 setValues:v20];
    [v23 setTitleDictionary:v21];
    [v32 addObject:v23];
    v24 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v25 = [v24 localizedStringForKey:@"BOTTOM_RIGHT_CORNER_SWIPE" value:@"Right Corner Swipe" table:@"Settings"];

    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setBottomRightCornerGestureFeature:specifier:" get:"bottomRightCornerGestureFeature:" detail:objc_opt_class() cell:2 edit:0];
    [v26 setIdentifier:ICBottomRightCornerSwipePrefIdentifier];
    [v26 setValues:v20];
    [v26 setTitleDictionary:v21];
    [v32 addObject:v26];
    v27 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v28 = [v27 localizedStringForKey:@"CORNER_GESTURES_FOOTER" value:@"Select the action that occurs when you swipe diagonally from the bottom corner." table:@"Settings"];

    [v37 setProperty:v28 forKey:PSFooterTextGroupKey];
    v29 = [v32 copy];
    v30 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v29;

    v4 = *&self->PSListController_opaque[v2];
  }

  return v4;
}

- (id)allowFingerToSwipeFromCorner:(id)a3
{
  v4 = ![(ICSettingsGesturesViewController *)self chamoisWindowingEnabled]&& [(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback];

  return [NSNumber numberWithInt:v4];
}

- (void)setAllowFingerToSwipeFromCorner:(id)a3 specifier:(id)a4
{
  -[ICSettingsGesturesViewController setBackingStoreForAllowFingerToSwipeFromCorner:](self, "setBackingStoreForAllowFingerToSwipeFromCorner:", [a3 BOOLValue]);
  v5 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v6 = [v5 bottomLeftTouchTypes];

  v7 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v8 = [v7 bottomRightTouchTypes];

  v9 = [(ICSettingsGesturesViewController *)self backingStoreForAllowFingerToSwipeFromCorner];
  v10 = v6 | 1;
  if (!v6)
  {
    v10 = 0;
  }

  v11 = v8 | 1;
  if (!v8)
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v9)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8 & 0xFFFFFFFFFFFFFFFELL;
  }

  v14 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  [v14 setBottomLeftTouchTypes:v12];

  v15 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  [v15 setBottomRightTouchTypes:v13];
}

- (id)bottomLeftCornerGestureFeature:(id)a3
{
  v3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 bottomLeftFeature]);

  return v4;
}

- (void)setBottomLeftCornerGestureFeature:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v7 = [v6 bottomLeftTouchTypes];

  if ([(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback]&& (v7 & 1) == 0)
  {
    v8 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    [v8 setBottomLeftTouchTypes:v7 | 1];
  }

  v9 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v10 = [v5 integerValue];

  [v9 setBottomLeftFeature:v10];
  v11 = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
  [(ICSettingsGesturesViewController *)self reloadSpecifier:v11 animated:1];
}

- (id)bottomRightCornerGestureFeature:(id)a3
{
  v3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 bottomRightFeature]);

  return v4;
}

- (void)setBottomRightCornerGestureFeature:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v7 = [v6 bottomRightTouchTypes];

  if ([(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback]&& (v7 & 1) == 0)
  {
    v8 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    [v8 setBottomRightTouchTypes:v7 | 1];
  }

  v9 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v10 = [v5 integerValue];

  [v9 setBottomRightFeature:v10];
  v11 = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
  [(ICSettingsGesturesViewController *)self reloadSpecifier:v11 animated:1];
}

- (BOOL)allowFingerToSwipeFromCornerOrDefaultFallback
{
  v3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v4 = [v3 bottomLeftTouchTypes];

  v5 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v6 = [v5 bottomRightTouchTypes];

  if (v6 | v4)
  {
    v7 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    v8 = [v7 anyCornerGestureAllowsDirectTouches];

    return v8;
  }

  else
  {

    return [(ICSettingsGesturesViewController *)self backingStoreForAllowFingerToSwipeFromCorner];
  }
}

- (BOOL)chamoisWindowingEnabled
{
  v2 = [(ICSettingsGesturesViewController *)self springBoardDefaults];
  v3 = [v2 BOOLForKey:@"SBChamoisWindowingEnabled"];

  return v3;
}

- (PSSpecifier)fingerSwipeSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_fingerSwipeSpecifier);

  return WeakRetained;
}

@end