@interface BKAppearanceViewController
+ (int)_fontSizeToSegmentIndex:(float)index;
- (BKAppearanceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKAppearanceViewControllerDelegate)delegate;
- (BOOL)_shouldShowAutoNightMode;
- (BOOL)advancedFonts;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)contentSize;
- (NSArray)fonts;
- (UIStackView)themeContainer;
- (UISwitch)autoNightModeSwitch;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_themeButtonImageForTheme:(int64_t)theme selected:(BOOL)selected;
- (id)_themeButtonImageWithColor:(id)color unselectedBorderColor:(id)borderColor selected:(BOOL)selected;
- (id)keyCommands;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int)maxVisibleFonts;
- (int64_t)colorPotOffsetMultiplier:(int64_t)multiplier;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_changeAppearanceStyle:(unint64_t)style;
- (void)_restoreAutoNightModeSwitch;
- (void)_sendActionsForAutoNightSwitchWithPreviousState:(BOOL)state;
- (void)_setPopoverScrolling;
- (void)_turnAutoNightModeSwitchOff;
- (void)appearanceFontViewController:(id)controller didChangeToFontWithName:(id)name;
- (void)appearanceShouldDismissPopover;
- (void)changeFontSize:(id)size;
- (void)changeLegibility:(id)legibility;
- (void)changeLineHeight:(id)height;
- (void)contentSizeCategoryDidChange;
- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout;
- (void)dealloc;
- (void)decreaseFontSize:(id)size;
- (void)defaultFontSize:(id)size;
- (void)disableAutoNightModeSwitch;
- (void)dismissMenu:(id)menu;
- (void)enableAutoNightModeSwitch;
- (void)fontSizeModifiedByOffset:(float)offset;
- (void)handleAutoNightModeSwitch:(id)switch;
- (void)increaseFontSize:(id)size;
- (void)lineHeightModifiedByOffset:(float)offset;
- (void)loadFonts;
- (void)loadView;
- (void)onScrollSwitch:(id)switch notifyingCoordinator:(BOOL)coordinator;
- (void)releaseViews;
- (void)setAppearanceStyle:(unint64_t)style;
- (void)setBook:(id)book;
- (void)setFonts:(id)fonts;
- (void)setLayout:(unint64_t)layout;
- (void)setScrollModeOn:(BOOL)on notifyingCoordinator:(BOOL)coordinator;
- (void)setStyle:(id)style;
- (void)setTheme:(id)theme;
- (void)setThemeGray:(id)gray;
- (void)setThemeNight:(id)night;
- (void)setThemeNormal:(id)normal;
- (void)setThemeSepia:(id)sepia;
- (void)stylizeForTheme;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateThemeButtons;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKAppearanceViewController

- (BKAppearanceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = BKAppearanceViewController;
  v4 = [(BEAppearanceViewController *)&v10 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(BKAppearanceViewController *)v4 contentSize];
    [(BKAppearanceViewController *)v5 setPreferredContentSize:?];
    v6 = [[BKAppearanceFontViewController alloc] initWithNibName:0 bundle:0];
    fontVC = v5->_fontVC;
    v5->_fontVC = v6;

    [(BKAppearanceViewController *)v5 preferredContentSize];
    [(BKAppearanceFontViewController *)v5->_fontVC setPreferredContentSize:?];
    [(BKAppearanceFontViewController *)v5->_fontVC setDelegate:v5];
    v8 = +[BCThemeCoordinator shared];
    [v8 addObserver:v5];
  }

  return v5;
}

- (void)releaseViews
{
  currentItems = self->_currentItems;
  self->_currentItems = 0;

  [(UIButton *)self->_themeWhiteButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  themeWhiteButton = self->_themeWhiteButton;
  self->_themeWhiteButton = 0;

  [(UIButton *)self->_themeSepiaButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  themeSepiaButton = self->_themeSepiaButton;
  self->_themeSepiaButton = 0;

  [(UIButton *)self->_themeGrayButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  themeGrayButton = self->_themeGrayButton;
  self->_themeGrayButton = 0;

  [(UIButton *)self->_themeNightButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  themeNightButton = self->_themeNightButton;
  self->_themeNightButton = 0;

  themeContainer = self->_themeContainer;
  self->_themeContainer = 0;

  topThemeHairline = self->_topThemeHairline;
  self->_topThemeHairline = 0;

  bottomThemeHairline = self->_bottomThemeHairline;
  self->_bottomThemeHairline = 0;

  autoNightModeSwitch = self->_autoNightModeSwitch;
  self->_autoNightModeSwitch = 0;

  v12.receiver = self;
  v12.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v12 releaseViews];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BCThemeCoordinator shared];
  [v4 removeObserver:self];

  [(BKAppearanceViewController *)self setFonts:0];
  [(BKAppearanceViewController *)self releaseViews];
  v5.receiver = self;
  v5.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v5 dealloc];
}

- (void)_setPopoverScrolling
{
  v3 = (isPad() & 1) == 0 && !isPortrait() || +[UIFont bc_accessibilityFontSizesEnabled];
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView setScrollEnabled:v3];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v4 loadView];
  [(BKAppearanceViewController *)self _setPopoverScrolling];
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"BKAppearanceTableViewCell"];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v8 viewDidLoad];
  view = [(BKAppearanceViewController *)self view];
  [view setAccessibilityIgnoresInvertColors:1];

  navigationController = [(BKAppearanceViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  v6 = objc_opt_new();
  [navigationBar setBackgroundImage:v6 forBarMetrics:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)contentSizeCategoryDidChange
{
  [(BEAppearanceViewController *)self releaseAuxiliaryCachedViews];
  [(BKAppearanceViewController *)self updateUI];
  [(BEAppearanceViewController *)self updateBrightness];

  [(BKAppearanceViewController *)self _setPopoverScrolling];
}

- (BOOL)advancedFonts
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKFontControlAdvanced"];

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v6 viewWillAppear:?];
  navigationController = [(BKAppearanceViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];

  [(BKAppearanceViewController *)self updateUI];
  [(BKAppearanceViewController *)self stylizeForTheme];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKAppearanceViewController;
  [(BKAppearanceViewController *)&v6 viewDidAppear:appear];
  if (!self->_fonts)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_42558;
    block[3] = &unk_1E2BD0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (CGSize)contentSize
{
  tableView = [(BEAppearanceViewController *)self tableView];
  v4 = [(BKAppearanceViewController *)self numberOfSectionsInTableView:tableView];

  if (v4 < 1)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      tableView2 = [(BEAppearanceViewController *)self tableView];
      v8 = [(BKAppearanceViewController *)self tableView:tableView2 numberOfRowsInSection:v5];

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          tableView3 = [(BEAppearanceViewController *)self tableView];
          v11 = [NSIndexPath indexPathForRow:i inSection:v5];
          [(BKAppearanceViewController *)self tableView:tableView3 heightForRowAtIndexPath:v11];
          v13 = v12;

          v6 = v6 + v13;
        }
      }

      tableView4 = [(BEAppearanceViewController *)self tableView];
      [(BKAppearanceViewController *)self tableView:tableView4 heightForHeaderInSection:v5];
      v16 = v6 + v15;

      tableView5 = [(BEAppearanceViewController *)self tableView];
      [(BKAppearanceViewController *)self tableView:tableView5 heightForFooterInSection:v5];
      v6 = v16 + v18;

      ++v5;
    }

    while (v5 != v4);
  }

  v19 = +[UIFont bc_accessibilityFontSizesEnabled];
  v20 = fmin(400.0, v6);
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v6;
  }

  v22 = 296.0;
  result.height = v21;
  result.width = v22;
  return result;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  theme = [(BKAppearanceViewController *)self theme];

  if (theme != themeCopy)
  {
    v6.receiver = self;
    v6.super_class = BKAppearanceViewController;
    [(BKAppearanceViewController *)&v6 setTheme:themeCopy];
    [(BKAppearanceFontViewController *)self->_fontVC setTheme:themeCopy];
    [(BKAppearanceViewController *)self stylizeForTheme];
  }
}

