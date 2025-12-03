@interface MailErrorHandler
- (BOOL)shouldDisplayError:(id)error forAccount:(id)account mode:(int64_t)mode;
- (MailErrorHandler)init;
- (MailErrorPresentationDelegate)presentationDelegate;
- (id)_alertTitleWithError:(id)error;
- (id)preferencesURLForAccount:(id)account error:(id)error;
- (id)sanitizedErrorForError:(id)error forAccount:(id)account;
- (void)_changeSetManagerEncounteredError:(id)error;
- (void)_displayError:(id)error forAccount:(id)account mode:(int64_t)mode;
- (void)_presentAlertController:(id)controller;
- (void)_presentAlertWithSettingsButtonForAccount:(id)account error:(id)error;
- (void)_promptUserForWebLoginWithAccount:(id)account error:(id)error;
- (void)_promptUserToTryAlternateSettingsFromAccountHealer:(id)healer completionHandler:(id)handler;
- (void)_redirectToRecoveryURL:(id)l;
- (void)didDisplayError:(id)error;
- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode;
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

- (BOOL)shouldDisplayError:(id)error forAccount:(id)account mode:(int64_t)mode
{
  errorCopy = error;
  accountCopy = account;
  if (mode == 2)
  {
    LOBYTE(mf_shouldBeReportedToUser) = 1;
    goto LABEL_50;
  }

  mf_shouldBeReportedToUser = [errorCopy mf_shouldBeReportedToUser];
  userInfo = [errorCopy userInfo];
  v42 = [userInfo objectForKey:MFSSLErrorCertificateDigestKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v42)
  {
    v12 = 0;
  }

  else
  {
    v12 = mf_shouldBeReportedToUser;
  }

  if (v12 == 1)
  {
    mf_shortDescription = [errorCopy mf_shortDescription];
    mf_shouldBeReportedToUser = [mf_shortDescription length] != 0;
  }

  if ((mf_shouldBeReportedToUser & isKindOfClass) == 1)
  {
    v14 = +[UIApplication sharedApplication];
    mf_shouldBeReportedToUser = [v14 isSuspended] ^ 1;
  }

  if ((mf_shouldBeReportedToUser & isKindOfClass) == 1)
  {
    v15 = +[PCPersistentTimer lastSystemWakeDate];
    [v15 timeIntervalSinceNow];
    mf_shouldBeReportedToUser = v16 < -7.0;
  }

  v17 = +[UIApplication sharedApplication];
  selectedAccounts = [v17 selectedAccounts];

  v18 = mf_shouldBeReportedToUser ^ 1;
  if (!accountCopy)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    if ([selectedAccounts count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uniqueID = [accountCopy uniqueID];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = selectedAccounts;
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

            uniqueID2 = [*(*(&v49 + 1) + 8 * v22) uniqueID];
            v24 = [uniqueID isEqualToString:uniqueID2];

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

              mf_shouldBeReportedToUser = 0;
              goto LABEL_42;
            }
          }
        }

        mf_shouldBeReportedToUser = 1;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uniqueID = accountCopy;
        obj = [uniqueID uniqueID];
        mailAccountIfAvailable = [uniqueID mailAccountIfAvailable];
        uniqueID3 = [mailAccountIfAvailable uniqueID];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v38 = selectedAccounts;
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
              deliveryAccount = [v28 deliveryAccount];
              uniqueID4 = [deliveryAccount uniqueID];
              if ([obj isEqualToString:uniqueID4])
              {

                goto LABEL_40;
              }

              uniqueID5 = [v28 uniqueID];
              v32 = [uniqueID3 isEqualToString:uniqueID5];

              if (v32)
              {
                goto LABEL_40;
              }
            }

            v26 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
            mf_shouldBeReportedToUser = 0;
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
          mf_shouldBeReportedToUser = 1;
        }

        goto LABEL_42;
      }
    }

    mf_shouldBeReportedToUser = 1;
  }

