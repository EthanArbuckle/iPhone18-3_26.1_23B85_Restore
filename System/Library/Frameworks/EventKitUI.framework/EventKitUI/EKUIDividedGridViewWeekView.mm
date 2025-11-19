@interface EKUIDividedGridViewWeekView
- (EKUIDividedGridViewWeekView)init;
- (NSLayoutConstraint)heightConstraint;
@end

@implementation EKUIDividedGridViewWeekView

- (EKUIDividedGridViewWeekView)init
{
  v5.receiver = self;
  v5.super_class = EKUIDividedGridViewWeekView;
  v2 = [(EKUIDividedGridViewWeekView *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(EKUIDividedGridViewWeekView *)v2 setButtonViews:v3];
  }

  return v2;
}

- (NSLayoutConstraint)heightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_heightConstraint);

  return WeakRetained;
}

@end