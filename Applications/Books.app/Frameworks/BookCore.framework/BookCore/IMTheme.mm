@interface IMTheme
+ (BOOL)isAutoNightModeEnabled;
+ (IMTheme)themeWithIdentifier:(id)identifier;
+ (id)_themeForIdentifier:(id)identifier;
+ (void)initialize;
+ (void)setAutoNightModeEnabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (IMTheme)init;
- (NSString)identifier;
- (UIColor)appearancePopoverBackgroundColor;
- (UIColor)linkActiveColor;
- (UIColor)linkVisitedColor;
- (UIColor)popoverControlColor;
- (UIColor)searchPopoverTextColor;
- (UIColor)searchPopoverTintColor;
- (id)compositingFilter;
- (void)stylizeBCNavigationBar:(id)bar;
- (void)stylizeBCNavigationBarTranslucent:(id)translucent;
- (void)stylizeBCNavigationBarTransparent:(id)transparent;
- (void)stylizeBCToolbar:(id)toolbar;
- (void)stylizeBCToolbarTranslucent:(id)translucent;
- (void)stylizeBarButtonItemDelete:(id)delete;
- (void)stylizeButton:(id)button;
- (void)stylizeKeyboard:(id)keyboard;
- (void)stylizeMenuTableViewCell:(id)cell;
- (void)stylizeNavigationController:(id)controller;
- (void)stylizeOuterView:(id)view;
- (void)stylizeScrollView:(id)view;
- (void)stylizeSlider:(id)slider;
- (void)stylizeTableView:(id)view;
- (void)stylizeTableViewCell:(id)cell;
- (void)stylizeToolbarButtonDelete:(id)delete;
@end

@implementation IMTheme

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = @"BKFlowingBookViewControllerAutoNightModeOnKey";
    v5 = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

+ (BOOL)isAutoNightModeEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKFlowingBookViewControllerAutoNightModeOnKey"];

  return v3;
}

+ (void)setAutoNightModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:enabledCopy forKey:@"BKFlowingBookViewControllerAutoNightModeOnKey"];
}

