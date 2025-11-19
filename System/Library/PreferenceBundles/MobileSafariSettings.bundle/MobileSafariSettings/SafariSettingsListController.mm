@interface SafariSettingsListController
- (BOOL)_evaluateBoolSelectorWithPropertyKey:(id)a3 specifier:(id)a4 defaultValue:(BOOL)a5;
- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5;
- (BOOL)userInterfaceIdiomIsPhone:(id)a3;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)safariDefaultsValueForKey:(id)a3;
- (id)safariSharedDefaultsValueForKey:(id)a3;
- (void)postDistributedNotificationNamed:(__CFString *)a3;
- (void)setSafariDefaultsValue:(id)a3 forKey:(id)a4;
- (void)setSafariSharedDefaultsValue:(id)a3 forKey:(id)a4;
- (void)synchronizeSafariDefaults;
- (void)synchronizeSafariSharedDefaults;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateRestrictionsForSpecifiers:(id)a3;
@end

@implementation SafariSettingsListController

- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SafariSettingsListController *)self specifierForID:v8];
  if ([objc_msgSend(v10 "detailControllerClass")])
  {
    v11 = [(SafariSettingsListController *)self controllerForSpecifier:v10];
    [_SFSettingsAuthentication pushSettingsAfterAuthentication:v11 onBehalfOfViewController:self resourceDictionary:v9 completionHandler:&__block_literal_global_19];

    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SafariSettingsListController;
    v12 = [(SafariSettingsListController *)&v14 prepareHandlingURLForSpecifierID:v8 resourceDictionary:v9 animatePush:a5];
  }

  return v12;
}

- (void)postDistributedNotificationNamed:(__CFString *)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a3, 0, 0, 0);
}

- (void)setSafariDefaultsValue:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSUserDefaults safari_browserDefaults];
  [v7 setObject:v6 forKey:v5];
}

- (id)safariDefaultsValueForKey:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults safari_browserDefaults];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)synchronizeSafariDefaults
{
  v2 = +[NSUserDefaults safari_browserDefaults];
  [v2 synchronize];
}

- (void)setSafariSharedDefaultsValue:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSUserDefaults safari_browserSharedDefaults];
  [v7 setObject:v6 forKey:v5];
}

- (id)safariSharedDefaultsValueForKey:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults safari_browserSharedDefaults];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)synchronizeSafariSharedDefaults
{
  v2 = +[NSUserDefaults safari_browserSharedDefaults];
  [v2 synchronize];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[SafariSettingsListController indexForIndexPath:](self, "indexForIndexPath:", v7)}];
  if (![objc_msgSend(v8 "detailControllerClass")])
  {
    goto LABEL_6;
  }

  v9 = [(SafariSettingsListController *)self controllerForSpecifier:v8];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v9 shouldAuthenticateBeforeShowingSettings])
  {

LABEL_6:
    v12.receiver = self;
    v12.super_class = SafariSettingsListController;
    [(SafariSettingsListController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
    goto LABEL_7;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __66__SafariSettingsListController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_8A650;
  v14 = v6;
  v15 = v7;
  v16 = self;
  [_SFSettingsAuthentication authenticateForSettings:v9 allowAuthenticationReuse:1 completionHandler:v13];
  v10 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
  v11 = [v10 indexPathForSelectedRow];
  [v10 deselectRowAtIndexPath:v11 animated:1];

LABEL_7:
}

id __66__SafariSettingsListController_tableView_didSelectRowAtIndexPath___block_invoke(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 5);
    v3 = *(result + 4);
    v4.receiver = *(result + 6);
    v4.super_class = SafariSettingsListController;
    return objc_msgSendSuper2(&v4, "tableView:didSelectRowAtIndexPath:", v3, v2);
  }

  return result;
}

- (BOOL)_evaluateBoolSelectorWithPropertyKey:(id)a3 specifier:(id)a4 defaultValue:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 propertyForKey:v8];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = NSSelectorFromString(v11);
      if (objc_opt_respondsToSelector())
      {
        a5 = [self v12];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = [v9 identifier];
        v15 = 138413058;
        v16 = v8;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = objc_opt_class();
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Ignoring invalid %@ property on specifier with id %@. Could not find a method named %@ in class %@", &v15, 0x2Au);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [SafariSettingsListController _evaluateBoolSelectorWithPropertyKey:v8 specifier:v9 defaultValue:?];
    }
  }

  return a5;
}

- (void)updateRestrictionsForSpecifiers:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = PSEnabledKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [NSNumber numberWithInt:[(SafariSettingsListController *)self _evaluateBoolSelectorWithPropertyKey:@"safariRestricted" specifier:v10 defaultValue:0]^ 1];
        [v10 setProperty:v11 forKey:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)userInterfaceIdiomIsPhone:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom] == 0;

  return v4;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  v11.receiver = self;
  v11.super_class = SafariSettingsListController;
  v6 = [(SafariSettingsListController *)&v11 loadSpecifiersFromPlistName:a3 target:a4 bundle:a5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__SafariSettingsListController_loadSpecifiersFromPlistName_target_bundle___block_invoke;
  v10[3] = &unk_8A958;
  v10[4] = self;
  v7 = [v6 safari_filterObjectsUsingBlock:v10];
  v8 = [v7 mutableCopy];

  return v8;
}

- (void)_evaluateBoolSelectorWithPropertyKey:(uint64_t)a1 specifier:(void *)a2 defaultValue:.cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Ignoring non-string %@ property on specifier with id %@", &v4, 0x16u);
}

@end