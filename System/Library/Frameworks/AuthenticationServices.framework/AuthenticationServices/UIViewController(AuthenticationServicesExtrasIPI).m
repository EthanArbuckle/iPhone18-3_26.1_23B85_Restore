@interface UIViewController(AuthenticationServicesExtrasIPI)
- (void)setAs_navigationItem:()AuthenticationServicesExtrasIPI;
@end

@implementation UIViewController(AuthenticationServicesExtrasIPI)

- (void)setAs_navigationItem:()AuthenticationServicesExtrasIPI
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    [UIViewController(AuthenticationServicesExtrasIPI) setAs_navigationItem:v0];
  }
}

@end