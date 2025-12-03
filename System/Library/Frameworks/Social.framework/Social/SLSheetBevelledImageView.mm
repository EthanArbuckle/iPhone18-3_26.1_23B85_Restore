@interface SLSheetBevelledImageView
- (BOOL)generatePreviewImageFromAttachments;
- (CGSize)intrinsicContentSize;
- (SLSheetBevelledImageView)init;
- (void)ensurePlaceholderPreviewImage;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation SLSheetBevelledImageView

- (SLSheetBevelledImageView)init
{
  v21.receiver = self;
  v21.super_class = SLSheetBevelledImageView;
  v2 = [(SLSheetImagePreviewView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [(SLSheetBevelledImageView *)v2 intrinsicContentSize];
    [(SLSheetBevelledImageView *)v3 setBounds:v4, v5, v6, v7];
    layer = [(SLSheetBevelledImageView *)v3 layer];
    [layer setShouldRasterize:1];

    layer2 = [(SLSheetBevelledImageView *)v3 layer];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setRasterizationScale:?];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SLSheetBevelledImageView *)v3 setBackgroundColor:clearColor];

    v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(SLSheetBevelledImageView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    [(SLSheetImagePreviewView *)v3 setImageView:v13];

    imageView = [(SLSheetImagePreviewView *)v3 imageView];
    [imageView setContentMode:2];

    imageView2 = [(SLSheetImagePreviewView *)v3 imageView];
    [imageView2 setClipsToBounds:1];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    imageView3 = [(SLSheetImagePreviewView *)v3 imageView];
    [imageView3 setBackgroundColor:clearColor2];

    imageView4 = [(SLSheetImagePreviewView *)v3 imageView];
    [imageView4 setAutoresizingMask:18];

    imageView5 = [(SLSheetImagePreviewView *)v3 imageView];
    [(SLSheetBevelledImageView *)v3 addSubview:imageView5];

    [(SLSheetBevelledImageView *)v3 setNeedsLayout];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = SLSheetBevelledImageView;
  [(SLSheetImagePreviewView *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  image = [(SLSheetImagePreviewView *)self image];

  if (image)
  {
    image2 = [(SLSheetImagePreviewView *)self image];
    [image2 size];
    v10 = v9;
    image3 = [(SLSheetImagePreviewView *)self image];
    [image3 size];
    v13 = v10 / v12;

    if (v13 < 0.8)
    {
      v4 = v6 * v13;
    }
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)ensurePlaceholderPreviewImage
{
  if ([(SLSheetBevelledImageView *)self needsURLPlaceholderImage]&& !self->_placeholderPreviewView)
  {
    _SLLog(v2, 7, @"SLSheetBevelledImageView ensurePlaceholderPreviewImage building placeholder");
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    imageView = [(SLSheetImagePreviewView *)self imageView];
    [imageView frame];
    v6 = [v4 initWithFrame:?];
    placeholderPreviewView = self->_placeholderPreviewView;
    self->_placeholderPreviewView = v6;

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.87 alpha:1.0];
    [(UIView *)self->_placeholderPreviewView setBackgroundColor:v8];

    [(UIView *)self->_placeholderPreviewView setAutoresizingMask:18];
    [(UIView *)self->_placeholderPreviewView bounds];
    v10 = v9 * 0.222222222;
    [(UIView *)self->_placeholderPreviewView bounds];
    v20 = CGRectInset(v19, v10, v10);
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
    placeholderGlyphView = self->_placeholderGlyphView;
    self->_placeholderGlyphView = v11;

    [(UIImageView *)self->_placeholderGlyphView setContentMode:2];
    [(UIImageView *)self->_placeholderGlyphView setClipsToBounds:1];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)self->_placeholderGlyphView setTintColor:whiteColor];

    v14 = [MEMORY[0x1E69DCAB8] socialFrameworkImageNamed:@"URLPlaceholderPreviewGlyph"];
    v15 = [v14 imageWithRenderingMode:2];
    [(UIImageView *)self->_placeholderGlyphView setImage:v15];

    image = [(UIImageView *)self->_placeholderGlyphView image];
    _SLLog(v2, 7, @"SLSheetBevelledImageView ensurePlaceholderPreviewImage loaded placeholder glyph %@");

    [(UIView *)self->_placeholderPreviewView addSubview:self->_placeholderGlyphView, image];
    v16 = self->_placeholderPreviewView;

    [(SLSheetBevelledImageView *)self addSubview:v16];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderPreviewView)
  {
    _SLLog(v3, 7, @"SLSheetBevelledImageView setImage: removing placeholder");
    [(UIView *)self->_placeholderPreviewView removeFromSuperview];
    placeholderPreviewView = self->_placeholderPreviewView;
    self->_placeholderPreviewView = 0;
  }

  v7.receiver = self;
  v7.super_class = SLSheetBevelledImageView;
  [(SLSheetImagePreviewView *)&v7 setImage:imageCopy];
  [(SLSheetBevelledImageView *)self invalidateIntrinsicContentSize];
}

- (BOOL)generatePreviewImageFromAttachments
{
  if ([(SLSheetBevelledImageView *)self needsURLPlaceholderImage])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SLSheetBevelledImageView;
  return [(SLSheetImagePreviewView *)&v4 generatePreviewImageFromAttachments];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SLSheetBevelledImageView;
  [(SLSheetBevelledImageView *)&v6 layoutSubviews];
  placeholderPreviewView = self->_placeholderPreviewView;
  if (placeholderPreviewView)
  {
    [(UIView *)placeholderPreviewView bounds];
    v5 = v4 * 0.222222222;
    [(UIView *)self->_placeholderPreviewView bounds];
    v8 = CGRectInset(v7, v5, v5);
    [(UIImageView *)self->_placeholderGlyphView setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
  }
}

@end