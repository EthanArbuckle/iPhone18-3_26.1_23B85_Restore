@interface THDisplaySettingsViewController
- (BOOL)_shouldShowAutoNightMode;
- (THDisplaySettingsViewController)initWithDelegate:(id)delegate;
- (THDisplaySettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)appearanceRowHeight;
- (double)p_bestPopoverHeightForSections:(id)sections;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_grayThemeButtonImageSelected:(BOOL)selected;
- (id)_nightThemeButtonImageSelected:(BOOL)selected;
- (id)_sepiaThemeButtonImageSelected:(BOOL)selected;
- (id)_themeButtonImageWithColor:(id)color selected:(BOOL)selected;
- (id)_whiteThemeButtonImageSelected:(BOOL)selected;
- (id)autoNightModeSwitch;
- (id)p_buildSupportedSections;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)themeContainer;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)p_currentFlowSizeScale;
- (unint64_t)p_displaySectionForSection:(int64_t)section;
- (void)_changeAppearanceStyle:(int64_t)style;
- (void)_restoreAutoNightModeSwitch;
- (void)_turnAutoNightModeSwitchOff;
- (void)contentSizeCategoryDidChange;
- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout;
- (void)dealloc;
- (void)decreaseFontSize:(id)size;
- (void)decreaseFontSize:(id)size notifyingCoordinator:(BOOL)coordinator;
- (void)didReceiveMemoryWarning;
- (void)handleAutoNightModeSwitch:(id)switch;
- (void)increaseFontSize:(id)size;
- (void)increaseFontSize:(id)size notifyingCoordinator:(BOOL)coordinator;
- (void)onScrollSwitch:(id)switch;
- (void)p_resizePopoverViewAnimated:(BOOL)animated;
- (void)p_setCurrentFlowSizeScale:(unint64_t)scale;
- (void)p_setPopoverScrolling;
- (void)p_validateButtonsAnimated:(BOOL)animated;
- (void)releaseViews;
- (void)setAppearanceStyle:(int64_t)style;
- (void)setAutoNightModeSwitch:(BOOL)switch;
- (void)setTheme:(id)theme;
- (void)setThemeGray:(id)gray;
- (void)setThemeNight:(id)night;
- (void)setThemeNormal:(id)normal;
- (void)setThemeSepia:(id)sepia;
- (void)stylizeForTheme;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateThemeButtons;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THDisplaySettingsViewController

- (THDisplaySettingsViewController)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = THDisplaySettingsViewController;
  v4 = [(THDisplaySettingsViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(THDisplaySettingsViewController *)v4 setDelegate:delegate];
    sub_29CC1C(v5);
  }

  return v5;
}

