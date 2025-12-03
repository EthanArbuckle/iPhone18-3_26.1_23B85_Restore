@interface MZTaskAssertion
+ (id)newBackgroundTaskWithExpirationHandler:(id)handler debugInfo:(id)info;
- (MZTaskAssertion)initWithExpirationHandler:(id)handler debugInfo:(id)info;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)performExpirationHandler;
@end

@implementation MZTaskAssertion

- (MZTaskAssertion)initWithExpirationHandler:(id)handler debugInfo:(id)info
{
  handlerCopy = handler;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = MZTaskAssertion;
  v8 = [(MZTaskAssertion *)&v20 init];
  if (v8)
  {
    v9 = [handlerCopy copy];
    expireHandler = v8->_expireHandler;
    v8->_expireHandler = v9;

    v11 = [infoCopy copy];
    debugInfo = v8->_debugInfo;
    v8->_debugInfo = v11;

    v13 = [MZProcessAssertion alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C6968;
    v18[3] = &unk_1004D8358;
    v14 = v8;
    v19 = v14;
    v15 = [(MZProcessAssertion *)v13 initWithExpirationBlock:v18 debugDescription:v8->_debugInfo];
    v16 = v14[3];
    v14[3] = v15;

    [v14[3] identifier];
  }

  return v8;
}

+ (id)newBackgroundTaskWithExpirationHandler:(id)handler debugInfo:(id)info
{
  infoCopy = info;
  handlerCopy = handler;
  v7 = [[MZTaskAssertion alloc] initWithExpirationHandler:handlerCopy debugInfo:infoCopy];

  return v7;
}

- (void)dealloc
{
  [(MZTaskAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MZTaskAssertion;
  [(MZTaskAssertion *)&v3 dealloc];
}

- (void)performExpirationHandler
{
  v3 = _MTLogCategoryAsyncTask();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Background time expired. App will sleep soon. Assertion: %@", buf, 0xCu);
  }

  expireHandler = self->_expireHandler;
  if (expireHandler)
  {
    if (self->_processAssertion)
    {
      expireHandler[2]();
      v5 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C6B44;
      block[3] = &unk_1004D8358;
      block[4] = self;
      dispatch_after(v5, &_dispatch_main_q, block);
    }
  }
}

- (void)invalidate
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    [(MZProcessAssertion *)processAssertion identifier];
    [(MZProcessAssertion *)self->_processAssertion invalidate];
    v4 = self->_processAssertion;
    self->_processAssertion = 0;
  }

  expireHandler = self->_expireHandler;
  self->_expireHandler = 0;
}

- (id)description
{
  processAssertion = self->_processAssertion;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"YES";
  if (!processAssertion)
  {
    v7 = @"NO ";
  }

  v8 = [NSString stringWithFormat:@"<%@:%p held=%@; info='%@', underlying assertion = %@>", v5, self, v7, self->_debugInfo, self->_processAssertion];;

  return v8;
}

@end