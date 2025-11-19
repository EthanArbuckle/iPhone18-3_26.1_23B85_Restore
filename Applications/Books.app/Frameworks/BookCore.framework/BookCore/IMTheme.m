@interface IMTheme
+ (BOOL)isAutoNightModeEnabled;
+ (IMTheme)themeWithIdentifier:(id)a3;
+ (id)_themeForIdentifier:(id)a3;
+ (void)initialize;
+ (void)setAutoNightModeEnabled:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (IMTheme)init;
- (NSString)identifier;
- (UIColor)appearancePopoverBackgroundColor;
- (UIColor)linkActiveColor;
- (UIColor)linkVisitedColor;
- (UIColor)popoverControlColor;
- (UIColor)searchPopoverTextColor;
- (UIColor)searchPopoverTintColor;
- (id)compositingFilter;
- (void)stylizeBCNavigationBar:(id)a3;
- (void)stylizeBCNavigationBarTranslucent:(id)a3;
- (void)stylizeBCNavigationBarTransparent:(id)a3;
- (void)stylizeBCToolbar:(id)a3;
- (void)stylizeBCToolbarTranslucent:(id)a3;
- (void)stylizeBarButtonItemDelete:(id)a3;
- (void)stylizeButton:(id)a3;
- (void)stylizeKeyboard:(id)a3;
- (void)stylizeMenuTableViewCell:(id)a3;
- (void)stylizeNavigationController:(id)a3;
- (void)stylizeOuterView:(id)a3;
- (void)stylizeScrollView:(id)a3;
- (void)stylizeSlider:(id)a3;
- (void)stylizeTableView:(id)a3;
- (void)stylizeTableViewCell:(id)a3;
- (void)stylizeToolbarButtonDelete:(id)a3;
@end

@implementation IMTheme

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (void)setAutoNightModeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:v3 forKey:@"BKFlowingBookViewControllerAutoNightModeOnKey"];
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(IMTheme *)self themeIdentifier];
    v7 = [v5 themeIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_themeForIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kIMThemeIdentifierBookshelfTheme[0]])
  {
    v4 = off_2C6058;
LABEL_19:
    v5 = objc_alloc_init(*v4);
    goto LABEL_20;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierBookshelfNightTheme[0]])
  {
    v4 = off_2C6060;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierDefaultPageTheme[0]])
  {
    v4 = off_2C6068;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierWhitePageTheme[0]])
  {
    v4 = &off_2C6090;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierSepiaPageTheme[0]])
  {
    v4 = off_2C6088;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierGrayPageTheme[0]])
  {
    v4 = off_2C6078;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierNightPageTheme[0]])
  {
    v4 = off_2C6080;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierBlissClassicTheme[0]])
  {
    v4 = off_2C6050;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:kIMThemeIdentifierDynamicTheme[0]])
  {
    v4 = off_2C6070;
    goto LABEL_19;
  }

  v5 = 0;
LABEL_20:
  [v5 setThemeIdentifier:v3];

  return v5;
}

