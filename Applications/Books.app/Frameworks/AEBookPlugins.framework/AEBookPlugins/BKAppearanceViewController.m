@interface BKAppearanceViewController
+ (int)_fontSizeToSegmentIndex:(float)a3;
- (BKAppearanceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKAppearanceViewControllerDelegate)delegate;
- (BOOL)_shouldShowAutoNightMode;
- (BOOL)advancedFonts;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)contentSize;
- (NSArray)fonts;
- (UIStackView)themeContainer;
- (UISwitch)autoNightModeSwitch;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_themeButtonImageForTheme:(int64_t)a3 selected:(BOOL)a4;
- (id)_themeButtonImageWithColor:(id)a3 unselectedBorderColor:(id)a4 selected:(BOOL)a5;
- (id)keyCommands;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int)maxVisibleFonts;
- (int64_t)colorPotOffsetMultiplier:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_changeAppearanceStyle:(unint64_t)a3;
- (void)_restoreAutoNightModeSwitch;
- (void)_sendActionsForAutoNightSwitchWithPreviousState:(BOOL)a3;
- (void)_setPopoverScrolling;
- (void)_turnAutoNightModeSwitchOff;
- (void)appearanceFontViewController:(id)a3 didChangeToFontWithName:(id)a4;
- (void)appearanceShouldDismissPopover;
- (void)changeFontSize:(id)a3;
- (void)changeLegibility:(id)a3;
- (void)changeLineHeight:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)coordinator:(id)a3 observer:(id)a4 didChangeLayout:(unint64_t)a5;
- (void)dealloc;
- (void)decreaseFontSize:(id)a3;
- (void)defaultFontSize:(id)a3;
- (void)disableAutoNightModeSwitch;
- (void)dismissMenu:(id)a3;
- (void)enableAutoNightModeSwitch;
- (void)fontSizeModifiedByOffset:(float)a3;
- (void)handleAutoNightModeSwitch:(id)a3;
- (void)increaseFontSize:(id)a3;
- (void)lineHeightModifiedByOffset:(float)a3;
- (void)loadFonts;
- (void)loadView;
- (void)onScrollSwitch:(id)a3 notifyingCoordinator:(BOOL)a4;
- (void)releaseViews;
- (void)setAppearanceStyle:(unint64_t)a3;
- (void)setBook:(id)a3;
- (void)setFonts:(id)a3;
- (void)setLayout:(unint64_t)a3;
- (void)setScrollModeOn:(BOOL)a3 notifyingCoordinator:(BOOL)a4;
- (void)setStyle:(id)a3;
- (void)setTheme:(id)a3;
- (void)setThemeGray:(id)a3;
- (void)setThemeNight:(id)a3;
- (void)setThemeNormal:(id)a3;
- (void)setThemeSepia:(id)a3;
- (void)stylizeForTheme;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateThemeButtons;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKAppearanceViewController

- (BKAppearanceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = BKAppearanceViewController;
  v4 = [(BEAppearanceViewController *)&v10 initWithNibName:a3 bundle:a4];
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
  v4 = [(BEAppearanceViewController *)self tableView];
  [v4 setScrollEnabled:v3];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v4 loadView];
  [(BKAppearanceViewController *)self _setPopoverScrolling];
  v3 = [(BEAppearanceViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"BKAppearanceTableViewCell"];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v8 viewDidLoad];
  v3 = [(BKAppearanceViewController *)self view];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(BKAppearanceViewController *)self navigationController];
  v5 = [v4 navigationBar];

  v6 = objc_opt_new();
  [v5 setBackgroundImage:v6 forBarMetrics:0];

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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v6 viewWillAppear:?];
  v5 = [(BKAppearanceViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];

  [(BKAppearanceViewController *)self updateUI];
  [(BKAppearanceViewController *)self stylizeForTheme];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKAppearanceViewController;
  [(BKAppearanceViewController *)&v6 viewDidAppear:a3];
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
  v3 = [(BEAppearanceViewController *)self tableView];
  v4 = [(BKAppearanceViewController *)self numberOfSectionsInTableView:v3];

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
      v7 = [(BEAppearanceViewController *)self tableView];
      v8 = [(BKAppearanceViewController *)self tableView:v7 numberOfRowsInSection:v5];

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [(BEAppearanceViewController *)self tableView];
          v11 = [NSIndexPath indexPathForRow:i inSection:v5];
          [(BKAppearanceViewController *)self tableView:v10 heightForRowAtIndexPath:v11];
          v13 = v12;

          v6 = v6 + v13;
        }
      }

      v14 = [(BEAppearanceViewController *)self tableView];
      [(BKAppearanceViewController *)self tableView:v14 heightForHeaderInSection:v5];
      v16 = v6 + v15;

      v17 = [(BEAppearanceViewController *)self tableView];
      [(BKAppearanceViewController *)self tableView:v17 heightForFooterInSection:v5];
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

