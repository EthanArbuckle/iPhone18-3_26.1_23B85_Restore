@interface HNDTadmorDevice
- (void)_sendEventForButtonNumber:(unint64_t)a3 isDown:(BOOL)a4;
- (void)handleValueCallback:(__IOHIDValue *)a3;
@end

@implementation HNDTadmorDevice

- (void)handleValueCallback:(__IOHIDValue *)a3
{
  Element = IOHIDValueGetElement(a3);
  Usage = IOHIDElementGetUsage(Element);
  UsagePage = IOHIDElementGetUsagePage(Element);
  ReportID = IOHIDElementGetReportID(Element);
  v9 = ASTLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    *v13 = a3;
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

  if (UsagePage == 9 && (v11 = IOHIDValueGetElement(a3), IOHIDElementGetUsage(v11) == 1))
  {
    [(HNDTadmorDevice *)self _sendEventForButtonNumber:1 isDown:IOHIDValueGetIntegerValue(a3) > 0];
  }

  else
  {
    _AXSAssistiveTouchScannerSetEnabled();
  }
}

- (void)_sendEventForButtonNumber:(unint64_t)a3 isDown:(BOOL)a4
{
  v4 = a4;
  v7 = objc_opt_new();
  v11 = v7;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 setType:v8];
  [v11 setButtonNumber:a3];
  v9 = [(HNDDevice *)self actionOverrideForUsagePage:0 usage:1];
  [v11 setActionOverride:v9];

  v10 = [(HNDDevice *)self delegate];
  [v10 device:self didPostEvent:v11];
}

@end