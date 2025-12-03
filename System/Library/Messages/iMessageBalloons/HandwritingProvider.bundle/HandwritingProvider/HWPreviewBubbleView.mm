@interface HWPreviewBubbleView
- (CGSize)intrinsicContentSize;
- (DKInkView)inkView;
- (HWPreviewBubbleView)initWithCoder:(id)coder;
- (HWPreviewBubbleView)initWithFrame:(CGRect)frame;
- (id)updateImage;
- (void)_commonInit;
- (void)_updateCoronaColors;
- (void)setInkView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateVisibility;
@end

@implementation HWPreviewBubbleView

- (HWPreviewBubbleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HWPreviewBubbleView;
  v3 = [(HWPreviewBubbleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HWPreviewBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (HWPreviewBubbleView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HWPreviewBubbleView;
  v3 = [(HWPreviewBubbleView *)&v6 initWithCoder:coder];
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

  imageView = [(HWPreviewBubbleView *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(HWPreviewBubbleView *)self imageView];
  [imageView2 setContentMode:4];

  LODWORD(v7) = 1144750080;
  [(HWPreviewBubbleView *)self setContentHuggingPriority:1 forAxis:v7];
  imageView3 = [(HWPreviewBubbleView *)self imageView];
  [(HWPreviewBubbleView *)self addSubview:imageView3];

  v19 = _NSDictionaryOfVariableBindings(@"_imageView, margin", self->_imageView, &off_29C00, 0);
  v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(margin)-[_imageView]-(margin)-|", 0, v19, v19);
  [NSLayoutConstraint activateConstraints:v9];

  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(margin)-[_imageView]-(margin)-|", 0, v19, v19);
  [NSLayoutConstraint activateConstraints:v10];

  v11 = +[UIColor favoritesPickerItemBorderColor];
  cGColor = [v11 CGColor];
  layer = [(HWPreviewBubbleView *)self layer];
  [layer setBorderColor:cGColor];

  v14 = +[UIScreen mainScreen];
  [v14 scale];
  v16 = 1.0 / v15;
  layer2 = [(HWPreviewBubbleView *)self layer];
  [layer2 setBorderWidth:v16];

  layer3 = [(HWPreviewBubbleView *)self layer];
  [layer3 setCornerRadius:5.0];

  [(HWPreviewBubbleView *)self setClipsToBounds:1];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HWPreviewBubbleView;
  changeCopy = change;
  [(HWPreviewBubbleView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HWPreviewBubbleView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(HWPreviewBubbleView *)self _updateCoronaColors];
  }
}

- (void)_updateCoronaColors
{
  v6 = +[UIColor favoritesPickerItemBorderColor];
  v3 = v6;
  cGColor = [v6 CGColor];
  layer = [(HWPreviewBubbleView *)self layer];
  [layer setBorderColor:cGColor];
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
  inkView = [(HWPreviewBubbleView *)self inkView];
  [inkView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  currentDrawing = [inkView currentDrawing];
  totalPoints = [currentDrawing totalPoints];

  if ([inkView canvasHasInk])
  {
    if (self->_lastPointCount == totalPoints)
    {
      image = [(UIImageView *)self->_imageView image];
    }

    else
    {
      snapshotRendererState = [inkView snapshotRendererState];
      [(UIImageView *)self->_imageView bounds];
      Height = CGRectGetHeight(v39);
      [inkView bounds];
      v17 = Height / CGRectGetHeight(v40);
      currentDrawing2 = [inkView currentDrawing];
      CGAffineTransformMakeScale(&v36, v17, v17);
      v41.origin.x = v5;
      v41.origin.y = v7;
      v41.size.width = v9;
      v41.size.height = v11;
      v42 = CGRectApplyAffineTransform(v41, &v36);
      width = v42.size.width;
      v20 = v42.size.height;
      [currentDrawing2 strokesFrame];
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
      [snapshotRendererState drawInRect:{v29, 0.0, width, v20}];
      CGContextRestoreGState(CurrentContext);
      image = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      self->_lastPointCount = totalPoints;
    }
  }

  else
  {
    image = 0;
  }

  imageView = [(HWPreviewBubbleView *)self imageView];
  [imageView setImage:image];

  return image;
}

- (void)setInkView:(id)view
{
  obj = view;
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
  inkView = [(HWPreviewBubbleView *)self inkView];
  -[HWPreviewBubbleView setHidden:](self, "setHidden:", [inkView canvasHasInk] ^ 1);
}

- (DKInkView)inkView
{
  WeakRetained = objc_loadWeakRetained(&self->_inkView);

  return WeakRetained;
}

@end