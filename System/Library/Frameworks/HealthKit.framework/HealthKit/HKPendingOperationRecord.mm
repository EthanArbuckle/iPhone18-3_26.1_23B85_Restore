@interface HKPendingOperationRecord
+ (id)pendingOperation:(id)operation completion:(id)completion;
@end

@implementation HKPendingOperationRecord

+ (id)pendingOperation:(id)operation completion:(id)completion
{
  completionCopy = completion;
  operationCopy = operation;
  v7 = objc_alloc_init(HKPendingOperationRecord);
  v8 = [operationCopy copy];

  operationHandler = v7->_operationHandler;
  v7->_operationHandler = v8;

  v10 = [completionCopy copy];
  completionHandler = v7->_completionHandler;
  v7->_completionHandler = v10;

  return v7;
}

@end