LABEL_43:
  if (mode == 1 && mf_shouldBeReportedToUser)
  {
    displayedErrorDescriptions = self->_displayedErrorDescriptions;
    localizedDescription = [errorCopy localizedDescription];
    LODWORD(displayedErrorDescriptions) = [(NSMutableSet *)displayedErrorDescriptions containsObject:localizedDescription];

    mf_shouldBeReportedToUser = displayedErrorDescriptions ^ 1;
  }

  if (mf_shouldBeReportedToUser && v42)
  {
    sslErrorAccountsDisplayed = self->_sslErrorAccountsDisplayed;
    uniqueID6 = [accountCopy uniqueID];
    LOBYTE(sslErrorAccountsDisplayed) = [(NSMutableSet *)sslErrorAccountsDisplayed containsObject:uniqueID6];

    LOBYTE(mf_shouldBeReportedToUser) = sslErrorAccountsDisplayed ^ 1;
  }

LABEL_50:
  return mf_shouldBeReportedToUser;
}

- (void)didDisplayError:(id)error
{
  errorCopy = error;
  displayedErrorDescriptions = self->_displayedErrorDescriptions;
  v9 = errorCopy;
  if (!displayedErrorDescriptions)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_displayedErrorDescriptions;
    self->_displayedErrorDescriptions = v6;

    displayedErrorDescriptions = self->_displayedErrorDescriptions;
    errorCopy = v9;
  }

  localizedDescription = [errorCopy localizedDescription];
  [(NSMutableSet *)displayedErrorDescriptions addObject:localizedDescription];
}

- (id)sanitizedErrorForError:(id)error forAccount:(id)account
{
  errorCopy = error;
  accountCopy = account;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = accountCopy;
  v7 = errorCopy;
  v8 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 mailAccountIfAvailable], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = v8;
  }

  displayName = [v9 displayName];

  domain = [v7 domain];
  domain2 = MFMessageErrorDomain;
  v13 = [domain isEqual:MFMessageErrorDomain];

  if (v13)
  {
    v14 = 0;
    localizedDescription = 0;
    switch([v7 code])
    {
      case 0x408uLL:
      case 0x40FuLL:
      case 0x41FuLL:
      case 0x420uLL:
      case 0x424uLL:
        v18 = MFLookupLocalizedString();
        v19 = [NSString stringWithFormat:v18, displayName];
        goto LABEL_25;
      case 0x40BuLL:
      case 0x40CuLL:
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_9;
        }

        localizedDescription = [v7 localizedDescription];
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
        localizedDescription2 = [v7 localizedDescription];
        goto LABEL_17;
      case 0x413uLL:
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"NO_INTERNET_CONNECTION" value:&stru_100662A88 table:@"Main"];
        goto LABEL_25;
      case 0x416uLL:
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"ERROR_DATA_BLOCKED_BY_CALL" value:&stru_100662A88 table:@"Main"];
LABEL_25:
        localizedDescription = v19;

        v14 = 0;
        goto LABEL_26;
      case 0x417uLL:
        v14 = MFLookupLocalizedString();
        userInfo = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [userInfo localizedStringForKey:@"INVALID_SENDER_MESSAGE" value:&stru_100662A88 table:@"Main"];
        goto LABEL_21;
      case 0x418uLL:
        v14 = MFLookupLocalizedString();
        userInfo = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [userInfo localizedStringForKey:@"NO_RECIPIENT_MESSAGE" value:&stru_100662A88 table:@"Main"];
        goto LABEL_21;
      case 0x419uLL:
        v14 = MFLookupLocalizedString();
        userInfo = [v7 userInfo];
        v17 = [userInfo objectForKeyedSubscript:MFInvalidRecipientEmailAddresses];
        localizedDescription = [_TtC10MobileMail24MFMailErrorMessageHelper invalidRecipientErrorMessageWithRecipients:v17];

        goto LABEL_22;
      case 0x41AuLL:
        v14 = MFLookupLocalizedString();
        userInfo = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [userInfo localizedStringForKey:@"SENDER_MAILBOX_FULL_MESSAGE" value:&stru_100662A88 table:@"Main"];
LABEL_21:
        localizedDescription = v21;
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
        localizedDescription2 = MFLookupLocalizedString();
LABEL_17:
        localizedDescription = localizedDescription2;
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_23:
        v22 = v14;
