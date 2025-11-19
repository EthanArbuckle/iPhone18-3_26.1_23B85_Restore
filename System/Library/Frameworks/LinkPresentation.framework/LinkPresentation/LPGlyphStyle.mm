@interface LPGlyphStyle
- (LPGlyphStyle)init;
- (id)initSearchGlyph;
@end

@implementation LPGlyphStyle

- (LPGlyphStyle)init
{
  v12.receiver = self;
  v12.super_class = LPGlyphStyle;
  v2 = [(LPGlyphStyle *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_opacity = 1.0;
    v4 = objc_alloc_init(LPPadding);
    padding = v3->_padding;
    v3->_padding = v4;

    v6 = objc_alloc_init(LPImageViewStyle);
    imageStyle = v3->_imageStyle;
    v3->_imageStyle = v6;

    v8 = +[LPPointUnit zero];
    baselineOffset = v3->_baselineOffset;
    v3->_baselineOffset = v8;

    v10 = v3;
  }

  return v3;
}

- (id)initSearchGlyph
{
  v2 = [(LPGlyphStyle *)self init];
  if (v2)
  {
    v3 = +[LPResources searchGlyph];
    image = v2->_image;
    v2->_image = v3;

    v2->_opacity = 0.5;
    v5 = [[LPPointUnit alloc] initWithValue:-4.0];
    [(LPPadding *)v2->_padding setLeading:v5];

    v6 = +[LPPointUnit zero];
    [(LPPadding *)v2->_padding setTrailing:v6];

    v7 = [[LPPointUnit alloc] initWithValue:-7.0];
    baselineOffset = v2->_baselineOffset;
    v2->_baselineOffset = v7;

    v9 = [[LPSize alloc] initWithSquareSize:20.0];
    [(LPImageViewStyle *)v2->_imageStyle setFixedSize:v9];

    [(LPImageViewStyle *)v2->_imageStyle setFilter:4];
    v10 = [MEMORY[0x1E69DC888] labelColor];
    [(LPImageViewStyle *)v2->_imageStyle setMaskColor:v10];

    v11 = v2;
  }

  return v2;
}

@end