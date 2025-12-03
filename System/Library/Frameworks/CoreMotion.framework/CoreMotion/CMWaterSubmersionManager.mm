@interface CMWaterSubmersionManager
+ (BOOL)isAuthorizedAndEntitled;
+ (BOOL)waterSubmersionAvailable;
- (CMWaterSubmersionManager)init;
- (NSMeasurement)maximumDepth;
- (void)_connect;
- (void)_disconnect;
- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)dealloc;
- (void)notifySubmersionStateProcessingCompleted;
- (void)setDelegate:(id)delegate;
@end

@implementation CMWaterSubmersionManager

+ (BOOL)waterSubmersionAvailable
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return ((dword_1ED71C97C - 115) < 0x13) & (0x787E1u >> (dword_1ED71C97C - 115));
}

+ (BOOL)isAuthorizedAndEntitled
{
  if (objc_msgSend_authorizationStatus(CMMotionUtils, a2, v2) == 3)
  {
    if ((objc_msgSend_hasEntitlement_(CMMotionUtils, v3, @"com.apple.developer.submerged-depth-and-pressure") & 1) != 0 || (hasEntitlement = objc_msgSend_hasEntitlement_(CMMotionUtils, v4, @"com.apple.developer.submerged-shallow-depth-and-pressure")) != 0)
    {
      LOBYTE(hasEntitlement) = 1;
    }
  }

  else
  {
    LOBYTE(hasEntitlement) = 0;
  }

  return hasEntitlement;
}

- (void)notifySubmersionStateProcessingCompleted
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"WaterSubmersion/kCLConnectionMessageWaterSubmersionCompletionHandler";
  v3[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  operator new();
}

- (NSMeasurement)maximumDepth
{
  if (!objc_msgSend_waterSubmersionAvailable(CMWaterSubmersionManager, a2, v2) || !objc_msgSend_isAuthorizedAndEntitled(CMWaterSubmersionManager, v4, v5))
  {
    return 0;
  }

  result = self->_maximumDepth;
  if (!result)
  {
    hasEntitlement = objc_msgSend_hasEntitlement_(CMMotionUtils, v6, @"com.apple.developer.submerged-depth-and-pressure");
    v9 = [CLSubmersionStateMachine alloc];
    v11 = objc_msgSend_initWithType_(v9, v10, hasEntitlement);
    v12 = objc_alloc(MEMORY[0x1E696AD28]);
    objc_msgSend_pastMaxDepthThreshold(v11, v13, v14);
    v16 = v15;
    v19 = objc_msgSend_meters(MEMORY[0x1E696B058], v17, v18);
    self->_maximumDepth = objc_msgSend_initWithDoubleValue_unit_(v12, v20, v19, v16);

    return self->_maximumDepth;
  }

  return result;
}

- (CMWaterSubmersionManager)init
{
  v5.receiver = self;
  v5.super_class = CMWaterSubmersionManager;
  v2 = [(CMWaterSubmersionManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreMotion.CMWaterSubmersionManager", 0);
    v2->_locationConnection = 0;
    v2->_dispatchQueue = v3;
    v2->_maximumDepth = 0;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_dispatchQueue, &unk_1EAFE39E0, &unk_1EAFE39E0, 0);
  if (dispatch_get_specific(&unk_1EAFE39E0) == &unk_1EAFE39E0)
  {
    objc_msgSend__disconnect(self, v3, v4);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B69EBB0;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  self->_dispatchQueue = 0;
  self->_maximumDepth = 0;
  v6.receiver = self;
  v6.super_class = CMWaterSubmersionManager;
  [(CMWaterSubmersionManager *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B69EC30;
  v3[3] = &unk_1E7532A00;
  v3[4] = self;
  v3[5] = delegate;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)_connect
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_locationConnection)
  {
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v5 = CLConnectionMessage::name(*message.var0);
  if (*(v5 + 23) < 0 && *(v5 + 8) == 62 && !memcmp(*v5, "WaterSubmersion/kCLConnectionMessageWaterSubmersionEventUpdate", 0x3EuLL))
  {
    objc_loadWeak(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v6 = *var0;
    v7 = objc_opt_class();
    ObjectOfClass = CLConnectionMessage::getObjectOfClass(v6, v7);
    v11 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v9, v10);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_19B69F3CC;
    v40[3] = &unk_1E7532A00;
    v40[4] = self;
    v40[5] = ObjectOfClass;
    objc_msgSend_addOperationWithBlock_(v11, v12, v40);
  }

  v13 = CLConnectionMessage::name(*var0);
  if (*(v13 + 23) < 0 && *(v13 + 8) == 68 && !memcmp(*v13, "WaterSubmersion/kCLConnectionMessageWaterSubmersionMeasurementUpdate", 0x44uLL))
  {
    objc_loadWeak(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v14 = *var0;
    v15 = objc_opt_class();
    v16 = CLConnectionMessage::getObjectOfClass(v14, v15);
    v19 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v17, v18);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_19B69F40C;
    v39[3] = &unk_1E7532A00;
    v39[4] = self;
    v39[5] = v16;
    objc_msgSend_addOperationWithBlock_(v19, v20, v39);
  }

  v21 = CLConnectionMessage::name(*var0);
  if (*(v21 + 23) < 0 && *(v21 + 8) == 68 && !memcmp(*v21, "WaterSubmersion/kCLConnectionMessageWaterSubmersionTemperatureUpdate", 0x44uLL))
  {
    objc_loadWeak(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v22 = *var0;
    v23 = objc_opt_class();
    v24 = CLConnectionMessage::getObjectOfClass(v22, v23);
    v27 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v25, v26);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_19B69F44C;
    v38[3] = &unk_1E7532A00;
    v38[4] = self;
    v38[5] = v24;
    objc_msgSend_addOperationWithBlock_(v27, v28, v38);
  }

  v29 = CLConnectionMessage::name(*var0);
  if (*(v29 + 23) < 0 && *(v29 + 8) == 64 && !memcmp(*v29, "WaterSubmersion/kCLConnectionMessageWaterSubmersionErrorOccurred", 0x40uLL))
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v30 = *var0;
      v31 = objc_opt_class();
      v32 = CLConnectionMessage::getObjectOfClass(v30, v31);
      v35 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v33, v34);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_19B69F48C;
      v37[3] = &unk_1E7532A00;
      v37[4] = self;
      v37[5] = v32;
      objc_msgSend_addOperationWithBlock_(v35, v36, v37);
    }
  }
}

- (void)_disconnect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_locationConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    self->_locationConnection = 0;
  }
}

@end