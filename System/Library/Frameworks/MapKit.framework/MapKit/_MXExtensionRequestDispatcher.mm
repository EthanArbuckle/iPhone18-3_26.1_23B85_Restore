@interface _MXExtensionRequestDispatcher
- (_MXExtensionRequestDispatcher)initWithCoder:(id)coder;
- (void)dispatchRequest:(id)request vendor:(id)vendor completion:(id)completion;
- (void)startSendingUpdatesForRequest:(id)request vendor:(id)vendor toObserver:(id)observer;
@end

@implementation _MXExtensionRequestDispatcher

- (void)startSendingUpdatesForRequest:(id)request vendor:(id)vendor toObserver:(id)observer
{
  v5 = MEMORY[0x1E696ABC0];
  observerCopy = observer;
  v7 = [v5 _errorWithExtensionServiceError:15];
  [observerCopy receiveUpdatedResponse:0 error:v7];
}

- (void)dispatchRequest:(id)request vendor:(id)vendor completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 _errorWithExtensionServiceError:15];
  completionCopy[2](completionCopy, 0, v7);
}

- (_MXExtensionRequestDispatcher)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _MXExtensionRequestDispatcher;
  return [(_MXExtensionRequestDispatcher *)&v4 init];
}

@end