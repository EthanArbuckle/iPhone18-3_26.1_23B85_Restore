@interface MFMailComposeDeliveryController
+ (OS_os_log)log;
- (BOOL)deliverMessage;
- (MFMailComposeDeliveryController)initWithComposeController:(id)controller backupCompletionHandler:(id)handler;
- (MailComposeDeliveryControllerDelegate)delegate;
- (void)_deliverMessage:(id)message;
- (void)dealloc;
- (void)deliverMessage:(id)message;
- (void)notifyUserDeliverySucceeded:(id)succeeded;
- (void)setPercentDone:(double)done;
@end

@implementation MFMailComposeDeliveryController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA760;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD560 != -1)
  {
    dispatch_once(&qword_1006DD560, block);
  }

  v2 = qword_1006DD558;

  return v2;
}

- (MFMailComposeDeliveryController)initWithComposeController:(id)controller backupCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if ([controllerCopy needsDelivery])
  {
    v36.receiver = self;
    v36.super_class = MFMailComposeDeliveryController;
    v8 = [(MFMailComposeDeliveryController *)&v36 init];
    if (v8)
    {
      if ([controllerCopy isSavingAsDraft])
      {
        _messageForDraft = [controllerCopy _messageForDraft];
        futureDraft = v8->_futureDraft;
        v8->_futureDraft = _messageForDraft;
      }

      else
      {
        delivery = [controllerCopy delivery];
        delivery = v8->_delivery;
        v8->_delivery = delivery;

        [(MFOutgoingMessageDelivery *)v8->_delivery setDelegate:v8];
      }

      v8->_isHideMyEmailMessage = [controllerCopy isHideMyEmailMessage];
      sendingEmailAddress = [controllerCopy sendingEmailAddress];
      sendingAddress = v8->_sendingAddress;
      v8->_sendingAddress = sendingEmailAddress;

      lastDraftMessage = [controllerCopy lastDraftMessage];
      draftMessage = v8->_draftMessage;
      v8->_draftMessage = lastDraftMessage;

      documentID = [controllerCopy documentID];
      draftDocumentID = v8->_draftDocumentID;
      v8->_draftDocumentID = documentID;

      compositionContext = [controllerCopy compositionContext];
      legacyMessage = [compositionContext legacyMessage];

      compositionContext2 = [controllerCopy compositionContext];
      if (legacyMessage)
      {
        legacyMessage2 = [compositionContext2 legacyMessage];
        originalMessage = v8->_originalMessage;
        v8->_originalMessage = legacyMessage2;
      }

      else
      {
        originalMessage = [compositionContext2 originalMessage];
        v25 = +[MailAccount outboxMailboxUid];
        v26 = [MFComposeMailMessage legacyMessageWithMessage:originalMessage mailboxUid:v25];
        v27 = v8->_originalMessage;
        v8->_originalMessage = v26;
      }

      v8->_composeType = [controllerCopy compositionType];
      v28 = objc_retainBlock(handlerCopy);
      backupCompletionHandler = v8->_backupCompletionHandler;
      v8->_backupCompletionHandler = v28;

      compositionContext3 = [controllerCopy compositionContext];
      sendLaterDate = [compositionContext3 sendLaterDate];
      sendLaterDate = v8->_sendLaterDate;
      v8->_sendLaterDate = sendLaterDate;

      autosaveIdentifier = [controllerCopy autosaveIdentifier];
      autosaveIdentifier = v8->_autosaveIdentifier;
      v8->_autosaveIdentifier = autosaveIdentifier;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)deliverMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (atomic_exchange(&self->_isDeliveringMessage._Value, 1u))
  {
    (*(messageCopy + 2))(messageCopy, 0);
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

- (void)_deliverMessage:(id)message
{
  messageCopy = message;
  if (pthread_main_np())
  {
    v59 = +[NSAssertionHandler currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"MFMailComposeDeliveryController.m" lineNumber:152 description:@"Current thread is main"];
  }

  v5 = +[MFActivityMonitor currentMonitor];
  v6 = +[MailAccount outboxMailboxUid];
  [v5 setMailbox:v6];

  delegate = [(MFMailComposeDeliveryController *)self delegate];
  v7 = +[UIApplication sharedApplication];
  daemonInterface = [v7 daemonInterface];
  outgoingMessageRepository = [daemonInterface outgoingMessageRepository];

  v69 = outgoingMessageRepository;
  compositionSpecification = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
  v11 = [compositionSpecification objectForKeyedSubscript:MFSecureMIMECompositionSpecificationRecipientCertificates];
  allKeys = [v11 allKeys];

  v65 = allKeys;
  if ([allKeys count] && _os_feature_enabled_impl() && +[EMInternalPreferences preferenceEnabled:](EMInternalPreferences, "preferenceEnabled:", 24))
  {
    v13 = +[UIApplication sharedApplication];
    daemonInterface2 = [v13 daemonInterface];
    messageRepository = [daemonInterface2 messageRepository];

    v16 = [messageRepository metadataForAddresses:allKeys];
    v95 = 0;
    v17 = [v16 result:&v95];
    v18 = v95;
    if ([v17 count])
    {
      compositionSpecification2 = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
      v20 = [compositionSpecification2 mutableCopy];

      [v20 setObject:v17 forKeyedSubscript:MFSecureMIMECompositionSpecificationAddressMetadata];
      [(MFOutgoingMessageDelivery *)self->_delivery setCompositionSpecification:v20];
    }

    else
    {
      v20 = +[MFMailComposeDeliveryController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v18 ef_publicDescription];
        sub_10048BA48(ef_publicDescription, v100, v20);
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
      [delegate mailComposeDeliveryControllerWillAttemptToSend:self];
    }

    if (self->_isHideMyEmailMessage)
    {
      defaultInstance = +[MFMailComposeDeliveryController log];
      if (os_log_type_enabled(defaultInstance, OS_LOG_TYPE_DEFAULT))
      {
        originalMessageObjectID = [(MFOutgoingMessageDelivery *)self->_delivery originalMessageObjectID];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = originalMessageObjectID;
        _os_log_impl(&_mh_execute_header, defaultInstance, OS_LOG_TYPE_DEFAULT, "Not updating CoreRecents library as message:<%{public}@> is HME message.", &buf, 0xCu);
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
      defaultInstance = [v38 defaultInstance];
      originalHeaders = [(MFOutgoingMessageDelivery *)self->_delivery originalHeaders];
      [defaultInstance recordContactEventsForHeaders:originalHeaders recentsDomain:kMFMobileMailBundleIdentifier];
    }

    v41 = [EDConversationPersistence conversationNotificationLevelForConversationFlags:[(MFOutgoingMessageDelivery *)self->_delivery conversationFlags]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    message = [(MFOutgoingMessageDelivery *)self->_delivery message];
    originalMessageObjectID2 = [(MFOutgoingMessageDelivery *)self->_delivery originalMessageObjectID];
    compositionSpecification3 = [(MFOutgoingMessageDelivery *)self->_delivery compositionSpecification];
    v43 = [compositionSpecification3 objectForKeyedSubscript:MFSecureMIMECompositionSpecificationShouldEncrypt];
    v61 = v43;
    v44 = [compositionSpecification3 objectForKeyedSubscript:MFSecureMIMECompositionSpecificationShouldSign];
    v45 = v44;
    v62 = v44;
    if (v43)
    {
      bOOLValue = [v43 BOOLValue];
      if (v45)
      {
LABEL_32:
        bOOLValue2 = [v45 BOOLValue];
LABEL_35:
        v48 = [EMOutgoingMessage alloc];
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1001DBCE8;
        v85[3] = &unk_100654528;
        v33 = message;
        v86 = v33;
        selfCopy = self;
        v35 = originalMessageObjectID2;
        v90 = bOOLValue2;
        v91 = bOOLValue;
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
          v53 = messageCopy;
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
          v76 = delegate;
          v77 = v66;
          v78 = messageCopy;
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
      bOOLValue = 0;
      if (v44)
      {
        goto LABEL_32;
      }
    }

    bOOLValue2 = 0;
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
    messageData = [(MFOutgoingMessage *)self->_outgoingMessage messageData];
    v33 = [v31 initWithMessageData:messageData];

    objectID = [(EMMessage *)self->_draftMessage objectID];
    v35 = [v69 saveDraftMessage:v33 mailboxObjectID:v71 previousDraftObjectID:objectID];

    v36 = [v35 result:0];
    if (objc_opt_respondsToSelector())
    {
      [delegate mailComposeDeliveryControllerDidAttemptToSaveDraft:self account:v22 result:1];
    }

    backupCompletionHandler = self->_backupCompletionHandler;
    if (backupCompletionHandler)
    {
      backupCompletionHandler[2](backupCompletionHandler, 1);
    }

    (v66[2])();
    (*(messageCopy + 2))(messageCopy, 1);
    goto LABEL_41;
  }

  v58 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v71;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to deliver draft message: %@", &buf, 0xCu);
  }

  (*(messageCopy + 2))(messageCopy, 0);
LABEL_42:

  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);
}

- (void)setPercentDone:(double)done
{
  v6 = +[MFActivityMonitor currentMonitor];
  v4 = MFLookupLocalizedString();
  v5 = [NSString stringWithFormat:v4, 10];
  [v6 setStatusMessage:v5 percentDone:done];
}

- (void)notifyUserDeliverySucceeded:(id)succeeded
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