+ (IMTheme)themeWithIdentifier:(id)a3
{
  v4 = a3;
  if (qword_346210 != -1)
  {
    sub_1EDAC4();
  }

  v5 = [qword_346208 objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [a1 _themeForIdentifier:v4];
    [qword_346208 setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)stylizeOuterView:(id)a3
{
  v4 = a3;
  v5 = [(IMTheme *)self tintColor];
  [v4 setTintColor:v5];
}

- (void)stylizeButton:(id)a3
{
  v25 = a3;
  v4 = [(IMTheme *)self buttonTitleFont];

  if (v4)
  {
    v5 = [(IMTheme *)self buttonTitleFont];
    v6 = [v25 titleLabel];
    [v6 setFont:v5];
  }

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 keyColor];
    [v25 setTitleColor:v9 forState:0];

    v10 = [v8 keyColor];
    v11 = [v10 colorWithAlphaComponent:0.7];
    [v25 setTitleColor:v11 forState:1];

    v12 = [v8 quarternaryTextColor];
    [v25 setTitleColor:v12 forState:2];

    v13 = [v8 keyColor];
    [v25 _setImageColor:v13 forState:0];

    v14 = [v8 keyColor];
    v15 = [v14 colorWithAlphaComponent:0.7];
    [v25 _setImageColor:v15 forState:1];

    v16 = [v8 quarternaryTextColor];
LABEL_9:
    v24 = v16;
    [v25 _setImageColor:v16 forState:2];

    goto LABEL_10;
  }

  v17 = [(IMTheme *)self buttonTitleColor];

  if (v17)
  {
    v18 = [(IMTheme *)self buttonTitleColor];
    [v25 setTitleColor:v18 forState:0];

    v19 = [(IMTheme *)self buttonTitleColor];
    [v25 setTitleColor:v19 forState:1];

    v20 = [(IMTheme *)self buttonTitleColor];
    [v25 _setImageColor:v20 forState:0];

    v21 = [(IMTheme *)self buttonTitleColor];
    [v25 _setImageColor:v21 forState:1];
  }

  v22 = [(IMTheme *)self buttonTitleColorDisabled];

  if (v22)
  {
    v23 = [(IMTheme *)self buttonTitleColorDisabled];
    [v25 setTitleColor:v23 forState:2];

    v16 = [(IMTheme *)self buttonTitleColorDisabled];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)stylizeBCNavigationBar:(id)a3
{
  v6 = a3;
  [v6 setBarStyle:0];
  [v6 setTranslucent:0];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:v6];
  [v6 setBarTintColor:v4];

  v5 = [(IMTheme *)self keyColor];
  [v6 setTintColor:v5];

  [v6 setSeparatorsVisible:1];
  [v6 setBackgroundHidden:0];
  [v6 setBackgroundImage:0 forBarPosition:0 barMetrics:0];
}

- (void)stylizeBCNavigationBarTranslucent:(id)a3
{
  v6 = a3;
  [v6 setBarStyle:0];
  [v6 setTranslucent:1];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:v6];
  [v6 setBarTintColor:v4];

  v5 = [(IMTheme *)self keyColor];
  [v6 setTintColor:v5];

  [v6 setSeparatorsVisible:1];
  [v6 setBackgroundHidden:0];
  [v6 setBackgroundImage:0 forBarPosition:0 barMetrics:0];
}

- (void)stylizeBCNavigationBarTransparent:(id)a3
{
  v4 = a3;
  [(IMTheme *)self stylizeBCNavigationBar:v4];
  [v4 setSeparatorsVisible:0];
  v5 = +[UIColor clearColor];
  [v4 setBarTintColor:v5];

  v6 = +[UIColor clearColor];
  [v4 setBackgroundColor:v6];

  v7 = objc_alloc_init(UINavigationBarAppearance);
  [v7 configureWithTransparentBackground];
  [v4 setStandardAppearance:v7];
}

- (void)stylizeBCToolbar:(id)a3
{
  v6 = a3;
  [v6 setBarStyle:0];
  [v6 setTranslucent:0];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:v6];
  [v6 setBarTintColor:v4];

  v5 = [(IMTheme *)self keyColor];
  [v6 setTintColor:v5];

  [v6 setSeparatorsVisible:1];
  [v6 setBackgroundImage:0 forToolbarPosition:0 barMetrics:0];
}

- (void)stylizeBCToolbarTranslucent:(id)a3
{
  v6 = a3;
  [v6 setBarStyle:0];
  [v6 setTranslucent:1];
  v4 = [(IMTheme *)self backgroundColorForTraitEnvironment:v6];
  [v6 setBarTintColor:v4];

  v5 = [(IMTheme *)self keyColor];
  [v6 setTintColor:v5];

  [v6 setSeparatorsVisible:1];
  [v6 setBackgroundImage:0 forToolbarPosition:0 barMetrics:0];
}

- (void)stylizeToolbarButtonDelete:(id)a3
{
  v3 = a3;
  v4 = +[UIColor systemRedColor];
  [v3 setTintColor:v4];
}

- (void)stylizeBarButtonItemDelete:(id)a3
{
  v3 = a3;
  v4 = +[UIColor systemRedColor];
  [v3 setTintColor:v4];
}

- (void)stylizeKeyboard:(id)a3
{
  v6 = a3;
  v4 = [v6 keyboardAppearance];
  if (v4 != [(IMTheme *)self keyboardAppearance])
  {
    [v6 setKeyboardAppearance:{-[IMTheme keyboardAppearance](self, "keyboardAppearance")}];
    objc_opt_class();
    v5 = BUDynamicCast();
    [v5 reloadInputViews];
  }
}

