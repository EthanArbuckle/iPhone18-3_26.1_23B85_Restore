@interface CLCalloutOverlay
- (CGRect)calloutFrame;
- (CGSize)calloutIconSize;
- (CLCalloutOverlay)initWithFrame:(CGRect)frame title:(id)title subtitle:(id)subtitle subtitle2:(id)subtitle2 subtitleColor:(id)color subtitle2Color:(id)subtitle2Color image:(id)image imageSize:(CGSize)self0 titleFontSize:(double)self1 titleNumberOfLines:(unsigned int)self2 titleFontWeight:(double)self3 titleLineBreakMode:(int64_t)self4 showBackgroundPlatters:(BOOL)self5;
- (void)layoutSubviews;
- (void)setupBlurView:(id)view;
- (void)setupCalloutIcon:(id)icon withImage:(id)image;
- (void)setupImageView:(id)view withImage:(id)image forImageSize:(CGSize)size withBorderWidth:(double)width;
- (void)setupPillView:(id)view;
- (void)setupPlatters;
- (void)setupTitleLabel:(id)label withText:(id)text withTextColor:(id)color numberOfLines:(unsigned int)lines withLineBreakMode:(int64_t)mode withFontWeight:(double)weight withFontSize:(double)size;
@end

@implementation CLCalloutOverlay

