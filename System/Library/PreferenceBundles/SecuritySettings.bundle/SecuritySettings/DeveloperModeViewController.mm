@interface DeveloperModeViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (DeveloperModeViewController)init;
- (id)readPreferenceValue:(id)value;
- (id)specifiers;
- (id)specifiersForPairing;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)promptRebootWithCallback:(id)callback onCancel:(id)cancel;
- (void)readAndSetSettings;
- (void)reboot;
- (void)refreshLinkStatusInParent;
- (void)setPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DeveloperModeViewController

- (DeveloperModeViewController)init
{
  v7.receiver = self;
  v7.super_class = DeveloperModeViewController;
  v2 = [(DeveloperModeViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->settings = 0;
    v4 = create_amfid_xpc_connection();
    amfidXpc = v3->amfidXpc;
    v3->amfidXpc = v4;

    xpc_connection_resume(v3->amfidXpc);
  }

  return v3;
}

- (void)dealloc
{
  amfidXpc = self->amfidXpc;
  if (amfidXpc)
  {
    xpc_connection_cancel(amfidXpc);
    v4 = self->amfidXpc;
    self->amfidXpc = 0;
  }

  v5.receiver = self;
  v5.super_class = DeveloperModeViewController;
  [(DeveloperModeViewController *)&v5 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    bundle = [(DeveloperModeViewController *)self bundle];
    v20 = 0;
    v21 = 0;
    v7 = [NSMutableDictionary alloc];
    v8 = [bundle pathForResource:@"DeveloperMode" ofType:@"plist"];
    v9 = [v7 initWithContentsOfFile:v8];

    v10 = [NSMutableArray alloc];
    v11 = [v10 initWithArray:*&self->PSListController_opaque[OBJC_IVAR___PSListController__bundleControllers]];
    v12 = *&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier];
    v19 = v11;
    v13 = SpecifiersFromPlist();
    v14 = v19;

    [v5 addObjectsFromArray:{v13, &v19}];
    [(DeveloperModeViewController *)self setTitle:v20];
    [(DeveloperModeViewController *)self setSpecifierID:v21];
    if (_os_feature_enabled_impl() && self->settings == 1)
    {
      specifiersForPairing = [(DeveloperModeViewController *)self specifiersForPairing];
      [v5 addObjectsFromArray:specifiersForPairing];
    }

    v16 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;
    v17 = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DeveloperModeViewController;
  [(DeveloperModeViewController *)&v5 viewDidLoad];
  [(DeveloperModeViewController *)self readAndSetSettings];
  if (_os_feature_enabled_impl())
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DEV_TOOLS_TITLE" value:&stru_8420 table:0];
    [(DeveloperModeViewController *)self setTitle:v4];
  }
}

- (void)readAndSetSettings
{
  amfidXpc = self->amfidXpc;
  v4 = dict_to_xpc_msg();
  v5 = xpc_connection_send_message_with_reply_sync(amfidXpc, v4);

  v6 = xpc_msg_to_dict(v5);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amfid response %@", &v24, 0xCu);
  }

  v7 = [v6 objectForKeyedSubscript:@"success"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = [v6 objectForKeyedSubscript:@"writable"];
    v10 = &__kCFBooleanFalse;
    if ([v9 BOOLValue])
    {
      v11 = [v6 objectForKeyedSubscript:@"armed"];
      bOOLValue2 = [v11 BOOLValue];
      v13 = &__kCFBooleanTrue;
      if (bOOLValue2)
      {
        v13 = &__kCFBooleanFalse;
      }

      v10 = v13;
    }

    v14 = [v6 objectForKeyedSubscript:@"status"];
    if ([v14 BOOLValue])
    {
      self->settings = 1;
    }

    else
    {
      v15 = [v6 objectForKeyedSubscript:@"armed"];
      self->settings = [v15 BOOLValue];
    }

    if (_os_feature_enabled_impl())
    {
      [(DeveloperModeViewController *)self reloadSpecifiers];
    }

    v16 = OBJC_IVAR___PSListController__specifiers;
    v17 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:kDeveloperModeToggle];
    [v17 setProperty:v10 forKey:PSEnabledKey];

    v18 = [*&self->PSListController_opaque[v16] specifierForID:kDeveloperModeFooter];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v6 objectForKeyedSubscript:@"writable"];
    if ([v20 BOOLValue])
    {
      v21 = @"DEV_MODE_FOOTER";
    }

    else
    {
      v21 = @"DEV_MODE_FOOTER_FORCE_ENABLED";
    }

    v22 = [v19 localizedStringForKey:v21 value:&stru_8420 table:0];
    [v18 setProperty:v22 forKey:PSFooterTextGroupKey];

    v23 = [*&self->PSListController_opaque[v16] specifierForID:kDeveloperModeToggle];
    [(DeveloperModeViewController *)self reloadSpecifier:v23 animated:1];
  }
}

