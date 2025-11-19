@interface CompactGuidesSectionBackground
- (CompactGuidesSectionBackground)initWithFrame:(CGRect)a3;
- (void)setupGradientBackground;
- (void)setupHairlines;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundUI;
@end

@implementation CompactGuidesSectionBackground

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CompactGuidesSectionBackground;
  v4 = a3;
  [(CompactGuidesSectionBackground *)&v8 traitCollectionDidChange:v4];
  v5 = [(CompactGuidesSectionBackground *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CompactGuidesSectionBackground *)self updateBackgroundUI];
  }
}

- (void)updateBackgroundUI
{
  v3 = [(CompactGuidesSectionBackground *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v5 = @"#2C2C2E";
  }

  else
  {
    v5 = @"#F0F0F0";
  }

  if (v4 == 2)
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
  v10 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v11 = [v10 gradientLayer];
  [v11 setColors:v9];
}

- (void)setupGradientBackground
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CompactGuidesSectionBackground *)self setBackgroundGradientView:v3];

  v4 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v6 = [v5 gradientLayer];
  [v6 setStartPoint:{0.5, 0.5}];

  v7 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v8 = [v7 gradientLayer];
  [v8 setEndPoint:{0.5, 1.0}];

  [(CompactGuidesSectionBackground *)self updateBackgroundUI];
  v9 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  [(CompactGuidesSectionBackground *)self insertSubview:v9 atIndex:0];

  v26 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v25 = [v26 leadingAnchor];
  v24 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v22 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v21 = [v22 trailingAnchor];
  v20 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v10;
  v11 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v12 = [v11 topAnchor];
  v13 = [(CompactGuidesSectionBackground *)self topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v27[2] = v14;
  v15 = [(CompactGuidesSectionBackground *)self backgroundGradientView];
  v16 = [v15 bottomAnchor];
  v17 = [(CompactGuidesSectionBackground *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)setupHairlines
{
  v3 = objc_alloc_init(HairlineView);
  [(CompactGuidesSectionBackground *)self setTopHairline:v3];

  v4 = [(CompactGuidesSectionBackground *)self topHairline];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CompactGuidesSectionBackground *)self topHairline];
  v6 = [v5 layer];
  LODWORD(v7) = 1050253722;
  [v6 setOpacity:v7];

  v8 = [(CompactGuidesSectionBackground *)self topHairline];
  [(CompactGuidesSectionBackground *)self addSubview:v8];

  v9 = objc_alloc_init(HairlineView);
  [(CompactGuidesSectionBackground *)self setBottomHairline:v9];

  v10 = [(CompactGuidesSectionBackground *)self bottomHairline];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(CompactGuidesSectionBackground *)self bottomHairline];
  v12 = [v11 layer];
  LODWORD(v13) = 1050253722;
  [v12 setOpacity:v13];

  v14 = [(CompactGuidesSectionBackground *)self bottomHairline];
  [(CompactGuidesSectionBackground *)self addSubview:v14];

  v39 = [(CompactGuidesSectionBackground *)self topHairline];
  v38 = [v39 leadingAnchor];
  v37 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v40[0] = v36;
  v35 = [(CompactGuidesSectionBackground *)self topHairline];
  v34 = [v35 trailingAnchor];
  v33 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v40[1] = v32;
  v31 = [(CompactGuidesSectionBackground *)self topHairline];
  v30 = [v31 topAnchor];
  v29 = [(CompactGuidesSectionBackground *)self topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v40[2] = v28;
  v27 = [(CompactGuidesSectionBackground *)self bottomHairline];
  v26 = [v27 leadingAnchor];
  v25 = [(CompactGuidesSectionBackground *)self leadingAnchor];
  v15 = [v26 constraintEqualToAnchor:v25];
  v40[3] = v15;
  v16 = [(CompactGuidesSectionBackground *)self bottomHairline];
  v17 = [v16 trailingAnchor];
  v18 = [(CompactGuidesSectionBackground *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v40[4] = v19;
  v20 = [(CompactGuidesSectionBackground *)self bottomHairline];
  v21 = [v20 bottomAnchor];
  v22 = [(CompactGuidesSectionBackground *)self bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v40[5] = v23;
  v24 = [NSArray arrayWithObjects:v40 count:6];
  [NSLayoutConstraint activateConstraints:v24];
}

- (CompactGuidesSectionBackground)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CompactGuidesSectionBackground;
  v3 = [(CompactGuidesSectionBackground *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CompactGuidesSectionBackground *)v3 setupHairlines];
    [(CompactGuidesSectionBackground *)v4 setupGradientBackground];
  }

  return v4;
}

@end