- (int64_t)colorPotOffsetMultiplier:(int64_t)multiplier
{
  view = [(BKAppearanceViewController *)self view];
  v5 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [view semanticContentAttribute]);

  if (v5 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return 3 - multiplier;
  }

  else
  {
    return multiplier;
  }
}

- (UIStackView)themeContainer
{
  themeContainer = self->_themeContainer;
  if (!themeContainer)
  {
    v4 = [UIStackView alloc];
    [(BKAppearanceViewController *)self appearanceColorPotSeparator];
    v6 = v5;
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v8 = v7 * 4.0 + v6 * 3.0;
    [(BKAppearanceViewController *)self appearanceColorContainerHeight];
    v10 = [v4 initWithFrame:{0.0, 0.0, v8, v9}];
    v11 = self->_themeContainer;
    self->_themeContainer = v10;

    [(UIStackView *)self->_themeContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_themeContainer setDistribution:4];
    [(UIStackView *)self->_themeContainer setAlignment:3];
    [(BKAppearanceViewController *)self appearanceColorPotSeparator];
    [(UIStackView *)self->_themeContainer setSpacing:?];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v13 = v12;
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v15 = v14;
    v16 = [[UIButton alloc] initWithFrame:{0.0, 0.0, v13, v14}];
    themeWhiteButton = self->_themeWhiteButton;
    self->_themeWhiteButton = v16;

    [(UIButton *)self->_themeWhiteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = self->_themeWhiteButton;
    v19 = [(BKAppearanceViewController *)self _whiteThemeButtonImageSelected:0];
    [(UIButton *)v18 setImage:v19 forState:0];

    v20 = self->_themeWhiteButton;
    v21 = [(BKAppearanceViewController *)self _whiteThemeButtonImageSelected:1];
    [(UIButton *)v20 setImage:v21 forState:4];

    [(UIButton *)self->_themeWhiteButton addTarget:self action:"setThemeNormal:" forControlEvents:64];
    v22 = self->_themeWhiteButton;
    v23 = +[UIColor blackColor];
    [(UIButton *)v22 setTitleColor:v23 forState:0];

    v24 = self->_themeWhiteButton;
    v25 = AEBundle();
    v26 = [v25 localizedStringForKey:@"White" value:&stru_1E7188 table:0];
    [(UIButton *)v24 setAccessibilityLabel:v26];

    [(UIButton *)self->_themeWhiteButton setAccessibilityIdentifier:@"theme well white"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeWhiteButton];
    v27 = [[UIButton alloc] initWithFrame:{0.0, 0.0, v13, v15}];
    themeSepiaButton = self->_themeSepiaButton;
    self->_themeSepiaButton = v27;

    [(UIButton *)self->_themeSepiaButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = self->_themeSepiaButton;
    v30 = [(BKAppearanceViewController *)self _sepiaThemeButtonImageSelected:0];
    [(UIButton *)v29 setImage:v30 forState:0];

    v31 = self->_themeSepiaButton;
    v32 = [(BKAppearanceViewController *)self _sepiaThemeButtonImageSelected:1];
    [(UIButton *)v31 setImage:v32 forState:4];

    [(UIButton *)self->_themeSepiaButton addTarget:self action:"setThemeSepia:" forControlEvents:64];
    v33 = self->_themeSepiaButton;
    v34 = +[UIColor blackColor];
    [(UIButton *)v33 setTitleColor:v34 forState:0];

    v35 = self->_themeSepiaButton;
    v36 = AEBundle();
    v37 = [v36 localizedStringForKey:@"Sepia" value:&stru_1E7188 table:0];
    [(UIButton *)v35 setAccessibilityLabel:v37];

    [(UIButton *)self->_themeSepiaButton setAccessibilityIdentifier:@"theme well sepia"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeSepiaButton];
    v38 = [[UIButton alloc] initWithFrame:{0.0, 0.0, v13, v15}];
    themeGrayButton = self->_themeGrayButton;
    self->_themeGrayButton = v38;

    [(UIButton *)self->_themeGrayButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = self->_themeGrayButton;
    v41 = [(BKAppearanceViewController *)self _grayThemeButtonImageSelected:0];
    [(UIButton *)v40 setImage:v41 forState:0];

    v42 = self->_themeGrayButton;
    v43 = [(BKAppearanceViewController *)self _grayThemeButtonImageSelected:1];
    [(UIButton *)v42 setImage:v43 forState:4];

    [(UIButton *)self->_themeGrayButton addTarget:self action:"setThemeGray:" forControlEvents:64];
    v44 = self->_themeGrayButton;
    v45 = +[UIColor blackColor];
    [(UIButton *)v44 setTitleColor:v45 forState:0];

    v46 = self->_themeGrayButton;
    v47 = AEBundle();
    v48 = [v47 localizedStringForKey:@"Gray" value:&stru_1E7188 table:0];
    [(UIButton *)v46 setAccessibilityLabel:v48];

    [(UIButton *)self->_themeGrayButton setAccessibilityIdentifier:@"theme well gray"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeGrayButton];
    v49 = [[UIButton alloc] initWithFrame:{0.0, 0.0, v13, v15}];
    themeNightButton = self->_themeNightButton;
    self->_themeNightButton = v49;

    [(UIButton *)self->_themeNightButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = self->_themeNightButton;
    v52 = [(BKAppearanceViewController *)self _nightThemeButtonImageSelected:0];
    [(UIButton *)v51 setImage:v52 forState:0];

    v53 = self->_themeNightButton;
    v54 = [(BKAppearanceViewController *)self _nightThemeButtonImageSelected:1];
    [(UIButton *)v53 setImage:v54 forState:4];

    [(UIButton *)self->_themeNightButton addTarget:self action:"setThemeNight:" forControlEvents:64];
    v55 = self->_themeNightButton;
    v56 = +[UIColor blackColor];
    [(UIButton *)v55 setTitleColor:v56 forState:0];

    v57 = self->_themeNightButton;
    v58 = AEBundle();
    v59 = [v58 localizedStringForKey:@"Night" value:&stru_1E7188 table:0];
    [(UIButton *)v57 setAccessibilityLabel:v59];

    [(UIButton *)self->_themeNightButton setAccessibilityIdentifier:@"theme well night"];
    [(UIStackView *)self->_themeContainer addArrangedSubview:self->_themeNightButton];
    widthAnchor = [(UIStackView *)self->_themeContainer widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotSeparator];
    v61 = v60;
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v83 = [widthAnchor constraintEqualToConstant:v62 * 4.0 + v61 * 3.0];
    v85[0] = v83;
    heightAnchor = [(UIStackView *)self->_themeContainer heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorContainerHeight];
    v81 = [heightAnchor constraintEqualToConstant:?];
    v85[1] = v81;
    widthAnchor2 = [(UIButton *)self->_themeWhiteButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v79 = [widthAnchor2 constraintEqualToConstant:?];
    v85[2] = v79;
    heightAnchor2 = [(UIButton *)self->_themeWhiteButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v77 = [heightAnchor2 constraintEqualToConstant:?];
    v85[3] = v77;
    widthAnchor3 = [(UIButton *)self->_themeSepiaButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v75 = [widthAnchor3 constraintEqualToConstant:?];
    v85[4] = v75;
    heightAnchor3 = [(UIButton *)self->_themeSepiaButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v73 = [heightAnchor3 constraintEqualToConstant:?];
    v85[5] = v73;
    widthAnchor4 = [(UIButton *)self->_themeGrayButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v63 = [widthAnchor4 constraintEqualToConstant:?];
    v85[6] = v63;
    heightAnchor4 = [(UIButton *)self->_themeGrayButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v65 = [heightAnchor4 constraintEqualToConstant:?];
    v85[7] = v65;
    widthAnchor5 = [(UIButton *)self->_themeNightButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v67 = [widthAnchor5 constraintEqualToConstant:?];
    v85[8] = v67;
    heightAnchor5 = [(UIButton *)self->_themeNightButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v69 = [heightAnchor5 constraintEqualToConstant:?];
    v85[9] = v69;
    v70 = [NSArray arrayWithObjects:v85 count:10];
    [NSLayoutConstraint activateConstraints:v70];

    [(BKAppearanceViewController *)self updateThemeButtons];
    themeContainer = self->_themeContainer;
  }

  return themeContainer;
}

- (UISwitch)autoNightModeSwitch
{
  autoNightModeSwitch = self->_autoNightModeSwitch;
  if (!autoNightModeSwitch)
  {
    v4 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_autoNightModeSwitch;
    self->_autoNightModeSwitch = v4;

    [(UISwitch *)self->_autoNightModeSwitch setPreferredStyle:2];
    [(UISwitch *)self->_autoNightModeSwitch addTarget:self action:"handleAutoNightModeSwitch:" forControlEvents:4096];
    [(UISwitch *)self->_autoNightModeSwitch sizeToFit];
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:kIMThemeAutoNightModeOnKey];

    [(UISwitch *)self->_autoNightModeSwitch setOn:v7];
    [(UISwitch *)self->_autoNightModeSwitch setEnabled:1];
    autoNightModeSwitch = self->_autoNightModeSwitch;
  }

  return autoNightModeSwitch;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  menuItems = [(BKAppearanceViewController *)self menuItems];
  if (menuItems)
  {
    menuItems2 = [(BKAppearanceViewController *)self menuItems];
    v6 = [menuItems2 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v7 = [menuItems objectAtIndexedSubscript:section];

  if (v7 == @"BKAppearanceMenuItemFont")
  {
    v8 = 2;
  }

  else if (v7 == @"BKAppearanceMenuItemTheme")
  {
    if ([(BKAppearanceViewController *)self _shouldShowAutoNightMode])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(BEAppearanceViewController *)self appearanceRowHeight];
  v7 = v6;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v9 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v9 == @"BKAppearanceMenuItemTheme")
  {
    if (![pathCopy row])
    {
      v7 = 60.0;
      goto LABEL_16;
    }

    if ([pathCopy row] != &dword_0 + 1)
    {
      goto LABEL_4;
    }

LABEL_11:
    [(BEAppearanceViewController *)self scrollingRowHeight];
    v7 = v10;
    goto LABEL_16;
  }

  if (v9 == @"BKAppearanceMenuItemHorizontalScrollingView" || v9 == @"BKAppearanceMenuItemVerticalScrollingView")
  {
    goto LABEL_11;
  }

LABEL_4:
  if (+[UIFont bc_accessibilityFontSizesEnabled](UIFont, "bc_accessibilityFontSizesEnabled") && v9 == @"BKAppearanceMenuItemFont" && [pathCopy row] == &dword_0 + 1)
  {
    if (([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge]& 1) != 0)
    {
      v7 = 155.0;
    }

    else if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge])
    {
      v7 = 115.0;
    }

    else
    {
      v7 = 85.0;
    }
  }

LABEL_16:

  return v7;
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    tableViewHeaderView = [(BEAppearanceViewController *)self tableViewHeaderView];
  }

  else
  {
    tableViewHeaderView = 0;
  }

  return tableViewHeaderView;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"BKAppearanceTableViewCell" forIndexPath:pathCopy];
  if (v7)
  {
    v8 = v7;
    textLabel = [v7 textLabel];
    [textLabel setText:0];

    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setText:0];

    [v8 setAccessoryView:0];
    [v8 setAccessoryType:0];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    contentView = [v8 contentView];
    subviews = [contentView subviews];

    v13 = [subviews countByEnumeratingWithState:&v105 objects:v113 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v106;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v106 != v15)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v105 + 1) + 8 * i) removeFromSuperview];
        }

        v14 = [subviews countByEnumeratingWithState:&v105 objects:v113 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v8 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"BKAppearanceTableViewCell"];
  }

  contentView2 = [v8 contentView];
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v19 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v19 == @"BKAppearanceMenuItemBrightness")
  {
    brightnessSlider = [(BEAppearanceViewController *)self brightnessSlider];
    [contentView2 addSubview:brightnessSlider];
    leadingAnchor = [brightnessSlider leadingAnchor];
    obj = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [obj leadingAnchor];
    v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v112[0] = v87;
    trailingAnchor = [brightnessSlider trailingAnchor];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v112[1] = v82;
    [brightnessSlider topAnchor];
    v21 = v91 = v19;
    [contentView2 topAnchor];
    v22 = v94 = pathCopy;
    v23 = [v21 constraintEqualToAnchor:v22];
    v112[2] = v23;
    bottomAnchor = [brightnessSlider bottomAnchor];
    [contentView2 bottomAnchor];
    v26 = v25 = contentView2;
    v27 = [bottomAnchor constraintEqualToAnchor:v26 constant:-1.0];
    v112[3] = v27;
    v28 = v112;
    goto LABEL_18;
  }

  if (v19 == @"BKAppearanceMenuItemFont")
  {
    if ([pathCopy row])
    {
      if ([pathCopy row] != &dword_0 + 1)
      {
        goto LABEL_21;
      }

      v90 = contentView2;
      v92 = v19;
      v95 = pathCopy;
      v32 = AEBundle();
      v33 = [v32 localizedStringForKey:@"Fonts" value:&stru_1E7188 table:0];
      textLabel2 = [v8 textLabel];
      [textLabel2 setText:v33];

      v35 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleHeadline scale:1];
      v36 = [UIImage systemImageNamed:@"chevron.forward"];
      v88 = v35;
      v37 = [v36 imageWithConfiguration:v35];

      v86 = v37;
      v38 = [[UIImageView alloc] initWithImage:v37];
      [v8 setAccessoryView:v38];

      themePage = [(BKAppearanceViewController *)self themePage];
      tertiaryTextColor = [themePage tertiaryTextColor];
      accessoryView = [v8 accessoryView];
      [accessoryView setTintColor:tertiaryTextColor];

      themePage2 = [(BKAppearanceViewController *)self themePage];
      secondaryTextColor = [themePage2 secondaryTextColor];
      detailTextLabel2 = [v8 detailTextLabel];
      [detailTextLabel2 setTextColor:secondaryTextColor];

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      obja = [(BKAppearanceViewController *)self fonts];
      v45 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
      if (!v45)
      {
        goto LABEL_44;
      }

      v46 = v45;
      v47 = *v102;
      v97 = kCTFontUIFontDesignSerif;
      while (1)
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v102 != v47)
          {
            objc_enumerationMutation(obja);
          }

          v49 = *(*(&v101 + 1) + 8 * j);
          selfCopy = self;
          style = [(BKAppearanceViewController *)self style];
          fontFamily = [style fontFamily];
          familyName = [v49 familyName];
          v54 = [fontFamily isEqualToString:familyName];

          if (v54)
          {
            if ([v49 kind] == &dword_0 + 1)
            {
              v55 = AEBundle();
              v56 = [v55 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];
              detailTextLabel3 = [v8 detailTextLabel];
              [detailTextLabel3 setText:v56];

              detailTextLabel4 = [v8 detailTextLabel];
              font = [detailTextLabel4 font];
              [font pointSize];
              detailTextLabel10 = [UIFont systemFontOfSize:?];
              detailTextLabel5 = [v8 detailTextLabel];
              [detailTextLabel5 setFont:detailTextLabel10];

LABEL_41:
              goto LABEL_42;
            }

            detailTextLabel4 = [v49 displayName];
            detailTextLabel6 = [v8 detailTextLabel];
            font2 = [detailTextLabel6 font];
            [font2 pointSize];
            v65 = v64;

            if ([v49 kind] == &dword_4)
            {
              v66 = [UIFont systemFontOfSize:v97 weight:v65 design:UIFontWeightRegular];
              goto LABEL_38;
            }

            if ([v49 kind] == &dword_0 + 3)
            {
              v66 = [UIFont systemFontOfSize:v65];
LABEL_38:
              font = v66;
            }

            else
            {
              familyName2 = [v49 familyName];
              font = [UIFont fontWithName:familyName2 size:v65];
            }

            detailTextLabel7 = [v8 detailTextLabel];
            [detailTextLabel7 setText:detailTextLabel4];

            v69 = [font bkEffectiveFontForText:detailTextLabel4];
            detailTextLabel8 = [v8 detailTextLabel];
            [detailTextLabel8 setFont:v69];

            detailTextLabel9 = [v8 detailTextLabel];
            [detailTextLabel9 setLineBreakMode:4];

            detailTextLabel10 = [v8 detailTextLabel];
            [detailTextLabel10 setNumberOfLines:1];
            goto LABEL_41;
          }

LABEL_42:
          self = selfCopy;
        }

        v46 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
        if (!v46)
        {
LABEL_44:

          v19 = v92;
          pathCopy = v95;
          contentView2 = v90;
          goto LABEL_21;
        }
      }
    }

    brightnessSlider = [(BEAppearanceViewController *)self fontSizeButtons];
    [contentView2 addSubview:brightnessSlider];
    leadingAnchor = [brightnessSlider leadingAnchor];
    obj = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [obj leadingAnchor];
    v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v111[0] = v87;
    trailingAnchor = [brightnessSlider trailingAnchor];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v111[1] = v82;
    [brightnessSlider topAnchor];
    v21 = v91 = v19;
    [contentView2 topAnchor];
    v22 = v94 = pathCopy;
    v23 = [v21 constraintEqualToAnchor:v22];
    v111[2] = v23;
    bottomAnchor = [brightnessSlider bottomAnchor];
    [contentView2 bottomAnchor];
    v26 = v25 = contentView2;
    v27 = [bottomAnchor constraintEqualToAnchor:v26 constant:-1.0];
    v111[3] = v27;
    v28 = v111;
