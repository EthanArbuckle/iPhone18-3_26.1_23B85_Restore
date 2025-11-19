@interface NSFilePresenterOperationRecord
+ (id)operationRecordWithDescription:(id)a3 reactor:(id)a4;
- (id)_reactorQueue;
- (id)description;
- (void)dealloc;
- (void)didEnd;
@end

@implementation NSFilePresenterOperationRecord

+ (id)operationRecordWithDescription:(id)a3 reactor:(id)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  *(v6 + 1) = [a3 copy];
  objc_storeWeak(v6 + 3, a4);
  *(v6 + 4) = [+[NSFileAccessArbiterProxy _idForReactor:](NSFileAccessArbiterProxy _idForReactor:{a4), "copy"}];

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
  v4 = [(NSFilePresenterOperationRecord *)self reactor];
  if (v3)
  {

    return [v4 presentedItemOperationQueue];
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = [(NSFilePresenterOperationRecord *)self reactor];

    return [v6 _providedItemsOperationQueue];
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = [(NSFilePresenterOperationRecord *)self state];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E69F9690[v3];
  }

  v5 = [(NSFilePresenterOperationRecord *)self reactor];
  reactorID = self->reactorID;
  v7 = [(NSFilePresenterOperationRecord *)self operationDescription];
  if (!v5)
  {
    return [NSString stringWithFormat:@"Reactor with ID %@ deallocated in state: %@ %@", reactorID, v4, v7];
  }

  v8 = [NSString stringWithFormat:@"Reactor %@ with ID %@ %@ %@", v5, reactorID, v4, v7];
  v9 = [(NSFilePresenterOperationRecord *)self _reactorQueue];
  if ([v9 isSuspended])
  {
    return [(NSString *)v8 stringByAppendingFormat:@" -- Queue is suspended: %@", v9];
  }

  else
  {
    return v8;
  }
}

@end