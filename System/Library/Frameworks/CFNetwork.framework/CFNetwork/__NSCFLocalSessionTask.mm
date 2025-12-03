@interface __NSCFLocalSessionTask
- (id).cxx_construct;
- (id)_onqueue_strippedMutableRequest;
- (void)_onqueue_adjustPoolPriority;
- (void)_onqueue_completeInitialization;
- (void)_onqueue_resume;
@end

@implementation __NSCFLocalSessionTask

- (void)_onqueue_adjustPoolPriority
{
  if ([(__NSCFLocalSessionTask *)self cfConn])
  {
    cfConn = [(__NSCFLocalSessionTask *)self cfConn];
    computeAdjustedPoolPriority = [(NSURLSessionTask *)self computeAdjustedPoolPriority];

    [(__NSCFURLSessionConnection *)cfConn setPoolPriority:computeAdjustedPoolPriority];
  }
}

- (id)_onqueue_strippedMutableRequest
{
  v3 = [(NSURLRequest *)[(NSURLSessionTask *)self currentRequest] mutableCopy];
  [v3 setHTTPBody:0];
  [v3 setHTTPBodyStream:0];
  [v3 setValue:0 forHTTPHeaderField:@"Transfer-Encoding"];
  [(NSURLSessionTask *)self updateCurrentRequest:v3];

  return v3;
}

- (id).cxx_construct
{
  *(self + 106) = 0;
  *(self + 107) = 0;
  return self;
}

- (void)_onqueue_resume
{
  if (self)
  {
    v3 = self->_suspendCount - 1;
    self->_suspendCount = v3;
    if (!v3)
    {
      [(NSURLSessionTask *)self setState:0];
      if (objc_getProperty(self, v4, 768, 1))
      {

        [(__NSCFLocalSessionTask *)self _onqueue_completeInitialization];
      }

      else if ([(__NSCFLocalSessionTask *)self cfConn])
      {
        cfConn = [(__NSCFLocalSessionTask *)self cfConn];

        [(__NSCFURLSessionConnection *)cfConn resume];
      }
    }
  }
}

- (void)_onqueue_completeInitialization
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 768, 1);
    v4 = _Block_copy(Property);
    objc_setProperty_atomic_copy(self, v5, 0, 768);
  }

  else
  {
    v4 = _Block_copy(0);
  }

  v4[2](v4, self, 1);

  _Block_release(v4);
}

@end