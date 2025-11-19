@interface ActivityDashboardContext
- (_TtC10FitnessApp24ActivityDashboardContext)init;
- (_TtC10FitnessApp24ActivityDashboardContext)initWithActivityDataProvider:(id)a3 activityDateCache:(id)a4 achievementsDataProvider:(id)a5 balanceDataProvider:(id)a6 pauseRingsCoordinator:(id)a7 historyDataProvider:(id)a8 workoutFormattingManager:(id)a9 workoutDataProvider:(id)a10 friendListManager:(id)a11 friendsSetupCoordinator:(id)a12 chFriendManager:(id)a13 achievementLocalizationProvider:(id)a14 badgeImageFactory:(id)a15 healthStore:(id)a16 fiuiFormattingManager:(id)a17 fitnessAppContext:(id)a18 wheelchairUseCache:(id)a19 trendsAvailabilityManager:(id)a20 workoutVoiceAvailabilityProvider:(id)a21;
- (void)setStandardActivityItemsViewModel:(id)a3;
@end

@implementation ActivityDashboardContext

- (void)setStandardActivityItemsViewModel:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel) = a3;
  v3 = a3;
}

- (_TtC10FitnessApp24ActivityDashboardContext)initWithActivityDataProvider:(id)a3 activityDateCache:(id)a4 achievementsDataProvider:(id)a5 balanceDataProvider:(id)a6 pauseRingsCoordinator:(id)a7 historyDataProvider:(id)a8 workoutFormattingManager:(id)a9 workoutDataProvider:(id)a10 friendListManager:(id)a11 friendsSetupCoordinator:(id)a12 chFriendManager:(id)a13 achievementLocalizationProvider:(id)a14 badgeImageFactory:(id)a15 healthStore:(id)a16 fiuiFormattingManager:(id)a17 fitnessAppContext:(id)a18 wheelchairUseCache:(id)a19 trendsAvailabilityManager:(id)a20 workoutVoiceAvailabilityProvider:(id)a21
{
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v42 = a6;
  v41 = a7;
  v39 = a8;
  v37 = a9;
  v48 = a10;
  v26 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v38 = a17;
  v40 = a18;
  v43 = a19;
  v27 = a20;
  v47 = a21;
  v28 = v26;
  sub_10042FFD4(v46, v45, v44, v42, v41, v39, v37, v48, v26, v32, v33, v34, v35, v36, v38, v40, v43, v27, v47);
  v30 = v29;

  return v30;
}

- (_TtC10FitnessApp24ActivityDashboardContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end