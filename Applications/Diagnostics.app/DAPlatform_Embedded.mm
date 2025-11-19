@interface DAPlatform_Embedded
- (void)_activateCFUserNotificationWithTitle:(id)a3 message:(id)a4 defaultButtonName:(id)a5 cancelButtonName:(id)a6 handler:(id)a7;
@end

@implementation DAPlatform_Embedded

- (void)_activateCFUserNotificationWithTitle:(id)a3 message:(id)a4 defaultButtonName:(id)a5 cancelButtonName:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setObject:v16 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  [v17 setObject:v15 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v17 setObject:v13 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  [v17 setObject:v14 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [(DAPlatform_Embedded *)self _addPlatformCFUserNotificationOptions:v17];
  v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v17);
  if (v18)
  {
    v19 = v18;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v18, 0.0, &responseFlags);
    CFRelease(v19);
    if (v12 && responseFlags == 1)
    {
      v12[2](v12);
    }
  }

  else
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100158F4C(v20);
    }
  }
}

@end