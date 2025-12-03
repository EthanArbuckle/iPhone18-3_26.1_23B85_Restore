@interface NSFilePresenterOperationRecord
+ (id)operationRecordWithDescription:(id)description reactor:(id)reactor;
- (id)_reactorQueue;
- (id)description;
- (void)dealloc;
- (void)didEnd;
@end

@implementation NSFilePresenterOperationRecord

+ (id)operationRecordWithDescription:(id)description reactor:(id)reactor
{
  v6 = objc_alloc_init(objc_opt_class());
  *(v6 + 1) = [description copy];
  objc_storeWeak(v6 + 3, reactor);
  *(v6 + 4) = [+[NSFileAccessArbiterProxy _idForReactor:](NSFileAccessArbiterProxy _idForReactor:{reactor), "copy"}];

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFilePresenterOperationRecord;
  [(NSFilePresenterOperationRecord *)&v3 dealloc];
}

- (void)didEnd
{
  v2[5] = *MEMORY[0x1E69E9840];
  self->state = 3;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__NSFilePresenterOperationRecord_didEnd__block_invoke;
  v2[3] = &unk_1E69F9210;
  v2[4] = self;
  [NSFileAccessArbiterProxy _accessPresenterOperationRecordsUsingBlock:v2];
}

- (id)_reactorQueue
{
  [(NSFilePresenterOperationRecord *)self reactor];
  v3 = objc_opt_respondsToSelector();
  reactor = [(NSFilePresenterOperationRecord *)self reactor];
  if (v3)
  {

    return [reactor presentedItemOperationQueue];
  }

  else if (objc_opt_respondsToSelector())
  {
    reactor2 = [(NSFilePresenterOperationRecord *)self reactor];

    return [reactor2 _providedItemsOperationQueue];
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  state = [(NSFilePresenterOperationRecord *)self state];
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E69F9690[state];
  }

  reactor = [(NSFilePresenterOperationRecord *)self reactor];
  reactorID = self->reactorID;
  operationDescription = [(NSFilePresenterOperationRecord *)self operationDescription];
  if (!reactor)
  {
    return [NSString stringWithFormat:@"Reactor with ID %@ deallocated in state: %@ %@", reactorID, v4, operationDescription];
  }

  v8 = [NSString stringWithFormat:@"Reactor %@ with ID %@ %@ %@", reactor, reactorID, v4, operationDescription];
  _reactorQueue = [(NSFilePresenterOperationRecord *)self _reactorQueue];
  if ([_reactorQueue isSuspended])
  {
    return [(NSString *)v8 stringByAppendingFormat:@" -- Queue is suspended: %@", _reactorQueue];
  }

  else
  {
    return v8;
  }
}

@end