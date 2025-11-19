@interface AATrustedContactStringProvider
+ (id)BenefactorAccessKeyChangedNotificationBody;
+ (id)BenefactorAccessKeyChangedNotificationTitle;
+ (id)BenefactorUnknownName;
+ (id)accountBeneficiary;
+ (id)accountBeneficiaryForMessage;
+ (id)accountBeneficiaryForTitle;
+ (id)accountRecoveryContactTitle;
+ (id)addTrustedContacts;
+ (id)cannotAddAnExistingBeneficiaryErrorMessage;
+ (id)cannotAddAnExistingBeneficiaryErrorTitle;
+ (id)cannotAddAnExistingCustodianErrorMessageFormat;
+ (id)cannotAddAnExistingCustodianErrorTitle;
+ (id)custodianAcceptedNotificationBody;
+ (id)custodianAcceptedNotificationTitle;
+ (id)custodianCountMaxLimitReachedErrorTitle;
+ (id)custodianDeclinedNotificationBody;
+ (id)custodianDeclinedNotificationTitle;
+ (id)custodianRemovedThemselvesNotificationBody;
+ (id)custodianRemovedThemselvesNotificationTitle;
+ (id)details;
+ (id)done;
+ (id)helpNow;
+ (id)invited;
+ (id)isYourBeneficiary;
+ (id)isYourBeneficiaryMessage;
+ (id)isYourBeneficiaryTitle;
+ (id)isYourRecoveryContact;
+ (id)isYourRecoveryContactAndBeneficiary;
+ (id)isYourRecoveryContactMessage;
+ (id)isYourRecoveryContactTitle;
+ (id)manageDataAccess;
+ (id)personalNote;
+ (id)printAccessKeyBeneficiaryNameField;
+ (id)printAccessKeyDocumentMessage;
+ (id)printAccessKeyDocumentTitle;
+ (id)printAccessKeyFooter;
+ (id)printAccessKeyOwnerAppleIDField;
+ (id)printAccessKeyOwnerNameField;
+ (id)recoveryContactForMessage;
+ (id)recoveryContactForTitle;
+ (id)remove;
+ (id)removeBenefactorMessage;
+ (id)removeBenefactorTitle;
+ (id)removeBeneficiaryMessage;
+ (id)removeBeneficiaryTitle;
+ (id)removeCustodianshipMessage;
+ (id)removeCustodianshipTitle;
+ (id)removeRecoveryContactMessage;
+ (id)removeRecoveryContactTitle;
+ (id)requestAccess;
+ (id)selfCannotBeCustodianErrorMessage;
+ (id)selfCannotBeCustodianErrorTitle;
+ (id)setupBeneficiaryButton;
+ (id)setupBeneficiaryErrorMessage;
+ (id)setupBeneficiaryErrorTitle;
+ (id)setupBeneficiaryMessage;
+ (id)setupCustodianErrorMessage;
+ (id)setupCustodianErrorTitle;
+ (id)setupRecoveryContactButton;
+ (id)setupRecoveryContactMessage;
+ (id)showAccessKeyBenefactorSubtitle;
+ (id)showAccessKeyBenefactorTitle;
+ (id)showAccessKeyBeneficiarySubtitle;
+ (id)showAccessKeyBeneficiaryTitle;
+ (id)showAccessKeyCellTitle;
+ (id)showAccessKeyCopyTitle;
+ (id)showAccessKeyDoneTitle;
+ (id)showAccessKeyPrintTitle;
+ (id)showAccessKeyShareTitle;
+ (id)trustedContactsForOthers;
+ (id)viewAccessKey;
+ (id)viewContactsAccessKey;
+ (id)youAreBeneficiary;
+ (id)youAreRecoveryContact;
+ (id)youAreRecoveryContactAndBeneficiary;
+ (id)yourTrustedContacts;
@end

@implementation AATrustedContactStringProvider

+ (id)setupRecoveryContactButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SET_UP_RECOVERY_CONTACT" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupBeneficiaryButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SET_UP_ACCOUNT_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)accountRecoveryContactTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_CONTACT" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupRecoveryContactMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_CONTACT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)accountBeneficiary
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupBeneficiaryMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourRecoveryContact
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"IS_ACCOUNT_RECOVERY_CONTACT" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourBeneficiary
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"IS_ACCOUNT_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourRecoveryContactAndBeneficiary
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_CONTACT_AND_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)youAreRecoveryContactAndBeneficiary
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"YOU_ARE_ACCOUNT_RECOVERY_CONTACT_AND_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)youAreRecoveryContact
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"YOU_ARE_ACCOUNT_RECOVERY_CONTACT" value:0 table:@"Localizable"];

  return v3;
}

+ (id)youAreBeneficiary
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"YOU_ARE_BENEFICIARY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)yourTrustedContacts
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"MY_ACCOUNT_CONTACTS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)addTrustedContacts
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ADD_ACCOUNT_CONTACTS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)trustedContactsForOthers
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_CONTACTS_FOR" value:0 table:@"Localizable"];

  return v3;
}

+ (id)remove
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)recoveryContactForTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"RECOVERY_CONTACT_FOR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)recoveryContactForMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"RECOVERY_CONTACT_FOR_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)helpNow
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"HELP_NOW_BUTTON" value:0 table:@"Localizable"];

  return v3;
}

