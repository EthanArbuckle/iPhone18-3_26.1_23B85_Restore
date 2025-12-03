@interface CNTransportButton
+ (CNTransportButton)transportButtonWithType:(int64_t)type;
- (CGSize)intrinsicContentSize;
- (void)_updateImageWithType:(int64_t)type;
- (void)_updateTouchInsetsToFillContainerWithSize:(CGSize)size;
- (void)setGlyphColor:(id)color;
- (void)setShowBackgroundPlatter:(BOOL)platter;
- (void)setTransportType:(int64_t)type;
- (void)tintColorDidChange;
@end

@implementation CNTransportButton

- (void)_updateTouchInsetsToFillContainerWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)_updateImageWithType:(int64_t)type
{
  v5 = MEMORY[0x1E69DCAB8];
  glyphColor = [(CNTransportButton *)self glyphColor];
  v8 = [v5 cnui_symbolImageForTransportType:type withColor:glyphColor];

  if (v8)
  {
    [(CNTransportButton *)self setHidden:0];
    [(CNTransportButton *)self setImage:v8];
    image = [(CNTransportButton *)self image];
    [(CNTransportButton *)self setImage:image forState:0];
  }

  else
  {
    [(CNTransportButton *)self setHidden:1];
    [(CNTransportButton *)self setImage:0];
    [(CNTransportButton *)self setImage:0 forState:0];
  }
}

- (void)setGlyphColor:(id)color
{
  colorCopy = color;
  if (self->_glyphColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_glyphColor, color);
    [(CNTransportButton *)self setTintColor:v6];
    [(CNTransportButton *)self _updateImageWithType:[(CNTransportButton *)self transportType]];
    colorCopy = v6;
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = CNTransportButton;
  [(CNTransportButton *)&v4 tintColorDidChange];
  glyphColor = [(CNTransportButton *)self glyphColor];

  if (!glyphColor)
  {
    [(CNTransportButton *)self _updateImageWithType:[(CNTransportButton *)self transportType]];
  }
}

- (void)setShowBackgroundPlatter:(BOOL)platter
{
  if (self->_showBackgroundPlatter != platter)
  {
    self->_showBackgroundPlatter = platter;
    if (platter)
    {
      v5 = +[CNContactStyle currentStyle];
      transportBackgroundColor = [v5 transportBackgroundColor];
      [(CNTransportButton *)self setBackgroundColor:transportBackgroundColor];

      _screen = [(CNTransportButton *)self _screen];
      [_screen scale];
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

      layer = [(CNTransportButton *)self layer];
      [layer setCornerRadius:v9];

      layer2 = [(CNTransportButton *)self layer];
      [layer2 setBorderWidth:1.0];

      layer6 = +[CNContactStyle currentStyle];
      transportBorderColor = [layer6 transportBorderColor];
      cGColor = [transportBorderColor CGColor];
      layer3 = [(CNTransportButton *)self layer];
      [layer3 setBorderColor:cGColor];
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(CNTransportButton *)self setBackgroundColor:clearColor];

      layer4 = [(CNTransportButton *)self layer];
      [layer4 setCornerRadius:0.0];

      layer5 = [(CNTransportButton *)self layer];
      [layer5 setBorderWidth:0.0];

      layer6 = [(CNTransportButton *)self layer];
      [layer6 setBorderColor:0];
    }
  }
}

- (void)setTransportType:(int64_t)type
{
  if (self->_transportType != type)
  {
    self->_transportType = type;
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

+ (CNTransportButton)transportButtonWithType:(int64_t)type
{
  v3 = [self buttonWithType:type];
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