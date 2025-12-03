@interface MKAttributionLabel
- (MKAttributionLabel)initWithFrame:(CGRect)frame;
- (id)_attributesWithStroke:(BOOL)stroke;
- (id)_labelTitle;
- (void)_prepareLabel;
- (void)_updateTextColor;
- (void)drawRect:(CGRect)rect;
- (void)setDisplayStyle:(int64_t)style;
- (void)setMapType:(unint64_t)type;
- (void)sizeToFit;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation MKAttributionLabel

- (void)_prepareLabel
{
  _labelTitle = [(MKAttributionLabel *)self _labelTitle];
  v3 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_labelTitle];
  v4 = [(MKAttributionLabel *)self _attributesWithStroke:1];
  [v3 setAttributes:v4 range:{0, objc_msgSend(v3, "length")}];

  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_labelTitle];
  v6 = [(MKAttributionLabel *)self _attributesWithStroke:0];
  [v5 setAttributes:v6 range:{0, objc_msgSend(v3, "length")}];

  v7 = [v3 copy];
  strokeText = self->_strokeText;
  self->_strokeText = v7;

  v9 = [v5 copy];
  innerText = self->_innerText;
  self->_innerText = v9;

  [(MKAttributionLabel *)self invalidateIntrinsicContentSize];
  [(UIView *)self _mapKit_setNeedsDisplay];
}

- (id)_labelTitle
{
  displayStyle = self->_displayStyle;
  if (!displayStyle)
  {
    v3 = @"Legal";
    goto LABEL_5;
  }

  if (displayStyle == 1)
  {
    v3 = @"Map Data";
LABEL_5:
    v4 = _MKLocalizedStringFromThisBundle(v3);
    goto LABEL_7;
  }

  v3 = 0;
  v4 = 0;
LABEL_7:
  if ([(__CFString *)v4 isEqualToString:@"<unlocalized>"])
  {
  }

  else
  {
    v3 = v4;
  }

  return v3;
}

- (void)_updateTextColor
{
  v3 = 0;
  mapType = self->_mapType;
  if (mapType - 1 >= 4 && mapType != 107)
  {
    traitCollection = [(MKAttributionLabel *)self traitCollection];
    v3 = [traitCollection userInterfaceStyle] != 2;
  }

  if (self->_useDarkText != v3)
  {
    self->_useDarkText = v3;

    [(MKAttributionLabel *)self _prepareLabel];
  }
}

- (void)sizeToFit
{
  [(NSAttributedString *)self->_strokeText boundingRectWithSize:0 options:0 context:1000.0, 1000.0];
  [(NSAttributedString *)self->_innerText boundingRectWithSize:0 options:0 context:1000.0, 1000.0];
  [(MKAttributionLabel *)self frame];
  v4 = v3;
  [(MKAttributionLabel *)self frame];

  [(MKAttributionLabel *)self setFrame:v4];
}

- (void)drawRect:(CGRect)rect
{
  v6.receiver = self;
  v6.super_class = MKAttributionLabel;
  [(MKAttributionLabel *)&v6 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  strokeText = self->_strokeText;
  [(MKAttributionLabel *)self bounds];
  [(NSAttributedString *)strokeText drawInRect:?];
  innerText = self->_innerText;
  [(MKAttributionLabel *)self bounds];
  [(NSAttributedString *)innerText drawInRect:?];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(MKAttributionLabel *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MKAttributionLabel *)self _updateTextColor];
  }
}

- (void)setDisplayStyle:(int64_t)style
{
  if (self->_displayStyle != style)
  {
    self->_displayStyle = style;
    [(MKAttributionLabel *)self _prepareLabel];
  }
}

- (void)setMapType:(unint64_t)type
{
  if (self->_mapType != type)
  {
    self->_mapType = type;
    [(MKAttributionLabel *)self _updateTextColor];
  }
}

- (id)_attributesWithStroke:(BOOL)stroke
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (stroke)
  {
    v13[0] = *MEMORY[0x1E69DB648];
    v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:9.0];
    v14[0] = v4;
    v13[1] = *MEMORY[0x1E69DB6C0];
    v5 = 0.0;
    if (self->_useDarkText)
    {
      v5 = 1.0;
    }

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:0.800000012];
    v14[1] = v6;
    v13[2] = *MEMORY[0x1E69DB6C8];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:5.0];
    v14[2] = v7;
    v13[3] = *MEMORY[0x1E69DB758];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v14[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  else
  {
    v11[0] = *MEMORY[0x1E69DB648];
    v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:9.0];
    v12[0] = v4;
    v11[1] = *MEMORY[0x1E69DB650];
    if (self->_useDarkText)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v6 = ;
    v12[1] = v6;
    v11[2] = *MEMORY[0x1E69DB758];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v12[2] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  return v9;
}

- (MKAttributionLabel)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MKAttributionLabel;
  v3 = [(MKAttributionLabel *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(MKAttributionLabel *)v3 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKAttributionLabel *)v4 setBackgroundColor:clearColor];

    [(MKAttributionLabel *)v4 setAlpha:0.5];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(MKAttributionLabel *)v4 registerForTraitChanges:v6 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v4->_useDarkText = 1;
    [(MKAttributionLabel *)v4 _updateTextColor];
    [(MKAttributionLabel *)v4 _prepareLabel];
  }

  return v4;
}

@end