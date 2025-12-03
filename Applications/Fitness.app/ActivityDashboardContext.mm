@interface ActivityDashboardContext
- (_TtC10FitnessApp24ActivityDashboardContext)init;
- (_TtC10FitnessApp24ActivityDashboardContext)initWithActivityDataProvider:(id)provider activityDateCache:(id)cache achievementsDataProvider:(id)dataProvider balanceDataProvider:(id)balanceDataProvider pauseRingsCoordinator:(id)coordinator historyDataProvider:(id)historyDataProvider workoutFormattingManager:(id)manager workoutDataProvider:(id)self0 friendListManager:(id)self1 friendsSetupCoordinator:(id)self2 chFriendManager:(id)self3 achievementLocalizationProvider:(id)self4 badgeImageFactory:(id)self5 healthStore:(id)self6 fiuiFormattingManager:(id)self7 fitnessAppContext:(id)self8 wheelchairUseCache:(id)self9 trendsAvailabilityManager:(id)availabilityManager workoutVoiceAvailabilityProvider:(id)availabilityProvider;
- (void)setStandardActivityItemsViewModel:(id)model;
@end

@implementation ActivityDashboardContext

- (void)setStandardActivityItemsViewModel:(id)model
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel) = model;
  modelCopy = model;
}

- (_TtC10FitnessApp24ActivityDashboardContext)initWithActivityDataProvider:(id)provider activityDateCache:(id)cache achievementsDataProvider:(id)dataProvider balanceDataProvider:(id)balanceDataProvider pauseRingsCoordinator:(id)coordinator historyDataProvider:(id)historyDataProvider workoutFormattingManager:(id)manager workoutDataProvider:(id)self0 friendListManager:(id)self1 friendsSetupCoordinator:(id)self2 chFriendManager:(id)self3 achievementLocalizationProvider:(id)self4 badgeImageFactory:(id)self5 healthStore:(id)self6 fiuiFormattingManager:(id)self7 fitnessAppContext:(id)self8 wheelchairUseCache:(id)self9 trendsAvailabilityManager:(id)availabilityManager workoutVoiceAvailabilityProvider:(id)availabilityProvider
{
  providerCopy = provider;
  cacheCopy = cache;
  dataProviderCopy = dataProvider;
  balanceDataProviderCopy = balanceDataProvider;
  coordinatorCopy = coordinator;
  historyDataProviderCopy = historyDataProvider;
  managerCopy = manager;
  workoutDataProviderCopy = workoutDataProvider;
  listManagerCopy = listManager;
  setupCoordinatorCopy = setupCoordinator;
  friendManagerCopy = friendManager;
  localizationProviderCopy = localizationProvider;
  factoryCopy = factory;
  storeCopy = store;
  formattingManagerCopy = formattingManager;
  contextCopy = context;
  useCacheCopy = useCache;
  availabilityManagerCopy = availabilityManager;
  availabilityProviderCopy = availabilityProvider;
  v28 = listManagerCopy;
  sub_10042FFD4(providerCopy, cacheCopy, dataProviderCopy, balanceDataProviderCopy, coordinatorCopy, historyDataProviderCopy, managerCopy, workoutDataProviderCopy, listManagerCopy, setupCoordinatorCopy, friendManagerCopy, localizationProviderCopy, factoryCopy, storeCopy, formattingManagerCopy, contextCopy, useCacheCopy, availabilityManagerCopy, availabilityProviderCopy);
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