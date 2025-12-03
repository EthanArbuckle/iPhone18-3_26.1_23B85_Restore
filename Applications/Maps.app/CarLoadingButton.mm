@interface CarLoadingButton
- (UIActivityIndicatorView)activityIndicator;
- (void)setLoading:(BOOL)loading;
@end

@implementation CarLoadingButton

- (UIActivityIndicatorView)activityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);

  return WeakRetained;
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    if (loading)
    {
      obj = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [obj setAccessibilityIdentifier:@"CarLoadingButtonActivityIndicator"];
      [obj setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarLoadingButton *)self addSubview:obj];
      v5 = [obj _maps_constraintsForCenteringInView:self];
      [NSLayoutConstraint activateConstraints:v5];

      [obj startAnimating];
      objc_storeWeak(&self->_activityIndicator, obj);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);
      [WeakRetained stopAnimating];

      obj = objc_loadWeakRetained(&self->_activityIndicator);
      [obj removeFromSuperview];
    }
  }
}

@end