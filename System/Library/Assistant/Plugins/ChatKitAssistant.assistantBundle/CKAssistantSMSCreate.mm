@interface CKAssistantSMSCreate
+ (void)initialize;
- (id)_createSMSObject;
- (void)performWithCompletion:(id)completion;
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
  object = [(CKAssistantSMSCreate *)self object];
  identifier = [object identifier];
  absoluteString = [identifier absoluteString];
  v5 = [absoluteString isEqualToString:@"sms:draft"];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSString stringGUID];
    v7 = [NSString stringWithFormat:@"x-apple-sms-draft:guid=%@", v6];

    urlFromString = [v7 urlFromString];
    [object setIdentifier:urlFromString];
  }

  CKAssistantClearDrafts();
  CKAssistantUpdateStoreDraftWithSMS();
  v9 = objc_alloc_init(SADomainObjectCreateCompleted);
  identifier2 = [object identifier];
  [v9 setIdentifier:identifier2];

  return v9;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
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
    _createSMSObject = [v14 initWithErrorCode:SASmsIMessageNotAvailableErrorCode];
  }

  else
  {
    _createSMSObject = [(CKAssistantSMSCreate *)self _createSMSObject];
  }

  v9 = _createSMSObject;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      dictionary = [v9 dictionary];
      v15 = 138412290;
      v16 = dictionary;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "SMSCreate returning %@", &v15, 0xCu);
    }
  }

  dictionary2 = [v9 dictionary];
  completionCopy[2](completionCopy, dictionary2);
}

@end