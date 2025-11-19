@interface IUISessionChangeContext
- (IUISessionChangeContext)initWithService:(id)a3 session:(id)a4 sessionChange:(id)a5 completion:(id)a6;
- (RTIInputSystemService)service;
- (RTIInputSystemServiceSession)session;
- (id)description;
@end

@implementation IUISessionChangeContext

- (IUISessionChangeContext)initWithService:(id)a3 session:(id)a4 sessionChange:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = IUISessionChangeContext;
  v14 = [(IUISessionChangeContext *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_service, v10);
    objc_storeWeak(&v15->_session, v11);
    v16 = [v12 copy];
    sessionChange = v15->_sessionChange;
    v15->_sessionChange = v16;

    v18 = [v13 copy];
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