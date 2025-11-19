@interface EKUIEmailCompositionManager
+ (BOOL)canShowViewControllerForEvent:(id)a3 withParticipantRecipients:(id)a4;
+ (id)_recipientEmailAddressesToDisplayNames:(id)a3 withParticipantRecipients:(id)a4;
- (EKUIEmailCompositionManager)initWithEvent:(id)a3 participantRecipients:(id)a4 subjectPrefix:(id)a5 bodyPrefix:(id)a6;
- (id)_htmlBodyForMailMessageWithNames:(id)a3;
- (void)initViewController;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
@end

@implementation EKUIEmailCompositionManager

- (EKUIEmailCompositionManager)initWithEvent:(id)a3 participantRecipients:(id)a4 subjectPrefix:(id)a5 bodyPrefix:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EKUIEmailCompositionManager;
  v15 = [(EKUIEmailCompositionManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_event, a3);
    objc_storeStrong(&v16->_participantRecipients, a4);
    objc_storeStrong(&v16->_subjectPrefix, a5);
    objc_storeStrong(&v16->_bodyPrefix, a6);
    [(EKUIEmailCompositionManager *)v16 initViewController];
  }

  return v16;
}

+ (BOOL)canShowViewControllerForEvent:(id)a3 withParticipantRecipients:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v14 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      v15 = "No event given.  Will not determine whether this view controller should be shown.";
      v16 = &v19;
LABEL_11:
      _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_DEBUG, v15, v16, 2u);
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E6993370] sharedInstance];
  v8 = [v5 calendar];
  v9 = [v8 source];
  v10 = [v7 sourceIsManaged:v9];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (([(objc_class *)+[CalendarMessageUIProxy canSendMailSourceAccountManagement:"canSendMailSourceAccountManagement:"]== 0)
  {
    v14 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v15 = "Cannot send mail, so this view shouldn't be shown.";
      v16 = &v18;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v12 = [objc_opt_class() _recipientEmailAddressesToDisplayNames:v5 withParticipantRecipients:v6];
  v13 = [v12 count] != 0;

LABEL_13:
  return v13;
}

- (void)initViewController
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _recipientEmailAddressesToDisplayNames:self->_event withParticipantRecipients:self->_participantRecipients];
  v4 = [objc_opt_class() _recipientEmailAddressesToDisplayNames:self->_event withParticipantRecipients:0];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__EKUIEmailCompositionManager_initViewController__block_invoke;
  v36[3] = &unk_1E843F700;
  v7 = v5;
  v37 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v36];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __49__EKUIEmailCompositionManager_initViewController__block_invoke_2;
  v34 = &unk_1E843F700;
  v8 = v6;
  v35 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:&v31];
  v9 = [MEMORY[0x1E6993370] sharedInstance];
  v10 = [(EKEvent *)self->_event calendar];
  v11 = [v10 source];
  v12 = [v9 sourceIsManaged:v11];

  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = [objc_alloc(+[CalendarMessageUIProxy MFMailComposeViewControllerClass](CalendarMessageUIProxy "MFMailComposeViewControllerClass"))];
  composeViewController = self->_composeViewController;
  self->_composeViewController = v14;

  [(MFMailComposeViewController *)self->_composeViewController setMailComposeDelegate:self];
  [(MFMailComposeViewController *)self->_composeViewController setToRecipients:v7];
  v16 = [(EKEvent *)self->_event selfAttendee];
  v17 = [v16 emailAddress];

  if (v17)
  {
    v18 = self->_composeViewController;
    v19 = [(EKEvent *)self->_event selfAttendee];
    v20 = [v19 emailAddress];
    [(MFMailComposeViewController *)v18 setPreferredSendingEmailAddress:v20];
  }

  if ([(EKEvent *)self->_event isSelfOrganized])
  {
    v21 = [(EKEvent *)self->_event organizer];

    if (v21)
    {
      v22 = self->_composeViewController;
      v23 = [(EKEvent *)self->_event organizer];
      v24 = [v23 emailAddress];
      [(MFMailComposeViewController *)v22 setPreferredSendingEmailAddress:v24];
    }
  }

  subjectPrefix = self->_subjectPrefix;
  if (subjectPrefix)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = [(EKEvent *)self->_event title];
    v28 = [v26 stringWithFormat:@"%@ %@", subjectPrefix, v27, v31, v32, v33, v34];
    [(MFMailComposeViewController *)self->_composeViewController setSubject:v28];
  }

  else
  {
    v27 = [(EKEvent *)self->_event title];
    [(MFMailComposeViewController *)self->_composeViewController setSubject:v27];
  }

  v29 = [(EKUIEmailCompositionManager *)self _htmlBodyForMailMessageWithNames:v8];
  [(MFMailComposeViewController *)self->_composeViewController setMessageBody:v29 isHTML:1];
  v30 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v29;
    _os_log_impl(&dword_1D3400000, v30, OS_LOG_TYPE_DEBUG, "Applied HTML message body: [%@]", buf, 0xCu);
  }
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 == 3)
  {
    v10 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "Mail compose controller failed to send result: %@", &v14, 0xCu);
    }
  }

  v11 = [(EKUIEmailCompositionManager *)self messageSendingComplete];

  v12 = kEKUILogHandle;
  if (v11)
  {
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEFAULT, "Notify of composition completion.", &v14, 2u);
    }

    v13 = [(EKUIEmailCompositionManager *)self messageSendingComplete];
    (v13)[2](v13, a4 == 2);
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, "No 'messageSendingComplete' block provided.  Will not notify of completion.", &v14, 2u);
  }
}