LABEL_18:
    v29 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    contentView2 = v25;
    pathCopy = v94;

    v19 = v91;
    v30 = leadingAnchor;
    goto LABEL_19;
  }

  if (v19 == @"BKAppearanceMenuItemTheme")
  {
    if ([pathCopy row])
    {
      if ([pathCopy row] != &dword_0 + 1)
      {
        goto LABEL_21;
      }

      v72 = AEBundle();
      v73 = [v72 localizedStringForKey:@"Auto-Night Theme" value:&stru_1E7188 table:0];
      textLabel3 = [v8 textLabel];
      [textLabel3 setText:v73];

      brightnessSlider = [(BKAppearanceViewController *)self autoNightModeSwitch];
      [v8 setAccessoryView:brightnessSlider];
LABEL_20:

      goto LABEL_21;
    }

    brightnessSlider = [(BKAppearanceViewController *)self themeContainer];
    [contentView2 addSubview:brightnessSlider];
    objb = [brightnessSlider centerXAnchor];
    centerXAnchor = [contentView2 centerXAnchor];
    [objb constraintEqualToAnchor:centerXAnchor];
    v76 = v93 = v19;
    v109[0] = v76;
    centerYAnchor = [brightnessSlider centerYAnchor];
    [contentView2 centerYAnchor];
    v79 = v78 = contentView2;
    v80 = [centerYAnchor constraintEqualToAnchor:v79];
    v109[1] = v80;
    v81 = [NSArray arrayWithObjects:v109 count:2];
    [NSLayoutConstraint activateConstraints:v81];

    contentView2 = v78;
    v19 = v93;

    v30 = objb;
LABEL_19:

    goto LABEL_20;
  }

  if (v19 == @"BKAppearanceMenuItemHorizontalScrollingView")
  {
    [(BEAppearanceViewController *)self configureHorizontalScrollSwitchCell:v8];
  }

  else if (v19 == @"BKAppearanceMenuItemVerticalScrollingView")
  {
    [(BEAppearanceViewController *)self configureVerticalScrollSwitchCell:v8];
  }

