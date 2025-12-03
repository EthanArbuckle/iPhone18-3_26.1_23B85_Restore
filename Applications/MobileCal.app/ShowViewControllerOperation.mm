@interface ShowViewControllerOperation
- (ShowViewControllerOperation)initWithViewControllerToShow:(id)show toBeShownInViewController:(id)controller shouldBeModal:(BOOL)modal shouldShowWithAnimation:(BOOL)animation;
- (id)description;
- (void)cancel;
- (void)doInternalPresentation;
- (void)finish;
- (void)main;
- (void)start;
@end

@implementation ShowViewControllerOperation

- (ShowViewControllerOperation)initWithViewControllerToShow:(id)show toBeShownInViewController:(id)controller shouldBeModal:(BOOL)modal shouldShowWithAnimation:(BOOL)animation
{
  showCopy = show;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = ShowViewControllerOperation;
  v13 = [(ShowViewControllerOperation *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_shownViewController, show);
    objc_storeStrong(&v14->_parentOfShownViewController, controller);
    v14->_shouldBeModal = modal;
    v14->_shouldShowWithAnimation = animation;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    uTF8String = [v16 UTF8String];

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    [(ShowViewControllerOperation *)v14 setQueue:v19];
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [NSString stringWithFormat:@"%@ shows view controller %@", v3, objc_opt_class()];
  [(ShowViewControllerOperation *)self setName:v4];

  v5 = [CalDescriptionBuilder alloc];
  v10.receiver = self;
  v10.super_class = ShowViewControllerOperation;
  v6 = [(ShowViewControllerOperation *)&v10 description];
  v7 = [v5 initWithSuperclassDescription:v6];

  [v7 setKey:@"_shouldBeModal" withBoolean:self->_shouldBeModal];
  build = [v7 build];

  return build;
}

- (void)doInternalPresentation
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    *buf = 138412802;
    v24 = v5;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = objc_opt_class();
    v9 = v28;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ operation instructing %@ to modally present %@.", buf, 0x20u);
  }

  presentingViewController = [(UIViewController *)self->_shownViewController presentingViewController];

  if (presentingViewController)
  {
    v11 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      shownViewController = self->_shownViewController;
      v13 = v11;
      presentingViewController2 = [(UIViewController *)shownViewController presentingViewController];
      *buf = 138412546;
      v24 = shownViewController;
      v25 = 2112;
      v26 = presentingViewController2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[51150180] Requested to present %@ but it's already presented by %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(UIViewController *)self->_parentOfShownViewController delegate];
  }

  else
  {
    delegate = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate navigationController:self->_parentOfShownViewController willShowViewController:self->_shownViewController animated:self->_shouldShowWithAnimation];
  }

  parentOfShownViewController = self->_parentOfShownViewController;
  v17 = self->_shownViewController;
  shouldShowWithAnimation = self->_shouldShowWithAnimation;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10014D1B8;
  v20[3] = &unk_10020EC68;
  v21 = delegate;
  selfCopy = self;
  v19 = delegate;
  [(UIViewController *)parentOfShownViewController presentViewController:v17 animated:shouldShowWithAnimation completion:v20];
}

- (void)start
{
  queue = [(ShowViewControllerOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D3BC;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)main
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Executing operation: %@", buf, 0xCu);
  }

  [(ShowViewControllerOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(ShowViewControllerOperation *)self didChangeValueForKey:@"isExecuting"];
  if (([(ShowViewControllerOperation *)self isCancelled]& 1) != 0)
  {
    [(ShowViewControllerOperation *)self finish];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014D564;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = ShowViewControllerOperation;
  [(ShowViewControllerOperation *)&v5 cancel];
  if ([(ShowViewControllerOperation *)self isExecuting])
  {
    queue = [(ShowViewControllerOperation *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014D87C;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)finish
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finishing %@ operation: [%p]", &v7, 0x16u);
  }

  if (!self->_isFinished)
  {
    if (self->_isExecuting)
    {
      [(ShowViewControllerOperation *)self willChangeValueForKey:@"isExecuting"];
      self->_isExecuting = 0;
      [(ShowViewControllerOperation *)self didChangeValueForKey:@"isExecuting"];
    }

    [(ShowViewControllerOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(ShowViewControllerOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

@end