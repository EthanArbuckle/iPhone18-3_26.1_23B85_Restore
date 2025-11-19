@interface BKCatalystAppearanceViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)hasOriginalFont;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)contentSize;
- (UIImage)clearImage;
- (double)fontSizeForFontFamilyName:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_themeButtonImageForTheme:(int64_t)a3 selected:(BOOL)a4;
- (id)_themeButtonImageWithColor:(id)a3 unselectedBorderColor:(id)a4 selectedImageColor:(id)a5 selected:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)downloadFont:(id)a3;
- (void)fontDownloadFailed:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)stopDownloadingFont:(id)a3;
- (void)stylizeForTheme;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation BKCatalystAppearanceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v5 viewDidLoad];
  v3 = [(BEAppearanceViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"BKFontTableViewCell"];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"fontDownloadFailed:" name:BEFontDownloadFailedNotification object:0];
}

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v4 contentSize];
  v3 = 230.0;
  result.height = v2;
  result.width = v3;
  return result;
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

- (BOOL)hasOriginalFont
{
  if (![(BKCatalystAppearanceViewController *)self determinedOriginalFont])
  {
    v3 = [(BKAppearanceViewController *)self fonts];
    -[BKCatalystAppearanceViewController setDeterminedOriginalFont:](self, "setDeterminedOriginalFont:", [v3 count] != 0);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [(BKAppearanceViewController *)self fonts];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_DD4D0;
    v6[3] = &unk_1E5988;
    v6[4] = &v7;
    [v4 enumerateObjectsUsingBlock:v6];

    self->_hasOriginalFont = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return self->_hasOriginalFont;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = BKCatalystAppearanceViewController;
  v6 = [(BKAppearanceViewController *)&v11 tableView:a3 numberOfRowsInSection:?];
  v7 = [(BKAppearanceViewController *)self menuItems];
  v8 = [v7 objectAtIndexedSubscript:a4];

  if (v8 == @"BKAppearanceMenuItemFont")
  {
    v6 = &dword_0 + 1;
  }

  else if (v8 == @"BKAppearanceMenuItemSelectedFont")
  {
    v9 = [(BKAppearanceViewController *)self fonts];
    v6 = [v9 count];
  }

  return v6;
}

- (UIImage)clearImage
{
  clearImage = self->_clearImage;
  if (!clearImage)
  {
    v8.width = 13.0;
    v8.height = 13.0;
    UIGraphicsBeginImageContextWithOptions(v8, 0, 1.0);
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    v5 = self->_clearImage;
    self->_clearImage = v4;

    UIGraphicsEndImageContext();
    clearImage = self->_clearImage;
  }

  return clearImage;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v12 tableView:a3 heightForRowAtIndexPath:v6];
  v8 = v7;
  v9 = [(BKAppearanceViewController *)self menuItems];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  if (v10 == @"BKAppearanceMenuItemTheme" && ![v6 row])
  {
    v8 = 40.0;
  }

  else if (v10 == @"BKAppearanceMenuItemSelectedFont")
  {
    v8 = 22.0;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (!a4)
  {
    return 0.0;
  }

  v4 = 8.0;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v4 = 1.0 / v6;
  }

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BKCatalystAppearanceViewController;
  v7 = [(BKAppearanceViewController *)&v11 tableView:v6 viewForFooterInSection:a4];
  if (a4 == 2)
  {
    v8 = [UIView alloc];
    [v6 frame];
    v9 = [v8 initWithFrame:{0.0, 0.0, CGRectGetWidth(v13), 10.0}];

    v7 = v9;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v6 tableView:a3 heightForFooterInSection:?];
  if (a4 == 2)
  {
    return 10.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(BEHairlineDividerView);
  [v7 setHorizontal:0];
  v8 = [(BKCatalystAppearanceViewController *)self themePage];
  v9 = [v8 separatorColor];
  [v7 setBackgroundColor:v9];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 frame];
  CGRectGetWidth(v36);
  [(BKCatalystAppearanceViewController *)self tableView:v6 heightForHeaderInSection:a4];

  CGRectMakeWithSize();
  v14 = [[UIView alloc] initWithFrame:{v10, v11, v12, v13}];
  [v14 setPreservesSuperviewLayoutMargins:1];
  [v14 addSubview:v7];
  if ((a4 - 1) > 1)
  {
    v15 = [v7 bottomAnchor];
    [v14 bottomAnchor];
  }

  else
  {
    v15 = [v7 topAnchor];
    [v14 topAnchor];
  }

  v29 = v30 = v15;
  v33 = [v7 heightAnchor];
  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = 1.0 / v17;

  v32 = [v33 constraintEqualToConstant:v18];
  v34[0] = v32;
  v31 = [v15 constraintEqualToAnchor:v29];
  v34[1] = v31;
  v28 = [v7 leadingAnchor];
  v19 = [v14 layoutMarginsGuide];
  v20 = [v19 leadingAnchor];
  v21 = [v28 constraintEqualToAnchor:v20];
  v34[2] = v21;
  v22 = [v7 trailingAnchor];
  v23 = [v14 layoutMarginsGuide];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v34[3] = v25;
  v26 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  return v14;
}