LABEL_21:

  return v8;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v7 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = v7 == @"BKAppearanceMenuItemFont" && [pathCopy row] == &dword_0 + 1;
  return v8;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKAppearanceViewController *)self tableView:view shouldHighlightRowAtIndexPath:pathCopy])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v6 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v6 == @"BKAppearanceMenuItemFont" && [pathCopy row] == &dword_0 + 1)
  {
    navigationController = [(BKAppearanceViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    v9 = topViewController;
    if (topViewController == self->_fontVC)
    {
    }

    else
    {
      navigationController2 = [(BKAppearanceViewController *)self navigationController];
      viewControllers = [navigationController2 viewControllers];
      v12 = [viewControllers containsObject:self->_fontVC];

      if (v12)
      {
        goto LABEL_8;
      }

      navigationController = [(BKAppearanceViewController *)self navigationController];
      [navigationController pushViewController:self->_fontVC animated:1];
    }
  }

LABEL_8:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  theme = [(BKAppearanceViewController *)self theme];
  [theme stylizeTableViewCell:cellCopy];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v10 _scaledValueForValue:18.0];
  v8 = [UIFont systemFontOfSize:?];
  textLabel = [cellCopy textLabel];

  [textLabel setFont:v8];
}

- (void)setBook:(id)book
{
  bookCopy = book;
  if (self->_book != bookCopy)
  {
    v6 = bookCopy;
    objc_storeStrong(&self->_book, book);
    [(BKAppearanceFontViewController *)self->_fontVC setBook:v6];
    if (self->_fonts)
    {
      [(BKAppearanceViewController *)self setFonts:0];
    }

    [(BKAppearanceViewController *)self loadFonts];
    bookCopy = v6;
  }
}

