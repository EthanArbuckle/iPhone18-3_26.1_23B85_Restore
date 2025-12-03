@interface AATrustedContactDetailsViewModelFactory
- (id)viewModelForFlow:(unint64_t)flow withContact:(id)contact;
- (void)prepareForCustodianForFlow:(id)flow withContact:(id)contact;
- (void)prepareForMyBenefactorFlow:(id)flow withContact:(id)contact;
- (void)prepareForMyBeneficiaryFlow:(id)flow withContact:(id)contact;
- (void)prepareForMyCustodianFlow:(id)flow withContact:(id)contact;
@end

@implementation AATrustedContactDetailsViewModelFactory

- (id)viewModelForFlow:(unint64_t)flow withContact:(id)contact
{
  contactCopy = contact;
  v7 = objc_opt_new();
  if (flow > 1)
  {
    if (flow == 2)
    {
      [(AATrustedContactDetailsViewModelFactory *)self prepareForMyBeneficiaryFlow:v7 withContact:contactCopy];
    }

    else if (flow == 3)
    {
      [(AATrustedContactDetailsViewModelFactory *)self prepareForMyBenefactorFlow:v7 withContact:contactCopy];
    }
  }

  else if (flow)
  {
    if (flow == 1)
    {
      [(AATrustedContactDetailsViewModelFactory *)self prepareForCustodianForFlow:v7 withContact:contactCopy];
    }
  }

  else
  {
    [(AATrustedContactDetailsViewModelFactory *)self prepareForMyCustodianFlow:v7 withContact:contactCopy];
  }

  [v7 setContact:contactCopy];

  return v7;
}

- (void)prepareForMyCustodianFlow:(id)flow withContact:(id)contact
{
  flowCopy = flow;
  contactCopy = contact;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v7 = [v6 localizedStringForKey:@"MY_RECOVERY_CONTACT_TITLE" value:0 table:@"Localizable"];
  [flowCopy setTitle:v7];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v9 = [v8 localizedStringForKey:@"MY_RECOVERY_CONTACT_DETAILS" value:0 table:@"Localizable"];
  [flowCopy setDetailsLabel:v9];

  trustedContactStatus = [contactCopy trustedContactStatus];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = v12;
  if (trustedContactStatus == 1)
  {
    v14 = [v12 localizedStringForKey:@"MY_RECOVERY_CONTACT_DETAILS_SUBTITLE_PENDING" value:0 table:@"Localizable"];
    firstNameOrHandleForDisplay = [contactCopy firstNameOrHandleForDisplay];
    v16 = [v11 stringWithFormat:v14, firstNameOrHandleForDisplay];
    [flowCopy setDetailsSubtitle:v16];

    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v17 = [v13 localizedStringForKey:@"RESEND_INVITATION" value:0 table:@"Localizable"];
    [flowCopy setPrimaryActionText:v17];
  }

  else
  {
    v17 = [v12 localizedStringForKey:@"MY_RECOVERY_CONTACT_DETAILS_SUBTITLE_ACCEPTED" value:0 table:@"Localizable"];
    firstNameOrHandleForDisplay2 = [contactCopy firstNameOrHandleForDisplay];
    v19 = [v11 stringWithFormat:v17, firstNameOrHandleForDisplay2];
    [flowCopy setDetailsSubtitle:v19];
  }

  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v21 = [v20 localizedStringForKey:@"REMOVE_CONTACT" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionText:v21];

  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v23 = [v22 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_ALERT_TITLE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetTitle:v23];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"MY_RECOVERY_CONTACT_REMOVE_DETAILS" value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay3 = [contactCopy firstNameOrHandleForDisplay];
  firstNameOrHandleForDisplay4 = [contactCopy firstNameOrHandleForDisplay];
  v29 = [v24 stringWithFormat:v26, firstNameOrHandleForDisplay3, firstNameOrHandleForDisplay4];
  [flowCopy setDestructiveActionSheetDetails:v29];

  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v31 = [v30 localizedStringForKey:@"CANCEL" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetCancelText:v31];

  [flowCopy setDestructiveActionRequiresAuth:1];
}

