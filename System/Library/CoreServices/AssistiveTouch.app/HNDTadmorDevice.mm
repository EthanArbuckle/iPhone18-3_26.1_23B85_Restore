@interface HNDTadmorDevice
- (void)_sendEventForButtonNumber:(unint64_t)number isDown:(BOOL)down;
- (void)handleValueCallback:(__IOHIDValue *)callback;
@end

@implementation HNDTadmorDevice

- (void)handleValueCallback:(__IOHIDValue *)callback
{
  Element = IOHIDValueGetElement(callback);
  Usage = IOHIDElementGetUsage(Element);
  UsagePage = IOHIDElementGetUsagePage(Element);
  ReportID = IOHIDElementGetReportID(Element);
  v9 = ASTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    *v13 = callback;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "--- TAD: value: %{public}@", &v12, 0xCu);
  }

  v10 = ASTLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67240704;
    *v13 = Usage;
    *&v13[4] = 1026;
    *&v13[6] = UsagePage;
    v14 = 1026;
    v15 = ReportID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TAD: usage: %{public}d, usagePage: %{public}d, reportID: %{public}d", &v12, 0x14u);
  }

  if (UsagePage == 9 && (v11 = IOHIDValueGetElement(callback), IOHIDElementGetUsage(v11) == 1))
  {
    [(HNDTadmorDevice *)self _sendEventForButtonNumber:1 isDown:IOHIDValueGetIntegerValue(callback) > 0];
  }

  else
  {
    _AXSAssistiveTouchScannerSetEnabled();
  }
}

- (void)_sendEventForButtonNumber:(unint64_t)number isDown:(BOOL)down
{
  downCopy = down;
  v7 = objc_opt_new();
  v11 = v7;
  if (downCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 setType:v8];
  [v11 setButtonNumber:number];
  v9 = [(HNDDevice *)self actionOverrideForUsagePage:0 usage:1];
  [v11 setActionOverride:v9];

  delegate = [(HNDDevice *)self delegate];
  [delegate device:self didPostEvent:v11];
}

@end