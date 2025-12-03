@interface BKThumbnailScrubberCell
+ (id)emptyBackgroundColor;
- (BKThumbnailScrubberCell)initWithFrame:(CGRect)frame;
- (id)imageView;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setStrokeColor:(id)color;
@end

@implementation BKThumbnailScrubberCell

- (BKThumbnailScrubberCell)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = BKThumbnailScrubberCell;
  v3 = [(BKThumbnailScrubberCell *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKThumbnailScrubberCell *)v3 setOpaque:0];
    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v4->_imageView;
    v4->_imageView = v9;

    v11 = v4->_imageView;
    emptyBackgroundColor = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v11 setBackgroundColor:emptyBackgroundColor];

    [(BKThumbnailScrubberCell *)v4 insertSubview:v4->_imageView atIndex:0];
    v13 = objc_opt_new();
    borderLayer = v4->_borderLayer;
    v4->_borderLayer = v13;

    v15 = v4->_borderLayer;
    v16 = +[UIScreen mainScreen];
    [v16 scale];
    [(CALayer *)v15 setBorderWidth:1.0 / v17];

    [(CALayer *)v4->_borderLayer setBorderColor:[(UIColor *)v4->_strokeColor CGColor]];
    [(CALayer *)v4->_borderLayer setFrame:CGRectZero.origin.x, y, width, height];
    v18 = v4->_borderLayer;
    v19 = +[NSNull null];
    v20 = +[NSNull null];
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v19, @"bounds", v20, @"position", 0];
    [(CALayer *)v18 setActions:v21];

    layer = [(BKThumbnailScrubberCell *)v4 layer];
    [layer addSublayer:v4->_borderLayer];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKThumbnailScrubberCell;
  [(BKThumbnailScrubberCell *)&v4 layoutSubviews];
  borderLayer = self->_borderLayer;
  [(BKThumbnailScrubberCell *)self bounds];
  [(CALayer *)borderLayer setFrame:?];
  [(BKThumbnailScrubberCell *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (self->_strokeColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_strokeColor, color);
    borderLayer = self->_borderLayer;
    v7 = v8;
    [(CALayer *)borderLayer setBorderColor:[(UIColor *)v8 CGColor]];
    colorCopy = v8;
  }
}

+ (id)emptyBackgroundColor
{
  v2 = qword_22D0D8;
  if (!qword_22D0D8)
  {
    v3 = [[UIColor alloc] initWithWhite:1.0 alpha:0.5];
    v4 = qword_22D0D8;
    qword_22D0D8 = v3;

    v2 = qword_22D0D8;
  }

  return v2;
}

- (id)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_imageView;
    self->_imageView = v4;

    v6 = self->_imageView;
    emptyBackgroundColor = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v6 setBackgroundColor:emptyBackgroundColor];

    [(BKThumbnailScrubberCell *)self insertSubview:self->_imageView atIndex:0];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(BKThumbnailScrubberCell *)self imageView];
  [imageView setImage:imageCopy];

  [(BKThumbnailScrubberCell *)self setNeedsLayout];
}

@end