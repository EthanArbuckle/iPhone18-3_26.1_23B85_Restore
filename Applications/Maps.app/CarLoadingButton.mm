@interface CarLoadingButton
- (UIActivityIndicatorView)activityIndicator;
- (void)setLoading:(BOOL)a3;
@end

@implementation CarLoadingButton

- (UIActivityIndicatorView)activityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicator);

  return WeakRetained;
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    if (a3)
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