@interface IMThemeBookshelf
- (IMThemeBookshelf)init;
- (void)stylizeSegmentedControl:(id)control;
@end

@implementation IMThemeBookshelf

- (IMThemeBookshelf)init
{
  v40.receiver = self;
  v40.super_class = IMThemeBookshelf;
  v2 = [(IMTheme *)&v40 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setCompositingFilter:kCAFilterPlusD];
    v4 = [UIColor colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    [(IMTheme *)v3 setTintColor:v4];

    v5 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [(IMTheme *)v3 setToolbarTitleColor:v5];

    [(IMThemeBookshelf *)v3 setToolbarStyle:0];
    v6 = +[UIColor clearColor];
    [(IMThemeBookshelf *)v3 setScrimColor:v6];

    v7 = [UIColor colorWithRed:0.968627451 green:0.968627451 blue:0.968627451 alpha:0.82];
    [(IMThemeBookshelf *)v3 setScrimColorList:v7];

    [(IMThemeBookshelf *)v3 setToolbarTintColor:0];
    v8 = +[UIColor whiteColor];
    [(IMTheme *)v3 setPopoverBackgroundColor:v8];

    v9 = +[UIColor blackColor];
    [(IMTheme *)v3 setPopoverTitleColor:v9];

    v10 = [UIColor colorWithRed:0.0784313725 green:0.0784313725 blue:0.117647059 alpha:0.35];
    [(IMThemeBookshelf *)v3 setSearchBackgroundColor:v10];

    v11 = [UIColor colorWithRed:0.0784313725 green:0.0784313725 blue:0.117647059 alpha:0.2];
    [(IMThemeBookshelf *)v3 setSearchBackgroundColorList:v11];

    v12 = [UIColor colorWithWhite:1.0 alpha:0.899999976];
    [(IMThemeBookshelf *)v3 setSearchTextColor:v12];

    v13 = [UIColor colorWithWhite:1.0 alpha:0.899999976];
    [(IMThemeBookshelf *)v3 setSearchPlaceholderTextColor:v13];

    v14 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [(IMThemeBookshelf *)v3 setGridListToggleSelectedColor:v14];

    v15 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.45];
    [(IMThemeBookshelf *)v3 setListAuthorAndGenreTextColor:v15];

    v16 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.75];
    [(IMThemeBookshelf *)v3 setListBookTextColor:v16];

    v17 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.3];
    [(IMThemeBookshelf *)v3 setListMoveHandleColor:v17];

    v18 = [UIColor colorWithWhite:0.0 alpha:0.1];
    [(IMThemeBookshelf *)v3 setSeparatorColor:v18];

    v19 = [UIColor colorWithWhite:1.0 alpha:0.95];
    [(IMThemeBookshelf *)v3 setSelectedSegmentTextColor:v19];

    v20 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.75];
    [(IMThemeBookshelf *)v3 setBackgroundFixedGradientColor0:v20];

    v21 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    [(IMThemeBookshelf *)v3 setBackgroundFixedGradientColor1:v21];

    v22 = [UIColor colorWithWhite:1.0 alpha:0.0];
    [(IMThemeBookshelf *)v3 setShelfTopColor:v22];

    v23 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0627451017 alpha:0.0];
    cGColor = [v23 CGColor];
    v25 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0627451017 alpha:0.100000001];
    v26 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, [v25 CGColor], 0);

    *locations = xmmword_2A4130;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v28 = CGGradientCreateWithColors(DeviceRGB, v26, locations);
    [(IMThemeBookshelf *)v3 setRowBottomGradient:v28];
    CGGradientRelease(v28);
    CGColorSpaceRelease(DeviceRGB);
    v29 = [UIColor colorWithRed:0.941176471 green:0.941176471 blue:0.941176471 alpha:1.0];
    [(IMThemeBookshelf *)v3 setRowSolidFillColor:v29];

    [(IMThemeBookshelf *)v3 setRowSolidFillColorTopmostAlpha:0.0];
    [(IMThemeBookshelf *)v3 setRowSolidFillColorBottommostAlpha:0.720000029];
    v30 = [UIColor colorWithWhite:0.97 alpha:0.9];
    [(IMTheme *)v3 setTableViewHeaderViewColor:v30];

    v31 = [UIColor colorWithWhite:0.97 alpha:0.9];
    [(IMTheme *)v3 setTableViewToolbarColor:v31];

    [(IMTheme *)v3 setTableViewToolbarTranslucent:1];
    v32 = [UIColor colorWithWhite:0.0 alpha:0.67];
    [(IMTheme *)v3 setHeaderTextColor:v32];

    v33 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(IMTheme *)v3 setHeaderTextColorDimmed:v33];

    v34 = +[UIColor darkTextColor];
    [(IMTheme *)v3 setContentTextColor:v34];

    v35 = +[UIColor blackColor];
    [(IMTheme *)v3 setButtonTitleColor:v35];

    v36 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    [(IMTheme *)v3 setButtonTitleColorDisabled:v36];

    contentTextColor = [(IMTheme *)v3 contentTextColor];
    [(IMTheme *)v3 setFooterTextColor:contentTextColor];

    v38 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    [(IMThemeBookshelf *)v3 setApplicationSnapshotScrimColor:v38];
  }

  return v3;
}

- (void)stylizeSegmentedControl:(id)control
{
  controlCopy = control;
  tintColor = [(IMTheme *)self tintColor];
  [controlCopy setTintColor:tintColor];

  v6 = [controlCopy titleTextAttributesForState:4];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v6];

  selectedSegmentTextColor = [(IMThemeBookshelf *)self selectedSegmentTextColor];
  [v8 setObject:selectedSegmentTextColor forKeyedSubscript:NSForegroundColorAttributeName];

  [controlCopy setTitleTextAttributes:v8 forState:4];
}

@end