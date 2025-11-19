@interface MFUserActivityBrowseMailboxRoute
+ (OS_os_log)log;
- (MFUserActivityBrowseMailboxRoute)initWithMailboxPickerController:(id)a3;
- (id)browseMailboxForActivityPayload:(id)a3 activityType:(id)a4 scrollToMessage:(BOOL)a5;
@end

@implementation MFUserActivityBrowseMailboxRoute

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100232D90;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD758 != -1)
  {
    dispatch_once(&qword_1006DD758, block);
  }

  v2 = qword_1006DD750;

  return v2;
}

- (MFUserActivityBrowseMailboxRoute)initWithMailboxPickerController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFUserActivityBrowseMailboxRoute;
  v6 = [(MFUserActivityBrowseMailboxRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxPickerController, a3);
  }

  return v7;
}

- (id)browseMailboxForActivityPayload:(id)a3 activityType:(id)a4 scrollToMessage:(BOOL)a5
{
  v37 = a5;
  v41 = a3;
  v38 = a4;
  v7 = [v41 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyFocusedMessageID];
  v49[0] = v38;
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
  v10 = [v41 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
  v39 = v10;
  if (v10)
  {
    if ([MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes isEqualToString:v10])
    {
      v11 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:0];
      v12 = [(MailboxPickerOutlineController *)self->_mailboxPickerController favoriteItemSelectionTarget];
      [v12 selectCombinedMailboxWithType:7 item:v11 animated:0];
    }

    else if ([MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeVIP isEqualToString:v10])
    {
      v11 = [FavoriteItem itemForSharedMailboxWithType:1 selected:0];
      v22 = [(MailboxPickerOutlineController *)self->_mailboxPickerController favoriteItemSelectionTarget];
      [v22 selectCombinedInboxWithSourceType:1 item:v11 animated:0];
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
    v24 = 0;
    if (v7 && v37)
    {
      v30 = [NSURL URLWithString:v7];
      v13 = [v30 mf_messageCriterion];
      if (!v13)
      {
        v24 = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:@"Couldn't generate criterion for message scroll position for handoff. URL: %@", v30];
        goto LABEL_33;
      }

      v36 = v30;
      v24 = 0;
LABEL_31:

      v30 = v36;
LABEL_33:

      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v35 = self;
  v36 = [v41 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];
  v13 = [NSURL URLWithString:?];
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

    v29 = [NSString stringWithFormat:v28, v13];
    v24 = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:v29];

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
    v19 = [v18 uniqueID];
    v20 = [v13 host];
    v21 = [v19 isEqualToString:v20];

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
    v24 = [v13 pathComponents];
    v25 = v23;
    v26 = [v24 objectAtIndexedSubscript:2];
    v27 = [v25 mailboxForFolderID:v26];
  }

  else
  {
    v24 = [v13 path];
    if ([v24 length] >= 3 && objc_msgSend(v24, "characterAtIndex:", 0) == 47)
    {
      v32 = [v24 substringFromIndex:1];

      v24 = v32;
    }

    v27 = [v23 mailboxUidForRelativePath:v24 create:0];
  }

  if (v27)
  {
    v33 = [(MailboxPickerOutlineController *)v35->_mailboxPickerController favoriteItemSelectionTarget];
    [v33 selectMailbox:v27 item:0 animated:0];
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

    v33 = [NSString stringWithFormat:v34, v13];
    v24 = [NSError mailHandoffErrorWithActivityContextInfo:v40 errorFormat:v33];
  }

  if (v27)
  {
    goto LABEL_27;
  }

LABEL_34:

  return v24;
}

@end