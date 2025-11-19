@interface _MXExtensionRequestDispatcher
- (_MXExtensionRequestDispatcher)initWithCoder:(id)a3;
- (void)dispatchRequest:(id)a3 vendor:(id)a4 completion:(id)a5;
- (void)startSendingUpdatesForRequest:(id)a3 vendor:(id)a4 toObserver:(id)a5;
@end

@implementation _MXExtensionRequestDispatcher

- (void)startSendingUpdatesForRequest:(id)a3 vendor:(id)a4 toObserver:(id)a5
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a5;
  v7 = [v5 _errorWithExtensionServiceError:15];
  [v6 receiveUpdatedResponse:0 error:v7];
}

- (void)dispatchRequest:(id)a3 vendor:(id)a4 completion:(id)a5
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a5;
  v7 = [v5 _errorWithExtensionServiceError:15];
  v6[2](v6, 0, v7);
}

- (_MXExtensionRequestDispatcher)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MXExtensionRequestDispatcher;
  return [(_MXExtensionRequestDispatcher *)&v4 init];
}

@end