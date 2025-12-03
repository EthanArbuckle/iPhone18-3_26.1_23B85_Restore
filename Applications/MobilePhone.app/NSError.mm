@interface NSError
- (void)displayedErrorTitle:(id *)title message:(id *)message;
@end

@implementation NSError

- (void)displayedErrorTitle:(id *)title message:(id *)message
{
  if (!title || !message)
  {
    return;
  }

  domain = [(NSError *)self domain];
  *title = 0;
  *message = 0;
  v42 = domain;
  if ([domain isEqualToString:kVVErrorDomain])
  {
    switch([(NSError *)self code])
    {
      case 0x3E8:
      case 0x3EFLL:
        v8 = +[NSBundle mainBundle];
        *title = [v8 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PARSE_FAIL";
        goto LABEL_44;
      case 0x3ECLL:
        v24 = +[NSBundle mainBundle];
        *title = [v24 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID_OLD";
        goto LABEL_44;
      case 0x3EELL:
        v31 = +[NSBundle mainBundle];
        *title = [v31 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

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
        *title = [v34 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_FILE_WRITE_ERROR";
        goto LABEL_44;
      case 0x3F3:
      case 0x3FFLL:
        goto LABEL_14;
      case 0x3F4:
        v29 = +[NSBundle mainBundle];
        *title = [v29 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PLAYBACK_FAIL";
        goto LABEL_44;
      case 0x3F5:
        v36 = +[NSBundle mainBundle];
        *title = [v36 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRANSCODE_ERROR";
        goto LABEL_44;
      case 0x3F6:
        v35 = +[NSBundle mainBundle];
        *title = [v35 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_SERVICE_BUSY";
        goto LABEL_44;
      case 0x3F7:
        v21 = +[NSBundle mainBundle];
        *title = [v21 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_CONNECT_FAIL";
        goto LABEL_44;
      case 0x3F9:
        v15 = +[NSBundle mainBundle];
        v16 = v15;
        v17 = @"VOICEMAIL_ERROR_TITLE_UNAVAILABLE";
LABEL_20:
        *title = [v15 localizedStringForKey:v17 value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_TRY_AGAIN_LATER";
        goto LABEL_44;
      case 0x3FALL:
        v30 = +[NSBundle mainBundle];
        *title = [v30 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_COULD_NOT_AUTHORIZE";
        goto LABEL_44;
      case 0x3FBLL:
        v32 = +[NSBundle mainBundle];
        *title = [v32 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_NOT_AVAILABLE";
        goto LABEL_44;
      case 0x3FCLL:
        v37 = +[NSBundle mainBundle];
        *title = [v37 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_MAILBOX_LOCKED";
        goto LABEL_44;
      case 0x3FDLL:
        *title = [(NSError *)self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_USAGE";
        goto LABEL_44;
      case 0x3FELL:
        *title = [(NSError *)self localizedDescription];
        v9 = @"VOICEMAIL_ERROR_MAILBOX_FULL";
        goto LABEL_44;
      case 0x400:
        v25 = +[NSBundle mainBundle];
        *title = [v25 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_INVALID";
        goto LABEL_44;
      case 0x401:
        v38 = +[NSBundle mainBundle];
        *title = [v38 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SHORT";
        goto LABEL_44;
      case 0x402:
        v18 = +[NSBundle mainBundle];
        *title = [v18 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_LONG";
        goto LABEL_44;
      case 0x403:
        v23 = +[NSBundle mainBundle];
        *title = [v23 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_AGE";
        goto LABEL_44;
      case 0x404:
        v20 = +[NSBundle mainBundle];
        *title = [v20 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_TRIVIAL";
        goto LABEL_44;
      case 0x405:
        v28 = +[NSBundle mainBundle];
        *title = [v28 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        goto LABEL_44;
      case 0x406:
        v19 = +[NSBundle mainBundle];
        *title = [v19 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_PASSWORD_INVALID" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_SAME";
        goto LABEL_44;
      case 0x407:
        v40 = +[NSBundle mainBundle];
        v9 = @"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL";
        *title = [v40 localizedStringForKey:@"VOICEMAIL_ERROR_MSG_PASSWORD_CHANGE_FAIL" value:&stru_10028F310 table:@"Voicemail"];

        goto LABEL_44;
      case 0x408:
        v39 = +[NSBundle mainBundle];
        *title = [v39 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_INVALID_GREETING";
        goto LABEL_44;
      case 0x409:
        v22 = +[NSBundle mainBundle];
        *title = [v22 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_NO_CUSTOM_GRETING";
        goto LABEL_44;
      case 0x40ALL:
        v26 = +[NSBundle mainBundle];
        *title = [v26 localizedStringForKey:@"GREETING_FETCH_FAILED" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"GREETING_FETCH_FAILED_DETAIL";
        goto LABEL_44;
      case 0x40BLL:
        v33 = +[NSBundle mainBundle];
        *title = [v33 localizedStringForKey:@"GREETING_SAVE_FAILED" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"GREETING_SAVE_FAILED_DETAIL";
        goto LABEL_44;
      case 0x40CLL:
        v27 = +[NSBundle mainBundle];
        *title = [v27 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];

        v9 = @"VOICEMAIL_ERROR_MSG_GREETING_FAIL";
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if ([v42 isEqualToString:kVVPDPActivationErrorDomain])
  {
    code = [(NSError *)self code];
    if (code <= 0x39 && ((1 << code) & 0x2C0000000000000) != 0)
    {
      v11 = +[NSBundle mainBundle];
      *title = [v11 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_NOT_SUBSCRIBED";
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      *title = [v14 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

      v9 = @"VOICEMAIL_ERROR_MSG_PDP_FAILURE";
    }

    goto LABEL_44;
  }

  if ([(NSError *)self isSecurityError])
  {
    v12 = +[NSBundle mainBundle];
    *title = [v12 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_SECURITY";
LABEL_44:
    v41 = +[NSBundle mainBundle];
    *message = [v41 localizedStringForKey:v9 value:&stru_10028F310 table:@"Voicemail"];

    goto LABEL_45;
  }

  if ([(NSError *)self isConnectivityError])
  {
LABEL_14:
    v13 = +[NSBundle mainBundle];
    *title = [v13 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_UNAVAILABLE" value:&stru_10028F310 table:@"Voicemail"];

    v9 = @"VOICEMAIL_ERROR_MSG_CONNECTIVITY";
    goto LABEL_44;
  }

LABEL_45:
}

@end