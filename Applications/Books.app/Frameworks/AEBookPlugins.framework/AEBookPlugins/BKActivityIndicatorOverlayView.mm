@interface BKActivityIndicatorOverlayView
- (BKActivityIndicatorOverlayView)initWithBackgroundColor:(id)color foregroundColor:(id)foregroundColor;
- (void)_setAlpha:(double)alpha animated:(BOOL)animated animationDelay:(double)delay;
- (void)setAlpha:(double)alpha;
- (void)showIndicatorCenteredInView:(id)view animated:(BOOL)animated animationDelay:(double)delay;
@end

@implementation BKActivityIndicatorOverlayView

- (BKActivityIndicatorOverlayView)initWithBackgroundColor:(id)color foregroundColor:(id)foregroundColor
{
  colorCopy = color;
  foregroundColorCopy = foregroundColor;
  v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setColor:foregroundColorCopy];

  [v8 startAnimating];
  [v8 setHidesWhenStopped:0];
  [v8 sizeToFit];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGRectMultiply();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v45.receiver = self;
  v45.super_class = BKActivityIndicatorOverlayView;
  v25 = [(BKActivityIndicatorOverlayView *)&v45 initWithFrame:?];
  v26 = v25;
  if (v25)
  {
    [(BKActivityIndicatorOverlayView *)v25 setAutoresizingMask:45];
    [(BKActivityIndicatorOverlayView *)v26 setBackgroundColor:colorCopy];
    layer = [(BKActivityIndicatorOverlayView *)v26 layer];
    [layer setCornerRadius:10.0];

    [(BKActivityIndicatorOverlayView *)v26 setUserInteractionEnabled:0];
    [(BKActivityIndicatorOverlayView *)v26 setAlpha:0.0];
    objc_storeStrong(&v26->_activityIndicator, v8);
    [(BKActivityIndicatorOverlayView *)v26 addSubview:v26->_activityIndicator];
    widthAnchor = [(UIActivityIndicatorView *)v26->_activityIndicator widthAnchor];
    v47.origin.x = v10;
    v47.origin.y = v12;
    v47.size.width = v14;
    v47.size.height = v16;
    v42 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v47)];
    v46[0] = v42;
    heightAnchor = [(UIActivityIndicatorView *)v26->_activityIndicator heightAnchor];
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    v40 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v48)];
    v46[1] = v40;
    widthAnchor2 = [(BKActivityIndicatorOverlayView *)v26 widthAnchor];
    v49.origin.x = v18;
    v49.origin.y = v20;
    v49.size.width = v22;
    v49.size.height = v24;
    v38 = [widthAnchor2 constraintEqualToConstant:CGRectGetWidth(v49)];
    v46[2] = v38;
    heightAnchor2 = [(BKActivityIndicatorOverlayView *)v26 heightAnchor];
    v50.origin.x = v18;
    v50.origin.y = v20;
    v50.size.width = v22;
    v50.size.height = v24;
    v28 = [heightAnchor2 constraintEqualToConstant:CGRectGetHeight(v50)];
    v46[3] = v28;
    centerXAnchor = [(UIActivityIndicatorView *)v26->_activityIndicator centerXAnchor];
    [(BKActivityIndicatorOverlayView *)v26 centerXAnchor];
    v30 = v44 = colorCopy;
    v31 = [centerXAnchor constraintEqualToAnchor:v30];
    v46[4] = v31;
    centerYAnchor = [(UIActivityIndicatorView *)v26->_activityIndicator centerYAnchor];
    centerYAnchor2 = [(BKActivityIndicatorOverlayView *)v26 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[5] = v34;
    v35 = [NSArray arrayWithObjects:v46 count:6];
    [NSLayoutConstraint activateConstraints:v35];

    colorCopy = v44;
  }

  return v26;
}

- (void)setAlpha:(double)alpha
{
  activityIndicator = self->_activityIndicator;
  if (alpha <= 0.0)
  {
    [(UIActivityIndicatorView *)activityIndicator stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)activityIndicator startAnimating];
  }

  v6.receiver = self;
  v6.super_class = BKActivityIndicatorOverlayView;
  [(BKActivityIndicatorOverlayView *)&v6 setAlpha:alpha];
}

- (void)_setAlpha:(double)alpha animated:(BOOL)animated animationDelay:(double)delay
{
  animatedCopy = animated;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_773F0;
  v14[3] = &unk_1E4548;
  v14[4] = self;
  *&v14[5] = alpha;
  v9 = objc_retainBlock(v14);
  v10 = v9;
  if (animatedCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_773FC;
    v12[3] = &unk_1E2E08;
    v13 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_7740C;
    v11[3] = &unk_1E48D8;
    *&v11[5] = alpha;
    v11[4] = self;
    [UIView animateWithDuration:4 delay:v12 options:v11 animations:0.3 completion:delay];
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)showIndicatorCenteredInView:(id)view animated:(BOOL)animated animationDelay:(double)delay
{
  animatedCopy = animated;
  viewCopy = view;
  [viewCopy addSubview:self];
  [viewCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  [(BKActivityIndicatorOverlayView *)self setCenter:MidX, CGRectGetMidY(v20)];

  [(BKActivityIndicatorOverlayView *)self _setAlpha:animatedCopy animated:1.0 animationDelay:delay];
}

@end