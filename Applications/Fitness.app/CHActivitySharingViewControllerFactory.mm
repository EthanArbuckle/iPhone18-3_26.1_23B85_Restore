@interface CHActivitySharingViewControllerFactory
+ (id)makeWithAchievementBadgeImageFactory:(id)factory achievementLocalizationProvider:(id)provider achievementsDataProvider:(id)dataProvider activitySharingClient:(id)client awardsDataProvider:(id)awardsDataProvider fitnessAppContext:(id)context fiuiFormattingManager:(id)manager friendListSectionManager:(id)self0 friendsSetupCoordinator:(id)self1 friendManager:(id)self2 healthStore:(id)self3 seymourCatalogItemDataProvider:(id)self4 wheelchairUseCache:(id)self5 workoutDataProvider:(id)self6 workoutFormattingManager:(id)self7 pauseRingsCoordinator:(id)self8;
- (CHActivitySharingViewControllerFactory)init;
@end

@implementation CHActivitySharingViewControllerFactory

+ (id)makeWithAchievementBadgeImageFactory:(id)factory achievementLocalizationProvider:(id)provider achievementsDataProvider:(id)dataProvider activitySharingClient:(id)client awardsDataProvider:(id)awardsDataProvider fitnessAppContext:(id)context fiuiFormattingManager:(id)manager friendListSectionManager:(id)self0 friendsSetupCoordinator:(id)self1 friendManager:(id)self2 healthStore:(id)self3 seymourCatalogItemDataProvider:(id)self4 wheelchairUseCache:(id)self5 workoutDataProvider:(id)self6 workoutFormattingManager:(id)self7 pauseRingsCoordinator:(id)self8
{
  factoryCopy = factory;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  clientCopy = client;
  awardsDataProviderCopy = awardsDataProvider;
  contextCopy = context;
  managerCopy = manager;
  sectionManagerCopy = sectionManager;
  coordinatorCopy = coordinator;
  friendManagerCopy = friendManager;
  storeCopy = store;
  itemDataProviderCopy = itemDataProvider;
  cacheCopy = cache;
  workoutDataProviderCopy = workoutDataProvider;
  formattingManagerCopy = formattingManager;
  ringsCoordinatorCopy = ringsCoordinator;
  v40 = sub_100023A68(factoryCopy, providerCopy, dataProviderCopy, clientCopy, awardsDataProviderCopy, contextCopy, managerCopy, sectionManagerCopy, coordinatorCopy, friendManagerCopy, storeCopy, itemDataProviderCopy, cacheCopy, workoutDataProviderCopy, formattingManagerCopy, ringsCoordinatorCopy);

  return v40;
}

- (CHActivitySharingViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivitySharingViewControllerFactory();
  return [(CHActivitySharingViewControllerFactory *)&v3 init];
}

@end