- (id)readPreferenceValue:(id)value
{
  identifier = [value identifier];
  if ([identifier isEqual:kDeveloperModeToggle])
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->settings];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_3190(identifier);
    }

    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)refreshLinkStatusInParent
{
  v3 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->PSListController_opaque[v3]);
    [v6 reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
  }
}

- (void)setPreferenceValue:(id)value forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  identifier = [specifierCopy identifier];
  bOOLValue = [valueCopy BOOLValue];

  if ([identifier isEqual:kDeveloperModeToggle])
  {
    if (bOOLValue)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_2318;
      v21[3] = &unk_8328;
      v21[4] = self;
      v22 = specifierCopy;
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_2454;
      v18 = &unk_8328;
      selfCopy = self;
      v20 = v22;
      [(DeveloperModeViewController *)self promptRebootWithCallback:v21 onCancel:&v15];
    }

    else
    {
      self->settings = 0;
      [(DeveloperModeViewController *)self reloadSpecifier:specifierCopy animated:1];
      amfidXpc = self->amfidXpc;
      v11 = dict_to_xpc_msg();
      v12 = xpc_connection_send_message_with_reply_sync(amfidXpc, v11);

      if (v12)
      {
        v13 = xpc_msg_to_dict(v12);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v13 description];
          *buf = 136315138;
          uTF8String = [v14 UTF8String];
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "amfid response %s", buf, 0xCu);
        }
      }
    }

    [(DeveloperModeViewController *)self refreshLinkStatusInParent:v15];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_3210(identifier);
  }
}

