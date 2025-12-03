@interface CKAssistantSMSGroupSearch
- (id)_search;
- (id)_validate;
- (id)identifierForChatIdentifier:(id)identifier;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSMSGroupSearch

- (id)identifierForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [@"x-apple-sms-group://" stringByAppendingString:identifierCopy];
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_search
{
  v3 = objc_alloc_init(SASmsGroupSearchCompleted);
  v4 = IMDChatRecordCopyAllNamedChats();
  if (v4)
  {
    v5 = v4;
    if (!CFArrayGetCount(v4))
    {
      CFRelease(v5);
      v14 = 0;
      goto LABEL_25;
    }

    v6 = objc_alloc_init(NSMutableArray);
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        if (CFArrayGetValueAtIndex(v5, v7))
        {
          v16[1] = 0;
          *buf = 0;
          v16[0] = 0;
          _IMDChatRecordBulkCopy();
          if ([v16[0] length])
          {
            smsGroupName = [(CKAssistantSMSGroupSearch *)self smsGroupName];
            [smsGroupName isEqualToString:v16[0]];
          }
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v5));
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        smsGroupName2 = [(CKAssistantSMSGroupSearch *)self smsGroupName];
        *buf = 138412546;
        *&buf[4] = smsGroupName2;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Looking at groups with name %@ and found groups names %@", buf, 0x16u);
      }
    }

    [v3 setSmsGroups:v6];
    CFRelease(v5);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        smsGroupName3 = [(CKAssistantSMSGroupSearch *)self smsGroupName];
        *buf = 138412290;
        *&buf[4] = smsGroupName3;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Looking at groups with name %@ but there were no named chats at all", buf, 0xCu);
      }
    }

    v6 = v3;
    v3 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "SMS Group search returning result %@", buf, 0xCu);
    }
  }

  v3 = v3;
  v14 = v3;
LABEL_25:

  return v14;
}

- (id)_validate
{
  smsGroupName = [(CKAssistantSMSGroupSearch *)self smsGroupName];
  if ([smsGroupName length])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[SACommandFailed alloc] initWithReason:@"CKAssistantSMSGroupSearch has nil or empty group name"];
  }

  return v3;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSGroupSearch performWithCompletion", buf, 2u);
    }
  }

  _validate = [(CKAssistantSMSGroupSearch *)self _validate];
  if (_validate)
  {
    _perform = _validate;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "SMSGroupSearch performWithCompletion", v10, 2u);
      }
    }
  }

  else
  {
    _perform = [(CKAssistantSMSGroupSearch *)self _perform];
  }

  dictionary = [_perform dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end