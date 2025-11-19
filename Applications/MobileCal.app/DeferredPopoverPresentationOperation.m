@interface DeferredPopoverPresentationOperation
- (BOOL)isReady;
- (DeferredPopoverPresentationOperation)initWithViewController:(id)a3 shouldShowWithAnimation:(BOOL)a4;
- (id)description;
- (id)sourceViewController;
- (void)main;
@end

@implementation DeferredPopoverPresentationOperation

- (DeferredPopoverPresentationOperation)initWithViewController:(id)a3 shouldShowWithAnimation:(BOOL)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = DeferredPopoverPresentationOperation;
  v8 = [(DeferredPopoverPresentationOperation *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewController, a3);
    v9->_shouldShowWithAnimation = a4;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 UTF8String];

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v14 = dispatch_queue_create(v12, v13);
    [(ShowViewControllerOperation *)v9 setQueue:v14];
  }

  return v9;
}

- (id)description
{
  v3 = [(EnqueueableManagedNavigationController *)self->_viewController sourceViewController];
  v4 = objc_opt_class();
  v5 = [NSString stringWithFormat:@"%@ presents popover showing view controller %@", v4, objc_opt_class()];
  [(DeferredPopoverPresentationOperation *)self setName:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(DeferredPopoverPresentationOperation *)self name];
  v9 = [NSString stringWithFormat:@"<%@: %p{name = '%@'}>", v7, self, v8];

  v10 = [[CalDescriptionBuilder alloc] initWithSuperclassDescription:v9];
  v11 = [v10 build];

  return v11;
}

- (id)sourceViewController
{
  v4 = [(EnqueueableManagedNavigationController *)self->_viewController sourceViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___EnqueuablePopoverPresentationManagedNavigationControllerDelegate];

  if ((v5 & 1) == 0)
  {
    sub_1001700BC(&self->_viewController, a2, self);
  }

  viewController = self->_viewController;

  return [(EnqueueableManagedNavigationController *)viewController sourceViewController];
}

- (BOOL)isReady
{
  v19.receiver = self;
  v19.super_class = DeferredPopoverPresentationOperation;
  v3 = [(DeferredPopoverPresentationOperation *)&v19 isReady];
  v4 = [(EnqueueableManagedNavigationController *)self->_viewController presentingViewController];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(DeferredPopoverPresentationOperation *)self sourceViewController];
    v7 = [v6 isReadyToShowViewControllersInsideEnqueueableManagedNavigationController:self->_viewController];

    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [NSNumber numberWithBool:v7];
      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Operation %@ sourceViewControllerClaimsReadiness: %@", buf, 0x16u);
    }

    v5 = v3 & v7;
  }

  if (self->_isReady != v5)
  {
    [(DeferredPopoverPresentationOperation *)self willChangeValueForKey:@"isReady"];
    self->_isReady = v5;
    [(DeferredPopoverPresentationOperation *)self didChangeValueForKey:@"isReady"];
  }

  v13 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [NSNumber numberWithBool:v5];
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Operation %@ isReady: %@", buf, 0x16u);
  }

  return self->_isReady;
}

- (void)main
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Executing operation: %@", buf, 0xCu);
  }

  [(DeferredPopoverPresentationOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(DeferredPopoverPresentationOperation *)self didChangeValueForKey:@"isExecuting"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008032C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

@end