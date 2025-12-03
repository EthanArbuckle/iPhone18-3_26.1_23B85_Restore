@interface AKAuthorizationAppleIDButton
+ (id)buttonWithType:(int64_t)type style:(int64_t)style;
+ (int64_t)_buttonStyleForUIStyle;
- (AKAuthorizationAppleIDButton)initWithAuthorizationButtonType:(int64_t)type authorizationButtonStyle:(int64_t)style;
- (AKAuthorizationAppleIDButton)initWithCoder:(id)coder;
- (AKAuthorizationAppleIDButton)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (void)_commonInit;
- (void)_createHighlightFilterIfNecessary;
- (void)_drawRect:(CGRect)rect inView:(id)view;
- (void)_performAnimationToSetHighlighted:(BOOL)highlighted;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setButtonText:(id)text;
- (void)setCornerRadius:(double)radius;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AKAuthorizationAppleIDButton

+ (id)buttonWithType:(int64_t)type style:(int64_t)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithAuthorizationButtonType:type authorizationButtonStyle:style];

  return v4;
}

- (AKAuthorizationAppleIDButton)initWithAuthorizationButtonType:(int64_t)type authorizationButtonStyle:(int64_t)style
{
  selfCopy = self;
  v12 = a2;
  typeCopy = type;
  styleCopy = style;
  v8 = 0u;
  v9 = 0u;
  v8 = *MEMORY[0x277CBF348];
  *&v9 = 0x4060400000000000;
  *(&v9 + 1) = 30.0;
  selfCopy = 0;
  v7.receiver = self;
  v7.super_class = AKAuthorizationAppleIDButton;
  selfCopy = [(AKAuthorizationAppleIDButton *)&v7 initWithFrame:v8, 130.0, 30.0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if (styleCopy == 3)
    {
      selfCopy->_changesInterfaceStyle = 1;
      styleCopy = +[AKAuthorizationAppleIDButton _buttonStyleForUIStyle];
    }

    selfCopy->_type = typeCopy;
    selfCopy->_style = styleCopy;
    [objc_opt_class() defaultCornerRadius];
    selfCopy->_cornerRadius = v4;
    [(AKAuthorizationAppleIDButton *)selfCopy _commonInit];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAuthorizationAppleIDButton)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v5 = 0;
  v5 = [(AKAuthorizationAppleIDButton *)self initWithAuthorizationButtonType:0 authorizationButtonStyle:2];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (AKAuthorizationAppleIDButton)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAuthorizationAppleIDButton *)v3 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeIntegerForKey:@"_type"];
    selfCopy->_type = v4;
    v5 = [location[0] decodeIntegerForKey:@"_style"];
    selfCopy->_style = v5;
    [(AKAuthorizationAppleIDButton *)selfCopy _commonInit];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3.receiver = selfCopy;
  v3.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeInteger:selfCopy->_type forKey:@"_type"];
  [location[0] encodeInteger:selfCopy->_style forKey:@"_style"];
  objc_storeStrong(location, 0);
}

- (void)_commonInit
{
  v15[4] = *MEMORY[0x277D85DE8];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(AKAuthorizationAppleIDButton *)self setBackgroundColor:?];
  *&v2 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  v4 = MEMORY[0x277CCAAD0];
  widthAnchor = [(AKAuthorizationAppleIDButton *)self widthAnchor];
  v12 = [widthAnchor constraintGreaterThanOrEqualToConstant:130.0];
  v15[0] = v12;
  widthAnchor2 = [(AKAuthorizationAppleIDButton *)self widthAnchor];
  v10 = [widthAnchor2 constraintLessThanOrEqualToConstant:375.0];
  v15[1] = v10;
  heightAnchor = [(AKAuthorizationAppleIDButton *)self heightAnchor];
  v8 = [heightAnchor constraintGreaterThanOrEqualToConstant:30.0];
  v15[2] = v8;
  heightAnchor2 = [(AKAuthorizationAppleIDButton *)self heightAnchor];
  v6 = [heightAnchor2 constraintLessThanOrEqualToConstant:64.0];
  v15[3] = v6;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [v4 activateConstraints:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](widthAnchor);
  *MEMORY[0x277D85DE8];
}

