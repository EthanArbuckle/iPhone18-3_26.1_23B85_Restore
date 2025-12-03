@interface MessagingSettingsProvider
- (void)subscriptionInfoDidChange;
- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration;
@end

@implementation MessagingSettingsProvider

- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  selfCopy = self;
  sub_21BB0F310(changedCopy, configurationCopy);
}

- (void)subscriptionInfoDidChange
{
  selfCopy = self;
  sub_21BB0FC30();
}

@end