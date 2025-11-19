@interface MailErrorHandler
- (BOOL)shouldDisplayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (MailErrorHandler)init;
- (MailErrorPresentationDelegate)presentationDelegate;
- (id)_alertTitleWithError:(id)a3;
- (id)preferencesURLForAccount:(id)a3 error:(id)a4;
- (id)sanitizedErrorForError:(id)a3 forAccount:(id)a4;
- (void)_changeSetManagerEncounteredError:(id)a3;
- (void)_displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (void)_presentAlertController:(id)a3;
- (void)_presentAlertWithSettingsButtonForAccount:(id)a3 error:(id)a4;
- (void)_promptUserForWebLoginWithAccount:(id)a3 error:(id)a4;
- (void)_promptUserToTryAlternateSettingsFromAccountHealer:(id)a3 completionHandler:(id)a4;
- (void)_redirectToRecoveryURL:(id)a3;
- (void)didDisplayError:(id)a3;
- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (void)reset;
@end

@implementation MailErrorHandler

- (MailErrorHandler)init
{
  v9.receiver = self;
  v9.super_class = MailErrorHandler;
  v2 = [(MailErrorHandler *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    displayedErrorDescriptions = v2->_displayedErrorDescriptions;
    v2->_displayedErrorDescriptions = v3;

    v5 = objc_alloc_init(NSMutableSet);
    sslErrorAccountsDisplayed = v2->_sslErrorAccountsDisplayed;
    v2->_sslErrorAccountsDisplayed = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_changeSetManagerEncounteredError:" name:@"MailChangeSetEncounteredError" object:0];
  }

  return v2;
}

- (void)reset
{
  [(NSMutableSet *)self->_displayedErrorDescriptions removeAllObjects];
  sslErrorAccountsDisplayed = self->_sslErrorAccountsDisplayed;
  self->_sslErrorAccountsDisplayed = 0;
}

- (BOOL)shouldDisplayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 == 2)
  {
    LOBYTE(v9) = 1;
    goto LABEL_50;
  }

  v9 = [v7 mf_shouldBeReportedToUser];
  v10 = [v7 userInfo];
  v42 = [v10 objectForKey:MFSSLErrorCertificateDigestKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v42)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v12 == 1)
  {
    v13 = [v7 mf_shortDescription];
    v9 = [v13 length] != 0;
  }

  if ((v9 & isKindOfClass) == 1)
  {
    v14 = +[UIApplication sharedApplication];
    v9 = [v14 isSuspended] ^ 1;
  }

  if ((v9 & isKindOfClass) == 1)
  {
    v15 = +[PCPersistentTimer lastSystemWakeDate];
    [v15 timeIntervalSinceNow];
    v9 = v16 < -7.0;
  }

  v17 = +[UIApplication sharedApplication];
  v41 = [v17 selectedAccounts];

  v18 = v9 ^ 1;
  if (!v8)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    if ([v41 count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v8 uniqueID];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v41;
        v20 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v20)
        {
          v21 = *v50;
LABEL_19:
          v22 = 0;
          while (1)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [*(*(&v49 + 1) + 8 * v22) uniqueID];
            v24 = [v19 isEqualToString:v23];

            if (v24)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
              if (v20)
              {
                goto LABEL_19;
              }

              v9 = 0;
              goto LABEL_42;
            }
          }
        }

        v9 = 1;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v8;
        obj = [v19 uniqueID];
        v25 = [v19 mailAccountIfAvailable];
        v40 = [v25 uniqueID];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v38 = v41;
        v26 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v26)
        {
          v39 = *v46;
          while (2)
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v46 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v28 = *(*(&v45 + 1) + 8 * i);
              v29 = [v28 deliveryAccount];
              v30 = [v29 uniqueID];
              if ([obj isEqualToString:v30])
              {

                goto LABEL_40;
              }

              v31 = [v28 uniqueID];
              v32 = [v40 isEqualToString:v31];

              if (v32)
              {
                goto LABEL_40;
              }
            }

            v26 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
            v9 = 0;
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        else
        {
LABEL_40:
          v9 = 1;
        }

        goto LABEL_42;
      }
    }

    v9 = 1;
  }

LABEL_43:
  if (a5 == 1 && v9)
  {
    displayedErrorDescriptions = self->_displayedErrorDescriptions;
    v34 = [v7 localizedDescription];
    LODWORD(displayedErrorDescriptions) = [(NSMutableSet *)displayedErrorDescriptions containsObject:v34];

    v9 = displayedErrorDescriptions ^ 1;
  }

  if (v9 && v42)
  {
    sslErrorAccountsDisplayed = self->_sslErrorAccountsDisplayed;
    v36 = [v8 uniqueID];
    LOBYTE(sslErrorAccountsDisplayed) = [(NSMutableSet *)sslErrorAccountsDisplayed containsObject:v36];

    LOBYTE(v9) = sslErrorAccountsDisplayed ^ 1;
  }