- (IMTheme)init
{
  v27.receiver = self;
  v27.super_class = IMTheme;
  v2 = [(IMTheme *)&v27 init];
  if (v2)
  {
    v3 = +[UIColor systemBlueColor];
    [(IMTheme *)v2 setTintColor:v3];

    [(IMTheme *)v2 setShouldInvertContent:0];
    [(IMTheme *)v2 setOverlayContentBackgroundColor:0];
    [(IMTheme *)v2 setAnnotationBlendMode:1];
    [(IMTheme *)v2 setHighlightedAnnotationBlendMode:3];
    [(IMTheme *)v2 setAnnotationPageTheme:4];
    [(IMTheme *)v2 setTextHighlightType:3];
    v4 = +[UIColor darkGrayColor];
    [(IMTheme *)v2 setHeaderTextColor:v4];

    v5 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightLight];
    [(IMTheme *)v2 setButtonTitleFont:v5];

    v6 = [UIColor colorWithWhite:0.678431373 alpha:1.0];
    [(IMTheme *)v2 setButtonTitleColorDisabled:v6];

    v7 = +[UIColor blackColor];
    [(IMTheme *)v2 setContentTextColor:v7];

    v8 = [UIFont systemFontOfSize:21.0];
    [(IMTheme *)v2 setMenuTitleFont:v8];

    v9 = +[UIColor tableCellBlueTextColor];
    [(IMTheme *)v2 setMenuTitleColor:v9];

    v10 = [UIColor colorWithWhite:0.7 alpha:1.0];
    [(IMTheme *)v2 setDividerColor:v10];

    v11 = +[UIColor blackColor];
    [(IMTheme *)v2 setToolbarTitleColor:v11];

    v12 = +[UIColor whiteColor];
    [(IMTheme *)v2 setPopoverBackgroundColor:v12];

    v13 = +[UIColor bc_booksSecondaryLabelColor];
    [(IMTheme *)v2 setBookmarkPageNumberColor:v13];

    v14 = +[UIColor bc_booksLabelColor];
    [(IMTheme *)v2 setBookmarkLabelColor:v14];

    v15 = +[UIColor whiteColor];
    [(IMTheme *)v2 setTableViewBackgroundColor:v15];

    v16 = +[UIColor systemGroupedBackgroundColor];
    [(IMTheme *)v2 setGroupTableViewBackgroundColor:v16];

    v17 = +[UIColor tableSeparatorLightColor];
    [(IMTheme *)v2 setTableViewSeparatorColor:v17];

    v18 = +[UIColor whiteColor];
    [(IMTheme *)v2 setTableViewCellBackgroundColor:v18];

    v19 = +[UIColor bc_booksTableSelectionColor];
    [(IMTheme *)v2 setTableViewCellSelectedColor:v19];

    v20 = [UIColor colorWithWhite:0.941176471 alpha:1.0];
    [(IMTheme *)v2 setTableViewHeaderViewColor:v20];

    v21 = [UIColor colorWithWhite:0.941176471 alpha:1.0];
    [(IMTheme *)v2 setTableViewToolbarColor:v21];

    v22 = [UIColor colorWithWhite:0.6 alpha:1.0];
    [(IMTheme *)v2 setTocPageNumberTextColor:v22];

    v23 = +[UIColor blackColor];
    [(IMTheme *)v2 setKeyColor:v23];

    v24 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.45];
    [(IMTheme *)v2 setSystemGrayColor:v24];

    v25 = [UIColor colorWithRed:0.294117647 green:0.0 blue:0.509803922 alpha:1.0];
    [(IMTheme *)v2 setLinkColor:v25];

    [(IMTheme *)v2 setPageTurnSpineAlpha:1.0];
    [(IMTheme *)v2 setTableViewToolbarTranslucent:1];
    [(IMTheme *)v2 setTextHighlightType:4];
    [(IMTheme *)v2 setKeyboardAppearance:0];
    [(IMTheme *)v2 setContentStatusBarStyle:0];
    [(IMTheme *)v2 setGaijiImageFilter:0];
    [(IMTheme *)v2 setSpeakScreenHighlightColor:0];
    [(IMTheme *)v2 setSpeakScreenUnderlineColor:0];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    themeIdentifier = [(IMTheme *)self themeIdentifier];
    themeIdentifier2 = [v5 themeIdentifier];
    v8 = [themeIdentifier isEqual:themeIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_themeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:kIMThemeIdentifierBookshelfTheme[0]])
  {
    v4 = off_2C6058;
LABEL_19:
    v5 = objc_alloc_init(*v4);
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierBookshelfNightTheme[0]])
  {
    v4 = off_2C6060;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierDefaultPageTheme[0]])
  {
    v4 = off_2C6068;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierWhitePageTheme[0]])
  {
    v4 = &off_2C6090;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierSepiaPageTheme[0]])
  {
    v4 = off_2C6088;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierGrayPageTheme[0]])
  {
    v4 = off_2C6078;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierNightPageTheme[0]])
  {
    v4 = off_2C6080;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierBlissClassicTheme[0]])
  {
    v4 = off_2C6050;
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:kIMThemeIdentifierDynamicTheme[0]])
  {
    v4 = off_2C6070;
    goto LABEL_19;
  }

  v5 = 0;
LABEL_20:
  [v5 setThemeIdentifier:identifierCopy];

  return v5;
}