- (void)setTheme:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceViewController *)self theme];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = BKAppearanceViewController;
    [(BKAppearanceViewController *)&v6 setTheme:v4];
    [(BKAppearanceFontViewController *)self->_fontVC setTheme:v4];
    [(BKAppearanceViewController *)self stylizeForTheme];
  }
}

- (int64_t)colorPotOffsetMultiplier:(int64_t)a3
{
  v4 = [(BKAppearanceViewController *)self view];
  v5 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v4 semanticContentAttribute]);

  if (v5 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return 3 - a3;
  }

  else
  {
    return a3;
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
    v84 = [(UIStackView *)self->_themeContainer widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotSeparator];
    v61 = v60;
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v83 = [v84 constraintEqualToConstant:v62 * 4.0 + v61 * 3.0];
    v85[0] = v83;
    v82 = [(UIStackView *)self->_themeContainer heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorContainerHeight];
    v81 = [v82 constraintEqualToConstant:?];
    v85[1] = v81;
    v80 = [(UIButton *)self->_themeWhiteButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v79 = [v80 constraintEqualToConstant:?];
    v85[2] = v79;
    v78 = [(UIButton *)self->_themeWhiteButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v77 = [v78 constraintEqualToConstant:?];
    v85[3] = v77;
    v76 = [(UIButton *)self->_themeSepiaButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v75 = [v76 constraintEqualToConstant:?];
    v85[4] = v75;
    v74 = [(UIButton *)self->_themeSepiaButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v73 = [v74 constraintEqualToConstant:?];
    v85[5] = v73;
    v72 = [(UIButton *)self->_themeGrayButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v63 = [v72 constraintEqualToConstant:?];
    v85[6] = v63;
    v64 = [(UIButton *)self->_themeGrayButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v65 = [v64 constraintEqualToConstant:?];
    v85[7] = v65;
    v66 = [(UIButton *)self->_themeNightButton widthAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotWidth];
    v67 = [v66 constraintEqualToConstant:?];
    v85[8] = v67;
    v68 = [(UIButton *)self->_themeNightButton heightAnchor];
    [(BKAppearanceViewController *)self appearanceColorPotHeight];
    v69 = [v68 constraintEqualToConstant:?];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(BKAppearanceViewController *)self menuItems];
  if (v4)
  {
    v5 = [(BKAppearanceViewController *)self menuItems];
    v6 = [v5 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(BKAppearanceViewController *)self menuItems];
  v7 = [v6 objectAtIndexedSubscript:a4];

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  [(BEAppearanceViewController *)self appearanceRowHeight];
  v7 = v6;
  v8 = [(BKAppearanceViewController *)self menuItems];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  if (v9 == @"BKAppearanceMenuItemTheme")
  {
    if (![v5 row])
    {
      v7 = 60.0;
      goto LABEL_16;
    }

    if ([v5 row] != &dword_0 + 1)
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
  if (+[UIFont bc_accessibilityFontSizesEnabled](UIFont, "bc_accessibilityFontSizesEnabled") && v9 == @"BKAppearanceMenuItemFont" && [v5 row] == &dword_0 + 1)
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 5.0;
  if (!a4)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = [(BEAppearanceViewController *)self tableViewHeaderView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"BKAppearanceTableViewCell" forIndexPath:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 textLabel];
    [v9 setText:0];

    v10 = [v8 detailTextLabel];
    [v10 setText:0];

    [v8 setAccessoryView:0];
    [v8 setAccessoryType:0];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v11 = [v8 contentView];
    v12 = [v11 subviews];

    v13 = [v12 countByEnumeratingWithState:&v105 objects:v113 count:16];
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
            objc_enumerationMutation(v12);
          }

          [*(*(&v105 + 1) + 8 * i) removeFromSuperview];
        }

        v14 = [v12 countByEnumeratingWithState:&v105 objects:v113 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v8 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"BKAppearanceTableViewCell"];
  }

  v17 = [v8 contentView];
  v18 = [(BKAppearanceViewController *)self menuItems];
  v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  if (v19 == @"BKAppearanceMenuItemBrightness")
  {
    v20 = [(BEAppearanceViewController *)self brightnessSlider];
    [v17 addSubview:v20];
    v96 = [v20 leadingAnchor];
    obj = [v17 layoutMarginsGuide];
    v89 = [obj leadingAnchor];
    v87 = [v96 constraintEqualToAnchor:v89];
    v112[0] = v87;
    v84 = [v20 trailingAnchor];
    v85 = [v17 layoutMarginsGuide];
    v83 = [v85 trailingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v112[1] = v82;
    [v20 topAnchor];
    v21 = v91 = v19;
    [v17 topAnchor];
    v22 = v94 = v6;
    v23 = [v21 constraintEqualToAnchor:v22];
    v112[2] = v23;
    v24 = [v20 bottomAnchor];
    [v17 bottomAnchor];
    v26 = v25 = v17;
    v27 = [v24 constraintEqualToAnchor:v26 constant:-1.0];
    v112[3] = v27;
    v28 = v112;
    goto LABEL_18;
  }

  if (v19 == @"BKAppearanceMenuItemFont")
  {
    if ([v6 row])
    {
      if ([v6 row] != &dword_0 + 1)
      {
        goto LABEL_21;
      }

      v90 = v17;
      v92 = v19;
      v95 = v6;
      v32 = AEBundle();
      v33 = [v32 localizedStringForKey:@"Fonts" value:&stru_1E7188 table:0];
      v34 = [v8 textLabel];
      [v34 setText:v33];

      v35 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleHeadline scale:1];
      v36 = [UIImage systemImageNamed:@"chevron.forward"];
      v88 = v35;
      v37 = [v36 imageWithConfiguration:v35];

      v86 = v37;
      v38 = [[UIImageView alloc] initWithImage:v37];
      [v8 setAccessoryView:v38];

      v39 = [(BKAppearanceViewController *)self themePage];
      v40 = [v39 tertiaryTextColor];
      v41 = [v8 accessoryView];
      [v41 setTintColor:v40];

      v42 = [(BKAppearanceViewController *)self themePage];
      v43 = [v42 secondaryTextColor];
      v44 = [v8 detailTextLabel];
      [v44 setTextColor:v43];

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
          v50 = self;
          v51 = [(BKAppearanceViewController *)self style];
          v52 = [v51 fontFamily];
          v53 = [v49 familyName];
          v54 = [v52 isEqualToString:v53];

          if (v54)
          {
            if ([v49 kind] == &dword_0 + 1)
            {
              v55 = AEBundle();
              v56 = [v55 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];
              v57 = [v8 detailTextLabel];
              [v57 setText:v56];

              v58 = [v8 detailTextLabel];
              v59 = [v58 font];
              [v59 pointSize];
              v60 = [UIFont systemFontOfSize:?];
              v61 = [v8 detailTextLabel];
              [v61 setFont:v60];

LABEL_41:
              goto LABEL_42;
            }

            v58 = [v49 displayName];
            v62 = [v8 detailTextLabel];
            v63 = [v62 font];
            [v63 pointSize];
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
              v59 = v66;
            }

            else
            {
              v67 = [v49 familyName];
              v59 = [UIFont fontWithName:v67 size:v65];
            }

            v68 = [v8 detailTextLabel];
            [v68 setText:v58];

            v69 = [v59 bkEffectiveFontForText:v58];
            v70 = [v8 detailTextLabel];
            [v70 setFont:v69];

            v71 = [v8 detailTextLabel];
            [v71 setLineBreakMode:4];

            v60 = [v8 detailTextLabel];
            [v60 setNumberOfLines:1];
            goto LABEL_41;
          }

LABEL_42:
          self = v50;
        }

        v46 = [obja countByEnumeratingWithState:&v101 objects:v110 count:16];
        if (!v46)
        {
LABEL_44:

          v19 = v92;
          v6 = v95;
          v17 = v90;
          goto LABEL_21;
        }
      }
    }

    v20 = [(BEAppearanceViewController *)self fontSizeButtons];
    [v17 addSubview:v20];
    v96 = [v20 leadingAnchor];
    obj = [v17 layoutMarginsGuide];
    v89 = [obj leadingAnchor];
    v87 = [v96 constraintEqualToAnchor:v89];
    v111[0] = v87;
    v84 = [v20 trailingAnchor];
    v85 = [v17 layoutMarginsGuide];
    v83 = [v85 trailingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v111[1] = v82;
    [v20 topAnchor];
    v21 = v91 = v19;
    [v17 topAnchor];
    v22 = v94 = v6;
    v23 = [v21 constraintEqualToAnchor:v22];
    v111[2] = v23;
    v24 = [v20 bottomAnchor];
    [v17 bottomAnchor];
    v26 = v25 = v17;
    v27 = [v24 constraintEqualToAnchor:v26 constant:-1.0];
    v111[3] = v27;
    v28 = v111;
LABEL_18:
    v29 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    v17 = v25;
    v6 = v94;

    v19 = v91;
    v30 = v96;
    goto LABEL_19;
  }

  if (v19 == @"BKAppearanceMenuItemTheme")
  {
    if ([v6 row])
    {
      if ([v6 row] != &dword_0 + 1)
      {
        goto LABEL_21;
      }

      v72 = AEBundle();
      v73 = [v72 localizedStringForKey:@"Auto-Night Theme" value:&stru_1E7188 table:0];
      v74 = [v8 textLabel];
      [v74 setText:v73];

      v20 = [(BKAppearanceViewController *)self autoNightModeSwitch];
      [v8 setAccessoryView:v20];
LABEL_20:

      goto LABEL_21;
    }

    v20 = [(BKAppearanceViewController *)self themeContainer];
    [v17 addSubview:v20];
    objb = [v20 centerXAnchor];
    v75 = [v17 centerXAnchor];
    [objb constraintEqualToAnchor:v75];
    v76 = v93 = v19;
    v109[0] = v76;
    v77 = [v20 centerYAnchor];
    [v17 centerYAnchor];
    v79 = v78 = v17;
    v80 = [v77 constraintEqualToAnchor:v79];
    v109[1] = v80;
    v81 = [NSArray arrayWithObjects:v109 count:2];
    [NSLayoutConstraint activateConstraints:v81];

    v17 = v78;
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(BKAppearanceViewController *)self menuItems];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = v7 == @"BKAppearanceMenuItemFont" && [v5 row] == &dword_0 + 1;
  return v8;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if ([(BKAppearanceViewController *)self tableView:a3 shouldHighlightRowAtIndexPath:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [(BKAppearanceViewController *)self menuItems];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v13, "section")}];

  if (v6 == @"BKAppearanceMenuItemFont" && [v13 row] == &dword_0 + 1)
  {
    v7 = [(BKAppearanceViewController *)self navigationController];
    v8 = [v7 topViewController];
    v9 = v8;
    if (v8 == self->_fontVC)
    {
    }

    else
    {
      v10 = [(BKAppearanceViewController *)self navigationController];
      v11 = [v10 viewControllers];
      v12 = [v11 containsObject:self->_fontVC];

      if (v12)
      {
        goto LABEL_8;
      }

      v7 = [(BKAppearanceViewController *)self navigationController];
      [v7 pushViewController:self->_fontVC animated:1];
    }
  }

LABEL_8:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  v7 = [(BKAppearanceViewController *)self theme];
  [v7 stylizeTableViewCell:v6];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v10 _scaledValueForValue:18.0];
  v8 = [UIFont systemFontOfSize:?];
  v9 = [v6 textLabel];

  [v9 setFont:v8];
}