+ (id)manageDataAccess
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFICIARY_MANAGE_DATA_ACCESS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)personalNote
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFICIARY_PERSONAL_NOTE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)viewContactsAccessKey
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFICIARY_VIEW_ACCESS_KEY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)accountBeneficiaryForTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFACTOR_CONTACT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)accountBeneficiaryForMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFACTOR_CONTACT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)viewAccessKey
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFACTOR_VIEW_ACCESS_KEY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)requestAccess
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFACTOR_REQUEST_ACCESS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)invited
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INVITED_STATUS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)details
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"DETAILS" value:0 table:@"Localizable"];

  return v3;
}

+ (id)done
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"TRUSTED_CONTACTS_DONE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeBenefactorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_BENEFACTOR_ALERT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeBenefactorMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"REMOVE_BENEFACTOR_ALERT_MESSAGE_v2";
  }

  else
  {
    v3 = @"REMOVE_BENEFACTOR_ALERT_MESSAGE";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

+ (id)removeCustodianshipTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_CUSTODIANSHIP_ALERT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeCustodianshipMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_CUSTODIANSHIP_ALERT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyBeneficiaryTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_BENEFICIARY_NAVIGATION_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyBenefactorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_BENEFACTOR_NAVIGATION_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyCellTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_CELL_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyBeneficiarySubtitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"SHOW_ACCESS_KEY_BENEFICIARY_SUBTITLE_v2";
  }

  else
  {
    v3 = @"SHOW_ACCESS_KEY_BENEFICIARY_SUBTITLE";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

+ (id)showAccessKeyBenefactorSubtitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"SHOW_ACCESS_KEY_BENEFACTOR_SUBTITLE_v2";
  }

  else
  {
    v3 = @"SHOW_ACCESS_KEY_BENEFACTOR_SUBTITLE";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

+ (id)showAccessKeyPrintTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_PRINT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyCopyTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_COPY_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyDoneTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_DONE_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)showAccessKeyShareTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SHOW_ACCESS_KEY_SHARE_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourRecoveryContactTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"RECOVERY_CONTACT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourRecoveryContactMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"RECOVERY_CONTACT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeRecoveryContactTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_ALERT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeRecoveryContactMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_ALERT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourBeneficiaryTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFICIARY_CONTACT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)isYourBeneficiaryMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"BENEFICIARY_CONTACT_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeBeneficiaryTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"REMOVE_BENEFICIARY_ALERT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)removeBeneficiaryMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"REMOVE_BENEFICIARY_ALERT_MESSAGE_v2";
  }

  else
  {
    v3 = @"REMOVE_BENEFICIARY_ALERT_MESSAGE";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

+ (id)printAccessKeyDocumentTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCESS_KEY_DOCUMENT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)printAccessKeyOwnerNameField
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCESS_KEY_DOCUMENT_OWNER_NAME_FIELD" value:0 table:@"Localizable"];

  return v3;
}

+ (id)printAccessKeyOwnerAppleIDField
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCESS_KEY_DOCUMENT_OWNER_APPLEID_FIELD_REBRAND" value:0 table:@"Localizable"];

  return v3;
}

+ (id)printAccessKeyBeneficiaryNameField
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCESS_KEY_DOCUMENT_BENEFICIARY_NAME_FIELD" value:0 table:@"Localizable"];

  return v3;
}

+ (id)printAccessKeyDocumentMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"PRINT_ACCESS_KEY_DOCUMENT_MESSAGE_v2";
  }

  else
  {
    v3 = @"PRINT_ACCESS_KEY_DOCUMENT_MESSAGE";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

+ (id)printAccessKeyFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCESS_KEY_DOCUMENT_FOOTER" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianAcceptedNotificationTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_ACCEPTED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianAcceptedNotificationBody
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_ACCEPTED_BODY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianDeclinedNotificationTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_DECLINED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianDeclinedNotificationBody
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_DECLINED_BODY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianRemovedThemselvesNotificationTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_REMOVED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianRemovedThemselvesNotificationBody
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_CUSTODIAN_REMOVED_BODY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)BenefactorAccessKeyChangedNotificationTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_BENEFICIARY_ACCESS_KEY_CHANGED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)BenefactorAccessKeyChangedNotificationBody
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_BENEFICIARY_ACCESS_KEY_CHANGED_BODY" value:0 table:@"Localizable"];

  return v3;
}

+ (id)BenefactorUnknownName
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_BENEFACTOR_UNKNOWN_NAME" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupBeneficiaryErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SETUP_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupBeneficiaryErrorMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SETUP_ERROR_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)cannotAddAnExistingBeneficiaryErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CANNOT_ADD_AN_EXISTING_BENEFICIARY_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)cannotAddAnExistingBeneficiaryErrorMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CANNOT_ADD_AN_EXISTING_BENEFICIARY_ERROR_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupCustodianErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SETUP_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)setupCustodianErrorMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SETUP_ERROR_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)custodianCountMaxLimitReachedErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_COUNT_MAX_LIMIT_REACHED_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)selfCannotBeCustodianErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"I_CANNOT_BE_MY_OWN_CUSTODIAN_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)selfCannotBeCustodianErrorMessage
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"I_CANNOT_BE_MY_OWN_CUSTODIAN_ERROR_MESSAGE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)cannotAddAnExistingCustodianErrorTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CANNOT_ADD_AN_EXISTING_CUSTODIAN_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

+ (id)cannotAddAnExistingCustodianErrorMessageFormat
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CANNOT_ADD_AN_EXISTING_CUSTODIAN_ERROR_MESSAGE_FORMAT" value:0 table:@"Localizable"];

  return v3;
}

@end