- (void)loadFonts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_fonts)
  {
    styleManager = [(BKAppearanceViewController *)selfCopy styleManager];
    fonts = [styleManager fonts];
    v5 = [fonts mutableCopy];

    book = [(BKAppearanceViewController *)selfCopy book];
    LOBYTE(fonts) = [book showOriginalFontOption];

    if ((fonts & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            familyName = [v11 familyName];
            v13 = [familyName isEqualToString:&stru_1E7188];

            if (v13)
            {
              v14 = v11;

              if (v14)
              {
                [v7 removeObject:v14];
              }

              goto LABEL_14;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v14 = 0;
LABEL_14:
    }

    [(BKAppearanceViewController *)selfCopy setFonts:v5, v15];
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)fonts
{
  fonts = self->_fonts;
  if (!fonts)
  {
    [(BKAppearanceViewController *)self loadFonts];
    fonts = self->_fonts;
  }

  return fonts;
}

- (void)setFonts:(id)fonts
{
  fontsCopy = fonts;
  if (![(NSArray *)self->_fonts isEqualToArray:?])
  {
    [(BKAppearanceFontViewController *)self->_fontVC setFonts:fontsCopy];
    fontObserver = [(BKAppearanceViewController *)self fontObserver];
    fonts = self->_fonts;
    if (fonts)
    {
      v7 = [NSIndexSet indexSetWithIndexesInRange:0, [(NSArray *)fonts count]];
      [(NSArray *)self->_fonts removeObserver:fontObserver fromObjectsAtIndexes:v7 forKeyPath:@"state"];
      [(NSArray *)self->_fonts removeObserver:fontObserver fromObjectsAtIndexes:v7 forKeyPath:@"downloadProgress"];
      v8 = self->_fonts;
      self->_fonts = 0;
    }

    if (fontsCopy)
    {
      v9 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [fontsCopy count]);
      [fontsCopy addObserver:fontObserver toObjectsAtIndexes:v9 forKeyPath:@"state" options:0 context:0];
      [fontsCopy addObserver:fontObserver toObjectsAtIndexes:v9 forKeyPath:@"downloadProgress" options:0 context:0];
      objc_storeStrong(&self->_fonts, fonts);
    }
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (![(ContentStyle *)self->_style isEqual:?])
  {
    objc_storeStrong(&self->_style, style);
    [(BKAppearanceViewController *)self updateUI];
  }
}

- (void)setLayout:(unint64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    [(BKAppearanceViewController *)self updateUI];
  }
}

- (void)setAppearanceStyle:(unint64_t)style
{
  if (self->_appearanceStyle != style)
  {
    self->_appearanceStyle = style;
    [(BKAppearanceViewController *)self updateThemeButtons];
  }
}

- (void)_changeAppearanceStyle:(unint64_t)style
{
  [(BKAppearanceViewController *)self setAppearanceStyle:?];
  v5 = +[BCThemeCoordinator shared];
  [v5 observer:self didChangeStyle:style];
}

- (void)_turnAutoNightModeSwitchOff
{
  isOn = [(UISwitch *)self->_autoNightModeSwitch isOn];
  if (isOn)
  {
    [(UISwitch *)self->_autoNightModeSwitch setOn:0 animated:1];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:0 forKey:kIMThemeAutoNightModeOnKey];

    [(BKAppearanceViewController *)self _sendActionsForAutoNightSwitchWithPreviousState:0];
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:isOn forKey:@"BKAppearanceAutoNightModeSwitchWasOnKey"];
}

