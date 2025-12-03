@interface CRLiOSWindowIgnoreUserInteractionSafeWrapper
- (CRLiOSWindowIgnoreUserInteractionSafeWrapper)initWithWindowWrapper:(id)wrapper token:(id)token;
- (NSString)description;
- (void)dealloc;
- (void)endIgnoringUserInteractionSafely;
- (void)resumeIgnoringUserInteractionSafely;
@end

@implementation CRLiOSWindowIgnoreUserInteractionSafeWrapper

- (CRLiOSWindowIgnoreUserInteractionSafeWrapper)initWithWindowWrapper:(id)wrapper token:(id)token
{
  wrapperCopy = wrapper;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = CRLiOSWindowIgnoreUserInteractionSafeWrapper;
  v8 = [(CRLiOSWindowIgnoreUserInteractionSafeWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowWrapper, wrapperCopy);
    objc_storeStrong(&v9->_token, token);
  }

  return v9;
}

- (void)dealloc
{
  v3 = self->_token;
  v4 = objc_retainBlock(self->_operationCompletionHandler);
  if (v3 | v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowWrapper);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v9 = sub_10057FD90;
    v10 = &unk_101847170;
    v13 = v4;
    v11 = v3;
    v12 = WeakRetained;
    v6 = WeakRetained;
    if (+[NSThread isMainThread])
    {
      v9(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  v7.receiver = self;
  v7.super_class = CRLiOSWindowIgnoreUserInteractionSafeWrapper;
  [(CRLiOSWindowIgnoreUserInteractionSafeWrapper *)&v7 dealloc];
}

- (void)endIgnoringUserInteractionSafely
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101395F70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101395F84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396018();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSWindowIgnoreUserInteractionSafeWrapper endIgnoringUserInteractionSafely]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowIgnoreUserInteractionSafeWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:50 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLiOSWindowIgnoreUserInteractionSafeWrapper *)self resumeIgnoringUserInteractionSafely];
  if (self->_token)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowWrapper);
    [WeakRetained endIgnoringUserInteractionWithToken:self->_token];
    objc_storeWeak(&self->_windowWrapper, 0);
    token = self->_token;
    self->_token = 0;
  }
}

- (void)resumeIgnoringUserInteractionSafely
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396040();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396054();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013960E8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSWindowIgnoreUserInteractionSafeWrapper resumeIgnoringUserInteractionSafely]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowIgnoreUserInteractionSafeWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:63 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  operationCompletionHandler = self->_operationCompletionHandler;
  if (operationCompletionHandler)
  {
    operationCompletionHandler[2]();
    v7 = self->_operationCompletionHandler;
  }

  else
  {
    v7 = 0;
  }

  self->_operationCompletionHandler = 0;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> token=%@", v4, self, self->_token];

  return v5;
}

@end