@interface MKMarkerContentView
- (MKMarkerContentView)initWithFrame:(CGRect)a3;
- (void)_updateTintColor;
- (void)clear;
- (void)clearCustomContentView;
- (void)clearGlyphImage;
- (void)clearGlyphText;
- (void)setCustomContentView:(id)a3;
- (void)setGlyphFontSize:(double)a3;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphText:(id)a3;
- (void)setGlyphTintColor:(id)a3;
- (void)setupGlypLabel;
- (void)setupImageView;
@end

@implementation MKMarkerContentView

- (void)clearCustomContentView
{
  customContentView = self->_customContentView;
  self->_customContentView = 0;

  [(UIView *)self->_contentMaskView removeFromSuperview];
  contentMaskView = self->_contentMaskView;
  self->_contentMaskView = 0;
}

- (void)setCustomContentView:(id)a3
{
  v5 = a3;
  customContentView = self->_customContentView;
  if (customContentView != v5)
  {
    v15 = v5;
    [(UIView *)customContentView removeFromSuperview];
    objc_storeStrong(&self->_customContentView, a3);
    if (self->_customContentView)
    {
      [(MKMarkerContentView *)self clearGlyphText];
      [(MKMarkerContentView *)self clearGlyphImage];
      if (!self->_contentMaskView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DD250]);
        [(MKMarkerContentView *)self bounds];
        v8 = [v7 initWithFrame:?];
        contentMaskView = self->_contentMaskView;
        self->_contentMaskView = v8;

        [(UIView *)self->_contentMaskView setAutoresizingMask:18];
        [(UIView *)self->_contentMaskView _setHostsLayoutEngine:1];
        v10 = [(UIView *)self->_contentMaskView layer];
        [v10 setMasksToBounds:1];

        [(MKMarkerContentView *)self bounds];
        v12 = v11 * 0.5;
        v13 = [(UIView *)self->_contentMaskView layer];
        [v13 setCornerRadius:v12];

        [(MKMarkerContentView *)self addSubview:self->_contentMaskView];
      }

      [(UIView *)self->_customContentView setTranslatesAutoresizingMaskIntoConstraints:1];
      [(UIView *)self->_customContentView setAutoresizingMask:18];
      [(UIView *)self->_contentMaskView bounds];
      [(UIView *)self->_customContentView setFrame:?];
      [(UIView *)self->_contentMaskView addSubview:self->_customContentView];
    }

    else
    {
      [(UIView *)self->_contentMaskView removeFromSuperview];
      v14 = self->_contentMaskView;
      self->_contentMaskView = 0;
    }

    v5 = v15;
  }
}

- (void)_updateTintColor
{
  [(UIImageView *)self->_imageView setTintColor:self->_glyphTintColor];
  glyphTintColor = self->_glyphTintColor;
  label = self->_label;

  [(_MKUILabel *)label setTextColor:glyphTintColor];
}

- (void)setGlyphTintColor:(id)a3
{
  v5 = a3;
  if (self->_glyphTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyphTintColor, a3);
    [(MKMarkerContentView *)self _updateTintColor];
    v5 = v6;
  }
}

- (void)clearGlyphImage
{
  glyphImage = self->_glyphImage;
  self->_glyphImage = 0;

  [(UIImageView *)self->_imageView removeFromSuperview];
  imageView = self->_imageView;
  self->_imageView = 0;
}

- (void)setupImageView
{
  [(MKMarkerContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMarkerContentView *)self bounds];
  v12 = v11 / 6.0;
  [(MKMarkerContentView *)self bounds];
  v14 = v13 / 6.0;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v20 = CGRectInset(v19, v12, v14);
  v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  imageView = self->_imageView;
  self->_imageView = v15;

  [(UIImageView *)self->_imageView _mapkit_setImageContentMode:1];
  [(MKMarkerContentView *)self _updateTintColor];
  v17 = self->_imageView;

  [(MKMarkerContentView *)self addSubview:v17];
}

- (void)setGlyphImage:(id)a3
{
  v5 = a3;
  if (self->_glyphImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_glyphImage, a3);
    if (self->_glyphImage)
    {
      [(MKMarkerContentView *)self clearGlyphText];
      [(MKMarkerContentView *)self clearCustomContentView];
      imageView = self->_imageView;
      if (!imageView)
      {
        [(MKMarkerContentView *)self setupImageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:self->_glyphImage];
    }

    else
    {
      [(MKMarkerContentView *)self clearGlyphImage];
    }

    v5 = v7;
  }
}

- (void)clearGlyphText
{
  glyphText = self->_glyphText;
  self->_glyphText = 0;

  [(_MKUILabel *)self->_label removeFromSuperview];
  label = self->_label;
  self->_label = 0;
}

- (void)setupGlypLabel
{
  [(MKMarkerContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMarkerContentView *)self bounds];
  v12 = v11 / 6.0;
  [(MKMarkerContentView *)self bounds];
  v14 = v13 / 6.0;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v21 = CGRectInset(v20, v12, v14);
  v15 = [[_MKUILabel alloc] initWithFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  label = self->_label;
  self->_label = v15;

  [(_MKUILabel *)self->_label setTextAlignment:1];
  [(_MKUILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
  [(_MKUILabel *)self->_label setBaselineAdjustment:1];
  v17 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:self->_glyphFontSize];
  [(_MKUILabel *)self->_label setFont:v17];

  [(MKMarkerContentView *)self _updateTintColor];
  v18 = self->_label;

  [(MKMarkerContentView *)self addSubview:v18];
}

- (void)setGlyphText:(id)a3
{
  v4 = a3;
  if (self->_glyphText != v4)
  {
    v8 = v4;
    v5 = [(NSString *)v4 copy];
    glyphText = self->_glyphText;
    self->_glyphText = v5;

    if (self->_glyphText)
    {
      [(MKMarkerContentView *)self clearGlyphImage];
      [(MKMarkerContentView *)self clearCustomContentView];
      label = self->_label;
      if (!label)
      {
        [(MKMarkerContentView *)self setupGlypLabel];
        label = self->_label;
      }

      [(_MKUILabel *)label setText:v8];
    }

    else
    {
      [(MKMarkerContentView *)self clearGlyphText];
    }

    v4 = v8;
  }
}

- (void)setGlyphFontSize:(double)a3
{
  self->_glyphFontSize = a3;
  if (self->_label)
  {
    v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:?];
    [(_MKUILabel *)self->_label setFont:v4];
  }
}

- (void)clear
{
  glyphTintColor = self->_glyphTintColor;
  self->_glyphTintColor = 0;

  [(MKMarkerContentView *)self clearGlyphText];
  [(MKMarkerContentView *)self clearGlyphImage];

  [(MKMarkerContentView *)self clearCustomContentView];
}

- (MKMarkerContentView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MKMarkerContentView;
  result = [(MKMarkerContentView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_glyphFontSize = 16.0;
  }

  return result;
}

@end