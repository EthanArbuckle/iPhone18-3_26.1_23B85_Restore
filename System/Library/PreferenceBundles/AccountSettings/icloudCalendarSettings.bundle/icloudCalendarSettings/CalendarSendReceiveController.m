@interface CalendarSendReceiveController
- (CalendarSendReceiveController)initWithEmailData:(id)a3 userAccount:(id)a4;
- (id)_getEmail:(id)a3;
- (id)_receiveEmailSpecifiers;
- (id)_sendEmailSpecifiers;
- (id)specifiers;
- (void)_didSelectEmailForSend:(id)a3;
- (void)_didSelectOptionForReceive:(id)a3 withOption:(id)a4;
- (void)_updateSettingsForEmail:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation CalendarSendReceiveController

- (CalendarSendReceiveController)initWithEmailData:(id)a3 userAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CalendarSendReceiveController;
  v8 = [(CalendarSendReceiveController *)&v12 init];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithArray:v6];
    emailList = v8->_emailList;
    v8->_emailList = v9;

    objc_storeStrong(&v8->_icloudAccount, a4);
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CalendarSendReceiveController;
  [(CalendarSendReceiveController *)&v9 viewDidLoad];
  v3 = [(CalendarSendReceiveController *)self table];
  v4 = objc_opt_class();
  v5 = +[CalendarPopupButtonCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(CalendarSendReceiveController *)self navigationItem];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDAR_SEND_RECEIVE_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
  [v6 setTitle:v8];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CalendarSendReceiveController *)self _sendEmailSpecifiers];
  [v3 addObjectsFromArray:v4];

  v5 = [(CalendarSendReceiveController *)self _receiveEmailSpecifiers];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];
  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v6;

  v9 = *&self->PSListController_opaque[v7];
  v10 = v9;

  return v9;
}

- (id)_sendEmailSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CALENDAR_SENDING_ADDRESS_TITLE" value:&stru_14AB8 table:@"calendarSettings"];
  v6 = [PSSpecifier groupSpecifierWithID:@"CALENDAR_SENDING_ADDRESS_TITLE" name:v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDAR_SENDING_ADDRESS_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v3 addObject:v6];
  if ([(NSMutableArray *)self->_emailList count]< 2)
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CALENDAR_SEND_FROM_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"_getEmail:" detail:0 cell:4 edit:0];
  }

  else
  {
    v9 = [PSSpecifier preferenceSpecifierNamed:&stru_14AB8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  [v9 setIdentifier:@"SEND_FROM_SPECIFIER_ID"];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSPrioritizeValueTextDisplayKey];
  [v3 addObject:v9];

  return v3;
}

