@interface AAUIFMIPHeaderDeviceInfoPageSurrogate
- (AAUIFMIPHeaderDeviceInfoPageDelegate)delegate;
- (AAUIFMIPHeaderDeviceInfoPageSurrogate)initWithPage:(id)a3 device:(id)a4 appleAccount:(id)a5;
- (BOOL)respondsToSelector:(SEL)a3;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_dateStringOfLatestBackup:(id)a3;
- (id)_footerForBackupRow;
- (id)backupForUDID:(id)a3 backupList:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_addActivityIndicatorToCell:(id)a3;
- (void)_removeActivityIndicatorFromCell:(id)a3;
- (void)dealloc;
- (void)fetchBackupWithCompletion:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)refreshBackupDetailText:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDetailLabelWithBackup:(id)a3;
@end

@implementation AAUIFMIPHeaderDeviceInfoPageSurrogate

- (AAUIFMIPHeaderDeviceInfoPageSurrogate)initWithPage:(id)a3 device:(id)a4 appleAccount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  v12 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a4);
    objc_storeStrong(&v13->_remoteUIPage, a3);
    v14 = [v9 tableViewOM];
    v15 = [v14 tableView];
    remoteTableView = v13->_remoteTableView;
    v13->_remoteTableView = v15;

    v17 = [v9 tableViewOM];
    remoteTableViewController = v13->_remoteTableViewController;
    v13->_remoteTableViewController = v17;

    objc_storeStrong(&v13->_appleAccount, a5);
    [(UITableView *)v13->_remoteTableView setDataSource:v13];
    [(UITableView *)v13->_remoteTableView setDelegate:v13];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.appleaccount.backup_list", v19);
    backupListQueue = v13->_backupListQueue;
    v13->_backupListQueue = v20;
  }

  return v13;
}

- (void)dealloc
{
  remoteTableView = self->_remoteTableView;
  if (remoteTableView)
  {
    [(UITableView *)remoteTableView setDataSource:0];
    [(UITableView *)self->_remoteTableView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v4 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  remoteTableViewController = self->_remoteTableViewController;
  v5 = a3;
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:self->_remoteTableViewController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v6 forwardInvocation:v5];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  v5 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(UITableViewDelegate *)self->_remoteTableViewController methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  remoteTableViewController = self->_remoteTableViewController;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  return [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v7 respondsToSelector:a3];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      v7 = [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 viewForHeaderInSection:a4];
    }

    else
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Creating a device info header view", v13, 2u);
      }

      v9 = [AAUIDeviceInfoHeaderView alloc];
      device = self->_device;
      v11 = [(RUIPage *)self->_remoteUIPage style];
      v7 = [(AAUIDeviceInfoHeaderView *)v9 initWithDevice:device style:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v8 _bodyLeading];
      v7 = v9;
    }

    else
    {
      +[AAUIDeviceInfoHeaderView desiredHeight];
      v7 = v10;
    }
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 heightForHeaderInSection:a4];
      v7 = v8;
    }

    else
    {
      v7 = UITableViewAutomaticDimension;
    }
  }

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_remoteTableView == v6)
  {
    if (!a4 && [(AATrustedDevice *)self->_device showBackupRow]&& [(ACAccount *)self->_appleAccount aa_isPrimaryAccount])
    {
      v8 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _footerForBackupRow];
    }

    else
    {
      v8 = [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 titleForFooterInSection:a4];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_footerForBackupRow
{
  v3 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _dateStringOfLatestBackup:0];
  v4 = [(AATrustedDevice *)self->_device rawLatestBackup];

  if (v4)
  {
    v5 = [(AATrustedDevice *)self->_device rawLatestBackup];
    [v5 doubleValue];
    v7 = v6 / 1000.0;

    v8 = [NSDate dateWithTimeIntervalSince1970:v7];
    v9 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _dateStringOfLatestBackup:v8];

    v3 = v9;
  }

  if (([(AATrustedDevice *)self->_device currentDevice]& 1) == 0)
  {
    v10 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self cellWithTag:1002];
    v11 = [v10 detailTextLabel];
    [v11 setText:0];

    [v10 setActivityIndicatorVisible:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_ED70;
    v14[3] = &unk_59748;
    v15 = v10;
    v16 = self;
    v12 = v10;
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self fetchBackupWithCompletion:v14];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cellForRowAtIndexPath:v7];
  v9 = [v8 tag];
  if (![(AATrustedDevice *)self->_device currentDevice])
  {
    if (v9 != &stru_3D8.segname[3])
    {
      goto LABEL_10;
    }

LABEL_7:
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _addActivityIndicatorToCell:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [(AATrustedDevice *)self->_device serialNumber];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_EF4C;
    v16 = &unk_594A0;
    v17 = self;
    v18 = v8;
    [WeakRetained userTappedAppleCare:v12 completion:&v13];

    goto LABEL_10;
  }

  if (v9 == &stru_3D8.segname[3])
  {
    goto LABEL_7;
  }

  if (v9 == &stru_3D8.segname[2])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userTappedBackup];
    goto LABEL_9;
  }

  if (v9 == &stru_3D8.segname[1])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userTappedFMIP];