- (void)setBook:(id)a3
{
  v5 = a3;
  if (self->_book != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_book, a3);
    [(BKAppearanceFontViewController *)self->_fontVC setBook:v6];
    if (self->_fonts)
    {
      [(BKAppearanceViewController *)self setFonts:0];
    }

    [(BKAppearanceViewController *)self loadFonts];
    v5 = v6;
  }
}

- (void)loadFonts
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fonts)
  {
    v3 = [(BKAppearanceViewController *)v2 styleManager];
    v4 = [v3 fonts];
    v5 = [v4 mutableCopy];

    v6 = [(BKAppearanceViewController *)v2 book];
    LOBYTE(v4) = [v6 showOriginalFontOption];

    if ((v4 & 1) == 0)
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
            v12 = [v11 familyName];
            v13 = [v12 isEqualToString:&stru_1E7188];

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

    [(BKAppearanceViewController *)v2 setFonts:v5, v15];
  }

  objc_sync_exit(v2);
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

- (void)setFonts:(id)a3
{
  v10 = a3;
  if (![(NSArray *)self->_fonts isEqualToArray:?])
  {
    [(BKAppearanceFontViewController *)self->_fontVC setFonts:v10];
    v5 = [(BKAppearanceViewController *)self fontObserver];
    fonts = self->_fonts;
    if (fonts)
    {
      v7 = [NSIndexSet indexSetWithIndexesInRange:0, [(NSArray *)fonts count]];
      [(NSArray *)self->_fonts removeObserver:v5 fromObjectsAtIndexes:v7 forKeyPath:@"state"];
      [(NSArray *)self->_fonts removeObserver:v5 fromObjectsAtIndexes:v7 forKeyPath:@"downloadProgress"];
      v8 = self->_fonts;
      self->_fonts = 0;
    }

    if (v10)
    {
      v9 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v10 count]);
      [v10 addObserver:v5 toObjectsAtIndexes:v9 forKeyPath:@"state" options:0 context:0];
      [v10 addObserver:v5 toObjectsAtIndexes:v9 forKeyPath:@"downloadProgress" options:0 context:0];
      objc_storeStrong(&self->_fonts, a3);
    }
  }
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (![(ContentStyle *)self->_style isEqual:?])
  {
    objc_storeStrong(&self->_style, a3);
    [(BKAppearanceViewController *)self updateUI];
  }
}

