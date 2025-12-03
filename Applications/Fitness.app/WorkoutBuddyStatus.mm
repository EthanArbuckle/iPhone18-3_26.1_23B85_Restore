@interface WorkoutBuddyStatus
+ (id)makeSummaryUIViewWithIsWorkoutConfiguredWithWorkoutBuddy:(BOOL)buddy isWorkoutBuddyMuted:(BOOL)muted isWorkoutBuddyHeadphonesOff:(BOOL)off;
- (_TtC10FitnessApp18WorkoutBuddyStatus)init;
@end

@implementation WorkoutBuddyStatus

+ (id)makeSummaryUIViewWithIsWorkoutConfiguredWithWorkoutBuddy:(BOOL)buddy isWorkoutBuddyMuted:(BOOL)muted isWorkoutBuddyHeadphonesOff:(BOOL)off
{
  v5 = type metadata accessor for WorkoutBuddySummaryTitleView();
  __chkstk_darwin(v5 - 8);
  WorkoutBuddySummaryTitleView.init(isWorkoutConfiguredWithWorkoutBuddy:isWorkoutBuddyMuted:isWorkoutBuddyHeadphonesOff:)();
  v6 = objc_allocWithZone(sub_100140278(&qword_1008DCBA0));
  v7 = _UIHostingView.init(rootView:)();

  return v7;
}

- (_TtC10FitnessApp18WorkoutBuddyStatus)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutBuddyStatus();
  return [(WorkoutBuddyStatus *)&v3 init];
}

@end