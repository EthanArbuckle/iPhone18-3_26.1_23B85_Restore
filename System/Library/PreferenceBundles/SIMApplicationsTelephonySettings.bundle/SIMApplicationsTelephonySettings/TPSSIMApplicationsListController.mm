@interface TPSSIMApplicationsListController
- (TPSSIMApplicationsController)SIMApplicationsController;
- (id)specifiers;
- (void)handleApplicationButtonAction:(id)action;
@end

@implementation TPSSIMApplicationsListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    subscriptionContext = [(TPSSIMApplicationsListController *)self subscriptionContext];
    if (subscriptionContext)
    {
      v6 = +[NSMutableArray array];
      sIMApplicationsController = [(TPSSIMApplicationsListController *)self SIMApplicationsController];
      v8 = [sIMApplicationsController localizedSubtitlesForSubscriptionContext:subscriptionContext];

      if ([v8 count])
      {
        sIMApplicationsController2 = [(TPSSIMApplicationsListController *)self SIMApplicationsController];
        v10 = [sIMApplicationsController2 localizedTitleForSubscriptionContext:subscriptionContext];

        v11 = &NSStringFromClass_ptr;
        v21 = v3;
        if ([v10 length])
        {
          [PSSpecifier groupSpecifierWithName:v10];
        }

        else
        {
          +[PSSpecifier emptyGroupSpecifier];
        }
        v12 = ;
        [v6 addObject:v12];

        if ([v8 count])
        {
          v13 = 0;
          do
          {
            v14 = [v8 objectAtIndexedSubscript:v13];
            [v11[34] preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
            v16 = v15 = v11;
            [v16 setButtonAction:"handleApplicationButtonAction:"];
            v17 = [NSNumber numberWithUnsignedInteger:v13];
            [v16 setUserInfo:v17];

            [v6 addObject:v16];
            v11 = v15;

            ++v13;
          }

          while (v13 < [v8 count]);
        }

        v3 = v21;
      }

      v18 = [v6 copy];
      v19 = *&self->TPSListController_opaque[v3];
      *&self->TPSListController_opaque[v3] = v18;
    }

    v4 = *&self->TPSListController_opaque[v3];
  }

  return v4;
}

- (TPSSIMApplicationsController)SIMApplicationsController
{
  SIMApplicationsController = self->_SIMApplicationsController;
  if (!SIMApplicationsController)
  {
    specifier = [(TPSSIMApplicationsListController *)self specifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [specifier propertyForKey:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_SIMApplicationsController, v7);
    }

    SIMApplicationsController = self->_SIMApplicationsController;
  }

  return SIMApplicationsController;
}

- (void)handleApplicationButtonAction:(id)action
{
  userInfo = [action userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sIMApplicationsController = [(TPSSIMApplicationsListController *)self SIMApplicationsController];
    subscriptionContext = [(TPSSIMApplicationsListController *)self subscriptionContext];
    [sIMApplicationsController openApplicationAtIndex:userInfo forSubscriptionContext:subscriptionContext];
  }
}

@end