- (void)stylizeForTheme
{
  v8.receiver = self;
  v8.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v8 stylizeForTheme];
  v3 = +[UIColor clearColor];
  v4 = [(BEAppearanceViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = [(BEAppearanceViewController *)self tableView];
  v6 = [v5 separatorColor];
  v7 = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [v7 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppearanceViewController *)self menuItems];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  if (v9 != @"BKAppearanceMenuItemSelectedFont")
  {
    v59.receiver = self;
    v59.super_class = BKCatalystAppearanceViewController;
    v10 = [(BKAppearanceViewController *)&v59 tableView:v7 cellForRowAtIndexPath:v6];
    goto LABEL_26;
  }

  v58 = [v7 dequeueReusableCellWithIdentifier:@"BKFontTableViewCell" forIndexPath:v6];

  objc_opt_class();
  v10 = BUDynamicCast();
  v11 = [(BKAppearanceViewController *)self fonts];
  v7 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v12 = [(BKAppearanceViewController *)self style];
  v13 = [v12 fontFamily];
  v14 = [v7 familyName];
  v15 = [v13 isEqualToString:v14];

  v16 = [v7 familyName];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v7 displayName];
    v19 = [v7 familyName];
    [(BKCatalystAppearanceViewController *)self fontSizeForFontFamilyName:v19];
    v21 = v20;

    if ([v7 kind] == &dword_4)
    {
      v22 = [UIFont systemFontOfSize:kCTFontUIFontDesignSerif weight:v21 design:UIFontWeightRegular];
LABEL_9:
      v26 = v22;
      goto LABEL_14;
    }

    if ([v7 kind] == &dword_0 + 3)
    {
      v22 = [UIFont systemFontOfSize:v21];
      goto LABEL_9;
    }

    v27 = [v7 familyName];
    v28 = [UIFont fontWithName:v27 size:v21];
    v24 = [v28 _fontAdjustedForCurrentContentSizeCategory];

    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = [UIFont systemFontOfSize:v21];
    }
  }

  else
  {
    v23 = AEBundle();
    v18 = [v23 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];

    v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v24 _scaledValueForValue:13.0];
    v25 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  }

  v26 = v25;

