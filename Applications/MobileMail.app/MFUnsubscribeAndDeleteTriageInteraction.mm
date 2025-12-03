@interface MFUnsubscribeAndDeleteTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor icloudMailCleanupService:(id)service;
+ (id)log;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)unsubscribeAlertButtonText;
- (id)unsubscribeAlertTitle;
- (id)unsubscribeMessageAlertFormat;
- (void)_dispatchInteractionWithCompletion:(id)completion;
- (void)_showErrorAlert:(id)alert;
- (void)updateBlockRules;
@end

@implementation MFUnsubscribeAndDeleteTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022F550;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD718 != -1)
  {
    dispatch_once(&qword_1006DD718, block);
  }

  v2 = qword_1006DD710;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor icloudMailCleanupService:(id)service
{
  selectionCopy = selection;
  serviceCopy = service;
  v49.receiver = self;
  v49.super_class = &OBJC_METACLASS___MFUnsubscribeAndDeleteTriageInteraction;
  v44 = objc_msgSendSuper2(&v49, "interactionWithMessageListItemSelection:origin:actor:icloudMailCleanupService:", selectionCopy, origin, actor, serviceCopy);
  messageListItems = [selectionCopy messageListItems];
  v13 = messageListItems;
  if (messageListItems)
  {
    em_messageListItemTotalCount = [messageListItems em_messageListItemTotalCount];
    v15 = 0;
    if (serviceCopy && em_messageListItemTotalCount == 1)
    {
      firstObject = [v13 firstObject];
      senderList = [firstObject senderList];

      if (senderList && [senderList count] == 1 && (objc_msgSend(senderList, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "emailAddressValue"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v17, !v19))
      {
        firstObject2 = [senderList firstObject];
        emailAddressValue = [firstObject2 emailAddressValue];
        simpleAddress = [emailAddressValue simpleAddress];
        v23 = simpleAddress;
        if (simpleAddress)
        {
          stringValue = simpleAddress;
        }

        else
        {
          stringValue = [firstObject2 stringValue];
        }

        v30 = stringValue;

        [v44 setSender:v30];
        sender = [v44 sender];
        [v44 setIsSenderAlreadyBlocked:{objc_msgSend(serviceCopy, "isSenderEmailAddressBlocked:", sender)}];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        firstObject3 = [v13 firstObject];
        mailboxes = [firstObject3 mailboxes];

        v34 = [mailboxes countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v34)
        {
          v35 = *v46;
          while (2)
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(mailboxes);
              }

              v37 = *(*(&v45 + 1) + 8 * i);
              account = [v37 account];
              supportsiCloudCleanup = [account supportsiCloudCleanup];

              if (supportsiCloudCleanup)
              {
                account2 = [v37 account];
                identityEmailAddress = [account2 identityEmailAddress];
                stringValue2 = [identityEmailAddress stringValue];
                [v44 setIdentityEmailAddress:stringValue2];

                goto LABEL_28;
              }
            }

            v34 = [mailboxes countByEnumeratingWithState:&v45 objects:v50 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

LABEL_28:

        v15 = v44;
      }

      else
      {
        v25 = +[MFUnsubscribeAndDeleteTriageInteraction log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          firstObject4 = [senderList firstObject];
          stringValue3 = [firstObject4 stringValue];
          v28 = [EFPrivacy fullyOrPartiallyRedactedStringForString:stringValue3];
          *buf = 138412290;
          v52 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Invalid email address for sender: %@", buf, 0xCu);
        }

        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)title
{
  [(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked];
  v2 = _EFLocalizedStringFromTable();

  return v2;
}

- (id)shortTitle
{
  [(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked];
  v2 = _EFLocalizedStringFromTable();

  return v2;
}

- (id)unsubscribeMessageAlertFormat
{
  if ([(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked]|| [(MFUnsubscribeAndDeleteTriageInteraction *)self isPost]|| ![(MFUnsubscribeAndDeleteTriageInteraction *)self isMailto])
  {
    v5 = _EFLocalizedStringFromTable();
  }

  else
  {
    v3 = _EFLocalizedStringFromTable();
    identityEmailAddress = [(MFUnsubscribeAndDeleteTriageInteraction *)self identityEmailAddress];
    v5 = [NSString stringWithFormat:v3, identityEmailAddress];
  }

  return v5;
}

- (id)unsubscribeAlertTitle
{
  if (![(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked]&& ![(MFUnsubscribeAndDeleteTriageInteraction *)self isMailto])
  {
    [(MFUnsubscribeAndDeleteTriageInteraction *)self isPost];
  }

  v3 = _EFLocalizedStringFromTable();

  return v3;
}

- (id)unsubscribeAlertButtonText
{
  if (![(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked]&& ![(MFUnsubscribeAndDeleteTriageInteraction *)self isMailto])
  {
    [(MFUnsubscribeAndDeleteTriageInteraction *)self isPost];
  }

  v3 = _EFLocalizedStringFromTable();

  return v3;
}

- (void)_showErrorAlert:(id)alert
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022FE8C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)updateBlockRules
{
  v3 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v3 getiCloudMailCleanupService];

  if ([(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked])
  {
    sender = [(MFUnsubscribeTriageInteraction *)self sender];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100230268;
    v8[3] = &unk_10064D028;
    v8[4] = self;
    [getiCloudMailCleanupService unblockSenderWithSenderEmailAddress:sender completionHandler:v8];
  }

  else
  {
    sender = [(MFTriageInteraction *)self delegate];
    if (sender && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [sender dismissBannerForUnsubscribeAndDeleteTriageInteraction:self];
    }

    sender2 = [(MFUnsubscribeTriageInteraction *)self sender];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10023034C;
    v7[3] = &unk_10064D028;
    v7[4] = self;
    [getiCloudMailCleanupService blockSenderWithSenderEmailAddress:sender2 entryPoint:@"/mail/message_detail/footer/context_menu" completionHandler:v7];
  }
}

- (void)_dispatchInteractionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5.receiver = self;
  v5.super_class = MFUnsubscribeAndDeleteTriageInteraction;
  [(MFTriageInteraction *)&v5 _dispatchInteractionWithCompletion:completionCopy];
  [(MFUnsubscribeAndDeleteTriageInteraction *)self updateBlockRules];
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSUnsubscribeTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    [(MSTriageAction *)self->_triageAction setIsSenderAlreadyBlocked:[(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked]];
    triageAction = self->_triageAction;
  }

  return triageAction;
}

@end