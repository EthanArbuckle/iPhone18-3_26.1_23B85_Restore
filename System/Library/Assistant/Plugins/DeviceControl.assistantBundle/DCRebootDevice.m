@interface DCRebootDevice
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation DCRebootDevice

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v6 = os_log_create("com.apple.ace.devicecontrol", "DeviceControl");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1278(v6);
  }

  v7 = [[FBSShutdownOptions alloc] initWithReason:@"Siri reboot"];
  [v7 setRebootType:{-[DCRebootDevice isShutdownOnly](self, "isShutdownOnly") ^ 1}];
  [v7 setSource:1];
  v8 = +[FBSSystemService sharedService];
  [v8 shutdownWithOptions:v7];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_12BC(v6);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    v9 = objc_alloc_init(SACommandSucceeded);
    v10 = [v9 dictionary];
    v5[2](v5, v10);
  }

LABEL_6:
}

@end