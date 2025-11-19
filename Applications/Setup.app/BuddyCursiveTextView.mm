@interface BuddyCursiveTextView
- (BuddyCursiveTextView)init;
- (BuddyCursiveTextView)initWithFrame:(CGRect)a3;
- (void)configure;
- (void)layoutSubviews;
- (void)loadText:(id)a3 pointSize:(double)a4;
- (void)setAccessibilityLabel:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setTime:(float)a3;
@end

@implementation BuddyCursiveTextView

- (BuddyCursiveTextView)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyCursiveTextView;
  location = [(BuddyCursiveTextView *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location configure];
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (BuddyCursiveTextView)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyCursiveTextView;
  location = [(BuddyCursiveTextView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location configure];
  }

  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)configure
{
  v2 = objc_alloc_init(CAShapeLayer);
  textLayer = self->_textLayer;
  self->_textLayer = v2;

  v4 = self->_textLayer;
  [(BuddyCursiveTextView *)self bounds];
  [(CAShapeLayer *)v4 setFrame:v5, v6, v7, v8];
  [(CAShapeLayer *)self->_textLayer setShadowRadius:1.0];
  LODWORD(v9) = 1036831949;
  [(CAShapeLayer *)self->_textLayer setShadowOpacity:v9];
  v10 = self->_textLayer;
  v11 = sub_1000BB0E4();
  [(CAShapeLayer *)v10 setShadowOffset:v11, v12, *&v11, *&v12];
  v13 = [(BuddyCursiveTextView *)self layer];
  [v13 addSublayer:self->_textLayer];
}

- (void)layoutSubviews
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCursiveTextView;
  [(BuddyCursiveTextView *)&v7 layoutSubviews];
  textLayer = v9->_textLayer;
  [(BuddyCursiveTextView *)v9 bounds];
  [(CAShapeLayer *)textLayer setFrame:v3, v4, v5, v6, *&v3, *&v4, *&v5, *&v6];
}

- (void)loadText:(id)a3 pointSize:(double)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v5 = [BuddyCursiveTextPath alloc];
  v6 = [(BuddyCursiveTextPath *)v5 initWithURL:location[0]];
  textPath = v17->_textPath;
  v17->_textPath = v6;

  if (v17->_textPath)
  {
    p_textTransform = &v17->_textTransform;
    v9 = v17->_textPath;
    [(CAShapeLayer *)v17->_textLayer bounds];
    if (v9)
    {
      [(BuddyCursiveTextPath *)v9 transformForRect:1 pointSize:v10 flipped:v11, v12, v13, v15];
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    memcpy(p_textTransform, __b, sizeof(CGAffineTransform));
  }

  objc_storeStrong(location, 0);
}

- (void)setTime:(float)a3
{
  path = [(BuddyCursiveTextPath *)self->_textPath pathForTime:a3];
  CopyByTransformingPath = CGPathCreateCopyByTransformingPath(path, &self->_textTransform);
  [(CAShapeLayer *)self->_textLayer setPath:CopyByTransformingPath];
  [(CAShapeLayer *)self->_textLayer setShadowPath:CopyByTransformingPath];
  CGPathRelease(CopyByTransformingPath);
  CGPathRelease(path);
}

- (void)setFillColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  -[CAShapeLayer setFillColor:](v4->_textLayer, "setFillColor:", [location[0] CGColor]);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = BuddyCursiveTextView;
  [(BuddyCursiveTextView *)&v3 setAccessibilityLabel:location[0]];
  [(BuddyCursiveTextPath *)v5->_textPath setAccessibilityLabel:location[0]];
  objc_storeStrong(location, 0);
}

@end