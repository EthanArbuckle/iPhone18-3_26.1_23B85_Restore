@interface HNDView
- (HNDView)initWithFrame:(CGRect)a3;
- (HNDViewDelegateControl)controlDelegate;
- (id)description;
- (void)handleRealUpEvent:(CGPoint)a3 maxOrb:(double)a4;
- (void)setIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5;
- (void)setIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5 inactiveAlpha:(double)a6;
@end

@implementation HNDView

- (HNDView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HNDView;
  v3 = [(HNDView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HNDView *)v3 setInactiveAlpha:0.2];
  return v3;
}

- (void)setIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5
{
  v7 = a3;
  [(HNDView *)self inactiveAlpha];

  [(HNDView *)self setIsActive:v7 withDuration:a5 options:a4 inactiveAlpha:v9];
}

- (void)setIsActive:(BOOL)a3 withDuration:(double)a4 options:(unint64_t)a5 inactiveAlpha:(double)a6
{
  self->_active = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064DA0;
  v6[3] = &unk_1001D4228;
  v6[4] = self;
  v7 = a3;
  *&v6[5] = a6;
  [UIView animateWithDuration:a5 delay:v6 options:0 animations:a4 completion:0.0];
}

- (void)handleRealUpEvent:(CGPoint)a3 maxOrb:(double)a4
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
  v4 = [(HNDView *)self accessibilityIdentifier];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (HNDViewDelegateControl)controlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlDelegate);

  return WeakRetained;
}

@end