@interface WFAddQuickReminderActionUIKitUserInterface
- (WFAddQuickReminderActionUIKitUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution;
- (WFPlatterConfiguration)platterConfiguration;
@end

@implementation WFAddQuickReminderActionUIKitUserInterface

- (WFPlatterConfiguration)platterConfiguration
{
  selfCopy = self;
  v3 = sub_23E35C360();

  return v3;
}

- (WFAddQuickReminderActionUIKitUserInterface)initWithUserInterfaceType:(id)type attribution:(id)attribution
{
  typeCopy = type;
  attributionCopy = attribution;
  return sub_23E35C618(typeCopy, attribution);
}

@end