@interface SafariSettingsListController
- (BOOL)_evaluateBoolSelectorWithPropertyKey:(id)key specifier:(id)specifier defaultValue:(BOOL)value;
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push;
- (BOOL)userInterfaceIdiomIsPhone:(id)phone;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)safariDefaultsValueForKey:(id)key;
- (id)safariSharedDefaultsValueForKey:(id)key;
- (void)postDistributedNotificationNamed:(__CFString *)named;
- (void)setSafariDefaultsValue:(id)value forKey:(id)key;
- (void)setSafariSharedDefaultsValue:(id)value forKey:(id)key;
- (void)synchronizeSafariDefaults;
- (void)synchronizeSafariSharedDefaults;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateRestrictionsForSpecifiers:(id)specifiers;
@end

@implementation SafariSettingsListController

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v10 = [(SafariSettingsListController *)self specifierForID:dCopy];
  if ([objc_msgSend(v10 "detailControllerClass")])
  {
    v11 = [(SafariSettingsListController *)self controllerForSpecifier:v10];
    [_SFSettingsAuthentication pushSettingsAfterAuthentication:v11 onBehalfOfViewController:self resourceDictionary:dictionaryCopy completionHandler:&__block_literal_global_19];

    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SafariSettingsListController;
    v12 = [(SafariSettingsListController *)&v14 prepareHandlingURLForSpecifierID:dCopy resourceDictionary:dictionaryCopy animatePush:push];
  }

  return v12;
}

- (void)postDistributedNotificationNamed:(__CFString *)named
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, named, 0, 0, 0);
}

- (void)setSafariDefaultsValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v7 = +[NSUserDefaults safari_browserDefaults];
  [v7 setObject:valueCopy forKey:keyCopy];
}

- (id)safariDefaultsValueForKey:(id)key
{
  keyCopy = key;
  v4 = +[NSUserDefaults safari_browserDefaults];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (void)synchronizeSafariDefaults
{
  v2 = +[NSUserDefaults safari_browserDefaults];
  [v2 synchronize];
}

- (void)setSafariSharedDefaultsValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v7 = +[NSUserDefaults safari_browserSharedDefaults];
  [v7 setObject:valueCopy forKey:keyCopy];
}

- (id)safariSharedDefaultsValueForKey:(id)key
{
  keyCopy = key;
  v4 = +[NSUserDefaults safari_browserSharedDefaults];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (void)synchronizeSafariSharedDefaults
{
  v2 = +[NSUserDefaults safari_browserSharedDefaults];
  [v2 synchronize];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[SafariSettingsListController indexForIndexPath:](self, "indexForIndexPath:", pathCopy)}];
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
    [(SafariSettingsListController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    goto LABEL_7;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __66__SafariSettingsListController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_8A650;
  v14 = viewCopy;
  v15 = pathCopy;
  selfCopy = self;
  [_SFSettingsAuthentication authenticateForSettings:v9 allowAuthenticationReuse:1 completionHandler:v13];
  v10 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
  indexPathForSelectedRow = [v10 indexPathForSelectedRow];
  [v10 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

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

- (BOOL)_evaluateBoolSelectorWithPropertyKey:(id)key specifier:(id)specifier defaultValue:(BOOL)value
{
  keyCopy = key;
  specifierCopy = specifier;
  v10 = [specifierCopy propertyForKey:keyCopy];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v12 = NSSelectorFromString(v11);
      if (objc_opt_respondsToSelector())
      {
        value = [self v12];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        identifier = [specifierCopy identifier];
        v15 = 138413058;
        v16 = keyCopy;
        v17 = 2112;
        v18 = identifier;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = objc_opt_class();
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Ignoring invalid %@ property on specifier with id %@. Could not find a method named %@ in class %@", &v15, 0x2Au);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [SafariSettingsListController _evaluateBoolSelectorWithPropertyKey:keyCopy specifier:specifierCopy defaultValue:?];
    }
  }

  return value;
}

- (void)updateRestrictionsForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [specifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(specifiersCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [NSNumber numberWithInt:[(SafariSettingsListController *)self _evaluateBoolSelectorWithPropertyKey:@"safariRestricted" specifier:v10 defaultValue:0]^ 1];
        [v10 setProperty:v11 forKey:v8];
      }

      v6 = [specifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)userInterfaceIdiomIsPhone:(id)phone
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom] == 0;

  return v4;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = SafariSettingsListController;
  v6 = [(SafariSettingsListController *)&v11 loadSpecifiersFromPlistName:name target:target bundle:bundle];
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