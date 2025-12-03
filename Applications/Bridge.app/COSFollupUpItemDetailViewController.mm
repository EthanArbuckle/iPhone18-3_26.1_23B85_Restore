@interface COSFollupUpItemDetailViewController
- (id)specifiers;
- (void)completeTask:(id)task;
@end

@implementation COSFollupUpItemDetailViewController

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v16 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    [*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"FollowUpItemKey"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = v21 = 0u;
    obj = [v15 actions];
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          label = [v9 label];
          v11 = [PSSpecifier preferenceSpecifierNamed:label target:self set:0 get:0 detail:0 cell:13 edit:0];

          v12 = [v9 url];
          [v11 setProperty:v12 forKey:@"URLKey"];

          [v11 setButtonAction:"completeTask:"];
          [v4 addObject:v11];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v13 = *&self->BPSListController_opaque[v16];
    *&self->BPSListController_opaque[v16] = v4;

    v3 = *&self->BPSListController_opaque[v16];
  }

  return v3;
}

- (void)completeTask:(id)task
{
  taskCopy = task;
  v5 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.Bridge"];
  v6 = [*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"FollowUpItemKey"];
  uniqueIdentifier = [v6 uniqueIdentifier];
  v18 = uniqueIdentifier;
  v8 = [NSArray arrayWithObjects:&v18 count:1];
  v13 = 0;
  [v5 clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:&v13];
  v9 = v13;

  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    title = [v6 title];
    *buf = 138412546;
    v15 = title;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Completed Task! %@ (Error %@)", buf, 0x16u);
  }

  v12 = [taskCopy propertyForKey:@"URLKey"];

  if (v12)
  {
    BPSOpenSensitiveURLAsync();
  }
}

@end