+ (id)_recipientEmailAddressesToDisplayNames:(id)a3 withParticipantRecipients:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (![v6 count])
  {
    v7 = [EKUICommunicationUtilities attendeesIgnoringMe:v5];
  }

  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v10 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Generating a mapping between recipient email addresses and display names.", buf, 2u);
  }

  v14 = v7;
  v15 = v9;
  v11 = v7;
  CalendarFoundationPerformBlockOnSharedContactStore();
  v12 = v15;

  return v15;
}

void __96__EKUIEmailCompositionManager__recipientEmailAddressesToDisplayNames_withParticipantRecipients___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v26 = *MEMORY[0x1E695C208];
    v6 = 0x1E695C000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 emailAddress];
        v10 = [v8 name];
        if (v10)
        {
          if (v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = [*(v6 + 3456) descriptorForRequiredKeysForStyle:0];
          v34 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

          v13 = [v8 contactPredicate];
          v14 = [v28 unifiedContactsMatchingPredicate:v13 keysToFetch:v12 error:0];

          if ([v14 count])
          {
            v15 = *(v6 + 3456);
            v16 = [v14 objectAtIndexedSubscript:0];
            v10 = [v15 stringFromContact:v16 style:0];

            v6 = 0x1E695C000;
          }

          else
          {
            v10 = 0;
          }

          if (v9)
          {
LABEL_19:
            if (v10)
            {
              v25 = v10;
            }

            else
            {
              v25 = v9;
            }

            [*(a1 + 40) setObject:v25 forKey:v9];
            v17 = v9;
            goto LABEL_23;
          }
        }

        v33 = v26;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v18 = [v8 contactPredicate];
        v19 = [v28 unifiedContactsMatchingPredicate:v18 keysToFetch:v17 error:0];

        if (![v19 count])
        {

LABEL_23:
          goto LABEL_24;
        }

        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 emailAddresses];
        v22 = [v21 count];

        if (v22)
        {
          v23 = [v20 emailAddresses];
          v24 = [v23 objectAtIndexedSubscript:0];

          v9 = [v24 value];
        }

        else
        {
          v9 = 0;
        }

        v6 = 0x1E695C000;

        if (v9)
        {
          goto LABEL_19;
        }

LABEL_24:
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }
}

- (id)_htmlBodyForMailMessageWithNames:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"<br><br>"];
  if (self->_bodyPrefix)
  {
    [v5 appendString:?];
  }

  [v5 appendString:@"<br><br>"];
  v6 = [(EKEvent *)self->_event title];
  [v5 appendFormat:@"<b>%@</b><br>", v6];

  v7 = [MEMORY[0x1E69933E0] sharedGenerator];
  v8 = [v7 dateStringRepresentationForEvent:self->_event];

  if (v8)
  {
    [v5 appendFormat:@"%@<br>", v8];
  }

  v9 = [(EKEvent *)self->_event locationWithoutPrediction];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Location: %@" value:&stru_1F4EF6790 table:0];
    v14 = [(EKEvent *)self->_event locationWithoutPrediction];
    v15 = [v11 localizedStringWithFormat:v13, v14];
    [v5 appendFormat:@"%@<br>", v15];
  }

  v16 = [(EKEvent *)self->_event virtualConference];

  if (v16)
  {
    v17 = [MEMORY[0x1E69933E0] sharedGenerator];
    v18 = [v17 virtualConferenceEmailHTMLRepresentation:self->_event];
    [v5 appendString:v18];
  }

  if ([v4 count])
  {
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    v20 = [v4 mf_commaSeparatedRecipientListWithWidth:v19 forFont:1.79769313e308];

    v21 = MEMORY[0x1E696AEC0];
    v22 = EventKitUIBundle();
    v23 = [v22 localizedStringForKey:@"Invitees: %@" value:&stru_1F4EF6790 table:0];
    v24 = [v21 localizedStringWithFormat:v23, v20];
    [v5 appendFormat:@"%@", v24];
  }

  return v5;
}

@end