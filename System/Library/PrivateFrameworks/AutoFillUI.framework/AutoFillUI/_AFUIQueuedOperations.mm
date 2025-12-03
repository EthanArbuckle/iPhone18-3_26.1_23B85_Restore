@interface _AFUIQueuedOperations
- (_AFUIQueuedOperations)initWithSecureAppID:(id)d processID:(int)iD textOperations:(id)operations completionHandler:(id)handler;
@end

@implementation _AFUIQueuedOperations

- (_AFUIQueuedOperations)initWithSecureAppID:(id)d processID:(int)iD textOperations:(id)operations completionHandler:(id)handler
{
  dCopy = d;
  operationsCopy = operations;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = _AFUIQueuedOperations;
  v13 = [(_AFUIQueuedOperations *)&v19 init];
  if (v13)
  {
    v14 = [dCopy copy];
    secureAppID = v13->_secureAppID;
    v13->_secureAppID = v14;

    v13->_processID = iD;
    objc_storeStrong(&v13->_textOperations, operations);
    v16 = MEMORY[0x1D38AFC90](handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;
  }

  return v13;
}

@end