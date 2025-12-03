@interface NCAppClipDetailController
- (NCAppClipDetailController)init;
- (id)specifiers;
- (void)_updateStoredSectionsWithSectionInfo:(id)info;
- (void)appDetailControllerWillDisappear:(id)disappear;
- (void)dealloc;
- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info;
@end

@implementation NCAppClipDetailController

- (NCAppClipDetailController)init
{
  v5.receiver = self;
  v5.super_class = NCAppClipDetailController;
  v2 = [(NCAppClipDetailController *)&v5 init];
  if (v2)
  {
    v3 = +[NCSettingsGatewayController sharedInstance];
    [v3 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCAppClipDetailController;
  [(NCAppClipDetailController *)&v4 dealloc];
}

- (void)_updateStoredSectionsWithSectionInfo:(id)info
{
  infoCopy = info;
  v5 = OBJC_IVAR___PSViewController__specifier;
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"APP_CLIP_SECTION_INFOS"];
  v7 = [v6 mutableCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_67E4;
  v9[3] = &unk_4D1D0;
  v10 = infoCopy;
  v8 = infoCopy;
  [v7 setObject:v8 atIndexedSubscript:{objc_msgSend(v6, "indexOfObjectPassingTest:", v9)}];
  [*&self->PSListController_opaque[v5] setProperty:v7 forKey:@"APP_CLIP_SECTION_INFOS"];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v17 = OBJC_IVAR___PSListController__specifiers;
    [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"APP_CLIP_SECTION_INFOS"];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      v18 = PSEnabledKey;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          objc_opt_class();
          objc_opt_class();
          v10 = PSApplicationSpecifierForBBSection();
          [v10 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
          v11 = +[MCProfileConnection sharedConnection];
          sectionID = [v9 sectionID];
          v13 = [v11 isNotificationsModificationAllowedForBundleID:sectionID];

          if ((v13 & 1) == 0)
          {
            v14 = [NSNumber numberWithBool:0];
            [v10 setProperty:v14 forKey:v18];
          }

          [v3 addObject:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    objc_storeStrong(&self->PSListController_opaque[v17], v3);

    v4 = *&self->PSListController_opaque[v17];
  }

  v15 = v4;

  return v4;
}

- (void)appDetailControllerWillDisappear:(id)disappear
{
  specifier = [disappear specifier];
  [(NCAppClipDetailController *)self reloadSpecifier:specifier];
}

- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6B78;
  v5[3] = &unk_4D0D8;
  v5[4] = self;
  infoCopy = info;
  v4 = infoCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

@end