- (CLCalloutOverlay)initWithFrame:(CGRect)frame title:(id)title subtitle:(id)subtitle subtitle2:(id)subtitle2 subtitleColor:(id)color subtitle2Color:(id)subtitle2Color image:(id)image imageSize:(CGSize)self0 titleFontSize:(double)self1 titleNumberOfLines:(unsigned int)self2 titleFontWeight:(double)self3 titleLineBreakMode:(int64_t)self4 showBackgroundPlatters:(BOOL)self5
{
  height = size.height;
  width = size.width;
  v24 = frame.size.height;
  v25 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  subtitleCopy = subtitle;
  subtitle2Copy = subtitle2;
  colorCopy = color;
  subtitle2ColorCopy = subtitle2Color;
  imageCopy = image;
  v182.receiver = self;
  v182.super_class = CLCalloutOverlay;
  v29 = [(CLCalloutOverlay *)&v182 initWithAnnotation:0 reuseIdentifier:@"CalloutOverlay"];
  v30 = v29;
  if (v29)
  {
    [(CLCalloutOverlay *)v29 setFrame:x, y, v25, v24];
    v31 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLCalloutOverlay *)v30 setMainPlatterView:v31];

    [(CLCalloutOverlay *)v30 setShowBackgroundPlatters:platters];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(CLCalloutOverlay *)v30 setTitleLabel:v32];

    [(CLCalloutOverlay *)v30 setSubtitleLabel:0];
    [(CLCalloutOverlay *)v30 setSecondSubtitleLabel:0];
    v171 = +[UIColor labelColor];
    [(CLCalloutOverlay *)v30 setCalloutIconSize:width, height];
    titleLabel = [(CLCalloutOverlay *)v30 titleLabel];
    [(CLCalloutOverlay *)v30 setupTitleLabel:titleLabel withText:titleCopy withTextColor:v171 numberOfLines:lines withLineBreakMode:mode withFontWeight:weight withFontSize:fontSize];

    if (subtitleCopy)
    {
      v34 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLCalloutOverlay *)v30 setSubtitleLabel:v34];

      subtitleLabel = [(CLCalloutOverlay *)v30 subtitleLabel];
      [(CLCalloutOverlay *)v30 setupTitleLabel:subtitleLabel withText:subtitleCopy withTextColor:colorCopy numberOfLines:lines withLineBreakMode:mode withFontWeight:weight withFontSize:fontSize];

      mainPlatterView = [(CLCalloutOverlay *)v30 mainPlatterView];
      subtitleLabel2 = [(CLCalloutOverlay *)v30 subtitleLabel];
      [mainPlatterView addSubview:subtitleLabel2];
    }

    if (subtitle2Copy)
    {
      v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(CLCalloutOverlay *)v30 setSecondSubtitleLabel:v38];

      secondSubtitleLabel = [(CLCalloutOverlay *)v30 secondSubtitleLabel];
      [(CLCalloutOverlay *)v30 setupTitleLabel:secondSubtitleLabel withText:subtitle2Copy withTextColor:subtitle2ColorCopy numberOfLines:lines withLineBreakMode:mode withFontWeight:weight withFontSize:fontSize];

      mainPlatterView2 = [(CLCalloutOverlay *)v30 mainPlatterView];
      secondSubtitleLabel2 = [(CLCalloutOverlay *)v30 secondSubtitleLabel];
      [mainPlatterView2 addSubview:secondSubtitleLabel2];
    }

    mainPlatterView3 = [(CLCalloutOverlay *)v30 mainPlatterView];
    titleLabel2 = [(CLCalloutOverlay *)v30 titleLabel];
    [mainPlatterView3 addSubview:titleLabel2];

    mainPlatterView4 = [(CLCalloutOverlay *)v30 mainPlatterView];
    [(CLCalloutOverlay *)v30 addSubview:mainPlatterView4];

    v45 = objc_alloc_init(UIImageView);
    [(CLCalloutOverlay *)v30 setCalloutImageView:v45];

    calloutImageView = [(CLCalloutOverlay *)v30 calloutImageView];
    [(CLCalloutOverlay *)v30 setupCalloutIcon:calloutImageView withImage:imageCopy];

    mainPlatterView5 = [(CLCalloutOverlay *)v30 mainPlatterView];
    calloutImageView2 = [(CLCalloutOverlay *)v30 calloutImageView];
    [mainPlatterView5 addSubview:calloutImageView2];

    mainPlatterView6 = [(CLCalloutOverlay *)v30 mainPlatterView];
    centerXAnchor = [mainPlatterView6 centerXAnchor];
    safeAreaLayoutGuide = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v157 = [centerXAnchor constraintEqualToAnchor:?];
    v184[0] = v157;
    mainPlatterView7 = [(CLCalloutOverlay *)v30 mainPlatterView];
    centerYAnchor = [mainPlatterView7 centerYAnchor];
    safeAreaLayoutGuide2 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide2 centerYAnchor];
    v149 = [centerYAnchor constraintEqualToAnchor:?];
    v184[1] = v149;
    mainPlatterView8 = [(CLCalloutOverlay *)v30 mainPlatterView];
    widthAnchor = [mainPlatterView8 widthAnchor];
    safeAreaLayoutGuide3 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    widthAnchor2 = [safeAreaLayoutGuide3 widthAnchor];
    v141 = [widthAnchor constraintGreaterThanOrEqualToAnchor:0.4 multiplier:?];
    v184[2] = v141;
    mainPlatterView9 = [(CLCalloutOverlay *)v30 mainPlatterView];
    widthAnchor3 = [mainPlatterView9 widthAnchor];
    safeAreaLayoutGuide4 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
    widthAnchor4 = [safeAreaLayoutGuide4 widthAnchor];
    v133 = [widthAnchor3 constraintLessThanOrEqualToAnchor:0.6 multiplier:?];
    v184[3] = v133;
    calloutImageView3 = [(CLCalloutOverlay *)v30 calloutImageView];
    widthAnchor5 = [calloutImageView3 widthAnchor];
    v127 = [widthAnchor5 constraintEqualToConstant:width];
    v184[4] = v127;
    calloutImageView4 = [(CLCalloutOverlay *)v30 calloutImageView];
    heightAnchor = [calloutImageView4 heightAnchor];
    v121 = [heightAnchor constraintEqualToConstant:height];
    v184[5] = v121;
    calloutImageView5 = [(CLCalloutOverlay *)v30 calloutImageView];
    topAnchor = [calloutImageView5 topAnchor];
    mainPlatterView10 = [(CLCalloutOverlay *)v30 mainPlatterView];
    topAnchor2 = [mainPlatterView10 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v184[6] = v50;
    calloutImageView6 = [(CLCalloutOverlay *)v30 calloutImageView];
    centerXAnchor3 = [calloutImageView6 centerXAnchor];
    mainPlatterView11 = [(CLCalloutOverlay *)v30 mainPlatterView];
    centerXAnchor4 = [mainPlatterView11 centerXAnchor];
    v55 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v184[7] = v55;
    v56 = [NSArray arrayWithObjects:v184 count:8];
    [NSLayoutConstraint activateConstraints:v56];

    if ([(CLCalloutOverlay *)v30 showBackgroundPlatters])
    {
      v170 = [UIBlurEffect effectWithStyle:1];
      v181 = [[UIVisualEffectView alloc] initWithEffect:v170];
      v179 = [[UIVisualEffectView alloc] initWithEffect:v170];
      [(CLCalloutOverlay *)v30 setupBlurView:v181];
      layer = [v181 layer];
      LODWORD(v58) = 1.0;
      [layer setOpacity:v58];

      [(CLCalloutOverlay *)v30 addSubview:v181];
      [(CLCalloutOverlay *)v30 setupBlurView:v179];
      layer2 = [v179 layer];
      LODWORD(v60) = 1.0;
      [layer2 setOpacity:v60];

      [(CLCalloutOverlay *)v30 addSubview:v179];
      v61 = objc_alloc_init(UIView);
      [(CLCalloutOverlay *)v30 setBackgroundPlatter1:v61];

      backgroundPlatter1 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      [(CLCalloutOverlay *)v30 addSubview:backgroundPlatter1];

      v63 = objc_alloc_init(UIView);
      [(CLCalloutOverlay *)v30 setBackgroundPlatter2:v63];

      backgroundPlatter2 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      [(CLCalloutOverlay *)v30 addSubview:backgroundPlatter2];

      [(CLCalloutOverlay *)v30 setupPlatters];
      backgroundPlatter12 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      heightAnchor2 = [backgroundPlatter12 heightAnchor];
      mainPlatterView12 = [(CLCalloutOverlay *)v30 mainPlatterView];
      heightAnchor3 = [mainPlatterView12 heightAnchor];
      v132 = [heightAnchor2 constraintEqualToAnchor:?];
      v183[0] = v132;
      backgroundPlatter13 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      widthAnchor6 = [backgroundPlatter13 widthAnchor];
      mainPlatterView13 = [(CLCalloutOverlay *)v30 mainPlatterView];
      widthAnchor7 = [mainPlatterView13 widthAnchor];
      v124 = [widthAnchor6 constraintEqualToAnchor:0.9 multiplier:?];
      v183[1] = v124;
      backgroundPlatter14 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      centerXAnchor5 = [backgroundPlatter14 centerXAnchor];
      safeAreaLayoutGuide5 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      centerXAnchor6 = [safeAreaLayoutGuide5 centerXAnchor];
      v116 = [centerXAnchor5 constraintEqualToAnchor:?];
      v183[2] = v116;
      backgroundPlatter15 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      topAnchor3 = [backgroundPlatter15 topAnchor];
      mainPlatterView14 = [(CLCalloutOverlay *)v30 mainPlatterView];
      topAnchor4 = [mainPlatterView14 topAnchor];
      v112 = [topAnchor3 constraintEqualToAnchor:5.0 constant:?];
      v183[3] = v112;
      backgroundPlatter22 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      heightAnchor4 = [backgroundPlatter22 heightAnchor];
      mainPlatterView15 = [(CLCalloutOverlay *)v30 mainPlatterView];
      heightAnchor5 = [mainPlatterView15 heightAnchor];
      v108 = [heightAnchor4 constraintEqualToAnchor:?];
      v183[4] = v108;
      backgroundPlatter23 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      widthAnchor8 = [backgroundPlatter23 widthAnchor];
      mainPlatterView16 = [(CLCalloutOverlay *)v30 mainPlatterView];
      widthAnchor9 = [mainPlatterView16 widthAnchor];
      v104 = [widthAnchor8 constraintEqualToAnchor:0.8 multiplier:?];
      v183[5] = v104;
      backgroundPlatter24 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      centerXAnchor7 = [backgroundPlatter24 centerXAnchor];
      safeAreaLayoutGuide6 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      centerXAnchor8 = [safeAreaLayoutGuide6 centerXAnchor];
      v100 = [centerXAnchor7 constraintEqualToAnchor:?];
      v183[6] = v100;
      backgroundPlatter25 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      topAnchor5 = [backgroundPlatter25 topAnchor];
      mainPlatterView17 = [(CLCalloutOverlay *)v30 mainPlatterView];
      topAnchor6 = [mainPlatterView17 topAnchor];
      v96 = [topAnchor5 constraintEqualToAnchor:10.0 constant:?];
      v183[7] = v96;
      heightAnchor6 = [v181 heightAnchor];
      mainPlatterView18 = [(CLCalloutOverlay *)v30 mainPlatterView];
      heightAnchor7 = [mainPlatterView18 heightAnchor];
      v93 = [heightAnchor6 constraintEqualToAnchor:?];
      v183[8] = v93;
      widthAnchor10 = [v181 widthAnchor];
      mainPlatterView19 = [(CLCalloutOverlay *)v30 mainPlatterView];
      widthAnchor11 = [mainPlatterView19 widthAnchor];
      v90 = [widthAnchor10 constraintEqualToAnchor:0.9 multiplier:?];
      v183[9] = v90;
      centerXAnchor9 = [v181 centerXAnchor];
      safeAreaLayoutGuide7 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      centerXAnchor10 = [safeAreaLayoutGuide7 centerXAnchor];
      v87 = [centerXAnchor9 constraintEqualToAnchor:?];
      v183[10] = v87;
      topAnchor7 = [v181 topAnchor];
      mainPlatterView20 = [(CLCalloutOverlay *)v30 mainPlatterView];
      topAnchor8 = [mainPlatterView20 topAnchor];
      v84 = [topAnchor7 constraintEqualToAnchor:5.0 constant:?];
      v183[11] = v84;
      heightAnchor8 = [v179 heightAnchor];
      mainPlatterView21 = [(CLCalloutOverlay *)v30 mainPlatterView];
      heightAnchor9 = [mainPlatterView21 heightAnchor];
      v81 = [heightAnchor8 constraintEqualToAnchor:?];
      v183[12] = v81;
      widthAnchor12 = [v179 widthAnchor];
      mainPlatterView22 = [(CLCalloutOverlay *)v30 mainPlatterView];
      widthAnchor13 = [mainPlatterView22 widthAnchor];
      v78 = [widthAnchor12 constraintEqualToAnchor:0.8 multiplier:?];
      v183[13] = v78;
      centerXAnchor11 = [v179 centerXAnchor];
      safeAreaLayoutGuide8 = [(CLCalloutOverlay *)v30 safeAreaLayoutGuide];
      centerXAnchor12 = [safeAreaLayoutGuide8 centerXAnchor];
      v67 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
      v183[14] = v67;
      topAnchor9 = [v179 topAnchor];
      mainPlatterView23 = [(CLCalloutOverlay *)v30 mainPlatterView];
      topAnchor10 = [mainPlatterView23 topAnchor];
      v71 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:10.0];
      v183[15] = v71;
      v72 = [NSArray arrayWithObjects:v183 count:16];
      [NSLayoutConstraint activateConstraints:v72];

      [(CLCalloutOverlay *)v30 bringSubviewToFront:v179];
      backgroundPlatter26 = [(CLCalloutOverlay *)v30 backgroundPlatter2];
      [(CLCalloutOverlay *)v30 bringSubviewToFront:backgroundPlatter26];

      [(CLCalloutOverlay *)v30 bringSubviewToFront:v181];
      backgroundPlatter16 = [(CLCalloutOverlay *)v30 backgroundPlatter1];
      [(CLCalloutOverlay *)v30 bringSubviewToFront:backgroundPlatter16];
    }

    mainPlatterView24 = [(CLCalloutOverlay *)v30 mainPlatterView];
    [(CLCalloutOverlay *)v30 bringSubviewToFront:mainPlatterView24];

    calloutImageView7 = [(CLCalloutOverlay *)v30 calloutImageView];
    [(CLCalloutOverlay *)v30 bringSubviewToFront:calloutImageView7];
  }

  return v30;
}

