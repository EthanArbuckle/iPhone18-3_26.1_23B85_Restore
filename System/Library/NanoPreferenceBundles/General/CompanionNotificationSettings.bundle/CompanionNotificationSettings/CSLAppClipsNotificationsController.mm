@interface CSLAppClipsNotificationsController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation CSLAppClipsNotificationsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CSLAppClipsNotificationsController;
  [(CSLAppClipsNotificationsController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_CLIPS_TITLE" value:&stru_C638 table:@"Notifications-DimSum"];
  [(CSLAppClipsNotificationsController *)self setTitle:v4];
}

- (id)specifiers
{
  specifier = [(CSLAppClipsNotificationsController *)self specifier];
  v4 = [specifier propertyForKey:@"AppClipSpecifiers"];

  if (v4)
  {
    objc_storeStrong(&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v4);
    v5 = v4;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_57A0();
  }

  return v4;
}

@end