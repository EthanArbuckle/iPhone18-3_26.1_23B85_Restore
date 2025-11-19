@interface MFUserActivityRouter
+ (OS_os_log)log;
- (BOOL)handoffUserActivity:(id)a3 withPayload:(id)a4;
- (MFUserActivityRouter)initWithDelegate:(id)a3 messageRepository:(id)a4;
- (MFUserActivityRouterDelegate)delegate;
- (id)_currentActivityUserInfoFromSendMailIntent:(id)a3;
- (void)handoffUserActivityFailedWithType:(id)a3 error:(id)a4;
- (void)presentAlertForHandoffError:(id)a3;
- (void)presentAlertForReturnToSenderError;
- (void)recoverUIAfterHandoffFailureWithType:(id)a3;
- (void)returnToSenderErrorHandling:(id)a3 urlError:(id)a4;
- (void)returnToSenderUserActivity:(id)a3;
- (void)returnToSenderUserActivityFailedWithType:(id)a3 error:(id)a4;
- (void)routeUserActivity:(id)a3;
- (void)routeUserActivityFailedWithType:(id)a3 error:(id)a4;
- (void)routeWillContinueUserActivityWithType:(id)a3;
- (void)userAcknowledgedHandoffError:(id)a3;
- (void)willHandoffUserActivityWithType:(id)a3;
- (void)willReturnToSenderActivityWithType:(id)a3;
@end

@implementation MFUserActivityRouter

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233694;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD768 != -1)
  {
    dispatch_once(&qword_1006DD768, block);
  }

  v2 = qword_1006DD760;

  return v2;
}

- (MFUserActivityRouter)initWithDelegate:(id)a3 messageRepository:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MFUserActivityRouter;
  v8 = [(MFUserActivityRouter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_messageRepository, a4);
    v10 = objc_alloc_init(MFLANHandoffAgent);
    LANHandoffAgent = v9->_LANHandoffAgent;
    v9->_LANHandoffAgent = v10;
  }

  return v9;
}

- (id)_currentActivityUserInfoFromSendMailIntent:(id)a3
{
  v3 = a3;
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
  v9 = [v3 sender];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeySenderAddress, v9);

  v10 = [v3 to];
  v11 = [v10 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyToRecipients, v11);

  v12 = [v3 cc];
  v13 = [v12 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyCcRecipients, v13);

  v14 = [v3 bcc];
  v15 = [v14 ef_compactMap:v6];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyBccRecipients, v15);

  v16 = [v3 subject];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeySubject, v16);

  v17 = [v3 body];
  (v8[2])(v8, MSMailActivityHandoffSendMailKeyMessageBody, v17);

  v18 = v7;
  return v7;
}

