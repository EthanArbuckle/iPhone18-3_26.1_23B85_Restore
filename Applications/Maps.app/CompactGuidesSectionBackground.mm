@interface CompactGuidesSectionBackground
- (CompactGuidesSectionBackground)initWithFrame:(CGRect)frame;
- (void)setupGradientBackground;
- (void)setupHairlines;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundUI;
@end

@implementation CompactGuidesSectionBackground

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CompactGuidesSectionBackground;
  changeCopy = change;
  [(CompactGuidesSectionBackground *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CompactGuidesSectionBackground *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CompactGuidesSectionBackground *)self updateBackgroundUI];
  }
}

- (void)updateBackgroundUI
{
  traitCollection = [(CompactGuidesSectionBackground *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v5 = @"#2C2C2E";
  }

  else
  {
    v5 = @"#F0F0F0";
  }

  if (userInterfaceStyle == 2)
  {
    v6 = @"#1C1C1E";
  }

  else
  {
    v6 = @"#E8E9ED";
  }

  v7 = [UIColor _maps_colorFromHexString:v5];
  v8 = [UIColor _maps_colorFromHexString:v6];
  v12[0] = [v7 CGColor];
  v12[1] = [v8 CGColor];
  v9 = [NSArray arrayWithObjects:v12 count:2];
  backgroundGradientView = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  gradientLayer = [backgroundGradientView gradientLayer];
  [gradientLayer setColors:v9];
}

- (void)setupGradientBackground
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CompactGuidesSectionBackground *)self setBackgroundGradientView:v3];

  backgroundGradientView = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  [backgroundGradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundGradientView2 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  gradientLayer = [backgroundGradientView2 gradientLayer];
  [gradientLayer setStartPoint:{0.5, 0.5}];

  backgroundGradientView3 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  gradientLayer2 = [backgroundGradientView3 gradientLayer];
  [gradientLayer2 setEndPoint:{0.5, 1.0}];

  [(CompactGuidesSectionBackground *)self updateBackgroundUI];
  backgroundGradientView4 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  [(CompactGuidesSectionBackground *)self insertSubview:backgroundGradientView4 atIndex:0];

  backgroundGradientView5 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  leadingAnchor = [backgroundGradientView5 leadingAnchor];
  leadingAnchor2 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v23;
  backgroundGradientView6 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  trailingAnchor = [backgroundGradientView6 trailingAnchor];
  trailingAnchor2 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v10;
  backgroundGradientView7 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  topAnchor = [backgroundGradientView7 topAnchor];
  topAnchor2 = [(CompactGuidesSectionBackground *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v14;
  backgroundGradientView8 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  bottomAnchor = [backgroundGradientView8 bottomAnchor];
  bottomAnchor2 = [(CompactGuidesSectionBackground *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)setupHairlines
{
  v3 = objc_alloc_init(HairlineView);
  [(CompactGuidesSectionBackground *)self setTopHairline:v3];

  topHairline = [(CompactGuidesSectionBackground *)self topHairline];
  [topHairline setTranslatesAutoresizingMaskIntoConstraints:0];

  topHairline2 = [(CompactGuidesSectionBackground *)self topHairline];
  layer = [topHairline2 layer];
  LODWORD(v7) = 1050253722;
  [layer setOpacity:v7];

  topHairline3 = [(CompactGuidesSectionBackground *)self topHairline];
  [(CompactGuidesSectionBackground *)self addSubview:topHairline3];

  v9 = objc_alloc_init(HairlineView);
  [(CompactGuidesSectionBackground *)self setBottomHairline:v9];

  bottomHairline = [(CompactGuidesSectionBackground *)self bottomHairline];
  [bottomHairline setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomHairline2 = [(CompactGuidesSectionBackground *)self bottomHairline];
  layer2 = [bottomHairline2 layer];
  LODWORD(v13) = 1050253722;
  [layer2 setOpacity:v13];

  bottomHairline3 = [(CompactGuidesSectionBackground *)self bottomHairline];
  [(CompactGuidesSectionBackground *)self addSubview:bottomHairline3];

  topHairline4 = [(CompactGuidesSectionBackground *)self topHairline];
  leadingAnchor = [topHairline4 leadingAnchor];
  leadingAnchor2 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v36;
  topHairline5 = [(CompactGuidesSectionBackground *)self topHairline];
  trailingAnchor = [topHairline5 trailingAnchor];
  trailingAnchor2 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v32;
  topHairline6 = [(CompactGuidesSectionBackground *)self topHairline];
  topAnchor = [topHairline6 topAnchor];
  topAnchor2 = [(CompactGuidesSectionBackground *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v28;
  bottomHairline4 = [(CompactGuidesSectionBackground *)self bottomHairline];
  leadingAnchor3 = [bottomHairline4 leadingAnchor];
  leadingAnchor4 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v15 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[3] = v15;
  bottomHairline5 = [(CompactGuidesSectionBackground *)self bottomHairline];
  trailingAnchor3 = [bottomHairline5 trailingAnchor];
  trailingAnchor4 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[4] = v19;
  bottomHairline6 = [(CompactGuidesSectionBackground *)self bottomHairline];
  bottomAnchor = [bottomHairline6 bottomAnchor];
  bottomAnchor2 = [(CompactGuidesSectionBackground *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[5] = v23;
  v24 = [NSArray arrayWithObjects:v40 count:6];
  [NSLayoutConstraint activateConstraints:v24];
}

- (CompactGuidesSectionBackground)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CompactGuidesSectionBackground;
  v3 = [(CompactGuidesSectionBackground *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CompactGuidesSectionBackground *)v3 setupHairlines];
    [(CompactGuidesSectionBackground *)v4 setupGradientBackground];
  }

  return v4;
}

@end