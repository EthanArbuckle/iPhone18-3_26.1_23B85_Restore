@interface PKPencilTouchDetection
- (PKPencilTouchDetection)init;
- (PKPencilTouchDetectionDelegate)delegate;
- (void)dealloc;
- (void)didUpdateWithUserInfo:(id)info;
- (void)pencilType:(int64_t)type hasRecentlyBeenUsedWithCompletionHandler:(id)handler;
@end

@implementation PKPencilTouchDetection

- (PKPencilTouchDetection)init
{
  v5.receiver = self;
  v5.super_class = PKPencilTouchDetection;
  v2 = [(PKPencilTouchDetection *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, PKTouchDetectionUpdateCallback, @"com.apple.pencilkit.pktouchdetectionupdate", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.pencilkit.pktouchdetectionupdate", 0);
  v4.receiver = self;
  v4.super_class = PKPencilTouchDetection;
  [(PKPencilTouchDetection *)&v4 dealloc];
}

- (void)didUpdateWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"com.apple.pencilkit.pktouchdetectionupdate.firstUse"];
  if (v4)
  {
    delegate = [(PKPencilTouchDetection *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      integerValue = [v4 integerValue];
      delegate2 = [(PKPencilTouchDetection *)self delegate];
      [delegate2 didDetectFirstUseForType:integerValue];
    }
  }

  v9 = [infoCopy objectForKey:@"com.apple.pencilkit.pktouchdetectionupdate.reactivation"];
  if (v9)
  {
    delegate3 = [(PKPencilTouchDetection *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      integerValue2 = [v9 integerValue];
      delegate4 = [(PKPencilTouchDetection *)self delegate];
      [delegate4 didDetectReactivationForType:integerValue2];
    }
  }
}

- (void)pencilType:(int64_t)type hasRecentlyBeenUsedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.pencilkit.pktouchdetection" options:0];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4811328];
    [v6 setRemoteObjectInterface:v7];
    [v6 resume];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__PKPencilTouchDetection_pencilType_hasRecentlyBeenUsedWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E82D8808;
    v8 = handlerCopy;
    v16 = v8;
    v9 = v6;
    v15 = v9;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v14];
    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__PKPencilTouchDetection_pencilType_hasRecentlyBeenUsedWithCompletionHandler___block_invoke_64;
      v11[3] = &unk_1E82D7840;
      v13 = v8;
      v12 = v9;
      [v10 pencilType:type hasRecentlyBeenUsedWithCompletionHandler:v11];
    }

    else
    {
      (*(v8 + 2))(v8, 0);
      [v9 invalidate];
    }
  }
}

void __78__PKPencilTouchDetection_pencilType_hasRecentlyBeenUsedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Error creating xpc connection for touch detection: %@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

uint64_t __78__PKPencilTouchDetection_pencilType_hasRecentlyBeenUsedWithCompletionHandler___block_invoke_64(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (PKPencilTouchDetectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end