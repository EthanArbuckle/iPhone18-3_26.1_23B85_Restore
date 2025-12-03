@interface CalendarSpinner
- (CalendarSpinner)initWithViewController:(id)controller;
- (void)startSpinner;
- (void)stopSpinner;
@end

@implementation CalendarSpinner

- (CalendarSpinner)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CalendarSpinner;
  v5 = [(CalendarSpinner *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
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
  navigationItem = [WeakRetained navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  prevButtonItem = self->_prevButtonItem;
  self->_prevButtonItem = rightBarButtonItem;

  navigationItem2 = [WeakRetained navigationItem];
  [navigationItem2 setRightBarButtonItem:v3 animated:1];

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
  navigationItem = [WeakRetained navigationItem];
  [navigationItem setRightBarButtonItem:self->_prevButtonItem animated:1];
}

@end