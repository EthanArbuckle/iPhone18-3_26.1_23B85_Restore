@interface AXSSMotionTrackingVirtualEyeTracker
+ (NSData)_eyeTrackerHIDReportDescriptorData;
+ (NSDictionary)_eyeTrackerHIDDeviceProperties;
+ (id)_hidReportWithButtonDown:(BOOL)down;
+ (id)_hidReportWithPoint:(CGPoint)point reportID:(unint64_t)d timestamp:(unint64_t)timestamp version:(unint64_t)version;
+ (id)_hidReportWithStatusChange:(unint64_t)change;
- (AXSSMotionTrackingVirtualEyeTracker)initWithScreenBounds:(CGRect)bounds;
- (CGRect)screenBounds;
- (void)_activateOnReportingQueue;
- (void)_changeStatusOnReportingQueueTo:(unint64_t)to;
- (void)_deactivateOnReportingQueue;
- (void)_moveOnReportingQueueToPoint:(CGPoint)point;
- (void)activate;
- (void)changeStatusTo:(unint64_t)to;
- (void)click;
- (void)deactivate;
- (void)dealloc;
- (void)moveToPoint:(CGPoint)point;
@end

@implementation AXSSMotionTrackingVirtualEyeTracker

- (AXSSMotionTrackingVirtualEyeTracker)initWithScreenBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    hidUserDeviceQueue = v8->__hidUserDeviceQueue;
    v8->__hidUserDeviceQueue = v12;

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.accessibility.AXSSMotionTrackingVirtualEyeTracker.%p.reportingQueue", v8];

    uTF8String2 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String2, v16);
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
  _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXSSMotionTrackingVirtualEyeTracker_activate__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_sync(_reportingQueue, block);
}

- (void)deactivate
{
  _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AXSSMotionTrackingVirtualEyeTracker_deactivate__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  dispatch_sync(_reportingQueue, block);
}

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AXSSMotionTrackingVirtualEyeTracker_moveToPoint___block_invoke;
    block[3] = &unk_1E8134CE8;
    block[4] = self;
    *&block[5] = x;
    *&block[6] = y;
    dispatch_sync(_reportingQueue, block);
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

- (void)changeStatusTo:(unint64_t)to
{
  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__AXSSMotionTrackingVirtualEyeTracker_changeStatusTo___block_invoke;
    v7[3] = &unk_1E8134D10;
    v7[4] = self;
    v7[5] = to;
    dispatch_sync(_reportingQueue, v7);
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
  _eyeTrackerHIDReportDescriptorData = [self _eyeTrackerHIDReportDescriptorData];
  v7[0] = _eyeTrackerHIDReportDescriptorData;
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

- (void)_moveOnReportingQueueToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x1E69E9840];
  _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(_reportingQueue);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    _hidUserDevice = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (_hidUserDevice)
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
      _hidUserDevice2 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      v28 = 0;
      v24 = [_hidUserDevice2 handleReport:v22 error:&v28];
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

+ (id)_hidReportWithPoint:(CGPoint)point reportID:(unint64_t)d timestamp:(unint64_t)timestamp version:(unint64_t)version
{
  versionCopy = version;
  dCopy = d;
  y = point.y;
  x = point.x;
  data = [MEMORY[0x1E695DF88] data];
  v18 = dCopy;
  v17 = versionCopy;
  timestampCopy = timestamp;
  v14 = y;
  v15 = x;
  [data appendBytes:&v18 length:1];
  [data appendBytes:&v17 length:1];
  [data appendBytes:&timestampCopy length:8];
  [data appendBytes:&v15 length:4];
  [data appendBytes:&v14 length:4];
  v12 = [data copy];

  return v12;
}

+ (id)_hidReportWithButtonDown:(BOOL)down
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v10 = 3;
  [v4 appendBytes:&v10 length:1];
  downCopy = down;
  [v4 appendBytes:&downCopy length:1];
  v8 = 0;
  [v4 appendBytes:&v8 length:1];
  v7 = 0;
  [v4 appendBytes:&v7 length:1];
  v5 = [v4 copy];

  return v5;
}

- (void)_changeStatusOnReportingQueueTo:(unint64_t)to
{
  v18 = *MEMORY[0x1E69E9840];
  _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(_reportingQueue);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    _hidUserDevice = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (_hidUserDevice)
    {
      v7 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[AXSSMotionTrackingVirtualEyeTracker _changeStatusOnReportingQueueTo:]";
        v16 = 2048;
        toCopy = to;
        _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_INFO, "%s: %lu", buf, 0x16u);
      }

      v8 = [objc_opt_class() _hidReportWithStatusChange:to];
      _hidUserDevice2 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      v13 = 0;
      v10 = [_hidUserDevice2 handleReport:v8 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [AXSSMotionTrackingVirtualEyeTracker _changeStatusOnReportingQueueTo:];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_hidReportWithStatusChange:(unint64_t)change
{
  changeCopy = change;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = 2;
  [v4 appendBytes:&v9 length:1];
  v8 = 0;
  [v4 appendBytes:&v8 length:2];
  v7 = changeCopy;
  [v4 appendBytes:&v7 length:1];
  v5 = [v4 copy];

  return v5;
}

- (void)_deactivateOnReportingQueue
{
  _reportingQueue = [(AXSSMotionTrackingVirtualEyeTracker *)self _reportingQueue];
  dispatch_assert_queue_V2(_reportingQueue);

  if ([(AXSSMotionTrackingVirtualEyeTracker *)self _activated])
  {
    _hidUserDevice = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];

    if (_hidUserDevice)
    {
      _hidUserDevice2 = [(AXSSMotionTrackingVirtualEyeTracker *)self _hidUserDevice];
      [_hidUserDevice2 cancel];

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