- (THDisplaySettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = THDisplaySettingsViewController;
  v4 = [(THDisplaySettingsViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    sub_29CC1C(v4);
  }

  return v5;
}

- (void)releaseViews
{
  [(UIButton *)self->_themeWhiteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_themeWhiteButton = 0;
  [(UIButton *)self->_themeSepiaButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_themeSepiaButton = 0;
  [(UIButton *)self->_themeGrayButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_themeGrayButton = 0;
  [(UIButton *)self->_themeNightButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_themeNightButton = 0;
  self->_themeContainer = 0;

  self->_autoNightModeSwitch = 0;
  v3.receiver = self;
  v3.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v3 releaseViews];
}

- (void)dealloc
{
  [(THDisplaySettingsViewController *)self releaseViews];

  self->_supportedSections = 0;
  [+[BCThemeCoordinator shared](BCThemeCoordinator "shared")];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:THScrollingViewDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [(THDisplaySettingsViewController *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v4 dealloc];
}

- (unint64_t)p_currentFlowSizeScale
{
  v2 = +[THApplicationSettings sharedSettings];

  return [v2 flowSizeScale];
}

- (void)p_setCurrentFlowSizeScale:(unint64_t)scale
{
  v4 = +[THApplicationSettings sharedSettings];

  [v4 setFlowSizeScale:scale];
}

- (void)onScrollSwitch:(id)switch
{
  if ([-[THDisplaySettingsViewController scrollSwitch](self scrollSwitch])
  {
    [-[THDisplaySettingsViewController scrollSwitch](self "scrollSwitch")];
    v4 = dispatch_time(0, 10000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5E44C;
    block[3] = &unk_45AE00;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)p_validateButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")];
  [-[THDisplaySettingsViewController sizeSmallerButton](self "sizeSmallerButton")];
  [-[THDisplaySettingsViewController sizeLargerButton](self "sizeLargerButton")];
  [-[THDisplaySettingsViewController scrollSwitch](self "scrollSwitch")];
  [-[THDisplaySettingsViewController scrollSwitch](self "scrollSwitch")];

  [(THDisplaySettingsViewController *)self p_resizePopoverViewAnimated:animatedCopy];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v5 viewDidLoad];
  [-[THDisplaySettingsViewController view](self "view")];
  [+[BCThemeCoordinator shared](BCThemeCoordinator "shared")];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"handleScrollingViewDidChange:" name:THScrollingViewDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  [(THDisplaySettingsViewController *)self setSupportedSections:[(THDisplaySettingsViewController *)self p_buildSupportedSections]];
  [(THDisplaySettingsViewController *)self p_bestPopoverHeightForSections:[(THDisplaySettingsViewController *)self supportedSections]];
  [(THDisplaySettingsViewController *)self setPreferredContentSize:296.0, v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v4 viewDidAppear:appear];
  [(THDisplaySettingsViewController *)self p_setPopoverScrolling];
}

- (void)p_setPopoverScrolling
{
  tableView = [(THDisplaySettingsViewController *)self tableView];
  [tableView frame];
  Height = CGRectGetHeight(v7);
  [(THDisplaySettingsViewController *)self preferredContentSize];

  [tableView setScrollEnabled:Height > v5];
}

- (void)contentSizeCategoryDidChange
{
  [(THDisplaySettingsViewController *)self releaseAuxiliaryCachedViews];
  [(THDisplaySettingsViewController *)self p_resizePopoverViewAnimated:0];

  [(THDisplaySettingsViewController *)self updateBrightness];
}

- (id)p_buildSupportedSections
{
  v3 = +[NSMutableArray array];
  v4 = +[BEAppearanceViewController canChangeBrightness];
  if (v4)
  {
    [v3 addObject:&off_49D078];
  }

  if ([-[THDisplaySettingsViewController delegate](self "delegate")])
  {
    [v3 addObject:&off_49D090];
  }

  if ([-[THDisplaySettingsViewController delegate](self "delegate")])
  {
    [v3 addObject:&off_49D0A8];
  }

  if ([-[THDisplaySettingsViewController delegate](self "delegate")])
  {
    if (v4)
    {
      [v3 addObject:&off_49D0C0];
    }

    else
    {
      [v3 insertObject:&off_49D0C0 atIndex:0];
    }
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v4 viewWillAppear:appear];
  [(THDisplaySettingsViewController *)self p_validateButtonsAnimated:0];
  [(THDisplaySettingsViewController *)self stylizeForTheme];
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v3 didReceiveMemoryWarning];
  [(THDisplaySettingsViewController *)self releaseViews];
}

- (void)increaseFontSize:(id)size
{
  [(THDisplaySettingsViewController *)self p_setCurrentFlowSizeScale:[(THDisplaySettingsViewController *)self p_currentFlowSizeScale]+ 1];

  [(THDisplaySettingsViewController *)self increaseFontSize:size notifyingCoordinator:1];
}

- (void)increaseFontSize:(id)size notifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  [(THDisplaySettingsViewController *)self p_validateButtonsAnimated:0];
  [-[THDisplaySettingsViewController delegate](self "delegate")];
  if (coordinatorCopy)
  {
    v6 = +[BCThemeCoordinator shared];

    [v6 observerDidIncreaseFontSize:self];
  }
}

- (void)decreaseFontSize:(id)size
{
  [(THDisplaySettingsViewController *)self p_setCurrentFlowSizeScale:[(THDisplaySettingsViewController *)self p_currentFlowSizeScale]- 1];

  [(THDisplaySettingsViewController *)self decreaseFontSize:size notifyingCoordinator:1];
}

- (void)decreaseFontSize:(id)size notifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  [(THDisplaySettingsViewController *)self p_validateButtonsAnimated:0];
  [-[THDisplaySettingsViewController delegate](self "delegate")];
  if (coordinatorCopy)
  {
    v6 = +[BCThemeCoordinator shared];

    [v6 observerDidDecreaseFontSize:self];
  }
}

- (void)setAutoNightModeSwitch:(BOOL)switch
{
  switchCopy = switch;
  [(UISwitch *)self->_autoNightModeSwitch setEnabled:?];
  v4 = +[NSUserDefaults standardUserDefaults];

  [(NSUserDefaults *)v4 setBool:!switchCopy forKey:@"THAppearanceDisableAutoNightModeSwitchKey"];
}

- (BOOL)_shouldShowAutoNightMode
{
  v2 = +[BCLightLevelController shared];

  return [v2 shouldMonitorLightLevel];
}

- (void)_turnAutoNightModeSwitchOff
{
  isOn = [(UISwitch *)self->_autoNightModeSwitch isOn];
  if (isOn)
  {
    [(UISwitch *)self->_autoNightModeSwitch setOn:0 animated:1];
    [(UISwitch *)self->_autoNightModeSwitch sendActionsForControlEvents:4096];
  }

  v4 = +[NSUserDefaults standardUserDefaults];

  [(NSUserDefaults *)v4 setBool:isOn forKey:@"THAppearanceAutoNightModeSwitchWasOnKey"];
}

- (void)_restoreAutoNightModeSwitch
{
  if ([+[NSUserDefaults BOOLForKey:"BOOLForKey:"]
  {
    [(UISwitch *)self->_autoNightModeSwitch setOn:1 animated:1];
    autoNightModeSwitch = self->_autoNightModeSwitch;

    [(UISwitch *)autoNightModeSwitch sendActionsForControlEvents:4096];
  }
}

- (id)themeContainer
{
  result = self->_themeContainer;
  if (!result)
  {
    v4 = [[UIStackView alloc] initWithFrame:{0.0, 0.0, 244.0, 55.0}];
    self->_themeContainer = v4;
    [(UIStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_themeContainer setDistribution:4];
    [(UIStackView *)self->_themeContainer setAlignment:3];
    [(UIStackView *)self->_themeContainer setSpacing:20.0];
    v5 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 46.0, 55.0}];
    self->_themeWhiteButton = v5;
    [(UIButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_themeWhiteButton setImage:[(THDisplaySettingsViewController *)self _whiteThemeButtonImageSelected:0] forState:0];
    [(UIButton *)self->_themeWhiteButton setImage:[(THDisplaySettingsViewController *)self _whiteThemeButtonImageSelected:1] forState:4];
    [(UIButton *)self->_themeWhiteButton addTarget:self action:"setThemeNormal:" forControlEvents:64];
    [(UIButton *)self->_themeWhiteButton setTitleColor:+[UIColor forState:"blackColor"], 0];
    -[UIButton setAccessibilityLabel:](self->_themeWhiteButton, "setAccessibilityLabel:", [THBundle() localizedStringForKey:@"White" value:&stru_471858 table:0]);
    [(UIButton *)self->_themeWhiteButton setAccessibilityIdentifier:@"theme well white"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeWhiteButton];
    v6 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 46.0, 55.0}];
    self->_themeSepiaButton = v6;
    [(UIButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_themeSepiaButton setImage:[(THDisplaySettingsViewController *)self _sepiaThemeButtonImageSelected:0] forState:0];
    [(UIButton *)self->_themeSepiaButton setImage:[(THDisplaySettingsViewController *)self _sepiaThemeButtonImageSelected:1] forState:4];
    [(UIButton *)self->_themeSepiaButton addTarget:self action:"setThemeSepia:" forControlEvents:64];
    [(UIButton *)self->_themeSepiaButton setTitleColor:+[UIColor forState:"blackColor"], 0];
    -[UIButton setAccessibilityLabel:](self->_themeSepiaButton, "setAccessibilityLabel:", [THBundle() localizedStringForKey:@"Sepia" value:&stru_471858 table:0]);
    [(UIButton *)self->_themeSepiaButton setAccessibilityIdentifier:@"theme well sepia"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeSepiaButton];
    v7 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 46.0, 55.0}];
    self->_themeGrayButton = v7;
    [(UIButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_themeGrayButton setImage:[(THDisplaySettingsViewController *)self _grayThemeButtonImageSelected:0] forState:0];
    [(UIButton *)self->_themeGrayButton setImage:[(THDisplaySettingsViewController *)self _grayThemeButtonImageSelected:1] forState:4];
    [(UIButton *)self->_themeGrayButton addTarget:self action:"setThemeGray:" forControlEvents:64];
    [(UIButton *)self->_themeGrayButton setTitleColor:+[UIColor forState:"blackColor"], 0];
    -[UIButton setAccessibilityLabel:](self->_themeGrayButton, "setAccessibilityLabel:", [THBundle() localizedStringForKey:@"Gray" value:&stru_471858 table:0]);
    [(UIButton *)self->_themeGrayButton setAccessibilityIdentifier:@"theme well gray"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeGrayButton];
    v8 = [[UIButton alloc] initWithFrame:{0.0, 0.0, 46.0, 55.0}];
    self->_themeNightButton = v8;
    [(UIButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_themeNightButton setImage:[(THDisplaySettingsViewController *)self _nightThemeButtonImageSelected:0] forState:0];
    [(UIButton *)self->_themeNightButton setImage:[(THDisplaySettingsViewController *)self _nightThemeButtonImageSelected:1] forState:4];
    [(UIButton *)self->_themeNightButton addTarget:self action:"setThemeNight:" forControlEvents:64];
    [(UIButton *)self->_themeNightButton setTitleColor:+[UIColor forState:"blackColor"], 0];
    -[UIButton setAccessibilityLabel:](self->_themeNightButton, "setAccessibilityLabel:", [THBundle() localizedStringForKey:@"Night" value:&stru_471858 table:0]);
    [(UIButton *)self->_themeNightButton setAccessibilityIdentifier:@"theme well night"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeNightButton];
    v9[0] = [-[UIStackView widthAnchor](self->_themeContainer "widthAnchor")];
    v9[1] = [-[UIStackView heightAnchor](self->_themeContainer "heightAnchor")];
    v9[2] = [-[UIButton widthAnchor](self->_themeWhiteButton "widthAnchor")];
    v9[3] = [-[UIButton heightAnchor](self->_themeWhiteButton "heightAnchor")];
    v9[4] = [-[UIButton widthAnchor](self->_themeSepiaButton "widthAnchor")];
    v9[5] = [-[UIButton heightAnchor](self->_themeSepiaButton "heightAnchor")];
    v9[6] = [-[UIButton widthAnchor](self->_themeGrayButton "widthAnchor")];
    v9[7] = [-[UIButton heightAnchor](self->_themeGrayButton "heightAnchor")];
    v9[8] = [-[UIButton widthAnchor](self->_themeNightButton "widthAnchor")];
    v9[9] = [-[UIButton heightAnchor](self->_themeNightButton "heightAnchor")];
    [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v9 count:10]];
    [(THDisplaySettingsViewController *)self updateThemeButtons];
    return self->_themeContainer;
  }

  return result;
}

- (void)setAppearanceStyle:(int64_t)style
{
  if (self->_appearanceStyle != style)
  {
    self->_appearanceStyle = style;
    [(THDisplaySettingsViewController *)self updateThemeButtons];
  }
}

- (void)_changeAppearanceStyle:(int64_t)style
{
  [(THDisplaySettingsViewController *)self setAppearanceStyle:?];
  [+[BCThemeCoordinator shared](BCThemeCoordinator "shared")];
  delegate = [(THDisplaySettingsViewController *)self delegate];
  appearanceStyle = [(THDisplaySettingsViewController *)self appearanceStyle];

  [delegate displaySettingsController:self didChangeStyle:appearanceStyle];
}

- (void)stylizeForTheme
{
  v4.receiver = self;
  v4.super_class = THDisplaySettingsViewController;
  [(THDisplaySettingsViewController *)&v4 stylizeForTheme];
  themePage = [(THDisplaySettingsViewController *)self themePage];
  [-[THDisplaySettingsViewController popoverPresentationController](self "popoverPresentationController")];
  [(UIButton *)self->_themeWhiteButton setImage:[(THDisplaySettingsViewController *)self _whiteThemeButtonImageSelected:0] forState:0];
  [(UIButton *)self->_themeWhiteButton setImage:[(THDisplaySettingsViewController *)self _whiteThemeButtonImageSelected:1] forState:4];
  [(UIButton *)self->_themeSepiaButton setImage:[(THDisplaySettingsViewController *)self _sepiaThemeButtonImageSelected:0] forState:0];
  [(UIButton *)self->_themeSepiaButton setImage:[(THDisplaySettingsViewController *)self _sepiaThemeButtonImageSelected:1] forState:4];
  [(UIButton *)self->_themeGrayButton setImage:[(THDisplaySettingsViewController *)self _grayThemeButtonImageSelected:0] forState:0];
  [(UIButton *)self->_themeGrayButton setImage:[(THDisplaySettingsViewController *)self _grayThemeButtonImageSelected:1] forState:4];
  [(UIButton *)self->_themeNightButton setImage:[(THDisplaySettingsViewController *)self _nightThemeButtonImageSelected:0] forState:0];
  [(UIButton *)self->_themeNightButton setImage:[(THDisplaySettingsViewController *)self _nightThemeButtonImageSelected:1] forState:4];
  [-[THDisplaySettingsViewController sizeSeparatorLine](self "sizeSeparatorLine")];
  [-[THDisplaySettingsViewController brightnessSlider](self "brightnessSlider")];
  [-[THDisplaySettingsViewController tableView](self "tableView")];
}

- (void)setTheme:(id)theme
{
  if ([(THDisplaySettingsViewController *)self theme]!= theme)
  {
    v5.receiver = self;
    v5.super_class = THDisplaySettingsViewController;
    [(THDisplaySettingsViewController *)&v5 setTheme:theme];
    [(THDisplaySettingsViewController *)self stylizeForTheme];
  }
}

- (void)setThemeNormal:(id)normal
{
  [-[THDisplaySettingsViewController delegate](self delegate];
  if ([(THDisplaySettingsViewController *)self appearanceStyle]== &dword_0 + 3)
  {
    [(THDisplaySettingsViewController *)self setAutoNightModeSwitch:1];
    [(THDisplaySettingsViewController *)self _restoreAutoNightModeSwitch];
  }

  [(THDisplaySettingsViewController *)self _changeAppearanceStyle:0];
}

- (void)setThemeGray:(id)gray
{
  [-[THDisplaySettingsViewController delegate](self delegate];
  if ([(THDisplaySettingsViewController *)self appearanceStyle]== &dword_0 + 3)
  {
    [(THDisplaySettingsViewController *)self setAutoNightModeSwitch:1];
    [(THDisplaySettingsViewController *)self _restoreAutoNightModeSwitch];
  }

  [(THDisplaySettingsViewController *)self _changeAppearanceStyle:2];
}

- (void)setThemeSepia:(id)sepia
{
  [-[THDisplaySettingsViewController delegate](self delegate];
  if ([(THDisplaySettingsViewController *)self appearanceStyle]== &dword_0 + 3)
  {
    [(THDisplaySettingsViewController *)self setAutoNightModeSwitch:1];
    [(THDisplaySettingsViewController *)self _restoreAutoNightModeSwitch];
  }

  [(THDisplaySettingsViewController *)self _changeAppearanceStyle:1];
}

- (void)setThemeNight:(id)night
{
  [-[THDisplaySettingsViewController delegate](self delegate];
  if ([(THDisplaySettingsViewController *)self appearanceStyle]!= &dword_0 + 3)
  {
    [(THDisplaySettingsViewController *)self _turnAutoNightModeSwitchOff];
    [(THDisplaySettingsViewController *)self setAutoNightModeSwitch:0];
  }

  [(THDisplaySettingsViewController *)self _changeAppearanceStyle:3];
}

- (void)updateThemeButtons
{
  appearanceStyle = [(THDisplaySettingsViewController *)self appearanceStyle];
  [(UIButton *)self->_themeWhiteButton setSelected:appearanceStyle == 0];
  [(UIButton *)self->_themeSepiaButton setSelected:appearanceStyle == 1];
  [(UIButton *)self->_themeGrayButton setSelected:appearanceStyle == 2];
  themeNightButton = self->_themeNightButton;

  [(UIButton *)themeNightButton setSelected:appearanceStyle == 3];
}

- (id)_whiteThemeButtonImageSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [UIColor colorWithWhite:1.0 alpha:1.0];

  return [(THDisplaySettingsViewController *)self _themeButtonImageWithColor:v5 selected:selectedCopy];
}

- (id)_sepiaThemeButtonImageSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [UIColor colorWithRed:0.831372549 green:0.776470588 blue:0.623529412 alpha:1.0];

  return [(THDisplaySettingsViewController *)self _themeButtonImageWithColor:v5 selected:selectedCopy];
}

- (id)_grayThemeButtonImageSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [UIColor colorWithRed:0.352941176 green:0.352941176 blue:0.360784314 alpha:1.0];

  return [(THDisplaySettingsViewController *)self _themeButtonImageWithColor:v5 selected:selectedCopy];
}

- (id)_nightThemeButtonImageSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [UIColor colorWithWhite:0.2 alpha:1.0];

  return [(THDisplaySettingsViewController *)self _themeButtonImageWithColor:v5 selected:selectedCopy];
}

- (id)_themeButtonImageWithColor:(id)color selected:(BOOL)selected
{
  selectedCopy = selected;
  [+[UIScreen mainScreen](UIScreen scale];
  v8 = v7;
  v19.width = 46.0;
  v19.height = 46.0;
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  if (selectedCopy)
  {
    v9 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 46.0, 46.0];
    [objc_msgSend(-[THDisplaySettingsViewController theme](self "theme")];
    [(UIBezierPath *)v9 fill];
    v10 = 42.0;
    v11 = 2.0;
    v12 = 2.0;
  }

  else
  {
    v13 = 1.0 / v8;
    v14 = [UIColor colorWithWhite:0.0 alpha:0.2];
    v15 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 46.0, 46.0];
    [(UIColor *)v14 setFill];
    [(UIBezierPath *)v15 fill];
    v10 = v13 * -2.0 + 46.0;
    v11 = v13;
    v12 = v13;
  }

  v16 = [UIBezierPath bezierPathWithOvalInRect:v11, v12, v10, v10];
  [color setFill];
  [(UIBezierPath *)v16 fill];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (id)autoNightModeSwitch
{
  autoNightModeSwitch = self->_autoNightModeSwitch;
  if (!autoNightModeSwitch)
  {
    v4 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    self->_autoNightModeSwitch = v4;
    [(UISwitch *)v4 addTarget:self action:"handleAutoNightModeSwitch:" forControlEvents:4096];
    [(UISwitch *)self->_autoNightModeSwitch sizeToFit];
    -[UISwitch setEnabled:](self->_autoNightModeSwitch, "setEnabled:", [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"THAppearanceDisableAutoNightModeSwitchKey"]^ 1);
    autoNightModeSwitch = self->_autoNightModeSwitch;
  }

  -[UISwitch setOn:](autoNightModeSwitch, "setOn:", [-[THDisplaySettingsViewController delegate](self "delegate")]);
  return self->_autoNightModeSwitch;
}

- (void)handleAutoNightModeSwitch:(id)switch
{
  [+[NSUserDefaults setBool:switch]forKey:"setBool:forKey:", [(UISwitch *)self->_autoNightModeSwitch isOn], @"THAppearanceAutoNightModeSwitchWasOnKey"];
  delegate = [(THDisplaySettingsViewController *)self delegate];
  isOn = [(UISwitch *)self->_autoNightModeSwitch isOn];

  [delegate displaySettingsController:self didChangeAutoNightMode:isOn];
}

- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout
{
  v5 = (layout & 0xFFFFFFFFFFFFFFFELL) == 2;
  v6 = [(THDisplaySettingsViewController *)self scrollSwitch:coordinator];

  [v6 setOn:v5];
}

- (double)p_bestPopoverHeightForSections:(id)sections
{
  v5 = [(NSArray *)[(THDisplaySettingsViewController *)self supportedSections] count];
  if (v5 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 0.0;
    do
    {
      [(THDisplaySettingsViewController *)self tableView:[(THDisplaySettingsViewController *)self tableView] heightForHeaderInSection:v7];
      v8 = v8 + v9;
      ++v7;
    }

    while (v6 != v7);
  }

  if ([sections containsObject:&off_49D078])
  {
    [(THDisplaySettingsViewController *)self appearanceRowHeight];
    v8 = v8 + v10;
  }

  if ([sections containsObject:&off_49D090])
  {
    v8 = v8 + 60.0;
    if ([(THDisplaySettingsViewController *)self _shouldShowAutoNightMode])
    {
      [(THDisplaySettingsViewController *)self scrollingRowHeight];
      v8 = v8 + v11;
    }
  }

  if ([sections containsObject:&off_49D0A8])
  {
    [(THDisplaySettingsViewController *)self scrollingRowHeight];
    v8 = v8 + v12;
  }

  if ([sections containsObject:&off_49D0C0])
  {
    [(THDisplaySettingsViewController *)self appearanceRowHeight];
    return v8 + v13;
  }

  return v8;
}

- (void)p_resizePopoverViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  p_buildSupportedSections = [(THDisplaySettingsViewController *)self p_buildSupportedSections];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v19 = sub_5FE90;
  v20 = &unk_45AE58;
  selfCopy = self;
  v22 = p_buildSupportedSections;
  if ([(THDisplaySettingsViewController *)self p_presentingFullscreen])
  {
    v19(v18);
  }

  else
  {
    [-[THDisplaySettingsViewController view](self "view")];
    v7 = v6;
    v9 = v8;
    [(THDisplaySettingsViewController *)self p_bestPopoverHeightForSections:p_buildSupportedSections];
    v11 = v10;
    [(THDisplaySettingsViewController *)self appearanceRowHeight];
    if (v11 == v12)
    {
      animatedCopy = 0;
    }

    [-[THDisplaySettingsViewController view](self "view")];
    if (v11 != v13 || ([(THDisplaySettingsViewController *)self preferredContentSize], v11 != v14))
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_5FED8;
      v17[3] = &unk_45B1D0;
      v17[4] = self;
      v17[5] = v7;
      v17[6] = v9;
      v17[7] = 0x4072800000000000;
      *&v17[8] = v11;
      if (animatedCopy)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_5FEE4;
        v16[3] = &unk_45BD40;
        v16[4] = v18;
        [UIView animateWithDuration:v17 animations:v16 completion:0.3];
      }

      else
      {
        v19(v18);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_5FEF4;
        v15[3] = &unk_45B8B0;
        v15[4] = v17;
        [UIView performWithoutAnimation:v15];
      }
    }
  }
}

- (unint64_t)p_displaySectionForSection:(int64_t)section
{
  if ([(NSArray *)[(THDisplaySettingsViewController *)self supportedSections] count]<= section)
  {
    return 0;
  }

  v5 = [(NSArray *)[(THDisplaySettingsViewController *)self supportedSections] objectAtIndexedSubscript:section];

  return [v5 unsignedIntegerValue];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(THDisplaySettingsViewController *)self p_displaySectionForSection:section]!= &dword_0 + 1)
  {
    return 1;
  }

  if ([(THDisplaySettingsViewController *)self _shouldShowAutoNightMode])
  {
    return 2;
  }

  return 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  [v6 setSelectionStyle:0];
  contentView = [v6 contentView];
  v8 = -[THDisplaySettingsViewController p_displaySectionForSection:](self, "p_displaySectionForSection:", [path section]);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return v6;
      }

      if ([path row])
      {
        if ([path row] == &dword_0 + 1)
        {
          [objc_msgSend(v6 "textLabel")];
          [v6 setAccessoryView:{-[THDisplaySettingsViewController autoNightModeSwitch](self, "autoNightModeSwitch")}];
        }

        return v6;
      }

      themeContainer = [(THDisplaySettingsViewController *)self themeContainer];
      [contentView addSubview:themeContainer];
      v17[0] = [objc_msgSend(themeContainer "centerXAnchor")];
      v17[1] = [objc_msgSend(themeContainer "centerYAnchor")];
      v13 = [NSArray arrayWithObjects:v17 count:2];
