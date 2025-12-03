@interface MFUserActivityBrowseMailboxRoute
+ (OS_os_log)log;
- (MFUserActivityBrowseMailboxRoute)initWithMailboxPickerController:(id)controller;
- (id)browseMailboxForActivityPayload:(id)payload activityType:(id)type scrollToMessage:(BOOL)message;
@end

@implementation MFUserActivityBrowseMailboxRoute

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100232D90;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD758 != -1)
  {
    dispatch_once(&qword_1006DD758, block);
  }

  v2 = qword_1006DD750;

  return v2;
}

- (MFUserActivityBrowseMailboxRoute)initWithMailboxPickerController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MFUserActivityBrowseMailboxRoute;
  v6 = [(MFUserActivityBrowseMailboxRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxPickerController, controller);
  }

  return v7;
}

- (id)browseMailboxForActivityPayload:(id)payload activityType:(id)type scrollToMessage:(BOOL)message
{
  messageCopy = message;
  payloadCopy = payload;
  typeCopy = type;
  v7 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyFocusedMessageID];
  v49[0] = typeCopy;
  v48[0] = @"ceActivityType";
  v48[1] = @"ceActivityIsHandoff";
  v8 = [v7 length];
  v9 = &off_1006744C8;
  if (!v8)
  {
    v9 = &off_1006744E0;
  }

  v49[1] = v9;
  v40 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  v10 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
  v39 = v10;
  if (v10)
  {
    if ([MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes isEqualToString:v10])
    {
      v11 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
      favoriteItemSelectionTarget = [(MailboxPickerOutlineController *)self->_mailboxPickerController favoriteItemSelectionTarget];
      [favoriteItemSelectionTarget selectCombinedMailboxWithType:7 item:v11 animated:0];
    }

    else if ([MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeVIP isEqualToString:v10])
    {
      v11 = [FavoriteItem itemForSharedMailboxWithType:1 selected:0];
      favoriteItemSelectionTarget2 = [(MailboxPickerOutlineController *)self->_mailboxPickerController favoriteItemSelectionTarget];
      [favoriteItemSelectionTarget2 selectCombinedInboxWithSourceType:1 item:v11 animated:0];
    }

    else
    {
      v11 = +[MFUserActivityBrowseMailboxRoute log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(Browse Activity) Unknown special source type. Assuming generic.", buf, 2u);
      }
    }

LABEL_27:
    pathComponents = 0;
    if (v7 && messageCopy)
    {
      v30 = [NSURL URLWithString:v7];
      mf_messageCriterion = [v30 mf_messageCriterion];
      if (!mf_messageCriterion)
      {
        pathComponents = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:@"Couldn't generate criterion for message scroll position for handoff. URL: %@", v30];
        goto LABEL_33;
      }

      v36 = v30;
      pathComponents = 0;
LABEL_31:

      v30 = v36;
LABEL_33:

      goto LABEL_34;
    }

    goto LABEL_34;
  }

  selfCopy = self;
  v36 = [payloadCopy objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];
  mf_messageCriterion = [NSURL URLWithString:?];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = +[MailAccount mailAccounts];
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v15)
  {
LABEL_14:

LABEL_20:
    if ([v7 length])
    {
      v28 = @"Wasn't able to resolve account for Browse Activity from handoff. Got URL: %@";
    }

    else
    {
      v28 = @"Wasn't able to resolve account for Browse Activity for siri shortcut. Got URL: %@";
    }

    v29 = [NSString stringWithFormat:v28, mf_messageCriterion];
    pathComponents = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:v29];

    goto LABEL_31;
  }

  v16 = *v43;
LABEL_8:
  v17 = 0;
  while (1)
  {
    if (*v43 != v16)
    {
      objc_enumerationMutation(v14);
    }

    v18 = *(*(&v42 + 1) + 8 * v17);
    uniqueID = [v18 uniqueID];
    host = [mf_messageCriterion host];
    v21 = [uniqueID isEqualToString:host];

    if (v21)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  v23 = v18;

  if (!v23)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pathComponents = [mf_messageCriterion pathComponents];
    v25 = v23;
    v26 = [pathComponents objectAtIndexedSubscript:2];
    v27 = [v25 mailboxForFolderID:v26];
  }

  else
  {
    pathComponents = [mf_messageCriterion path];
    if ([pathComponents length] >= 3 && objc_msgSend(pathComponents, "characterAtIndex:", 0) == 47)
    {
      v32 = [pathComponents substringFromIndex:1];

      pathComponents = v32;
    }

    v27 = [v23 mailboxUidForRelativePath:pathComponents create:0];
  }

  if (v27)
  {
    favoriteItemSelectionTarget3 = [(MailboxPickerOutlineController *)selfCopy->_mailboxPickerController favoriteItemSelectionTarget];
    [favoriteItemSelectionTarget3 selectMailbox:v27 item:0 animated:0];
  }

  else
  {
    if ([v7 length])
    {
      v34 = @"Wasn't able to resolve mailbox for Browse Activity from handoff. Got URL: %@";
    }

    else
    {
      v34 = @"Wasn't able to resolve mailbox for Browse Activity for siri shortcut. Got URL: %@";
    }

    favoriteItemSelectionTarget3 = [NSString stringWithFormat:v34, mf_messageCriterion];
    pathComponents = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:favoriteItemSelectionTarget3];
  }

  if (v27)
  {
    goto LABEL_27;
  }

LABEL_34:

  return pathComponents;
}

@end