+ (int64_t)_buttonStyleForUIStyle
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];
  MEMORY[0x277D82BD8](_currentTraitCollection);
  v2 = 0;
  if (userInterfaceStyle != 2)
  {
    return 2;
  }

  return v2;
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(AKAuthorizationAppleIDButton *)self setNeedsDisplay];
  }
}

- (void)_drawRect:(CGRect)rect inView:(id)view
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  c = UIGraphicsGetCurrentContext();
  _screen = [location[0] _screen];
  [_screen scale];
  v6 = v4;
  MEMORY[0x277D82BD8](_screen);
  image = AKCreateAppleIDButtonImageWithCornerRadius(selfCopy->_type, selfCopy->_style, 0, rectCopy.size.width, rectCopy.size.height, v6, selfCopy->_cornerRadius);
  CGContextDrawImage(c, rectCopy, image);
  CGImageRelease(image);
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v2 layoutSubviews];
  [(AKAuthorizationAppleIDButton *)selfCopy setNeedsDisplay];
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
    layer = [(AKAuthorizationAppleIDButton *)self layer];
    [layer setFilters:v10];
    MEMORY[0x277D82BD8](layer);
    MEMORY[0x277D82BD8](v10);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_performAnimationToSetHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v21 = a2;
  highlightedCopy = highlighted;
  [(AKAuthorizationAppleIDButton *)self _createHighlightFilterIfNecessary];
  layer = [(AKAuthorizationAppleIDButton *)selfCopy layer];
  v3 = 0.6;
  if (!highlightedCopy)
  {
    v3 = 1.0;
  }

  v18 = [MEMORY[0x277D75348] colorWithWhite:v3 alpha:?];
  v10 = MEMORY[0x277D75348];
  v11 = [layer valueForKeyPath:?];
  v17 = [v10 colorWithCGColor:?];
  MEMORY[0x277D82BD8](v11);
  v13 = layer;
  v12 = v18;
  v4 = v18;
  [v13 setValue:objc_msgSend(v12 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v16 setDuration:0.15];
  [v16 setFillMode:*MEMORY[0x277CDA238]];
  v14 = v17;
  v5 = v17;
  cGColor = [v14 CGColor];
  [v16 setFromValue:cGColor];
  v15 = v18;
  v7 = v18;
  cGColor2 = [v15 CGColor];
  [v16 setToValue:cGColor2];
  v9 = [layer ak_addAdditiveAnimation:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&layer, 0);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v5 = a2;
  highlightedCopy = highlighted;
  if ([(AKAuthorizationAppleIDButton *)self isHighlighted]!= highlighted)
  {
    v3.receiver = selfCopy;
    v3.super_class = AKAuthorizationAppleIDButton;
    [(AKAuthorizationAppleIDButton *)&v3 setHighlighted:highlightedCopy];
    [(AKAuthorizationAppleIDButton *)selfCopy _performAnimationToSetHighlighted:highlightedCopy];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = a2;
  enabledCopy = enabled;
  v3.receiver = self;
  v3.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v3 setEnabled:enabled];
  if (enabledCopy)
  {
    [(AKAuthorizationAppleIDButton *)selfCopy setAlpha:1.0];
  }

  else
  {
    [(AKAuthorizationAppleIDButton *)selfCopy setAlpha:0.5];
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

- (void)setButtonText:(id)text
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v6.receiver = selfCopy;
  v6.super_class = AKAuthorizationAppleIDButton;
  [(AKAuthorizationAppleIDButton *)&v6 traitCollectionDidChange:location[0]];
  if (selfCopy->_changesInterfaceStyle)
  {
    traitCollection = [(AKAuthorizationAppleIDButton *)selfCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    MEMORY[0x277D82BD8](traitCollection);
    v3 = 0;
    if (userInterfaceStyle != 2)
    {
      v3 = 2;
    }

    selfCopy->_style = v3;
  }

  objc_storeStrong(location, 0);
}

@end