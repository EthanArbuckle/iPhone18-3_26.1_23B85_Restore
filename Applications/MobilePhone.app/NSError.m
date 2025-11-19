@interface NSError
- (void)displayedErrorTitle:(id *)a3 message:(id *)a4;
@end

@implementation NSError

- (void)displayedErrorTitle:(id *)a3 message:(id *)a4
{
  if (!a3 || !a4)
  {
    return;
  }

  v7 = [(NSError *)self domain];
  *a3 = 0;
  *a4 = 0;
  v42 = v7;
  if ([v7 isEqualToString:kVVErrorDomain])
  {
    switch([(NSError *)self code])
    {
      case 0x3E8:
      case 0x3EFLL:
        v8 = +[NSBundle mainBundle];
        *a3 = [v8 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PARSE_FAIL";
        goto LABEL_44;
      case 0x3ECLL:
        v24 = +[NSBundle mainBundle];
        *a3 = [v24 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID_OLD";
        goto LABEL_44;
      case 0x3EELL:
        v31 = +[NSBundle mainBundle];
        *a3 = [v31 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_SERVICE";
        goto LABEL_44;
      case 0x3F0:
      case 0x3F8:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"VOICEMAIL_ERROR_TITLE_ERROR";
        goto LABEL_20;
      case 0x3F2:
        v34 = +[NSBundle mainBundle];
        *a3 = [v34 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_FILE_WRITE_ERROR";
        goto LABEL_44;
      case 0x3F3:
      case 0x3FFLL:
        goto LABEL_14;
      case 0x3F4:
        v29 = +[NSBundle mainBundle];
        *a3 = [v29 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PLAYBACK_FAIL";
        goto LABEL_44;
      case 0x3F5:
        v36 = +[NSBundle mainBundle];
        *a3 = [v36 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRANSCODE_ERROR";
        goto LABEL_44;
      case 0x3F6:
        v35 = +[NSBundle mainBundle];
        *a3 = [v35 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_SERVICE_BUSY";
        goto LABEL_44;
      case 0x3F7:
        v21 = +[NSBundle mainBundle];
        *a3 = [v21 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_CONNECT_FAIL";
        goto LABEL_44;
      case 0x3F9:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"VOICEMAIL_ERROR_TITLE_UNAVAILABLE";
LABEL_20:
        *a3 = [v15 localizedStringForKey:v17 value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER";
        goto LABEL_44;
      case 0x3FALL:
        v30 = +[NSBundle mainBundle];
        *a3 = [v30 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_COULD_NOT_AUTHORIZE";
        goto LABEL_44;
      case 0x3FBLL:
        v32 = +[NSBundle mainBundle];
        *a3 = [v32 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_NOT_AVAILABLE";
        goto LABEL_44;
      case 0x3FCLL:
        v37 = +[NSBundle mainBundle];
        *a3 = [v37 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_LOCKED";
        goto LABEL_44;
      case 0x3FDLL:
        *a3 = [(NSError *)self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_USAGE";
        goto LABEL_44;
      case 0x3FELL:
        *a3 = [(NSError *)self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_FULL";
        goto LABEL_44;
      case 0x400:
        v25 = +[NSBundle mainBundle];
        *a3 = [v25 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID";
        goto LABEL_44;
      case 0x401:
        v38 = +[NSBundle mainBundle];
        *a3 = [v38 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SHORT";
        goto LABEL_44;
      case 0x402:
        v18 = +[NSBundle mainBundle];
        *a3 = [v18 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_LONG";
        goto LABEL_44;
      case 0x403:
        v23 = +[NSBundle mainBundle];
        *a3 = [v23 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_AGE";
        goto LABEL_44;
      case 0x404:
        v20 = +[NSBundle mainBundle];
        *a3 = [v20 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_TRIVIAL";
        goto LABEL_44;
      case 0x405:
        v28 = +[NSBundle mainBundle];
        *a3 = [v28 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        goto LABEL_44;
      case 0x406:
        v19 = +[NSBundle mainBundle];
        *a3 = [v19 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SAME";
        goto LABEL_44;
      case 0x407:
        v40 = +[NSBundle mainBundle];
        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        *a3 = [v40 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL" value:&stru_10028F310 table:@"Voicemail"];

        goto LABEL_44;
      case 0x408:
        v39 = +[NSBundle mainBundle];
        *a3 = [v39 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_INVALID_GREETING";
        goto LABEL_44;
      case 0x409:
        v22 = +[NSBundle mainBundle];
        *a3 = [v22 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_CUSTOM_GRETING";
        goto LABEL_44;
      case 0x40ALL:
        v26 = +[NSBundle mainBundle];
        *a3 = [v26 localizedStringForKey:@"GREETING_FETCH_FAILED" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"GREETING_FETCH_FAILED_DETAIL";
        goto LABEL_44;
      case 0x40BLL:
        v33 = +[NSBundle mainBundle];
        *a3 = [v33 localizedStringForKey:@"GREETING_SAVE_FAILED" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"GREETING_SAVE_FAILED_DETAIL";
        goto LABEL_44;
      case 0x40CLL:
        v27 = +[NSBundle mainBundle];
        *a3 = [v27 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_GREETING_FAIL";
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if ([v42 isEqualToString:kVVPDPActivationErrorDomain])
  {
    v10 = [(NSError *)self code];
    if (v10 <= 0x39 && ((1 << v10) & 0x2C0000000000000) != 0)
    {
      v11 = +[NSBundle mainBundle];
      *a3 = [v11 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_NOT_SUBSCRIBED";
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      *a3 = [v14 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_FAILURE";
    }

    goto LABEL_44;
  }

  if ([(NSError *)self isSecurityError])
  {
    v12 = +[NSBundle mainBundle];
    *a3 = [v12 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_SECURITY";
LABEL_44:
    v41 = +[NSBundle mainBundle];
    *a4 = [v41 localizedStringForKey:v9 value:&stru_10028F310 table:@"Voicemail"];

    goto LABEL_45;
  }

  if ([(NSError *)self isConnectivityError])
  {
LABEL_14:
    v13 = +[NSBundle mainBundle];
    *a3 = [v13 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_CONNECTIVITY";
    goto LABEL_44;
  }

LABEL_45:
}

@end