+ (IMTheme)themeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_346210 != -1)
  {
    sub_1EDAC4();
  }

  v5 = [qword_346208 objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v5 = [self _themeForIdentifier:identifierCopy];
    [qword_346208 setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)stylizeOuterView:(id)view
{
  viewCopy = view;
  tintColor = [(IMTheme *)self tintColor];
  [viewCopy setTintColor:tintColor];
}

- (void)stylizeButton:(id)button
{
  buttonCopy = button;
  buttonTitleFont = [(IMTheme *)self buttonTitleFont];

  if (buttonTitleFont)
  {
    buttonTitleFont2 = [(IMTheme *)self buttonTitleFont];
    titleLabel = [buttonCopy titleLabel];
    [titleLabel setFont:buttonTitleFont2];
  }

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    keyColor = [v7 keyColor];
    [buttonCopy setTitleColor:keyColor forState:0];

    keyColor2 = [v8 keyColor];
    v11 = [keyColor2 colorWithAlphaComponent:0.7];
    [buttonCopy setTitleColor:v11 forState:1];

    quarternaryTextColor = [v8 quarternaryTextColor];
    [buttonCopy setTitleColor:quarternaryTextColor forState:2];

    keyColor3 = [v8 keyColor];
    [buttonCopy _setImageColor:keyColor3 forState:0];

    keyColor4 = [v8 keyColor];
    v15 = [keyColor4 colorWithAlphaComponent:0.7];
    [buttonCopy _setImageColor:v15 forState:1];

    quarternaryTextColor2 = [v8 quarternaryTextColor];
LABEL_9:
    v24 = quarternaryTextColor2;
    [buttonCopy _setImageColor:quarternaryTextColor2 forState:2];

    goto LABEL_10;
  }

  buttonTitleColor = [(IMTheme *)self buttonTitleColor];

  if (buttonTitleColor)
  {
    buttonTitleColor2 = [(IMTheme *)self buttonTitleColor];
    [buttonCopy setTitleColor:buttonTitleColor2 forState:0];

    buttonTitleColor3 = [(IMTheme *)self buttonTitleColor];
    [buttonCopy setTitleColor:buttonTitleColor3 forState:1];

    buttonTitleColor4 = [(IMTheme *)self buttonTitleColor];
    [buttonCopy _setImageColor:buttonTitleColor4 forState:0];

    buttonTitleColor5 = [(IMTheme *)self buttonTitleColor];
    [buttonCopy _setImageColor:buttonTitleColor5 forState:1];
  }

  buttonTitleColorDisabled = [(IMTheme *)self buttonTitleColorDisabled];

  if (buttonTitleColorDisabled)
  {
    buttonTitleColorDisabled2 = [(IMTheme *)self buttonTitleColorDisabled];
    [buttonCopy setTitleColor:buttonTitleColorDisabled2 forState:2];

    quarternaryTextColor2 = [(IMTheme *)self buttonTitleColorDisabled];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)stylizeBCNavigationBar:(id)bar
{
  barCopy = bar;
  [barCopy setBarStyle:0];
  [barCopy setTranslucent:0];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:barCopy];
  [barCopy setBarTintColor:v4];

  keyColor = [(IMTheme *)self keyColor];
  [barCopy setTintColor:keyColor];

  [barCopy setSeparatorsVisible:1];
  [barCopy setBackgroundHidden:0];
  [barCopy setBackgroundImage:0 forBarPosition:0 barMetrics:0];
}

- (void)stylizeBCNavigationBarTranslucent:(id)translucent
{
  translucentCopy = translucent;
  [translucentCopy setBarStyle:0];
  [translucentCopy setTranslucent:1];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:translucentCopy];
  [translucentCopy setBarTintColor:v4];

  keyColor = [(IMTheme *)self keyColor];
  [translucentCopy setTintColor:keyColor];

  [translucentCopy setSeparatorsVisible:1];
  [translucentCopy setBackgroundHidden:0];
  [translucentCopy setBackgroundImage:0 forBarPosition:0 barMetrics:0];
}

- (void)stylizeBCNavigationBarTransparent:(id)transparent
{
  transparentCopy = transparent;
  [(IMTheme *)self stylizeBCNavigationBar:transparentCopy];
  [transparentCopy setSeparatorsVisible:0];
  v5 = +[UIColor clearColor];
  [transparentCopy setBarTintColor:v5];

  v6 = +[UIColor clearColor];
  [transparentCopy setBackgroundColor:v6];

  v7 = objc_alloc_init(UINavigationBarAppearance);
  [v7 configureWithTransparentBackground];
  [transparentCopy setStandardAppearance:v7];
}

