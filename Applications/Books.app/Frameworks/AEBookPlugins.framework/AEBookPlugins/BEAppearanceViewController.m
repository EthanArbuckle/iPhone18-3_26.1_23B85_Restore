@interface BEAppearanceViewController
- (BEAppearanceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BEAppearanceViewControllerDelegate)delegate;
- (UIButton)sizeLargerButton;
- (UIButton)sizeSmallerButton;
- (UISlider)brightnessSlider;
- (UISwitch)scrollSwitch;
- (UIView)fontSizeButtons;
- (double)appearanceRowHeight;
- (double)scrollingRowHeight;
- (id)tableViewHeaderView;
- (void)changeBrightness:(id)a3 withEvent:(id)a4;
- (void)configureHorizontalScrollSwitchCell:(id)a3;
- (void)configureScrollSwitchCell:(id)a3 text:(id)a4;
- (void)configureVerticalScrollSwitchCell:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)releaseAuxiliaryCachedViews;
- (void)releaseViews;
- (void)setScrollSwitchEnabled:(BOOL)a3;
- (void)stylizeForTheme;
- (void)updateBrightness;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BEAppearanceViewController

- (BEAppearanceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = BEAppearanceViewController;
  v4 = [(BKViewController *)&v9 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_scrollSwitchEnabled = 1;
    v6 = +[UITraitCollection bc_allAPITraits];
    v7 = [(BEAppearanceViewController *)v5 registerForTraitChanges:v6 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)dealloc
{
  [(BEAppearanceViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BEAppearanceViewController;
  [(BKViewController *)&v3 dealloc];
}

- (UISlider)brightnessSlider
{
  if (!self->_brightnessSlider && +[BEAppearanceViewController canChangeBrightness])
  {
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v4 = v3 + -1.0;
    v5 = [[UISlider alloc] initWithFrame:{12.0, 1.0, 272.0, v3 + -1.0}];
    brightnessSlider = self->_brightnessSlider;
    self->_brightnessSlider = v5;

    [(UISlider *)self->_brightnessSlider setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UISlider *)self->_brightnessSlider heightAnchor];
    v13.origin.x = 12.0;
    v13.origin.y = 1.0;
    v13.size.width = 272.0;
    v13.size.height = v4;
    v8 = [v7 constraintEqualToConstant:CGRectGetHeight(v13)];
    [v8 setActive:1];

    v9 = [(BEAppearanceViewController *)self theme];
    [v9 stylizeSlider:self->_brightnessSlider];

    [(UISlider *)self->_brightnessSlider addTarget:self action:"changeBrightness:withEvent:" forControlEvents:4096];
  }

  v10 = self->_brightnessSlider;

  return v10;
}

- (UIButton)sizeSmallerButton
{
  sizeSmallerButton = self->_sizeSmallerButton;
  if (!sizeSmallerButton)
  {
    v4 = [UIButton buttonWithType:0];
    v5 = self->_sizeSmallerButton;
    self->_sizeSmallerButton = v4;

    [(UIButton *)self->_sizeSmallerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(BEAppearanceViewController *)self theme];
    [v6 stylizeButton:self->_sizeSmallerButton];

    v7 = [(BEAppearanceViewController *)self theme];
    v8 = [v7 popoverBackgroundColor];
    v9 = [v8 colorWithAlphaComponent:0.001];
    [(UIButton *)self->_sizeSmallerButton setBackgroundColor:v9];

    LODWORD(v7) = [(BEAppearanceViewController *)self _isRTL];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v11 = v10;
    v12 = 0.0;
    if (v7)
    {
      v12 = 148.0;
    }

    [(UIButton *)self->_sizeSmallerButton setFrame:v12, 0.0, 148.0, v11];
    [(UIButton *)self->_sizeSmallerButton addTarget:self action:"decreaseFontSize:" forControlEvents:64];
    sizeSmallerButton = self->_sizeSmallerButton;
  }

  return sizeSmallerButton;
}

- (UIButton)sizeLargerButton
{
  sizeLargerButton = self->_sizeLargerButton;
  if (!sizeLargerButton)
  {
    v4 = [UIButton buttonWithType:0];
    v5 = self->_sizeLargerButton;
    self->_sizeLargerButton = v4;

    [(UIButton *)self->_sizeLargerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(BEAppearanceViewController *)self theme];
    v7 = [v6 popoverBackgroundColor];
    v8 = [v7 colorWithAlphaComponent:0.001];
    [(UIButton *)self->_sizeLargerButton setBackgroundColor:v8];

    v9 = [(BEAppearanceViewController *)self theme];
    [v9 stylizeButton:self->_sizeLargerButton];

    LODWORD(v9) = [(BEAppearanceViewController *)self _isRTL];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v11 = v10;
    v12 = 0.0;
    if (!v9)
    {
      v12 = 148.0;
    }

    [(UIButton *)self->_sizeLargerButton setFrame:v12, 0.0, 148.0, v11];
    [(UIButton *)self->_sizeLargerButton addTarget:self action:"increaseFontSize:" forControlEvents:64];
    sizeLargerButton = self->_sizeLargerButton;
  }

  return sizeLargerButton;
}

- (UIView)fontSizeButtons
{
  fontSizeButtons = self->_fontSizeButtons;
  if (!fontSizeButtons)
  {
    v58 = [(BEAppearanceViewController *)self theme];
    v4 = [UIView alloc];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v6 = [v4 initWithFrame:{0.0, 0.0, 296.0, v5}];
    v7 = self->_fontSizeButtons;
    self->_fontSizeButtons = v6;

    [(UIView *)self->_fontSizeButtons setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_fontSizeButtons;
    v9 = [(BEAppearanceViewController *)self sizeSmallerButton];
    [(UIView *)v8 addSubview:v9];

    v10 = self->_fontSizeButtons;
    v11 = [(BEAppearanceViewController *)self sizeLargerButton];
    [(UIView *)v10 addSubview:v11];

    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = 1.0 / v13;

    v15 = [UIView alloc];
    [(UIView *)self->_fontSizeButtons frame];
    MidX = CGRectGetMidX(v61);
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v18 = [v15 initWithFrame:{MidX, 0.0, v14, v17 - v14}];
    sizeSeparatorLine = self->_sizeSeparatorLine;
    self->_sizeSeparatorLine = v18;

    v20 = [v58 tableViewSeparatorColor];
    [(UIView *)self->_sizeSeparatorLine setBackgroundColor:v20];

    [(UIView *)self->_sizeSeparatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_fontSizeButtons addSubview:self->_sizeSeparatorLine];
    v57 = [(UIButton *)self->_sizeSmallerButton leadingAnchor];
    v56 = [(UIView *)self->_fontSizeButtons leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v59[0] = v55;
    v54 = [(UIButton *)self->_sizeSmallerButton trailingAnchor];
    v53 = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v59[1] = v52;
    v51 = [(UIButton *)self->_sizeSmallerButton topAnchor];
    v50 = [(UIView *)self->_fontSizeButtons topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v59[2] = v49;
    v48 = [(UIButton *)self->_sizeSmallerButton bottomAnchor];
    v47 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v59[3] = v46;
    v45 = [(UIButton *)self->_sizeLargerButton leadingAnchor];
    v44 = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v59[4] = v43;
    v42 = [(UIButton *)self->_sizeLargerButton trailingAnchor];
    v41 = [(UIView *)self->_fontSizeButtons trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v59[5] = v40;
    v39 = [(UIButton *)self->_sizeLargerButton topAnchor];
    v38 = [(UIView *)self->_fontSizeButtons topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v59[6] = v37;
    v36 = [(UIButton *)self->_sizeLargerButton bottomAnchor];
    v35 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v59[7] = v34;
    v33 = [(UIView *)self->_sizeSeparatorLine topAnchor];
    v32 = [(UIView *)self->_fontSizeButtons topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v59[8] = v31;
    v30 = [(UIView *)self->_sizeSeparatorLine bottomAnchor];
    v21 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v22 = [v30 constraintEqualToAnchor:v21 constant:-v14];
    v59[9] = v22;
    v23 = [(UIView *)self->_sizeSeparatorLine centerXAnchor];
    v24 = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v59[10] = v25;
    v26 = [(UIView *)self->_sizeSeparatorLine widthAnchor];
    v27 = [v26 constraintEqualToConstant:v14];
    v59[11] = v27;
    v28 = [NSArray arrayWithObjects:v59 count:12];
    [NSLayoutConstraint activateConstraints:v28];

    fontSizeButtons = self->_fontSizeButtons;
  }

  return fontSizeButtons;
}

- (UISwitch)scrollSwitch
{
  scrollSwitch = self->_scrollSwitch;
  if (!scrollSwitch)
  {
    v4 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_scrollSwitch;
    self->_scrollSwitch = v4;

    [(UISwitch *)self->_scrollSwitch setPreferredStyle:2];
    [(UISwitch *)self->_scrollSwitch setEnabled:[(BEAppearanceViewController *)self scrollSwitchEnabled]];
    [(UISwitch *)self->_scrollSwitch addTarget:self action:"onScrollSwitch:" forControlEvents:4096];
    [(UISwitch *)self->_scrollSwitch sizeToFit];
    scrollSwitch = self->_scrollSwitch;
  }

  return scrollSwitch;
}

- (void)loadView
{
  v41.receiver = self;
  v41.super_class = BEAppearanceViewController;
  [(BEAppearanceViewController *)&v41 loadView];
  v3 = [UITableView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:1 style:{CGRectZero.origin.x, y, width, height}];
  tableView = self->_tableView;
  self->_tableView = v7;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UITableView *)self->_tableView setTableFooterView:v9];

  v10 = +[UIColor bc_booksBackground];
  [(UITableView *)self->_tableView setBackgroundColor:v10];

  [(UITableView *)self->_tableView _setTopPadding:0.0];
  [(UITableView *)self->_tableView _setBottomPadding:0.0];
  [(UITableView *)self->_tableView setEstimatedSectionHeaderHeight:5.0];
  [(UITableView *)self->_tableView setEstimatedSectionFooterHeight:0.0];
  [(UITableView *)self->_tableView setSectionFooterHeight:0.0];
  v11 = [(BEAppearanceViewController *)self view];
  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrowBackgroundView = self->_arrowBackgroundView;
  self->_arrowBackgroundView = v12;

  [(UIView *)self->_arrowBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:self->_arrowBackgroundView];
  [v11 addSubview:self->_tableView];
  v40 = [(UITableView *)self->_tableView leadingAnchor];
  v39 = [v11 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v37 = [(UITableView *)self->_tableView trailingAnchor];
  v36 = [v11 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v42[1] = v35;
  v33 = [(UITableView *)self->_tableView topAnchor];
  v34 = [v11 safeAreaLayoutGuide];
  v32 = [v34 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v42[2] = v31;
  v29 = [(UITableView *)self->_tableView bottomAnchor];
  v30 = [v11 safeAreaLayoutGuide];
  v28 = [v30 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v42[3] = v27;
  v26 = [(UIView *)self->_arrowBackgroundView topAnchor];
  v25 = [v11 topAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v42[4] = v23;
  v14 = [(UIView *)self->_arrowBackgroundView leadingAnchor];
  v15 = [v11 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v42[5] = v16;
  v17 = [(UIView *)self->_arrowBackgroundView trailingAnchor];
  v18 = [v11 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v42[6] = v19;
  v20 = [(UIView *)self->_arrowBackgroundView bottomAnchor];
  v21 = [(UITableView *)self->_tableView topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v42[7] = v22;
  v24 = [NSArray arrayWithObjects:v42 count:8];

  [v11 addConstraints:v24];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BEAppearanceViewController;
  [(BEAppearanceViewController *)&v5 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[UIScreen mainScreen];
  [v3 addObserver:self selector:"updateBrightness" name:UIScreenBrightnessDidChangeNotification object:v4];

  [(BEAppearanceViewController *)self stylizeForTheme];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BEAppearanceViewController;
  [(BEAppearanceViewController *)&v6 viewWillAppear:a3];
  v4 = [(BEAppearanceViewController *)self ba_analyticsTracker];

  if (!v4)
  {
    v5 = [(BEAppearanceViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSettings"];
  }

  [(BEAppearanceViewController *)self updateBrightness];
}

- (void)stylizeForTheme
{
  v36 = [(BEAppearanceViewController *)self themePage];
  v3 = [v36 keyColor];
  v4 = [(BEAppearanceViewController *)self view];
  [v4 setTintColor:v3];

  v5 = [v36 secondaryGroupedBackgroundColor];
  [(UIView *)self->_arrowBackgroundView setBackgroundColor:v5];

  v6 = [(BEAppearanceViewController *)self brightnessSlider];
  if (v6)
  {
    [v36 stylizeSlider:v6];
    v7 = [UIImage systemImageNamed:@"sun.min.fill"];
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:1 scale:18.0];
    v9 = [v7 imageWithConfiguration:v8];

    v10 = [v36 tertiaryTextColor];
    v11 = [v9 imageMaskWithColor:v10];

    [v6 setMinimumValueImage:v11];
    v12 = [UIImage systemImageNamed:@"sun.max.fill"];
    v13 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:18.0];
    v14 = [v12 imageWithConfiguration:v13];

    v15 = [v36 tertiaryTextColor];
    v16 = [v14 imageMaskWithColor:v15];

    [v6 setMaximumValueImage:v16];
    v17 = [v36 keyColor];
    [v6 setMinimumTrackTintColor:v17];

    v18 = [v36 quarternaryTextColor];
    [v6 setMaximumTrackTintColor:v18];
  }

  v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  v19 = [(BEAppearanceViewController *)self sizeSmallerButton];
  [v36 stylizeButton:v19];
  [v35 pointSize];
  v20 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v21 = [UIImageSymbolConfiguration configurationWithFont:v20 scale:-1];
  v22 = [UIImage systemImageNamed:@"a" withConfiguration:v21];
  [v19 setImage:v22 forState:0];

  v23 = [(BEAppearanceViewController *)self sizeLargerButton];
  [v36 stylizeButton:v23];
  v24 = [UIImageSymbolConfiguration configurationWithFont:v20 scale:3];
  v25 = [UIImage systemImageNamed:@"a" withConfiguration:v24];
  [v23 setImage:v25 forState:0];

  v26 = [(BEAppearanceViewController *)self sizeSeparatorLine];
  v27 = [v36 separatorColor];
  [v26 setBackgroundColor:v27];

  v28 = [v36 groupedBackgroundColor];
  v29 = [(BEAppearanceViewController *)self tableView];
  [v29 setBackgroundColor:v28];

  v30 = [v36 separatorColor];
  v31 = [(BEAppearanceViewController *)self tableView];
  [v31 setSeparatorColor:v30];

  v32 = [(BEAppearanceViewController *)self tableView];
  v33 = [v32 separatorColor];
  v34 = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [v34 setBackgroundColor:v33];
}

- (void)configureHorizontalScrollSwitchCell:(id)a3
{
  v4 = a3;
  v6 = AEBundle();
  v5 = [v6 localizedStringForKey:@"Horizontal Scrolling" value:&stru_1E7188 table:0];
  [(BEAppearanceViewController *)self configureScrollSwitchCell:v4 text:v5];
}

- (void)configureVerticalScrollSwitchCell:(id)a3
{
  v4 = a3;
  v6 = AEBundle();
  v5 = [v6 localizedStringForKey:@"Vertical Scrolling" value:&stru_1E7188 table:0];
  [(BEAppearanceViewController *)self configureScrollSwitchCell:v4 text:v5];
}

- (void)configureScrollSwitchCell:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 textLabel];
  [v8 setText:v6];

  v9 = [v7 textLabel];
  [v9 setAdjustsFontSizeToFitWidth:1];

  v10 = [v7 textLabel];
  [v10 setMinimumScaleFactor:0.5];

  v11 = [(BEAppearanceViewController *)self scrollSwitch];
  [v7 setAccessoryView:v11];
}

- (void)releaseAuxiliaryCachedViews
{
  [(UIButton *)self->_sizeSmallerButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  sizeSmallerButton = self->_sizeSmallerButton;
  self->_sizeSmallerButton = 0;

  [(UIButton *)self->_sizeLargerButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  sizeLargerButton = self->_sizeLargerButton;
  self->_sizeLargerButton = 0;

  sizeSeparatorLine = self->_sizeSeparatorLine;
  self->_sizeSeparatorLine = 0;

  fontSizeButtons = self->_fontSizeButtons;
  self->_fontSizeButtons = 0;

  [(UISlider *)self->_brightnessSlider removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  brightnessSlider = self->_brightnessSlider;
  self->_brightnessSlider = 0;

  scrollSwitch = self->_scrollSwitch;
  self->_scrollSwitch = 0;
}

- (void)releaseViews
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[UIScreen mainScreen];
  [v3 removeObserver:self name:UIScreenBrightnessDidChangeNotification object:v4];

  [(BEAppearanceViewController *)self releaseAuxiliaryCachedViews];
  tableView = self->_tableView;
  self->_tableView = 0;

  v6.receiver = self;
  v6.super_class = BEAppearanceViewController;
  [(BKViewController *)&v6 releaseViews];
}

- (void)changeBrightness:(id)a3 withEvent:(id)a4
{
  v18 = a3;
  v6 = a4;
  [v18 value];
  v8 = v7;
  v9 = v7;
  v10 = +[UIScreen mainScreen];
  [v10 setBrightness:v9];

  v11 = [v6 allTouches];

  v12 = [v11 anyObject];
  v13 = [v12 phase];

  if (v13 == &dword_0 + 3)
  {
    v14 = [(BEAppearanceViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(BEAppearanceViewController *)self delegate];
      *&v17 = v8;
      [v16 appearanceViewController:self brightnessLevelDidChange:v17];
    }
  }
}

- (void)updateBrightness
{
  v3 = +[UIScreen mainScreen];
  [v3 brightness];
  v5 = v4;

  v7 = [(BEAppearanceViewController *)self brightnessSlider];
  *&v6 = v5;
  [v7 setValue:v6];
}

- (void)setScrollSwitchEnabled:(BOOL)a3
{
  self->_scrollSwitchEnabled = a3;
  scrollSwitch = self->_scrollSwitch;
  if (scrollSwitch)
  {
    [(UISwitch *)scrollSwitch setEnabled:?];
  }
}

- (id)tableViewHeaderView
{
  v2 = [(BEAppearanceViewController *)self tableView];
  v3 = [UIView alloc];
  [v2 bounds];
  v4 = [v3 initWithFrame:{0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  v8 = [UIView alloc];
  [v2 bounds];
  v9 = [v8 initWithFrame:{0.0, 0.0}];
  v10 = [v2 separatorColor];
  [v9 setBackgroundColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v9];
  v11 = [UIView alloc];
  [v2 bounds];
  v12 = [v11 initWithFrame:{0.0, 5.0 - v7}];
  v13 = [v2 separatorColor];
  [v12 setBackgroundColor:v13];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v12];

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

- (double)scrollingRowHeight
{
  [(BEAppearanceViewController *)self appearanceRowHeight];
  v3 = v2;
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    if (([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge]& 1) != 0)
    {
      return 175.0;
    }

    else if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge])
    {
      return 145.0;
    }

    else
    {
      return 95.0;
    }
  }

  return v3;
}

- (BEAppearanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end