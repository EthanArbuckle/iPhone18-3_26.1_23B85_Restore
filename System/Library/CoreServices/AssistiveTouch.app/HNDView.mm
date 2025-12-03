@interface HNDView
- (HNDView)initWithFrame:(CGRect)frame;
- (HNDViewDelegateControl)controlDelegate;
- (id)description;
- (void)handleRealUpEvent:(CGPoint)event maxOrb:(double)orb;
- (void)setIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options;
- (void)setIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options inactiveAlpha:(double)alpha;
@end

@implementation HNDView

- (HNDView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HNDView;
  v3 = [(HNDView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HNDView *)v3 setInactiveAlpha:0.2];
  return v3;
}

- (void)setIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options
{
  activeCopy = active;
  [(HNDView *)self inactiveAlpha];

  [(HNDView *)self setIsActive:activeCopy withDuration:options options:duration inactiveAlpha:v9];
}

- (void)setIsActive:(BOOL)active withDuration:(double)duration options:(unint64_t)options inactiveAlpha:(double)alpha
{
  self->_active = active;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064DA0;
  v6[3] = &unk_1001D4228;
  v6[4] = self;
  activeCopy = active;
  *&v6[5] = alpha;
  [UIView animateWithDuration:options delay:v6 options:0 animations:duration completion:0.0];
}

- (void)handleRealUpEvent:(CGPoint)event maxOrb:(double)orb
{
  WeakRetained = objc_loadWeakRetained(&self->_controlDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_controlDelegate);
    [v6 viewPressedUp:self];
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = HNDView;
  v3 = [(HNDView *)&v7 description];
  accessibilityIdentifier = [(HNDView *)self accessibilityIdentifier];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, accessibilityIdentifier];

  return v5;
}

- (HNDViewDelegateControl)controlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlDelegate);

  return WeakRetained;
}

@end