- (void)stylizeBCToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  [toolbarCopy setBarStyle:0];
  [toolbarCopy setTranslucent:0];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:toolbarCopy];
  [toolbarCopy setBarTintColor:v4];

  keyColor = [(IMTheme *)self keyColor];
  [toolbarCopy setTintColor:keyColor];

  [toolbarCopy setSeparatorsVisible:1];
  [toolbarCopy setBackgroundImage:0 forToolbarPosition:0 barMetrics:0];
}

- (void)stylizeBCToolbarTranslucent:(id)translucent
{
  translucentCopy = translucent;
  [translucentCopy setBarStyle:0];
  [translucentCopy setTranslucent:1];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:translucentCopy];
  [translucentCopy setBarTintColor:v4];

  keyColor = [(IMTheme *)self keyColor];
  [translucentCopy setTintColor:keyColor];

  [translucentCopy setSeparatorsVisible:1];
  [translucentCopy setBackgroundImage:0 forToolbarPosition:0 barMetrics:0];
}

- (void)stylizeToolbarButtonDelete:(id)delete
{
  deleteCopy = delete;
  v4 = +[UIColor systemRedColor];
  [deleteCopy setTintColor:v4];
}

- (void)stylizeBarButtonItemDelete:(id)delete
{
  deleteCopy = delete;
  v4 = +[UIColor systemRedColor];
  [deleteCopy setTintColor:v4];
}

- (void)stylizeKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  keyboardAppearance = [keyboardCopy keyboardAppearance];
  if (keyboardAppearance != [(IMTheme *)self keyboardAppearance])
  {
    [keyboardCopy setKeyboardAppearance:{-[IMTheme keyboardAppearance](self, "keyboardAppearance")}];
    objc_opt_class();
    v5 = BUDynamicCast();
    [v5 reloadInputViews];
  }
}

- (UIColor)popoverControlColor
{
  headerTextColor = self->_popoverControlColor;
  if (!headerTextColor)
  {
    headerTextColor = [(IMTheme *)self headerTextColor];
  }

  return headerTextColor;
}

- (UIColor)appearancePopoverBackgroundColor
{
  groupTableViewBackgroundColor = self->_appearancePopoverBackgroundColor;
  if (!groupTableViewBackgroundColor)
  {
    groupTableViewBackgroundColor = [(IMTheme *)self groupTableViewBackgroundColor];
  }

  return groupTableViewBackgroundColor;
}

- (UIColor)searchPopoverTextColor
{
  headerTextColor = self->_searchPopoverTextColor;
  if (!headerTextColor)
  {
    headerTextColor = [(IMTheme *)self headerTextColor];
  }

  return headerTextColor;
}

- (UIColor)searchPopoverTintColor
{
  tintColor = self->_searchPopoverTintColor;
  if (!tintColor)
  {
    tintColor = [(IMTheme *)self tintColor];
  }

  return tintColor;
}

- (UIColor)linkVisitedColor
{
  linkColor = self->_linkVisitedColor;
  if (!linkColor)
  {
    linkColor = [(IMTheme *)self linkColor];
  }

  return linkColor;
}

- (UIColor)linkActiveColor
{
  linkColor = self->_linkActiveColor;
  if (!linkColor)
  {
    linkColor = [(IMTheme *)self linkColor];
  }

  return linkColor;
}

- (void)stylizeNavigationController:(id)controller
{
  controllerCopy = controller;
  tintColor = [(IMTheme *)self tintColor];
  view = [controllerCopy view];
  [view setTintColor:tintColor];

  buttonTitleColor = [(IMTheme *)self buttonTitleColor];

  if (buttonTitleColor)
  {
    v11 = NSForegroundColorAttributeName;
    buttonTitleColor2 = [(IMTheme *)self buttonTitleColor];
    v12 = buttonTitleColor2;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    navigationBar = [controllerCopy navigationBar];
    [navigationBar setTitleTextAttributes:v9];
  }
}