- (UIColor)popoverControlColor
{
  v3 = self->_popoverControlColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self headerTextColor];
  }

  return v3;
}

- (UIColor)appearancePopoverBackgroundColor
{
  v3 = self->_appearancePopoverBackgroundColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self groupTableViewBackgroundColor];
  }

  return v3;
}

- (UIColor)searchPopoverTextColor
{
  v3 = self->_searchPopoverTextColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self headerTextColor];
  }

  return v3;
}

- (UIColor)searchPopoverTintColor
{
  v3 = self->_searchPopoverTintColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self tintColor];
  }

  return v3;
}

- (UIColor)linkVisitedColor
{
  v3 = self->_linkVisitedColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self linkColor];
  }

  return v3;
}

- (UIColor)linkActiveColor
{
  v3 = self->_linkActiveColor;
  if (!v3)
  {
    v3 = [(IMTheme *)self linkColor];
  }

  return v3;
}

- (void)stylizeNavigationController:(id)a3
{
  v4 = a3;
  v5 = [(IMTheme *)self tintColor];
  v6 = [v4 view];
  [v6 setTintColor:v5];

  v7 = [(IMTheme *)self buttonTitleColor];

  if (v7)
  {
    v11 = NSForegroundColorAttributeName;
    v8 = [(IMTheme *)self buttonTitleColor];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [v4 navigationBar];
    [v10 setTitleTextAttributes:v9];
  }
}

- (void)stylizeTableViewCell:(id)a3
{
  v15 = a3;
  v4 = [(IMTheme *)self tableViewCellBackgroundColor];
  [v15 setBackgroundColor:v4];

  v5 = [(IMTheme *)self buttonTitleFont];
  v6 = [v15 textLabel];
  [v6 setFont:v5];

  v7 = [(IMTheme *)self contentTextColor];
  v8 = [v15 textLabel];
  [v8 setTextColor:v7];

  v9 = [v15 selectedBackgroundView];
  v10 = [v9 tag];

  if (v10 != &loc_11E74 + 2)
  {
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v15 setSelectedBackgroundView:v11];

    v12 = [v15 selectedBackgroundView];
    [v12 setTag:73334];
  }

  v13 = [(IMTheme *)self tableViewCellSelectedColor];
  v14 = [v15 selectedBackgroundView];
  [v14 setBackgroundColor:v13];
}

- (void)stylizeMenuTableViewCell:(id)a3
{
  v15 = a3;
  v4 = [(IMTheme *)self tableViewCellBackgroundColor];
  [v15 setBackgroundColor:v4];

  v5 = [(IMTheme *)self menuTitleFont];
  v6 = [v15 textLabel];
  [v6 setFont:v5];

  v7 = [(IMTheme *)self menuTitleColor];
  v8 = [v15 textLabel];
  [v8 setTextColor:v7];

  v9 = [v15 selectedBackgroundView];
  v10 = [v9 tag];

  if (v10 != &loc_11E74 + 2)
  {
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v15 setSelectedBackgroundView:v11];

    v12 = [v15 selectedBackgroundView];
    [v12 setTag:73334];
  }

  v13 = [(IMTheme *)self tableViewCellSelectedColor];
  v14 = [v15 selectedBackgroundView];
  [v14 setBackgroundColor:v13];
}

- (void)stylizeTableView:(id)a3
{
  v6 = a3;
  if ([v6 style] == &dword_0 + 1)
  {
    [(IMTheme *)self groupTableViewBackgroundColor];
  }

  else
  {
    [(IMTheme *)self tableViewBackgroundColor];
  }
  v4 = ;
  [v6 setBackgroundColor:v4];

  v5 = [(IMTheme *)self tableViewSeparatorColor];
  [v6 setSeparatorColor:v5];
}

- (void)stylizeSlider:(id)a3
{
  v8 = a3;
  v4 = +[UIColor clearColor];
  [v8 setBackgroundColor:v4];

  [(IMTheme *)self sliderAlpha];
  v6 = v5;
  v7 = 1.0;
  if (v6 != 0.0)
  {
    [(IMTheme *)self sliderAlpha];
  }

  [v8 setAlpha:v7];
}

- (void)stylizeScrollView:(id)a3
{
  v6 = a3;
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

    [v6 setIndicatorStyle:v5];
  }
}

- (id)compositingFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_compositingFilter);

  return WeakRetained;
}

@end