LABEL_14:
  v29 = [(BKCatalystAppearanceViewController *)self themePage];
  v30 = [v29 keyColor];

  [v10 setLabelText:v18];
  v57 = v26;
  v31 = [v26 bkEffectiveFontForText:v18];
  [v10 setLabelFont:v31];

  v32 = [v7 state] == 1;
  v33 = [v10 label];
  [v33 setEnabled:v32];

  v34 = [v10 selectionView];
  [v34 setHidden:v15 ^ 1];

  v35 = [v10 selectionView];
  [v35 setTintColor:v30];

  if ((v15 & 1) == 0)
  {
    if ([v7 state] == 3)
    {
      v36 = [v58 accessoryView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v38 = [v58 accessoryView];
      }

      else
      {
        v38 = objc_alloc_init(IMRadialProgressButton);
        [v38 setTintColor:v30];
        [v38 setTrackDiameter:16.0];
        [v38 setProgressThickness:1.0];
        [v38 useInnerRect:{5.0, 5.0}];
        [v38 addTarget:self action:"stopDownloadingFont:" forControlEvents:64];
      }

      [v7 downloadProgress];
      [v38 setProgress:?];
      v52 = [v10 buttonContainerView];
      [v52 addSubview:v38];

      [v38 setTag:{objc_msgSend(v6, "row")}];
      v41 = [v38 bc_constraintsToFitInSuperviewCentered];
      [NSLayoutConstraint activateConstraints:v41];
    }

    else
    {
      if ([v7 state] != 2)
      {
        goto LABEL_24;
      }

      v39 = [v7 familyName];
      v40 = [v39 isEqualToString:&stru_1E7188];

      if (v40)
      {
        goto LABEL_24;
      }

      v38 = [UIButton buttonWithType:0];
      [v38 addTarget:self action:"downloadFont:" forControlEvents:64];
      v41 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
      v42 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
      v56 = [v42 bc_imageWithConfiguration:v41 limitedToContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

      [v38 setImage:v56 forState:0];
      [v38 setTintColor:v30];
      [v38 setTag:{objc_msgSend(v6, "row")}];
      v43 = [v10 buttonContainerView];
      [v43 addSubview:v38];

      v44 = [v38 bc_constraintsToFitInSuperviewCentered];
      [NSLayoutConstraint activateConstraints:v44];

      [v56 size];
      v46 = v45;
      [v56 size];
      v48 = v46 / v47;
      v55 = [v38 widthAnchor];
      v49 = [v38 heightAnchor];
      v50 = [v55 constraintEqualToAnchor:v49 multiplier:v48];

      LODWORD(v51) = 1148846080;
      [v50 setPriority:v51];
      [v50 setActive:1];
    }

LABEL_24:
    v53 = [v10 buttonContainerWidthConstraint];
    [v53 setConstant:18.0];
  }

LABEL_26:

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKAppearanceViewController *)self menuItems];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  if (v9 == @"BKAppearanceMenuItemSelectedFont")
  {
    v10 = [(BKAppearanceViewController *)self fonts];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    if ([v11 state] == 1)
    {
      v12 = [(BKAppearanceViewController *)self fontVC];
      [v12 useSelectedFont:v11];

      [v6 deselectRowAtIndexPath:v7 animated:1];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKCatalystAppearanceViewController;
    [(BKAppearanceViewController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  v13 = [(BEAppearanceViewController *)self tableView];
  [v13 reloadData];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = BKCatalystAppearanceViewController;
  v9 = a5;
  [(BKAppearanceViewController *)&v18 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:v9];
  v10 = [UIColor clearColor:v18.receiver];
  [v8 setBackgroundColor:v10];

  v11 = [(BKAppearanceViewController *)self menuItems];
  v12 = [v9 section];

  v13 = [v11 objectAtIndexedSubscript:v12];

  if (v13 == @"BKAppearanceMenuItemHorizontalScrollingView" || v13 == @"BKAppearanceMenuItemVerticalScrollingView")
  {
    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [v15 _scaledValueForValue:13.0];
    v16 = [UIFont systemFontOfSize:?];
    v17 = [v8 textLabel];
    [v17 setFont:v16];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKAppearanceViewController *)self menuItems];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  if (v9 == @"BKAppearanceMenuItemSelectedFont")
  {
    v11 = [(BKAppearanceViewController *)self fonts];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v10 = [v12 state] == 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKCatalystAppearanceViewController;
    v10 = [(BKAppearanceViewController *)&v14 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  return v10;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v8 = [a3 cellForRowAtIndexPath:a4];
  v5 = [(BKCatalystAppearanceViewController *)self themePage];
  v6 = [v5 tableViewCellSelectedColor];
  v7 = [v8 contentView];
  [v7 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  v4 = [v5 contentView];
  [v4 setBackgroundColor:0];
}

- (id)_themeButtonImageForTheme:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v6 = [IMThemePage themeForEPUBTheme:a3];
  v7 = [v6 buttonFillColor];
  v8 = [v6 separatorColor];
  v9 = [v6 primaryTextColor];
  v10 = [(BKCatalystAppearanceViewController *)self _themeButtonImageWithColor:v7 unselectedBorderColor:v8 selectedImageColor:v9 selected:v4];

  return v10;
}

- (id)_themeButtonImageWithColor:(id)a3 unselectedBorderColor:(id)a4 selectedImageColor:(id)a5 selected:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(BKCatalystAppearanceViewController *)self appearanceColorPotWidth];
  v14 = v13;
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:1 scale:14.0];
  v19 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v18];
  v26.width = v14;
  v26.height = v14;
  UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
  v20 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v14, v14];
  [v11 setFill];

  [v20 fill];
  v21 = [UIBezierPath bezierPathWithOvalInRect:v17, v17, v14 + v17 * -2.0, v14 + v17 * -2.0];
  [v12 setFill];

  [v21 fill];
  if (v6)
  {
    v22 = [v19 imageWithTintColor:v10];
    [v22 drawInRect:{v14 * 0.5 * 0.5, v14 * 0.5 * 0.5, v14 * 0.5, v14 * 0.5}];
  }

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

