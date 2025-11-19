@interface MessagingSettingsProvider
- (void)subscriptionInfoDidChange;
- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4;
@end

@implementation MessagingSettingsProvider

- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21BB0F310(v6, v7);
}

- (void)subscriptionInfoDidChange
{
  v2 = self;
  sub_21BB0FC30();
}

@end