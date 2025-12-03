@interface DCRebootDevice
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation DCRebootDevice

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
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
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (completionCopy)
  {
LABEL_5:
    v9 = objc_alloc_init(SACommandSucceeded);
    dictionary = [v9 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

LABEL_6:
}

@end