LABEL_13:
      [NSLayoutConstraint activateConstraints:v13];
      return v6;
    }

    brightnessSlider = [(THDisplaySettingsViewController *)self brightnessSlider];
    if (!brightnessSlider)
    {
      return v6;
    }

    v12 = brightnessSlider;
    [contentView addSubview:brightnessSlider];
    v18[0] = [objc_msgSend(v12 "leadingAnchor")];
    v18[1] = [objc_msgSend(v12 "trailingAnchor")];
    v18[2] = [objc_msgSend(v12 "topAnchor")];
    v18[3] = [objc_msgSend(v12 "bottomAnchor")];
    v10 = v18;
LABEL_12:
    v13 = [NSArray arrayWithObjects:v10 count:4];
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    [(THDisplaySettingsViewController *)self configureVerticalScrollSwitchCell:v6];
    return v6;
  }

  if (v8 == 3)
  {
    fontSizeButtons = [(THDisplaySettingsViewController *)self fontSizeButtons];
    [contentView addSubview:fontSizeButtons];
    v16[0] = [objc_msgSend(fontSizeButtons "leadingAnchor")];
    v16[1] = [objc_msgSend(fontSizeButtons "trailingAnchor")];
    v16[2] = [objc_msgSend(fontSizeButtons "topAnchor")];
    v16[3] = [objc_msgSend(fontSizeButtons "bottomAnchor")];
    v10 = v16;
    goto LABEL_12;
  }

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  supportedSections = [(THDisplaySettingsViewController *)self supportedSections];

  return [(NSArray *)supportedSections count];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  [(THDisplaySettingsViewController *)self appearanceRowHeight];
  v7 = v6;
  v8 = -[THDisplaySettingsViewController p_displaySectionForSection:](self, "p_displaySectionForSection:", [path section]);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      if ([path row])
      {
        if ([path row] == &dword_0 + 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        return 60.0;
      }
    }

    return v7;
  }

LABEL_5:

  [(THDisplaySettingsViewController *)self scrollingRowHeight];
  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 5.0;
  if (!section)
  {
    return 0.0;
  }

  return result;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  [-[THDisplaySettingsViewController theme](self theme];
  [[UIFont preferredFontForTextStyle:?], "_scaledValueForValue:", 18.0];
  v6 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  textLabel = [cell textLabel];

  [textLabel setFont:v6];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [(THDisplaySettingsViewController *)self tableViewHeaderView:view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v4;
}

- (double)appearanceRowHeight
{
  v2 = +[UIFont bc_accessibilityFontSizesEnabled];
  result = 44.0;
  if (v2)
  {
    return 65.0;
  }

  return result;
}

@end