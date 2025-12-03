@interface BSUIScreenshotCell
+ (CGSize)itemSizeForRegularPad:(BOOL)pad maxSize:(CGSize)size;
+ (UIEdgeInsets)sectionInsetForRegularPad:(BOOL)pad maxSize:(CGSize)size artworkSize:(CGSize)artworkSize;
+ (double)borderWidth;
+ (double)bottomMarginWithRegularPad:(BOOL)pad;
+ (double)minimumLineSpacingWithRegularPad:(BOOL)pad;
- (BSUIScreenshotCell)initWithFrame:(CGRect)frame;
- (CGRect)_imageRectWithScreenshot:(id)screenshot;
- (void)configureWithScreenshot:(id)screenshot image:(id)image;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BSUIScreenshotCell

- (BSUIScreenshotCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = BSUIScreenshotCell;
  v3 = [(BSUIScreenshotCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [objc_opt_class() borderWidth];
    v7 = v6;
    layer = [(UIImageView *)v3->_imageView layer];
    [layer setBorderWidth:v7];

    layer2 = [(UIImageView *)v3->_imageView layer];
    [layer2 setCornerRadius:5.0];

    layer3 = [(UIImageView *)v3->_imageView layer];
    [layer3 setMasksToBounds:1];

    contentView = [(BSUIScreenshotCell *)v3 contentView];
    [contentView setAutoresizingMask:18];

    contentView2 = [(BSUIScreenshotCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = BSUIScreenshotCell;
  [(BSUIScreenshotCell *)&v12 layoutSubviews];
  [(BSUIScreenshotCell *)self _imageRectWithScreenshot:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(BSUIScreenshotCell *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = BSUIScreenshotCell;
  [(BSUIScreenshotCell *)&v4 prepareForReuse];
  imageView = [(BSUIScreenshotCell *)self imageView];
  [imageView setImage:0];
}

- (void)configureWithScreenshot:(id)screenshot image:(id)image
{
  imageCopy = image;
  [(BSUIScreenshotCell *)self _imageRectWithScreenshot:screenshot];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  imageView = [(BSUIScreenshotCell *)self imageView];
  [imageView setFrame:{v8, v10, v12, v14}];

  imageView2 = [(BSUIScreenshotCell *)self imageView];
  [imageView2 setImage:imageCopy];
}

- (CGRect)_imageRectWithScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v5 = screenshotCopy;
  if (screenshotCopy)
  {
    [screenshotCopy size];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    imageView = [(BSUIScreenshotCell *)self imageView];
    [imageView bounds];
    v7 = v11;
    v9 = v12;
  }

  v13 = v7 / v9;
  contentView = [(BSUIScreenshotCell *)self contentView];
  [contentView bounds];
  Height = CGRectGetHeight(v26);

  contentView2 = [(BSUIScreenshotCell *)self contentView];
  [contentView2 bounds];
  Width = CGRectGetWidth(v27);

  v18 = Width / Height <= v13;
  v19 = Width / v13;
  if (Width / Height > v13)
  {
    v20 = v13 * Height;
  }

  else
  {
    v20 = Width;
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = Height;
  }

  v22 = (Width - v20) * 0.5;
  v23 = (Height - v21) * 0.5;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (double)minimumLineSpacingWithRegularPad:(BOOL)pad
{
  result = 15.0;
  if (pad)
  {
    return 30.0;
  }

  return result;
}

+ (double)bottomMarginWithRegularPad:(BOOL)pad
{
  result = 52.0;
  if (!pad)
  {
    return 30.0;
  }

  return result;
}

+ (UIEdgeInsets)sectionInsetForRegularPad:(BOOL)pad maxSize:(CGSize)size artworkSize:(CGSize)artworkSize
{
  height = size.height;
  width = size.width;
  padCopy = pad;
  [self itemSizeForRegularPad:size.width maxSize:{size.height, artworkSize.width, artworkSize.height}];
  v10 = v9;
  v12 = v11;
  [self topMargin];
  v14 = height - (v13 + v12);
  if (v14 > v13)
  {
    [self topMargin];
    v16 = v15;
    [self bottomMarginWithRegularPad:padCopy];
    v13 = (height - (v16 + v17) - v12) * 0.5;
    v14 = v13;
  }

  v18 = (width - v10) * 0.5;
  v19 = v18;
  result.right = v19;
  result.bottom = v14;
  result.left = v18;
  result.top = v13;
  return result;
}

+ (CGSize)itemSizeForRegularPad:(BOOL)pad maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  padCopy = pad;
  [self bottomMarginWithRegularPad:?];
  v9 = v8;
  [self topMargin];
  v11 = height - (v9 + v10);
  [self minimumLineSpacingWithRegularPad:padCopy];
  v13 = width - v12;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (double)borderWidth
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

@end