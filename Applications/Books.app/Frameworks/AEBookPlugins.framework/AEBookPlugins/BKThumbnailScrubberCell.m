@interface BKThumbnailScrubberCell
+ (id)emptyBackgroundColor;
- (BKThumbnailScrubberCell)initWithFrame:(CGRect)a3;
- (id)imageView;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation BKThumbnailScrubberCell

- (BKThumbnailScrubberCell)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = BKThumbnailScrubberCell;
  v3 = [(BKThumbnailScrubberCell *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v12 = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v11 setBackgroundColor:v12];

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

    v22 = [(BKThumbnailScrubberCell *)v4 layer];
    [v22 addSublayer:v4->_borderLayer];
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

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_strokeColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_strokeColor, a3);
    borderLayer = self->_borderLayer;
    v7 = v8;
    [(CALayer *)borderLayer setBorderColor:[(UIColor *)v8 CGColor]];
    v5 = v8;
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
    v7 = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v6 setBackgroundColor:v7];

    [(BKThumbnailScrubberCell *)self insertSubview:self->_imageView atIndex:0];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(BKThumbnailScrubberCell *)self imageView];
  [v5 setImage:v4];

  [(BKThumbnailScrubberCell *)self setNeedsLayout];
}

@end