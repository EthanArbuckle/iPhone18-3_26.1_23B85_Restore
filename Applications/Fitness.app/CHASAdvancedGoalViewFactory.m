@interface CHASAdvancedGoalViewFactory
+ (id)makeViewWithGoalSchedule:(id)a3 goalDaysModel:(id)a4 wheelchairUser:(BOOL)a5 goalType:(int64_t)a6 formattingManager:(id)a7 showFooter:(BOOL)a8;
- (CHASAdvancedGoalViewFactory)init;
@end

@implementation CHASAdvancedGoalViewFactory

+ (id)makeViewWithGoalSchedule:(id)a3 goalDaysModel:(id)a4 wheelchairUser:(BOOL)a5 goalType:(int64_t)a6 formattingManager:(id)a7 showFooter:(BOOL)a8
{
  v8 = a8;
  v11 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = sub_1004D9694(v14, v11, a6, v15, v8);

  return v16;
}

- (CHASAdvancedGoalViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return [(CHASAdvancedGoalViewFactory *)&v3 init];
}

@end