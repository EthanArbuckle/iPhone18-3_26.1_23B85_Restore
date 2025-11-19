@interface AKAuthorizationAppleIDButton
+ (id)buttonWithType:(int64_t)a3 style:(int64_t)a4;
+ (int64_t)_buttonStyleForUIStyle;
- (AKAuthorizationAppleIDButton)initWithAuthorizationButtonType:(int64_t)a3 authorizationButtonStyle:(int64_t)a4;
- (AKAuthorizationAppleIDButton)initWithCoder:(id)a3;
- (AKAuthorizationAppleIDButton)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (void)_commonInit;
- (void)_createHighlightFilterIfNecessary;
- (void)_drawRect:(CGRect)a3 inView:(id)a4;
- (void)_performAnimationToSetHighlighted:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setButtonText:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AKAuthorizationAppleIDButton

+ (id)buttonWithType:(int64_t)a3 style:(int64_t)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithAuthorizationButtonType:a3 authorizationButtonStyle:a4];

  return v4;
}

- (AKAuthorizationAppleIDButton)initWithAuthorizationButtonType:(int64_t)a3 authorizationButtonStyle:(int64_t)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v8 = 0u;
  v9 = 0u;
  v8 = *MEMORY[0x277CBF348];
  *&v9 = 0x4060400000000000;
  *(&v9 + 1) = 30.0;
  v13 = 0;
  v7.receiver = self;
  v7.super_class = AKAuthorizationAppleIDButton;
  v13 = [(AKAuthorizationAppleIDButton *)&v7 initWithFrame:v8, 130.0, 30.0];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    if (v10 == 3)
    {
      v13->_changesInterfaceStyle = 1;
      v10 = +[AKAuthorizationAppleIDButton _buttonStyleForUIStyle];
    }

    v13->_type = v11;
    v13->_style = v10;
    [objc_opt_class() defaultCornerRadius];
    v13->_cornerRadius = v4;
    [(AKAuthorizationAppleIDButton *)v13 _commonInit];
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (AKAuthorizationAppleIDButton)initWithFrame:(CGRect)a3
{
  v6 = a3;
  v5 = 0;
  v5 = [(AKAuthorizationAppleIDButton *)self initWithAuthorizationButtonType:0 authorizationButtonStyle:2];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (AKAuthorizationAppleIDButton)initWithCoder:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v9 = [(AKAuthorizationAppleIDButton *)v3 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v4 = [location[0] decodeIntegerForKey:@"_type"];
    v9->_type = v4;
    v5 = [location[0] decodeIntegerForKey:@"_style"];
    v9->_style = v5;
    [(AKAuthorizationAppleIDButton *)v9 _commonInit];
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeInteger:v5->_type forKey:@"_type"];
  [location[0] encodeInteger:v5->_style forKey:@"_style"];
  objc_storeStrong(location, 0);
}

- (void)_commonInit
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(AKAuthorizationAppleIDButton *)self setBackgroundColor:?];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4 = MEMORY[0x277CCAAD0];
  v13 = [(AKAuthorizationAppleIDButton *)self widthAnchor];
  v12 = [v13 constraintGreaterThanOrEqualToConstant:130.0];
  v15[0] = v12;
  v11 = [(AKAuthorizationAppleIDButton *)self widthAnchor];
  v10 = [v11 constraintLessThanOrEqualToConstant:375.0];
  v15[1] = v10;
  v9 = [(AKAuthorizationAppleIDButton *)self heightAnchor];
  v8 = [v9 constraintGreaterThanOrEqualToConstant:30.0];
  v15[2] = v8;
  v7 = [(AKAuthorizationAppleIDButton *)self heightAnchor];
  v6 = [v7 constraintLessThanOrEqualToConstant:64.0];
  v15[3] = v6;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [v4 activateConstraints:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  *MEMORY[0x277D85DE8];
}

+ (int64_t)_buttonStyleForUIStyle
{
  v4 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v5 = [v4 userInterfaceStyle];
  MEMORY[0x277D82BD8](v4);
  v2 = 0;
  if (v5 != 2)
  {
    return 2;
  }

  return v2;
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(AKAuthorizationAppleIDButton *)self setNeedsDisplay];
  }
}

