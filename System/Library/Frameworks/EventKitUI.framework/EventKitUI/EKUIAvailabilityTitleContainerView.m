@interface EKUIAvailabilityTitleContainerView
- (CGSize)intrinsicContentSize;
- (EKUIAvailabilityViewController)controller;
- (void)layoutSubviews;
@end

@implementation EKUIAvailabilityTitleContainerView

- (CGSize)intrinsicContentSize
{
  v2 = 1000.0;
  v3 = 1000.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKUIAvailabilityTitleContainerView;
  [(EKUIAvailabilityTitleContainerView *)&v4 layoutSubviews];
  v3 = [(EKUIAvailabilityTitleContainerView *)self controller];
  [v3 configureNavBarAndToolBar];
}

- (EKUIAvailabilityViewController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end