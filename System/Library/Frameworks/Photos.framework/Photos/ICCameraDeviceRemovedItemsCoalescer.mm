@interface ICCameraDeviceRemovedItemsCoalescer
- (ICCameraDeviceRemovedItemsCoalescer)initWithSource:(id)a3 block:(id)a4;
- (void)coalesceItems:(id)a3;
@end

@implementation ICCameraDeviceRemovedItemsCoalescer

- (void)coalesceItems:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ICCameraDeviceRemovedItemsCoalescer_coalesceItems___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __53__ICCameraDeviceRemovedItemsCoalescer_coalesceItems___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 8))
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = *(*(a1 + 32) + 8);
    v7 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v6, v7, 0x5F5E100uLL, 0);
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__ICCameraDeviceRemovedItemsCoalescer_coalesceItems___block_invoke_2;
    handler[3] = &unk_1E75AB270;
    handler[4] = v8;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(*(a1 + 32) + 8));
    v2 = *(a1 + 32);
  }

  return [*(v2 + 32) addObjectsFromArray:*(a1 + 40)];
}

uint64_t __53__ICCameraDeviceRemovedItemsCoalescer_coalesceItems___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count] && (WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24)), WeakRetained, WeakRetained))
  {
    (*(*(*(a1 + 32) + 48) + 16))();
    v3 = objc_opt_new();
    v4 = 32;
  }

  else
  {
    dispatch_source_cancel(*(*(a1 + 32) + 8));
    v3 = 0;
    v4 = 8;
  }

  *(*(a1 + 32) + v4) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (ICCameraDeviceRemovedItemsCoalescer)initWithSource:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ICCameraDeviceRemovedItemsCoalescer;
  v8 = [(ICCameraDeviceRemovedItemsCoalescer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_source, v6);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ICCameraFileRemovedItemsCoalescer", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    v13 = objc_opt_new();
    items = v9->_items;
    v9->_items = v13;

    v15 = [v7 copy];
    block = v9->_block;
    v9->_block = v15;
  }

  return v9;
}

@end