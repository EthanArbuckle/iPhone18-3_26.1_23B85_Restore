@interface MFUserActivityRouter
+ (OS_os_log)log;
- (BOOL)handoffUserActivity:(id)activity withPayload:(id)payload;
- (MFUserActivityRouter)initWithDelegate:(id)delegate messageRepository:(id)repository;
- (MFUserActivityRouterDelegate)delegate;
- (id)_currentActivityUserInfoFromSendMailIntent:(id)intent;
- (void)handoffUserActivityFailedWithType:(id)type error:(id)error;
- (void)presentAlertForHandoffError:(id)error;
- (void)presentAlertForReturnToSenderError;
- (void)recoverUIAfterHandoffFailureWithType:(id)type;
- (void)returnToSenderErrorHandling:(id)handling urlError:(id)error;
- (void)returnToSenderUserActivity:(id)activity;
- (void)returnToSenderUserActivityFailedWithType:(id)type error:(id)error;
- (void)routeUserActivity:(id)activity;
- (void)routeUserActivityFailedWithType:(id)type error:(id)error;
- (void)routeWillContinueUserActivityWithType:(id)type;
- (void)userAcknowledgedHandoffError:(id)error;
- (void)willHandoffUserActivityWithType:(id)type;
- (void)willReturnToSenderActivityWithType:(id)type;
@end

@implementation MFUserActivityRouter

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233694;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD768 != -1)
  {
    dispatch_once(&qword_1006DD768, block);
  }

  v2 = qword_1006DD760;

  return v2;
}

- (MFUserActivityRouter)initWithDelegate:(id)delegate messageRepository:(id)repository
{
  delegateCopy = delegate;
  repositoryCopy = repository;
  v13.receiver = self;
  v13.super_class = MFUserActivityRouter;
  v8 = [(MFUserActivityRouter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_messageRepository, repository);
    v10 = objc_alloc_init(MFLANHandoffAgent);
    LANHandoffAgent = v9->_LANHandoffAgent;
    v9->_LANHandoffAgent = v10;
  }

  return v9;
}

- (id)_currentActivityUserInfoFromSendMailIntent:(id)intent
{
  intentCopy = intent;
  v4 = objc_alloc_init(NSMutableDictionary);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100233B08;
  v25[3] = &unk_100656240;
  v5 = objc_alloc_init(MFPersonTransformer);
  v26 = v5;
  v6 = objc_retainBlock(v25);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100233B3C;
  v23 = &unk_100656268;
  v7 = v4;
  v24 = v7;
  v8 = objc_retainBlock(&v20);
  sender = [intentCopy sender];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeySenderAddress, sender);

  v10 = [intentCopy to];
  v11 = [v10 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyToRecipients, v11);

  v12 = [intentCopy cc];
  v13 = [v12 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyCcRecipients, v13);

  v14 = [intentCopy bcc];
  v15 = [v14 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyBccRecipients, v15);

  subject = [intentCopy subject];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeySubject, subject);

  body = [intentCopy body];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyMessageBody, body);

  v18 = v7;
  return v7;
}