- (void)_restoreAutoNightModeSwitch
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BKAppearanceAutoNightModeSwitchWasOnKey"];

  if (v4)
  {
    [(UISwitch *)self->_autoNightModeSwitch setOn:1 animated:1];
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:1 forKey:kIMThemeAutoNightModeOnKey];

    [(BKAppearanceViewController *)self _sendActionsForAutoNightSwitchWithPreviousState:1];
  }
}

- (void)_sendActionsForAutoNightSwitchWithPreviousState:(BOOL)state
{
  stateCopy = state;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:-[UISwitch isOn](self->_autoNightModeSwitch forKey:{"isOn"), @"BKAppearanceAutoNightModeSwitchWasOnKey"}];

  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self didChangeAutoNightMode:-[UISwitch isOn](self->_autoNightModeSwitch previousValue:{"isOn"), stateCopy}];
}

- (void)enableAutoNightModeSwitch
{
  if (+[IMTheme isAutoNightModeEnabled])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 setBool:0 forKey:@"BKAppearanceDisableAutoNightModeSwitchKey"];
  }
}

- (void)disableAutoNightModeSwitch
{
  if (+[IMTheme isAutoNightModeEnabled])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 setBool:1 forKey:@"BKAppearanceDisableAutoNightModeSwitchKey"];
  }
}

- (void)setThemeNormal:(id)normal
{
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self willChangeTheme:0];

  v5 = +[BCLightLevelController sharedInstance];
  isLowLight = [v5 isLowLight];

  if ((isLowLight & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:0];
}

- (void)setThemeGray:(id)gray
{
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self willChangeTheme:2];

  v5 = +[BCLightLevelController sharedInstance];
  isLowLight = [v5 isLowLight];

  if ((isLowLight & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:2];
}

- (void)setThemeSepia:(id)sepia
{
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self willChangeTheme:1];

  v5 = +[BCLightLevelController sharedInstance];
  isLowLight = [v5 isLowLight];

  if ((isLowLight & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:1];
}

- (void)setThemeNight:(id)night
{
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self willChangeTheme:3];

  v5 = +[BCLightLevelController sharedInstance];
  isLowLight = [v5 isLowLight];

  if ((isLowLight & 1) == 0)
  {
    [(BKAppearanceViewController *)self _turnAutoNightModeSwitchOff];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:3];
}

- (void)updateThemeButtons
{
  appearanceStyle = [(BKAppearanceViewController *)self appearanceStyle];
  [(UIButton *)self->_themeWhiteButton setSelected:appearanceStyle == 0];
  [(UIButton *)self->_themeSepiaButton setSelected:appearanceStyle == 1];
  [(UIButton *)self->_themeGrayButton setSelected:appearanceStyle == 2];
  themeNightButton = self->_themeNightButton;

  [(UIButton *)themeNightButton setSelected:appearanceStyle == 3];
}

