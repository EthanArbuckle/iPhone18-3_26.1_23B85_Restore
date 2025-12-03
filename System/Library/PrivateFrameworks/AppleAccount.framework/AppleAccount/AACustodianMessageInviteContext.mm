@interface AACustodianMessageInviteContext
- (AACustodianMessageInviteContext)initWithLocalContact:(id)contact custodianID:(id)d appleAccount:(id)account;
- (id)_messageURLForCustodianID:(id)d;
- (id)_urlForCustodianID:(id)d;
@end

@implementation AACustodianMessageInviteContext

- (AACustodianMessageInviteContext)initWithLocalContact:(id)contact custodianID:(id)d appleAccount:(id)account
{
  v28[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dCopy = d;
  accountCopy = account;
  if (!dCopy)
  {
    [AACustodianMessageInviteContext initWithLocalContact:a2 custodianID:self appleAccount:?];
  }

  v12 = [(AACustodianMessageInviteContext *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appleAccount, account);
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v15 = [v14 localizedStringForKey:@"CUSTODIAN_MESSAGES_BUBBLE_TITLE" value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v13 setTitle:v15];

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v17 = [v16 localizedStringForKey:@"APPLE" value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v13 setSubtitle:v17];

    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v19 = [v18 localizedStringForKey:@"CUSTODIAN_MESSAGES_BUBBLE_ACTION_LABEL" value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v13 setAction:v19];

    handle = [contactCopy handle];
    v28[0] = handle;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [(AAMessagesInviteContext *)v13 setRecipients:v21];

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v23 = [v22 localizedStringForKey:@"CUSTODIAN_MESSAGES_BUBBLE_INVITE_BODY" value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v13 setMessageBody:v23];

    v24 = [(AACustodianMessageInviteContext *)v13 _urlForCustodianID:dCopy];
    [(AAMessagesInviteContext *)v13 setInviteURL:v24];

    v25 = [(AACustodianMessageInviteContext *)v13 _messageURLForCustodianID:dCopy];
    [(AACustodianMessageInviteContext *)v13 setMessageURL:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_urlForCustodianID:(id)d
{
  v3 = [AAUniversalLinkHelper stringForCustodianMessagesURLWithUUID:d];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

- (id)_messageURLForCustodianID:(id)d
{
  v4 = MEMORY[0x1E696AF20];
  dCopy = d;
  v70 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v9 = [v8 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_TITLE" value:0 table:@"Localizable"];
  v10 = [v7 initWithName:@"messageTitle" value:v9];
  [v6 addObject:v10];

  appleAccount = self->_appleAccount;
  v12 = objc_alloc(MEMORY[0x1E696AF60]);
  if (appleAccount)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v15 = [v14 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_SUBTITLE" value:0 table:@"Localizable"];
    aa_firstName = [(ACAccount *)self->_appleAccount aa_firstName];
    v17 = [v13 stringWithFormat:v15, aa_firstName];
    v18 = [v12 initWithName:@"messageSubTitle" value:v17];
    [v6 addObject:v18];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v15 = [v14 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_SUBTITLE_NO_ACCOUNT" value:0 table:@"Localizable"];
    aa_firstName = [v12 initWithName:@"messageSubTitle" value:v15];
    [v6 addObject:aa_firstName];
  }

  v19 = objc_alloc(MEMORY[0x1E696AF60]);
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v21 = [v20 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_ACCEPT_BUTTON_LABEL" value:0 table:@"Localizable"];
  v22 = [v19 initWithName:@"acceptButtonLabel" value:v21];
  [v6 addObject:v22];

  v23 = objc_alloc(MEMORY[0x1E696AF60]);
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v25 = [v24 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_DECLINE_BUTTON_LABEL" value:0 table:@"Localizable"];
  v26 = [v23 initWithName:@"declineButtonLabel" value:v25];
  [v6 addObject:v26];

  v27 = objc_alloc(MEMORY[0x1E696AF60]);
  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v29 = [v28 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_ACCEPT_URL" value:0 table:@"Localizable"];
  v30 = [v27 initWithName:@"acceptInviteUrl" value:v29];
  [v6 addObject:v30];

  v31 = objc_alloc(MEMORY[0x1E696AF60]);
  v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v33 = [v32 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_DECLINE_URL" value:0 table:@"Localizable"];
  v34 = [v31 initWithName:@"declineInviteUrl" value:v33];
  [v6 addObject:v34];

  v35 = objc_alloc(MEMORY[0x1E696AF60]);
  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v37 = [v36 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_ACCEPTED_BUTTON_LABEL" value:0 table:@"Localizable"];
  v38 = [v35 initWithName:@"acceptedButtonLabel" value:v37];
  [v6 addObject:v38];

  v39 = objc_alloc(MEMORY[0x1E696AF60]);
  v40 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v41 = [v40 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_DECLINED_BUTTON_LABEL" value:0 table:@"Localizable"];
  v42 = [v39 initWithName:@"declinedButtonLabel" value:v41];
  [v6 addObject:v42];

  v43 = objc_alloc(MEMORY[0x1E696AF60]);
  uUIDString = [dCopy UUIDString];

  v45 = [v43 initWithName:@"custodianID" value:uUIDString];
  [v6 addObject:v45];

  v46 = objc_alloc(MEMORY[0x1E696AF60]);
  v47 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v48 = [v47 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_SENT_BUTTON_LABEL" value:0 table:@"Localizable"];
  v49 = [v46 initWithName:@"requestSent" value:v48];
  [v6 addObject:v49];

  v50 = objc_alloc(MEMORY[0x1E696AF60]);
  v51 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v52 = [v51 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_RECIPIENT_ACCEPTED_SUBTITLE" value:0 table:@"Localizable"];
  v53 = [v50 initWithName:@"recipientAccepted" value:v52];
  [v6 addObject:v53];

  v54 = objc_alloc(MEMORY[0x1E696AF60]);
  v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v56 = [v55 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_RECIPIENT_DECLINED_SUBTITLE" value:0 table:@"Localizable"];
  v57 = [v54 initWithName:@"recipientDeclined" value:v56];
  [v6 addObject:v57];

  v58 = objc_alloc(MEMORY[0x1E696AF60]);
  v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v60 = [v59 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_SENDER_ACCEPTED_SUBTITLE" value:0 table:@"Localizable"];
  v61 = [v58 initWithName:@"senderAccepted" value:v60];
  [v6 addObject:v61];

  v62 = objc_alloc(MEMORY[0x1E696AF60]);
  v63 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v64 = [v63 localizedStringForKey:@"CUSTODIAN_MESSAGES_UPSELL_MESSAGE_SENDER_DECLINED_SUBTITLE" value:0 table:@"Localizable"];
  v65 = [v62 initWithName:@"senderDeclined" value:v64];
  [v6 addObject:v65];

  v66 = [v6 copy];
  [v70 setQueryItems:v66];

  v67 = _AALogSystem();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    [(AACustodianMessageInviteContext *)v70 _messageURLForCustodianID:v67];
  }

  v68 = [v70 URL];

  return v68;
}

- (void)initWithLocalContact:(uint64_t)a1 custodianID:(uint64_t)a2 appleAccount:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AACustodianMessageInviteContext.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"custodianID"}];
}

- (void)_messageURLForCustodianID:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 URL];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "message bubble url %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end