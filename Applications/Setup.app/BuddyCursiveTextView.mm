@interface BuddyCursiveTextView
- (BuddyCursiveTextView)init;
- (BuddyCursiveTextView)initWithFrame:(CGRect)frame;
- (void)configure;
- (void)layoutSubviews;
- (void)loadText:(id)text pointSize:(double)size;
- (void)setAccessibilityLabel:(id)label;
- (void)setFillColor:(id)color;
- (void)setTime:(float)time;
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

- (BuddyCursiveTextView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v6 = a2;
  location = 0;
  v5.receiver = self;
  v5.super_class = BuddyCursiveTextView;
  location = [(BuddyCursiveTextView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layer = [(BuddyCursiveTextView *)self layer];
  [layer addSublayer:self->_textLayer];
}

- (void)layoutSubviews
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyCursiveTextView;
  [(BuddyCursiveTextView *)&v7 layoutSubviews];
  textLayer = selfCopy->_textLayer;
  [(BuddyCursiveTextView *)selfCopy bounds];
  [(CAShapeLayer *)textLayer setFrame:v3, v4, v5, v6, *&v3, *&v4, *&v5, *&v6];
}

- (void)loadText:(id)text pointSize:(double)size
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  sizeCopy = size;
  v5 = [BuddyCursiveTextPath alloc];
  v6 = [(BuddyCursiveTextPath *)v5 initWithURL:location[0]];
  textPath = selfCopy->_textPath;
  selfCopy->_textPath = v6;

  if (selfCopy->_textPath)
  {
    p_textTransform = &selfCopy->_textTransform;
    v9 = selfCopy->_textPath;
    [(CAShapeLayer *)selfCopy->_textLayer bounds];
    if (v9)
    {
      [(BuddyCursiveTextPath *)v9 transformForRect:1 pointSize:v10 flipped:v11, v12, v13, sizeCopy];
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    memcpy(p_textTransform, __b, sizeof(CGAffineTransform));
  }

  objc_storeStrong(location, 0);
}

- (void)setTime:(float)time
{
  path = [(BuddyCursiveTextPath *)self->_textPath pathForTime:time];
  CopyByTransformingPath = CGPathCreateCopyByTransformingPath(path, &self->_textTransform);
  [(CAShapeLayer *)self->_textLayer setPath:CopyByTransformingPath];
  [(CAShapeLayer *)self->_textLayer setShadowPath:CopyByTransformingPath];
  CGPathRelease(CopyByTransformingPath);
  CGPathRelease(path);
}

- (void)setFillColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  -[CAShapeLayer setFillColor:](selfCopy->_textLayer, "setFillColor:", [location[0] CGColor]);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v3.receiver = selfCopy;
  v3.super_class = BuddyCursiveTextView;
  [(BuddyCursiveTextView *)&v3 setAccessibilityLabel:location[0]];
  [(BuddyCursiveTextPath *)selfCopy->_textPath setAccessibilityLabel:location[0]];
  objc_storeStrong(location, 0);
}

@end