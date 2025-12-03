@interface IMThemeBookshelfNight
- (IMThemeBookshelfNight)init;
@end

@implementation IMThemeBookshelfNight

- (IMThemeBookshelfNight)init
{
  v53.receiver = self;
  v53.super_class = IMThemeBookshelfNight;
  v2 = [(IMThemeBookshelf *)&v53 init];
  v3 = v2;
  if (v2)
  {
    [(IMTheme *)v2 setCompositingFilter:kCAFilterPlusL];
    v4 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [(IMTheme *)v3 setTintColor:v4];

    v5 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [(IMTheme *)v3 setToolbarTitleColor:v5];

    v6 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0588235296 alpha:0.100000001];
    [(IMThemeBookshelf *)v3 setScrimColor:v6];

    scrimColor = [(IMThemeBookshelf *)v3 scrimColor];
    [(IMThemeBookshelf *)v3 setScrimColorList:scrimColor];

    [(IMThemeBookshelf *)v3 setToolbarStyle:1];
    [(IMThemeBookshelf *)v3 setToolbarTintColor:0];
    v8 = [UIColor colorWithWhite:0.1 alpha:1.0];
    [(IMTheme *)v3 setPopoverBackgroundColor:v8];

    toolbarTitleColor = [(IMTheme *)v3 toolbarTitleColor];
    [(IMTheme *)v3 setPopoverTitleColor:toolbarTitleColor];

    v10 = [UIColor colorWithRed:0.937254906 green:0.937254906 blue:0.960784316 alpha:0.170000002];
    [(IMThemeBookshelf *)v3 setSearchBackgroundColor:v10];

    v11 = [UIColor colorWithRed:0.937254906 green:0.937254906 blue:0.960784316 alpha:0.170000002];
    [(IMThemeBookshelf *)v3 setSearchBackgroundColorList:v11];

    v12 = [UIColor colorWithWhite:1.0 alpha:0.899999976];
    [(IMThemeBookshelf *)v3 setSearchTextColor:v12];

    v13 = 0.0;
    v14 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [(IMThemeBookshelf *)v3 setGridListToggleSelectedColor:v14];

    v15 = [UIColor colorWithWhite:1.0 alpha:0.600000024];
    [(IMThemeBookshelf *)v3 setListAuthorAndGenreTextColor:v15];

    v16 = +[UIColor whiteColor];
    [(IMThemeBookshelf *)v3 setListBookTextColor:v16];

    v17 = [UIColor colorWithWhite:1.0 alpha:0.300000012];
    [(IMThemeBookshelf *)v3 setListMoveHandleColor:v17];

    v18 = [UIColor colorWithWhite:1.0 alpha:0.100000001];
    [(IMThemeBookshelf *)v3 setSeparatorColor:v18];

    v19 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [(IMThemeBookshelf *)v3 setSelectedSegmentTextColor:v19];

    v20 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0588235296 alpha:0.5];
    [(IMThemeBookshelf *)v3 setBackgroundFixedGradientColor0:v20];

    v21 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0588235296 alpha:0.0];
    [(IMThemeBookshelf *)v3 setBackgroundFixedGradientColor1:v21];

    v22 = [UIColor colorWithRed:0.0627451017 green:0.0627451017 blue:0.0627451017 alpha:0.0];
    cGColor = [v22 CGColor];
    v24 = [UIColor colorWithRed:0.0627451017 green:0.0627451017 blue:0.0627451017 alpha:0.400000006];
    v25 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, [v24 CGColor], 0);

    *locations = xmmword_2A4130;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v27 = CGGradientCreateWithColors(DeviceRGB, v25, locations);
    [(IMThemeBookshelf *)v3 setRowBottomGradient:v27];
    CGGradientRelease(v27);
    CGColorSpaceRelease(DeviceRGB);
    v28 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:1.0];
    [(IMThemeBookshelf *)v3 setRowSolidFillColor:v28];

    [(IMThemeBookshelf *)v3 setRowSolidFillColorTopmostAlpha:0.25];
    [(IMThemeBookshelf *)v3 setRowSolidFillColorBottommostAlpha:0.699999988];
    [(IMThemeBookshelf *)v3 setHasRowTopGradient:1];
    v29 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0500000007];
    [(IMThemeBookshelf *)v3 setRowTopGradientColor0:v29];

    v30 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    [(IMThemeBookshelf *)v3 setRowTopGradientColor1:v30];

    rowTopGradientColor0 = [(IMThemeBookshelf *)v3 rowTopGradientColor0];
    rowSolidFillColor = [(IMThemeBookshelf *)v3 rowSolidFillColor];
    [(IMThemeBookshelf *)v3 rowSolidFillColorTopmostAlpha];
    v33 = [rowSolidFillColor colorWithAlphaComponent:?];
    v60 = 0.0;
    v61 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    [rowTopGradientColor0 getRed:&v61 green:&v60 blue:&v59 alpha:&v58];
    [v33 getRed:&v57 green:&v56 blue:&v55 alpha:&v54];
    v34 = 1.0 - v58;
    v35 = v58 + v54 * (1.0 - v58);
    v36 = 0.0;
    v37 = 0.0;
    if (v35 > 0.0)
    {
      v13 = (v34 * (v54 * v57) + v61 * v58) / v35;
      v37 = (v34 * (v54 * v55) + v59 * v58) / v35;
      v36 = (v34 * (v54 * v56) + v60 * v58) / v35;
    }

    v38 = [UIColor colorWithRed:v13 green:v36 blue:v37 alpha:?];
    [(IMThemeBookshelf *)v3 setShelfTopColor:v38];

    v39 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [(IMTheme *)v3 setContentTextColor:v39];

    v40 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [(IMTheme *)v3 setHeaderTextColor:v40];

    v41 = [UIColor colorWithWhite:0.909803922 alpha:1.0];
    [(IMTheme *)v3 setTableViewCellSelectedColor:v41];

    v42 = [UIColor colorWithRed:0.0901960784 green:0.0901960784 blue:0.109803922 alpha:1.0];
    [(IMTheme *)v3 setTableViewHeaderViewColor:v42];

    v43 = [UIColor colorWithRed:0.0901960784 green:0.0901960784 blue:0.109803922 alpha:1.0];
    [(IMTheme *)v3 setTableViewToolbarColor:v43];

    [(IMTheme *)v3 setTableViewToolbarTranslucent:0];
    v44 = [UIColor colorWithWhite:1.0 alpha:0.1];
    [(IMTheme *)v3 setTableViewSeparatorColor:v44];

    v45 = [UIColor colorWithRed:0.0156862754 green:0.0156862754 blue:0.0392156877 alpha:1.0];
    [(IMTheme *)v3 setTableViewBackgroundColor:v45];

    tableViewBackgroundColor = [(IMTheme *)v3 tableViewBackgroundColor];
    [(IMTheme *)v3 setTableViewCellBackgroundColor:tableViewBackgroundColor];

    v47 = [UIColor colorWithRed:0.352941176 green:0.352941176 blue:0.368627451 alpha:1.0];
    [(IMThemeBookshelf *)v3 setApplicationSnapshotScrimColor:v47];

    headerTextColor = [(IMTheme *)v3 headerTextColor];
    [(IMTheme *)v3 setFooterTextColor:headerTextColor];

    [(IMTheme *)v3 setKeyboardAppearance:1];
    [(IMTheme *)v3 setContentStatusBarStyle:1];
    v49 = [UIColor colorWithWhite:0.6 alpha:1.0];
    [(IMTheme *)v3 setButtonTitleColor:v49];

    v50 = +[UIColor whiteColor];
    [(IMTheme *)v3 setKeyColor:v50];

    v51 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
    [(IMTheme *)v3 setSystemGrayColor:v51];
  }

  return v3;
}

@end