@interface AAInheritanceMessageInviteContext
- (AAInheritanceMessageInviteContext)initWithLocalContact:(id)a3 beneficiaryID:(id)a4;
- (id)_messageURLForBeneficiaryID:(id)a3;
@end

@implementation AAInheritanceMessageInviteContext

- (AAInheritanceMessageInviteContext)initWithLocalContact:(id)a3 beneficiaryID:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [AAInheritanceMessageInviteContext initWithLocalContact:a2 beneficiaryID:self];
  }

  v9 = +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v11 = [v10 localizedStringForKey:@"INHERITANCE_ADDED_MESSAGES_BUBBLE_BODY" value:0 table:@"Localizable"];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v7 firstNameOrHandleForDisplay];
  v14 = [v12 stringWithFormat:v11, v13];

  v15 = [AAUniversalLinkHelper stringForBenefiaryMessagesURLWithUUID:v8];
  v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  if (!v16)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAInheritanceMessageInviteContext initWithLocalContact:v15 beneficiaryID:v17];
    }
  }

  v18 = [(AAInheritanceMessageInviteContext *)self init];
  if (v18)
  {
    if (v9)
    {
      v19 = [v7 isFamilyMember];
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      if (v19)
      {
        v21 = @"INHERITANCE_ADDED_MESSAGES_BUBBLE_TITLE_REBRAND";
      }

      else if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
      {
        v21 = @"INHERITANCE_ADDED_MESSAGES_BUBBLE_TITLE_REBRAND";
      }

      else
      {
        v21 = @"INHERITANCE_INVITED_MESSAGES_BUBBLE_TITLE_REBRAND";
      }

      v22 = v20;
    }

    else
    {
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v20 = v22;
      v21 = @"INHERITANCE_ADDED_MESSAGES_BUBBLE_TITLE_REBRAND";
    }

    v23 = [v22 localizedStringForKey:v21 value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v18 setTitle:v23];

    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v25 = [v24 localizedStringForKey:@"INHERITANCE_MESSAGES_BUBBLE_ACTION_LABEL" value:0 table:@"Localizable"];
    [(AAMessagesInviteContext *)v18 setAction:v25];

    v26 = [v7 handle];
    v31[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [(AAMessagesInviteContext *)v18 setRecipients:v27];

    [(AAMessagesInviteContext *)v18 setMessageBody:v14];
    [(AAMessagesInviteContext *)v18 setInviteURL:v16];
    if (+[AAPreferences isLCMessageExtensionEnabled])
    {
      v28 = [(AAInheritanceMessageInviteContext *)v18 _messageURLForBeneficiaryID:v8];
      [(AAInheritanceMessageInviteContext *)v18 setMessageURL:v28];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_messageURLForBeneficiaryID:(id)a3
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  v8 = [v4 UUIDString];

  v9 = [v7 initWithName:@"beneficiaryID" value:v8];
  [v6 addObject:v9];

  v10 = [v6 copy];
  [v5 setQueryItems:v10];

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(AACustodianMessageInviteContext *)v5 _messageURLForCustodianID:v11];
  }

  v12 = [v5 URL];

  return v12;
}

- (void)initWithLocalContact:(uint64_t)a1 beneficiaryID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAInheritanceMessageInviteContext.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"beneficiaryID"}];
}

- (void)initWithLocalContact:(uint64_t)a1 beneficiaryID:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Error creating NSURL from universal link - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end