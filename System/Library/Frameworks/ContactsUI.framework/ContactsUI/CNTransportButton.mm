@interface CNTransportButton
+ (CNTransportButton)transportButtonWithType:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (void)_updateImageWithType:(int64_t)a3;
- (void)_updateTouchInsetsToFillContainerWithSize:(CGSize)a3;
- (void)setGlyphColor:(id)a3;
- (void)setShowBackgroundPlatter:(BOOL)a3;
- (void)setTransportType:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation CNTransportButton

- (void)_updateTouchInsetsToFillContainerWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CNTransportButton *)self frame];
  v6 = width - CGRectGetMaxX(v14);
  if (v6 >= 37.0)
  {
    v7 = -8.0;
  }

  else
  {
    v7 = -v6;
  }

  if (width >= height)
  {
    v8 = height;
  }

  else
  {
    v8 = width;
  }

  v9 = fmax(v8, 44.0) + -37.0;
  v10 = v9 * -0.5;
  v11 = v9 <= 0.0;
  v12 = -0.0;
  if (!v11)
  {
    v12 = v10;
  }

  [(CNTransportButton *)self _setTouchInsets:v12, v12, v12, v7];
}

- (void)_updateImageWithType:(int64_t)a3
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = [(CNTransportButton *)self glyphColor];
  v8 = [v5 cnui_symbolImageForTransportType:a3 withColor:v6];

  if (v8)
  {
    [(CNTransportButton *)self setHidden:0];
    [(CNTransportButton *)self setImage:v8];
    v7 = [(CNTransportButton *)self image];
    [(CNTransportButton *)self setImage:v7 forState:0];
  }

  else
  {
    [(CNTransportButton *)self setHidden:1];
    [(CNTransportButton *)self setImage:0];
    [(CNTransportButton *)self setImage:0 forState:0];
  }
}

- (void)setGlyphColor:(id)a3
{
  v5 = a3;
  if (self->_glyphColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyphColor, a3);
    [(CNTransportButton *)self setTintColor:v6];
    [(CNTransportButton *)self _updateImageWithType:[(CNTransportButton *)self transportType]];
    v5 = v6;
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = CNTransportButton;
  [(CNTransportButton *)&v4 tintColorDidChange];
  v3 = [(CNTransportButton *)self glyphColor];

  if (!v3)
  {
    [(CNTransportButton *)self _updateImageWithType:[(CNTransportButton *)self transportType]];
  }
}

- (void)setShowBackgroundPlatter:(BOOL)a3
{
  if (self->_showBackgroundPlatter != a3)
  {
    self->_showBackgroundPlatter = a3;
    if (a3)
    {
      v5 = +[CNContactStyle currentStyle];
      v6 = [v5 transportBackgroundColor];
      [(CNTransportButton *)self setBackgroundColor:v6];

      v7 = [(CNTransportButton *)self _screen];
      [v7 scale];
      if (v8 == 0.0)
      {
        if (RoundToScale_onceToken != -1)
        {
          dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
        }

        v8 = *&RoundToScale___s;
      }

      v9 = 19.0;
      if (v8 != 1.0)
      {
        v9 = round(v8 * 18.5) / v8;
      }

      v10 = [(CNTransportButton *)self layer];
      [v10 setCornerRadius:v9];

      v11 = [(CNTransportButton *)self layer];
      [v11 setBorderWidth:1.0];

      v18 = +[CNContactStyle currentStyle];
      v12 = [v18 transportBorderColor];
      v13 = [v12 CGColor];
      v14 = [(CNTransportButton *)self layer];
      [v14 setBorderColor:v13];
    }

    else
    {
      v15 = [MEMORY[0x1E69DC888] clearColor];
      [(CNTransportButton *)self setBackgroundColor:v15];

      v16 = [(CNTransportButton *)self layer];
      [v16 setCornerRadius:0.0];

      v17 = [(CNTransportButton *)self layer];
      [v17 setBorderWidth:0.0];

      v18 = [(CNTransportButton *)self layer];
      [v18 setBorderColor:0];
    }
  }
}

- (void)setTransportType:(int64_t)a3
{
  if (self->_transportType != a3)
  {
    self->_transportType = a3;
    [(CNTransportButton *)self _updateImageWithType:?];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 37.0;
  v3 = 37.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CNTransportButton)transportButtonWithType:(int64_t)a3
{
  v3 = [a1 buttonWithType:a3];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v7];
  [v3 setShowBackgroundPlatter:1];
  [v3 _setTouchInsets:{-3.5, -3.5, -3.5, -3.5}];

  return v3;
}

@end