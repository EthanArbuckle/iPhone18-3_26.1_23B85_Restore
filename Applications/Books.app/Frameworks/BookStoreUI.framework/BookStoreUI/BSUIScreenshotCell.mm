@interface BSUIScreenshotCell
+ (CGSize)itemSizeForRegularPad:(BOOL)a3 maxSize:(CGSize)a4;
+ (UIEdgeInsets)sectionInsetForRegularPad:(BOOL)a3 maxSize:(CGSize)a4 artworkSize:(CGSize)a5;
+ (double)borderWidth;
+ (double)bottomMarginWithRegularPad:(BOOL)a3;
+ (double)minimumLineSpacingWithRegularPad:(BOOL)a3;
- (BSUIScreenshotCell)initWithFrame:(CGRect)a3;
- (CGRect)_imageRectWithScreenshot:(id)a3;
- (void)configureWithScreenshot:(id)a3 image:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BSUIScreenshotCell

- (BSUIScreenshotCell)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = BSUIScreenshotCell;
  v3 = [(BSUIScreenshotCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [objc_opt_class() borderWidth];
    v7 = v6;
    v8 = [(UIImageView *)v3->_imageView layer];
    [v8 setBorderWidth:v7];

    v9 = [(UIImageView *)v3->_imageView layer];
    [v9 setCornerRadius:5.0];

    v10 = [(UIImageView *)v3->_imageView layer];
    [v10 setMasksToBounds:1];

    v11 = [(BSUIScreenshotCell *)v3 contentView];
    [v11 setAutoresizingMask:18];

    v12 = [(BSUIScreenshotCell *)v3 contentView];
    [v12 addSubview:v3->_imageView];
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
  v11 = [(BSUIScreenshotCell *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = BSUIScreenshotCell;
  [(BSUIScreenshotCell *)&v4 prepareForReuse];
  v3 = [(BSUIScreenshotCell *)self imageView];
  [v3 setImage:0];
}

- (void)configureWithScreenshot:(id)a3 image:(id)a4
{
  v6 = a4;
  [(BSUIScreenshotCell *)self _imageRectWithScreenshot:a3];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(BSUIScreenshotCell *)self imageView];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(BSUIScreenshotCell *)self imageView];
  [v16 setImage:v6];
}

- (CGRect)_imageRectWithScreenshot:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 size];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = [(BSUIScreenshotCell *)self imageView];
    [v10 bounds];
    v7 = v11;
    v9 = v12;
  }

  v13 = v7 / v9;
  v14 = [(BSUIScreenshotCell *)self contentView];
  [v14 bounds];
  Height = CGRectGetHeight(v26);

  v16 = [(BSUIScreenshotCell *)self contentView];
  [v16 bounds];
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

+ (double)minimumLineSpacingWithRegularPad:(BOOL)a3
{
  result = 15.0;
  if (a3)
  {
    return 30.0;
  }

  return result;
}

+ (double)bottomMarginWithRegularPad:(BOOL)a3
{
  result = 52.0;
  if (!a3)
  {
    return 30.0;
  }

  return result;
}

+ (UIEdgeInsets)sectionInsetForRegularPad:(BOOL)a3 maxSize:(CGSize)a4 artworkSize:(CGSize)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [a1 itemSizeForRegularPad:a4.width maxSize:{a4.height, a5.width, a5.height}];
  v10 = v9;
  v12 = v11;
  [a1 topMargin];
  v14 = height - (v13 + v12);
  if (v14 > v13)
  {
    [a1 topMargin];
    v16 = v15;
    [a1 bottomMarginWithRegularPad:v7];
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

+ (CGSize)itemSizeForRegularPad:(BOOL)a3 maxSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [a1 bottomMarginWithRegularPad:?];
  v9 = v8;
  [a1 topMargin];
  v11 = height - (v9 + v10);
  [a1 minimumLineSpacingWithRegularPad:v6];
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