@interface AVCaptureDeviceControlRequestQueue
- (AVCaptureDeviceControlRequestQueue)init;
- (id)dequeue;
- (id)head;
- (void)dealloc;
- (void)enqueueRequest:(id)request;
@end

@implementation AVCaptureDeviceControlRequestQueue

- (AVCaptureDeviceControlRequestQueue)init
{
  v4.receiver = self;
  v4.super_class = AVCaptureDeviceControlRequestQueue;
  v2 = [(AVCaptureDeviceControlRequestQueue *)&v4 init];
  if (v2)
  {
    v2->_serialQueue = dispatch_queue_create("com.apple.avfoundation.capturedevice.controlrequestqueue", 0);
    v2->_mutableArray = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
  }

  return v2;
}

- (id)head
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVCaptureDeviceControlRequestQueue_head__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __42__AVCaptureDeviceControlRequestQueue_head__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) firstObject];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeviceControlRequestQueue;
  [(AVCaptureDeviceControlRequestQueue *)&v3 dealloc];
}

- (void)enqueueRequest:(id)request
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVCaptureDeviceControlRequestQueue_enqueueRequest___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = request;
  dispatch_sync(serialQueue, v4);
}

- (id)dequeue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureDeviceControlRequestQueue_dequeue__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__AVCaptureDeviceControlRequestQueue_dequeue__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) firstObject];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v3 removeObject:v4];
}

@end