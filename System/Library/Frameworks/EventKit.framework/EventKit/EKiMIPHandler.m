@interface EKiMIPHandler
+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4;
+ (id)emailsFromAttendees:(id)a3;
- (BOOL)sendEmail;
- (EKiMIPHandler)initWithEvent:(id)a3;
- (id)attachmentData;
- (id)attendees;
- (id)emailAttachmentName;
- (id)emailBody;
- (id)emailSubject;
- (int)icsMethod;
- (void)sendEmail;
@end

@implementation EKiMIPHandler

- (EKiMIPHandler)initWithEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKiMIPHandler;
  v6 = [(EKiMIPHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

- (id)attachmentData
{
  v2 = [(EKiMIPHandler *)self iCalendarDocumentWithMethod:[(EKiMIPHandler *)self icsMethod]];
  v3 = [v2 ICSDataWithOptions:0];

  return v3;
}

- (BOOL)sendEmail
{
  v3 = [(EKiMIPHandler *)self attendees];
  v4 = [EKiMIPHandler emailsFromAttendees:v3];

  if ([v4 count])
  {
    v5 = [(EKiMIPHandler *)self emailSubject];
    if (!v5)
    {
      v6 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKiMIPHandler *)self sendEmail:v6];
      }
    }
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKiMIPHandler *)self sendEmail:v13];
    }
  }

  return 0;
}

+ (id)emailsFromAttendees:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 emailAddress];

        if (v11)
        {
          v12 = [v10 emailAddress];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)shouldSendEmailForEvent:(id)a3 withDiff:(id)a4
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (id)attendees
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (id)emailSubject
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (id)emailBody
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (id)emailAttachmentName
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (int)icsMethod
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12();
  return 0;
}

- (void)sendEmail
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 8));
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "No email recipients for iMIP event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)iCalendarDocumentWithMethod:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "Could not parse ICSDocument from data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end