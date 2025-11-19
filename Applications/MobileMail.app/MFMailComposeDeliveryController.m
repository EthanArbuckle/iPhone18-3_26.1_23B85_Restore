@interface MFMailComposeDeliveryController
+ (OS_os_log)log;
- (BOOL)deliverMessage;
- (MFMailComposeDeliveryController)initWithComposeController:(id)a3 backupCompletionHandler:(id)a4;
- (MailComposeDeliveryControllerDelegate)delegate;
- (void)_deliverMessage:(id)a3;
- (void)dealloc;
- (void)deliverMessage:(id)a3;
- (void)notifyUserDeliverySucceeded:(id)a3;
- (void)setPercentDone:(double)a3;
@end

@implementation MFMailComposeDeliveryController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA760;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD560 != -1)
  {
    dispatch_once(&qword_1006DD560, block);
  }

  v2 = qword_1006DD558;

  return v2;
}

- (MFMailComposeDeliveryController)initWithComposeController:(id)a3 backupCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 needsDelivery])
  {
    v36.receiver = self;
    v36.super_class = MFMailComposeDeliveryController;
    v8 = [(MFMailComposeDeliveryController *)&v36 init];
    if (v8)
    {
      if ([v6 isSavingAsDraft])
      {
        v9 = [v6 _messageForDraft];
        futureDraft = v8->_futureDraft;
        v8->_futureDraft = v9;
      }

      else
      {
        v12 = [v6 delivery];
        delivery = v8->_delivery;
        v8->_delivery = v12;

        [(MFOutgoingMessageDelivery *)v8->_delivery setDelegate:v8];
      }

      v8->_isHideMyEmailMessage = [v6 isHideMyEmailMessage];
      v14 = [v6 sendingEmailAddress];
      sendingAddress = v8->_sendingAddress;
      v8->_sendingAddress = v14;

      v16 = [v6 lastDraftMessage];
      draftMessage = v8->_draftMessage;
      v8->_draftMessage = v16;

      v18 = [v6 documentID];
      draftDocumentID = v8->_draftDocumentID;
      v8->_draftDocumentID = v18;

      v20 = [v6 compositionContext];
      v21 = [v20 legacyMessage];

      v22 = [v6 compositionContext];
      if (v21)
      {
        v23 = [v22 legacyMessage];
        originalMessage = v8->_originalMessage;
        v8->_originalMessage = v23;
      }

      else
      {
        originalMessage = [v22 originalMessage];
        v25 = +[MailAccount outboxMailboxUid];
        v26 = [MFComposeMailMessage legacyMessageWithMessage:originalMessage mailboxUid:v25];
        v27 = v8->_originalMessage;
        v8->_originalMessage = v26;
      }

      v8->_composeType = [v6 compositionType];
      v28 = objc_retainBlock(v7);
      backupCompletionHandler = v8->_backupCompletionHandler;
      v8->_backupCompletionHandler = v28;

      v30 = [v6 compositionContext];
      v31 = [v30 sendLaterDate];
      sendLaterDate = v8->_sendLaterDate;
      v8->_sendLaterDate = v31;

      v33 = [v6 autosaveIdentifier];
      autosaveIdentifier = v8->_autosaveIdentifier;
      v8->_autosaveIdentifier = v33;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(MFOutgoingMessageDelivery *)self->_delivery setDelegate:0];
  [(EFFuture *)self->_futureDraft cancel];
  [(MFOutgoingMessage *)self->_outgoingMessage setMessageBody:0];
  v3.receiver = self;
  v3.super_class = MFMailComposeDeliveryController;
  [(MFMailComposeDeliveryController *)&v3 dealloc];
}

