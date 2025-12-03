@interface IUISessionChangeContext
- (IUISessionChangeContext)initWithService:(id)service session:(id)session sessionChange:(id)change completion:(id)completion;
- (RTIInputSystemService)service;
- (RTIInputSystemServiceSession)session;
- (id)description;
@end

@implementation IUISessionChangeContext

- (IUISessionChangeContext)initWithService:(id)service session:(id)session sessionChange:(id)change completion:(id)completion
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = IUISessionChangeContext;
  v14 = [(IUISessionChangeContext *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_service, serviceCopy);
    objc_storeWeak(&v15->_session, sessionCopy);
    v16 = [changeCopy copy];
    sessionChange = v15->_sessionChange;
    v15->_sessionChange = v16;

    v18 = [completionCopy copy];
    completion = v15->_completion;
    v15->_completion = v18;
  }

  return v15;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v6 = objc_loadWeakRetained(&self->_session);
  sessionChange = self->_sessionChange;
  v8 = objc_retainBlock(self->_completion);
  v9 = [NSString stringWithFormat:@"<%@: %p service:%@; session:%@; sessionChange:%@ completion:%@>", v4, self, WeakRetained, v6, sessionChange, v8];;

  return v9;
}

- (RTIInputSystemService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (RTIInputSystemServiceSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end