- (void)setLayout:(unint64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(BKAppearanceViewController *)self updateUI];
  }
}

- (void)setAppearanceStyle:(unint64_t)a3
{
  if (self->_appearanceStyle != a3)
  {
    self->_appearanceStyle = a3;
    [(BKAppearanceViewController *)self updateThemeButtons];
  }
}

- (void)_changeAppearanceStyle:(unint64_t)a3
{
  [(BKAppearanceViewController *)self setAppearanceStyle:?];
  v5 = +[BCThemeCoordinator shared];
  [v5 observer:self didChangeStyle:a3];
}

- (void)_turnAutoNightModeSwitchOff
{
  v3 = [(UISwitch *)self->_autoNightModeSwitch isOn];
  if (v3)
  {
    [(UISwitch *)self->_autoNightModeSwitch setOn:0 animated:1];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:0 forKey:kIMThemeAutoNightModeOnKey];

    [(BKAppearanceViewController *)self _sendActionsForAutoNightSwitchWithPreviousState:0];
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:v3 forKey:@"BKAppearanceAutoNightModeSwitchWasOnKey"];
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

- (void)_sendActionsForAutoNightSwitchWithPreviousState:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:-[UISwitch isOn](self->_autoNightModeSwitch forKey:{"isOn"), @"BKAppearanceAutoNightModeSwitchWasOnKey"}];

  v6 = [(BKAppearanceViewController *)self delegate];
  [v6 appearanceViewController:self didChangeAutoNightMode:-[UISwitch isOn](self->_autoNightModeSwitch previousValue:{"isOn"), v3}];
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