LABEL_50:
  return v9;
}

- (void)didDisplayError:(id)a3
{
  v4 = a3;
  displayedErrorDescriptions = self->_displayedErrorDescriptions;
  v9 = v4;
  if (!displayedErrorDescriptions)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_displayedErrorDescriptions;
    self->_displayedErrorDescriptions = v6;

    displayedErrorDescriptions = self->_displayedErrorDescriptions;
    v4 = v9;
  }

  v8 = [v4 localizedDescription];
  [(NSMutableSet *)displayedErrorDescriptions addObject:v8];
}

- (id)sanitizedErrorForError:(id)a3 forAccount:(id)a4
{
  v45 = a3;
  v46 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v46;
  v7 = v45;
  v8 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 mailAccountIfAvailable], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = v8;
  }

  v10 = [v9 displayName];

  v11 = [v7 domain];
  v12 = MFMessageErrorDomain;
  v13 = [v11 isEqual:MFMessageErrorDomain];

  if (v13)
  {
    v14 = 0;
    v15 = 0;
    switch([v7 code])
    {
      case 0x408uLL:
      case 0x40FuLL:
      case 0x41FuLL:
      case 0x420uLL:
      case 0x424uLL:
        v18 = MFLookupLocalizedString();
        v19 = [NSString stringWithFormat:v18, v10];
        goto LABEL_25;
      case 0x40BuLL:
      case 0x40CuLL:
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_9;
        }

        v15 = [v7 localizedDescription];
        v14 = MFLookupLocalizedString();
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      case 0x410uLL:
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"UNRECOVERABLE_SERVER_ERROR" value:&stru_100662A88 table:@"Main"];
        goto LABEL_25;
      case 0x412uLL:
        v14 = MFLookupLocalizedString();
        v20 = [v7 localizedDescription];
        goto LABEL_17;
      case 0x413uLL:
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"NO_INTERNET_CONNECTION" value:&stru_100662A88 table:@"Main"];
        goto LABEL_25;
      case 0x416uLL:
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"ERROR_DATA_BLOCKED_BY_CALL" value:&stru_100662A88 table:@"Main"];
LABEL_25:
        v15 = v19;

        v14 = 0;
        goto LABEL_26;
      case 0x417uLL:
        v14 = MFLookupLocalizedString();
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v16 localizedStringForKey:@"INVALID_SENDER_MESSAGE" value:&stru_100662A88 table:@"Main"];
        goto LABEL_21;
      case 0x418uLL:
        v14 = MFLookupLocalizedString();
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v16 localizedStringForKey:@"NO_RECIPIENT_MESSAGE" value:&stru_100662A88 table:@"Main"];
        goto LABEL_21;
      case 0x419uLL:
        v14 = MFLookupLocalizedString();
        v16 = [v7 userInfo];
        v17 = [v16 objectForKeyedSubscript:MFInvalidRecipientEmailAddresses];
        v15 = [_TtC10MobileMail24MFMailErrorMessageHelper invalidRecipientErrorMessageWithRecipients:v17];

        goto LABEL_22;
      case 0x41AuLL:
        v14 = MFLookupLocalizedString();
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v16 localizedStringForKey:@"SENDER_MAILBOX_FULL_MESSAGE" value:&stru_100662A88 table:@"Main"];
LABEL_21:
        v15 = v21;
LABEL_22:

        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      case 0x41BuLL:
      case 0x41DuLL:
      case 0x41EuLL:
        v14 = MFLookupLocalizedString();
        v20 = MFLookupLocalizedString();
LABEL_17:
        v15 = v20;
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_23:
        v22 = v14;
