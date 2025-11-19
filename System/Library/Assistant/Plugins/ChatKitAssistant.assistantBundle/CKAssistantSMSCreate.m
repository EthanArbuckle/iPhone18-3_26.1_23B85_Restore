@interface CKAssistantSMSCreate
+ (void)initialize;
- (id)_createSMSObject;
- (void)performWithCompletion:(id)a3;
@end

@implementation CKAssistantSMSCreate

+ (void)initialize
{
  v2 = +[NSThread isMainThread];
  if (v2)
  {

    sub_7CD4(v2);
  }

  else
  {

    dispatch_async(&_dispatch_main_q, &stru_10568);
  }
}

- (id)_createSMSObject
{
  v2 = [(CKAssistantSMSCreate *)self object];
  v3 = [v2 identifier];
  v4 = [v3 absoluteString];
  v5 = [v4 isEqualToString:@"sms:draft"];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSString stringGUID];
    v7 = [NSString stringWithFormat:@"x-apple-sms-draft:guid=%@", v6];

    v8 = [v7 urlFromString];
    [v2 setIdentifier:v8];
  }

  CKAssistantClearDrafts();
  CKAssistantUpdateStoreDraftWithSMS();
  v9 = objc_alloc_init(SADomainObjectCreateCompleted);
  v10 = [v2 identifier];
  [v9 setIdentifier:v10];

  return v9;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSCreate performWithCompletion", &v15, 2u);
    }
  }

  if ((MGGetBoolAnswer() & 1) == 0 && (+[FTCServiceAvailabilityCenter sharedInstance](FTCServiceAvailabilityCenter, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 availabilityForListenerID:@"kSMSCreateListener" forService:1] == 0, v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "SMSCreate returning error imMessage not available for non-SMS capable device", &v15, 2u);
      }
    }

    v14 = [SACommandFailed alloc];
    v8 = [v14 initWithErrorCode:SASmsIMessageNotAvailableErrorCode];
  }

  else
  {
    v8 = [(CKAssistantSMSCreate *)self _createSMSObject];
  }

  v9 = v8;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 dictionary];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "SMSCreate returning %@", &v15, 0xCu);
    }
  }

  v12 = [v9 dictionary];
  v4[2](v4, v12);
}

@end