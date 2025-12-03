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

  domain = [self domain];
  *a3 = 0;
  *a4 = 0;
  v42 = domain;
  if ([domain isEqualToString:*MEMORY[0x277D797A0]])
  {
    switch([self code])
    {
      case 1000:
      case 1007:
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PARSE_FAIL";
        goto LABEL_44;
      case 1004:
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle2 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID_OLD";
        goto LABEL_44;
      case 1006:
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle3 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_SERVICE";
        goto LABEL_44;
      case 1008:
      case 1016:
        mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
        v16 = mainBundle4;
        v17 = @"VOICEMAIL_ERROR_TITLE_ERROR";
        goto LABEL_20;
      case 1010:
        mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle5 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_FILE_WRITE_ERROR";
        goto LABEL_44;
      case 1011:
      case 1023:
        goto LABEL_14;
      case 1012:
        mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle6 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PLAYBACK_FAIL";
        goto LABEL_44;
      case 1013:
        mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle7 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRANSCODE_ERROR";
        goto LABEL_44;
      case 1014:
        mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle8 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_SERVICE_BUSY";
        goto LABEL_44;
      case 1015:
        mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle9 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_CONNECT_FAIL";
        goto LABEL_44;
      case 1017:
        mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
        v16 = mainBundle4;
        v17 = @"VOICEMAIL_ERROR_TITLE_UNAVAILABLE";
LABEL_20:
        *a3 = [mainBundle4 localizedStringForKey:v17 value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER";
        goto LABEL_44;
      case 1018:
        mainBundle10 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle10 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_COULD_NOT_AUTHORIZE";
        goto LABEL_44;
      case 1019:
        mainBundle11 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle11 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_NOT_AVAILABLE";
        goto LABEL_44;
      case 1020:
        mainBundle12 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle12 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_LOCKED";
        goto LABEL_44;
      case 1021:
        *a3 = [self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_USAGE";
        goto LABEL_44;
      case 1022:
        *a3 = [self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_FULL";
        goto LABEL_44;
      case 1024:
        mainBundle13 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle13 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID";
        goto LABEL_44;
      case 1025:
        mainBundle14 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle14 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SHORT";
        goto LABEL_44;
      case 1026:
        mainBundle15 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle15 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_LONG";
        goto LABEL_44;
      case 1027:
        mainBundle16 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle16 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_AGE";
        goto LABEL_44;
      case 1028:
        mainBundle17 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle17 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_TRIVIAL";
        goto LABEL_44;
      case 1029:
        mainBundle18 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle18 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        goto LABEL_44;
      case 1030:
        mainBundle19 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle19 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SAME";
        goto LABEL_44;
      case 1031:
        mainBundle20 = [MEMORY[0x277CCA8D8] mainBundle];
        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        *a3 = [mainBundle20 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL" value:&stru_284EEA450 table:@"Voicemail"];

        goto LABEL_44;
      case 1032:
        mainBundle21 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle21 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_INVALID_GREETING";
        goto LABEL_44;
      case 1033:
        mainBundle22 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle22 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_CUSTOM_GRETING";
        goto LABEL_44;
      case 1034:
        mainBundle23 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle23 localizedStringForKey:@"GREETING_FETCH_FAILED" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"GREETING_FETCH_FAILED_DETAIL";
        goto LABEL_44;
      case 1035:
        mainBundle24 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle24 localizedStringForKey:@"GREETING_SAVE_FAILED" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"GREETING_SAVE_FAILED_DETAIL";
        goto LABEL_44;
      case 1036:
        mainBundle25 = [MEMORY[0x277CCA8D8] mainBundle];
        *a3 = [mainBundle25 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_284EEA450 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_GREETING_FAIL";
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if ([v42 isEqualToString:*MEMORY[0x277D797A8]])
  {
    code = [self code];
    if (code <= 0x39 && ((1 << code) & 0x2C0000000000000) != 0)
    {
      mainBundle26 = [MEMORY[0x277CCA8D8] mainBundle];
      *a3 = [mainBundle26 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_NOT_SUBSCRIBED";
    }

    else
    {
      mainBundle27 = [MEMORY[0x277CCA8D8] mainBundle];
      *a3 = [mainBundle27 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_FAILURE";
    }

    goto LABEL_44;
  }

  if ([self isSecurityError])
  {
    mainBundle28 = [MEMORY[0x277CCA8D8] mainBundle];
    *a3 = [mainBundle28 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_SECURITY";
LABEL_44:
    mainBundle29 = [MEMORY[0x277CCA8D8] mainBundle];
    *a4 = [mainBundle29 localizedStringForKey:v9 value:&stru_284EEA450 table:@"Voicemail"];

    goto LABEL_45;
  }

  if ([self isConnectivityError])
  {
LABEL_14:
    mainBundle30 = [MEMORY[0x277CCA8D8] mainBundle];
    *a3 = [mainBundle30 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_284EEA450 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_CONNECTIVITY";
    goto LABEL_44;
  }

LABEL_45:
}

@end