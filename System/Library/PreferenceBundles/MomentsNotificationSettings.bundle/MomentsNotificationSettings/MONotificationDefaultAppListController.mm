@interface MONotificationDefaultAppListController
+ (id)notificationSettingsBundle;
- (id)specifiers;
@end

@implementation MONotificationDefaultAppListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[MONotificationDefaultAppListController notificationSettingsBundle];
    v6 = objc_alloc_init(NSMutableArray);
    v16.receiver = self;
    v16.super_class = MONotificationDefaultAppListController;
    specifiers = [(MONotificationDefaultAppListController *)&v16 specifiers];
    [v6 addObjectsFromArray:specifiers];

    firstObject = [v6 firstObject];
    v9 = [v5 localizedStringForKey:@"Choose an app to open journaling notifications." value:&stru_C5D8 table:0];
    [firstObject setProperty:v9 forKey:PSFooterTextGroupKey];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __52__MONotificationDefaultAppListController_specifiers__block_invoke;
    v14[3] = &unk_C388;
    v10 = v6;
    v15 = v10;
    [v10 enumerateObjectsUsingBlock:v14];
    v11 = *&self->PSListItemsController_opaque[v3];
    *&self->PSListItemsController_opaque[v3] = v10;
    v12 = v10;

    v4 = *&self->PSListItemsController_opaque[v3];
  }

  return v4;
}

void __52__MONotificationDefaultAppListController_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ([v8 cellType] == &dword_0 + 3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v6 = [v8 identifier];
    [v5 setProperty:v6 forKey:PSLazyIconAppID];

    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v7 setProperty:@"YES" forKey:PSLazyIconLoading];
  }
}

+ (id)notificationSettingsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

@end