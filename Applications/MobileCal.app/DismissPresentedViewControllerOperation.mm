@interface DismissPresentedViewControllerOperation
+ (id)blacklistedDismissalClasses;
- (DismissPresentedViewControllerOperation)initWithPresentingViewController:(id)controller transition:(int)transition completion:(id)completion;
- (void)cancel;
- (void)finish;
- (void)main;
- (void)start;
@end

@implementation DismissPresentedViewControllerOperation

- (DismissPresentedViewControllerOperation)initWithPresentingViewController:(id)controller transition:(int)transition completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = DismissPresentedViewControllerOperation;
  v11 = [(DismissPresentedViewControllerOperation *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_presentingViewController, controller);
    v12->_transition = transition;
    v13 = objc_retainBlock(completionCopy);
    completion = v12->_completion;
    v12->_completion = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    uTF8String = [v16 UTF8String];

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    [(DismissPresentedViewControllerOperation *)v12 setQueue:v19];
  }

  return v12;
}

- (void)start
{
  queue = [(DismissPresentedViewControllerOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6A84;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = DismissPresentedViewControllerOperation;
  [(DismissPresentedViewControllerOperation *)&v2 cancel];
}

- (void)finish
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Finishing %@ operation: [%p]", &v7, 0x16u);
  }

  if (!self->_isFinished)
  {
    if (self->_isExecuting)
    {
      [(DismissPresentedViewControllerOperation *)self willChangeValueForKey:@"isExecuting"];
      self->_isExecuting = 0;
      [(DismissPresentedViewControllerOperation *)self didChangeValueForKey:@"isExecuting"];
    }

    [(DismissPresentedViewControllerOperation *)self willChangeValueForKey:@"isFinished"];
    self->_isFinished = 1;
    [(DismissPresentedViewControllerOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

+ (id)blacklistedDismissalClasses
{
  if (qword_100251A30 != -1)
  {
    sub_1001703C8();
  }

  v3 = qword_100251A28;

  return v3;
}

- (void)main
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Executing operation: %@", buf, 0xCu);
  }

  [(DismissPresentedViewControllerOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(DismissPresentedViewControllerOperation *)self didChangeValueForKey:@"isExecuting"];
  if (([(DismissPresentedViewControllerOperation *)self isCancelled]& 1) != 0)
  {
    [(DismissPresentedViewControllerOperation *)self finish];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A6EAC;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end