LABEL_26:
        if (localizedDescription)
        {
          v23 = localizedDescription;
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
    localizedDescription = 0;
  }

  v24 = v14;
  v25 = localizedDescription;
  v26 = v25;
  if (v24 && v25)
  {
    goto LABEL_48;
  }

  code = [v7 code];
  v28 = v8;
  v29 = MFLookupLocalizedString();
  if (code == 1058)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"ACCOUNT_IN_USE" value:&stru_100662A88 table:@"Main"];

    displayName2 = [v28 displayName];
    v33 = [NSString stringWithFormat:v31, displayName2];
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

    displayName2 = MFLookupLocalizedString();
    v33 = [NSString stringWithFormat:displayName2, v31];
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
    domain2 = [v7 domain];
    code2 = [v7 code];
  }

  else
  {
    code2 = 1030;
  }

  userInfo2 = [v7 userInfo];
  v43 = [MFError errorWithDomain:domain2 code:code2 localizedDescription:v26 title:v24 userInfo:userInfo2];

  if (v7)
  {
  }

  return v43;
}

- (id)preferencesURLForAccount:(id)account error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];
  if ([MFMessageErrorDomain isEqualToString:domain])
  {
    v9 = 0x1880001u >> (code - 8);
    if ((code - 1032) > 0x18)
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if (code == 54 || code == 1212 || code == 1235 || (v9 & 1) != 0)
  {
    v10 = [MFPreferencesURL accountInfoURLForAccount:accountCopy];
LABEL_11:
    v11 = v10;
    goto LABEL_12;
  }

  if ([errorCopy mf_isSMIMEError])
  {
    v10 = [MFPreferencesURL advancedAccountInfoURLForAccount:accountCopy];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    identifier = [accountCopy identifier];
    domain2 = [errorCopy domain];
    v16 = 138413058;
    v17 = identifier;
    v18 = 2112;
    v19 = domain2;
    v20 = 2048;
    code2 = [errorCopy code];
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "preferencesURLForAccount:%@ error:[%@:%ld] => %@", &v16, 0x2Au);
  }

  return v11;
}

- (void)_displayError:(id)error forAccount:(id)account mode:(int64_t)mode
{
  errorCopy = error;
  accountCopy = account;
  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKey:MFSSLErrorCertificateKey];
  if (!v10)
  {
    v11 = [userInfo objectForKey:@"MailErrorHandlerDoNotSanitize"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_5;
    }

    v13 = [(MailErrorHandler *)self sanitizedErrorForError:errorCopy forAccount:accountCopy];
    v10 = errorCopy;
    errorCopy = v13;
  }

LABEL_5:
  if ([(MailErrorHandler *)self shouldDisplayError:errorCopy forAccount:accountCopy mode:mode])
  {
    if ([errorCopy code] == 1059)
    {
      [(MailErrorHandler *)self _promptUserForWebLoginWithAccount:accountCopy error:errorCopy];
    }

    else
    {
      [(MailErrorHandler *)self _presentAlertWithSettingsButtonForAccount:accountCopy error:errorCopy];
    }

    [(MailErrorHandler *)self didDisplayError:errorCopy];
  }
}

- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode
{
  errorCopy = error;
  accountCopy = account;
  v10 = [MFAccountHealer alloc];
  v11 = +[MFNetworkController sharedInstance];
  v12 = [(MFAccountHealer *)v10 initWithAccount:accountCopy networkController:v11 error:errorCopy];

  if ([(MFAccountHealer *)v12 shouldHealFromAlternateAccount])
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10011116C;
    v17 = &unk_100650788;
    selfCopy = self;
    v19 = errorCopy;
    v20 = accountCopy;
    modeCopy = mode;
    v13 = objc_retainBlock(&v14);
    [(MailErrorHandler *)self _promptUserToTryAlternateSettingsFromAccountHealer:v12 completionHandler:v13, v14, v15, v16, v17, selfCopy];
  }

  else
  {
    [(MailErrorHandler *)self _displayError:errorCopy forAccount:accountCopy mode:mode];
  }
}

- (void)_redirectToRecoveryURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v4 = +[UIApplication sharedApplication];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];

    lCopy = v5;
  }
}

- (void)_changeSetManagerEncounteredError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  selfCopy = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_promptUserForWebLoginWithAccount:(id)account error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKey:MFRequestedWebLoginURLKey];

  if (!v9 || (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 applicationState], v10, v11) || (v13 = _NSConcreteStackBlock, v14 = 3221225472, v15 = sub_1001115D8, v16 = &unk_1006507B0, v17 = self, v18 = accountCopy, v12 = objc_msgSend(v18, "promptUserForWebLoginWithURL:shouldConfirm:completionHandler:", v9, 1, &v13), v18, (v12 & 1) == 0))
  {
    [(MailErrorHandler *)self _presentAlertWithSettingsButtonForAccount:accountCopy error:errorCopy, v13, v14, v15, v16, v17];
  }
}