- (void)setThemeNormal:(id)a3
{
  v4 = [(BKAppearanceViewController *)self delegate];
  [v4 appearanceViewController:self willChangeTheme:0];

  v5 = +[BCLightLevelController sharedInstance];
  v6 = [v5 isLowLight];

  if ((v6 & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:0];
}

- (void)setThemeGray:(id)a3
{
  v4 = [(BKAppearanceViewController *)self delegate];
  [v4 appearanceViewController:self willChangeTheme:2];

  v5 = +[BCLightLevelController sharedInstance];
  v6 = [v5 isLowLight];

  if ((v6 & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:2];
}

- (void)setThemeSepia:(id)a3
{
  v4 = [(BKAppearanceViewController *)self delegate];
  [v4 appearanceViewController:self willChangeTheme:1];

  v5 = +[BCLightLevelController sharedInstance];
  v6 = [v5 isLowLight];

  if ((v6 & 1) == 0)
  {
    [(BKAppearanceViewController *)self enableAutoNightModeSwitch];
    [(BKAppearanceViewController *)self _restoreAutoNightModeSwitch];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:1];
}

- (void)setThemeNight:(id)a3
{
  v4 = [(BKAppearanceViewController *)self delegate];
  [v4 appearanceViewController:self willChangeTheme:3];

  v5 = +[BCLightLevelController sharedInstance];
  v6 = [v5 isLowLight];

  if ((v6 & 1) == 0)
  {
    [(BKAppearanceViewController *)self _turnAutoNightModeSwitchOff];
  }

  [(BKAppearanceViewController *)self _changeAppearanceStyle:3];
}

- (void)updateThemeButtons
{
  v3 = [(BKAppearanceViewController *)self appearanceStyle];
  [(UIButton *)self->_themeWhiteButton setSelected:v3 == 0];
  [(UIButton *)self->_themeSepiaButton setSelected:v3 == 1];
  [(UIButton *)self->_themeGrayButton setSelected:v3 == 2];
  themeNightButton = self->_themeNightButton;

  [(UIButton *)themeNightButton setSelected:v3 == 3];
}

- (BOOL)_shouldShowAutoNightMode
{
  v2 = +[BCLightLevelController shared];
  v3 = [v2 shouldMonitorLightLevel];

  return v3;
}

- (void)appearanceFontViewController:(id)a3 didChangeToFontWithName:(id)a4
{
  v5 = a4;
  v6 = [(BKAppearanceViewController *)self delegate];
  [v6 appearanceViewController:self didChangeFont:v5];
}

- (void)changeFontSize:(id)a3
{
  LODWORD(v4) = dword_193248[[a3 selectedSegmentIndex] == 0];

  [(BKAppearanceViewController *)self fontSizeModifiedByOffset:v4];
}

- (void)changeLineHeight:(id)a3
{
  LODWORD(v4) = dword_193248[[a3 selectedSegmentIndex] == 0];

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

+ (int)_fontSizeToSegmentIndex:(float)a3
{
  v3 = floorf(a3);
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

- (void)fontSizeModifiedByOffset:(float)a3
{
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 fontSize];
  v7 = roundf((v6 + a3) * 100.0) / 100.0;

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

  v11 = [(BKAppearanceViewController *)self styleManager];
  *&v10 = v9;
  [v11 setFontSize:v10];
}

- (void)lineHeightModifiedByOffset:(float)a3
{
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 lineHeight];
  v7 = (roundf(v6 * 100.0) / 100.0) + a3;

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

  v11 = [(BKAppearanceViewController *)self styleManager];
  *&v10 = v9;
  [v11 setLineHeight:v10];
}

- (void)defaultFontSize:(id)a3
{
  v4 = [(BKAppearanceViewController *)self styleManager];
  [v4 setDefaultFontSize];

  v7 = [(BKAppearanceViewController *)self delegate];
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 fontSize];
  [v7 appearanceViewController:self didChangeFontSize:v6];
}

- (void)increaseFontSize:(id)a3
{
  v4 = [(BKAppearanceViewController *)self styleManager];
  [v4 increaseFontSize];

  v7 = [(BKAppearanceViewController *)self delegate];
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 fontSize];
  [v7 appearanceViewController:self didChangeFontSize:v6];
}

