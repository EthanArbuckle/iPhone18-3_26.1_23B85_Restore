@interface VSUserNotificationOperation
- (VSUserNotificationOperation)init;
- (void)cancel;
- (void)main;
@end

@implementation VSUserNotificationOperation

- (VSUserNotificationOperation)init
{
  v3.receiver = self;
  v3.super_class = VSUserNotificationOperation;
  result = [(VSUserNotificationOperation *)&v3 init];
  if (result)
  {
    result->_userNotificationCreateProc = MEMORY[0x277CBE570];
    result->_userNotificationReceiveResponseProc = MEMORY[0x277CBE578];
    result->_userNotificationCancelProc = MEMORY[0x277CBE568];
  }

  return result;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[VSUserNotificationOperation main]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (([(VSUserNotificationOperation *)self isCancelled]& 1) == 0)
  {
    v18 = 0;
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    iconURL = [(VSUserNotificationOperation *)self iconURL];
    if (iconURL)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1F0], iconURL);
    }

    title = [(VSUserNotificationOperation *)self title];
    if (title)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBF188], title);
    }

    message = [(VSUserNotificationOperation *)self message];
    if (message)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBF198], message);
    }

    defaultButtonTitle = [(VSUserNotificationOperation *)self defaultButtonTitle];
    if (defaultButtonTitle)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1E8], defaultButtonTitle);
    }

    alternateButtonTitle = [(VSUserNotificationOperation *)self alternateButtonTitle];
    if (alternateButtonTitle)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBF1C0], alternateButtonTitle);
    }

    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Will present user notification", buf, 2u);
    }

    self->_notification = ([(VSUserNotificationOperation *)self userNotificationCreateProc])(v4, 0, &v18, Mutable, 0.0);
    v12 = VSDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Did present user notification", buf, 2u);
    }

    CFRelease(Mutable);
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Will wait to receive user notification response", buf, 2u);
    }

    v17 = 0;
    ([(VSUserNotificationOperation *)self userNotificationReceiveResponseProc])(self->_notification, &v17, 0.0);
    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Did receive user notification response", buf, 2u);
    }

    if (v17 > 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = qword_23AC70018[v17];
    }

    [(VSUserNotificationOperation *)self setResponse:v15];
    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[VSUserNotificationOperation main]";
      _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Will exit %s", buf, 0xCu);
    }
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = VSUserNotificationOperation;
  [(VSUserNotificationOperation *)&v3 cancel];
  ([(VSUserNotificationOperation *)self userNotificationCancelProc])(self->_notification);
}

@end