- (void)setupPlatters
{
  mainPlatterView = [(CLCalloutOverlay *)self mainPlatterView];
  [(CLCalloutOverlay *)self setupPillView:?];

  if ([(CLCalloutOverlay *)self showBackgroundPlatters])
  {
    backgroundPlatter1 = [(CLCalloutOverlay *)self backgroundPlatter1];
    [(CLCalloutOverlay *)self setupPillView:?];

    v7 = [UIColor colorNamed:@"UpperPlatterBackgroundColor"];
    backgroundPlatter12 = [(CLCalloutOverlay *)self backgroundPlatter1];
    [backgroundPlatter12 setBackgroundColor:v7];

    backgroundPlatter2 = [(CLCalloutOverlay *)self backgroundPlatter2];
    [(CLCalloutOverlay *)self setupPillView:?];

    v9 = [UIColor colorNamed:@"LowerPlatterBackgroundColor"];
    backgroundPlatter22 = [(CLCalloutOverlay *)self backgroundPlatter2];
    [backgroundPlatter22 setBackgroundColor:v9];
  }
}

- (void)setupPillView:(id)view
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [UIColor colorNamed:@"PillBackgroundColor"];
  cgColor = [v3 cgColor];
  layer = [viewCopy layer];
  [layer setBackgroundColor:cgColor];

  cgColor2 = [v3 cgColor];
  layer2 = [viewCopy layer];
  [layer2 setBorderColor:cgColor2];

  layer3 = [viewCopy layer];
  [layer3 setCornerRadius:10.0];

  v9 = [UIColor colorNamed:@"PillShadowColor"];
  cgColor3 = [v9 cgColor];
  layer4 = [viewCopy layer];
  [layer4 setShadowColor:cgColor3];

  layer5 = [viewCopy layer];
  [layer5 setShadowOffset:{0.0, 0.0}];

  layer6 = [viewCopy layer];
  [layer6 setShadowRadius:2.0];

  layer7 = [viewCopy layer];
  LODWORD(v15) = 1.0;
  [layer7 setShadowOpacity:v15];
}