- (void)decreaseFontSize:(id)a3
{
  v4 = [(BKAppearanceViewController *)self styleManager];
  [v4 decreaseFontSize];

  v7 = [(BKAppearanceViewController *)self delegate];
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 fontSize];
  [v7 appearanceViewController:self didChangeFontSize:v6];
}

- (void)changeLegibility:(id)a3
{
  v6 = [(BKAppearanceViewController *)self styleManager];
  v4 = [v6 optimizeLegibility];
  v5 = [(BKAppearanceViewController *)self styleManager];
  [v5 setOptimizeLegibility:v4 ^ 1];
}

- (void)updateUI
{
  v24 = [(BKAppearanceViewController *)self styleManager];
  v3 = [v24 canDecreaseFontSize];
  v4 = [(BEAppearanceViewController *)self sizeSmallerButton];
  [v4 setEnabled:v3];

  v5 = [v24 canIncreaseFontSize];
  v6 = [(BEAppearanceViewController *)self sizeLargerButton];
  [v6 setEnabled:v5];

  v7 = [(BKAppearanceViewController *)self layout]== &dword_0 + 2 || [(BKAppearanceViewController *)self layout]== &dword_0 + 3;
  v8 = [(BEAppearanceViewController *)self scrollSwitch];
  [v8 setOn:v7];

  [(BKAppearanceViewController *)self updateThemeButtons];
  v9 = [(BEAppearanceViewController *)self tableView];
  [v9 reloadData];

  [(BKAppearanceViewController *)self contentSize];
  [(BKAppearanceViewController *)self setPreferredContentSize:?];
  [(BKAppearanceViewController *)self preferredContentSize];
  v11 = v10;
  v13 = v12;
  [(BKAppearanceViewController *)self fontAppearanceWidthPadding];
  [(BKAppearanceFontViewController *)self->_fontVC setDesiredContentSize:v11 + v14, v13];
  v15 = [(BKAppearanceViewController *)self navigationController];
  v16 = [v15 topViewController];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = self;
  }

  [(BKAppearanceViewController *)v17 preferredContentSize];
  v19 = v18;
  v21 = v20;
  v22 = [(BKAppearanceViewController *)self presentingViewController];
  v23 = [v22 presentedViewController];
  [v23 setPreferredContentSize:{v19, v21}];
}

