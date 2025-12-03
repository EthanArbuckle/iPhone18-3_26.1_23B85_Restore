@interface GuidedAccessIntentHandler
- (void)handleStartGuidedAccess:(id)access completion:(id)completion;
@end

@implementation GuidedAccessIntentHandler

- (void)handleStartGuidedAccess:(id)access completion:(id)completion
{
  accessCopy = access;
  completionCopy = completion;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = accessCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GuidedAccessIntentHandler: Handling intent %@", &v13, 0xCu);
  }

  Availability = AXGuidedAccessGetAvailability();
  v9 = GAXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _AXSGuidedAccessEnabled();
    v13 = 134218240;
    v14 = Availability;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Running shortcut for Guided Access; Guided Access availability: %lu\nGuided Access enabled in settings: %hhu", &v13, 0x12u);
  }

  if (!_AXSGuidedAccessEnabled())
  {
    goto LABEL_14;
  }

  if (Availability > 9)
  {
    if (Availability == 10)
    {
      v11 = 101;
      goto LABEL_15;
    }

    if (Availability == 11)
    {
      v11 = 102;
      goto LABEL_15;
    }

    if (Availability != 12)
    {
      goto LABEL_18;
    }

LABEL_14:
    v11 = 100;
    goto LABEL_15;
  }

  if (!Availability)
  {
    _AXSGuidedAccessStartSession();
    v11 = 4;
    goto LABEL_15;
  }

  if (Availability == 3)
  {
    v11 = 103;
    goto LABEL_15;
  }

  if (Availability != 6)
  {
LABEL_18:
    v11 = 5;
    goto LABEL_15;
  }

  v11 = 104;
LABEL_15:
  v12 = [[AXStartGuidedAccessIntentResponse alloc] initWithCode:v11 userActivity:0];
  completionCopy[2](completionCopy, v12);
}

@end