LABEL_26:
        if (v15)
        {
          v23 = v15;
        }

        break;
      default:
        break;
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
  }

  v24 = v14;
  v25 = v15;
  v26 = v25;
  if (v24 && v25)
  {
    goto LABEL_48;
  }

  v27 = [v7 code];
  v28 = v8;
  v29 = MFLookupLocalizedString();
  if (v27 == 1058)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"ACCOUNT_IN_USE" value:&stru_100662A88 table:@"Main"];

    v32 = [v28 displayName];
    v33 = [NSString stringWithFormat:v31, v32];
  }

  else
  {
    if (![v28 shouldDisplayHostnameInErrorMessages] || (objc_msgSend(v28, "hostname"), (v31 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v31 = v34;
      if (isKindOfClass)
      {
        v35 = @"GENERIC_DELIVERY_ERROR_MESSAGE";
      }

      else
      {
        v35 = @"GENERIC_INCOMING_ERROR_MESSAGE";
      }

      v36 = [v34 localizedStringForKey:v35 value:&stru_100662A88 table:@"Main"];
      goto LABEL_40;
    }

    v32 = MFLookupLocalizedString();
    v33 = [NSString stringWithFormat:v32, v31];
  }

  v36 = v33;

LABEL_40:
  v37 = v24;
  if (!v24)
  {
    v37 = 0;
    if (v29)
    {
      v38 = v29;
      v37 = v29;
    }
  }

  v39 = v26;
  if (!v26)
  {
    v39 = 0;
    if (v36)
    {
      v40 = v36;
      v39 = v36;
    }
  }

  if (v24)
  {
    if (v26)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v24 = v37;
    if (v26)
    {
      goto LABEL_48;
    }
  }

  v26 = v39;
LABEL_48:
  if (v7)
  {
    v12 = [v7 domain];
    v41 = [v7 code];
  }

  else
  {
    v41 = 1030;
  }

  v42 = [v7 userInfo];
  v43 = [MFError errorWithDomain:v12 code:v41 localizedDescription:v26 title:v24 userInfo:v42];

  if (v7)
  {
  }

  return v43;
}

- (id)preferencesURLForAccount:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 domain];
  v8 = [v6 code];
  if ([MFMessageErrorDomain isEqualToString:v7])
  {
    v9 = 0x1880001u >> (v8 - 8);
    if ((v8 - 1032) > 0x18)
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if (v8 == 54 || v8 == 1212 || v8 == 1235 || (v9 & 1) != 0)
  {
    v10 = [MFPreferencesURL accountInfoURLForAccount:v5];
LABEL_11:
    v11 = v10;
    goto LABEL_12;
  }

  if ([v6 mf_isSMIMEError])
  {
    v10 = [MFPreferencesURL advancedAccountInfoURLForAccount:v5];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v5 identifier];
    v14 = [v6 domain];
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2048;
    v21 = [v6 code];
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "preferencesURLForAccount:%@ error:[%@:%ld] => %@", &v16, 0x2Au);
  }

  return v11;
}

- (void)_displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [v14 userInfo];
  v10 = [v9 objectForKey:MFSSLErrorCertificateKey];
  if (!v10)
  {
    v11 = [v9 objectForKey:@"MailErrorHandlerDoNotSanitize"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      goto LABEL_5;
    }

    v13 = [(MailErrorHandler *)self sanitizedErrorForError:v14 forAccount:v8];
    v10 = v14;
    v14 = v13;
  }

LABEL_5:
  if ([(MailErrorHandler *)self shouldDisplayError:v14 forAccount:v8 mode:a5])
  {
    if ([v14 code] == 1059)
    {
      [(MailErrorHandler *)self _promptUserForWebLoginWithAccount:v8 error:v14];
    }

    else
    {
      [(MailErrorHandler *)self _presentAlertWithSettingsButtonForAccount:v8 error:v14];
    }

    [(MailErrorHandler *)self didDisplayError:v14];
  }
}

- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MFAccountHealer alloc];
  v11 = +[MFNetworkController sharedInstance];
  v12 = [(MFAccountHealer *)v10 initWithAccount:v9 networkController:v11 error:v8];

  if ([(MFAccountHealer *)v12 shouldHealFromAlternateAccount])
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10011116C;
    v17 = &unk_100650788;
    v18 = self;
    v19 = v8;
    v20 = v9;
    v21 = a5;
    v13 = objc_retainBlock(&v14);
    [(MailErrorHandler *)self _promptUserToTryAlternateSettingsFromAccountHealer:v12 completionHandler:v13, v14, v15, v16, v17, v18];
  }

  else
  {
    [(MailErrorHandler *)self _displayError:v8 forAccount:v9 mode:a5];
  }
}

- (void)_redirectToRecoveryURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = +[UIApplication sharedApplication];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];

    v3 = v5;
  }
}

- (void)_changeSetManagerEncounteredError:(id)a3
{
  v4 = a3;
  v7 = v4;
  v8 = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_promptUserForWebLoginWithAccount:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 userInfo];
  v9 = [v8 objectForKey:MFRequestedWebLoginURLKey];

  if (!v9 || (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 applicationState], v10, v11) || (v13 = _NSConcreteStackBlock, v14 = 3221225472, v15 = sub_1001115D8, v16 = &unk_1006507B0, v17 = self, v18 = v6, v12 = objc_msgSend(v18, "promptUserForWebLoginWithURL:shouldConfirm:completionHandler:", v9, 1, &v13), v18, (v12 & 1) == 0))
  {
    [(MailErrorHandler *)self _presentAlertWithSettingsButtonForAccount:v6 error:v7, v13, v14, v15, v16, v17];
  }
}