- (BOOL)deliverMessage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DAC18;
  v5[3] = &unk_1006544D8;
  v6 = dispatch_semaphore_create(0);
  v7 = &v8;
  v3 = v6;
  [(MFMailComposeDeliveryController *)self deliverMessage:v5];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)deliverMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (atomic_exchange(&self->_isDeliveringMessage._Value, 1u))
  {
    (*(v4 + 2))(v4, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001DAD48;
    v6[3] = &unk_100654500;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    [(MFMailComposeDeliveryController *)self _deliverMessage:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_deliverMessage:(id)a3
{
  v67 = a3;
  if (pthread_main_np())
  {
    v59 = +[NSAssertionHandler currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"MFMailComposeDeliveryController.m" lineNumber:152 description:@"Current thread is main"];
  }

  v5 = +[MFActivityMonitor currentMonitor];
  v6 = +[MailAccount outboxMailboxUid];
  [v5 setMailbox:v6];

  v70 = [(MFMailComposeDeliveryController *)self delegate];
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 daemonInterface];
  v9 = [v8 outgoingMessageRepository];

  v69 = v9;
  v10 = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
  v11 = [v10 objectForKeyedSubscript:MFSecureMIMECompositionSpecificationRecipientCertificates];
  v12 = [v11 allKeys];

  v65 = v12;
  if ([v12 count] && _os_feature_enabled_impl() && +[EMInternalPreferences preferenceEnabled:](EMInternalPreferences, "preferenceEnabled:", 24))
  {
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 daemonInterface];
    v15 = [v14 messageRepository];

    v16 = [v15 metadataForAddresses:v12];
    v95 = 0;
    v17 = [v16 result:&v95];
    v18 = v95;
    if ([v17 count])
    {
      v19 = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
      v20 = [v19 mutableCopy];

      [v20 setObject:v17 forKeyedSubscript:MFSecureMIMECompositionSpecificationAddressMetadata];
      [(MFOutgoingMessageDelivery *)self->_delivery setCompositionSpecification:v20];
    }

    else
    {
      v20 = +[MFMailComposeDeliveryController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v18 ef_publicDescription];
        sub_10048BA48(v21, v100, v20);
      }
    }
  }

  v22 = [MailAccount accountContainingEmailAddress:self->_sendingAddress];
  v68 = [v22 mailboxUidOfType:5 createIfNeeded:1];
  v23 = [EMMailboxObjectID alloc];
  v24 = [v68 URL];
  v71 = [v23 initWithURL:v24];

  v25 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v71;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Delivering message from draft: %@", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1001DBC54;
  v92[3] = &unk_10064C838;
  objc_copyWeak(&v93, &location);
  v66 = objc_retainBlock(v92);
  if (self->_delivery)
  {
    if (objc_opt_respondsToSelector())
    {
      [v70 mailComposeDeliveryControllerWillAttemptToSend:self];
    }

    if (self->_isHideMyEmailMessage)
    {
      v26 = +[MFMailComposeDeliveryController log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(MFOutgoingMessageDelivery *)self->_delivery originalMessageObjectID];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not updating CoreRecents library as message:<%{public}@> is HME message.", &buf, 0xCu);
      }
    }

    else
    {
      v96 = 0;
      v97 = &v96;
      v98 = 0x2050000000;
      v38 = qword_1006DD568;
      v99 = qword_1006DD568;
      if (!qword_1006DD568)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v102 = sub_1001DCBE4;
        v103 = &unk_100650760;
        v104 = &v96;
        sub_1001DCBE4(&buf);
        v38 = v97[3];
      }

      v39 = v38;
      _Block_object_dispose(&v96, 8);
      v26 = [v38 defaultInstance];
      v40 = [(MFOutgoingMessageDelivery *)self->_delivery originalHeaders];
      [v26 recordContactEventsForHeaders:v40 recentsDomain:kMFMobileMailBundleIdentifier];
    }

    v41 = [EDConversationPersistence conversationNotificationLevelForConversationFlags:[(MFOutgoingMessageDelivery *)self->_delivery conversationFlags]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v64 = [(MFOutgoingMessageDelivery *)self->_delivery message];
    v63 = [(MFOutgoingMessageDelivery *)self->_delivery originalMessageObjectID];
    v60 = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
    v43 = [v60 objectForKeyedSubscript:MFSecureMIMECompositionSpecificationShouldEncrypt];
    v61 = v43;
    v44 = [v60 objectForKeyedSubscript:MFSecureMIMECompositionSpecificationShouldSign];
    v45 = v44;
    v62 = v44;
    if (v43)
    {
      v46 = [v43 BOOLValue];
      if (v45)
      {
LABEL_32:
        v47 = [v45 BOOLValue];
LABEL_35:
        v48 = [EMOutgoingMessage alloc];
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1001DBCE8;
        v85[3] = &unk_100654528;
        v33 = v64;
        v86 = v33;
        v87 = self;
        v35 = v63;
        v90 = v47;
        v91 = v46;
        v88 = v35;
        v89 = v41;
        v49 = [v48 initWithBuilder:v85];
        if (self->_sendLaterDate)
        {
          v50 = +[MFMailComposeDeliveryController log];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v71;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Draft message: %@ will be sent on a send later date", &buf, 0xCu);
          }

          v51 = [v69 saveSendLaterMessage:v49 sendLaterDate:self->_sendLaterDate];
          v52 = +[EFScheduler mainThreadScheduler];
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_1001DBDB4;
          v81[3] = &unk_100654550;
          v82 = v69;
          v83[0] = v71;
          v83[1] = self;
          v53 = v67;
          v84 = v53;
          [v51 onScheduler:v52 addSuccessBlock:v81];

          v79[0] = _NSConcreteStackBlock;
          v79[1] = 3221225472;
          v79[2] = sub_1001DBE90;
          v79[3] = &unk_10064C478;
          v80 = v53;
          [v51 addFailureBlock:v79];
          v54 = &v82;
          v55 = v83;
          v56 = &v84;
          v57 = &v80;
        }

        else
        {
          v51 = [v69 deliverMessage:v49 usingMailDrop:isKindOfClass & 1 isCancelable:(isKindOfClass & 1) == 0];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_1001DBF70;
          v72[3] = &unk_1006545C0;
          v73 = v71;
          v74[0] = v69;
          v74[1] = self;
          v75 = v49;
          v76 = v70;
          v77 = v66;
          v78 = v67;
          [v51 addSuccessBlock:v72];

          v54 = &v73;
          v55 = v74;
          v56 = &v75;
          v57 = &v76;
        }

LABEL_41:
        goto LABEL_42;
      }
    }

    else
    {
      v46 = 0;
      if (v44)
      {
        goto LABEL_32;
      }
    }

    v47 = 0;
    goto LABEL_35;
  }

  v28 = [(EFFuture *)self->_futureDraft result:0];
  outgoingMessage = self->_outgoingMessage;
  self->_outgoingMessage = v28;

  if (v28)
  {
    v30 = +[MFMailComposeDeliveryController log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v71;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating future for outgoingMessage: %@", &buf, 0xCu);
    }

    v31 = [EMOutgoingMessage alloc];
    v32 = [(MFOutgoingMessage *)self->_outgoingMessage messageData];
    v33 = [v31 initWithMessageData:v32];

    v34 = [(EMMessage *)self->_draftMessage objectID];
    v35 = [v69 saveDraftMessage:v33 mailboxObjectID:v71 previousDraftObjectID:v34];

    v36 = [v35 result:0];
    if (objc_opt_respondsToSelector())
    {
      [v70 mailComposeDeliveryControllerDidAttemptToSaveDraft:self account:v22 result:1];
    }

    backupCompletionHandler = self->_backupCompletionHandler;
    if (backupCompletionHandler)
    {
      backupCompletionHandler[2](backupCompletionHandler, 1);
    }

    (v66[2])();
    (*(v67 + 2))(v67, 1);
    goto LABEL_41;
  }

  v58 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v71;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to deliver draft message: %@", &buf, 0xCu);
  }

  (*(v67 + 2))(v67, 0);
LABEL_42:

  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);
}

- (void)setPercentDone:(double)a3
{
  v6 = +[MFActivityMonitor currentMonitor];
  v4 = MFLookupLocalizedString();
  v5 = [NSString stringWithFormat:v4, 10];
  [v6 setStatusMessage:v5 percentDone:a3];
}

- (void)notifyUserDeliverySucceeded:(id)a3
{
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 reset];
}

- (MailComposeDeliveryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end