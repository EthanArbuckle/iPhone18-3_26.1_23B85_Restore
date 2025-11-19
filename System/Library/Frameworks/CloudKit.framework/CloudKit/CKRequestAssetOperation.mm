@interface CKRequestAssetOperation
- (CKRequestAssetOperation)initWithAssetMetadata:(id)a3 requestCallback:(id)a4;
- (int64_t)state;
- (void)setState:(int64_t)a3;
- (void)start;
@end

@implementation CKRequestAssetOperation

- (CKRequestAssetOperation)initWithAssetMetadata:(id)a3 requestCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CKRequestAssetOperation;
  v9 = [(CKRequestAssetOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    v13 = objc_msgSend_copy(v8, v11, v12);
    requestCallback = v10->_requestCallback;
    v10->_requestCallback = v13;
  }

  return v10;
}

- (void)setState:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state != a3)
  {
    v6 = a3 == 1 || state == 1;
    v7 = v6;
    if (v6)
    {
      objc_msgSend_willChangeValueForKey_(obj, v4, @"isExecuting");
    }

    v8 = a3 == 2 || state == 2;
    v9 = v8;
    if (v8)
    {
      objc_msgSend_willChangeValueForKey_(obj, v4, @"isFinished");
    }

    obj->_state = a3;
    if (v7)
    {
      objc_msgSend_didChangeValueForKey_(obj, v4, @"isExecuting");
    }

    if (v9)
    {
      objc_msgSend_didChangeValueForKey_(obj, v4, @"isFinished");
    }
  }

  objc_sync_exit(obj);
}

- (int64_t)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (void)start
{
  if ((objc_msgSend_isCancelled(self, a2, v2) & 1) == 0)
  {
    if (objc_msgSend_state(self, v4, v5))
    {
      v13 = [CKException alloc];
      v15 = objc_msgSend_initWithName_format_(v13, v14, *MEMORY[0x1E695D940], @"The operation must be in the Pending state at start");
      objc_exception_throw(v15);
    }

    objc_initWeak(&location, self);
    objc_msgSend_setState_(self, v6, 1);
    v9 = objc_msgSend_requestCallback(self, v7, v8);
    v12 = objc_msgSend_metadata(self, v10, v11);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_18862DC7C;
    v16[3] = &unk_1E70BF3C8;
    objc_copyWeak(&v17, &location);
    (v9)[2](v9, v12, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

@end