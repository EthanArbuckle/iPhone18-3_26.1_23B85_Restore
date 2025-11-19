@interface ExtensionsBannerView
- (CGSize)intrinsicContentSize;
- (ExtensionsBannerView)initWithCoder:(id)a3;
- (ExtensionsBannerView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateConstraints;
- (void)setRemoteView:(id)a3;
@end

@implementation ExtensionsBannerView

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 137.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setRemoteView:(id)a3
{
  v5 = a3;
  remoteView = self->_remoteView;
  if (remoteView != v5)
  {
    v8 = v5;
    [(UIView *)remoteView removeFromSuperview];
    objc_storeStrong(&self->_remoteView, a3);
    v5 = v8;
    if (v8)
    {
      [(ExtensionsBannerView *)self insertSubview:v8 belowSubview:self->_occludingView];
      [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(UIView *)v8 _maps_constraintsForCenteringInView:self];
      [NSLayoutConstraint activateConstraints:v7];

      v5 = v8;
    }
  }
}

- (void)_updateConstraints
{
  [(ExtensionsBannerView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_occludingView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(UIView *)self->_occludingView _maps_constraintsForCenteringInView:self];
  [NSLayoutConstraint activateConstraints:v3];
}

- (void)_commonInit
{
  v3 = objc_alloc_init(UIView);
  occludingView = self->_occludingView;
  self->_occludingView = v3;

  v5 = [(UIView *)self->_occludingView layer];
  [v5 setHitTestsAsOpaque:1];

  [(ExtensionsBannerView *)self addSubview:self->_occludingView];

  [(ExtensionsBannerView *)self _updateConstraints];
}

- (ExtensionsBannerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsBannerView;
  v3 = [(ExtensionsBannerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsBannerView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsBannerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ExtensionsBannerView;
  v3 = [(ExtensionsBannerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsBannerView *)v3 _commonInit];
  }

  return v4;
}

@end