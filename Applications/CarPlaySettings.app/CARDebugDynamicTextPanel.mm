@interface CARDebugDynamicTextPanel
- (CARDebugDynamicTextPanel)initWithPanelController:(id)controller;
- (NSArray)fontTextStyles;
- (id)_buttonWithTitle:(id)title;
- (id)cellSpecifier;
- (id)phoneView;
- (void)_handleSizeButton:(id)button;
- (void)_printFonts;
- (void)_sizeUpdated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation CARDebugDynamicTextPanel

- (CARDebugDynamicTextPanel)initWithPanelController:(id)controller
{
  v6.receiver = self;
  v6.super_class = CARDebugDynamicTextPanel;
  v3 = [(CARSettingsPanel *)&v6 initWithPanelController:controller];
  v4 = v3;
  if (v3)
  {
    [(CARDebugDynamicTextPanel *)v3 _printFonts];
  }

  return v4;
}

- (id)cellSpecifier
{
  cellSpecifier = self->_cellSpecifier;
  if (!cellSpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [CARSettingsCellSpecifier alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002C3A0;
    v8[3] = &unk_1000DAE40;
    objc_copyWeak(&v9, &location);
    v5 = [(CARSettingsCellSpecifier *)v4 initWithTitle:@"Debug Dynamic Text" image:0 icon:0 accessoryType:1 actionBlock:v8];
    v6 = self->_cellSpecifier;
    self->_cellSpecifier = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    cellSpecifier = self->_cellSpecifier;
  }

  return cellSpecifier;
}

- (id)phoneView
{
  phoneView = self->_phoneView;
  if (!phoneView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_phoneView;
    self->_phoneView = v4;

    v6 = [(CARDebugDynamicTextPanel *)self _buttonWithTitle:@"System"];
    [(CARDebugDynamicTextPanel *)self setSystemButton:v6];

    v7 = self->_phoneView;
    systemButton = [(CARDebugDynamicTextPanel *)self systemButton];
    [(UIView *)v7 addSubview:systemButton];

    v9 = [(CARDebugDynamicTextPanel *)self _buttonWithTitle:@"X-Large"];
    [(CARDebugDynamicTextPanel *)self setXtraLargeButton:v9];

    v10 = self->_phoneView;
    xtraLargeButton = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    [(UIView *)v10 addSubview:xtraLargeButton];

    v12 = [(CARDebugDynamicTextPanel *)self _buttonWithTitle:@"Large"];
    [(CARDebugDynamicTextPanel *)self setLargeButton:v12];

    v13 = self->_phoneView;
    largeButton = [(CARDebugDynamicTextPanel *)self largeButton];
    [(UIView *)v13 addSubview:largeButton];

    v15 = [(CARDebugDynamicTextPanel *)self _buttonWithTitle:@"Medium"];
    [(CARDebugDynamicTextPanel *)self setMediumButton:v15];

    v16 = self->_phoneView;
    mediumButton = [(CARDebugDynamicTextPanel *)self mediumButton];
    [(UIView *)v16 addSubview:mediumButton];

    systemButton2 = [(CARDebugDynamicTextPanel *)self systemButton];
    topAnchor = [systemButton2 topAnchor];
    topAnchor2 = [(UIView *)self->_phoneView topAnchor];
    v90 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v94[0] = v90;
    mediumButton2 = [(CARDebugDynamicTextPanel *)self mediumButton];
    topAnchor3 = [mediumButton2 topAnchor];
    systemButton3 = [(CARDebugDynamicTextPanel *)self systemButton];
    bottomAnchor = [systemButton3 bottomAnchor];
    v85 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v94[1] = v85;
    largeButton2 = [(CARDebugDynamicTextPanel *)self largeButton];
    topAnchor4 = [largeButton2 topAnchor];
    mediumButton3 = [(CARDebugDynamicTextPanel *)self mediumButton];
    bottomAnchor2 = [mediumButton3 bottomAnchor];
    v80 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
    v94[2] = v80;
    xtraLargeButton2 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    topAnchor5 = [xtraLargeButton2 topAnchor];
    largeButton3 = [(CARDebugDynamicTextPanel *)self largeButton];
    bottomAnchor3 = [largeButton3 bottomAnchor];
    v75 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
    v94[3] = v75;
    systemButton4 = [(CARDebugDynamicTextPanel *)self systemButton];
    centerXAnchor = [systemButton4 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_phoneView centerXAnchor];
    v71 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v94[4] = v71;
    mediumButton4 = [(CARDebugDynamicTextPanel *)self mediumButton];
    centerXAnchor3 = [mediumButton4 centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_phoneView centerXAnchor];
    v67 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v94[5] = v67;
    largeButton4 = [(CARDebugDynamicTextPanel *)self largeButton];
    centerXAnchor5 = [largeButton4 centerXAnchor];
    centerXAnchor6 = [(UIView *)self->_phoneView centerXAnchor];
    v63 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v94[6] = v63;
    xtraLargeButton3 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    centerXAnchor7 = [xtraLargeButton3 centerXAnchor];
    centerXAnchor8 = [(UIView *)self->_phoneView centerXAnchor];
    v59 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v94[7] = v59;
    xtraLargeButton4 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    widthAnchor = [xtraLargeButton4 widthAnchor];
    v56 = [widthAnchor constraintEqualToConstant:100.0];
    v94[8] = v56;
    mediumButton5 = [(CARDebugDynamicTextPanel *)self mediumButton];
    widthAnchor2 = [mediumButton5 widthAnchor];
    xtraLargeButton5 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    widthAnchor3 = [xtraLargeButton5 widthAnchor];
    v51 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v94[9] = v51;
    largeButton5 = [(CARDebugDynamicTextPanel *)self largeButton];
    widthAnchor4 = [largeButton5 widthAnchor];
    xtraLargeButton6 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    widthAnchor5 = [xtraLargeButton6 widthAnchor];
    v46 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v94[10] = v46;
    systemButton5 = [(CARDebugDynamicTextPanel *)self systemButton];
    widthAnchor6 = [systemButton5 widthAnchor];
    xtraLargeButton7 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    widthAnchor7 = [xtraLargeButton7 widthAnchor];
    v41 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
    v94[11] = v41;
    xtraLargeButton8 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    heightAnchor = [xtraLargeButton8 heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:40.0];
    v94[12] = v38;
    mediumButton6 = [(CARDebugDynamicTextPanel *)self mediumButton];
    heightAnchor2 = [mediumButton6 heightAnchor];
    xtraLargeButton9 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    heightAnchor3 = [xtraLargeButton9 heightAnchor];
    v33 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v94[13] = v33;
    largeButton6 = [(CARDebugDynamicTextPanel *)self largeButton];
    heightAnchor4 = [largeButton6 heightAnchor];
    xtraLargeButton10 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    heightAnchor5 = [xtraLargeButton10 heightAnchor];
    v20 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v94[14] = v20;
    systemButton6 = [(CARDebugDynamicTextPanel *)self systemButton];
    heightAnchor6 = [systemButton6 heightAnchor];
    xtraLargeButton11 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    heightAnchor7 = [xtraLargeButton11 heightAnchor];
    v25 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
    v94[15] = v25;
    v26 = [NSArray arrayWithObjects:v94 count:16];
    [NSLayoutConstraint activateConstraints:v26];

    mediumButton7 = [(CARDebugDynamicTextPanel *)self mediumButton];
    [mediumButton7 addTarget:self action:"_handleSizeButton:" forControlEvents:64];

    largeButton7 = [(CARDebugDynamicTextPanel *)self largeButton];
    [largeButton7 addTarget:self action:"_handleSizeButton:" forControlEvents:64];

    xtraLargeButton12 = [(CARDebugDynamicTextPanel *)self xtraLargeButton];
    [xtraLargeButton12 addTarget:self action:"_handleSizeButton:" forControlEvents:64];

    phoneView = self->_phoneView;
  }

  return phoneView;
}

- (void)viewDidLoad
{
  v71.receiver = self;
  v71.super_class = CARDebugDynamicTextPanel;
  [(CARSettingsPanel *)&v71 viewDidLoad];
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CARDebugDynamicTextPanel *)self setCurrentSizeTitle:v7];

  currentSizeTitle = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  [currentSizeTitle setTranslatesAutoresizingMaskIntoConstraints:0];

  currentSizeTitle2 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  [currentSizeTitle2 setAdjustsFontForContentSizeCategory:1];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  currentSizeTitle3 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  [currentSizeTitle3 setFont:v10];

  view = [(CARDebugDynamicTextPanel *)self view];
  currentSizeTitle4 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  [view addSubview:currentSizeTitle4];

  v14 = objc_alloc_init(UICollectionViewFlowLayout);
  [v14 setItemSize:{85.0, 30.0}];
  [v14 setSectionInset:{10.0, 10.0, 10.0, 50.0}];
  [v14 setMinimumLineSpacing:0.0];
  v70 = v14;
  [v14 setMinimumInteritemSpacing:0.0];
  v15 = [SampleTextCollectionDataSource alloc];
  fontTextStyles = [(CARDebugDynamicTextPanel *)self fontTextStyles];
  v17 = [(SampleTextCollectionDataSource *)v15 initWithFontTextStyles:fontTextStyles];
  [(CARDebugDynamicTextPanel *)self setSampleTextDataSource:v17];

  v18 = [[UICollectionView alloc] initWithFrame:v14 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(CARDebugDynamicTextPanel *)self setSampleTextCollectionView:v18];

  sampleTextCollectionView = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  [sampleTextCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[UIColor tableBackgroundColor];
  sampleTextCollectionView2 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  [sampleTextCollectionView2 setBackgroundColor:v20];

  sampleTextDataSource = [(CARDebugDynamicTextPanel *)self sampleTextDataSource];
  sampleTextCollectionView3 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  [sampleTextCollectionView3 setDataSource:sampleTextDataSource];

  sampleTextDataSource2 = [(CARDebugDynamicTextPanel *)self sampleTextDataSource];
  sampleTextCollectionView4 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  [sampleTextCollectionView4 setDelegate:sampleTextDataSource2];

  sampleTextCollectionView5 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  v27 = objc_opt_class();
  v28 = +[SampleTextCollectionViewCell reuseIdentifier];
  [sampleTextCollectionView5 registerClass:v27 forCellWithReuseIdentifier:v28];

  view2 = [(CARDebugDynamicTextPanel *)self view];
  sampleTextCollectionView6 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  [view2 addSubview:sampleTextCollectionView6];

  currentSizeTitle5 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  topAnchor = [currentSizeTitle5 topAnchor];
  view3 = [(CARDebugDynamicTextPanel *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v64 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v72[0] = v64;
  currentSizeTitle6 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  centerXAnchor = [currentSizeTitle6 centerXAnchor];
  view4 = [(CARDebugDynamicTextPanel *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide2 centerXAnchor];
  v58 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v72[1] = v58;
  currentSizeTitle7 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  heightAnchor = [currentSizeTitle7 heightAnchor];
  v55 = [heightAnchor constraintEqualToConstant:20.0];
  v72[2] = v55;
  sampleTextCollectionView7 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  topAnchor3 = [sampleTextCollectionView7 topAnchor];
  currentSizeTitle8 = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  bottomAnchor = [currentSizeTitle8 bottomAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
  v72[3] = v50;
  sampleTextCollectionView8 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  leftAnchor = [sampleTextCollectionView8 leftAnchor];
  view5 = [(CARDebugDynamicTextPanel *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v44 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  v72[4] = v44;
  sampleTextCollectionView9 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  rightAnchor = [sampleTextCollectionView9 rightAnchor];
  view6 = [(CARDebugDynamicTextPanel *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v32 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-0.0];
  v72[5] = v32;
  sampleTextCollectionView10 = [(CARDebugDynamicTextPanel *)self sampleTextCollectionView];
  bottomAnchor2 = [sampleTextCollectionView10 bottomAnchor];
  view7 = [(CARDebugDynamicTextPanel *)self view];
  safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide5 bottomAnchor];
  v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-0.0];
  v72[6] = v38;
  v39 = [NSArray arrayWithObjects:v72 count:7];
  [NSLayoutConstraint activateConstraints:v39];

  [(CARDebugDynamicTextPanel *)self _sizeUpdated];
}

- (id)_buttonWithTitle:(id)title
{
  titleCopy = title;
  v4 = [UIButton buttonWithType:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTitle:titleCopy forState:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  titleLabel2 = [v4 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  v8 = +[UIColor externalSystemTealColor];
  [v4 setTitleColor:v8 forState:0];

  v9 = +[UIColor _labelColor];
  [v4 setBackgroundColor:v9];

  UIInterfaceDefaultCornerRadius();
  v11 = v10;
  layer = [v4 layer];
  [layer setCornerRadius:v11];

  return v4;
}

- (void)_handleSizeButton:(id)button
{
  buttonCopy = button;
  v8 = buttonCopy;
  if (self->_mediumButton == buttonCopy)
  {
    v6 = &UIContentSizeCategoryMedium;
  }

  else if (self->_largeButton == buttonCopy)
  {
    v6 = &UIContentSizeCategoryLarge;
  }

  else
  {
    if (self->_xtraLargeButton != buttonCopy)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v6 = &UIContentSizeCategoryExtraLarge;
  }

  v5 = *v6;
LABEL_9:
  v7 = +[CARPrototypePref contentSize];
  [v7 setValue:v5];
}

- (void)_sizeUpdated
{
  traitCollection = [(CARDebugDynamicTextPanel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v4 = [preferredContentSizeCategory stringByReplacingOccurrencesOfString:@"UICTContentSizeCategory" withString:&stru_1000DE3D8];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"Accessibility" withString:@"A-"];
  v6 = [NSString stringWithFormat:@"CurrentSize: %@", v5];
  currentSizeTitle = [(CARDebugDynamicTextPanel *)self currentSizeTitle];
  [currentSizeTitle setText:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CARDebugDynamicTextPanel;
  [(CARDebugDynamicTextPanel *)&v4 traitCollectionDidChange:change];
  [(CARDebugDynamicTextPanel *)self _sizeUpdated];
  [(CARDebugDynamicTextPanel *)self _printFonts];
}

- (NSArray)fontTextStyles
{
  v4[0] = UIFontTextStyleLargeTitle;
  v4[1] = UIFontTextStyleTitle1;
  v4[2] = UIFontTextStyleTitle2;
  v4[3] = UIFontTextStyleTitle3;
  v4[4] = UIFontTextStyleTitle4;
  v4[5] = UIFontTextStyleTitle5;
  v4[6] = UIFontTextStyleSubtitle;
  v4[7] = UIFontTextStyleSubtitle1;
  v4[8] = UIFontTextStyleSubtitle2;
  v4[9] = UIFontTextStyleSubtitle3;
  v4[10] = UIFontTextStyleHeadline;
  v4[11] = UIFontTextStyleHeadline1;
  v4[12] = UIFontTextStyleHeadline2;
  v4[13] = UIFontTextStyleSubheadline;
  v4[14] = UIFontTextStyleBody;
  v4[15] = UIFontTextStyleCallout;
  v4[16] = UIFontTextStyleFootnote;
  v4[17] = UIFontTextStyleCaption1;
  v4[18] = UIFontTextStyleCaption2;
  v4[19] = UIFontTextStyleFootnote1;
  v4[20] = UIFontTextStyleFootnote2;
  v4[21] = UIFontTextStyleSection1;
  v4[22] = UIFontTextStyleSection2;
  v4[23] = UIFontTextStyleSection3;
  v2 = [NSArray arrayWithObjects:v4 count:24];

  return v2;
}

- (void)_printFonts
{
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(CARDebugDynamicTextPanel *)self fontTextStyles];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        traitCollection = [(CARDebugDynamicTextPanel *)self traitCollection];
        v10 = [UIFont preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection];

        v11 = [NSString stringWithFormat:@"style=%@ font=%@", v8, v10];
        [v3 addObject:v11];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/CarPlayApp/CarPlaySettings/Panels/InternalSettingsPanels/DebugPanels/CARDebugDynamicTextPanel.m"];
  lastPathComponent = [v12 lastPathComponent];
  v14 = objc_opt_class();
  v15 = [NSString stringWithFormat:@"fonts:\n%@", v3];
  NSLog(@"RIXDEBUG: %@:%d %s (%@.%p) • %@", lastPathComponent, 239, "[CARDebugDynamicTextPanel _printFonts]", v14, self, v15);
}

@end