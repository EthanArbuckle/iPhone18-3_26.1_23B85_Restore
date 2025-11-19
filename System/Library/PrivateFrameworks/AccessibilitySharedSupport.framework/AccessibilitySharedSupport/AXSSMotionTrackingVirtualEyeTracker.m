@interface AXSSMotionTrackingVirtualEyeTracker
+ (NSData)_eyeTrackerHIDReportDescriptorData;
+ (NSDictionary)_eyeTrackerHIDDeviceProperties;
+ (id)_hidReportWithButtonDown:(BOOL)a3;
+ (id)_hidReportWithPoint:(CGPoint)a3 reportID:(unint64_t)a4 timestamp:(unint64_t)a5 version:(unint64_t)a6;
+ (id)_hidReportWithStatusChange:(unint64_t)a3;
- (AXSSMotionTrackingVirtualEyeTracker)initWithScreenBounds:(CGRect)a3;
- (CGRect)screenBounds;
- (void)_activateOnReportingQueue;
- (void)_changeStatusOnReportingQueueTo:(unint64_t)a3;
- (void)_deactivateOnReportingQueue;
- (void)_moveOnReportingQueueToPoint:(CGPoint)a3;
- (void)activate;
- (void)changeStatusTo:(unint64_t)a3;
- (void)click;
- (void)deactivate;
- (void)dealloc;
- (void)moveToPoint:(CGPoint)a3;
@end

@implementation AXSSMotionTrackingVirtualEyeTracker

- (AXSSMotionTrackingVirtualEyeTracker)initWithScreenBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = AXSSMotionTrackingVirtualEyeTracker;
  v7 = [(AXSSMotionTrackingVirtualEyeTracker *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenBounds.origin.x = x;
    v7->_screenBounds.origin.y = y;
    v7->_screenBounds.size.width = width;
    v7->_screenBounds.size.height = height;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.accessibility.AXSSMotionTrackingVirtualEyeTracker.%p.hidQueue", v7];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    hidUserDeviceQueue = v8->__hidUserDeviceQueue;
    v8->__hidUserDeviceQueue = v12;

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.accessibility.AXSSMotionTrackingVirtualEyeTracker.%p.reportingQueue", v8];

    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    reportingQueue = v8->__reportingQueue;
    v8->__reportingQueue = v17;
  }

  return v8;
}

- (void)dealloc
{
  hidUserDevice = self->__hidUserDevice;
  if (hidUserDevice)
  {
    [(HIDUserDevice *)hidUserDevice cancel];
  }

  v4.receiver = self;
  v4.super_class = AXSSMotionTrackingVirtualEyeTracker;
  [(AXSSMotionTrackingVirtualEyeTracker *)&v4 dealloc];
}

- (void)activate
{
  v3 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXSSMotionTrackingVirtualEyeTracker_activate__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)deactivate
{
  v3 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AXSSMotionTrackingVirtualEyeTracker_deactivate__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    v6 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AXSSMotionTrackingVirtualEyeTracker_moveToPoint___block_invoke;
    block[3] = &unk_1E8134CE8;
    block[4] = self;
    *&block[5] = x;
    *&block[6] = y;
    dispatch_sync(v6, block);
  }

  else
  {
    v7 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSSMotionTrackingVirtualEyeTracker moveToPoint:];
    }
  }
}

- (void)click
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)changeStatusTo:(unint64_t)a3
{
  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    v5 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__AXSSMotionTrackingVirtualEyeTracker_changeStatusTo___block_invoke;
    v7[3] = &unk_1E8134D10;
    v7[4] = self;
    v7[5] = a3;
    dispatch_sync(v5, v7);
  }

  else
  {
    v6 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSSMotionTrackingVirtualEyeTracker changeStatusTo:];
    }
  }
}

+ (NSDictionary)_eyeTrackerHIDDeviceProperties
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"ReportDescriptor";
  v2 = [a1 _eyeTrackerHIDReportDescriptorData];
  v7[0] = v2;
  v7[1] = @"Virtual Eye Tracker (Testing Use Only)";
  v6[1] = @"Product";
  v6[2] = @"VendorID";
  v7[2] = &unk_1F40666D8;
  v7[3] = &unk_1F40666D8;
  v6[3] = @"ProductID";
  v6[4] = @"ReportInterval";
  v6[5] = @"Authenticated";
  v7[4] = &unk_1F40666F0;
  v7[5] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (NSData)_eyeTrackerHIDReportDescriptorData
{
  if (_eyeTrackerHIDReportDescriptorData_onceToken != -1)
  {
    +[AXSSMotionTrackingVirtualEyeTracker _eyeTrackerHIDReportDescriptorData];
  }

  v3 = _eyeTrackerHIDReportDescriptorData_s_eyeTrackerHIDReportDescriptorData;

  return v3;
}