- (BOOL)handoffUserActivity:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activityType];
  v9 = [v6 interaction];
  v10 = [v9 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 intent];
    v13 = [(MFUserActivityRouter *)self _currentActivityUserInfoFromSendMailIntent:v12];

    v14 = MSMailActivityHandoffTypeSendMail;
    v8 = v14;
    v7 = v13;
  }

  v15 = [(MFUserActivityRouter *)self delegate];
  v16 = [v15 mailboxPickerControllerForActivityRouter:self];
  v64 = [[MFUserActivityBrowseMailboxRoute alloc] initWithMailboxPickerController:v16];
  v62 = [(MFUserActivityRouter *)self handoffComposeController];
  if (!v8)
  {
    v8 = [v7 objectForKeyedSubscript:MSMailActivityHandoffTypeKey];
  }

  v17 = [v7 objectForKeyedSubscript:MSMailActivityHandoffDebugKeySimulateFailureBool];
  v18 = [v17 BOOLValue];

  if (!v18)
  {
    v61 = v16;
    v21 = [MSMailActivityHandoffTypeSearch isEqualToString:v8];
    v22 = [CSQueryContinuationActionType isEqualToString:v8];
    v63 = objc_alloc_init(NSMutableDictionary);
    [v63 setObject:v8 forKeyedSubscript:@"ceActivityType"];
    if ((v22 | v21))
    {
      v23 = [v6 userInfo];
      if (v21)
      {
        [v63 setObject:&off_1006744F8 forKeyedSubscript:@"ceActivityIsHandoff"];
      }

      else if (v22)
      {
        [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
        v27 = [v23 objectForKeyedSubscript:CSSearchQueryString];
        if (v27)
        {
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1002349DC;
          v74[3] = &unk_100656290;
          v80 = 0;
          v75 = v64;
          v76 = v7;
          v81 = v22;
          v77 = v15;
          v78 = self;
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

    if ([CSSearchableItemActionType isEqualToString:v8])
    {
      [v63 setObject:&off_100674528 forKeyedSubscript:@"ceActivityIsHandoff"];
      v59 = v9;
      v24 = [v7 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
      v25 = v63;
      v57 = [v7 objectForKeyedSubscript:@"kCSItemBundle"];
      if ([v57 isEqualToString:@"com.apple.email.SearchIndexer"])
      {
        v26 = [(MFUserActivityRouter *)self messageRepository];
        [v26 messageForSearchIndexerIdentifier:v24];
      }

      else
      {
        v26 = [(MFUserActivityRouter *)self messageRepository];
        [v26 messageForSearchableItemIdentifier:v24];
      }
      v33 = ;

      v34 = [v33 resultWithTimeout:0 error:5.0];
      if (v34 && (v25 = v63, ([v15 displayMessage:v34 fromUserActivityRouter:self] & 1) != 0))
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

      v9 = v59;
      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (([MSMailActivityHandoffTypeDisplayMessage isEqualToString:v8] & 1) != 0 || objc_msgSend(MSMailActivityHandoffTypeDisplayMessageAttachment, "isEqualToString:", v8))
    {
      v30 = [v7 objectForKeyedSubscript:MSMailActivityHandoffDisplayMessageKeyURL];
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
        v73 = self;
        v32 = v31;
        [v15 openURL:v32 fromUserActivityRouter:self completionHandler:v70];

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
    if ([MSMailActivityHandoffTypeBrowseMailbox isEqualToString:v8])
    {
      [(MFUserActivityBrowseMailboxRoute *)v64 browseMailboxForActivityPayload:v7 activityType:v37 scrollToMessage:1];
      v29 = v20 = 0;
      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if ([MSMailActivityHandoffTypeComposeSansStreams isEqualToString:v8])
    {
      [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
      v38 = [v7 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageData];
      if (v38)
      {
        v39 = [[_MFMailCompositionContext alloc] initWithComposeType:2 RFC822Data:v38];
        if (v62)
        {
          v40 = [v62 _mailComposeController];
          [v40 setCompositionContext:v39];
        }

        else
        {
          [v15 showComposeWithContext:v39 fromActivityRouter:self];
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

    if ([MSMailActivityHandoffTypeComposeWithStreams isEqualToString:v8])
    {
      [v63 setObject:&off_100674510 forKeyedSubscript:@"ceActivityIsHandoff"];
      v41 = MSMailActivityHandoffDebugKeyComposeDataPath;
      v42 = [v7 objectForKeyedSubscript:MSMailActivityHandoffDebugKeyComposeDataPath];

      v43 = +[NSUserDefaults em_userDefaults];
      v44 = [v43 BOOLForKey:@"ComposeActivityOverLAN"];

      if (v62)
      {
        if (v42)
        {
          v30 = [v7 objectForKeyedSubscript:v41];
          v45 = +[NSFileManager defaultManager];
          v46 = [v45 fileExistsAtPath:v30];

          if (v46)
          {
            v58 = v30;
            v60 = v9;
            v47 = +[NSMutableData data];
            v48 = [NSData dataWithContentsOfFile:v58];
            if ([v48 length])
            {
              v69 = bswap32([v48 length]);
              [v47 appendBytes:&v69 length:4];
              [v47 appendData:v48];
              v49 = [NSInputStream inputStreamWithData:v47];
              v50 = +[NSOutputStream outputStreamToMemory];
              v51 = [v62 _mailComposeController];
              [v51 handleLargeMessageComposeHandoffWithInputStream:v49 outputStream:v50 error:0];

              v29 = 0;
            }

            else
            {
              v29 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Could not read draft data from file: %@", v58];
            }

            v30 = v58;
            v9 = v60;
            goto LABEL_32;
          }

          v35 = [NSError mailHandoffErrorWithActivityContextInfo:v63 errorFormat:@"Compose data file for debugging does not exist: %@.", v30];
          goto LABEL_31;
        }

        if (v44)
        {
          v53 = [v7 objectForKeyedSubscript:MFLANHandoffHostnameKey];
          v54 = [v7 objectForKeyedSubscript:MFLANHandoffPortNumberKey];
          v55 = objc_alloc_init(MFLANHandoffContext);
          [v55 setHost:v53];
          [v55 setPort:{objc_msgSend(v54, "unsignedShortValue")}];
          LANHandoffAgent = self->_LANHandoffAgent;
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100234BA8;
          v67[3] = &unk_1006562B8;
          v68 = v62;
          [(MFLANHandoffAgent *)LANHandoffAgent connectToServerWithContext:v55 completion:v67];
        }

        else
        {
          kdebug_trace();
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100234C4C;
          v65[3] = &unk_1006562E0;
          v66 = v62;
          [v6 getContinuationStreamsWithCompletionHandler:v65];
        }
      }
    }

    else if ([MSMailActivityHandoffTypeSendMail isEqualToString:v8])
    {
      v52 = [[_MFMailCompositionContext alloc] initWithHandoffActivityPayload:v7];
      [v52 setShowContentImmediately:1];
      [v52 setCaretPosition:0x7FFFFFFFFFFFFFFFLL];
      [v52 setShowKeyboardImmediately:1];
      [v15 showComposeWithContext:v52 fromActivityRouter:self];
    }

    v20 = 0;
    v29 = 0;
    goto LABEL_35;
  }

  v19 = +[NSError mailHandoffSimulatedError];
  [v15 simulateUserActivityFailureWithType:v8 error:v19 fromActivityRouter:self];

  v20 = 0;
LABEL_36:

  return v20;
}

- (void)willHandoffUserActivityWithType:(id)a3
{
  v14 = a3;
  v4 = [(MFUserActivityRouter *)self delegate];
  v5 = [v4 mailboxPickerControllerForActivityRouter:self];
  if ([MSMailActivityHandoffTypeBrowseMailbox isEqualToString:v14])
  {
    [v5 dismissAndUnfocus];
  }

  else if (([MSMailActivityHandoffTypeComposeSansStreams isEqualToString:v14] & 1) != 0 || objc_msgSend(MSMailActivityHandoffTypeComposeWithStreams, "isEqualToString:", v14))
  {
    v6 = [[_MFMailCompositionContext alloc] initWithComposeType:9];
    v7 = [v4 composeControllerForCompositionContext:v6 forActivityRouter:self];
    [(MFUserActivityRouter *)self setHandoffComposeController:v7];

    v8 = [(MFUserActivityRouter *)self handoffComposeController];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"LOADING" value:&stru_100662A88 table:@"Main"];
    [v8 setInitialTitle:v10];

    v11 = [(MFUserActivityRouter *)self handoffComposeController];
    v12 = [v11 _mailComposeController];
    [v12 setProgressUIVisible:1 animated:0];

    v13 = [(MFUserActivityRouter *)self handoffComposeController];
    [v4 presentComposeController:v13 forUserActivityRouter:self];
  }
}

- (void)handoffUserActivityFailedWithType:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Hand-Off _handleHandoffError: %{public}@", &v11, 0xCu);
  }

  if ([v7 mf_isSpotlightHandoffError])
  {
    [(MFUserActivityRouter *)self recoverUIAfterHandoffFailureWithType:v6];
    v10 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Hand-Off Will not present alert since it's a spotlight continuation error.", &v11, 2u);
    }
  }

  else
  {
    [(MFUserActivityRouter *)self presentAlertForHandoffError:v7];
  }
}

- (void)presentAlertForHandoffError:(id)a3
{
  v4 = a3;
  v5 = [(MFUserActivityRouter *)self delegate];
  v6 = [v5 alertOverlayControllerForActivityRouter:self];

  v7 = [MailHandoffAlertControllerFactory mailAlertControllerForHandoffError:v4 acknowledgmentObserver:self];
  if (v6 && v7)
  {
    v8 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 ef_publicDescription];
      v11 = 138412546;
      v12 = v6;
      v13 = 2114;
      v14 = v9;
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

- (void)recoverUIAfterHandoffFailureWithType:(id)a3
{
  v6 = a3;
  v4 = [(MFUserActivityRouter *)self delegate];
  if (([v6 isEqualToString:MSMailActivityHandoffTypeComposeSansStreams] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", MSMailActivityHandoffTypeComposeWithStreams))
  {
    v5 = [(MFUserActivityRouter *)self handoffComposeController];
    [(MFUserActivityRouter *)self setHandoffComposeController:0];
    if (v5)
    {
      [v4 dismissComposeController:v5 forUserActivityRouter:self];
    }
  }
}

- (void)userAcknowledgedHandoffError:(id)a3
{
  v4 = [a3 mf_mailHandoffActivityType];
  [(MFUserActivityRouter *)self recoverUIAfterHandoffFailureWithType:?];
}

- (void)routeUserActivity:(id)a3
{
  v8 = a3;
  v4 = [v8 _syRelatedUniqueIdentifier];
  if (v4 && (v5 = _os_feature_enabled_impl(), v4, v5))
  {
    [(MFUserActivityRouter *)self returnToSenderUserActivity:v8];
    v6 = v8;
  }

  else
  {
    v7 = [v8 userInfo];
    [(MFUserActivityRouter *)self handoffUserActivity:v8 withPayload:v7];

    v6 = v8;
  }
}

- (void)routeWillContinueUserActivityWithType:(id)a3
{
  v4 = a3;
  if ([MSMailReturnToSenderActivityType isEqualToString:?] && _os_feature_enabled_impl())
  {
    [(MFUserActivityRouter *)self willReturnToSenderActivityWithType:v4];
  }

  else
  {
    [(MFUserActivityRouter *)self willHandoffUserActivityWithType:v4];
  }
}

- (void)routeUserActivityFailedWithType:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([MSMailReturnToSenderActivityType isEqualToString:v7] && _os_feature_enabled_impl())
  {
    [(MFUserActivityRouter *)self returnToSenderUserActivityFailedWithType:v7 error:v6];
  }

  else
  {
    [(MFUserActivityRouter *)self handoffUserActivityFailedWithType:v7 error:v6];
  }
}

- (void)returnToSenderUserActivity:(id)a3
{
  v4 = a3;
  v5 = [(MFUserActivityRouter *)self delegate];
  v6 = [v4 _syRelatedUniqueIdentifier];
  v7 = [(MFUserActivityRouter *)self messageRepository];
  v8 = [v7 messageForSearchableItemIdentifier:v6];

  v9 = [v8 resultWithTimeout:0 error:5.0];
  if (v9)
  {
    v10 = +[MFUserActivityRouter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 ef_publicDescription];
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ReturnToSender success: found a valid message %{public}@", buf, 0xCu);
    }

    v12 = [v4 _syDocumentProvider];

    if (v12)
    {
      v13 = [v4 _syDocumentProvider];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10023594C;
      v14[3] = &unk_100656308;
      v15 = v9;
      v16 = self;
      v17 = v6;
      v18 = v5;
      [v13 loadDocumentWithHandler:v14];
    }

    else
    {
      [v5 displayMessage:v9 fromUserActivityRouter:self];
    }
  }

  else
  {
    [(MFUserActivityRouter *)self returnToSenderErrorHandling:v6 urlError:0];
  }
}

- (void)returnToSenderErrorHandling:(id)a3 urlError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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

- (void)willReturnToSenderActivityWithType:(id)a3
{
  v3 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ReturnToSender will return to sender activity", v4, 2u);
  }
}

- (void)returnToSenderUserActivityFailedWithType:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MFUserActivityRouter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 ef_publicDescription];
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ReturnToSender return to sender user activity failed with type %@ and error=%{public}@", &v10, 0x16u);
  }

  [(MFUserActivityRouter *)self presentAlertForReturnToSenderError];
}

- (void)presentAlertForReturnToSenderError
{
  v3 = [(MFUserActivityRouter *)self delegate];
  v12 = [v3 alertOverlayControllerForActivityRouter:self];

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