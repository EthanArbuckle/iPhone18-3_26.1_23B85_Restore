@interface BYODSpinner
- (BYODSpinner)initWithViewController:(id)a3;
- (void)startSpinner;
- (void)stopSpinner;
@end

@implementation BYODSpinner

- (BYODSpinner)initWithViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BYODSpinner;
  v5 = [(BYODSpinner *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v6->_spinner;
    v6->_spinner = v7;
  }

  return v6;
}

- (void)startSpinner
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v3 = [[UIBarButtonItem alloc] initWithCustomView:self->_spinner];
  v4 = [WeakRetained navigationItem];
  v5 = [v4 rightBarButtonItem];
  prevButtonItem = self->_prevButtonItem;
  self->_prevButtonItem = v5;

  v7 = [WeakRetained navigationItem];
  [v7 setRightBarButtonItem:v3 animated:1];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

- (void)stopSpinner
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v4 = [WeakRetained navigationItem];
  [v4 setRightBarButtonItem:self->_prevButtonItem animated:1];
}

@end