- (void)setupTitleLabel:(id)label withText:(id)text withTextColor:(id)color numberOfLines:(unsigned int)lines withLineBreakMode:(int64_t)mode withFontWeight:(double)weight withFontSize:(double)size
{
  labelCopy = label;
  textCopy = text;
  colorCopy = color;
  [labelCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [NSAttributedString alloc];
  v23 = NSKernAttributeName;
  v24 = &off_100010690;
  v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v20 = [v18 initWithString:textCopy attributes:v19];

  [labelCopy setTextColor:colorCopy];
  [labelCopy setAttributedText:v20];
  [labelCopy setTextAlignment:1];
  v21 = [UIFontDescriptor _preferredFontDescriptorWithTextStyle:UIFontTextStyleBody design:UIFontDescriptorSystemDesignDefault weight:weight];
  v22 = [UIFont fontWithDescriptor:v21 size:size];
  [labelCopy setFont:v22];

  [labelCopy setNumberOfLines:lines];
  [labelCopy setLineBreakMode:mode];
}

- (void)setupCalloutIcon:(id)icon withImage:(id)image
{
  iconCopy = icon;
  imageCopy = image;
  [iconCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [iconCopy setImage:imageCopy];
  [iconCopy setContentMode:1];
  [iconCopy setClipsToBounds:1];
}

- (void)setupImageView:(id)view withImage:(id)image forImageSize:(CGSize)size withBorderWidth:(double)width
{
  height = size.height;
  viewCopy = view;
  imageCopy = image;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy setImage:imageCopy];
  layer = [viewCopy layer];
  [layer setBorderWidth:width];

  v11 = +[UIColor whiteColor];
  cGColor = [v11 CGColor];
  layer2 = [viewCopy layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [viewCopy layer];
  [layer3 setCornerRadius:height * 0.5];

  [viewCopy setContentMode:1];
  [viewCopy setClipsToBounds:1];
}

- (void)setupBlurView:(id)view
{
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [viewCopy layer];
  [layer setCornerRadius:10.0];

  [viewCopy setClipsToBounds:1];
}

- (void)layoutSubviews
{
  mainPlatterView = [(CLCalloutOverlay *)self mainPlatterView];

  if (mainPlatterView)
  {
    titleLabel = [(CLCalloutOverlay *)self titleLabel];
    [titleLabel intrinsicContentSize];
    v6 = v5;

    [(CLCalloutOverlay *)self calloutIconSize];
    v8 = v7;
    titleLabel2 = [(CLCalloutOverlay *)self titleLabel];
    topAnchor = [titleLabel2 topAnchor];
    calloutImageView = [(CLCalloutOverlay *)self calloutImageView];
    bottomAnchor = [calloutImageView bottomAnchor];
    v54 = [topAnchor constraintEqualToAnchor:0.0 constant:?];
    v76[0] = v54;
    titleLabel3 = [(CLCalloutOverlay *)self titleLabel];
    leadingAnchor = [titleLabel3 leadingAnchor];
    mainPlatterView2 = [(CLCalloutOverlay *)self mainPlatterView];
    leadingAnchor2 = [mainPlatterView2 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:7.5];
    v76[1] = v10;
    titleLabel4 = [(CLCalloutOverlay *)self titleLabel];
    trailingAnchor = [titleLabel4 trailingAnchor];
    mainPlatterView3 = [(CLCalloutOverlay *)self mainPlatterView];
    trailingAnchor2 = [mainPlatterView3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-7.5];
    v76[2] = v15;
    v16 = [NSArray arrayWithObjects:v76 count:3];
    [NSLayoutConstraint activateConstraints:v16];

    subtitleLabel = [(CLCalloutOverlay *)self subtitleLabel];
    LOBYTE(v10) = subtitleLabel == 0;

    v18 = v6 + 5.0 + 8.0 + v8;
    if ((v10 & 1) == 0)
    {
      subtitleLabel2 = [(CLCalloutOverlay *)self subtitleLabel];
      [subtitleLabel2 intrinsicContentSize];
      v21 = v20;

      subtitleLabel3 = [(CLCalloutOverlay *)self subtitleLabel];
      topAnchor2 = [subtitleLabel3 topAnchor];
      titleLabel5 = [(CLCalloutOverlay *)self titleLabel];
      bottomAnchor2 = [titleLabel5 bottomAnchor];
      v55 = [topAnchor2 constraintEqualToAnchor:0.0 constant:?];
      v75[0] = v55;
      subtitleLabel4 = [(CLCalloutOverlay *)self subtitleLabel];
      leadingAnchor3 = [subtitleLabel4 leadingAnchor];
      mainPlatterView4 = [(CLCalloutOverlay *)self mainPlatterView];
      leadingAnchor4 = [mainPlatterView4 leadingAnchor];
      v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:7.5];
      v75[1] = v23;
      subtitleLabel5 = [(CLCalloutOverlay *)self subtitleLabel];
      trailingAnchor3 = [subtitleLabel5 trailingAnchor];
      mainPlatterView5 = [(CLCalloutOverlay *)self mainPlatterView];
      trailingAnchor4 = [mainPlatterView5 trailingAnchor];
      v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-7.5];
      v75[2] = v28;
      v29 = [NSArray arrayWithObjects:v75 count:3];
      [NSLayoutConstraint activateConstraints:v29];

      v18 = v18 + v21;
    }

    secondSubtitleLabel = [(CLCalloutOverlay *)self secondSubtitleLabel];
    v31 = secondSubtitleLabel == 0;

    if (!v31)
    {
      secondSubtitleLabel2 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      [secondSubtitleLabel2 intrinsicContentSize];
      v34 = v33;

      secondSubtitleLabel3 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      topAnchor3 = [secondSubtitleLabel3 topAnchor];
      subtitleLabel6 = [(CLCalloutOverlay *)self subtitleLabel];
      bottomAnchor3 = [subtitleLabel6 bottomAnchor];
      v56 = [topAnchor3 constraintEqualToAnchor:0.0 constant:?];
      v74[0] = v56;
      secondSubtitleLabel4 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      leadingAnchor5 = [secondSubtitleLabel4 leadingAnchor];
      mainPlatterView6 = [(CLCalloutOverlay *)self mainPlatterView];
      leadingAnchor6 = [mainPlatterView6 leadingAnchor];
      v36 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:7.5];
      v74[1] = v36;
      secondSubtitleLabel5 = [(CLCalloutOverlay *)self secondSubtitleLabel];
      trailingAnchor5 = [secondSubtitleLabel5 trailingAnchor];
      mainPlatterView7 = [(CLCalloutOverlay *)self mainPlatterView];
      trailingAnchor6 = [mainPlatterView7 trailingAnchor];
      v41 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-7.5];
      v74[2] = v41;
      v42 = [NSArray arrayWithObjects:v74 count:3];
      [NSLayoutConstraint activateConstraints:v42];

      v18 = v18 + v34;
    }

    mainPlatterView8 = [(CLCalloutOverlay *)self mainPlatterView];
    heightAnchor = [mainPlatterView8 heightAnchor];
    v45 = [heightAnchor constraintEqualToConstant:v18];
    v73 = v45;
    v46 = [NSArray arrayWithObjects:&v73 count:1];
    [NSLayoutConstraint activateConstraints:v46];

    mainPlatterView9 = [(CLCalloutOverlay *)self mainPlatterView];
    [mainPlatterView9 setFrame:{0.0, 0.0, 0.0, v18}];

    [(CLCalloutOverlay *)self setupPlatters];
  }

  v72.receiver = self;
  v72.super_class = CLCalloutOverlay;
  [(CLCalloutOverlay *)&v72 layoutSubviews];
}

- (CGRect)calloutFrame
{
  mainPlatterView = [(CLCalloutOverlay *)self mainPlatterView];
  [mainPlatterView visibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)calloutIconSize
{
  width = self->_calloutIconSize.width;
  height = self->_calloutIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end