LABEL_9:
  }

LABEL_10:
  [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 didSelectRowAtIndexPath:v7, v13, v14, v15, v16, v17];
}

- (void)_removeActivityIndicatorFromCell:(id)a3
{
  v3 = a3;
  [v3 setAccessoryView:0];
  [v3 setAccessoryType:1];
}

- (void)_addActivityIndicatorToCell:(id)a3
{
  v3 = a3;
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v3 setAccessoryView:v4];

  [v4 startAnimating];
}

- (id)_dateStringOfLatestBackup:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LAST_ICLOUD_BACKUP" value:&stru_5A5F0 table:@"Localizable"];

  if (v3)
  {
    v6 = objc_alloc_init(NSDateFormatter);
    if ([v3 aaf_isToday])
    {
      [v6 setTimeStyle:1];
      [v6 setDateStyle:0];
    }

    else
    {
      v8 = +[NSLocale currentLocale];
      v9 = [v8 localeIdentifier];
      v10 = [v9 isEqualToString:@"en_US"];

      [v6 setDoesRelativeDateFormatting:1];
      if (v10)
      {
        [v6 setDateStyle:1];
        v11 = objc_alloc_init(NSDateFormatter);
        [v11 setTimeStyle:1];
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"DATE_AT_TIME" value:&stru_5A5F0 table:@"Localizable"];
        v14 = [v6 stringFromDate:v3];
        v15 = [v11 stringFromDate:v3];
        v16 = [NSString stringWithFormat:v13, v14, v15];
        v17 = [v5 stringByAppendingString:v16];

        v5 = v12;
        goto LABEL_10;
      }

      [v6 setDateStyle:3];
      [v6 setTimeStyle:1];
    }

    v7 = [v6 stringFromDate:v3];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NEVER_BACKED_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  v11 = v7;
  v17 = [v5 stringByAppendingString:v7];
LABEL_10:

  return v17;
}

- (void)fetchBackupWithCompletion:(id)a3
{
  v4 = a3;
  backupListQueue = self->_backupListQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F350;
  v7[3] = &unk_59770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(backupListQueue, v7);
}

- (id)backupForUDID:(id)a3 backupList:(id)a4
{
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 backupUUID];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v16 = _AAUILogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Found matching backupUUID", v18, 2u);
          }

          v15 = v11;
          v14 = v6;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "No peer backup info found.", v18, 2u);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)updateDetailLabelWithBackup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 hasBackupEnabledState])
    {
      v6 = [v5 isBackupEnabled];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = v7;
      if (v6)
      {
        v9 = @"ON";
      }

      else
      {
        v9 = @"OFF";
      }
    }

    else
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"UNKNOWN";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_5A5F0 table:@"Localizable"];

    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_33C04(v10, v11);
    }

    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self refreshBackupDetailText:v10];
  }
}

- (void)refreshBackupDetailText:(id)a3
{
  v7 = a3;
  v4 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self cellWithTag:1002];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 detailTextLabel];
    [v6 setText:v7];
  }
}

- (AAUIFMIPHeaderDeviceInfoPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end