- (BOOL)handoffUserActivity:(id)activity withPayload:(id)payload
{
  activityCopy = activity;
  payloadCopy = payload;
  activityType = [activityCopy activityType];
  interaction = [activityCopy interaction];
  intent = [interaction intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    intent2 = [interaction intent];
    v13 = [(MFUserActivityRouter *)self _currentActivityUserInfoFromSendMailIntent:intent2];

    v14 = MSMailActivityHandoffTypeSendMail;
    activityType = v14;
    payloadCopy = v13;
  }

  delegate = [(MFUserActivityRouter *)self delegate];
  v16 = [delegate mailboxPickerControllerForActivityRouter:self];
  v64 = [[MFUserActivityBrowseMailboxRoute alloc] initWithMailboxPickerController:v16];
  handoffComposeController = [(MFUserActivityRouter *)self handoffComposeController];
  if (!activityType)
  {
    activityType = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffTypeKey];
  }

  v17 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffDebugKeySimulateFailureBool];
  bOOLValue = [v17 BOOLValue];

  if (!bOOLValue)
  {
    v61 = v16;
    v21 = [MSMailActivityHandoffTypeSearch isEqualToString:activityType];
    v22 = [CSQueryContinuationActionType isEqualToString:activityType];
    v63 = objc_alloc_init(NSMutableDictionary);
    [v63 setObject:activityType forKeyedSubscript:@"ceActivityType"];
    if ((v22 | v21))
    {
      userInfo = [activityCopy userInfo];
      if (v21)
      {
        [v63 setObject:&off_1006744F8 forKeyedSubscript:@"ceActivityIsHandoff"];
      }

      else if (v22)
      {
        [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
        v27 = [userInfo objectForKeyedSubscript:CSSearchQueryString];
        if (v27)
        {
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1002349DC;
          v74[3] = &unk_100656290;
          v80 = 0;
          v75 = v64;
          v76 = payloadCopy;
          v81 = v22;
          v77 = delegate;
          selfCopy = self;
          v79 = v27;
          v28 = v27;
          [UIViewController _performWithoutDeferringTransitions:v74];

          v29 = 0;
          v20 = 1;
          goto LABEL_17;
        }
      }

      v29 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Could not continue Spotlight Query Activity null query."];;
      v20 = 0;
LABEL_17:

      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if ([CSSearchableItemActionType isEqualToString:activityType])
    {
      [v63 setObject:&off_100674528 forKeyedSubscript:@"ceActivityIsHandoff"];
      v59 = interaction;
      v24 = [payloadCopy objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
      v25 = v63;
      v57 = [payloadCopy objectForKeyedSubscript:@"kCSItemBundle"];
      if ([v57 isEqualToString:@"com.apple.email.SearchIndexer"])
      {
        messageRepository = [(MFUserActivityRouter *)self messageRepository];
        [messageRepository messageForSearchIndexerIdentifier:v24];
      }

      else
      {
        messageRepository = [(MFUserActivityRouter *)self messageRepository];
        [messageRepository messageForSearchableItemIdentifier:v24];
      }
      v33 = ;

      v34 = [v33 resultWithTimeout:0 error:5.0];
      if (v34 && (v25 = v63, ([delegate displayMessage:v34 fromUserActivityRouter:self] & 1) != 0))
      {
        v29 = 0;
        v20 = 1;
      }

      else
      {
        [v25 setObject:&off_100674510 forKeyedSubscript:@"ceActivityErrorReason"];
        v29 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Could not continue Spotlight Message Display Activity. Unable to find message with unique identifier: %@", v24];
        v20 = 0;
      }

      interaction = v59;
      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (([MSMailActivityHandoffTypeDisplayMessage isEqualToString:activityType] & 1) != 0 || objc_msgSend(MSMailActivityHandoffTypeDisplayMessageAttachment, "isEqualToString:", activityType))
    {
      v30 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffDisplayMessageKeyURL];
      [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
      if (v30)
      {
        v31 = [NSURL URLWithString:v30];
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_100234AF8;
        v70[3] = &unk_10064FB80;
        v71 = v63;
        v72 = v31;
        selfCopy2 = self;
        v32 = v31;
        [delegate openURL:v32 fromUserActivityRouter:self completionHandler:v70];

        v29 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v35 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Could not continue Message Display Activity with empty messageURL value."];
LABEL_31:
      v29 = v35;
      goto LABEL_32;
    }

    v37 = MSMailActivityHandoffTypeBrowseMailbox;
    if ([MSMailActivityHandoffTypeBrowseMailbox isEqualToString:activityType])
    {
      [(MFUserActivityBrowseMailboxRoute *)v64 browseMailboxForActivityPayload:payloadCopy activityType:v37 scrollToMessage:1];
      v29 = v20 = 0;
      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if ([MSMailActivityHandoffTypeComposeSansStreams isEqualToString:activityType])
    {
      [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
      v38 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageData];
      if (v38)
      {
        v39 = [[_MFMailCompositionContext alloc] initWithComposeType:2 RFC822Data:v38];
        if (handoffComposeController)
        {
          _mailComposeController = [handoffComposeController _mailComposeController];
          [_mailComposeController setCompositionContext:v39];
        }

        else
        {
          [delegate showComposeWithContext:v39 fromActivityRouter:self];
        }

        v29 = 0;
      }

      else
      {
        v29 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Received continue compose with empty message payload"];
      }

LABEL_33:
      v20 = 0;
      if (!v29)
      {
LABEL_35:

        v16 = v61;
        goto LABEL_36;
      }

LABEL_34:
      [(MFUserActivityRouter *)self presentAlertForHandoffError:v29];
      goto LABEL_35;
    }

    if ([MSMailActivityHandoffTypeComposeWithStreams isEqualToString:activityType])
    {
      [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
      v41 = MSMailActivityHandoffDebugKeyComposeDataPath;
      v42 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffDebugKeyComposeDataPath];

      v43 = +[NSUserDefaults em_userDefaults];
      v44 = [v43 BOOLForKey:@"ComposeActivityOverLAN"];

      if (handoffComposeController)
      {
        if (v42)
        {
          v30 = [payloadCopy objectForKeyedSubscript:v41];
          v45 = +[NSFileManager defaultManager];
          v46 = [v45 fileExistsAtPath:v30];

          if (v46)
          {
            v58 = v30;
            v60 = interaction;
            v47 = +[NSMutableData data];
            v48 = [NSData dataWithContentsOfFile:v58];
            if ([v48 length])
            {
              v69 = bswap32([v48 length]);
              [v47 appendBytes:&v69 length:4];
              [v47 appendData:v48];
              v49 = [NSInputStream inputStreamWithData:v47];
              v50 = +[NSOutputStream outputStreamToMemory];
              _mailComposeController2 = [handoffComposeController _mailComposeController];
              [_mailComposeController2 handleLargeMessageComposeHandoffWithInputStream:v49 outputStream:v50 error:0];

              v29 = 0;
            }

            else
            {
              v29 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Could not read draft data from file: %@", v58];
            }

            v30 = v58;
            interaction = v60;
            goto LABEL_32;
          }

          v35 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Compose data file for debugging does not exist: %@.", v30];
          goto LABEL_31;
        }

        if (v44)
        {
          v53 = [payloadCopy objectForKeyedSubscript:MFLANHandoffHostnameKey];
          v54 = [payloadCopy objectForKeyedSubscript:MFLANHandoffPortNumberKey];
          v55 = objc_alloc_init(MFLANHandoffContext);
          [v55 setHost:v53];
          [v55 setPort:{objc_msgSend(v54, "unsignedShortValue")}];
          LANHandoffAgent = self->_LANHandoffAgent;
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100234BA8;
          v67[3] = &unk_1006562B8;
          v68 = handoffComposeController;
          [(MFLANHandoffAgent *)LANHandoffAgent connectToServerWithContext:v55 completion:v67];
        }

        else
        {
          kdebug_trace();
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100234C4C;
          v65[3] = &unk_1006562E0;
          v66 = handoffComposeController;
          [activityCopy getContinuationStreamsWithCompletionHandler:v65];
        }
      }
    }

    else if ([MSMailActivityHandoffTypeSendMail isEqualToString:activityType])
    {
      v52 = [[_MFMailCompositionContext alloc] initWithHandoffActivityPayload:payloadCopy];
      [v52 setShowContentImmediately:1];
      [v52 setCaretPosition:0x7FFFFFFFFFFFFFFFLL];
      [v52 setShowKeyboardImmediately:1];
      [delegate showComposeWithContext:v52 fromActivityRouter:self];
    }

    v20 = 0;
    v29 = 0;
    goto LABEL_35;
  }

  v19 = +[NSError mailHandoffSimulatedError];
  [delegate simulateUserActivityFailureWithType:activityType error:v19 fromActivityRouter:self];

  v20 = 0;
LABEL_36:

  return v20;
}

- (void)willHandoffUserActivityWithType:(id)type
{
  typeCopy = type;
  delegate = [(MFUserActivityRouter *)self delegate];
  v5 = [delegate mailboxPickerControllerForActivityRouter:self];
  if ([MSMailActivityHandoffTypeBrowseMailbox isEqualToString:typeCopy])
  {
    [v5 dismissAndUnfocus];
  }

  else if (([MSMailActivityHandoffTypeComposeSansStreams isEqualToString:typeCopy] & 1) != 0 || objc_msgSend(MSMailActivityHandoffTypeComposeWithStreams, "isEqualToString:", typeCopy))
  {
    v6 = [[_MFMailCompositionContext alloc] initWithComposeType:9];
    v7 = [delegate composeControllerForCompositionContext:v6 forActivityRouter:self];
    [(MFUserActivityRouter *)self setHandoffComposeController:v7];

    handoffComposeController = [(MFUserActivityRouter *)self handoffComposeController];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"LOADING" value:&stru_100662A88 table:@"Main"];
    [handoffComposeController setInitialTitle:v10];

    handoffComposeController2 = [(MFUserActivityRouter *)self handoffComposeController];
    _mailComposeController = [handoffComposeController2 _mailComposeController];
    [_mailComposeController setProgressUIVisible:1 animated:0];

    handoffComposeController3 = [(MFUserActivityRouter *)self handoffComposeController];
    [delegate presentComposeController:handoffComposeController3 forUserActivityRouter:self];
  }
}

- (void)handoffUserActivityFailedWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    v11 = 138543362;
    v12 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Hand-Off _handleHandoffError: %{public}@", &v11, 0xCu);
  }

  if ([errorCopy mf_isSpotlightHandoffError])
  {
    [(MFUserActivityRouter *)self recoverUIAfterHandoffFailureWithType:typeCopy];
    v10 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Hand-Off Will not present alert since it's a spotlight continuation error.", &v11, 2u);
    }
  }

  else
  {
    [(MFUserActivityRouter *)self presentAlertForHandoffError:errorCopy];
  }
}

- (void)presentAlertForHandoffError:(id)error
{
  errorCopy = error;
  delegate = [(MFUserActivityRouter *)self delegate];
  v6 = [delegate alertOverlayControllerForActivityRouter:self];

  v7 = [MailHandoffAlertControllerFactory mailAlertControllerForHandoffError:errorCopy acknowledgmentObserver:self];
  if (v6 && v7)
  {
    v8 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [errorCopy ef_publicDescription];
      v11 = 138412546;
      v12 = v6;
      v13 = 2114;
      v14 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Hand-Off Presenting alert for handoff error using overlay controller %@. error=%{public}@", &v11, 0x16u);
    }

    [v6 presentAlertController:v7 animated:1 completion:0];
  }

  else
  {
    if (v6)
    {
      v10 = +[MFUserActivityRouter log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10048C718();
      }
    }

    else
    {
      v10 = +[MFUserActivityRouter log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10048C6B0();
      }
    }
  }
}

