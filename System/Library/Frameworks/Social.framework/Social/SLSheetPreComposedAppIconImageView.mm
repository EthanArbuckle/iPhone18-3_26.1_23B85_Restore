@interface SLSheetPreComposedAppIconImageView
- (CGSize)intrinsicContentSize;
- (SLSheetPreComposedAppIconImageView)init;
- (UIEdgeInsets)alignmentRectInsets;
- (void)setImage:(id)image;
@end

@implementation SLSheetPreComposedAppIconImageView

- (SLSheetPreComposedAppIconImageView)init
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v15.receiver = self;
  v15.super_class = SLSheetPreComposedAppIconImageView;
  v4 = [(SLSheetImagePreviewView *)&v15 initWithFrame:v2, v3, 110.0, 110.0];
  v5 = v4;
  if (v4)
  {
    layer = [(SLSheetPreComposedAppIconImageView *)v4 layer];
    [layer setShouldRasterize:1];

    layer2 = [(SLSheetPreComposedAppIconImageView *)v5 layer];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setRasterizationScale:?];

    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v16.origin.x = v2;
    v16.origin.y = v3;
    v16.size.width = 110.0;
    v16.size.height = 110.0;
    v17 = CGRectInset(v16, 6.5, 6.5);
    v10 = [v9 initWithFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
    [(SLSheetImagePreviewView *)v5 setImageView:v10];

    imageView = [(SLSheetImagePreviewView *)v5 imageView];
    [imageView setContentMode:2];

    imageView2 = [(SLSheetImagePreviewView *)v5 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(SLSheetImagePreviewView *)v5 imageView];
    [(SLSheetPreComposedAppIconImageView *)v5 addSubview:imageView3];

    [(SLSheetPreComposedAppIconImageView *)v5 setNeedsLayout];
  }

  return v5;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (image)
  {
    [imageCopy size];
    width = v7;
    height = v9;
    [(SLSheetPreComposedAppIconImageView *)self bounds];
    x = (v11 - width) * 0.5;
    [(SLSheetPreComposedAppIconImageView *)self bounds];
    y = (v13 - height) * 0.5;
  }

  else
  {
    [(SLSheetPreComposedAppIconImageView *)self bounds];
    v18 = CGRectInset(v17, 6.5, 6.5);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  imageView = [(SLSheetImagePreviewView *)self imageView];
  [imageView setFrame:{x, y, width, height}];

  v16.receiver = self;
  v16.super_class = SLSheetPreComposedAppIconImageView;
  [(SLSheetImagePreviewView *)&v16 setImage:v6];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 8.0;
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 94.0;
  v3 = 94.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end