- (void)_promptUserToTryAlternateSettingsFromAccountHealer:(id)healer completionHandler:(id)handler
{
  healerCopy = healer;
  handlerCopy = handler;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailErrorHandler.m" lineNumber:426 description:@"Current thread must be main"];
  }

  account = [healerCopy account];
  v27 = account;
  error = [healerCopy error];
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

  displayName = [account displayName];
  v12 = [NSString stringWithFormat:v10, displayName];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"HEAL_MESSAGE" value:&stru_100662A88 table:@"Main"];

  domain = [error domain];
  v16 = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", domain, [error code], v14, v12, 0);

  if ([(MailErrorHandler *)self shouldDisplayError:v16 forAccount:v27 mode:1])
  {
    [(MailErrorHandler *)self didDisplayError:v16];
    v26 = handlerCopy;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v17 localizedStringForKey:@"REPAIR" value:&stru_100662A88 table:@"Main"];

    v18 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:1];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100111D24;
    v33[3] = &unk_1006507D8;
    v21 = handlerCopy;
    v34 = v21;
    v22 = [UIAlertAction actionWithTitle:v20 style:1 handler:v33];
    [v18 addAction:v22];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100111D38;
    v30[3] = &unk_100650800;
    v31 = healerCopy;
    v32 = v21;
    v23 = [UIAlertAction actionWithTitle:v25 style:0 handler:v30];
    handlerCopy = v26;
    [v18 addAction:v23];

    [(MailErrorHandler *)self _presentAlertController:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_presentAlertWithSettingsButtonForAccount:(id)account error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  if (pthread_main_np() == 1)
  {
    if (!errorCopy)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailErrorHandler.m" lineNumber:466 description:@"Current thread must be main"];

    if (!errorCopy)
    {
      goto LABEL_24;
    }
  }

  v8 = [(MailErrorHandler *)self _alertTitleWithError:errorCopy];
  localizedDescription = [errorCopy localizedDescription];
  localizedFailureReason = [errorCopy localizedFailureReason];
  if (localizedFailureReason)
  {
    v11 = [NSString stringWithFormat:@"%@\n\n%@", localizedDescription, localizedFailureReason];

    localizedDescription = v11;
  }

  if (v8 && ![&stru_100662A88 isEqualToString:v8] || localizedDescription && !objc_msgSend(&stru_100662A88, "isEqualToString:", localizedDescription))
  {
    localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
    recoveryAttempter = [errorCopy recoveryAttempter];
    v13 = objc_opt_respondsToSelector();
    if (recoveryAttempter)
    {
      v14 = localizedRecoverySuggestion == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    v30 = [(MailErrorHandler *)self preferencesURLForAccount:accountCopy error:errorCopy];
    v31 = [UIAlertController alertControllerWithTitle:v8 message:localizedDescription preferredStyle:1];
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
      v36 = recoveryAttempter;
      v37 = errorCopy;
      selfCopy = self;
      v19 = [UIAlertAction actionWithTitle:localizedRecoverySuggestion style:0 handler:v35];
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
    localizedRecoverySuggestion = MFLogGeneral();
    if (os_log_type_enabled(localizedRecoverySuggestion, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = errorCopy;
      _os_log_impl(&_mh_execute_header, localizedRecoverySuggestion, OS_LOG_TYPE_DEFAULT, "#Warning Suppressing alert for error with no title or message: %@", buf, 0xCu);
    }
  }

LABEL_24:
}

- (id)_alertTitleWithError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo objectForKey:@"MailErrorHandlerOverridingTitle"];
  v6 = v5;
  if (v5)
  {
    mf_shortDescription = v5;
  }

  else
  {
    mf_shortDescription = [errorCopy mf_shortDescription];
  }

  v8 = mf_shortDescription;

  return v8;
}

- (void)_presentAlertController:(id)controller
{
  controllerCopy = controller;
  presentationDelegate = [(MailErrorHandler *)self presentationDelegate];
  viewControllerForPresentingErrors = [presentationDelegate viewControllerForPresentingErrors];

  if (viewControllerForPresentingErrors)
  {
    [viewControllerForPresentingErrors presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (MailErrorPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end