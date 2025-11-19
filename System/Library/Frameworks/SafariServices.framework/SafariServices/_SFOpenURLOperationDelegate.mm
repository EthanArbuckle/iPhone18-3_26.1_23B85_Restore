@interface _SFOpenURLOperationDelegate
- (_SFOpenURLOperationDelegate)initWithCompletionHandler:(id)a3;
- (void)_didFinishWithSuccess:(BOOL)a3;
@end

@implementation _SFOpenURLOperationDelegate

- (_SFOpenURLOperationDelegate)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4 && (v9.receiver = self, v9.super_class = _SFOpenURLOperationDelegate, (self = [(_SFOpenURLOperationDelegate *)&v9 init]) != 0))
  {
    v5 = _Block_copy(v4);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v5;

    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_didFinishWithSuccess:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___SFOpenURLOperationDelegate__didFinishWithSuccess___block_invoke;
  v3[3] = &unk_1E848FD38;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

@end