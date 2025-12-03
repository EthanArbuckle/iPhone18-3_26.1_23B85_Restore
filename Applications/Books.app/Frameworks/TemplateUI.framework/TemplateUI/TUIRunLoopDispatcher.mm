@interface TUIRunLoopDispatcher
+ (id)sharedInstance;
+ (int)drainWithTimeout:(double)timeout;
+ (void)dispatchAfter:(unint64_t)after toMain:(id)main;
+ (void)dispatchAsyncToMain:(id)main;
+ (void)dispatchGroup:(id)group notifyMain:(id)main;
- (id)initSharedInstance;
- (int)_drainWithTimeout:(double)timeout;
- (void)_dispatchAfter:(unint64_t)after toMain:(id)main;
- (void)_dispatchAsyncToMain:(id)main;
- (void)_dispatchGroup:(id)group notifyMain:(id)main;
- (void)_performPendingBlocks;
- (void)dealloc;
@end

@implementation TUIRunLoopDispatcher

+ (id)sharedInstance
{
  if (qword_2E65B8 != -1)
  {
    sub_19BC68();
  }

  v3 = qword_2E65B0;

  return v3;
}

- (id)initSharedInstance
{
  v11.receiver = self;
  v11.super_class = TUIRunLoopDispatcher;
  v2 = [(TUIRunLoopDispatcher *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v10.version = 0;
    memset(&v10.retain, 0, 56);
    v10.info = v2;
    v10.perform = j__objc_msgSend__performPendingBlocks;
    v2->_runLoopSource = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &v10);
    Main = CFRunLoopGetMain();
    v3->_runLoop = Main;
    CFRetain(Main);
    CFRunLoopAddSource(v3->_runLoop, v3->_runLoopSource, kCFRunLoopDefaultMode);
    CFRunLoopAddSource(v3->_runLoop, v3->_runLoopSource, UITrackingRunLoopMode);
    CFRunLoopAddSource(v3->_runLoop, v3->_runLoopSource, @"com.apple.iBooks.TemplateUI");
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("com.apple.iBooks.TUIRunLoopDispatcher.runLoopDispatchQueue", v6);
    runLoopDispatchQueue = v3->_runLoopDispatchQueue;
    v3->_runLoopDispatchQueue = v7;
  }

  return v3;
}

- (void)dealloc
{
  CFRunLoopSourceInvalidate(self->_runLoopSource);
  CFRelease(self->_runLoopSource);
  CFRelease(self->_runLoop);
  v3.receiver = self;
  v3.super_class = TUIRunLoopDispatcher;
  [(TUIRunLoopDispatcher *)&v3 dealloc];
}

+ (void)dispatchAsyncToMain:(id)main
{
  mainCopy = main;
  sharedInstance = [self sharedInstance];
  [sharedInstance _dispatchAsyncToMain:mainCopy];
}

+ (void)dispatchAfter:(unint64_t)after toMain:(id)main
{
  mainCopy = main;
  sharedInstance = [self sharedInstance];
  [sharedInstance _dispatchAfter:after toMain:mainCopy];
}

+ (int)drainWithTimeout:(double)timeout
{
  sharedInstance = [self sharedInstance];
  v5 = [sharedInstance _drainWithTimeout:timeout];

  return v5;
}

+ (void)dispatchGroup:(id)group notifyMain:(id)main
{
  mainCopy = main;
  groupCopy = group;
  sharedInstance = [self sharedInstance];
  [sharedInstance _dispatchGroup:groupCopy notifyMain:mainCopy];
}

- (void)_dispatchAsyncToMain:(id)main
{
  mainCopy = main;
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableArray *)self->_pendingBlocks count];
  pendingBlocks = self->_pendingBlocks;
  if (!pendingBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_pendingBlocks;
    self->_pendingBlocks = v6;

    pendingBlocks = self->_pendingBlocks;
  }

  v8 = objc_retainBlock(mainCopy);
  [(NSMutableArray *)pendingBlocks addObject:v8];

  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    CFRunLoopSourceSignal(self->_runLoopSource);
    CFRunLoopWakeUp(self->_runLoop);
  }
}

- (void)_dispatchAfter:(unint64_t)after toMain:(id)main
{
  mainCopy = main;
  runLoopDispatchQueue = self->_runLoopDispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13F37C;
  v9[3] = &unk_25EA78;
  v9[4] = self;
  v10 = mainCopy;
  v8 = mainCopy;
  dispatch_after(after, runLoopDispatchQueue, v9);
}

- (int)_drainWithTimeout:(double)timeout
{
  if (CFRunLoopGetCurrent() == self->_runLoop)
  {

    return CFRunLoopRunInMode(@"com.apple.iBooks.TemplateUI", timeout, 1u);
  }

  else
  {
    v4 = TUIDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_19BC7C(v4);
    }

    if (_TUIDeviceHasInternalInstall())
    {
      objc_exception_throw([[NSException alloc] initWithName:@"InvalidInvocation" reason:@"-drainWithTimeout should be called in main runloop only" userInfo:0]);
    }

    return 1;
  }
}

- (void)_dispatchGroup:(id)group notifyMain:(id)main
{
  mainCopy = main;
  runLoopDispatchQueue = self->_runLoopDispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13F4FC;
  v9[3] = &unk_25EA78;
  v9[4] = self;
  v10 = mainCopy;
  v8 = mainCopy;
  dispatch_group_notify(group, runLoopDispatchQueue, v9);
}

- (void)_performPendingBlocks
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pendingBlocks;
  pendingBlocks = self->_pendingBlocks;
  self->_pendingBlocks = 0;

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        (*(v10 + 16))(v10);
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end