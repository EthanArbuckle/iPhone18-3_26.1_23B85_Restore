@interface RPFlatVideoOverlayButton
- (RPFlatVideoOverlayButton)initWithStyle:(int64_t)style;
- (id)_createOverlayImageWithBackgroundWhite:(double)white backgroundAlpha:(double)alpha glyphAlpha:(double)glyphAlpha;
- (id)_highlightedButtonImage;
- (id)_normalButtonImage;
- (id)target;
- (void)_handleTap:(id)tap;
@end

@implementation RPFlatVideoOverlayButton

- (RPFlatVideoOverlayButton)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = RPFlatVideoOverlayButton;
  v4 = [(RPFlatVideoOverlayButton *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    _normalButtonImage = [(RPFlatVideoOverlayButton *)v4 _normalButtonImage];
    [(RPFlatVideoOverlayButton *)v5 setImage:_normalButtonImage forState:0];

    _highlightedButtonImage = [(RPFlatVideoOverlayButton *)v5 _highlightedButtonImage];
    [(RPFlatVideoOverlayButton *)v5 setImage:_highlightedButtonImage forState:1];

    [(RPFlatVideoOverlayButton *)v5 sizeToFit];
    [(RPFlatVideoOverlayButton *)v5 setDeliversTouchesForGesturesToSuperview:0];
    [(RPFlatVideoOverlayButton *)v5 addTarget:v5 action:"_handleTap:" forControlEvents:64];
  }

  return v5;
}

- (void)_handleTap:(id)tap
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  action = self->_action;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_target);
    [v7 performSelector:self->_action withObject:self];
  }
}

- (id)_normalButtonImage
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009678;
  block[3] = &unk_100018578;
  block[4] = self;
  if (qword_10001F0B8 != -1)
  {
    dispatch_once(&qword_10001F0B8, block);
  }

  return qword_10001F0B0;
}

- (id)_highlightedButtonImage
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009758;
  block[3] = &unk_100018578;
  block[4] = self;
  if (qword_10001F0C8 != -1)
  {
    dispatch_once(&qword_10001F0C8, block);
  }

  return qword_10001F0C0;
}

- (id)_createOverlayImageWithBackgroundWhite:(double)white backgroundAlpha:(double)alpha glyphAlpha:(double)glyphAlpha
{
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UIImage imageNamed:@"RPVideoOverlayBackgroundMask" inBundle:v8];
  v10 = [UIImage imageNamed:@"RPVideoOverlayGlyphMask" inBundle:v8];
  y = CGPointZero.y;
  [v9 size];
  width = v17.width;
  height = v17.height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetGrayFillColor(CurrentContext, white, alpha);
  v18.origin.x = CGPointZero.x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGContextFillRect(CurrentContext, v18);
  [v9 drawAtPoint:23 blendMode:CGPointZero.x alpha:{y, 1.0}];
  [v10 drawAtPoint:23 blendMode:CGPointZero.x alpha:{y, 1.0}];
  [v10 drawAtPoint:0 blendMode:CGPointZero.x alpha:{y, glyphAlpha}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end