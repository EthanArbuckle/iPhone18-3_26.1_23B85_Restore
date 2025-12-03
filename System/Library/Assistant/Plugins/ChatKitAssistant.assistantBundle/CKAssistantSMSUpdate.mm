@interface CKAssistantSMSUpdate
- (id)_updateSMS;
- (id)_validateUpdate;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSMSUpdate

- (id)_updateSMS
{
  identifier = [(CKAssistantSMSUpdate *)self identifier];
  v3Identifier = [identifier identifier];
  v5 = CKAssistantGetDraftForIdentifier();

  if (v5)
  {
    setFields = [(CKAssistantSMSUpdate *)self setFields];
    addFields = [(CKAssistantSMSUpdate *)self addFields];
    removeFields = [(CKAssistantSMSUpdate *)self removeFields];
    [v5 updateUsingSet:setFields add:addFields remove:removeFields];

    CKAssistantUpdateStoreDraftWithSMS();
    v9 = objc_alloc_init(SADomainObjectUpdateCompleted);
    identifier2 = [v5 identifier];
    [v9 setIdentifier:identifier2];
  }

  else
  {
    v9 = [[SACommandFailed alloc] initWithReason:@"Could not create SMS object to update from current draft"];
  }

  return v9;
}

- (id)_validateUpdate
{
  identifier = [(CKAssistantSMSUpdate *)self identifier];

  if (!identifier)
  {
    v17 = [[SACommandFailed alloc] initWithReason:@"Expected identifier to be set"];
    goto LABEL_19;
  }

  identifier2 = [(CKAssistantSMSUpdate *)self identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = @"Expected SASmsSms for identifier";
LABEL_17:
    v17 = [[SACommandFailed alloc] initWithReason:v18];
    goto LABEL_18;
  }

  v4Identifier = [identifier2 identifier];
  absoluteString = [v4Identifier absoluteString];
  v7 = [absoluteString length];

  if (!v7)
  {
    v18 = @"Invalid sms identifier";
    goto LABEL_17;
  }

  setFields = [(CKAssistantSMSUpdate *)self setFields];

  if (setFields)
  {
    setFields2 = [(CKAssistantSMSUpdate *)self setFields];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = @"Expected SASmsSms for setFields";
      goto LABEL_17;
    }
  }

  addFields = [(CKAssistantSMSUpdate *)self addFields];

  if (addFields)
  {
    addFields2 = [(CKAssistantSMSUpdate *)self addFields];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      v18 = @"Expected SASmsSms for addFields";
      goto LABEL_17;
    }
  }

  removeFields = [(CKAssistantSMSUpdate *)self removeFields];

  if (removeFields)
  {
    removeFields2 = [(CKAssistantSMSUpdate *)self removeFields];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      v18 = @"Expected SASmsSms for removeFields";
      goto LABEL_17;
    }
  }

  v17 = 0;
LABEL_18:

LABEL_19:

  return v17;
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
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSUpdate performWithCompletion", v8, 2u);
    }
  }

  _validateUpdate = [(CKAssistantSMSUpdate *)self _validateUpdate];
  if (!_validateUpdate)
  {
    _validateUpdate = [(CKAssistantSMSUpdate *)self _updateSMS];
  }

  dictionary = [_validateUpdate dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end