- (BOOL)_shouldShowAutoNightMode
{
  v2 = +[BCLightLevelController shared];
  shouldMonitorLightLevel = [v2 shouldMonitorLightLevel];

  return shouldMonitorLightLevel;
}

- (void)appearanceFontViewController:(id)controller didChangeToFontWithName:(id)name
{
  nameCopy = name;
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self didChangeFont:nameCopy];
}

- (void)changeFontSize:(id)size
{
  LODWORD(v4) = dword_193248[[size selectedSegmentIndex] == 0];

  [(BKAppearanceViewController *)self fontSizeModifiedByOffset:v4];
}

- (void)changeLineHeight:(id)height
{
  LODWORD(v4) = dword_193248[[height selectedSegmentIndex] == 0];

  [(BKAppearanceViewController *)self lineHeightModifiedByOffset:v4];
}

- (int)maxVisibleFonts
{
  if (isPad())
  {
    return 8;
  }

  if (isTallPhone() && (isPortrait() & 1) != 0)
  {
    return 7;
  }

  if (isLandscape())
  {
    return 4;
  }

  return 5;
}

+ (int)_fontSizeToSegmentIndex:(float)index
{
  v3 = floorf(index);
  if (v3 == 12.0)
  {
    return 0;
  }

  if (v3 == 24.0)
  {
    v5 = 2;
  }

  else
  {
    v5 = -1;
  }

  if (v3 == 19.0)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (void)fontSizeModifiedByOffset:(float)offset
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  [styleManager fontSize];
  v7 = roundf((v6 + offset) * 100.0) / 100.0;

  v8 = 6.0;
  if (v7 <= 6.0)
  {
    v8 = v7;
  }

  if (v8 >= 0.1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.1;
  }

  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  *&v10 = v9;
  [styleManager2 setFontSize:v10];
}

- (void)lineHeightModifiedByOffset:(float)offset
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  [styleManager lineHeight];
  v7 = (roundf(v6 * 100.0) / 100.0) + offset;

  v8 = 6.0;
  if (v7 <= 6.0)
  {
    v8 = v7;
  }

  if (v8 >= 0.1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.1;
  }

  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  *&v10 = v9;
  [styleManager2 setLineHeight:v10];
}

- (void)defaultFontSize:(id)size
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  [styleManager setDefaultFontSize];

  delegate = [(BKAppearanceViewController *)self delegate];
  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  [styleManager2 fontSize];
  [delegate appearanceViewController:self didChangeFontSize:v6];
}

- (void)increaseFontSize:(id)size
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  [styleManager increaseFontSize];

  delegate = [(BKAppearanceViewController *)self delegate];
  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  [styleManager2 fontSize];
  [delegate appearanceViewController:self didChangeFontSize:v6];
}

- (void)decreaseFontSize:(id)size
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  [styleManager decreaseFontSize];

  delegate = [(BKAppearanceViewController *)self delegate];
  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  [styleManager2 fontSize];
  [delegate appearanceViewController:self didChangeFontSize:v6];
}

- (void)changeLegibility:(id)legibility
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  optimizeLegibility = [styleManager optimizeLegibility];
  styleManager2 = [(BKAppearanceViewController *)self styleManager];
  [styleManager2 setOptimizeLegibility:optimizeLegibility ^ 1];
}

- (void)updateUI
{
  styleManager = [(BKAppearanceViewController *)self styleManager];
  canDecreaseFontSize = [styleManager canDecreaseFontSize];
  sizeSmallerButton = [(BEAppearanceViewController *)self sizeSmallerButton];
  [sizeSmallerButton setEnabled:canDecreaseFontSize];

  canIncreaseFontSize = [styleManager canIncreaseFontSize];
  sizeLargerButton = [(BEAppearanceViewController *)self sizeLargerButton];
  [sizeLargerButton setEnabled:canIncreaseFontSize];

  v7 = [(BKAppearanceViewController *)self layout]== &dword_0 + 2 || [(BKAppearanceViewController *)self layout]== &dword_0 + 3;
  scrollSwitch = [(BEAppearanceViewController *)self scrollSwitch];
  [scrollSwitch setOn:v7];

  [(BKAppearanceViewController *)self updateThemeButtons];
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView reloadData];

  [(BKAppearanceViewController *)self contentSize];
  [(BKAppearanceViewController *)self setPreferredContentSize:?];
  [(BKAppearanceViewController *)self preferredContentSize];
  v11 = v10;
  v13 = v12;
  [(BKAppearanceViewController *)self fontAppearanceWidthPadding];
  [(BKAppearanceFontViewController *)self->_fontVC setDesiredContentSize:v11 + v14, v13];
  navigationController = [(BKAppearanceViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController)
  {
    selfCopy = topViewController;
  }

  else
  {
    selfCopy = self;
  }

  [(BKAppearanceViewController *)selfCopy preferredContentSize];
  v19 = v18;
  v21 = v20;
  presentingViewController = [(BKAppearanceViewController *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController setPreferredContentSize:{v19, v21}];
}

- (void)stylizeForTheme
{
  v32.receiver = self;
  v32.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v32 stylizeForTheme];
  themePage = [(BKAppearanceViewController *)self themePage];
  navigationController = [(BKAppearanceViewController *)self navigationController];
  [themePage stylizeNavigationController:navigationController];

  tableView = [(BEAppearanceViewController *)self tableView];
  backgroundColor = [tableView backgroundColor];
  navigationController2 = [(BKAppearanceViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setBackgroundColor:backgroundColor];

  themeWhiteButton = self->_themeWhiteButton;
  v10 = [(BKAppearanceViewController *)self _whiteThemeButtonImageSelected:0];
  [(UIButton *)themeWhiteButton setImage:v10 forState:0];

  v11 = self->_themeWhiteButton;
  v12 = [(BKAppearanceViewController *)self _whiteThemeButtonImageSelected:1];
  [(UIButton *)v11 setImage:v12 forState:4];

  themeSepiaButton = self->_themeSepiaButton;
  v14 = [(BKAppearanceViewController *)self _sepiaThemeButtonImageSelected:0];
  [(UIButton *)themeSepiaButton setImage:v14 forState:0];

  v15 = self->_themeSepiaButton;
  v16 = [(BKAppearanceViewController *)self _sepiaThemeButtonImageSelected:1];
  [(UIButton *)v15 setImage:v16 forState:4];

  themeGrayButton = self->_themeGrayButton;
  v18 = [(BKAppearanceViewController *)self _grayThemeButtonImageSelected:0];
  [(UIButton *)themeGrayButton setImage:v18 forState:0];

  v19 = self->_themeGrayButton;
  v20 = [(BKAppearanceViewController *)self _grayThemeButtonImageSelected:1];
  [(UIButton *)v19 setImage:v20 forState:4];

  themeNightButton = self->_themeNightButton;
  v22 = [(BKAppearanceViewController *)self _nightThemeButtonImageSelected:0];
  [(UIButton *)themeNightButton setImage:v22 forState:0];

  v23 = self->_themeNightButton;
  v24 = [(BKAppearanceViewController *)self _nightThemeButtonImageSelected:1];
  [(UIButton *)v23 setImage:v24 forState:4];

  tableViewSeparatorColor = [themePage tableViewSeparatorColor];
  sizeSeparatorLine = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [sizeSeparatorLine setBackgroundColor:tableViewSeparatorColor];

  switchColor = [themePage switchColor];
  scrollSwitch = [(BEAppearanceViewController *)self scrollSwitch];
  [scrollSwitch setOnTintColor:switchColor];

  switchColor2 = [themePage switchColor];
  autoNightModeSwitch = [(BKAppearanceViewController *)self autoNightModeSwitch];
  [autoNightModeSwitch setOnTintColor:switchColor2];

  tableView2 = [(BEAppearanceViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)handleAutoNightModeSwitch:(id)switch
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = kIMThemeAutoNightModeOnKey;
  v6 = [v4 BOOLForKey:kIMThemeAutoNightModeOnKey];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setBool:v6 ^ 1 forKey:v5];

  [IMTheme setAutoNightModeEnabled:v6 ^ 1];
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewController:self didChangeAutoNightMode:-[UISwitch isOn](self->_autoNightModeSwitch previousValue:{"isOn"), v6}];

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setBool:-[UISwitch isOn](self->_autoNightModeSwitch forKey:{"isOn"), @"BKAppearanceAutoNightModeSwitchWasOnKey"}];
}