- (void)promptRebootWithCallback:(id)callback onCancel:(id)cancel
{
  callbackCopy = callback;
  cancelCopy = cancel;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DEV_MODE_WARNING" value:&stru_8420 table:0];
  v10 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:0];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"REBOOT" value:&stru_8420 table:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_26F0;
  v21[3] = &unk_8350;
  v21[4] = self;
  v22 = callbackCopy;
  v13 = callbackCopy;
  v14 = [UIAlertAction actionWithTitle:v12 style:2 handler:v21];
  [v10 addAction:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_8420 table:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_2738;
  v19[3] = &unk_8378;
  v20 = cancelCopy;
  v17 = cancelCopy;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v19];
  [v10 addAction:v18];

  [(DeveloperModeViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)reboot
{
  v3 = [[FBSShutdownOptions alloc] initWithReason:@"com.apple.amfi.developer_mode"];
  [v3 setRebootType:1];
  [v3 setSource:1];
  v2 = +[FBSSystemService sharedService];
  [v2 shutdownWithOptions:v3];
}

- (id)specifiersForPairing
{
  v2 = +[NSMutableArray array];
  v3 = [&off_8A38 count];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &SpecifiersFromPlist_ptr;
  if (v3)
  {
    v7 = [v4 localizedStringForKey:@"PAIRED_DEVICES_HEADER" value:&stru_8420 table:0];
    v8 = [PSSpecifier groupSpecifierWithID:@"PAIRED-DEVICES" name:v7];

    [v2 addObject:v8];
    if ([&off_8A38 count])
    {
      v9 = 0;
      v10 = PSAccessoryKey;
      v11 = PSIDKey;
      do
      {
        v12 = [&off_8A38 objectAtIndexedSubscript:v9];
        v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:objc_opt_class() cell:-1 edit:0];

        v14 = [NSNumber numberWithInteger:4];
        [v13 setProperty:v14 forKey:v10];

        v15 = [NSString stringWithFormat:@"%@-%d", @"PAIRED-DEVICE", v9];
        [v13 setProperty:v15 forKey:v11];

        [v2 addObject:v13];
        ++v9;
      }

      while ([&off_8A38 count] > v9);
    }

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"PAIRABLE_DEVICES_HEADER" value:&stru_8420 table:0];
    v18 = [PSSpecifier groupSpecifierWithID:@"PAIRABLE-DEVICES" name:v17];

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 setProperty:v20 forKey:PSHeaderCellClassGroupKey];

    [v2 addObject:v18];
    v6 = &SpecifiersFromPlist_ptr;
  }

  else
  {
    v21 = [v4 localizedStringForKey:@"DEVICES_HEADER" value:&stru_8420 table:0];
    v8 = [PSSpecifier groupSpecifierWithID:@"PAIRABLE-DEVICES" name:v21];

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v8 setProperty:v23 forKey:PSHeaderCellClassGroupKey];

    [v2 addObject:v8];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [&off_8A50 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(&off_8A50);
        }

        [v6[79] stringWithFormat:@"Pair with %@", *(*(&v32 + 1) + 8 * i)];
        v29 = v28 = v6;
        v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:0 set:"pairWithHostForSpecificer:" get:0 detail:0 cell:13 edit:0];
        [v2 addObject:v30];

        v6 = v28;
      }

      v25 = [&off_8A50 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v25);
  }

  return v2;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  if (_os_feature_enabled_impl())
  {
    v5 = [(DeveloperModeViewController *)self indexForIndexPath:pathCopy];
    v6 = [(DeveloperModeViewController *)self indexOfSpecifierID:@"PAIRED-DEVICES"];
    if (v5 <= 255 && v6 <= 255)
    {
      v7 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
      v8 = *&v7[OBJC_IVAR___PSSpecifier_detailControllerClass];
      v9 = objc_opt_new();
      [(DeveloperModeViewController *)self setShowingSetupController:0];
      WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
      [v9 setRootController:WeakRetained];

      [v9 setParentController:self];
      [v9 setSpecifier:v7];
      [(DeveloperModeViewController *)self showController:v9];
    }
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (_os_feature_enabled_impl() && (-[DeveloperModeViewController specifierAtIndexPath:](self, "specifierAtIndexPath:", pathCopy), v8 = objc_claimAutoreleasedReturnValue(), [v8 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsString:", @"PAIRED-DEVICE"), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DeveloperModeViewController;
    v11 = [(DeveloperModeViewController *)&v13 tableView:viewCopy canEditRowAtIndexPath:pathCopy];
  }

  return v11;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (_os_feature_enabled_impl())
  {
    v6 = [(DeveloperModeViewController *)self specifierAtIndexPath:pathCopy];
    identifier = [v6 identifier];
    v8 = [identifier containsString:@"PAIRED-DEVICE"];

    if (v8)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"PAIRED_DEVICE_SWIPE_ACTION_UNPAIR" value:&stru_8420 table:0];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_3094;
      v19 = &unk_83A0;
      selfCopy = self;
      v21 = v6;
      v11 = v6;
      v12 = [UIContextualAction contextualActionWithStyle:1 title:v10 handler:&v16];

      v22 = v12;
      selfCopy = [NSArray arrayWithObjects:&v22 count:1, v16, v17, v18, v19, selfCopy];
      v14 = [UISwipeActionsConfiguration configurationWithActions:selfCopy];

      goto LABEL_6;
    }
  }

  v14 = [UISwipeActionsConfiguration configurationWithActions:&__NSArray0__struct];
LABEL_6:

  return v14;
}

@end