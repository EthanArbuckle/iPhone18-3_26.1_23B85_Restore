@interface HKPendingOperationRecord
+ (id)pendingOperation:(id)a3 completion:(id)a4;
@end

@implementation HKPendingOperationRecord

+ (id)pendingOperation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKPendingOperationRecord);
  v8 = [v6 copy];

  operationHandler = v7->_operationHandler;
  v7->_operationHandler = v8;

  v10 = [v5 copy];
  completionHandler = v7->_completionHandler;
  v7->_completionHandler = v10;

  return v7;
}

@end