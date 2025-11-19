@interface SCATMenuOpeningElement
- (CGSize)intrinsicContentSize;
- (SCATMenuOpeningElement)initWithFrame:(CGRect)a3;
@end

@implementation SCATMenuOpeningElement

- (SCATMenuOpeningElement)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = SCATMenuOpeningElement;
  v3 = [(SCATMenuOpeningElement *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATMenuOpeningElement *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
    v6 = [UIImage imageNamed:@"SCAT_alwaysTap_mask"];
    [(SCATMenuOpeningElement *)v4 setBackdropMaskImage:v6];
    v7 = [v5 inputSettings];
    [v7 setGrayscaleTintMaskImage:v6];

    v8 = [v5 inputSettings];
    [v8 setColorTintMaskImage:v6];

    v9 = [v5 inputSettings];
    [v9 setFilterMaskImage:v6];

    [(SCATMenuOpeningElement *)v4 addSubview:v5];
    v10 = [UIImageView alloc];
    v11 = [UIImage imageNamed:@"SCAT_alwaysTap_glyph"];
    v12 = [v10 initWithImage:v11];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATMenuOpeningElement *)v4 addSubview:v12];
    v13 = [NSLayoutConstraint constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
    v18[0] = v13;
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
    v18[1] = v14;
    v15 = [NSArray arrayWithObjects:v18 count:2];
    [(SCATMenuOpeningElement *)v4 addConstraints:v15];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(SCATMenuOpeningElement *)self backdropMaskImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end