- (void)stylizeForTheme
{
  v32.receiver = self;
  v32.super_class = BKAppearanceViewController;
  [(BEAppearanceViewController *)&v32 stylizeForTheme];
  v3 = [(BKAppearanceViewController *)self themePage];
  v4 = [(BKAppearanceViewController *)self navigationController];
  [v3 stylizeNavigationController:v4];

  v5 = [(BEAppearanceViewController *)self tableView];
  v6 = [v5 backgroundColor];
  v7 = [(BKAppearanceViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setBackgroundColor:v6];

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

  v25 = [v3 tableViewSeparatorColor];
  v26 = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [v26 setBackgroundColor:v25];

  v27 = [v3 switchColor];
  v28 = [(BEAppearanceViewController *)self scrollSwitch];
  [v28 setOnTintColor:v27];

  v29 = [v3 switchColor];
  v30 = [(BKAppearanceViewController *)self autoNightModeSwitch];
  [v30 setOnTintColor:v29];

  v31 = [(BEAppearanceViewController *)self tableView];
  [v31 reloadData];
}

- (void)handleAutoNightModeSwitch:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = kIMThemeAutoNightModeOnKey;
  v6 = [v4 BOOLForKey:kIMThemeAutoNightModeOnKey];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setBool:v6 ^ 1 forKey:v5];

  [IMTheme setAutoNightModeEnabled:v6 ^ 1];
  v8 = [(BKAppearanceViewController *)self delegate];
  [v8 appearanceViewController:self didChangeAutoNightMode:-[UISwitch isOn](self->_autoNightModeSwitch previousValue:{"isOn"), v6}];

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setBool:-[UISwitch isOn](self->_autoNightModeSwitch forKey:{"isOn"), @"BKAppearanceAutoNightModeSwitchWasOnKey"}];
}

