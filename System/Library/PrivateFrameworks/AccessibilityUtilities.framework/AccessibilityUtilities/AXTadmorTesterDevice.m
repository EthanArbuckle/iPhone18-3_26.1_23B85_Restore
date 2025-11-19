@interface AXTadmorTesterDevice
+ (id)sharedInstance;
- (AXTadmorTesterDevice)init;
- (void)_listen;
- (void)_sendItemScanInformation;
- (void)_sendValueInputs;
- (void)deviceMonitorDidDetectDeviceEvent:(id)a3;
- (void)selectItemWithIndex:(int64_t)a3;
- (void)sendButtonEventForButtonNumber:(int64_t)a3;
- (void)sendMovementAcceleration:(CGPoint)a3;
- (void)sendSignalQuality:(int64_t)a3;
@end

@implementation AXTadmorTesterDevice

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXTadmorTesterDevice sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __38__AXTadmorTesterDevice_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(AXTadmorTesterDevice);

  return MEMORY[0x1EEE66BB8]();
}

- (AXTadmorTesterDevice)init
{
  v14[8] = *MEMORY[0x1E69E9840];
  if (AXDeviceSupportsTadmor())
  {
    v12.receiver = self;
    v12.super_class = AXTadmorTesterDevice;
    self = [(AXTadmorTesterDevice *)&v12 init];
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&TadmorDescriptor length:121];
    v13[0] = @"Product";
    v13[1] = @"ReportDescriptor";
    v14[0] = @"TAD";
    v14[1] = v3;
    v13[2] = @"ProductID";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:9999];
    v14[2] = v4;
    v13[3] = @"VendorID";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:9999];
    v14[3] = v5;
    v14[4] = @"USB";
    v13[4] = @"Transport";
    v13[5] = @"LocationID";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:336592911];
    v14[5] = v6;
    v14[6] = MEMORY[0x1E695E110];
    v13[6] = @"Built-In";
    v13[7] = @"SerialNumber";
    v7 = [MEMORY[0x1E695DFB0] null];
    v14[7] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

    [(AXTadmorTesterDevice *)self _listen];
    v9 = IOHIDUserDeviceCreate();
    self->_hidDevice = v9;
    NSLog(&cfstr_Hid.isa, v9, v8);
    if (self->_hidDevice)
    {
      IOHIDUserDeviceRegisterSetReportCallback();
      IOHIDUserDeviceRegisterGetReportCallback();
      CFRunLoopGetMain();
      IOHIDUserDeviceScheduleWithRunLoop();
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_sendItemScanInformation
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(AXDeviceMonitor *)self->_monitor copyDevices];
  v3 = [v2 anyObject];

  v4 = v3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = IOHIDDeviceCopyMatchingElements(v3, &unk_1EFE973F8, 0);
  v5 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
        *v10 = 18680834;
        *(v10 + 2) = 32515;
        NSLog(&cfstr_SendingIosOutp.isa);
        v11 = mach_absolute_time();
        v12 = IOHIDValueCreateWithBytes(0, v9, v11, v10, 8);
        if (v12)
        {
          v13 = v12;
          IOHIDDeviceSetValue(v4, v9, v12);
          CFRelease(v13);
        }

        free(v10);
      }

      v6 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)sendSignalQuality:(int64_t)a3
{
  v5 = dispatch_get_global_queue(2, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AXTadmorTesterDevice_sendSignalQuality___block_invoke;
  v6[3] = &unk_1E71EAF98;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)sendButtonEventForButtonNumber:(int64_t)a3
{
  v5 = dispatch_get_global_queue(2, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AXTadmorTesterDevice_sendButtonEventForButtonNumber___block_invoke;
  v6[3] = &unk_1E71EAF98;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

uint64_t __55__AXTadmorTesterDevice_sendButtonEventForButtonNumber___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2 - 1;
  v5 = v2 + 6;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  v6 = v5 >> 3;
  v8 = 0;
  *(&v8 + (v5 >> 3)) = 1 << (v4 - 8 * (v5 >> 3));
  NSLog(&cfstr_SendingButtonR.isa, *(v3 + 8), &unk_1EFE962E0);
  IOHIDUserDeviceHandleReport();
  *(&v8 + v6) = 0;
  NSLog(&cfstr_SendingButtonR.isa, *(*(a1 + 32) + 8), &unk_1EFE962E0);
  return IOHIDUserDeviceHandleReport();
}

- (void)sendMovementAcceleration:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AXTadmorTesterDevice_sendMovementAcceleration___block_invoke;
  block[3] = &unk_1E71EAFC0;
  *&block[5] = x;
  *&block[6] = y;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)selectItemWithIndex:(int64_t)a3
{
  v5 = dispatch_get_global_queue(2, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AXTadmorTesterDevice_selectItemWithIndex___block_invoke;
  v6[3] = &unk_1E71EAF98;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_sendValueInputs
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXTadmorTesterDevice__sendValueInputs__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __40__AXTadmorTesterDevice__sendValueInputs__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_SendingSignalQ.isa, *(*(a1 + 32) + 8), &unk_1EFE962C8);
  IOHIDUserDeviceHandleReport();
  NSLog(&cfstr_SendingButtonR.isa, *(*(a1 + 32) + 8), &unk_1EFE962E0);
  IOHIDUserDeviceHandleReport();
  NSLog(&cfstr_SendingPointer.isa, *(*(a1 + 32) + 8), &unk_1EFE962E0);
  IOHIDUserDeviceHandleReport();
  NSLog(&cfstr_SendingItemSel_0.isa, *(*(a1 + 32) + 8), &unk_1EFE962E0);
  return IOHIDUserDeviceHandleReport();
}

- (void)_listen
{
  v3 = [AXDeviceMonitor alloc];
  v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v5 = [(AXDeviceMonitor *)v3 initWithMatchingDictionary:&unk_1EFE97420 callbackRunLoop:v4];
  monitor = self->_monitor;
  self->_monitor = v5;

  [(AXDeviceMonitor *)self->_monitor setDelegate:self];
  v7 = self->_monitor;

  [(AXDeviceMonitor *)v7 begin];
}

- (void)deviceMonitorDidDetectDeviceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 copyDevices];
  NSLog(&cfstr_FoundDevice.isa, v5);

  v6 = [v4 copyDevices];
  v7 = [v6 anyObject];

  IOHIDDeviceRegisterInputValueCallback(v7, _valueCallback, self);
}

@end