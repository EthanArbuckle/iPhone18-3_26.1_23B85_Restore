@interface CKAssistantSMSCancel
- (id)_cancelSMS;
- (id)_validateCancel;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSMSCancel

- (id)_validateCancel
{
  identifier = [(CKAssistantSMSCancel *)self identifier];
  if (identifier)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 0;
      goto LABEL_7;
    }

    v4 = @"Expected SASmsSms for identifier";
  }

  else
  {
    v4 = @"Expected identifier to be set";
  }

  v3 = [[SACommandFailed alloc] initWithReason:v4];
LABEL_7:

  return v3;
}

- (id)_cancelSMS
{
  CKAssistantClearDrafts();
  v2 = objc_alloc_init(SADomainObjectCancelCompleted);

  return v2;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSCancel performWithCompletion", v8, 2u);
    }
  }

  _validateCancel = [(CKAssistantSMSCancel *)self _validateCancel];
  if (!_validateCancel)
  {
    _validateCancel = [(CKAssistantSMSCancel *)self _cancelSMS];
  }

  dictionary = [_validateCancel dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end