- (void)onScrollSwitch:(id)a3 notifyingCoordinator:(BOOL)a4
{
  v4 = a4;
  v6 = [(BEAppearanceViewController *)self scrollSwitch];
  -[BKAppearanceViewController setScrollModeOn:notifyingCoordinator:](self, "setScrollModeOn:notifyingCoordinator:", [v6 isOn], v4);
}

- (void)setScrollModeOn:(BOOL)a3 notifyingCoordinator:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [(BKAppearanceViewController *)self book];
    v7 = [v6 scrollModeOrientation];

    v8 = [(BKAppearanceViewController *)self layout];
    if (v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (v7)
    {
      v10 = v8 != 2;
    }

    else
    {
      v10 = v8 != 3;
    }
  }

  else
  {
    v10 = [(BKAppearanceViewController *)self layout]!= &dword_0 + 1;
    v9 = 1;
  }

  [(BKAppearanceViewController *)self setLayout:v9];
  if (v4 && v10)
  {
    v11 = +[BCThemeCoordinator shared];
    [v11 observer:self didChangeLayout:{-[BKAppearanceViewController layout](self, "layout")}];
  }
}

- (void)coordinator:(id)a3 observer:(id)a4 didChangeLayout:(unint64_t)a5
{
  v6 = (a5 & 0xFFFFFFFFFFFFFFFELL) == 2;
  v7 = [(BEAppearanceViewController *)self scrollSwitch:a3];
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

- (void)dismissMenu:(id)a3
{
  [(BKAppearanceViewController *)self dismissViewControllerAnimated:1 completion:0];
  v4 = [(BKAppearanceViewController *)self delegate];
  [v4 appearanceViewControllerShouldDismiss];
}

- (id)_themeButtonImageForTheme:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v6 = [IMThemePage themeForEPUBTheme:a3];
  v7 = [v6 buttonFillColor];
  v8 = [v6 keyColor];
  if (!v4)
  {
    v9 = [v6 separatorColor];

    v8 = v9;
  }

  v10 = [(BKAppearanceViewController *)self _themeButtonImageWithColor:v7 unselectedBorderColor:v8 selected:v4];

  return v10;
}

- (id)_themeButtonImageWithColor:(id)a3 unselectedBorderColor:(id)a4 selected:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = 1.0 / v10;

  v17.width = 46.0;
  v17.height = 46.0;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  if (v5)
  {
    v11 = 2.0;
  }

  v12 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 46.0, 46.0];
  [v7 setFill];

  [v12 fill];
  v13 = [UIBezierPath bezierPathWithOvalInRect:v11, v11, v11 * -2.0 + 46.0, v11 * -2.0 + 46.0];
  [v8 setFill];

  [v13 fill];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (void)appearanceShouldDismissPopover
{
  v2 = [(BKAppearanceViewController *)self delegate];
  [v2 appearanceViewControllerShouldDismiss];
}

- (BKAppearanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end