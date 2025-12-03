@interface CKRequestAssetOperation
- (CKRequestAssetOperation)initWithAssetMetadata:(id)metadata requestCallback:(id)callback;
- (int64_t)state;
- (void)setState:(int64_t)state;
- (void)start;
@end

@implementation CKRequestAssetOperation

- (CKRequestAssetOperation)initWithAssetMetadata:(id)metadata requestCallback:(id)callback
{
  metadataCopy = metadata;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = CKRequestAssetOperation;
  v9 = [(CKRequestAssetOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    v13 = objc_msgSend_copy(callbackCopy, v11, v12);
    requestCallback = v10->_requestCallback;
    v10->_requestCallback = v13;
  }

  return v10;
}

- (void)setState:(int64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state != state)
  {
    v6 = state == 1 || state == 1;
    v7 = v6;
    if (v6)
    {
      objc_msgSend_willChangeValueForKey_(obj, v4, @"isExecuting");
    }

    v8 = state == 2 || state == 2;
    v9 = v8;
    if (v8)
    {
      objc_msgSend_willChangeValueForKey_(obj, v4, @"isFinished");
    }

    obj->_state = state;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

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