- (void)recoverUIAfterHandoffFailureWithType:(id)type
{
  typeCopy = type;
  delegate = [(MFUserActivityRouter *)self delegate];
  if (([typeCopy isEqualToString:MSMailActivityHandoffTypeComposeSansStreams] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", MSMailActivityHandoffTypeComposeWithStreams))
  {
    handoffComposeController = [(MFUserActivityRouter *)self handoffComposeController];
    [(MFUserActivityRouter *)self setHandoffComposeController:0];
    if (handoffComposeController)
    {
      [delegate dismissComposeController:handoffComposeController forUserActivityRouter:self];
    }
  }
}

- (void)userAcknowledgedHandoffError:(id)error
{
  mf_mailHandoffActivityType = [error mf_mailHandoffActivityType];
  [(MFUserActivityRouter *)self recoverUIAfterHandoffFailureWithType:?];
}

- (void)routeUserActivity:(id)activity
{
  activityCopy = activity;
  _syRelatedUniqueIdentifier = [activityCopy _syRelatedUniqueIdentifier];
  if (_syRelatedUniqueIdentifier && (v5 = _os_feature_enabled_impl(), _syRelatedUniqueIdentifier, v5))
  {
    [(MFUserActivityRouter *)self returnToSenderUserActivity:activityCopy];
    v6 = activityCopy;
  }

  else
  {
    userInfo = [activityCopy userInfo];
    [(MFUserActivityRouter *)self handoffUserActivity:activityCopy withPayload:userInfo];

    v6 = activityCopy;
  }
}

- (void)routeWillContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  if ([MSMailReturnToSenderActivityType isEqualToString:?] && _os_feature_enabled_impl())
  {
    [(MFUserActivityRouter *)self willReturnToSenderActivityWithType:typeCopy];
  }

  else
  {
    [(MFUserActivityRouter *)self willHandoffUserActivityWithType:typeCopy];
  }
}

- (void)routeUserActivityFailedWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  if ([MSMailReturnToSenderActivityType isEqualToString:typeCopy] && _os_feature_enabled_impl())
  {
    [(MFUserActivityRouter *)self returnToSenderUserActivityFailedWithType:typeCopy error:errorCopy];
  }

  else
  {
    [(MFUserActivityRouter *)self handoffUserActivityFailedWithType:typeCopy error:errorCopy];
  }
}

