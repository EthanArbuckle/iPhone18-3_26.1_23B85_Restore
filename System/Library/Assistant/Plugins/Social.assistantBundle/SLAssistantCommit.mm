@interface SLAssistantCommit
- (void)_cleanupHandler;
- (void)_finishWithCompletion:(id)completion result:(id)result;
- (void)dealloc;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation SLAssistantCommit

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
  [(SLAssistantCommit *)self _cleanupHandler];
  v3.receiver = self;
  v3.super_class = SLAssistantCommit;
  [(SLAssistantCommit *)&v3 dealloc];
}

- (void)_finishWithCompletion:(id)completion result:(id)result
{
  [(SLAssistantCommit *)self _cleanupHandler];
  v6 = *(completion + 2);

  v6(completion, result);
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  [(SLAssistantCommit *)self _cleanupHandler:completion];
  identifier = [(SLAssistantCommit *)self identifier];
  handlerObject = self->_handlerObject;
  if (handlerObject)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1194;
    v11[3] = &unk_8198;
    v11[4] = self;
    v11[5] = completion;
    [(SLAssistantServiceHandler *)handlerObject performPostRequestWithObject:self completion:v11];
  }

  else
  {
    v10 = identifier;
    _SLLog();
    v8 = [+[SACommandFailed commandFailedWithReason:](SACommandFailed dictionary:@"Received object of unknown type."];
    v9 = *(completion + 2);

    v9(completion, v8);
  }
}

@end