- (void)onScrollSwitch:(id)switch notifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  scrollSwitch = [(BEAppearanceViewController *)self scrollSwitch];
  -[BKAppearanceViewController setScrollModeOn:notifyingCoordinator:](self, "setScrollModeOn:notifyingCoordinator:", [scrollSwitch isOn], coordinatorCopy);
}

- (void)setScrollModeOn:(BOOL)on notifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  if (on)
  {
    book = [(BKAppearanceViewController *)self book];
    scrollModeOrientation = [book scrollModeOrientation];

    layout = [(BKAppearanceViewController *)self layout];
    if (scrollModeOrientation)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (scrollModeOrientation)
    {
      v10 = layout != 2;
    }

    else
    {
      v10 = layout != 3;
    }
  }

  else
  {
    v10 = [(BKAppearanceViewController *)self layout]!= &dword_0 + 1;
    v9 = 1;
  }

  [(BKAppearanceViewController *)self setLayout:v9];
  if (coordinatorCopy && v10)
  {
    v11 = +[BCThemeCoordinator shared];
    [v11 observer:self didChangeLayout:{-[BKAppearanceViewController layout](self, "layout")}];
  }
}

- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout
{
  v6 = (layout & 0xFFFFFFFFFFFFFFFELL) == 2;
  v7 = [(BEAppearanceViewController *)self scrollSwitch:coordinator];
  [v7 setOn:v6];

  [(BKAppearanceViewController *)self onScrollSwitch:0 notifyingCoordinator:0];
}

- (id)keyCommands
{
  v2 = +[NSMutableArray array];
  v3 = AEBundle();
  v4 = [v3 localizedStringForKey:@"Dismiss menu" value:&stru_1E7188 table:0];
  v5 = [UIKeyCommand commandWithTitle:v4 image:0 action:"dismissMenu:" input:UIKeyInputEscape modifierFlags:0 propertyList:0];
  [v2 addObject:v5];

  return v2;
}

- (void)dismissMenu:(id)menu
{
  [(BKAppearanceViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewControllerShouldDismiss];
}

- (id)_themeButtonImageForTheme:(int64_t)theme selected:(BOOL)selected
{
  selectedCopy = selected;
  v6 = [IMThemePage themeForEPUBTheme:theme];
  buttonFillColor = [v6 buttonFillColor];
  keyColor = [v6 keyColor];
  if (!selectedCopy)
  {
    separatorColor = [v6 separatorColor];

    keyColor = separatorColor;
  }

  v10 = [(BKAppearanceViewController *)self _themeButtonImageWithColor:buttonFillColor unselectedBorderColor:keyColor selected:selectedCopy];

  return v10;
}

- (id)_themeButtonImageWithColor:(id)color unselectedBorderColor:(id)borderColor selected:(BOOL)selected
{
  selectedCopy = selected;
  borderColorCopy = borderColor;
  colorCopy = color;
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = 1.0 / v10;

  v17.width = 46.0;
  v17.height = 46.0;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  if (selectedCopy)
  {
    v11 = 2.0;
  }

  v12 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 46.0, 46.0];
  [borderColorCopy setFill];

  [v12 fill];
  v13 = [UIBezierPath bezierPathWithOvalInRect:v11, v11, v11 * -2.0 + 46.0, v11 * -2.0 + 46.0];
  [colorCopy setFill];

  [v13 fill];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (void)appearanceShouldDismissPopover
{
  delegate = [(BKAppearanceViewController *)self delegate];
  [delegate appearanceViewControllerShouldDismiss];
}

- (BKAppearanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end