- (id)_receiveEmailSpecifiers
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CALENDAR_RECEIVING_ADDRESS_TITLE" value:&stru_14AB8 table:@"calendarSettings"];
  v5 = [PSSpecifier groupSpecifierWithID:@"CALENDAR_RECEIVING_ADDRESS_GROUP_ID" name:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CALENDAR_LEARN_MORE_PERIOD" value:&stru_14AB8 table:@"calendarSettings"];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CALENDAR_RECEIVING_ADDRESS_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  v10 = [NSString stringWithFormat:@"%@ %@", v9, v7];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v5 setProperty:v12 forKey:PSFooterCellClassGroupKey];

  [v5 setProperty:v10 forKey:PSFooterHyperlinkViewTitleKey];
  v29 = v7;
  v38.location = [v10 rangeOfString:v7];
  v13 = NSStringFromRange(v38);
  [v5 setProperty:v13 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CALENDAR_RECEIVE_ADDRESS_KB_LINK" value:&stru_14AB8 table:@"calendarSettings"];
  [v5 setProperty:v15 forKey:PSFooterHyperlinkViewURLKey];

  v28 = v10;
  [v5 setProperty:v10 forKey:PSFooterTextGroupKey];
  v16 = v2;
  v30 = v5;
  [v2 addObject:v5];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_emailList;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    v20 = PSCellClassKey;
    v21 = PSPrioritizeValueTextDisplayKey;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        v24 = [PSSpecifier preferenceSpecifierNamed:&stru_14AB8 target:self set:0 get:0 detail:0 cell:-1 edit:0];
        v25 = [v23 address];
        [v24 setIdentifier:v25];

        [v24 setProperty:objc_opt_class() forKey:v20];
        [v24 setProperty:&__kCFBooleanTrue forKey:v21];
        [v16 addObject:v24];
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  return v16;
}

- (id)_getEmail:(id)a3
{
  if ([(NSMutableArray *)self->_emailList count])
  {
    v4 = [(NSMutableArray *)self->_emailList objectAtIndexedSubscript:0];
    v5 = [v4 address];
  }

  else
  {
    v5 = &stru_14AB8;
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v42 = a3;
  v44 = a4;
  val = self;
  v43 = a5;
  v8 = [(CalendarSendReceiveController *)self specifierAtIndexPath:?];
  v45 = v8;
  v9 = v8;
  if (v8)
  {
    [v8 setProperty:&__kCFBooleanTrue forKey:{PSEnabledKey, v42}];
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [v9 identifier];
    v12 = [v11 isEqualToString:@"SEND_FROM_SPECIFIER_ID"];

    if (v12)
    {
      if ([(NSMutableArray *)self->_emailList count]< 2)
      {
        v20 = v10;
        goto LABEL_31;
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = self->_emailList;
      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v13)
      {
        v14 = *v60;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v60 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v59 + 1) + 8 * i);
            objc_initWeak(&location, self);
            v17 = [v16 address];
            v18 = [v16 address];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_845C;
            v56[3] = &unk_14830;
            objc_copyWeak(&v57, &location);
            v56[4] = v16;
            v19 = [UIAction actionWithTitle:v17 image:0 identifier:v18 handler:v56];

            if ([v16 send])
            {
              [v19 setState:1];
            }

            [v10 addObject:v19];

            objc_destroyWeak(&v57);
            objc_destroyWeak(&location);
          }

          v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v13);
      }

      v20 = v10;
    }

    else
    {
      v20 = objc_alloc_init(NSMutableArray);

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = self->_emailList;
      v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v21)
      {
        v22 = *v53;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v53 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v52 + 1) + 8 * j);
            v25 = [v24 address];
            v26 = [v45 identifier];
            v27 = [v25 isEqualToString:v26];

            if (v27)
            {
              objc_initWeak(&location, val);
              v28 = [NSBundle bundleForClass:objc_opt_class()];
              v29 = [v28 localizedStringForKey:@"CALENDAR_RECEIVE_ADDRESS_NOTIFICATION_OPTION" value:&stru_14AB8 table:@"calendarSettings"];
              v50[0] = _NSConcreteStackBlock;
              v50[1] = 3221225472;
              v50[2] = sub_84AC;
              v50[3] = &unk_14830;
              objc_copyWeak(&v51, &location);
              v50[4] = v24;
              v30 = [UIAction actionWithTitle:v29 image:0 identifier:0 handler:v50];

              v31 = [NSBundle bundleForClass:objc_opt_class()];
              v32 = [v31 localizedStringForKey:@"CALENDAR_RECEIVE_ADDRESS_EMAIL_OPTION" value:&stru_14AB8 table:@"calendarSettings"];
              v48[0] = _NSConcreteStackBlock;
              v48[1] = 3221225472;
              v48[2] = sub_8504;
              v48[3] = &unk_14830;
              objc_copyWeak(&v49, &location);
              v48[4] = v24;
              v33 = [UIAction actionWithTitle:v32 image:0 identifier:0 handler:v48];

              v34 = [v24 receive];
              v35 = [v34 isEqualToString:@"PUSH"];

              v36 = v30;
              if ((v35 & 1) != 0 || ([v24 receive], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isEqualToString:", @"EMAIL"), v37, v36 = v33, v38))
              {
                [v36 setState:1];
              }

              v63[0] = v30;
              v63[1] = v33;
              v39 = [NSArray arrayWithObjects:v63 count:2];
              [v20 addObjectsFromArray:v39];

              objc_destroyWeak(&v49);
              objc_destroyWeak(&v51);
              objc_destroyWeak(&location);
              goto LABEL_29;
            }
          }

          v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_29:

    v40 = v44;
    v41 = [UIMenu menuWithChildren:v20];
    [v40 setPopupMenu:v41];

LABEL_31:
    [v44 reloadWithSpecifier:v45 animated:1];
    goto LABEL_32;
  }

  v20 = _CalLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_B51C(v43, v20);
  }

LABEL_32:
}

- (void)_didSelectEmailForSend:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_emailList;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [CalInviteEmail alloc];
        v12 = [v10 toDictionary];
        v13 = [(CalInviteEmail *)v11 initWithDictionary:v12];

        v14 = [(CalInviteEmail *)v13 address];
        v15 = [v4 address];
        v16 = [v14 isEqualToString:v15];

        [(CalInviteEmail *)v13 setSend:v16];
        [v5 addObject:v13];
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v17 = _CalLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v4 address];
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "selected address for send receive is %@", buf, 0xCu);
  }

  [(CalendarSendReceiveController *)self _updateSettingsForEmail:v5];
}

- (void)_didSelectOptionForReceive:(id)a3 withOption:(id)a4
{
  v6 = a3;
  v22 = a4;
  v7 = _CalLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 address];
    *buf = 138412546;
    v30 = v22;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "selected option %@ for receive address %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self;
  obj = self->_emailList;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v15 = [CalInviteEmail alloc];
        v16 = [v14 toDictionary];
        v17 = [(CalInviteEmail *)v15 initWithDictionary:v16];

        v18 = [(CalInviteEmail *)v17 address];
        v19 = [v6 address];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          [(CalInviteEmail *)v17 setReceive:v22];
        }

        [v9 addObject:v17];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  [(CalendarSendReceiveController *)v21 _updateSettingsForEmail:v9];
}

- (void)_updateSettingsForEmail:(id)a3
{
  v4 = a3;
  v5 = [CalendarUpdateSettingsRequest alloc];
  icloudAccount = self->_icloudAccount;
  v7 = [(ACAccount *)icloudAccount accountStore];
  v8 = [(CalendarUpdateSettingsRequest *)v5 initWithAccount:icloudAccount accountStore:v7 emailList:v4];

  v9 = [[CalendarSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v9;

  [(CalendarSpinner *)self->_spinner startSpinner];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_8B3C;
  v12[3] = &unk_14858;
  objc_copyWeak(&v14, &location);
  v12[4] = self;
  v11 = v4;
  v13 = v11;
  [(CalendarUpdateSettingsRequest *)v8 performRequestWithCallback:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end