- (void)_drawRect:(CGRect)a3 inView:(id)a4
{
  v11 = a3;
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  c = UIGraphicsGetCurrentContext();
  v5 = [location[0] _screen];
  [v5 scale];
  v6 = v4;
  MEMORY[0x277D82BD8](v5);
  image = AKCreateAppleIDButtonImageWithCornerRadius(v10->_type, v10->_style, 0, v11.size.width, v11.size.height, v6, v10->_cornerRadius);
  CGContextDrawImage(c, v11, image);
  CGImageRelease(image);
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v2 layoutSubviews];
  [(AKAuthorizationAppleIDButton *)v4 setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  CGSizeMake_8();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_createHighlightFilterIfNecessary
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!self->_highlightFilter)
  {
    v2 = objc_alloc(MEMORY[0x277CD9EA0]);
    v3 = [v2 initWithType:*MEMORY[0x277CDA5B0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v3;
    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter", MEMORY[0x277D82BD8](highlightFilter).n128_f64[0]];
    v7 = self->_highlightFilter;
    v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:?];
    v5 = v8;
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");
    *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v12[0] = self->_highlightFilter;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:{1, v6}];
    v9 = [(AKAuthorizationAppleIDButton *)self layer];
    [v9 setFilters:v10];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_performAnimationToSetHighlighted:(BOOL)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  [(AKAuthorizationAppleIDButton *)self _createHighlightFilterIfNecessary];
  v19 = [(AKAuthorizationAppleIDButton *)v22 layer];
  v3 = 0.6;
  if (!v20)
  {
    v3 = 1.0;
  }

  v18 = [MEMORY[0x277D75348] colorWithWhite:v3 alpha:?];
  v10 = MEMORY[0x277D75348];
  v11 = [v19 valueForKeyPath:?];
  v17 = [v10 colorWithCGColor:?];
  MEMORY[0x277D82BD8](v11);
  v13 = v19;
  v12 = v18;
  v4 = v18;
  [v13 setValue:objc_msgSend(v12 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v16 setDuration:0.15];
  [v16 setFillMode:*MEMORY[0x277CDA238]];
  v14 = v17;
  v5 = v17;
  v6 = [v14 CGColor];
  [v16 setFromValue:v6];
  v15 = v18;
  v7 = v18;
  v8 = [v15 CGColor];
  [v16 setToValue:v8];
  v9 = [v19 ak_addAdditiveAnimation:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
}

- (void)setHighlighted:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if ([(AKAuthorizationAppleIDButton *)self isHighlighted]!= a3)
  {
    v3.receiver = v6;
    v3.super_class = AKAuthorizationAppleIDButton;
    [(AKAuthorizationAppleIDButton *)&v3 setHighlighted:v4];
    [(AKAuthorizationAppleIDButton *)v6 _performAnimationToSetHighlighted:v4];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v3 setEnabled:a3];
  if (v4)
  {
    [(AKAuthorizationAppleIDButton *)v6 setAlpha:1.0];
  }

  else
  {
    [(AKAuthorizationAppleIDButton *)v6 setAlpha:0.5];
  }
}

- (id)accessibilityLabel
{
  type = self->_type;
  if (type)
  {
    if (type == 1)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v7 = [v4 localizedStringForKey:@"SIGN_UP_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
      MEMORY[0x277D82BD8](v4);
      goto LABEL_7;
    }

    if (type == 2)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
      v7 = [v5 localizedStringForKey:@"CONTINUE_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
      MEMORY[0x277D82BD8](v5);
      goto LABEL_7;
    }
  }

  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v7 = [v3 localizedStringForKey:@"SIGN_IN_WITH_APPLE" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);
LABEL_7:

  return v7;
}

- (void)setButtonText:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v6 traitCollectionDidChange:location[0]];
  if (v8->_changesInterfaceStyle)
  {
    v4 = [(AKAuthorizationAppleIDButton *)v8 traitCollection];
    v5 = [v4 userInterfaceStyle];
    MEMORY[0x277D82BD8](v4);
    v3 = 0;
    if (v5 != 2)
    {
      v3 = 2;
    }

    v8->_style = v3;
  }

  objc_storeStrong(location, 0);
}

@end