- (double)fontSizeForFontFamilyName:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"Iowan Old Style"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Charter") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Athelas") & 1) != 0 || (v4 = 13.0, objc_msgSend(v3, "isEqualToString:", @"Seravek")))
  {
    v4 = 14.0;
  }

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:v4];
  v7 = v6;

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"state"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"downloadProgress"))
  {
    if ([(BKCatalystAppearanceViewController *)self isVisible])
    {
      v13 = [(BKAppearanceViewController *)self fonts];
      v14 = [v13 indexOfObject:v11];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_DED48;
      block[3] = &unk_1E4548;
      block[4] = self;
      block[5] = v14;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKCatalystAppearanceViewController;
    [(BKCatalystAppearanceViewController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)downloadFont:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceViewController *)self fonts];
  v6 = [v4 tag];

  v7 = [v5 objectAtIndex:v6];

  self->_shownCannotDownloadFontAlert = 0;
  [v7 download];
}

- (void)stopDownloadingFont:(id)a3
{
  v4 = a3;
  v5 = [(BKAppearanceViewController *)self fonts];
  v6 = [v4 tag];

  v7 = [v5 objectAtIndex:v6];

  [v7 cancelDownload];
}

- (void)fontDownloadFailed:(id)a3
{
  if (!self->_shownCannotDownloadFontAlert)
  {
    v4 = a3;
    v5 = MGGetBoolAnswer();
    v6 = AEBundle();
    v7 = v6;
    if (v5)
    {
      v8 = @"To download fonts, connect to WLAN.";
    }

    else
    {
      v8 = @"To download fonts, connect to Wi-Fi.";
    }

    v17 = [v6 localizedStringForKey:v8 value:&stru_1E7188 table:0];

    v9 = AEBundle();
    v10 = [v9 localizedStringForKey:@"Couldn’t Download" value:&stru_1E7188 table:0];
    v11 = [UIAlertController alertControllerWithTitle:v10 message:v17 preferredStyle:1];

    v12 = AEBundle();
    v13 = [v12 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v11 addAction:v14];

    [(BKCatalystAppearanceViewController *)self presentViewController:v11 animated:1 completion:0];
    self->_shownCannotDownloadFontAlert = 1;
    v15 = [v4 object];

    [v15 checkStateSynchronously:0];
    v16 = [(BEAppearanceViewController *)self tableView];
    [v16 reloadData];
  }
}

- (BOOL)accessibilityPerformEscape
{
  v3.receiver = self;
  v3.super_class = BKCatalystAppearanceViewController;
  return [(BKCatalystAppearanceViewController *)&v3 accessibilityPerformEscape];
}

@end