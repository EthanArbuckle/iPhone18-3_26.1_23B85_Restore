@interface AVWeakObservableCallbackCancellationHelper
- (void)cancelAllCallbacks;
- (void)dealloc;
@end

@implementation AVWeakObservableCallbackCancellationHelper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVWeakObservableCallbackCancellationHelper;
  [(AVWeakObservableCallbackCancellationHelper *)&v3 dealloc];
}

- (void)cancelAllCallbacks
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  callbackRegistrations = self->_callbackRegistrations;
  v3 = [(NSMutableArray *)callbackRegistrations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(callbackRegistrations);
        }

        [*(*(&v7 + 1) + 8 * i) cancelCallbacks];
      }

      v4 = [(NSMutableArray *)callbackRegistrations countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end