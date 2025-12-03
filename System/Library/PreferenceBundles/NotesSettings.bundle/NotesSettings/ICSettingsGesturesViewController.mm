@interface ICSettingsGesturesViewController
- (BOOL)allowFingerToSwipeFromCornerOrDefaultFallback;
- (BOOL)chamoisWindowingEnabled;
- (ICSettingsGesturesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSBundle)settingsBundle;
- (PSSpecifier)fingerSwipeSpecifier;
- (id)allowFingerToSwipeFromCorner:(id)corner;
- (id)bottomLeftCornerGestureFeature:(id)feature;
- (id)bottomRightCornerGestureFeature:(id)feature;
- (id)fingerAndPencilSectionFooter;
- (id)specifiers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAllowFingerToSwipeFromCorner:(id)corner specifier:(id)specifier;
- (void)setBottomLeftCornerGestureFeature:(id)feature specifier:(id)specifier;
- (void)setBottomRightCornerGestureFeature:(id)feature specifier:(id)specifier;
@end

@implementation ICSettingsGesturesViewController

- (ICSettingsGesturesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = ICSettingsGesturesViewController;
  v4 = [(ICSettingsGesturesViewController *)&v10 initWithNibName:name bundle:bundle];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICSettingsGesturesViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/SettingsBundle/ICSettingsGesturesViewController.m"]& 1) != 0)
  {
    v13 = [(ICSettingsGesturesViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_22918 && (v13 & 1) == 0)
    {
      fingerSwipeSpecifier = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
      v15 = [NSNumber numberWithInt:[(ICSettingsGesturesViewController *)self chamoisWindowingEnabled]^ 1];
      [fingerSwipeSpecifier setProperty:v15 forKey:PSEnabledKey];

      fingerSwipeSpecifier2 = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
      [(ICSettingsGesturesViewController *)self reloadSpecifier:fingerSwipeSpecifier2 animated:1];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ICSettingsGesturesViewController;
    [(ICSettingsGesturesViewController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (NSBundle)settingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)fingerAndPencilSectionFooter
{
  allowFingerToSwipeFromCornerOrDefaultFallback = [(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback];
  settingsBundle = [(ICSettingsGesturesViewController *)self settingsBundle];
  v5 = settingsBundle;
  if (allowFingerToSwipeFromCornerOrDefaultFallback)
  {
    v6 = @"FINGER_AND_PENCIL_GESTURES";
    v7 = @"Actions when you swipe your finger or pencil from a bottom corner.";
  }

  else
  {
    v6 = @"PENCIL_GESTURES";
    v7 = @"Actions when you swipe your pencil from a bottom corner.";
  }

  v8 = [settingsBundle localizedStringForKey:v6 value:v7 table:@"Settings"];

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
    settingsBundle = [(ICSettingsGesturesViewController *)self settingsBundle];
    v8 = [settingsBundle localizedStringForKey:@"CORNER_GESTURES" value:@"Corner Gestures" table:@"Settings"];
    v9 = [PSSpecifier groupSpecifierWithName:v8];

    v40 = v9;
    [v6 addObject:v9];
    settingsBundle2 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v11 = [settingsBundle2 localizedStringForKey:@"ALLOW_FINGER_TO_SWIPE_FROM_CORNER" value:@"Allow Finger to Swipe From Corner" table:@"Settings"];

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
    settingsBundle3 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v15 = [settingsBundle3 localizedStringForKey:@"OFF" value:@"Off" table:@"Settings"];

    settingsBundle4 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v17 = [settingsBundle4 localizedStringForKey:@"QUICK_NOTE" value:@"Quick Note" table:@"Settings"];

    settingsBundle5 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v19 = [settingsBundle5 localizedStringForKey:@"SCREENSHOT" value:@"Screenshot" table:@"Settings"];

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
    settingsBundle6 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v33 = [settingsBundle6 localizedStringForKey:@"BOTTOM_LEFT_CORNER_SWIPE" value:@"Left Corner Swipe" table:@"Settings"];

    v34 = v17;
    v23 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:"setBottomLeftCornerGestureFeature:specifier:" get:"bottomLeftCornerGestureFeature:" detail:objc_opt_class() cell:2 edit:0];
    [v23 setIdentifier:ICBottomLeftCornerSwipePrefIdentifier];
    [v23 setValues:v20];
    [v23 setTitleDictionary:v21];
    [v32 addObject:v23];
    settingsBundle7 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v25 = [settingsBundle7 localizedStringForKey:@"BOTTOM_RIGHT_CORNER_SWIPE" value:@"Right Corner Swipe" table:@"Settings"];

    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setBottomRightCornerGestureFeature:specifier:" get:"bottomRightCornerGestureFeature:" detail:objc_opt_class() cell:2 edit:0];
    [v26 setIdentifier:ICBottomRightCornerSwipePrefIdentifier];
    [v26 setValues:v20];
    [v26 setTitleDictionary:v21];
    [v32 addObject:v26];
    settingsBundle8 = [(ICSettingsGesturesViewController *)self settingsBundle];
    v28 = [settingsBundle8 localizedStringForKey:@"CORNER_GESTURES_FOOTER" value:@"Select the action that occurs when you swipe diagonally from the bottom corner." table:@"Settings"];

    [v37 setProperty:v28 forKey:PSFooterTextGroupKey];
    v29 = [v32 copy];
    v30 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v29;

    v4 = *&self->PSListController_opaque[v2];
  }

  return v4;
}

- (id)allowFingerToSwipeFromCorner:(id)corner
{
  v4 = ![(ICSettingsGesturesViewController *)self chamoisWindowingEnabled]&& [(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback];

  return [NSNumber numberWithInt:v4];
}

- (void)setAllowFingerToSwipeFromCorner:(id)corner specifier:(id)specifier
{
  -[ICSettingsGesturesViewController setBackingStoreForAllowFingerToSwipeFromCorner:](self, "setBackingStoreForAllowFingerToSwipeFromCorner:", [corner BOOLValue]);
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomLeftTouchTypes = [cornerGestureDefaults bottomLeftTouchTypes];

  cornerGestureDefaults2 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomRightTouchTypes = [cornerGestureDefaults2 bottomRightTouchTypes];

  backingStoreForAllowFingerToSwipeFromCorner = [(ICSettingsGesturesViewController *)self backingStoreForAllowFingerToSwipeFromCorner];
  v10 = bottomLeftTouchTypes | 1;
  if (!bottomLeftTouchTypes)
  {
    v10 = 0;
  }

  v11 = bottomRightTouchTypes | 1;
  if (!bottomRightTouchTypes)
  {
    v11 = 0;
  }

  if (backingStoreForAllowFingerToSwipeFromCorner)
  {
    v12 = v10;
  }

  else
  {
    v12 = bottomLeftTouchTypes & 0xFFFFFFFFFFFFFFFELL;
  }

  if (backingStoreForAllowFingerToSwipeFromCorner)
  {
    v13 = v11;
  }

  else
  {
    v13 = bottomRightTouchTypes & 0xFFFFFFFFFFFFFFFELL;
  }

  cornerGestureDefaults3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  [cornerGestureDefaults3 setBottomLeftTouchTypes:v12];

  cornerGestureDefaults4 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  [cornerGestureDefaults4 setBottomRightTouchTypes:v13];
}

- (id)bottomLeftCornerGestureFeature:(id)feature
{
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [cornerGestureDefaults bottomLeftFeature]);

  return v4;
}

- (void)setBottomLeftCornerGestureFeature:(id)feature specifier:(id)specifier
{
  featureCopy = feature;
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomLeftTouchTypes = [cornerGestureDefaults bottomLeftTouchTypes];

  if ([(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback]&& (bottomLeftTouchTypes & 1) == 0)
  {
    cornerGestureDefaults2 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    [cornerGestureDefaults2 setBottomLeftTouchTypes:bottomLeftTouchTypes | 1];
  }

  cornerGestureDefaults3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  integerValue = [featureCopy integerValue];

  [cornerGestureDefaults3 setBottomLeftFeature:integerValue];
  fingerSwipeSpecifier = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
  [(ICSettingsGesturesViewController *)self reloadSpecifier:fingerSwipeSpecifier animated:1];
}

- (id)bottomRightCornerGestureFeature:(id)feature
{
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [cornerGestureDefaults bottomRightFeature]);

  return v4;
}

- (void)setBottomRightCornerGestureFeature:(id)feature specifier:(id)specifier
{
  featureCopy = feature;
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomRightTouchTypes = [cornerGestureDefaults bottomRightTouchTypes];

  if ([(ICSettingsGesturesViewController *)self allowFingerToSwipeFromCornerOrDefaultFallback]&& (bottomRightTouchTypes & 1) == 0)
  {
    cornerGestureDefaults2 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    [cornerGestureDefaults2 setBottomRightTouchTypes:bottomRightTouchTypes | 1];
  }

  cornerGestureDefaults3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  integerValue = [featureCopy integerValue];

  [cornerGestureDefaults3 setBottomRightFeature:integerValue];
  fingerSwipeSpecifier = [(ICSettingsGesturesViewController *)self fingerSwipeSpecifier];
  [(ICSettingsGesturesViewController *)self reloadSpecifier:fingerSwipeSpecifier animated:1];
}

- (BOOL)allowFingerToSwipeFromCornerOrDefaultFallback
{
  cornerGestureDefaults = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomLeftTouchTypes = [cornerGestureDefaults bottomLeftTouchTypes];

  cornerGestureDefaults2 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
  bottomRightTouchTypes = [cornerGestureDefaults2 bottomRightTouchTypes];

  if (bottomRightTouchTypes | bottomLeftTouchTypes)
  {
    cornerGestureDefaults3 = [(ICSettingsGesturesViewController *)self cornerGestureDefaults];
    anyCornerGestureAllowsDirectTouches = [cornerGestureDefaults3 anyCornerGestureAllowsDirectTouches];

    return anyCornerGestureAllowsDirectTouches;
  }

  else
  {

    return [(ICSettingsGesturesViewController *)self backingStoreForAllowFingerToSwipeFromCorner];
  }
}

- (BOOL)chamoisWindowingEnabled
{
  springBoardDefaults = [(ICSettingsGesturesViewController *)self springBoardDefaults];
  v3 = [springBoardDefaults BOOLForKey:@"SBChamoisWindowingEnabled"];

  return v3;
}

- (PSSpecifier)fingerSwipeSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_fingerSwipeSpecifier);

  return WeakRetained;
}

@end