- (void)stylizeTableViewCell:(id)cell
{
  cellCopy = cell;
  tableViewCellBackgroundColor = [(IMTheme *)self tableViewCellBackgroundColor];
  [cellCopy setBackgroundColor:tableViewCellBackgroundColor];

  buttonTitleFont = [(IMTheme *)self buttonTitleFont];
  textLabel = [cellCopy textLabel];
  [textLabel setFont:buttonTitleFont];

  contentTextColor = [(IMTheme *)self contentTextColor];
  textLabel2 = [cellCopy textLabel];
  [textLabel2 setTextColor:contentTextColor];

  selectedBackgroundView = [cellCopy selectedBackgroundView];
  v10 = [selectedBackgroundView tag];

  if (v10 != &loc_11E74 + 2)
  {
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [cellCopy setSelectedBackgroundView:v11];

    selectedBackgroundView2 = [cellCopy selectedBackgroundView];
    [selectedBackgroundView2 setTag:73334];
  }

  tableViewCellSelectedColor = [(IMTheme *)self tableViewCellSelectedColor];
  selectedBackgroundView3 = [cellCopy selectedBackgroundView];
  [selectedBackgroundView3 setBackgroundColor:tableViewCellSelectedColor];
}

- (void)stylizeMenuTableViewCell:(id)cell
{
  cellCopy = cell;
  tableViewCellBackgroundColor = [(IMTheme *)self tableViewCellBackgroundColor];
  [cellCopy setBackgroundColor:tableViewCellBackgroundColor];

  menuTitleFont = [(IMTheme *)self menuTitleFont];
  textLabel = [cellCopy textLabel];
  [textLabel setFont:menuTitleFont];

  menuTitleColor = [(IMTheme *)self menuTitleColor];
  textLabel2 = [cellCopy textLabel];
  [textLabel2 setTextColor:menuTitleColor];

  selectedBackgroundView = [cellCopy selectedBackgroundView];
  v10 = [selectedBackgroundView tag];

  if (v10 != &loc_11E74 + 2)
  {
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [cellCopy setSelectedBackgroundView:v11];

    selectedBackgroundView2 = [cellCopy selectedBackgroundView];
    [selectedBackgroundView2 setTag:73334];
  }

  tableViewCellSelectedColor = [(IMTheme *)self tableViewCellSelectedColor];
  selectedBackgroundView3 = [cellCopy selectedBackgroundView];
  [selectedBackgroundView3 setBackgroundColor:tableViewCellSelectedColor];
}

- (void)stylizeTableView:(id)view
{
  viewCopy = view;
  if ([viewCopy style] == &dword_0 + 1)
  {
    [(IMTheme *)self groupTableViewBackgroundColor];
  }

  else
  {
    [(IMTheme *)self tableViewBackgroundColor];
  }
  v4 = ;
  [viewCopy setBackgroundColor:v4];

  tableViewSeparatorColor = [(IMTheme *)self tableViewSeparatorColor];
  [viewCopy setSeparatorColor:tableViewSeparatorColor];
}

- (void)stylizeSlider:(id)slider
{
  sliderCopy = slider;
  v4 = +[UIColor clearColor];
  [sliderCopy setBackgroundColor:v4];

  [(IMTheme *)self sliderAlpha];
  v6 = v5;
  v7 = 1.0;
  if (v6 != 0.0)
  {
    [(IMTheme *)self sliderAlpha];
  }

  [sliderCopy setAlpha:v7];
}

- (void)stylizeScrollView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v3 = BUDynamicCast();
  v4 = v3;
  if (v3)
  {
    if ([v3 userInterfaceStyle] == &dword_0 + 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [viewCopy setIndicatorStyle:v5];
  }
}

- (id)compositingFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_compositingFilter);

  return WeakRetained;
}

@end