@interface _AFUIQueuedOperations
- (_AFUIQueuedOperations)initWithSecureAppID:(id)a3 processID:(int)a4 textOperations:(id)a5 completionHandler:(id)a6;
@end

@implementation _AFUIQueuedOperations

- (_AFUIQueuedOperations)initWithSecureAppID:(id)a3 processID:(int)a4 textOperations:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = _AFUIQueuedOperations;
  v13 = [(_AFUIQueuedOperations *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    secureAppID = v13->_secureAppID;
    v13->_secureAppID = v14;

    v13->_processID = a4;
    objc_storeStrong(&v13->_textOperations, a5);
    v16 = MEMORY[0x1D38AFC90](v12);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;
  }

  return v13;
}

@end