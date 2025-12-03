@interface CHASAdvancedGoalViewFactory
+ (id)makeViewWithGoalSchedule:(id)schedule goalDaysModel:(id)model wheelchairUser:(BOOL)user goalType:(int64_t)type formattingManager:(id)manager showFooter:(BOOL)footer;
- (CHASAdvancedGoalViewFactory)init;
@end

@implementation CHASAdvancedGoalViewFactory

+ (id)makeViewWithGoalSchedule:(id)schedule goalDaysModel:(id)model wheelchairUser:(BOOL)user goalType:(int64_t)type formattingManager:(id)manager showFooter:(BOOL)footer
{
  footerCopy = footer;
  userCopy = user;
  scheduleCopy = schedule;
  modelCopy = model;
  managerCopy = manager;
  v16 = sub_15824(modelCopy, userCopy, type, managerCopy, footerCopy);

  return v16;
}

- (CHASAdvancedGoalViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return [(CHASAdvancedGoalViewFactory *)&v3 init];
}

@end