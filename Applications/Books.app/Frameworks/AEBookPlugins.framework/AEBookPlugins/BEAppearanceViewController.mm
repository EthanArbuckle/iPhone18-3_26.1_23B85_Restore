@interface BEAppearanceViewController
- (BEAppearanceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BEAppearanceViewControllerDelegate)delegate;
- (UIButton)sizeLargerButton;
- (UIButton)sizeSmallerButton;
- (UISlider)brightnessSlider;
- (UISwitch)scrollSwitch;
- (UIView)fontSizeButtons;
- (double)appearanceRowHeight;
- (double)scrollingRowHeight;
- (id)tableViewHeaderView;
- (void)changeBrightness:(id)brightness withEvent:(id)event;
- (void)configureHorizontalScrollSwitchCell:(id)cell;
- (void)configureScrollSwitchCell:(id)cell text:(id)text;
- (void)configureVerticalScrollSwitchCell:(id)cell;
- (void)dealloc;
- (void)loadView;
- (void)releaseAuxiliaryCachedViews;
- (void)releaseViews;
- (void)setScrollSwitchEnabled:(BOOL)enabled;
- (void)stylizeForTheme;
- (void)updateBrightness;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BEAppearanceViewController

- (BEAppearanceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = BEAppearanceViewController;
  v4 = [(BKViewController *)&v9 initWithNibName:name bundle:bundle];
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
    heightAnchor = [(UISlider *)self->_brightnessSlider heightAnchor];
    v13.origin.x = 12.0;
    v13.origin.y = 1.0;
    v13.size.width = 272.0;
    v13.size.height = v4;
    v8 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v13)];
    [v8 setActive:1];

    theme = [(BEAppearanceViewController *)self theme];
    [theme stylizeSlider:self->_brightnessSlider];

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
    theme = [(BEAppearanceViewController *)self theme];
    [theme stylizeButton:self->_sizeSmallerButton];

    theme2 = [(BEAppearanceViewController *)self theme];
    popoverBackgroundColor = [theme2 popoverBackgroundColor];
    v9 = [popoverBackgroundColor colorWithAlphaComponent:0.001];
    [(UIButton *)self->_sizeSmallerButton setBackgroundColor:v9];

    LODWORD(theme2) = [(BEAppearanceViewController *)self _isRTL];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v11 = v10;
    v12 = 0.0;
    if (theme2)
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
    theme = [(BEAppearanceViewController *)self theme];
    popoverBackgroundColor = [theme popoverBackgroundColor];
    v8 = [popoverBackgroundColor colorWithAlphaComponent:0.001];
    [(UIButton *)self->_sizeLargerButton setBackgroundColor:v8];

    theme2 = [(BEAppearanceViewController *)self theme];
    [theme2 stylizeButton:self->_sizeLargerButton];

    LODWORD(theme2) = [(BEAppearanceViewController *)self _isRTL];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v11 = v10;
    v12 = 0.0;
    if (!theme2)
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
    theme = [(BEAppearanceViewController *)self theme];
    v4 = [UIView alloc];
    [(BEAppearanceViewController *)self appearanceRowHeight];
    v6 = [v4 initWithFrame:{0.0, 0.0, 296.0, v5}];
    v7 = self->_fontSizeButtons;
    self->_fontSizeButtons = v6;

    [(UIView *)self->_fontSizeButtons setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_fontSizeButtons;
    sizeSmallerButton = [(BEAppearanceViewController *)self sizeSmallerButton];
    [(UIView *)v8 addSubview:sizeSmallerButton];

    v10 = self->_fontSizeButtons;
    sizeLargerButton = [(BEAppearanceViewController *)self sizeLargerButton];
    [(UIView *)v10 addSubview:sizeLargerButton];

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

    tableViewSeparatorColor = [theme tableViewSeparatorColor];
    [(UIView *)self->_sizeSeparatorLine setBackgroundColor:tableViewSeparatorColor];

    [(UIView *)self->_sizeSeparatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_fontSizeButtons addSubview:self->_sizeSeparatorLine];
    leadingAnchor = [(UIButton *)self->_sizeSmallerButton leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_fontSizeButtons leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[0] = v55;
    trailingAnchor = [(UIButton *)self->_sizeSmallerButton trailingAnchor];
    centerXAnchor = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v52 = [trailingAnchor constraintEqualToAnchor:centerXAnchor];
    v59[1] = v52;
    topAnchor = [(UIButton *)self->_sizeSmallerButton topAnchor];
    topAnchor2 = [(UIView *)self->_fontSizeButtons topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[2] = v49;
    bottomAnchor = [(UIButton *)self->_sizeSmallerButton bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[3] = v46;
    leadingAnchor3 = [(UIButton *)self->_sizeLargerButton leadingAnchor];
    centerXAnchor2 = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor2];
    v59[4] = v43;
    trailingAnchor2 = [(UIButton *)self->_sizeLargerButton trailingAnchor];
    trailingAnchor3 = [(UIView *)self->_fontSizeButtons trailingAnchor];
    v40 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v59[5] = v40;
    topAnchor3 = [(UIButton *)self->_sizeLargerButton topAnchor];
    topAnchor4 = [(UIView *)self->_fontSizeButtons topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v59[6] = v37;
    bottomAnchor3 = [(UIButton *)self->_sizeLargerButton bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v59[7] = v34;
    topAnchor5 = [(UIView *)self->_sizeSeparatorLine topAnchor];
    topAnchor6 = [(UIView *)self->_fontSizeButtons topAnchor];
    v31 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v59[8] = v31;
    bottomAnchor5 = [(UIView *)self->_sizeSeparatorLine bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_fontSizeButtons bottomAnchor];
    v22 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v14];
    v59[9] = v22;
    centerXAnchor3 = [(UIView *)self->_sizeSeparatorLine centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_fontSizeButtons centerXAnchor];
    v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v59[10] = v25;
    widthAnchor = [(UIView *)self->_sizeSeparatorLine widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:v14];
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
  view = [(BEAppearanceViewController *)self view];
  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  arrowBackgroundView = self->_arrowBackgroundView;
  self->_arrowBackgroundView = v12;

  [(UIView *)self->_arrowBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_arrowBackgroundView];
  [view addSubview:self->_tableView];
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v38;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[1] = v35;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v31;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v27;
  topAnchor3 = [(UIView *)self->_arrowBackgroundView topAnchor];
  topAnchor4 = [view topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v42[4] = v23;
  leadingAnchor3 = [(UIView *)self->_arrowBackgroundView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v42[5] = v16;
  trailingAnchor3 = [(UIView *)self->_arrowBackgroundView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v42[6] = v19;
  bottomAnchor3 = [(UIView *)self->_arrowBackgroundView bottomAnchor];
  topAnchor5 = [(UITableView *)self->_tableView topAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v42[7] = v22;
  v24 = [NSArray arrayWithObjects:v42 count:8];

  [view addConstraints:v24];
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BEAppearanceViewController;
  [(BEAppearanceViewController *)&v6 viewWillAppear:appear];
  ba_analyticsTracker = [(BEAppearanceViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v5 = [(BEAppearanceViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSettings"];
  }

  [(BEAppearanceViewController *)self updateBrightness];
}

- (void)stylizeForTheme
{
  themePage = [(BEAppearanceViewController *)self themePage];
  keyColor = [themePage keyColor];
  view = [(BEAppearanceViewController *)self view];
  [view setTintColor:keyColor];

  secondaryGroupedBackgroundColor = [themePage secondaryGroupedBackgroundColor];
  [(UIView *)self->_arrowBackgroundView setBackgroundColor:secondaryGroupedBackgroundColor];

  brightnessSlider = [(BEAppearanceViewController *)self brightnessSlider];
  if (brightnessSlider)
  {
    [themePage stylizeSlider:brightnessSlider];
    v7 = [UIImage systemImageNamed:@"sun.min.fill"];
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:1 scale:18.0];
    v9 = [v7 imageWithConfiguration:v8];

    tertiaryTextColor = [themePage tertiaryTextColor];
    v11 = [v9 imageMaskWithColor:tertiaryTextColor];

    [brightnessSlider setMinimumValueImage:v11];
    v12 = [UIImage systemImageNamed:@"sun.max.fill"];
    v13 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:18.0];
    v14 = [v12 imageWithConfiguration:v13];

    tertiaryTextColor2 = [themePage tertiaryTextColor];
    v16 = [v14 imageMaskWithColor:tertiaryTextColor2];

    [brightnessSlider setMaximumValueImage:v16];
    keyColor2 = [themePage keyColor];
    [brightnessSlider setMinimumTrackTintColor:keyColor2];

    quarternaryTextColor = [themePage quarternaryTextColor];
    [brightnessSlider setMaximumTrackTintColor:quarternaryTextColor];
  }

  v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  sizeSmallerButton = [(BEAppearanceViewController *)self sizeSmallerButton];
  [themePage stylizeButton:sizeSmallerButton];
  [v35 pointSize];
  v20 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v21 = [UIImageSymbolConfiguration configurationWithFont:v20 scale:-1];
  v22 = [UIImage systemImageNamed:@"a" withConfiguration:v21];
  [sizeSmallerButton setImage:v22 forState:0];

  sizeLargerButton = [(BEAppearanceViewController *)self sizeLargerButton];
  [themePage stylizeButton:sizeLargerButton];
  v24 = [UIImageSymbolConfiguration configurationWithFont:v20 scale:3];
  v25 = [UIImage systemImageNamed:@"a" withConfiguration:v24];
  [sizeLargerButton setImage:v25 forState:0];

  sizeSeparatorLine = [(BEAppearanceViewController *)self sizeSeparatorLine];
  separatorColor = [themePage separatorColor];
  [sizeSeparatorLine setBackgroundColor:separatorColor];

  groupedBackgroundColor = [themePage groupedBackgroundColor];
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView setBackgroundColor:groupedBackgroundColor];

  separatorColor2 = [themePage separatorColor];
  tableView2 = [(BEAppearanceViewController *)self tableView];
  [tableView2 setSeparatorColor:separatorColor2];

  tableView3 = [(BEAppearanceViewController *)self tableView];
  separatorColor3 = [tableView3 separatorColor];
  sizeSeparatorLine2 = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [sizeSeparatorLine2 setBackgroundColor:separatorColor3];
}

- (void)configureHorizontalScrollSwitchCell:(id)cell
{
  cellCopy = cell;
  v6 = AEBundle();
  v5 = [v6 localizedStringForKey:@"Horizontal Scrolling" value:&stru_1E7188 table:0];
  [(BEAppearanceViewController *)self configureScrollSwitchCell:cellCopy text:v5];
}

- (void)configureVerticalScrollSwitchCell:(id)cell
{
  cellCopy = cell;
  v6 = AEBundle();
  v5 = [v6 localizedStringForKey:@"Vertical Scrolling" value:&stru_1E7188 table:0];
  [(BEAppearanceViewController *)self configureScrollSwitchCell:cellCopy text:v5];
}

- (void)configureScrollSwitchCell:(id)cell text:(id)text
{
  textCopy = text;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  [textLabel setText:textCopy];

  textLabel2 = [cellCopy textLabel];
  [textLabel2 setAdjustsFontSizeToFitWidth:1];

  textLabel3 = [cellCopy textLabel];
  [textLabel3 setMinimumScaleFactor:0.5];

  scrollSwitch = [(BEAppearanceViewController *)self scrollSwitch];
  [cellCopy setAccessoryView:scrollSwitch];
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

- (void)changeBrightness:(id)brightness withEvent:(id)event
{
  brightnessCopy = brightness;
  eventCopy = event;
  [brightnessCopy value];
  v8 = v7;
  v9 = v7;
  v10 = +[UIScreen mainScreen];
  [v10 setBrightness:v9];

  allTouches = [eventCopy allTouches];

  anyObject = [allTouches anyObject];
  phase = [anyObject phase];

  if (phase == &dword_0 + 3)
  {
    delegate = [(BEAppearanceViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(BEAppearanceViewController *)self delegate];
      *&v17 = v8;
      [delegate2 appearanceViewController:self brightnessLevelDidChange:v17];
    }
  }
}

- (void)updateBrightness
{
  v3 = +[UIScreen mainScreen];
  [v3 brightness];
  v5 = v4;

  brightnessSlider = [(BEAppearanceViewController *)self brightnessSlider];
  *&v6 = v5;
  [brightnessSlider setValue:v6];
}

- (void)setScrollSwitchEnabled:(BOOL)enabled
{
  self->_scrollSwitchEnabled = enabled;
  scrollSwitch = self->_scrollSwitch;
  if (scrollSwitch)
  {
    [(UISwitch *)scrollSwitch setEnabled:?];
  }
}

- (id)tableViewHeaderView
{
  tableView = [(BEAppearanceViewController *)self tableView];
  v3 = [UIView alloc];
  [tableView bounds];
  v4 = [v3 initWithFrame:{0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = 1.0 / v6;

  v8 = [UIView alloc];
  [tableView bounds];
  v9 = [v8 initWithFrame:{0.0, 0.0}];
  separatorColor = [tableView separatorColor];
  [v9 setBackgroundColor:separatorColor];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v9];
  v11 = [UIView alloc];
  [tableView bounds];
  v12 = [v11 initWithFrame:{0.0, 5.0 - v7}];
  separatorColor2 = [tableView separatorColor];
  [v12 setBackgroundColor:separatorColor2];

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