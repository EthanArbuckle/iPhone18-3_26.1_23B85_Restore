@interface MFUnsubscribeAndDeleteTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 icloudMailCleanupService:(id)a6;
+ (id)log;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)unsubscribeAlertButtonText;
- (id)unsubscribeAlertTitle;
- (id)unsubscribeMessageAlertFormat;
- (void)_dispatchInteractionWithCompletion:(id)a3;
- (void)_showErrorAlert:(id)a3;
- (void)updateBlockRules;
@end

@implementation MFUnsubscribeAndDeleteTriageInteraction

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022F550;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD718 != -1)
  {
    dispatch_once(&qword_1006DD718, block);
  }

  v2 = qword_1006DD710;

  return v2;
}

+ (id)interactionWithMessageListItemSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 icloudMailCleanupService:(id)a6
{
  v10 = a3;
  v11 = a6;
  v49.receiver = a1;
  v49.super_class = &OBJC_METACLASS___MFUnsubscribeAndDeleteTriageInteraction;
  v44 = objc_msgSendSuper2(&v49, "interactionWithMessageListItemSelection:origin:actor:icloudMailCleanupService:", v10, a4, a5, v11);
  v12 = [v10 messageListItems];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 em_messageListItemTotalCount];
    v15 = 0;
    if (v11 && v14 == 1)
    {
      v16 = [v13 firstObject];
      v43 = [v16 senderList];

      if (v43 && [v43 count] == 1 && (objc_msgSend(v43, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "emailAddressValue"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v17, !v19))
      {
        v20 = [v43 firstObject];
        v21 = [v20 emailAddressValue];
        v22 = [v21 simpleAddress];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v20 stringValue];
        }

        v30 = v24;

        [v44 setSender:v30];
        v31 = [v44 sender];
        [v44 setIsSenderAlreadyBlocked:{objc_msgSend(v11, "isSenderEmailAddressBlocked:", v31)}];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v32 = [v13 firstObject];
        v33 = [v32 mailboxes];

        v34 = [v33 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v34)
        {
          v35 = *v46;
          while (2)
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v45 + 1) + 8 * i);
              v38 = [v37 account];
              v39 = [v38 supportsiCloudCleanup];

              if (v39)
              {
                v40 = [v37 account];
                v41 = [v40 identityEmailAddress];
                v42 = [v41 stringValue];
                [v44 setIdentityEmailAddress:v42];

                goto LABEL_28;
              }
            }

            v34 = [v33 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          v26 = [v43 firstObject];
          v27 = [v26 stringValue];
          v28 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v27];
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
    v4 = [(MFUnsubscribeAndDeleteTriageInteraction *)self identityEmailAddress];
    v5 = [NSString stringWithFormat:v3, v4];
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

- (void)_showErrorAlert:(id)a3
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
  v4 = [v3 getiCloudMailCleanupService];

  if ([(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked])
  {
    v5 = [(MFUnsubscribeTriageInteraction *)self sender];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100230268;
    v8[3] = &unk_10064D028;
    v8[4] = self;
    [v4 unblockSenderWithSenderEmailAddress:v5 completionHandler:v8];
  }

  else
  {
    v5 = [(MFTriageInteraction *)self delegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 dismissBannerForUnsubscribeAndDeleteTriageInteraction:self];
    }

    v6 = [(MFUnsubscribeTriageInteraction *)self sender];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10023034C;
    v7[3] = &unk_10064D028;
    v7[4] = self;
    [v4 blockSenderWithSenderEmailAddress:v6 entryPoint:@"/mail/message_detail/footer/context_menu" completionHandler:v7];
  }
}

- (void)_dispatchInteractionWithCompletion:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFUnsubscribeAndDeleteTriageInteraction;
  [(MFTriageInteraction *)&v5 _dispatchInteractionWithCompletion:v4];
  [(MFUnsubscribeAndDeleteTriageInteraction *)self updateBlockRules];
}

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSUnsubscribeTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    [(MSTriageAction *)self->_triageAction setIsSenderAlreadyBlocked:[(MFUnsubscribeAndDeleteTriageInteraction *)self isSenderAlreadyBlocked]];
    triageAction = self->_triageAction;
  }

  return triageAction;
}

@end