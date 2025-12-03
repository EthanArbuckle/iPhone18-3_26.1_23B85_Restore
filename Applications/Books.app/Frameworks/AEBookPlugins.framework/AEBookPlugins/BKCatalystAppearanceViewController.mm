@interface BKCatalystAppearanceViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)hasOriginalFont;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)contentSize;
- (UIImage)clearImage;
- (double)fontSizeForFontFamilyName:(id)name;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_themeButtonImageForTheme:(int64_t)theme selected:(BOOL)selected;
- (id)_themeButtonImageWithColor:(id)color unselectedBorderColor:(id)borderColor selectedImageColor:(id)imageColor selected:(BOOL)selected;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)downloadFont:(id)font;
- (void)fontDownloadFailed:(id)failed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)stopDownloadingFont:(id)font;
- (void)stylizeForTheme;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation BKCatalystAppearanceViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v5 viewDidLoad];
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"BKFontTableViewCell"];

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

- (BOOL)hasOriginalFont
{
  if (![(BKCatalystAppearanceViewController *)self determinedOriginalFont])
  {
    fonts = [(BKAppearanceViewController *)self fonts];
    -[BKCatalystAppearanceViewController setDeterminedOriginalFont:](self, "setDeterminedOriginalFont:", [fonts count] != 0);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    fonts2 = [(BKAppearanceViewController *)self fonts];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_DD4D0;
    v6[3] = &unk_1E5988;
    v6[4] = &v7;
    [fonts2 enumerateObjectsUsingBlock:v6];

    self->_hasOriginalFont = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return self->_hasOriginalFont;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v11.receiver = self;
  v11.super_class = BKCatalystAppearanceViewController;
  v6 = [(BKAppearanceViewController *)&v11 tableView:view numberOfRowsInSection:?];
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v8 = [menuItems objectAtIndexedSubscript:section];

  if (v8 == @"BKAppearanceMenuItemFont")
  {
    v6 = &dword_0 + 1;
  }

  else if (v8 == @"BKAppearanceMenuItemSelectedFont")
  {
    fonts = [(BKAppearanceViewController *)self fonts];
    v6 = [fonts count];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v12 tableView:view heightForRowAtIndexPath:pathCopy];
  v8 = v7;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v10 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v10 == @"BKAppearanceMenuItemTheme" && ![pathCopy row])
  {
    v8 = 40.0;
  }

  else if (v10 == @"BKAppearanceMenuItemSelectedFont")
  {
    v8 = 22.0;
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (!section)
  {
    return 0.0;
  }

  v4 = 8.0;
  if ((section & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v4 = 1.0 / v6;
  }

  return v4;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = BKCatalystAppearanceViewController;
  v7 = [(BKAppearanceViewController *)&v11 tableView:viewCopy viewForFooterInSection:section];
  if (section == 2)
  {
    v8 = [UIView alloc];
    [viewCopy frame];
    v9 = [v8 initWithFrame:{0.0, 0.0, CGRectGetWidth(v13), 10.0}];

    v7 = v9;
  }

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v6.receiver = self;
  v6.super_class = BKCatalystAppearanceViewController;
  [(BKAppearanceViewController *)&v6 tableView:view heightForFooterInSection:?];
  if (section == 2)
  {
    return 10.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = objc_alloc_init(BEHairlineDividerView);
  [v7 setHorizontal:0];
  themePage = [(BKCatalystAppearanceViewController *)self themePage];
  separatorColor = [themePage separatorColor];
  [v7 setBackgroundColor:separatorColor];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy frame];
  CGRectGetWidth(v36);
  [(BKCatalystAppearanceViewController *)self tableView:viewCopy heightForHeaderInSection:section];

  CGRectMakeWithSize();
  v14 = [[UIView alloc] initWithFrame:{v10, v11, v12, v13}];
  [v14 setPreservesSuperviewLayoutMargins:1];
  [v14 addSubview:v7];
  if ((section - 1) > 1)
  {
    bottomAnchor = [v7 bottomAnchor];
    [v14 bottomAnchor];
  }

  else
  {
    bottomAnchor = [v7 topAnchor];
    [v14 topAnchor];
  }

  v29 = v30 = bottomAnchor;
  heightAnchor = [v7 heightAnchor];
  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = 1.0 / v17;

  v32 = [heightAnchor constraintEqualToConstant:v18];
  v34[0] = v32;
  v31 = [bottomAnchor constraintEqualToAnchor:v29];
  v34[1] = v31;
  leadingAnchor = [v7 leadingAnchor];
  layoutMarginsGuide = [v14 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[2] = v21;
  trailingAnchor = [v7 trailingAnchor];
  layoutMarginsGuide2 = [v14 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView setBackgroundColor:v3];

  tableView2 = [(BEAppearanceViewController *)self tableView];
  separatorColor = [tableView2 separatorColor];
  sizeSeparatorLine = [(BEAppearanceViewController *)self sizeSeparatorLine];
  [sizeSeparatorLine setBackgroundColor:separatorColor];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v9 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v9 != @"BKAppearanceMenuItemSelectedFont")
  {
    v59.receiver = self;
    v59.super_class = BKCatalystAppearanceViewController;
    v10 = [(BKAppearanceViewController *)&v59 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    goto LABEL_26;
  }

  v58 = [viewCopy dequeueReusableCellWithIdentifier:@"BKFontTableViewCell" forIndexPath:pathCopy];

  objc_opt_class();
  v10 = BUDynamicCast();
  fonts = [(BKAppearanceViewController *)self fonts];
  viewCopy = [fonts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  style = [(BKAppearanceViewController *)self style];
  fontFamily = [style fontFamily];
  familyName = [viewCopy familyName];
  v15 = [fontFamily isEqualToString:familyName];

  familyName2 = [viewCopy familyName];
  v17 = [familyName2 length];

  if (v17)
  {
    displayName = [viewCopy displayName];
    familyName3 = [viewCopy familyName];
    [(BKCatalystAppearanceViewController *)self fontSizeForFontFamilyName:familyName3];
    v21 = v20;

    if ([viewCopy kind] == &dword_4)
    {
      v22 = [UIFont systemFontOfSize:kCTFontUIFontDesignSerif weight:v21 design:UIFontWeightRegular];
LABEL_9:
      v26 = v22;
      goto LABEL_14;
    }

    if ([viewCopy kind] == &dword_0 + 3)
    {
      v22 = [UIFont systemFontOfSize:v21];
      goto LABEL_9;
    }

    familyName4 = [viewCopy familyName];
    v28 = [UIFont fontWithName:familyName4 size:v21];
    _fontAdjustedForCurrentContentSizeCategory = [v28 _fontAdjustedForCurrentContentSizeCategory];

    if (_fontAdjustedForCurrentContentSizeCategory)
    {
      v25 = _fontAdjustedForCurrentContentSizeCategory;
    }

    else
    {
      v25 = [UIFont systemFontOfSize:v21];
    }
  }

  else
  {
    v23 = AEBundle();
    displayName = [v23 localizedStringForKey:@"Original" value:&stru_1E7188 table:0];

    _fontAdjustedForCurrentContentSizeCategory = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [_fontAdjustedForCurrentContentSizeCategory _scaledValueForValue:13.0];
    v25 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  }

  v26 = v25;

LABEL_14:
  themePage = [(BKCatalystAppearanceViewController *)self themePage];
  keyColor = [themePage keyColor];

  [v10 setLabelText:displayName];
  v57 = v26;
  v31 = [v26 bkEffectiveFontForText:displayName];
  [v10 setLabelFont:v31];

  v32 = [viewCopy state] == 1;
  label = [v10 label];
  [label setEnabled:v32];

  selectionView = [v10 selectionView];
  [selectionView setHidden:v15 ^ 1];

  selectionView2 = [v10 selectionView];
  [selectionView2 setTintColor:keyColor];

  if ((v15 & 1) == 0)
  {
    if ([viewCopy state] == 3)
    {
      accessoryView = [v58 accessoryView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        accessoryView2 = [v58 accessoryView];
      }

      else
      {
        accessoryView2 = objc_alloc_init(IMRadialProgressButton);
        [accessoryView2 setTintColor:keyColor];
        [accessoryView2 setTrackDiameter:16.0];
        [accessoryView2 setProgressThickness:1.0];
        [accessoryView2 useInnerRect:{5.0, 5.0}];
        [accessoryView2 addTarget:self action:"stopDownloadingFont:" forControlEvents:64];
      }

      [viewCopy downloadProgress];
      [accessoryView2 setProgress:?];
      buttonContainerView = [v10 buttonContainerView];
      [buttonContainerView addSubview:accessoryView2];

      [accessoryView2 setTag:{objc_msgSend(pathCopy, "row")}];
      bc_constraintsToFitInSuperviewCentered = [accessoryView2 bc_constraintsToFitInSuperviewCentered];
      [NSLayoutConstraint activateConstraints:bc_constraintsToFitInSuperviewCentered];
    }

    else
    {
      if ([viewCopy state] != 2)
      {
        goto LABEL_24;
      }

      familyName5 = [viewCopy familyName];
      v40 = [familyName5 isEqualToString:&stru_1E7188];

      if (v40)
      {
        goto LABEL_24;
      }

      accessoryView2 = [UIButton buttonWithType:0];
      [accessoryView2 addTarget:self action:"downloadFont:" forControlEvents:64];
      bc_constraintsToFitInSuperviewCentered = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle3];
      v42 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
      v56 = [v42 bc_imageWithConfiguration:bc_constraintsToFitInSuperviewCentered limitedToContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

      [accessoryView2 setImage:v56 forState:0];
      [accessoryView2 setTintColor:keyColor];
      [accessoryView2 setTag:{objc_msgSend(pathCopy, "row")}];
      buttonContainerView2 = [v10 buttonContainerView];
      [buttonContainerView2 addSubview:accessoryView2];

      bc_constraintsToFitInSuperviewCentered2 = [accessoryView2 bc_constraintsToFitInSuperviewCentered];
      [NSLayoutConstraint activateConstraints:bc_constraintsToFitInSuperviewCentered2];

      [v56 size];
      v46 = v45;
      [v56 size];
      v48 = v46 / v47;
      widthAnchor = [accessoryView2 widthAnchor];
      heightAnchor = [accessoryView2 heightAnchor];
      v50 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v48];

      LODWORD(v51) = 1148846080;
      [v50 setPriority:v51];
      [v50 setActive:1];
    }

LABEL_24:
    buttonContainerWidthConstraint = [v10 buttonContainerWidthConstraint];
    [buttonContainerWidthConstraint setConstant:18.0];
  }

LABEL_26:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v9 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v9 == @"BKAppearanceMenuItemSelectedFont")
  {
    fonts = [(BKAppearanceViewController *)self fonts];
    v11 = [fonts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    if ([v11 state] == 1)
    {
      fontVC = [(BKAppearanceViewController *)self fontVC];
      [fontVC useSelectedFont:v11];

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKCatalystAppearanceViewController;
    [(BKAppearanceViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  tableView = [(BEAppearanceViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = BKCatalystAppearanceViewController;
  pathCopy = path;
  [(BKAppearanceViewController *)&v18 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  v10 = [UIColor clearColor:v18.receiver];
  [cellCopy setBackgroundColor:v10];

  menuItems = [(BKAppearanceViewController *)self menuItems];
  section = [pathCopy section];

  v13 = [menuItems objectAtIndexedSubscript:section];

  if (v13 == @"BKAppearanceMenuItemHorizontalScrollingView" || v13 == @"BKAppearanceMenuItemVerticalScrollingView")
  {
    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [v15 _scaledValueForValue:13.0];
    v16 = [UIFont systemFontOfSize:?];
    textLabel = [cellCopy textLabel];
    [textLabel setFont:v16];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  menuItems = [(BKAppearanceViewController *)self menuItems];
  v9 = [menuItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if (v9 == @"BKAppearanceMenuItemSelectedFont")
  {
    fonts = [(BKAppearanceViewController *)self fonts];
    v12 = [fonts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v10 = [v12 state] == 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKCatalystAppearanceViewController;
    v10 = [(BKAppearanceViewController *)&v14 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v10;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  v8 = [view cellForRowAtIndexPath:path];
  themePage = [(BKCatalystAppearanceViewController *)self themePage];
  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  contentView = [v8 contentView];
  [contentView setBackgroundColor:tableViewCellSelectedColor];
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  contentView = [v5 contentView];
  [contentView setBackgroundColor:0];
}

- (id)_themeButtonImageForTheme:(int64_t)theme selected:(BOOL)selected
{
  selectedCopy = selected;
  v6 = [IMThemePage themeForEPUBTheme:theme];
  buttonFillColor = [v6 buttonFillColor];
  separatorColor = [v6 separatorColor];
  primaryTextColor = [v6 primaryTextColor];
  v10 = [(BKCatalystAppearanceViewController *)self _themeButtonImageWithColor:buttonFillColor unselectedBorderColor:separatorColor selectedImageColor:primaryTextColor selected:selectedCopy];

  return v10;
}

- (id)_themeButtonImageWithColor:(id)color unselectedBorderColor:(id)borderColor selectedImageColor:(id)imageColor selected:(BOOL)selected
{
  selectedCopy = selected;
  imageColorCopy = imageColor;
  borderColorCopy = borderColor;
  colorCopy = color;
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
  [borderColorCopy setFill];

  [v20 fill];
  v21 = [UIBezierPath bezierPathWithOvalInRect:v17, v17, v14 + v17 * -2.0, v14 + v17 * -2.0];
  [colorCopy setFill];

  [v21 fill];
  if (selectedCopy)
  {
    v22 = [v19 imageWithTintColor:imageColorCopy];
    [v22 drawInRect:{v14 * 0.5 * 0.5, v14 * 0.5 * 0.5, v14 * 0.5, v14 * 0.5}];
  }

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

- (double)fontSizeForFontFamilyName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:@"Iowan Old Style"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"Charter") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"Athelas") & 1) != 0 || (v4 = 13.0, objc_msgSend(nameCopy, "isEqualToString:", @"Seravek")))
  {
    v4 = 14.0;
  }

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 _scaledValueForValue:v4];
  v7 = v6;

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"state"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"downloadProgress"))
  {
    if ([(BKCatalystAppearanceViewController *)self isVisible])
    {
      fonts = [(BKAppearanceViewController *)self fonts];
      v14 = [fonts indexOfObject:objectCopy];

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
    [(BKCatalystAppearanceViewController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)downloadFont:(id)font
{
  fontCopy = font;
  fonts = [(BKAppearanceViewController *)self fonts];
  v6 = [fontCopy tag];

  v7 = [fonts objectAtIndex:v6];

  self->_shownCannotDownloadFontAlert = 0;
  [v7 download];
}

- (void)stopDownloadingFont:(id)font
{
  fontCopy = font;
  fonts = [(BKAppearanceViewController *)self fonts];
  v6 = [fontCopy tag];

  v7 = [fonts objectAtIndex:v6];

  [v7 cancelDownload];
}

- (void)fontDownloadFailed:(id)failed
{
  if (!self->_shownCannotDownloadFontAlert)
  {
    failedCopy = failed;
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
    object = [failedCopy object];

    [object checkStateSynchronously:0];
    tableView = [(BEAppearanceViewController *)self tableView];
    [tableView reloadData];
  }
}

- (BOOL)accessibilityPerformEscape
{
  v3.receiver = self;
  v3.super_class = BKCatalystAppearanceViewController;
  return [(BKCatalystAppearanceViewController *)&v3 accessibilityPerformEscape];
}

@end