void __73__AXSSMotionTrackingVirtualEyeTracker__eyeTrackerHIDReportDescriptorData__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[8] = xmmword_1C0F55F90;
  *v4 = unk_1C0F55FA0;
  *&v4[13] = 0xC0C0068102950875;
  v3[4] = xmmword_1C0F55F50;
  v3[5] = unk_1C0F55F60;
  v3[6] = xmmword_1C0F55F70;
  v3[7] = unk_1C0F55F80;
  v3[0] = xmmword_1C0F55F10;
  v3[1] = unk_1C0F55F20;
  v3[2] = xmmword_1C0F55F30;
  v3[3] = unk_1C0F55F40;
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v3 length:165];
  v1 = _eyeTrackerHIDReportDescriptorData_s_eyeTrackerHIDReportDescriptorData;
  _eyeTrackerHIDReportDescriptorData_s_eyeTrackerHIDReportDescriptorData = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_activateOnReportingQueue
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_moveOnReportingQueueToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v33 = *MEMORY[0x1E69E9840];
  v6 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(v6);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    v7 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (v7)
    {
      v8 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v34.x = x;
        v34.y = y;
        v9 = NSStringFromPoint(v34);
        *buf = 136315394;
        v30 = "[AXSSMotionTrackingVirtualEyeTracker _moveOnReportingQueueToPoint:]";
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
      }

      v10 = fmax(x, 0.0);
      [(AXSSMotionTrackingVirtualEyeTracker *)self screenBounds];
      if (v10 >= v11)
      {
        v10 = v11;
      }

      v12 = fmax(y, 0.0);
      [(AXSSMotionTrackingVirtualEyeTracker *)self screenBounds];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      [(AXSSMotionTrackingVirtualEyeTracker *)self screenBounds];
      v16 = v10 / v15;
      [(AXSSMotionTrackingVirtualEyeTracker *)self screenBounds];
      v18 = v14 / v17;
      if (_moveOnReportingQueueToPoint__onceToken != -1)
      {
        [AXSSMotionTrackingVirtualEyeTracker _moveOnReportingQueueToPoint:];
      }

      v19 = v16 / *&_moveOnReportingQueueToPoint__s_unitExponent;
      v20 = v18 / *&_moveOnReportingQueueToPoint__s_unitExponent;
      v21 = objc_opt_class();
      v22 = [v21 _hidReportWithPoint:1 reportID:mach_absolute_time() timestamp:0 version:{v19, v20}];
      v23 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      v28 = 0;
      v24 = [v23 handleReport:v22 error:&v28];
      v25 = v28;

      if ((v24 & 1) == 0)
      {
        v26 = AXSSLogForCategory(2);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [AXSSMotionTrackingVirtualEyeTracker _moveOnReportingQueueToPoint:];
        }
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

+ (id)_hidReportWithPoint:(CGPoint)a3 reportID:(unint64_t)a4 timestamp:(unint64_t)a5 version:(unint64_t)a6
{
  v6 = a6;
  v8 = a4;
  y = a3.y;
  x = a3.x;
  v11 = [MEMORY[0x1E695DF88] data];
  v18 = v8;
  v17 = v6;
  v16 = a5;
  v14 = y;
  v15 = x;
  [v11 appendBytes:&v18 length:1];
  [v11 appendBytes:&v17 length:1];
  [v11 appendBytes:&v16 length:8];
  [v11 appendBytes:&v15 length:4];
  [v11 appendBytes:&v14 length:4];
  v12 = [v11 copy];

  return v12;
}

+ (id)_hidReportWithButtonDown:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v10 = 3;
  [v4 appendBytes:&v10 length:1];
  v9 = a3;
  [v4 appendBytes:&v9 length:1];
  v8 = 0;
  [v4 appendBytes:&v8 length:1];
  v7 = 0;
  [v4 appendBytes:&v7 length:1];
  v5 = [v4 copy];

  return v5;
}

- (void)_changeStatusOnReportingQueueTo:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(v5);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    v6 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (v6)
    {
      v7 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[AXSSMotionTrackingVirtualEyeTracker _changeStatusOnReportingQueueTo:]";
        v16 = 2048;
        v17 = a3;
        _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_INFO, "%s: %lu", buf, 0x16u);
      }

      v8 = [objc_opt_class() _hidReportWithStatusChange:a3];
      v9 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      v13 = 0;
      v10 = [v9 handleReport:v8 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [AXSSMotionTrackingVirtualEyeTracker _changeStatusOnReportingQueueTo:];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_hidReportWithStatusChange:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = 2;
  [v4 appendBytes:&v9 length:1];
  v8 = 0;
  [v4 appendBytes:&v8 length:2];
  v7 = v3;
  [v4 appendBytes:&v7 length:1];
  v5 = [v4 copy];

  return v5;
}

- (void)_deactivateOnReportingQueue
{
  v3 = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(v3);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    v4 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (v4)
    {
      v5 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      [v5 cancel];

      [(AXSSMotionTrackingVirtualEyeTracker *)self set_hidUserDevice:0];
    }

    [(AXSSMotionTrackingVirtualEyeTracker *)self set_activated:0];
  }
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)moveToPoint:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)changeStatusTo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_moveOnReportingQueueToPoint:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_ERROR, "%s: Couldn't handle report %@: %@!", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_clickOnReportingQueueWithButtonDown:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_changeStatusOnReportingQueueTo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end