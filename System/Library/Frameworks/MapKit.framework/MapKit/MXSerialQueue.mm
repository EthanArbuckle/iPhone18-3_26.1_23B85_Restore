@interface MXSerialQueue
@end

@implementation MXSerialQueue

void __26___MXSerialQueue_addTask___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = dispatch_group_create();
  objc_storeStrong((*(a1 + 32) + 8), v3);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__40845;
  v12[4] = __Block_byref_object_dispose__40846;
  v4 = v3;
  v13 = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26___MXSerialQueue_addTask___block_invoke_5;
  v11[3] = &unk_1E76CD7E8;
  v11[4] = *(a1 + 32);
  v11[5] = v12;
  v5 = MEMORY[0x1A58E9F30](v11);
  dispatch_group_enter(v4);
  v6 = [objc_opt_class() taskQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26___MXSerialQueue_addTask___block_invoke_3;
  v8[3] = &unk_1E76CCF68;
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  dispatch_group_notify(v2, v6, v8);

  _Block_object_dispose(v12, 8);
}

void __26___MXSerialQueue_addTask___block_invoke_5(uint64_t a1)
{
  v2 = [objc_opt_class() taskCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26___MXSerialQueue_addTask___block_invoke_2;
  block[3] = &unk_1E76CD7B0;
  block[4] = *(a1 + 40);
  dispatch_sync(v2, block);
}

void __26___MXSerialQueue_addTask___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __37___MXSerialQueue_taskCompletionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MapKit._MXSerialQueue.taskCompletionQueue", v2);
  v1 = taskCompletionQueue_queue;
  taskCompletionQueue_queue = v0;
}

void __36___MXSerialQueue_taskInsertionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MapKit._MXSerialQueue.taskInsertionQueue", v2);
  v1 = taskInsertionQueue_queue;
  taskInsertionQueue_queue = v0;
}

@end