- (void)prepareForCustodianForFlow:(id)flow withContact:(id)contact
{
  v5 = MEMORY[0x1E696AAE8];
  contactCopy = contact;
  flowCopy = flow;
  v7 = [v5 bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"RECOVERY_CONTACT_FOR_TITLE" value:0 table:@"Localizable"];
  [flowCopy setTitle:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v11 = [v10 localizedStringForKey:@"RECOVERY_CONTACT_FOR_DETAILS" value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay = [contactCopy firstNameOrHandleForDisplay];
  v13 = [v9 stringWithFormat:v11, firstNameOrHandleForDisplay];
  [flowCopy setDetailsLabel:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v16 = [v15 localizedStringForKey:@"RECOVERY_CONTACT_FOR_DETAILS_SUBTITLE" value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay2 = [contactCopy firstNameOrHandleForDisplay];
  v18 = [v14 stringWithFormat:v16, firstNameOrHandleForDisplay2];
  [flowCopy setDetailsSubtitle:v18];

  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v20 = [v19 localizedStringForKey:@"RECOVERY_CONTACT_FOR_HELP" value:0 table:@"Localizable"];
  [flowCopy setPrimaryActionText:v20];

  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v22 = [v21 localizedStringForKey:@"REMOVE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionText:v22];

  v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v24 = [v23 localizedStringForKey:@"REMOVE_CUSTODIANSHIP_ALERT_TITLE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetTitle:v24];

  v25 = MEMORY[0x1E696AEC0];
  v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v27 = [v26 localizedStringForKey:@"RECOVERY_CONTACT_FOR_REMOVE_DETAILS" value:0 table:@"Localizable"];
  fullName = [contactCopy fullName];
  firstNameOrHandleForDisplay3 = [contactCopy firstNameOrHandleForDisplay];

  v30 = [v25 stringWithFormat:v27, fullName, firstNameOrHandleForDisplay3];
  [flowCopy setDestructiveActionSheetDetails:v30];

  v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v32 = [v31 localizedStringForKey:@"CANCEL" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetCancelText:v32];

  [flowCopy setDestructiveActionRequiresAuth:1];
}

- (void)prepareForMyBeneficiaryFlow:(id)flow withContact:(id)contact
{
  flowCopy = flow;
  contactCopy = contact;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v7 = [v6 localizedStringForKey:@"MY_BENEFICIARY_TITLE" value:0 table:@"Localizable"];
  [flowCopy setTitle:v7];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v9 = [v8 localizedStringForKey:@"MY_BENEFICIARY_DETAILS" value:0 table:@"Localizable"];
  [flowCopy setDetailsLabel:v9];

  trustedContactStatus = [contactCopy trustedContactStatus];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = v11;
  if (trustedContactStatus == 1)
  {
    v13 = [v11 localizedStringForKey:@"MY_BENEFICIARY_RESEND_ACCESS_KEY" value:0 table:@"Localizable"];
    [flowCopy setPrimaryActionText:v13];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v16 = [v15 localizedStringForKey:@"MY_BENEFICIARY_DETAILS_SUBTITLE_PENDING" value:0 table:@"Localizable"];
    firstNameOrHandleForDisplay = [contactCopy firstNameOrHandleForDisplay];
    v18 = [v14 stringWithFormat:v16, firstNameOrHandleForDisplay];
    [flowCopy setDetailsSubtitle:v18];
  }

  else
  {
    v19 = [v11 localizedStringForKey:@"MY_BENEFICIARY_VIEW_ACCESS_KEY" value:0 table:@"Localizable"];
    [flowCopy setPrimaryActionText:v19];

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v22 = @"MY_BENEFICIARY_DETAILS_SUBTITLE_v2";
    }

    else
    {
      v22 = @"MY_BENEFICIARY_DETAILS_SUBTITLE";
    }

    v23 = [v21 localizedStringForKey:v22 value:0 table:@"Localizable"];
    firstNameOrHandleForDisplay2 = [contactCopy firstNameOrHandleForDisplay];
    v25 = [v20 stringWithFormat:v23, firstNameOrHandleForDisplay2];
    [flowCopy setDetailsSubtitle:v25];

    [flowCopy setPrimaryActionRequiresAuth:1];
  }

  v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v27 = [v26 localizedStringForKey:@"MY_BENEFICIARY_REMOVE_TEXT" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionText:v27];

  v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v29 = [v28 localizedStringForKey:@"REMOVE_BENEFICIARY_ALERT_TITLE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetTitle:v29];

  v30 = MEMORY[0x1E696AEC0];
  v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v32 = @"MY_BENEFICIARY_REMOVE_DETAILS_v2";
  }

  else
  {
    v32 = @"MY_BENEFICIARY_REMOVE_DETAILS";
  }

  v33 = [v31 localizedStringForKey:v32 value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay3 = [contactCopy firstNameOrHandleForDisplay];
  v35 = [v30 stringWithFormat:v33, firstNameOrHandleForDisplay3];
  [flowCopy setDestructiveActionSheetDetails:v35];

  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v37 = [v36 localizedStringForKey:@"CANCEL" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetCancelText:v37];

  [flowCopy setDestructiveActionRequiresAuth:1];
}

- (void)prepareForMyBenefactorFlow:(id)flow withContact:(id)contact
{
  flowCopy = flow;
  contactCopy = contact;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v7 = [v6 localizedStringForKey:@"MY_BENEFACTOR_TITLE" value:0 table:@"Localizable"];
  [flowCopy setTitle:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"MY_BENEFACTOR_DETAILS" value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay = [contactCopy firstNameOrHandleForDisplay];
  v12 = [v8 stringWithFormat:v10, firstNameOrHandleForDisplay];
  [flowCopy setDetailsLabel:v12];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v15 = @"MY_BENEFACTOR_DETAILS_SUBTITLE_v2";
  }

  else
  {
    v15 = @"MY_BENEFACTOR_DETAILS_SUBTITLE";
  }

  v16 = [v14 localizedStringForKey:v15 value:0 table:@"Localizable"];
  firstNameOrHandleForDisplay2 = [contactCopy firstNameOrHandleForDisplay];
  v18 = [v13 stringWithFormat:v16, firstNameOrHandleForDisplay2];
  [flowCopy setDetailsSubtitle:v18];

  inheritanceContactInfo = [contactCopy inheritanceContactInfo];
  if ([contactCopy trustedContactStatus] == 2)
  {
    accessKey = [inheritanceContactInfo accessKey];

    if (accessKey)
    {
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v22 = [v21 localizedStringForKey:@"MY_BENEFACTOR_VIEW_ACCESS_KEY" value:0 table:@"Localizable"];
      [flowCopy setPrimaryActionText:v22];

      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v24 = [v23 localizedStringForKey:@"MY_BENEFACTOR_REQUEST_ACCESS" value:0 table:@"Localizable"];
      [flowCopy setSecondaryActionText:v24];

      [flowCopy setPrimaryActionRequiresAuth:1];
    }
  }

  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"REMOVE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionText:v26];

  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v28 = [v27 localizedStringForKey:@"REMOVE_BENEFACTOR_ALERT_TITLE" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetTitle:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v31 = @"MY_BENEFACTOR_REMOVE_DETAILS_v2";
  }

  else
  {
    v31 = @"MY_BENEFACTOR_REMOVE_DETAILS";
  }

  v32 = [v30 localizedStringForKey:v31 value:0 table:@"Localizable"];
  fullName = [contactCopy fullName];
  firstNameOrHandleForDisplay3 = [contactCopy firstNameOrHandleForDisplay];
  v35 = [v29 stringWithFormat:v32, fullName, firstNameOrHandleForDisplay3];
  [flowCopy setDestructiveActionSheetDetails:v35];

  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v37 = [v36 localizedStringForKey:@"CANCEL" value:0 table:@"Localizable"];
  [flowCopy setDestructiveActionSheetCancelText:v37];

  [flowCopy setDestructiveActionRequiresAuth:1];
}

@end