@interface NSFilePresenterManagedProxy
- (BOOL)_presenterRespondsToSelector:(SEL)selector;
- (NSFilePresenterManagedProxy)initWithXPCProxy:(id)proxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_safelySendMessageWithSelector:(SEL)selector withErrorCompletionHandler:(id)handler sender:(id)sender;
- (void)accommodateDeletionOfSubitemAtURL:(id)l completionHandler:(id)handler;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)relinquishToReadingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD completionHandler:(id)handler;
- (void)relinquishToWritingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD subitemURL:(id)l completionHandler:(id)handler;
@end

@implementation NSFilePresenterManagedProxy

- (BOOL)_presenterRespondsToSelector:(SEL)selector
{
  if (qword_1ED43E6F0 != -1)
  {
    dispatch_once(&qword_1ED43E6F0, &__block_literal_global_329);
  }

  v6 = [_MergedGlobals_3_1 objectForKey:NSStringFromSelector(selector)];
  if (!v6)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileReactorProxy.m" description:1273, @"Unexpected message in [_NSFilePresenterManagedProxy _remoteObjectRespondsToMessage:]: %@", NSStringFromSelector(selector)];
  }

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  return !unsignedLongLongValue || (self->_filePresenterResponses & unsignedLongLongValue) != 0;
}

- (NSFilePresenterManagedProxy)initWithXPCProxy:(id)proxy
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFilePresenterManagedProxy;
  v4 = [(NSFilePresenterManagedProxy *)&v6 init];
  if (v4)
  {
    v4->_xpcProxy = proxy;
    v4->_nonboostingXPCProxy = [proxy _unboostingRemoteObjectProxy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFilePresenterManagedProxy;
  [(NSFilePresenterManagedProxy *)&v3 dealloc];
}

- (void)_safelySendMessageWithSelector:(SEL)selector withErrorCompletionHandler:(id)handler sender:(id)sender
{
  v13[7] = *MEMORY[0x1E69E9840];
  if ([(NSFilePresenterManagedProxy *)self _presenterRespondsToSelector:selector])
  {
    if (handler && (processManager = self->_processManager) != 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke;
      v13[3] = &unk_1E69F9900;
      v13[4] = self;
      v13[5] = sender;
      v13[6] = handler;
      [(NSFileAccessProcessManager *)processManager safelySendMessageWithReplyUsingBlock:v13];
    }

    else
    {
      xpcProxy = self->_xpcProxy;
      if (self->_errorHandler)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_4;
        v12[3] = &unk_1E69F3A28;
        v12[4] = self;
        xpcProxy = [(NSFilePresenterXPCInterface *)xpcProxy remoteObjectProxyWithErrorHandler:v12];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_5;
      v11[3] = &unk_1E69F3938;
      v11[4] = handler;
      (*(sender + 2))(sender, xpcProxy, v11);
    }
  }

  else if (handler)
  {
    v9 = *(handler + 2);

    v9(handler, 0);
  }
}

uint64_t __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_2;
  v6[3] = &unk_1E69F9838;
  v6[4] = v3;
  v6[5] = a2;
  [v4 remoteObjectProxyWithErrorHandler:v6];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_4(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __96__NSFilePresenterManagedProxy__safelySendMessageWithSelector_withErrorCompletionHandler_sender___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)relinquishToReadingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD completionHandler:(id)handler
{
  v6[7] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__NSFilePresenterManagedProxy_relinquishToReadingClaimWithID_options_purposeID_completionHandler___block_invoke;
  v6[3] = &unk_1E69F9928;
  v6[5] = iD;
  v6[6] = options;
  v6[4] = d;
  [(NSFilePresenterManagedProxy *)self _safelySendMessageWithSelector:a2 withErrorCompletionHandler:handler sender:v6];
}

- (void)relinquishToWritingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD subitemURL:(id)l completionHandler:(id)handler
{
  v7[8] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__NSFilePresenterManagedProxy_relinquishToWritingClaimWithID_options_purposeID_subitemURL_completionHandler___block_invoke;
  v7[3] = &unk_1E69F9950;
  v7[4] = d;
  v7[5] = iD;
  v7[6] = l;
  v7[7] = options;
  [(NSFilePresenterManagedProxy *)self _safelySendMessageWithSelector:a2 withErrorCompletionHandler:handler sender:v7];
}

uint64_t __80__NSFilePresenterManagedProxy_reacquireFromWritingClaimForID_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__NSFilePresenterManagedProxy_reacquireFromWritingClaimForID_completionHandler___block_invoke_3;
  v5[3] = &unk_1E69F40C0;
  v5[4] = a3;
  return [a2 reacquireFromWritingClaimForID:v3 completionHandler:v5];
}

- (void)accommodateDeletionOfSubitemAtURL:(id)l completionHandler:(id)handler
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__NSFilePresenterManagedProxy_accommodateDeletionOfSubitemAtURL_completionHandler___block_invoke;
  v4[3] = &unk_1E69F9978;
  v4[4] = l;
  [(NSFilePresenterManagedProxy *)self _safelySendMessageWithSelector:a2 withErrorCompletionHandler:handler sender:v4];
}

- (void)forwardInvocation:(id)invocation
{
  if ([invocation _hasBlockArgument])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileReactorProxy.m" description:1401, @"NSFilePresenter messages with reply blocks need their own special override on NSFilePresenterManagedProxy"];
  }

  if (-[NSFilePresenterManagedProxy _presenterRespondsToSelector:](self, "_presenterRespondsToSelector:", [invocation selector]))
  {
    nonboostingXPCProxy = self->_nonboostingXPCProxy;

    [(NSFilePresenterXPCInterface *)nonboostingXPCProxy forwardInvocation:invocation];
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v5 = [objc_alloc(objc_opt_class()) initWithXPCProxy:self->_xpcProxy];
  [v5 setErrorHandler:handler];
  [v5 setFilePresenterResponses:{-[NSFilePresenterManagedProxy filePresenterResponses](self, "filePresenterResponses")}];
  [v5 setProcessManager:{-[NSFilePresenterManagedProxy processManager](self, "processManager")}];

  return v5;
}

@end