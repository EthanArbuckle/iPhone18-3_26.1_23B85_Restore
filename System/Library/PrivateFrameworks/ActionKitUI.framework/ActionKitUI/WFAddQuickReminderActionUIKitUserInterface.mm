@interface WFAddQuickReminderActionUIKitUserInterface
- (WFAddQuickReminderActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (WFPlatterConfiguration)platterConfiguration;
@end

@implementation WFAddQuickReminderActionUIKitUserInterface

- (WFPlatterConfiguration)platterConfiguration
{
  v2 = self;
  v3 = sub_23E35C360();

  return v3;
}

- (WFAddQuickReminderActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_23E35C618(v5, a4);
}

@end