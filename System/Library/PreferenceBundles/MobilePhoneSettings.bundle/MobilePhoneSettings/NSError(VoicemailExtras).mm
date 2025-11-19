@interface NSError(VoicemailExtras)
- (void)displayedErrorTitle:()VoicemailExtras message:;
@end

@implementation NSError(VoicemailExtras)

- (void)displayedErrorTitle:()VoicemailExtras message:
{
  if (!a3 || !a4)
  {
    return;
  }

  v7 = [a1 domain];
  *a3 = 0;
  *a4 = 0;
  v42 = v7;
  if ([v7 isEqualToString:*MEMORY[0x277D797A0]])
  {
    switch([a1 code])
    {
      case 1000:
      case 1007:
        v8 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v8 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PARSE_FAIL";
        goto LABEL_44;
      case 1004:
        v24 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v24 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID_OLD";
        goto LABEL_44;
      case 1006:
        v31 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v31 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_SERVICE";
        goto LABEL_44;
      case 1008:
      case 1016:
        v15 = [MEMORY[0x277CCA8D8] mainBundle];
        v16 = v15;
        v17 = @"VOICEMAIL_ERROR_TITLE_ERROR";
        goto LABEL_20;
      case 1010:
        v34 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v34 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_FILE_WRITE_ERROR";
        goto LABEL_44;
      case 1011:
      case 1023:
        goto LABEL_14;
      case 1012:
        v29 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v29 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PLAYBACK_FAIL";
        goto LABEL_44;
      case 1013:
        v36 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v36 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRANSCODE_ERROR";
        goto LABEL_44;
      case 1014:
        v35 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v35 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_SERVICE_BUSY";
        goto LABEL_44;
      case 1015:
        v21 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v21 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_CONNECT_FAIL";
        goto LABEL_44;
      case 1017:
        v15 = [MEMORY[0x277CCA8D8] mainBundle];
        v16 = v15;
        v17 = @"VOICEMAIL_ERROR_TITLE_UNAVAILABLE";
LABEL_20:
        *a3 = [v15 localizedStringForKey:v17 value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER";
        goto LABEL_44;
      case 1018:
        v30 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v30 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_COULD_NOT_AUTHORIZE";
        goto LABEL_44;
      case 1019:
        v32 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v32 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_NOT_AVAILABLE";
        goto LABEL_44;
      case 1020:
        v37 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v37 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_LOCKED";
        goto LABEL_44;
      case 1021:
        *a3 = [a1 localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_USAGE";
        goto LABEL_44;
      case 1022:
        *a3 = [a1 localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_FULL";
        goto LABEL_44;
      case 1024:
        v25 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v25 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID";
        goto LABEL_44;
      case 1025:
        v38 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v38 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SHORT";
        goto LABEL_44;
      case 1026:
        v18 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v18 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_LONG";
        goto LABEL_44;
      case 1027:
        v23 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v23 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_AGE";
        goto LABEL_44;
      case 1028:
        v20 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v20 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_TRIVIAL";
        goto LABEL_44;
      case 1029:
        v28 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v28 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        goto LABEL_44;
      case 1030:
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v19 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SAME";
        goto LABEL_44;
      case 1031:
        v40 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        *a3 = [v40 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL" value:&stru_284EEA450 table:@"Voicemail"];

        goto LABEL_44;
      case 1032:
        v39 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v39 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_INVALID_GREETING";
        goto LABEL_44;
      case 1033:
        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v22 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_CUSTOM_GRETING";
        goto LABEL_44;
      case 1034:
        v26 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v26 localizedStringForKey:@"GREETING_FETCH_FAILED" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"GREETING_FETCH_FAILED_DETAIL";
        goto LABEL_44;
      case 1035:
        v33 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v33 localizedStringForKey:@"GREETING_SAVE_FAILED" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"GREETING_SAVE_FAILED_DETAIL";
        goto LABEL_44;
      case 1036:
        v27 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [v27 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_GREETING_FAIL";
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if ([v42 isEqualToString:*MEMORY[0x277D797A8]])
  {
    v10 = [a1 code];
    if (v10 <= 0x39 && ((1 << v10) & 0x2C0000000000000) != 0)
    {
      v11 = [MEMORY[0x277CCA8D8] mainBundle];
      *a3 = [v11 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_NOT_SUBSCRIBED";
    }

    else
    {
      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      *a3 = [v14 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_FAILURE";
    }

    goto LABEL_44;
  }

  if ([a1 isSecurityError])
  {
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    *a3 = [v12 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_SECURITY";
LABEL_44:
    v41 = [MEMORY[0x277CCA8D8] mainBundle];
    *a4 = [v41 localizedStringForKey:v9 value:&stru_284EEA450 table:@"Voicemail"];

    goto LABEL_45;
  }

  if ([a1 isConnectivityError])
  {
LABEL_14:
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    *a3 = [v13 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_CONNECTIVITY";
    goto LABEL_44;
  }

LABEL_45:
}

@end