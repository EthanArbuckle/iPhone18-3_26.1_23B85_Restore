@interface _SFOpenURLOperationDelegate
- (_SFOpenURLOperationDelegate)initWithCompletionHandler:(id)handler;
- (void)_didFinishWithSuccess:(BOOL)success;
@end

@implementation _SFOpenURLOperationDelegate

- (_SFOpenURLOperationDelegate)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy && (v9.receiver = self, v9.super_class = _SFOpenURLOperationDelegate, (self = [(_SFOpenURLOperationDelegate *)&v9 init]) != 0))
  {
    v5 = _Block_copy(handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v5;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_didFinishWithSuccess:(BOOL)success
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___SFOpenURLOperationDelegate__didFinishWithSuccess___block_invoke;
  v3[3] = &unk_1E848FD38;
  v3[4] = self;
  successCopy = success;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

@end