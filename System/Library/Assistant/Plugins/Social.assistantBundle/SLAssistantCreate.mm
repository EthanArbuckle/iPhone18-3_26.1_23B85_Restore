@interface SLAssistantCreate
- (void)_cleanupHandler;
- (void)_finishWithCompletion:(id)a3 result:(id)a4;
- (void)dealloc;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation SLAssistantCreate

- (void)_cleanupHandler
{
  if (self->_handlerDelegate)
  {
    if (self->_handlerObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SLAssistantServiceHandler *)self->_handlerObject setDelegate:0];
      }
    }

    self->_handlerDelegate = 0;
  }

  self->_handlerObject = 0;
}

- (void)dealloc
{
  [(SLAssistantCreate *)self _cleanupHandler];
  v3.receiver = self;
  v3.super_class = SLAssistantCreate;
  [(SLAssistantCreate *)&v3 dealloc];
}

- (void)_finishWithCompletion:(id)a3 result:(id)a4
{
  [(SLAssistantCreate *)self _cleanupHandler];
  v6 = *(a3 + 2);

  v6(a3, a4);
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  [(SLAssistantCreate *)self _cleanupHandler:a3];
  v6 = [(SLAssistantCreate *)self object];
  handlerObject = self->_handlerObject;
  if (handlerObject)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1594;
    v11[3] = &unk_8198;
    v11[4] = self;
    v11[5] = a3;
    [(SLAssistantServiceHandler *)handlerObject performCreateWithObject:self completion:v11];
  }

  else
  {
    v10 = v6;
    _SLLog();
    v8 = [+[SACommandFailed commandFailedWithReason:](SACommandFailed dictionary:@"Received object of unknown type."];
    v9 = *(a3 + 2);

    v9(a3, v8);
  }
}

@end