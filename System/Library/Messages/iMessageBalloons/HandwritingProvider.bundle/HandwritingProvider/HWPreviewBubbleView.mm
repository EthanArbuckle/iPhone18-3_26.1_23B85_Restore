@interface HWPreviewBubbleView
- (CGSize)intrinsicContentSize;
- (DKInkView)inkView;
- (HWPreviewBubbleView)initWithCoder:(id)a3;
- (HWPreviewBubbleView)initWithFrame:(CGRect)a3;
- (id)updateImage;
- (void)_commonInit;
- (void)_updateCoronaColors;
- (void)setInkView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateVisibility;
@end

@implementation HWPreviewBubbleView

- (HWPreviewBubbleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HWPreviewBubbleView;
  v3 = [(HWPreviewBubbleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWPreviewBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (HWPreviewBubbleView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HWPreviewBubbleView;
  v3 = [(HWPreviewBubbleView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HWPreviewBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(HWPreviewBubbleView *)self updateVisibility];
  v3 = +[UIColor favoritesPickerItemBackgroundColor];
  [(HWPreviewBubbleView *)self setBackgroundColor:v3];

  v4 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(HWPreviewBubbleView *)self setImageView:v4];

  v5 = [(HWPreviewBubbleView *)self imageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HWPreviewBubbleView *)self imageView];
  [v6 setContentMode:4];

  LODWORD(v7) = 1144750080;
  [(HWPreviewBubbleView *)self setContentHuggingPriority:1 forAxis:v7];
  v8 = [(HWPreviewBubbleView *)self imageView];
  [(HWPreviewBubbleView *)self addSubview:v8];

  v19 = _NSDictionaryOfVariableBindings(@"_imageView, margin", self->_imageView, &off_29C00, 0);
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(margin)-[_imageView]-(margin)-|", 0, v19, v19);
  [NSLayoutConstraint activateConstraints:v9];

  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(margin)-[_imageView]-(margin)-|", 0, v19, v19);
  [NSLayoutConstraint activateConstraints:v10];

  v11 = +[UIColor favoritesPickerItemBorderColor];
  v12 = [v11 CGColor];
  v13 = [(HWPreviewBubbleView *)self layer];
  [v13 setBorderColor:v12];

  v14 = +[UIScreen mainScreen];
  [v14 scale];
  v16 = 1.0 / v15;
  v17 = [(HWPreviewBubbleView *)self layer];
  [v17 setBorderWidth:v16];

  v18 = [(HWPreviewBubbleView *)self layer];
  [v18 setCornerRadius:5.0];

  [(HWPreviewBubbleView *)self setClipsToBounds:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HWPreviewBubbleView;
  v4 = a3;
  [(HWPreviewBubbleView *)&v8 traitCollectionDidChange:v4];
  v5 = [(HWPreviewBubbleView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(HWPreviewBubbleView *)self _updateCoronaColors];
  }
}

- (void)_updateCoronaColors
{
  v6 = +[UIColor favoritesPickerItemBorderColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(HWPreviewBubbleView *)self layer];
  [v5 setBorderColor:v4];
}

- (CGSize)intrinsicContentSize
{
  v2 = 37.0;
  v3 = 37.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)updateImage
{
  v3 = [(HWPreviewBubbleView *)self inkView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 currentDrawing];
  v13 = [v12 totalPoints];

  if ([v3 canvasHasInk])
  {
    if (self->_lastPointCount == v13)
    {
      v14 = [(UIImageView *)self->_imageView image];
    }

    else
    {
      v15 = [v3 snapshotRendererState];
      [(UIImageView *)self->_imageView bounds];
      Height = CGRectGetHeight(v39);
      [v3 bounds];
      v17 = Height / CGRectGetHeight(v40);
      v18 = [v3 currentDrawing];
      CGAffineTransformMakeScale(&v36, v17, v17);
      v41.origin.x = v5;
      v41.origin.y = v7;
      v41.size.width = v9;
      v41.size.height = v11;
      v42 = CGRectApplyAffineTransform(v41, &v36);
      width = v42.size.width;
      v20 = v42.size.height;
      [v18 strokesFrame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      CGAffineTransformMakeScale(&v36, v17, v17);
      v43.origin.x = v22;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      v44 = CGRectApplyAffineTransform(v43, &v36);
      v29 = -v44.origin.x;
      v30 = ceil(CGRectGetWidth(v44));
      [(UIImageView *)self->_imageView bounds];
      v31 = CGRectGetHeight(v45);
      v38.width = v30;
      v38.height = v31;
      UIGraphicsBeginImageContextWithOptions(v38, 1, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      v33 = +[UIColor drawingCanvasBackgroundColor];
      CGContextSetFillColorWithColor(CurrentContext, [v33 CGColor]);

      v46.origin.x = 0.0;
      v46.origin.y = 0.0;
      v46.size.width = v30;
      v46.size.height = v31;
      CGContextFillRect(CurrentContext, v46);
      CGContextSaveGState(CurrentContext);
      CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
      [v15 drawInRect:{v29, 0.0, width, v20}];
      CGContextRestoreGState(CurrentContext);
      v14 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      self->_lastPointCount = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  v34 = [(HWPreviewBubbleView *)self imageView];
  [v34 setImage:v14];

  return v14;
}

- (void)setInkView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inkView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_inkView, obj);
    [(HWPreviewBubbleView *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (void)updateVisibility
{
  v3 = [(HWPreviewBubbleView *)self inkView];
  -[HWPreviewBubbleView setHidden:](self, "setHidden:", [v3 canvasHasInk] ^ 1);
}

- (DKInkView)inkView
{
  WeakRetained = objc_loadWeakRetained(&self->_inkView);

  return WeakRetained;
}

@end