- (void)_promptUserToTryAlternateSettingsFromAccountHealer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailErrorHandler.m" lineNumber:426 description:@"Current thread must be main"];
  }

  v8 = [v6 account];
  v27 = v8;
  v28 = [v6 error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    [v9 localizedStringForKey:@"HEAL_INCOMING_TITLE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    [v9 localizedStringForKey:@"HEAL_OUTGOING_TITLE" value:&stru_100662A88 table:@"Main"];
  }
  v10 = ;

  v11 = [v8 displayName];
  v12 = [NSString stringWithFormat:v10, v11];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"HEAL_MESSAGE" value:&stru_100662A88 table:@"Main"];

  v15 = [v28 domain];
  v16 = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", v15, [v28 code], v14, v12, 0);

  if ([(MailErrorHandler *)self shouldDisplayError:v16 forAccount:v27 mode:1])
  {
    [(MailErrorHandler *)self didDisplayError:v16];
    v26 = v7;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v17 localizedStringForKey:@"REPAIR" value:&stru_100662A88 table:@"Main"];

    v18 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:1];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100111D24;
    v33[3] = &unk_1006507D8;
    v21 = v7;
    v34 = v21;
    v22 = [UIAlertAction actionWithTitle:v20 style:1 handler:v33];
    [v18 addAction:v22];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100111D38;
    v30[3] = &unk_100650800;
    v31 = v6;
    v32 = v21;
    v23 = [UIAlertAction actionWithTitle:v25 style:0 handler:v30];
    v7 = v26;
    [v18 addAction:v23];

    [(MailErrorHandler *)self _presentAlertController:v18];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_presentAlertWithSettingsButtonForAccount:(id)a3 error:(id)a4
{
  v32 = a3;
  v7 = a4;
  if (pthread_main_np() == 1)
  {
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailErrorHandler.m" lineNumber:466 description:@"Current thread must be main"];

    if (!v7)
    {
      goto LABEL_24;
    }
  }

  v8 = [(MailErrorHandler *)self _alertTitleWithError:v7];
  v9 = [v7 localizedDescription];
  v10 = [v7 localizedFailureReason];
  if (v10)
  {
    v11 = [NSString stringWithFormat:@"%@\n\n%@", v9, v10];

    v9 = v11;
  }

  if (v8 && ![&stru_100662A88 isEqualToString:v8] || v9 && !objc_msgSend(&stru_100662A88, "isEqualToString:", v9))
  {
    v12 = [v7 localizedRecoverySuggestion];
    v29 = [v7 recoveryAttempter];
    v13 = objc_opt_respondsToSelector();
    if (v29)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    v30 = [(MailErrorHandler *)self preferencesURLForAccount:v32 error:v7];
    v31 = [UIAlertController alertControllerWithTitle:v8 message:v9 preferredStyle:1];
    if ((v15 & v13) != 0)
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
      v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:0];
      [v31 addAction:v18];

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1001123FC;
      v35[3] = &unk_100650828;
      v36 = v29;
      v37 = v7;
      v38 = self;
      v19 = [UIAlertAction actionWithTitle:v12 style:0 handler:v35];
      [v31 addAction:v19];
    }

    else
    {
      v20 = +[NSBundle mainBundle];
      if (v30)
      {
        v21 = [v20 localizedStringForKey:@"SETTINGS" value:&stru_100662A88 table:@"Main"];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10011241C;
        v33[3] = &unk_10064FCC0;
        v34 = v30;
        v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v33];
        [v31 addAction:v22];

        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
        v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:0];
        [v31 addAction:v25];
      }

      else
      {
        v26 = [v20 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
        v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:0];
        [v31 addAction:v27];
      }
    }

    [(MailErrorHandler *)self _presentAlertController:v31];
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#Warning Suppressing alert for error with no title or message: %@", buf, 0xCu);
    }
  }

LABEL_24:
}

- (id)_alertTitleWithError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"MailErrorHandlerOverridingTitle"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 mf_shortDescription];
  }

  v8 = v7;

  return v8;
}

- (void)_presentAlertController:(id)a3
{
  v6 = a3;
  v4 = [(MailErrorHandler *)self presentationDelegate];
  v5 = [v4 viewControllerForPresentingErrors];

  if (v5)
  {
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

- (MailErrorPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end