@interface ASAuthorizationAppleIDButton
+ (ASAuthorizationAppleIDButton)buttonWithType:(ASAuthorizationAppleIDButtonType)type style:(ASAuthorizationAppleIDButtonStyle)style;
- (ASAuthorizationAppleIDButton)initWithAuthorizationButtonType:(ASAuthorizationAppleIDButtonType)type authorizationButtonStyle:(ASAuthorizationAppleIDButtonStyle)style;
- (ASAuthorizationAppleIDButton)initWithCoder:(id)a3;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (int64_t)_ak_buttonStyle;
- (int64_t)_ak_buttonType;
- (void)_createHighlightFilterIfNecessary;
- (void)_drawRect:(CGRect)a3 inView:(id)a4;
- (void)_performAnimationToSetHighlighted:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(CGFloat)cornerRadius;
@end

@implementation ASAuthorizationAppleIDButton

+ (ASAuthorizationAppleIDButton)buttonWithType:(ASAuthorizationAppleIDButtonType)type style:(ASAuthorizationAppleIDButtonStyle)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithAuthorizationButtonType:type authorizationButtonStyle:style];

  return v4;
}

- (ASAuthorizationAppleIDButton)initWithAuthorizationButtonType:(ASAuthorizationAppleIDButtonType)type authorizationButtonStyle:(ASAuthorizationAppleIDButtonStyle)style
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v12.receiver = self;
  v12.super_class = ASAuthorizationAppleIDButton;
  v8 = [(ASAuthorizationAppleIDButton *)&v12 initWithFrame:v6, v7, 130.0, 30.0];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v8->_style = style;
    [objc_opt_class() defaultCornerRadius];
    v9->_cornerRadius = v10;
    _ASAuthorizationButtonInitialize(v9);
  }

  return v9;
}

- (ASAuthorizationAppleIDButton)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ASAuthorizationAppleIDButton;
  v5 = [(ASAuthorizationAppleIDButton *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_style = [v4 decodeIntegerForKey:@"_style"];
    _ASAuthorizationButtonInitialize(v5);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASAuthorizationAppleIDButton;
  v4 = a3;
  [(ASAuthorizationAppleIDButton *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"_type", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_style forKey:@"_style"];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
  if (self->_cornerRadius != cornerRadius)
  {
    self->_cornerRadius = cornerRadius;
    [(ASAuthorizationAppleIDButton *)self setNeedsDisplay];
  }
}

- (void)_drawRect:(CGRect)a3 inView:(id)a4
{
  v5 = a4;
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = [v5 _screen];
  [v7 scale];

  [(ASAuthorizationAppleIDButton *)self _ak_buttonType];
  [(ASAuthorizationAppleIDButton *)self _ak_buttonStyle];
  [v5 bounds];
  cornerRadius = self->_cornerRadius;
  v9 = AKCreateAppleIDButtonImageWithCornerRadius();
  [v5 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  CGContextDrawImage(CurrentContext, v19, v9);

  CGImageRelease(v9);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASAuthorizationAppleIDButton;
  [(ASAuthorizationAppleIDButton *)&v3 layoutSubviews];
  [(ASAuthorizationAppleIDButton *)self setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  v2 = 130.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_createHighlightFilterIfNecessary
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    v3 = objc_alloc(MEMORY[0x1E6979378]);
    v4 = [v3 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v4;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v6 = self->_highlightFilter;
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v6, "setValue:forKey:", [v7 CGColor], @"inputColor");

    v11[0] = self->_highlightFilter;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(ASAuthorizationAppleIDButton *)self layer];
    [v9 setFilters:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_performAnimationToSetHighlighted:(BOOL)a3
{
  v3 = a3;
  [(ASAuthorizationAppleIDButton *)self _createHighlightFilterIfNecessary];
  v12 = [(ASAuthorizationAppleIDButton *)self layer];
  v5 = 0.6;
  if (!v3)
  {
    v5 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
  v7 = MEMORY[0x1E69DC888];
  v8 = [v12 valueForKeyPath:@"filters.highlightFilter.inputColor"];
  v9 = [v7 colorWithCGColor:v8];

  [v12 setValue:objc_msgSend(v6 forKeyPath:{"CGColor"), @"filters.highlightFilter.inputColor"}];
  v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
  [v10 setDuration:0.15];
  [v10 setFillMode:*MEMORY[0x1E69797E8]];
  [v10 setFromValue:{objc_msgSend(v9, "CGColor")}];
  [v10 setToValue:{objc_msgSend(v6, "CGColor")}];
  v11 = [v12 ak_addAdditiveAnimation:v10];
}

- (int64_t)_ak_buttonType
{
  type = self->_type;
  if (type == 1)
  {
    return 2;
  }

  else
  {
    return type == 2;
  }
}

- (int64_t)_ak_buttonStyle
{
  style = self->_style;
  v3 = 1;
  if (style != 1)
  {
    v3 = 2;
  }

  if (style)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityLabel
{
  self->_type;
  v3 = _WBSLocalizedString();

  return v3;
}

@end