- (void)returnToSenderUserActivity:(id)activity
{
  activityCopy = activity;
  delegate = [(MFUserActivityRouter *)self delegate];
  _syRelatedUniqueIdentifier = [activityCopy _syRelatedUniqueIdentifier];
  messageRepository = [(MFUserActivityRouter *)self messageRepository];
  v8 = [messageRepository messageForSearchableItemIdentifier:_syRelatedUniqueIdentifier];

  v9 = [v8 resultWithTimeout:0 error:5.0];
  if (v9)
  {
    v10 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 138543362;
      v20 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ReturnToSender success: found a valid message %{public}@", buf, 0xCu);
    }

    _syDocumentProvider = [activityCopy _syDocumentProvider];

    if (_syDocumentProvider)
    {
      _syDocumentProvider2 = [activityCopy _syDocumentProvider];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10023594C;
      v14[3] = &unk_100656308;
      v15 = v9;
      selfCopy = self;
      v17 = _syRelatedUniqueIdentifier;
      v18 = delegate;
      [_syDocumentProvider2 loadDocumentWithHandler:v14];
    }

    else
    {
      [delegate displayMessage:v9 fromUserActivityRouter:self];
    }
  }

  else
  {
    [(MFUserActivityRouter *)self returnToSenderErrorHandling:_syRelatedUniqueIdentifier urlError:0];
  }
}

- (void)returnToSenderErrorHandling:(id)handling urlError:(id)error
{
  handlingCopy = handling;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048C780();
    }
  }

  else
  {
    v9 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10048C804();
    }

    [(MFUserActivityRouter *)self presentAlertForReturnToSenderError];
  }
}

- (void)willReturnToSenderActivityWithType:(id)type
{
  v3 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ReturnToSender will return to sender activity", v4, 2u);
  }
}

- (void)returnToSenderUserActivityFailedWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    v10 = 138412546;
    v11 = typeCopy;
    v12 = 2114;
    v13 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ReturnToSender return to sender user activity failed with type %@ and error=%{public}@", &v10, 0x16u);
  }

  [(MFUserActivityRouter *)self presentAlertForReturnToSenderError];
}

- (void)presentAlertForReturnToSenderError
{
  delegate = [(MFUserActivityRouter *)self delegate];
  v12 = [delegate alertOverlayControllerForActivityRouter:self];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];

  [v8 addAction:v11];
  [v12 presentAlertController:v8 animated:1 completion:0];
}

- (MFUserActivityRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end