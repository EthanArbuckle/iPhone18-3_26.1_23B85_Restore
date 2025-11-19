@interface CHActivitySharingViewControllerFactory
+ (id)makeWithAchievementBadgeImageFactory:(id)a3 achievementLocalizationProvider:(id)a4 achievementsDataProvider:(id)a5 activitySharingClient:(id)a6 awardsDataProvider:(id)a7 fitnessAppContext:(id)a8 fiuiFormattingManager:(id)a9 friendListSectionManager:(id)a10 friendsSetupCoordinator:(id)a11 friendManager:(id)a12 healthStore:(id)a13 seymourCatalogItemDataProvider:(id)a14 wheelchairUseCache:(id)a15 workoutDataProvider:(id)a16 workoutFormattingManager:(id)a17 pauseRingsCoordinator:(id)a18;
- (CHActivitySharingViewControllerFactory)init;
@end

@implementation CHActivitySharingViewControllerFactory

+ (id)makeWithAchievementBadgeImageFactory:(id)a3 achievementLocalizationProvider:(id)a4 achievementsDataProvider:(id)a5 activitySharingClient:(id)a6 awardsDataProvider:(id)a7 fitnessAppContext:(id)a8 fiuiFormattingManager:(id)a9 friendListSectionManager:(id)a10 friendsSetupCoordinator:(id)a11 friendManager:(id)a12 healthStore:(id)a13 seymourCatalogItemDataProvider:(id)a14 wheelchairUseCache:(id)a15 workoutDataProvider:(id)a16 workoutFormattingManager:(id)a17 pauseRingsCoordinator:(id)a18
{
  v39 = a3;
  v38 = a4;
  v36 = a5;
  v34 = a6;
  v23 = a7;
  v32 = a8;
  v30 = a9;
  v29 = a10;
  v24 = a11;
  v27 = a12;
  v28 = a13;
  v31 = a14;
  v33 = a15;
  v35 = a16;
  v37 = a17;
  v25 = a18;
  v40 = sub_100023A68(v39, v38, v36, v34, v23, v32, v30, v29, v24, v27, v28, v31, v33, v35, v37, v25);

  return v40;
}

- (CHActivitySharingViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySharingViewControllerFactory();
  return [(CHActivitySharingViewControllerFactory *)&v3 init];
}

@end