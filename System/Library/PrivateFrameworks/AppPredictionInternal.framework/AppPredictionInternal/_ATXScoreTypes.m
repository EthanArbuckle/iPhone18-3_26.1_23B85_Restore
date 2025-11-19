@interface _ATXScoreTypes
+ (id)aggdStringForScoreInput:(unint64_t)a3;
+ (id)scoreInputsToNames;
+ (id)stringForScoreInput:(unint64_t)a3;
+ (unint64_t)mappingForDayOfWeekDistributionSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4;
+ (unint64_t)mappingForTimeOfDayDistributionSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4;
+ (unint64_t)mappingForTopRankedCoarseGeoHashSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4;
+ (unint64_t)mappingForTopRankedGeoHashSignalsWithResolution:(unint64_t)a3 withRank:(unint64_t)a4 forScoreInputCategory:(unint64_t)a5;
+ (unint64_t)mappingForTopRankedSpecificGeoHashSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4;
+ (unint64_t)mappingForTopRankedZoom7GeoHashSignals:(unint64_t)a3;
+ (unint64_t)scoreInputForAggdString:(id)a3;
+ (unint64_t)scoreInputForString:(id)a3;
+ (void)iterScoreInputsWithBlock:(id)a3;
@end

@implementation _ATXScoreTypes

+ (id)stringForScoreInput:(unint64_t)a3
{
  result = @"_ATXScoreInputAppInFolder";
  switch(a3)
  {
    case 0uLL:
      result = @"_ATXScoreInputInstallAge";
      break;
    case 1uLL:
      result = @"_ATXScoreInputLastSpotlightLaunchAge";
      break;
    case 2uLL:
      result = @"_ATXScoreInputLastLaunchAge";
      break;
    case 3uLL:
      result = @"_ATXScoreInputMedianSecondsBetweenLaunches";
      break;
    case 4uLL:
      result = @"_ATXScoreInputAverageSecondsBetweenLaunches";
      break;
    case 5uLL:
      result = @"_ATXScoreInputUnlockTime";
      break;
    case 6uLL:
      return result;
    case 7uLL:
      result = @"_ATXScoreInputFolderPage";
      break;
    case 8uLL:
      result = @"_ATXScoreInputHasSpringBoardPage";
      break;
    case 9uLL:
      result = @"_ATXScoreInputSpringBoardPage";
      break;
    case 0xAuLL:
      result = @"_ATXScoreInputOnSpringBoardDock";
      break;
    case 0xBuLL:
      result = @"_ATXScoreInputFeedback";
      break;
    case 0xCuLL:
      result = @"_ATXScoreInputFeedbackConfirms";
      break;
    case 0xDuLL:
      result = @"_ATXScoreInputFeedbackRejects";
      break;
    case 0xEuLL:
      result = @"_ATXScoreInputAPRExplicitConfirmRatio";
      break;
    case 0xFuLL:
      result = @"_ATXScoreInputAPRExplicitRejectRatio";
      break;
    case 0x10uLL:
      result = @"_ATXScoreInputAPRImplicitConfirmRatio";
      break;
    case 0x11uLL:
      result = @"_ATXScoreInputAPRImplicitRejectRatio";
      break;
    case 0x12uLL:
      result = @"_ATXScoreInputAPRSiriKitIntentsRatio";
      break;
    case 0x13uLL:
      result = @"_ATXScoreInputAPRNonSiriKitIntentsRatio";
      break;
    case 0x14uLL:
      result = @"_ATXScoreInputAPRTotalExplicitConfirms";
      break;
    case 0x15uLL:
      result = @"_ATXScoreInputAPRTotalExplicitRejects";
      break;
    case 0x16uLL:
      result = @"_ATXScoreInputAPRTotalImplicitConfirms";
      break;
    case 0x17uLL:
      result = @"_ATXScoreInputAPRTotalImplicitRejects";
      break;
    case 0x18uLL:
      result = @"_ATXScoreInputAPRSiriKitTotalIntents";
      break;
    case 0x19uLL:
      result = @"_ATXScoreInputAPRNonSiriKitTotalIntents";
      break;
    case 0x1AuLL:
      result = @"_ATXScoreInputLaunchTimePopularity";
      break;
    case 0x1BuLL:
      result = @"_ATXScoreInputTimeOfDayPopularity";
      break;
    case 0x1CuLL:
      result = @"_ATXScoreInputCoarseTimeOfDayPopularity";
      break;
    case 0x1DuLL:
      result = @"_ATXScoreInputLaunchPopularity";
      break;
    case 0x1EuLL:
      result = @"_ATXScoreInputSpotlightLaunchTimePopularity";
      break;
    case 0x1FuLL:
      result = @"_ATXScoreInputSpotlightTimeOfDayPopularity";
      break;
    case 0x20uLL:
      result = @"_ATXScoreInputSpotlightLaunchPopularity";
      break;
    case 0x21uLL:
      result = @"_ATXScoreInputDayZeroPoints";
      break;
    case 0x22uLL:
      result = @"_ATXScoreInputStaticAppPoints";
      break;
    case 0x23uLL:
      result = @"_ATXScoreInputLaunchDayOfWeekPopularity";
      break;
    case 0x24uLL:
      result = @"_ATXScoreInputDayOfWeekPopularity";
      break;
    case 0x25uLL:
      result = @"_ATXScoreInputLaunchSequencePopularity";
      break;
    case 0x26uLL:
      result = @"_ATXScoreInputLaunchLocationPopularity";
      break;
    case 0x27uLL:
      result = @"_ATXScoreInputAppLaunchMicroLocationPopularity";
      break;
    case 0x28uLL:
      result = @"_ATXScoreInputEntropyLaunchPopularity";
      break;
    case 0x29uLL:
      result = @"_ATXScoreInputEntropyDayOfWeekPopularity";
      break;
    case 0x2AuLL:
      result = @"_ATXScoreInputEntropyDayOfWeekPopularityByDay";
      break;
    case 0x2BuLL:
      result = @"_ATXScoreInputEntropyDayOfWeekPopularityByApp";
      break;
    case 0x2CuLL:
      result = @"_ATXScoreInputDistanceDayOfWeekToLaunchPopularity";
      break;
    case 0x2DuLL:
      result = @"_ATXScoreInputEntropyTrendingPopularity";
      break;
    case 0x2EuLL:
      result = @"_ATXScoreInputDistanceTrendingToLaunchPopularity";
      break;
    case 0x2FuLL:
      result = @"_ATXScoreInputEntropySSIDPopularity";
      break;
    case 0x30uLL:
      result = @"_ATXScoreInputEntropySSIDPopularityBySSID";
      break;
    case 0x31uLL:
      result = @"_ATXScoreInputEntropySSIDPopularityByApp";
      break;
    case 0x32uLL:
      result = @"_ATXScoreInputDistanceSSIDToLaunchPopularity";
      break;
    case 0x33uLL:
      result = @"_ATXScoreInputAppCount";
      break;
    case 0x34uLL:
      result = @"_ATXScoreInputDistanceToExplicitLaunchPrediction";
      break;
    case 0x35uLL:
      result = @"_ATXScoreInputSiriKitIntentParzen";
      break;
    case 0x36uLL:
      result = @"_ATXScoreInputNonSiriKitIntentParzen";
      break;
    case 0x37uLL:
      result = @"_ATXScoreInputAppDailyDose";
      break;
    case 0x38uLL:
      result = @"_ATXScoreInputCurrentDose";
      break;
    case 0x39uLL:
      result = @"_ATXScoreInputAppDailyDoseRemaining";
      break;
    case 0x3AuLL:
      result = @"_ATXScoreInputAppDailyDoseSmoothedError";
      break;
    case 0x3BuLL:
      result = @"_ATXScoreInputTotalNumberOfLaunches";
      break;
    case 0x3CuLL:
      result = @"_ATXScoreInputTotalNumberOfSpotlightLaunches";
      break;
    case 0x3DuLL:
      result = @"_ATXScoreInputAirplaneModePopularity";
      break;
    case 0x3EuLL:
      result = @"_ATXScoreInputTotalNumberOfAirplaneModeLaunches";
      break;
    case 0x3FuLL:
      result = @"_ATXScoreInputTrendingPopularity";
      break;
    case 0x40uLL:
      result = @"_ATXScoreInputTotalNumberOfTrendingLaunches";
      break;
    case 0x41uLL:
      result = @"_ATXScoreInputSSIDPopularity";
      break;
    case 0x42uLL:
      result = @"_ATXScoreInputTotalNumberOfSSIDLaunches";
      break;
    case 0x43uLL:
      result = @"_ATXScoreInputOnWifi";
      break;
    case 0x44uLL:
      result = @"_ATXScoreInputCoreMotionPopularity";
      break;
    case 0x45uLL:
      result = @"_ATXScoreInputTotalNumberOfCoreMotionLaunches";
      break;
    case 0x46uLL:
      result = @"_ATXScoreInputMagicalMomentsConfidence";
      break;
    case 0x47uLL:
      result = @"_ATXScoreInputMagicalMomentsPredictionReason";
      break;
    case 0x48uLL:
      result = @"_ATXScoreInputMagicalMomentsAnchor";
      break;
    case 0x49uLL:
      result = @"_ATXScoreInputHeroAppConfidence";
      break;
    case 0x4AuLL:
      result = @"_ATXScoreInputHeroAppPredictionReason";
      break;
    case 0x4BuLL:
      result = @"_ATXScoreInputMagicalMomentsHeroAppPredictionIndex";
      break;
    case 0x4CuLL:
      result = @"_ATXScoreInputMagicalMomentsHeroAppPredictionTotalPredictions";
      break;
    case 0x4DuLL:
      result = @"_ATXScoreInputMostRecentNotificationAge";
      break;
    case 0x4EuLL:
      result = @"_ATXScoreInputAppPreferenceBundleBoost";
      break;
    case 0x4FuLL:
      result = @"_ATXScoreInputAppIntentPartOfWeekPopularity";
      break;
    case 0x50uLL:
      result = @"_ATXScoreInputAppIntentLaunchPartOfWeekPopularity";
      break;
    case 0x51uLL:
      result = @"_ATXScoreInputGenreTimeOfDayPopularity";
      break;
    case 0x52uLL:
      result = @"_ATXScoreInputGenreSequencePopularity";
      break;
    case 0x53uLL:
      result = @"_ATXScoreInputGenreDayOfWeekPopularity";
      break;
    case 0x54uLL:
      result = @"_ATXScoreInputGenreSpotlightLaunchPopularity";
      break;
    case 0x55uLL:
      result = @"_ATXScoreInputTrendingGenrePopularity";
      break;
    case 0x56uLL:
      result = @"_ATXScoreInputGenreAirplaneModePopularity";
      break;
    case 0x57uLL:
      result = @"_ATXScoreInputGenreDailyDoseRemaining";
      break;
    case 0x58uLL:
      result = @"_ATXScoreInputGenreLocationPopularity";
      break;
    case 0x59uLL:
      result = @"_ATXScoreInputGenreSSIDPopularity";
      break;
    case 0x5AuLL:
      result = @"_ATXScoreInputApp2VecClusterTimeOfDayPopularity";
      break;
    case 0x5BuLL:
      result = @"_ATXScoreInputApp2VecClusterSequencePopularity";
      break;
    case 0x5CuLL:
      result = @"_ATXScoreInputApp2VecClusterDayOfWeekPopularity";
      break;
    case 0x5DuLL:
      result = @"_ATXScoreInputApp2VecClusterTrendingPopularity";
      break;
    case 0x5EuLL:
      result = @"_ATXScoreInputApp2VecClusterLocationPopularity";
      break;
    case 0x5FuLL:
      result = @"_ATXScoreInputApp2VecClusterCount";
      break;
    case 0x60uLL:
      result = @"_ATXScoreInputSupportsMedia";
      break;
    case 0x61uLL:
      result = @"_ATXScoreInputAppTimeAndDayOfWeekPopularity";
      break;
    case 0x62uLL:
      result = @"_ATXScoreInputAppPopularityGivenTimeAndDayOfWeek";
      break;
    case 0x63uLL:
      result = @"_ATXScoreInputAppPopularityOfTimeAndDayOfWeekGivenApp";
      break;
    case 0x64uLL:
      result = @"_ATXScoreInputAppTotalNumberOfTimeAndDayOfWeekLaunches";
      break;
    case 0x65uLL:
      result = @"_ATXScoreInputAppIntentCount";
      break;
    case 0x66uLL:
      result = @"_ATXScoreInputAppIntentSlotCountForAllAppActions";
      break;
    case 0x67uLL:
      result = @"_ATXScoreInputAppIntentTotalNumberOfLaunches";
      break;
    case 0x68uLL:
      result = @"_ATXScoreInputAppIntentTotalNumberOfAirplaneModeLaunches";
      break;
    case 0x69uLL:
      result = @"_ATXScoreInputAppIntentTotalNumberOfSSIDLaunches";
      break;
    case 0x6AuLL:
      result = @"_ATXScoreInputAppIntentTotalNumberOfCoreMotionLaunches";
      break;
    case 0x6BuLL:
      result = @"_ATXScoreInputAppIntentTotalNumberOfTrendingLaunches";
      break;
    case 0x6CuLL:
      result = @"_ATXScoreInputDayOfWeekBucket";
      break;
    case 0x6DuLL:
      result = @"_ATXScoreInputTimeOfDayBucket";
      break;
    case 0x6EuLL:
      result = @"_ATXScoreInputIsDateInWeekendOnDevice";
      break;
    case 0x6FuLL:
      result = @"_ATXScoreInputAppIntentLaunchPopularity";
      break;
    case 0x70uLL:
      result = @"_ATXScoreInputAppIntentTrendingPopularity";
      break;
    case 0x71uLL:
      result = @"_ATXScoreInputAppIntentTimeOfDayPopularity";
      break;
    case 0x72uLL:
      result = @"_ATXScoreInputAppIntentCoarseTimeOfDayPopularity";
      break;
    case 0x73uLL:
      result = @"_ATXScoreInputAppIntentDayOfWeekPopularity";
      break;
    case 0x74uLL:
      result = @"_ATXScoreInputAppIntentUnlockTime";
      break;
    case 0x75uLL:
      result = @"_ATXScoreInputAppIntentSSIDPopularity";
      break;
    case 0x76uLL:
      result = @"_ATXScoreInputAppIntentCoreMotionPopularity";
      break;
    case 0x77uLL:
      result = @"_ATXScoreInputAppIntentAirplaneModePopularity";
      break;
    case 0x78uLL:
      result = @"_ATXScoreInputAppIntentLaunchLocationPopularity";
      break;
    case 0x79uLL:
      result = @"_ATXScoreInputAppIntentLaunchMicroLocationPopularity";
      break;
    case 0x7AuLL:
      result = @"_ATXScoreInputAppIntentLaunchSequencePopularity";
      break;
    case 0x7BuLL:
      result = @"_ATXScoreInputAppIntentAppLaunchSequencePopularity";
      break;
    case 0x7CuLL:
      result = @"_ATXScoreInputAppIntentLaunchTimePopularity";
      break;
    case 0x7DuLL:
      result = @"_ATXScoreInputAppIntentLaunchDayOfWeekPopularity";
      break;
    case 0x7EuLL:
      result = @"_ATXScoreInputAppIntentLastLaunchAge";
      break;
    case 0x7FuLL:
      result = @"_ATXScoreInputAppIntentAverageSecondsBetweenAppActions";
      break;
    case 0x80uLL:
      result = @"_ATXScoreInputAppIntentMedianSecondsBetweenAppActions";
      break;
    case 0x81uLL:
      result = @"_ATXScoreInputAppIntentDayZeroPoints";
      break;
    case 0x82uLL:
      result = @"_ATXScoreInputAppIntentStaticPoints";
      break;
    case 0x83uLL:
      result = @"_ATXScoreInputAppIntentValueScore";
      break;
    case 0x84uLL:
      result = @"_ATXScoreInputAppCategory";
      break;
    case 0x85uLL:
      result = @"_ATXScoreInputIntentCategory";
      break;
    case 0x86uLL:
      result = @"_ATXScoreInputActionKeyCategory";
      break;
    case 0x87uLL:
      result = @"_ATXScoreInputIntentCategoryFromIntentDefinition";
      break;
    case 0x88uLL:
      result = @"_ATXScoreInputAppIntentEntropyLaunchPopularity";
      break;
    case 0x89uLL:
      result = @"_ATXScoreInputAppIntentEntropyDayOfWeekPopularity";
      break;
    case 0x8AuLL:
      result = @"_ATXScoreInputAppIntentEntropyDayOfWeekPopularityByDay";
      break;
    case 0x8BuLL:
      result = @"_ATXScoreInputAppIntentEntropyDayOfWeekPopularityByAppIntent";
      break;
    case 0x8CuLL:
      result = @"_ATXScoreInputAppIntentEntropyTrendingPopularity";
      break;
    case 0x8DuLL:
      result = @"_ATXScoreInputAppIntentEntropySSIDPopularity";
      break;
    case 0x8EuLL:
      result = @"_ATXScoreInputAppIntentEntropySSIDPopularityBySSID";
      break;
    case 0x8FuLL:
      result = @"_ATXScoreInputAppIntentEntropySSIDPopularityByAppIntent";
      break;
    case 0x90uLL:
      result = @"_ATXScoreInputAppIntentDistanceDayOfWeekToLaunchPopularity";
      break;
    case 0x91uLL:
      result = @"_ATXScoreInputAppIntentDistanceTrendingToLaunchPopularity";
      break;
    case 0x92uLL:
      result = @"_ATXScoreInputAppIntentDistanceSSIDToLaunchPopularity";
      break;
    case 0x93uLL:
      result = @"_ATXScoreInputAppActionConfirmEvents";
      break;
    case 0x94uLL:
      result = @"_ATXScoreInputAppActionRejectEvents";
      break;
    case 0x95uLL:
      result = @"_ATXScoreInputTotalAppActionConfirmEvents";
      break;
    case 0x96uLL:
      result = @"_ATXScoreInputTotalAppActionRejectEvents";
      break;
    case 0x97uLL:
      result = @"_ATXScoreInputAppForAllIntentsCount";
      break;
    case 0x98uLL:
      result = @"_ATXScoreInputAppForAllIntentsTotalNumberOfLaunches";
      break;
    case 0x99uLL:
      result = @"_ATXScoreInputAppForAllIntentsTotalNumberOfAirplaneModeLaunches";
      break;
    case 0x9AuLL:
      result = @"_ATXScoreInputAppForAllIntentsTotalNumberOfSSIDLaunches";
      break;
    case 0x9BuLL:
      result = @"_ATXScoreInputAppForAllIntentsTotalNumberOfCoreMotionLaunches";
      break;
    case 0x9CuLL:
      result = @"_ATXScoreInputAppForAllIntentsTotalNumberOfTrendingLaunches";
      break;
    case 0x9DuLL:
      result = @"_ATXScoreInputAppForAllIntentsLaunchPopularity";
      break;
    case 0x9EuLL:
      result = @"_ATXScoreInputAppForAllIntentsTimeOfDayPopularity";
      break;
    case 0x9FuLL:
      result = @"_ATXScoreInputAppForAllIntentsDayOfWeekPopularity";
      break;
    case 0xA0uLL:
      result = @"_ATXScoreInputAppForAllIntentsCoarseTimeOfDayPopularity";
      break;
    case 0xA1uLL:
      result = @"_ATXScoreInputAppForAllIntentsUnlockTime";
      break;
    case 0xA2uLL:
      result = @"_ATXScoreInputAppForAllIntentsAirplaneModePopularity";
      break;
    case 0xA3uLL:
      result = @"_ATXScoreInputAppForAllIntentsSSIDPopularity";
      break;
    case 0xA4uLL:
      result = @"_ATXScoreInputAppForAllIntentsCoreMotionPopularity";
      break;
    case 0xA5uLL:
      result = @"_ATXScoreInputAppForAllIntentsTrendingPopularity";
      break;
    case 0xA6uLL:
      result = @"_ATXScoreInputAppForAllIntentsLaunchLocationPopularity";
      break;
    case 0xA7uLL:
      result = @"_ATXScoreInputAppForAllIntentsLaunchTimePopularity";
      break;
    case 0xA8uLL:
      result = @"_ATXScoreInputAppForAllIntentsLaunchDayOfWeekPopularity";
      break;
    case 0xA9uLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropyLaunchPopularity";
      break;
    case 0xAAuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropyDayOfWeekPopularity";
      break;
    case 0xABuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropyDayOfWeekPopularityByDay";
      break;
    case 0xACuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropyDayOfWeekPopularityByApp";
      break;
    case 0xADuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropyTrendingPopularity";
      break;
    case 0xAEuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropySSIDPopularity";
      break;
    case 0xAFuLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropySSIDPopularityBySSID";
      break;
    case 0xB0uLL:
      result = @"_ATXScoreInputAppForAllIntentsEntropySSIDPopularityByApp";
      break;
    case 0xB1uLL:
      result = @"_ATXScoreInputAppForAllIntentsDistanceSSIDToLaunchPopularity";
      break;
    case 0xB2uLL:
      result = @"_ATXScoreInputAppForAllIntentsDistanceDayOfWeekToLaunchPopularity";
      break;
    case 0xB3uLL:
      result = @"_ATXScoreInputAppForAllIntentsDistanceTrendingToLaunchPopularity";
      break;
    case 0xB4uLL:
      result = @"_ATXScoreInputAppForAllActionsConfirmEvents";
      break;
    case 0xB5uLL:
      result = @"_ATXScoreInputAppForAllActionsRejectEvents";
      break;
    case 0xB6uLL:
      result = @"_ATXScoreInputTotalAppForAllActionsConfirmEvents";
      break;
    case 0xB7uLL:
      result = @"_ATXScoreInputTotalAppForAllActionsRejectEvents";
      break;
    case 0xB8uLL:
      result = @"_ATXScoreInputSlotCount";
      break;
    case 0xB9uLL:
      result = @"_ATXScoreInputSlotTotalNumberOfLaunches";
      break;
    case 0xBAuLL:
      result = @"_ATXScoreInputSlotTotalNumberOfUniqueDaysLaunched";
      break;
    case 0xBBuLL:
      result = @"_ATXScoreInputSlotLaunchPopularity";
      break;
    case 0xBCuLL:
      result = @"_ATXScoreInputSlotTimeOfDayPopularity";
      break;
    case 0xBDuLL:
      result = @"_ATXScoreInputSlotTimeOfDayWithThirtyMinuteWindowPopularity";
      break;
    case 0xBEuLL:
      result = @"_ATXScoreInputSlotTimeOfDayWithHourWindowPopularity";
      break;
    case 0xBFuLL:
      result = @"_ATXScoreInputSlotTimeOfDayWithEightHourWindowPopularity";
      break;
    case 0xC0uLL:
      result = @"_ATXScoreInputSlotDayOfWeekPopularity";
      break;
    case 0xC1uLL:
      result = @"_ATXScoreInputSlotPartOfWeekPopularity";
      break;
    case 0xC2uLL:
      result = @"_ATXScoreInputSlotPartOfWeekAndLocationPopularity";
      break;
    case 0xC3uLL:
      result = @"_ATXScoreInputSlotCoarseTimeOfDayPopularity";
      break;
    case 0xC4uLL:
      result = @"_ATXScoreInputSlotLocationPopularity";
      break;
    case 0xC5uLL:
      result = @"_ATXScoreInputSlotCoreMotionPopularity";
      break;
    case 0xC6uLL:
      result = @"_ATXScoreInputSlotPreviousLocationPopularity";
      break;
    case 0xC7uLL:
      result = @"_ATXScoreInputSlotTimeAndDayPopularity";
      break;
    case 0xC8uLL:
      result = @"_ATXScoreInputSlotTimeAndLocationPopularity";
      break;
    case 0xC9uLL:
      result = @"_ATXScoreInputSlotDayAndLocationPopularity";
      break;
    case 0xCAuLL:
      result = @"_ATXScoreInputSlotTimeAndDayAndLocationPopularity";
      break;
    case 0xCBuLL:
      result = @"_ATXScoreInputSlotPreviousLocationAndCoreMotionPopularity";
      break;
    case 0xCCuLL:
      result = @"_ATXScoreInputSlotPreviousLocationAndLocationPopularity";
      break;
    case 0xCDuLL:
      result = @"_ATXScoreInputSlotTimeAndPreviousLocationPopularity";
      break;
    case 0xCEuLL:
      result = @"_ATXScoreInputSlotDayAndPreviousLocationPopularity";
      break;
    case 0xCFuLL:
      result = @"_ATXScoreInputSlotPartOfWeekAndTimePopularity";
      break;
    case 0xD0uLL:
      result = @"_ATXScoreInputSlotLaunchTimePopularity";
      break;
    case 0xD1uLL:
      result = @"_ATXScoreInputSlotLaunchCoarseTimePopularity";
      break;
    case 0xD2uLL:
      result = @"_ATXScoreInputSlotLaunchDayOfWeekPopularity";
      break;
    case 0xD3uLL:
      result = @"_ATXScoreInputSlotLaunchPartOfWeekPopularity";
      break;
    case 0xD4uLL:
      result = @"_ATXScoreInputSlotLaunchPartOfWeekAndLocationPopularity";
      break;
    case 0xD5uLL:
      result = @"_ATXScoreInputSlotLaunchLocationPopularity";
      break;
    case 0xD6uLL:
      result = @"_ATXScoreInputSlotLaunchCoreMotionPopularity";
      break;
    case 0xD7uLL:
      result = @"_ATXScoreInputSlotLaunchPreviousLocationPopularity";
      break;
    case 0xD8uLL:
      result = @"_ATXScoreInputSlotLaunchTimeAndDayPopularity";
      break;
    case 0xD9uLL:
      result = @"_ATXScoreInputSlotLaunchTimeAndLocationPopularity";
      break;
    case 0xDAuLL:
      result = @"_ATXScoreInputSlotLaunchDayAndLocationPopularity";
      break;
    case 0xDBuLL:
      result = @"_ATXScoreInputSlotLaunchTimeAndDayAndLocationPopularity";
      break;
    case 0xDCuLL:
      result = @"_ATXScoreInputSlotLaunchPreviousLocationAndCoreMotionPopularity";
      break;
    case 0xDDuLL:
      result = @"_ATXScoreInputSlotLaunchPreviousLocationAndLocationPopularity";
      break;
    case 0xDEuLL:
      result = @"_ATXScoreInputSlotLaunchTimeAndPreviousLocationPopularity";
      break;
    case 0xDFuLL:
      result = @"_ATXScoreInputSlotLaunchDayAndPreviousLocationPopularity";
      break;
    case 0xE0uLL:
      result = @"_ATXScoreInputSlotLaunchPartOfWeekAndTimePopularity";
      break;
    case 0xE1uLL:
      result = @"_ATXScoreInputSlotLaunchTimeCount";
      break;
    case 0xE2uLL:
      result = @"_ATXScoreInputSlotLaunchDayOfWeekCount";
      break;
    case 0xE3uLL:
      result = @"_ATXScoreInputSlotLaunchPartOfWeekCount";
      break;
    case 0xE4uLL:
      result = @"_ATXScoreInputSlotLaunchCoarseTimeCount";
      break;
    case 0xE5uLL:
      result = @"_ATXScoreInputSlotLaunchTimeWithThirtyMinuteWindowCount";
      break;
    case 0xE6uLL:
      result = @"_ATXScoreInputSlotLaunchTimeWithHourWindowCount";
      break;
    case 0xE7uLL:
      result = @"_ATXScoreInputSlotLaunchTimeWithEightHourWindowCount";
      break;
    case 0xE8uLL:
      result = @"_ATXScoreInputSlotLaunchLocationCount";
      break;
    case 0xE9uLL:
      result = @"_ATXScoreInputSlotLaunchCoreMotionCount";
      break;
    case 0xEAuLL:
      result = @"_ATXScoreInputSlotLaunchPreviousLocationCount";
      break;
    case 0xEBuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingTimeDecay";
      break;
    case 0xECuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingDayOfWeekDecay";
      break;
    case 0xEDuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingLocationDecay";
      break;
    case 0xEEuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingCoreMotionDecay";
      break;
    case 0xEFuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPreviousLocationDecay";
      break;
    case 0xF0uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPartOfWeekDecay";
      break;
    case 0xF1uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingTimeAndDayDecay";
      break;
    case 0xF2uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingTimeAndLocationDecay";
      break;
    case 0xF3uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingDayAndLocationDecay";
      break;
    case 0xF4uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingTimeAndDayAndLocationDecay";
      break;
    case 0xF5uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPreviousLocationAndLocationDecay";
      break;
    case 0xF6uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPreviousLocationAndCoreMotionDecay";
      break;
    case 0xF7uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingTimeAndPreviousLocationDecay";
      break;
    case 0xF8uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingDayAndPreviousLocationDecay";
      break;
    case 0xF9uLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPartOfWeekAndLocationDecay";
      break;
    case 0xFAuLL:
      result = @"_ATXScoreInputSlotTotalLaunchesForSlotUsingPartOfWeekAndTimeDecay";
      break;
    case 0xFBuLL:
      result = @"_ATXScoreInputSlotSecondsSinceLastSlot";
      break;
    case 0xFCuLL:
      result = @"_ATXScoreInputSlotOnlyLaunchedWithinShortTimeSpan";
      break;
    case 0xFDuLL:
      result = @"_ATXScoreInputSlotTotalNumberOfUndecayedLaunchesForSlot";
      break;
    case 0xFEuLL:
      result = @"_ATXScoreInputSlotNumberOfUniqueDaysLaunchedForSlot";
      break;
    case 0xFFuLL:
      result = @"_ATXScoreInputSlotTotalNumberOfLaunchesForSlot";
      break;
    case 0x100uLL:
      result = @"_ATXScoreInputSlotLOIBoost";
      break;
    case 0x101uLL:
      result = @"_ATXScoreInputSlotNumberOfParameters";
      break;
    case 0x102uLL:
      result = @"_ATXScoreInputSlotNumSessionStartsForRootOfApp";
      break;
    case 0x103uLL:
      result = @"_ATXScoreInputSlotTotalNumSessionsForRootOfApp";
      break;
    case 0x104uLL:
      result = @"_ATXScoreInputSlotNumDocFreqForRootOfApp";
      break;
    case 0x105uLL:
      result = @"_ATXScoreInputSlotEntropyForSlotSet";
      break;
    case 0x106uLL:
      result = @"_ATXScoreInputSlotTotalNumberOfLaunchesForSlotSet";
      break;
    case 0x107uLL:
      result = @"_ATXScoreInputSlotTimeOfDayBudgetMeanForSlot";
      break;
    case 0x108uLL:
      result = @"_ATXScoreInputSlotTimeOfDayBudgetStdDevForSlot";
      break;
    case 0x109uLL:
      result = @"_ATXScoreInputSlotTodaysTimeOfDayBudgetForSlot";
      break;
    case 0x10AuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlot";
      break;
    case 0x10BuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlot";
      break;
    case 0x10CuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalExplicitRejectsForSlotNoDecay";
      break;
    case 0x10DuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForAllSlots";
      break;
    case 0x10EuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForAllSlots";
      break;
    case 0x10FuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalExplicitRejectsForAllSlotsNoDecay";
      break;
    case 0x110uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmRatio";
      break;
    case 0x111uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmRatioStdDev";
      break;
    case 0x112uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmRatioMean";
      break;
    case 0x113uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmRatioCount";
      break;
    case 0x114uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastExplicitRejectInHomeScreen";
      break;
    case 0x115uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastConfirmInSpotlight";
      break;
    case 0x116uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastExplicitRejectInSpotlight";
      break;
    case 0x117uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotInLastHourInSpotlight";
      break;
    case 0x118uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotInLastHourInSpotlight";
      break;
    case 0x119uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotInLastTwoHoursInSpotlight";
      break;
    case 0x11AuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotInLastTwoHoursInSpotlight";
      break;
    case 0x11BuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotTodayInSpotlight";
      break;
    case 0x11CuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotTodayInSpotlight";
      break;
    case 0x11DuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotInSpotlight";
      break;
    case 0x11EuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotInSpotlight";
      break;
    case 0x11FuLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsPartOfWeekCountInSpotlight";
      break;
    case 0x120uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsDayCountInSpotlight";
      break;
    case 0x121uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsTimeOfDayCountInSpotlight";
      break;
    case 0x122uLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsCoarseTimeOfDayCountInSpotlight";
      break;
    case 0x123uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsInSpotlightForAllSlots";
      break;
    case 0x124uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsInSpotlightForAllSlots";
      break;
    case 0x125uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotTodayInLockscreen";
      break;
    case 0x126uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotTodayInLockscreen";
      break;
    case 0x127uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastConfirmInLockscreen";
      break;
    case 0x128uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastRejectInLockscreen";
      break;
    case 0x129uLL:
      result = @"_ATXScoreInputSlotFeedbackMinutesSinceLastExplicitRejectInLockscreen";
      break;
    case 0x12AuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsForSlotInLockscreen";
      break;
    case 0x12BuLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsForSlotInLockscreen";
      break;
    case 0x12CuLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsPartOfWeekCountInLockscreen";
      break;
    case 0x12DuLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsDayCountInLockscreen";
      break;
    case 0x12EuLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsTimeOfDayCountInLockscreen";
      break;
    case 0x12FuLL:
      result = @"_ATXScoreInputSlotFeedbackConfirmsCoarseTimeOfDayCountInLockscreen";
      break;
    case 0x130uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsTodayInLockscreenForAllSlots";
      break;
    case 0x131uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsTodayInLockscreenForAllSlots";
      break;
    case 0x132uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalConfirmsInLockscreenForAllSlots";
      break;
    case 0x133uLL:
      result = @"_ATXScoreInputSlotFeedbackTotalRejectsInLockscreenForAllSlots";
      break;
    case 0x134uLL:
      result = @"_ATXScoreInputActionFeedbackTotalConfirmsInSpotlight";
      break;
    case 0x135uLL:
      result = @"_ATXScoreInputActionFeedbackTotalRejectsInSpotlight";
      break;
    case 0x136uLL:
      result = @"_ATXScoreInputActionFeedbackTotalConfirmsTodayInLockscreen";
      break;
    case 0x137uLL:
      result = @"_ATXScoreInputActionFeedbackTotalRejectsTodayInLockscreen";
      break;
    case 0x138uLL:
      result = @"_ATXScoreInputActionFeedbackTotalConfirmsInLockscreen";
      break;
    case 0x139uLL:
      result = @"_ATXScoreInputActionFeedbackTotalRejectsInLockscreen";
      break;
    case 0x13AuLL:
      result = @"_ATXScoreInputActionFeedbackMeanNumberOfSpotlightLaunchesPerDay";
      break;
    case 0x13BuLL:
      result = @"_ATXScoreInputActionFeedbackMeanNumberOfSpotlightConfirmsPerDay";
      break;
    case 0x13CuLL:
      result = @"_ATXScoreInputActionLaunchPopularity";
      break;
    case 0x13DuLL:
      result = @"_ATXScoreInputActionTimeOfDayPopularity";
      break;
    case 0x13EuLL:
      result = @"_ATXScoreInputActionTimeOfDayWithThirtyMinuteWindowPopularity";
      break;
    case 0x13FuLL:
      result = @"_ATXScoreInputActionTimeOfDayWithHourWindowPopularity";
      break;
    case 0x140uLL:
      result = @"_ATXScoreInputActionTimeOfDayWithEightHourWindowPopularity";
      break;
    case 0x141uLL:
      result = @"_ATXScoreInputActionCoarseTimeOfDayPopularity";
      break;
    case 0x142uLL:
      result = @"_ATXScoreInputActionDayOfWeekPopularity";
      break;
    case 0x143uLL:
      result = @"_ATXScoreInputActionPartOfWeekPopularity";
      break;
    case 0x144uLL:
      result = @"_ATXScoreInputActionPartOfWeekAndLocationPopularity";
      break;
    case 0x145uLL:
      result = @"_ATXScoreInputActionLocationPopularity";
      break;
    case 0x146uLL:
      result = @"_ATXScoreInputActionCoreMotionPopularity";
      break;
    case 0x147uLL:
      result = @"_ATXScoreInputActionPreviousLocationPopularity";
      break;
    case 0x148uLL:
      result = @"_ATXScoreInputActionPreviousLocationAndCoreMotionPopularity";
      break;
    case 0x149uLL:
      result = @"_ATXScoreInputActionPreviousLocationAndLocationPopularity";
      break;
    case 0x14AuLL:
      result = @"_ATXScoreInputActionTimeAndPreviousLocationPopularity";
      break;
    case 0x14BuLL:
      result = @"_ATXScoreInputActionDayAndPreviousLocationPopularity";
      break;
    case 0x14CuLL:
      result = @"_ATXScoreInputActionTimeAndDayPopularity";
      break;
    case 0x14DuLL:
      result = @"_ATXScoreInputActionTimeAndLocationPopularity";
      break;
    case 0x14EuLL:
      result = @"_ATXScoreInputActionDayAndLocationPopularity";
      break;
    case 0x14FuLL:
      result = @"_ATXScoreInputActionTimeAndDayAndLocationPopularity";
      break;
    case 0x150uLL:
      result = @"_ATXScoreInputActionPartOfWeekAndTimePopularity";
      break;
    case 0x151uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingTimeDecay";
      break;
    case 0x152uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingDayOfWeekDecay";
      break;
    case 0x153uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingLocationDecay";
      break;
    case 0x154uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingCoreMotionDecay";
      break;
    case 0x155uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPreviousLocationDecay";
      break;
    case 0x156uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPartOfWeekDecay";
      break;
    case 0x157uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPreviousLocationAndCoreMotionDecay";
      break;
    case 0x158uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPreviousLocationAndLocationDecay";
      break;
    case 0x159uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingTimeAndPreviousLocationDecay";
      break;
    case 0x15AuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingDayAndPreviousLocationDecay";
      break;
    case 0x15BuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingTimeAndDayDecay";
      break;
    case 0x15CuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingTimeAndLocationDecay";
      break;
    case 0x15DuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingDayAndLocationDecay";
      break;
    case 0x15EuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingTimeAndDayAndLocationDecay";
      break;
    case 0x15FuLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPartOfWeekAndLocationDecay";
      break;
    case 0x160uLL:
      result = @"_ATXScoreInputActionTotalLaunchesForAllActionsUsingPartOfWeekAndTimeDecay";
      break;
    case 0x161uLL:
      result = @"_ATXScoreInputRandomSessionValue";
      break;
    case 0x162uLL:
      result = @"_ATXScoreInputRandomScore";
      break;
    case 0x163uLL:
      result = @"_ATXScoreInputActionTotalConfirms";
      break;
    case 0x164uLL:
      result = @"_ATXScoreInputActionTotalRejects";
      break;
    case 0x165uLL:
      result = @"_ATXScoreInputActionTotalExplicitRejectsNoDecay";
      break;
    case 0x166uLL:
      result = @"_ATXScoreInputAppSpecificAlpha";
      break;
    case 0x167uLL:
      result = @"_ATXScoreInputAppSpecificBeta";
      break;
    case 0x168uLL:
      result = @"_ATXScoreInputGlobalScoreGivenTimeDayLocationAndLastApp";
      break;
    case 0x169uLL:
      result = @"_ATXScoreInputAppGlobalScoreGivenTimeDayAndLocation";
      break;
    case 0x16AuLL:
      result = @"_ATXScoreInputAppLOITypeLaunches";
      break;
    case 0x16BuLL:
      result = @"_ATXScoreInputAppLastAppLaunches";
      break;
    case 0x16CuLL:
      result = @"_ATXScoreInputAppTimeOfDayLaunches";
      break;
    case 0x16DuLL:
      result = @"_ATXScoreInputAppDayOfWeekLaunches";
      break;
    case 0x16EuLL:
      result = @"_ATXScoreInputAppBlendedLOITypePopularity";
      break;
    case 0x16FuLL:
      result = @"_ATXScoreInputAppBlendedLastAppPopularity";
      break;
    case 0x170uLL:
      result = @"_ATXScoreInputAppBlendedTimeOfDayPopularity";
      break;
    case 0x171uLL:
      result = @"_ATXScoreInputAppBlendedDayOfWeekPopularity";
      break;
    case 0x172uLL:
      result = @"_ATXScoreInputAppBlendedLOITypeSampledPopularity";
      break;
    case 0x173uLL:
      result = @"_ATXScoreInputAppBlendedLastAppSampledPopularity";
      break;
    case 0x174uLL:
      result = @"_ATXScoreInputAppBlendedTimeOfDaySampledPopularity";
      break;
    case 0x175uLL:
      result = @"_ATXScoreInputAppBlendedDayOfWeekSampledPopularity";
      break;
    case 0x176uLL:
      result = @"_ATXScoreInputActionIsFutureMedia";
      break;
    case 0x177uLL:
      result = @"_ATXScoreInputActionIsBackgroundExecutable";
      break;
    case 0x178uLL:
      result = @"_ATXScoreInputActionMotionType";
      break;
    case 0x179uLL:
      result = @"_ATXScoreInputActionLOIType";
      break;
    case 0x17AuLL:
      result = @"_ATXScoreInputSlotIsSiriKitIntent";
      break;
    case 0x17BuLL:
      result = @"_ATXScoreInputSlotIsCustomIntent";
      break;
    case 0x17CuLL:
      result = @"_ATXScoreInputSlotIsNSUserActivity";
      break;
    case 0x17DuLL:
      result = @"_ATXScoreInputAppActionScore";
      break;
    case 0x17EuLL:
      result = @"_ATXScoreInputAppActionLogProbability";
      break;
    case 0x17FuLL:
      result = @"_ATXScoreInputSlotScore";
      break;
    case 0x180uLL:
      result = @"_ATXScoreInputSlotLogProbability";
      break;
    case 0x181uLL:
      result = @"_ATXScoreInputActionHeuristicConfirmEvents";
      break;
    case 0x182uLL:
      result = @"_ATXScoreInputActionHeuristicConfirmRatio";
      break;
    case 0x183uLL:
      result = @"_ATXScoreInputTotalActionHeuristicConfirmEvents";
      break;
    case 0x184uLL:
      result = @"_ATXScoreInputTotalActionHeuristicRejectEvents";
      break;
    case 0x185uLL:
      result = @"_ATXScoreInputAmbientLightTypePopularity";
      break;
    case 0x186uLL:
      result = @"_ATXScoreInputAmbientLightTypeLaunchPopularity";
      break;
    case 0x187uLL:
      result = @"_ATXScoreInputAppIntentAmbientLightTypePopularity";
      break;
    case 0x188uLL:
      result = @"_ATXScoreInputAppIntentAmbientLightTypeLaunchPopularity";
      break;
    case 0x189uLL:
      result = @"_ATXScoreInputAppLaunchesCoarseTimePowLocationForAppInContext";
      break;
    case 0x18AuLL:
      result = @"_ATXScoreInputAppLaunchesCoarseTimePowLocationInContext";
      break;
    case 0x18BuLL:
      result = @"_ATXScoreInputAppLaunchesCoarseTimePowLocationForApp";
      break;
    case 0x18CuLL:
      result = @"_ATXScoreInputAppLaunchesCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x18DuLL:
      result = @"_ATXScoreInputAppConfirmsCoarseTimePowLocationForAppInContext";
      break;
    case 0x18EuLL:
      result = @"_ATXScoreInputAppConfirmsCoarseTimePowLocationInContext";
      break;
    case 0x18FuLL:
      result = @"_ATXScoreInputAppConfirmsCoarseTimePowLocationForApp";
      break;
    case 0x190uLL:
      result = @"_ATXScoreInputAppConfirmsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x191uLL:
      result = @"_ATXScoreInputAppRejectsCoarseTimePowLocationForAppInContext";
      break;
    case 0x192uLL:
      result = @"_ATXScoreInputAppRejectsCoarseTimePowLocationInContext";
      break;
    case 0x193uLL:
      result = @"_ATXScoreInputAppRejectsCoarseTimePowLocationForApp";
      break;
    case 0x194uLL:
      result = @"_ATXScoreInputAppRejectsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x195uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForAppInContext";
      break;
    case 0x196uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationInContext";
      break;
    case 0x197uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForApp";
      break;
    case 0x198uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x199uLL:
      result = @"_ATXScoreInputAppLaunchesSpecificTimeDowLocationForAppInContext";
      break;
    case 0x19AuLL:
      result = @"_ATXScoreInputAppLaunchesSpecificTimeDowLocationInContext";
      break;
    case 0x19BuLL:
      result = @"_ATXScoreInputAppLaunchesSpecificTimeDowLocationForApp";
      break;
    case 0x19CuLL:
      result = @"_ATXScoreInputAppLaunchesSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x19DuLL:
      result = @"_ATXScoreInputAppConfirmsSpecificTimeDowLocationForAppInContext";
      break;
    case 0x19EuLL:
      result = @"_ATXScoreInputAppConfirmsSpecificTimeDowLocationInContext";
      break;
    case 0x19FuLL:
      result = @"_ATXScoreInputAppConfirmsSpecificTimeDowLocationForApp";
      break;
    case 0x1A0uLL:
      result = @"_ATXScoreInputAppConfirmsSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x1A1uLL:
      result = @"_ATXScoreInputAppRejectsSpecificTimeDowLocationForAppInContext";
      break;
    case 0x1A2uLL:
      result = @"_ATXScoreInputAppRejectsSpecificTimeDowLocationInContext";
      break;
    case 0x1A3uLL:
      result = @"_ATXScoreInputAppRejectsSpecificTimeDowLocationForApp";
      break;
    case 0x1A4uLL:
      result = @"_ATXScoreInputAppRejectsSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x1A5uLL:
      result = @"_ATXScoreInputActionsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1A6uLL:
      result = @"_ATXScoreInputActionsCoarseTimePowLocationInContext";
      break;
    case 0x1A7uLL:
      result = @"_ATXScoreInputActionsCoarseTimePowLocationForAction";
      break;
    case 0x1A8uLL:
      result = @"_ATXScoreInputActionsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1A9uLL:
      result = @"_ATXScoreInputActionConfirmsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1AAuLL:
      result = @"_ATXScoreInputActionConfirmsCoarseTimePowLocationInContext";
      break;
    case 0x1ABuLL:
      result = @"_ATXScoreInputActionConfirmsCoarseTimePowLocationForAction";
      break;
    case 0x1ACuLL:
      result = @"_ATXScoreInputActionConfirmsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1ADuLL:
      result = @"_ATXScoreInputActionRejectsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1AEuLL:
      result = @"_ATXScoreInputActionRejectsCoarseTimePowLocationInContext";
      break;
    case 0x1AFuLL:
      result = @"_ATXScoreInputActionRejectsCoarseTimePowLocationForAction";
      break;
    case 0x1B0uLL:
      result = @"_ATXScoreInputActionRejectsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1B1uLL:
      result = @"_ATXScoreInputActionsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1B2uLL:
      result = @"_ATXScoreInputActionsSpecificTimeDowLocationInContext";
      break;
    case 0x1B3uLL:
      result = @"_ATXScoreInputActionsSpecificTimeDowLocationForAction";
      break;
    case 0x1B4uLL:
      result = @"_ATXScoreInputActionsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1B5uLL:
      result = @"_ATXScoreInputActionConfirmsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1B6uLL:
      result = @"_ATXScoreInputActionConfirmsSpecificTimeDowLocationInContext";
      break;
    case 0x1B7uLL:
      result = @"_ATXScoreInputActionConfirmsSpecificTimeDowLocationForAction";
      break;
    case 0x1B8uLL:
      result = @"_ATXScoreInputActionConfirmsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1B9uLL:
      result = @"_ATXScoreInputActionRejectsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1BAuLL:
      result = @"_ATXScoreInputActionRejectsSpecificTimeDowLocationInContext";
      break;
    case 0x1BBuLL:
      result = @"_ATXScoreInputActionRejectsSpecificTimeDowLocationForAction";
      break;
    case 0x1BCuLL:
      result = @"_ATXScoreInputActionRejectsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1BDuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket0ForApp";
      break;
    case 0x1BEuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket1ForApp";
      break;
    case 0x1BFuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket2ForApp";
      break;
    case 0x1C0uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket3ForApp";
      break;
    case 0x1C1uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket4ForApp";
      break;
    case 0x1C2uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket5ForApp";
      break;
    case 0x1C3uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket6ForApp";
      break;
    case 0x1C4uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket7ForApp";
      break;
    case 0x1C5uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket8ForApp";
      break;
    case 0x1C6uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket9ForApp";
      break;
    case 0x1C7uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket10ForApp";
      break;
    case 0x1C8uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket11ForApp";
      break;
    case 0x1C9uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket12ForApp";
      break;
    case 0x1CAuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket13ForApp";
      break;
    case 0x1CBuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket14ForApp";
      break;
    case 0x1CCuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket15ForApp";
      break;
    case 0x1CDuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket16ForApp";
      break;
    case 0x1CEuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket17ForApp";
      break;
    case 0x1CFuLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket18ForApp";
      break;
    case 0x1D0uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket19ForApp";
      break;
    case 0x1D1uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket20ForApp";
      break;
    case 0x1D2uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket21ForApp";
      break;
    case 0x1D3uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket22ForApp";
      break;
    case 0x1D4uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket23ForApp";
      break;
    case 0x1D5uLL:
      result = @"_ATXScoreInputAppLaunchesInTimeBucket24ForApp";
      break;
    case 0x1D6uLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekSundayForApp";
      break;
    case 0x1D7uLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekMondayForApp";
      break;
    case 0x1D8uLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekTuesdayForApp";
      break;
    case 0x1D9uLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekWednesdayForApp";
      break;
    case 0x1DAuLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekThursdayForApp";
      break;
    case 0x1DBuLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekFridayForApp";
      break;
    case 0x1DCuLL:
      result = @"_ATXScoreInputAppLaunchesOnDayOfWeekSaturdayForApp";
      break;
    case 0x1DDuLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash0ForApp";
      break;
    case 0x1DEuLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash1ForApp";
      break;
    case 0x1DFuLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash2ForApp";
      break;
    case 0x1E0uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash3ForApp";
      break;
    case 0x1E1uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash4ForApp";
      break;
    case 0x1E2uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash5ForApp";
      break;
    case 0x1E3uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash6ForApp";
      break;
    case 0x1E4uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash7ForApp";
      break;
    case 0x1E5uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash8ForApp";
      break;
    case 0x1E6uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHash9ForApp";
      break;
    case 0x1E7uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash0ForApp";
      break;
    case 0x1E8uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash1ForApp";
      break;
    case 0x1E9uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash2ForApp";
      break;
    case 0x1EAuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash3ForApp";
      break;
    case 0x1EBuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash4ForApp";
      break;
    case 0x1ECuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash5ForApp";
      break;
    case 0x1EDuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash6ForApp";
      break;
    case 0x1EEuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash7ForApp";
      break;
    case 0x1EFuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash8ForApp";
      break;
    case 0x1F0uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash9ForApp";
      break;
    case 0x1F1uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash10ForApp";
      break;
    case 0x1F2uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash11ForApp";
      break;
    case 0x1F3uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash12ForApp";
      break;
    case 0x1F4uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash13ForApp";
      break;
    case 0x1F5uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHash14ForApp";
      break;
    case 0x1F6uLL:
      result = @"_ATXScoreInputAppNumberOfSpecificGeohashesForApp";
      break;
    case 0x1F7uLL:
      result = @"_ATXScoreInputAppNumberOfCoarseGeohashesForApp";
      break;
    case 0x1F8uLL:
      result = @"_ATXScoreInputAppEntropyForTimeBuckets";
      break;
    case 0x1F9uLL:
      result = @"_ATXScoreInputAppEntropyForSpecificGeoHash";
      break;
    case 0x1FAuLL:
      result = @"_ATXScoreInputAppEntropyForCoarseGeoHash";
      break;
    case 0x1FBuLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHashForAppInContext";
      break;
    case 0x1FCuLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHashForAppInContext";
      break;
    case 0x1FDuLL:
      result = @"_ATXScoreInputAppLaunchesAtDayOfWeekInContext";
      break;
    case 0x1FEuLL:
      result = @"_ATXScoreInputAppLaunchesAtDayOfWeekForApp";
      break;
    case 0x1FFuLL:
      result = @"_ATXScoreInputAppLaunchesAtTimeAndDayForAppInContext";
      break;
    case 0x200uLL:
      result = @"_ATXScoreInputAppLaunchesAtTimeAndDayInContext";
      break;
    case 0x201uLL:
      result = @"_ATXScoreInputAppLaunchesAtTimeAndDayForApp";
      break;
    case 0x202uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHashInContext";
      break;
    case 0x203uLL:
      result = @"_ATXScoreInputAppLaunchesAtCoarseGeoHashForApp";
      break;
    case 0x204uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHashInContext";
      break;
    case 0x205uLL:
      result = @"_ATXScoreInputAppLaunchesAtSpecificGeoHashForApp";
      break;
    case 0x206uLL:
      result = @"_ATXScoreInputAppLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x207uLL:
      result = @"_ATXScoreInputAppLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x208uLL:
      result = @"_ATXScoreInputIsLocationServicesDisabled";
      break;
    case 0x209uLL:
      result = @"_ATXScoreInputAppLaunchesInTwoHourTimeBucketForAppInContext";
      break;
    case 0x20AuLL:
      result = @"_ATXScoreInputAppLaunchesInTwoHourTimeBucketInContext";
      break;
    case 0x20BuLL:
      result = @"_ATXScoreInputAppLaunchesInTwoHourTimeBucketForApp";
      break;
    case 0x20CuLL:
      result = @"_ATXScoreInputAppConfirmsInTwoHourTimeBucketForAppInContext";
      break;
    case 0x20DuLL:
      result = @"_ATXScoreInputAppConfirmsInTwoHourTimeBucketInContext";
      break;
    case 0x20EuLL:
      result = @"_ATXScoreInputAppConfirmsInTwoHourTimeBucketForApp";
      break;
    case 0x20FuLL:
      result = @"_ATXScoreInputAppRejectsInTwoHourTimeBucketForAppInContext";
      break;
    case 0x210uLL:
      result = @"_ATXScoreInputAppRejectsInTwoHourTimeBucketInContext";
      break;
    case 0x211uLL:
      result = @"_ATXScoreInputAppRejectsInTwoHourTimeBucketForApp";
      break;
    case 0x212uLL:
      result = @"_ATXScoreInputAppConfirmsAtDayOfWeekForAppInContext";
      break;
    case 0x213uLL:
      result = @"_ATXScoreInputAppConfirmsAtDayOfWeekInContext";
      break;
    case 0x214uLL:
      result = @"_ATXScoreInputAppConfirmsAtDayOfWeekForApp";
      break;
    case 0x215uLL:
      result = @"_ATXScoreInputAppRejectsAtDayOfWeekForAppInContext";
      break;
    case 0x216uLL:
      result = @"_ATXScoreInputAppRejectsAtDayOfWeekInContext";
      break;
    case 0x217uLL:
      result = @"_ATXScoreInputAppRejectsAtDayOfWeekForApp";
      break;
    case 0x218uLL:
      result = @"_ATXScoreInputAppConfirmsAtCoarseGeoHashForAppInContext";
      break;
    case 0x219uLL:
      result = @"_ATXScoreInputAppConfirmsAtCoarseGeoHashInContext";
      break;
    case 0x21AuLL:
      result = @"_ATXScoreInputAppConfirmsAtCoarseGeoHashForApp";
      break;
    case 0x21BuLL:
      result = @"_ATXScoreInputAppRejectsAtCoarseGeoHashForAppInContext";
      break;
    case 0x21CuLL:
      result = @"_ATXScoreInputAppRejectsAtCoarseGeoHashInContext";
      break;
    case 0x21DuLL:
      result = @"_ATXScoreInputAppRejectsAtCoarseGeoHashForApp";
      break;
    case 0x21EuLL:
      result = @"_ATXScoreInputAppConfirmsAtSpecificGeoHashForAppInContext";
      break;
    case 0x21FuLL:
      result = @"_ATXScoreInputAppConfirmsAtSpecificGeoHashInContext";
      break;
    case 0x220uLL:
      result = @"_ATXScoreInputAppConfirmsAtSpecificGeoHashForApp";
      break;
    case 0x221uLL:
      result = @"_ATXScoreInputAppRejectsAtSpecificGeoHashForAppInContext";
      break;
    case 0x222uLL:
      result = @"_ATXScoreInputAppRejectsAtSpecificGeoHashInContext";
      break;
    case 0x223uLL:
      result = @"_ATXScoreInputAppRejectsAtSpecificGeoHashForApp";
      break;
    case 0x224uLL:
      result = @"_ATXScoreInputAppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x225uLL:
      result = @"_ATXScoreInputAppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x226uLL:
      result = @"_ATXScoreInputAppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x227uLL:
      result = @"_ATXScoreInputAppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x228uLL:
      result = @"_ATXScoreInputCurrentTimeBucketFromZeroToTwentyFour";
      break;
    case 0x229uLL:
      result = @"_ATXScoreInputActionsAtDayOfWeekForActionInContext";
      break;
    case 0x22AuLL:
      result = @"_ATXScoreInputActionsAtDayOfWeekInContext";
      break;
    case 0x22BuLL:
      result = @"_ATXScoreInputActionsAtDayOfWeekForAction";
      break;
    case 0x22CuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHashForActionInContext";
      break;
    case 0x22DuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHashInContext";
      break;
    case 0x22EuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHashForAction";
      break;
    case 0x22FuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHashForActionInContext";
      break;
    case 0x230uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHashInContext";
      break;
    case 0x231uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHashForAction";
      break;
    case 0x232uLL:
      result = @"_ATXScoreInputActionsAtTimeOfDayForActionInContext";
      break;
    case 0x233uLL:
      result = @"_ATXScoreInputActionsAtTimeOfDayInContext";
      break;
    case 0x234uLL:
      result = @"_ATXScoreInputActionsAtTimeOfDayForAction";
      break;
    case 0x235uLL:
      result = @"_ATXScoreInputActionConfirmsAtTimeOfDayForActionInContext";
      break;
    case 0x236uLL:
      result = @"_ATXScoreInputActionConfirmsAtTimeOfDayInContext";
      break;
    case 0x237uLL:
      result = @"_ATXScoreInputActionConfirmsAtTimeOfDayForAction";
      break;
    case 0x238uLL:
      result = @"_ATXScoreInputActionRejectsAtTimeOfDayForActionInContext";
      break;
    case 0x239uLL:
      result = @"_ATXScoreInputActionRejectsAtTimeOfDayInContext";
      break;
    case 0x23AuLL:
      result = @"_ATXScoreInputActionRejectsAtTimeOfDayForAction";
      break;
    case 0x23BuLL:
      result = @"_ATXScoreInputActionConfirmsAtDayOfWeekForActionInContext";
      break;
    case 0x23CuLL:
      result = @"_ATXScoreInputActionConfirmsAtDayOfWeekInContext";
      break;
    case 0x23DuLL:
      result = @"_ATXScoreInputActionConfirmsAtDayOfWeekForAction";
      break;
    case 0x23EuLL:
      result = @"_ATXScoreInputActionRejectsAtDayOfWeekForActionInContext";
      break;
    case 0x23FuLL:
      result = @"_ATXScoreInputActionRejectsAtDayOfWeekInContext";
      break;
    case 0x240uLL:
      result = @"_ATXScoreInputActionRejectsAtDayOfWeekForAction";
      break;
    case 0x241uLL:
      result = @"_ATXScoreInputActionConfirmsAtCoarseGeoHashForActionInContext";
      break;
    case 0x242uLL:
      result = @"_ATXScoreInputActionConfirmsAtCoarseGeoHashInContext";
      break;
    case 0x243uLL:
      result = @"_ATXScoreInputActionConfirmsAtCoarseGeoHashForAction";
      break;
    case 0x244uLL:
      result = @"_ATXScoreInputActionRejectsAtCoarseGeoHashForActionInContext";
      break;
    case 0x245uLL:
      result = @"_ATXScoreInputActionRejectsAtCoarseGeoHashInContext";
      break;
    case 0x246uLL:
      result = @"_ATXScoreInputActionRejectsAtCoarseGeoHashForAction";
      break;
    case 0x247uLL:
      result = @"_ATXScoreInputActionConfirmsAtSpecificGeoHashForActionInContext";
      break;
    case 0x248uLL:
      result = @"_ATXScoreInputActionConfirmsAtSpecificGeoHashInContext";
      break;
    case 0x249uLL:
      result = @"_ATXScoreInputActionConfirmsAtSpecificGeoHashForAction";
      break;
    case 0x24AuLL:
      result = @"_ATXScoreInputActionRejectsAtSpecificGeoHashForActionInContext";
      break;
    case 0x24BuLL:
      result = @"_ATXScoreInputActionRejectsAtSpecificGeoHashInContext";
      break;
    case 0x24CuLL:
      result = @"_ATXScoreInputActionRejectsAtSpecificGeoHashForAction";
      break;
    case 0x24DuLL:
      result = @"_ATXScoreInputActionsInTimeBucket0ForAction";
      break;
    case 0x24EuLL:
      result = @"_ATXScoreInputActionsInTimeBucket1ForAction";
      break;
    case 0x24FuLL:
      result = @"_ATXScoreInputActionsInTimeBucket2ForAction";
      break;
    case 0x250uLL:
      result = @"_ATXScoreInputActionsInTimeBucket3ForAction";
      break;
    case 0x251uLL:
      result = @"_ATXScoreInputActionsInTimeBucket4ForAction";
      break;
    case 0x252uLL:
      result = @"_ATXScoreInputActionsInTimeBucket5ForAction";
      break;
    case 0x253uLL:
      result = @"_ATXScoreInputActionsInTimeBucket6ForAction";
      break;
    case 0x254uLL:
      result = @"_ATXScoreInputActionsInTimeBucket7ForAction";
      break;
    case 0x255uLL:
      result = @"_ATXScoreInputActionsInTimeBucket8ForAction";
      break;
    case 0x256uLL:
      result = @"_ATXScoreInputActionsInTimeBucket9ForAction";
      break;
    case 0x257uLL:
      result = @"_ATXScoreInputActionsInTimeBucket10ForAction";
      break;
    case 0x258uLL:
      result = @"_ATXScoreInputActionsInTimeBucket11ForAction";
      break;
    case 0x259uLL:
      result = @"_ATXScoreInputActionsInTimeBucket12ForAction";
      break;
    case 0x25AuLL:
      result = @"_ATXScoreInputActionsInTimeBucket13ForAction";
      break;
    case 0x25BuLL:
      result = @"_ATXScoreInputActionsInTimeBucket14ForAction";
      break;
    case 0x25CuLL:
      result = @"_ATXScoreInputActionsInTimeBucket15ForAction";
      break;
    case 0x25DuLL:
      result = @"_ATXScoreInputActionsInTimeBucket16ForAction";
      break;
    case 0x25EuLL:
      result = @"_ATXScoreInputActionsInTimeBucket17ForAction";
      break;
    case 0x25FuLL:
      result = @"_ATXScoreInputActionsInTimeBucket18ForAction";
      break;
    case 0x260uLL:
      result = @"_ATXScoreInputActionsInTimeBucket19ForAction";
      break;
    case 0x261uLL:
      result = @"_ATXScoreInputActionsInTimeBucket20ForAction";
      break;
    case 0x262uLL:
      result = @"_ATXScoreInputActionsInTimeBucket21ForAction";
      break;
    case 0x263uLL:
      result = @"_ATXScoreInputActionsInTimeBucket22ForAction";
      break;
    case 0x264uLL:
      result = @"_ATXScoreInputActionsInTimeBucket23ForAction";
      break;
    case 0x265uLL:
      result = @"_ATXScoreInputActionsInTimeBucket24ForAction";
      break;
    case 0x266uLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekSundayForAction";
      break;
    case 0x267uLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekMondayForAction";
      break;
    case 0x268uLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekTuesdayForAction";
      break;
    case 0x269uLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekWednesdayForAction";
      break;
    case 0x26AuLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekThursdayForAction";
      break;
    case 0x26BuLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekFridayForAction";
      break;
    case 0x26CuLL:
      result = @"_ATXScoreInputActionsOnDayOfWeekSaturdayForAction";
      break;
    case 0x26DuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash0ForAction";
      break;
    case 0x26EuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash1ForAction";
      break;
    case 0x26FuLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash2ForAction";
      break;
    case 0x270uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash3ForAction";
      break;
    case 0x271uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash4ForAction";
      break;
    case 0x272uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash5ForAction";
      break;
    case 0x273uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash6ForAction";
      break;
    case 0x274uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash7ForAction";
      break;
    case 0x275uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash8ForAction";
      break;
    case 0x276uLL:
      result = @"_ATXScoreInputActionsAtCoarseGeoHash9ForAction";
      break;
    case 0x277uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash0ForAction";
      break;
    case 0x278uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash1ForAction";
      break;
    case 0x279uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash2ForAction";
      break;
    case 0x27AuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash3ForAction";
      break;
    case 0x27BuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash4ForAction";
      break;
    case 0x27CuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash5ForAction";
      break;
    case 0x27DuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash6ForAction";
      break;
    case 0x27EuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash7ForAction";
      break;
    case 0x27FuLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash8ForAction";
      break;
    case 0x280uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash9ForAction";
      break;
    case 0x281uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash10ForAction";
      break;
    case 0x282uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash11ForAction";
      break;
    case 0x283uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash12ForAction";
      break;
    case 0x284uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash13ForAction";
      break;
    case 0x285uLL:
      result = @"_ATXScoreInputActionsAtSpecificGeoHash14ForAction";
      break;
    case 0x286uLL:
      result = @"_ATXScoreInputActionEntropyForTimeOfDay";
      break;
    case 0x287uLL:
      result = @"_ATXScoreInputActionEntropyForDayOfWeek";
      break;
    case 0x288uLL:
      result = @"_ATXScoreInputActionEntropyForCoarseGeoHash";
      break;
    case 0x289uLL:
      result = @"_ATXScoreInputActionEntropyForSpecificGeoHash";
      break;
    case 0x28AuLL:
      result = @"_ATXScoreInputActionNumberOfSpecificGeohashesForAction";
      break;
    case 0x28BuLL:
      result = @"_ATXScoreInputActionNumberOfCoarseGeohashesForAction";
      break;
    case 0x28CuLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHashForAppInContext";
      break;
    case 0x28DuLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHashInContext";
      break;
    case 0x28EuLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHashForApp";
      break;
    case 0x28FuLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash0ForApp";
      break;
    case 0x290uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash1ForApp";
      break;
    case 0x291uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash2ForApp";
      break;
    case 0x292uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash3ForApp";
      break;
    case 0x293uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash4ForApp";
      break;
    case 0x294uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash5ForApp";
      break;
    case 0x295uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash6ForApp";
      break;
    case 0x296uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash7ForApp";
      break;
    case 0x297uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash8ForApp";
      break;
    case 0x298uLL:
      result = @"_ATXScoreInputAppLaunchesAtZoom7GeoHash9ForApp";
      break;
    case 0x299uLL:
      result = @"_ATXScoreInputAppEntropyForZoom7GeoHash";
      break;
    case 0x29AuLL:
      result = @"_ATXScoreInputAppNumberOfZoom7GeohashesForApp";
      break;
    case 0x29BuLL:
      result = @"_ATXScoreInputAppGeoAssociationScoreAtZoom7";
      break;
    case 0x29CuLL:
      result = @"_ATXScoreInputAppGeoAssociationScoreAtZoom13";
      break;
    case 0x29DuLL:
      result = @"_ATXScoreInputAppGeoAssociationScoreAtZoom16";
      break;
    case 0x29EuLL:
      result = @"_ATXScoreInputAppPartOfWeekAssociationScore";
      break;
    case 0x29FuLL:
      result = @"_ATXScoreInputAppCoarseTimeAssociationScore";
      break;
    case 0x2A0uLL:
      result = @"_ATXScoreInputAppLOITypeAssociationScore";
      break;
    case 0x2A1uLL:
      result = @"_ATXScoreInputAppLaunchesAtSSIDForAppInContext";
      break;
    case 0x2A2uLL:
      result = @"_ATXScoreInputAppLaunchesAtSSIDForApp";
      break;
    case 0x2A3uLL:
      result = @"_ATXScoreInputAppLaunchesForCoreMotionForAppInContext";
      break;
    case 0x2A4uLL:
      result = @"_ATXScoreInputAppLaunchesInAirplaneModeForAppInContext";
      break;
    case 0x2A5uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsOnDayOfWeekForAppInContext";
      break;
    case 0x2A6uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsOnDayOfWeekInContext";
      break;
    case 0x2A7uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsOnDayOfWeekForApp";
      break;
    case 0x2A8uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsOnDayOfWeekForAppInContext";
      break;
    case 0x2A9uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsOnDayOfWeekInContext";
      break;
    case 0x2AAuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsOnDayOfWeekForApp";
      break;
    case 0x2ABuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2ACuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsInTwoHourTimeIntervalInContext";
      break;
    case 0x2ADuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsInTwoHourTimeIntervalForApp";
      break;
    case 0x2AEuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2AFuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsInTwoHourTimeIntervalInContext";
      break;
    case 0x2B0uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsInTwoHourTimeIntervalForApp";
      break;
    case 0x2B1uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseGeohashForAppInContext";
      break;
    case 0x2B2uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseGeohashInContext";
      break;
    case 0x2B3uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseGeohashForApp";
      break;
    case 0x2B4uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseGeohashForAppInContext";
      break;
    case 0x2B5uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseGeohashInContext";
      break;
    case 0x2B6uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseGeohashForApp";
      break;
    case 0x2B7uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificGeohashForAppInContext";
      break;
    case 0x2B8uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificGeohashInContext";
      break;
    case 0x2B9uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificGeohashForApp";
      break;
    case 0x2BAuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificGeohashForAppInContext";
      break;
    case 0x2BBuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificGeohashInContext";
      break;
    case 0x2BCuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificGeohashForApp";
      break;
    case 0x2BDuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2BEuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2BFuLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C0uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2C1uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2C2uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C3uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2C4uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2C5uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C6uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2C7uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2C8uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2C9uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2CAuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2CBuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2CCuLL:
      result = @"_ATXScoreInputHomeScreenTotalLaunchesForApp";
      break;
    case 0x2CDuLL:
      result = @"_ATXScoreInputHomeScreenTotalLaunchesForAllApps";
      break;
    case 0x2CEuLL:
      result = @"_ATXScoreInputAppDirectoryTotalLaunchesForApp";
      break;
    case 0x2CFuLL:
      result = @"_ATXScoreInputAppDirectoryTotalLaunchesForAllApps";
      break;
    case 0x2D0uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsOnDayOfWeekForAppInContext";
      break;
    case 0x2D1uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsOnDayOfWeekInContext";
      break;
    case 0x2D2uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsOnDayOfWeekForApp";
      break;
    case 0x2D3uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsOnDayOfWeekForAppInContext";
      break;
    case 0x2D4uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsOnDayOfWeekInContext";
      break;
    case 0x2D5uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsOnDayOfWeekForApp";
      break;
    case 0x2D6uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2D7uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsInTwoHourTimeIntervalInContext";
      break;
    case 0x2D8uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsInTwoHourTimeIntervalForApp";
      break;
    case 0x2D9uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2DAuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsInTwoHourTimeIntervalInContext";
      break;
    case 0x2DBuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsInTwoHourTimeIntervalForApp";
      break;
    case 0x2DCuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseGeohashForAppInContext";
      break;
    case 0x2DDuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseGeohashInContext";
      break;
    case 0x2DEuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseGeohashForApp";
      break;
    case 0x2DFuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseGeohashForAppInContext";
      break;
    case 0x2E0uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseGeohashInContext";
      break;
    case 0x2E1uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseGeohashForApp";
      break;
    case 0x2E2uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificGeohashForAppInContext";
      break;
    case 0x2E3uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificGeohashInContext";
      break;
    case 0x2E4uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificGeohashForApp";
      break;
    case 0x2E5uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificGeohashForAppInContext";
      break;
    case 0x2E6uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificGeohashInContext";
      break;
    case 0x2E7uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificGeohashForApp";
      break;
    case 0x2E8uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2E9uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2EAuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2EBuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2ECuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2EDuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2EEuLL:
      result = @"_ATXScoreInputAppDirectoryExplicitRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2EFuLL:
      result = @"_ATXScoreInputAppDirectoryExplicitRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2F0uLL:
      result = @"_ATXScoreInputAppDirectoryExplicitRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2F1uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2F2uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2F3uLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2F4uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2F5uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2F6uLL:
      result = @"_ATXScoreInputAppDirectoryRejectsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2F7uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2F8uLL:
      result = @"_ATXScoreInputHomeScreenAppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2F9uLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FAuLL:
      result = @"_ATXScoreInputHomeScreenAppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2FBuLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FCuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FDuLL:
      result = @"_ATXScoreInputAppDirectoryConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2FEuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FFuLL:
      result = @"_ATXScoreInputAppDirectoryRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x300uLL:
      result = @"_ATXScoreInputAppDirectoryExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x301uLL:
      result = @"_ATXScoreInputIsAppClip";
      break;
    case 0x302uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsOnDayOfWeekForActionInContext";
      break;
    case 0x303uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsOnDayOfWeekInContext";
      break;
    case 0x304uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsOnDayOfWeekForAction";
      break;
    case 0x305uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtTimeOfDayForActionInContext";
      break;
    case 0x306uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtTimeOfDayInContext";
      break;
    case 0x307uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtTimeOfDayForAction";
      break;
    case 0x308uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseGeohashForActionInContext";
      break;
    case 0x309uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseGeohashInContext";
      break;
    case 0x30AuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseGeohashForAction";
      break;
    case 0x30BuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificGeohashForActionInContext";
      break;
    case 0x30CuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificGeohashInContext";
      break;
    case 0x30DuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificGeohashForAction";
      break;
    case 0x30EuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseTimePOWLocationForActionInContext";
      break;
    case 0x30FuLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x310uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtCoarseTimePOWLocationForAction";
      break;
    case 0x311uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificTimeDOWLocationForActionInContext";
      break;
    case 0x312uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x313uLL:
      result = @"_ATXScoreInputHomeScreenActionConfirmsAtSpecificTimeDOWLocationForAction";
      break;
    case 0x314uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsOnDayOfWeekForActionInContext";
      break;
    case 0x315uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsOnDayOfWeekInContext";
      break;
    case 0x316uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsOnDayOfWeekForAction";
      break;
    case 0x317uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtTimeOfDayForActionInContext";
      break;
    case 0x318uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtTimeOfDayInContext";
      break;
    case 0x319uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtTimeOfDayForAction";
      break;
    case 0x31AuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseGeohashForActionInContext";
      break;
    case 0x31BuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseGeohashInContext";
      break;
    case 0x31CuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseGeohashForAction";
      break;
    case 0x31DuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificGeohashForActionInContext";
      break;
    case 0x31EuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificGeohashInContext";
      break;
    case 0x31FuLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificGeohashForAction";
      break;
    case 0x320uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseTimePOWLocationForActionInContext";
      break;
    case 0x321uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x322uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtCoarseTimePOWLocationForAction";
      break;
    case 0x323uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificTimeDOWLocationForActionInContext";
      break;
    case 0x324uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x325uLL:
      result = @"_ATXScoreInputHomeScreenActionRejectsAtSpecificTimeDOWLocationForAction";
      break;
    case 0x326uLL:
      result = @"_ATXScoreInputPOIPopularityForAppInContext";
      break;
    case 0x327uLL:
      result = @"_ATXScoreInputAppLaunchPopularityAtPOIForAppInContext";
      break;
    case 0x328uLL:
      result = @"_ATXScoreInputPOICategory";
      break;
    case 0x329uLL:
      result = @"_ATXScoreInputAppLaunchesAtPOIForAppInContext";
      break;
    case 0x32AuLL:
      result = @"_ATXScoreInputAppCategoryScore";
      break;
    case 0x32BuLL:
      result = @"_ATXScoreInputPosteriorProbabilityOfAppGivenMode";
      break;
    case 0x32CuLL:
      result = @"_ATXScoreInputClassConditionalProbabilityOfModeGivenApp";
      break;
    case 0x32DuLL:
      result = @"_ATXScoreInputUniqueOccurrencesOfAppInMode";
      break;
    case 0x32EuLL:
      result = @"_ATXScoreInputLocalOccurrencesOfAppInMode";
      break;
    case 0x32FuLL:
      result = @"_ATXScoreInputGlobalOccurrencesOfAppInMode";
      break;
    case 0x330uLL:
      result = @"_ATXScoreInputAppModeEntityScore";
      break;
    case 0x331uLL:
      result = @"_ATXScoreInputDocumentCategoryPopularity";
      break;
    case 0x332uLL:
      result = @"_ATXScoreInputDocumentCategoryDayOfWeekPopularity";
      break;
    case 0x333uLL:
      result = @"_ATXScoreInputDocumentCategoryDayOfWeekRelativePopularity";
      break;
    case 0x334uLL:
      result = @"_ATXScoreInputDocumentCategoryPartOfWeekPopularity";
      break;
    case 0x335uLL:
      result = @"_ATXScoreInputDocumentCategoryPartOfWeekRelativePopularity";
      break;
    case 0x336uLL:
      result = @"_ATXScoreInputDocumentCategoryTrendingPopularity";
      break;
    case 0x337uLL:
      result = @"_ATXScoreInputDocumentCreatedAge";
      break;
    case 0x338uLL:
      result = @"_ATXScoreInputDocumentModifiedAge";
      break;
    case 0x339uLL:
      result = @"_ATXScoreInputDocumentOpenedAge";
      break;
    case 0x33AuLL:
      result = @"_ATXScoreInputDocumentAssociatedAppPredictionScore";
      break;
    case 0x33BuLL:
      result = @"_ATXScoreInputIsRemoteApp";
      break;
    case 0x33CuLL:
      result = @"_ATXScoreInputMax";
      break;
    default:
      if (a3 != 0xFFFFFFFF)
      {
        [(_ATXScoreTypes *)a2 stringForScoreInput:?];
      }

      result = @"<Undefined Score Input>";
      break;
  }

  return result;
}

+ (unint64_t)scoreInputForString:(id)a3
{
  v3 = a3;
  if (scoreInputForString__onceToken != -1)
  {
    +[_ATXScoreTypes scoreInputForString:];
  }

  v4 = [scoreInputForString__scoreInputMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return v6;
}

+ (unint64_t)scoreInputForAggdString:(id)a3
{
  v3 = a3;
  if (scoreInputForAggdString__onceToken != -1)
  {
    +[_ATXScoreTypes scoreInputForAggdString:];
  }

  v4 = [scoreInputForAggdString__scoreInputMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  return v6;
}

+ (id)aggdStringForScoreInput:(unint64_t)a3
{
  result = @"AppInFolder";
  switch(a3)
  {
    case 0uLL:
      result = @"InstallAge";
      break;
    case 1uLL:
      result = @"LastSpotlightLaunchAge";
      break;
    case 2uLL:
      result = @"LastLaunchAge";
      break;
    case 3uLL:
      result = @"MedianSecondsBetweenLaunches";
      break;
    case 4uLL:
      result = @"AverageSecondsBetweenLaunches";
      break;
    case 5uLL:
      result = @"UnlockTime";
      break;
    case 6uLL:
      return result;
    case 7uLL:
      result = @"FolderPage";
      break;
    case 8uLL:
      result = @"HasSpringBoardPage";
      break;
    case 9uLL:
      result = @"SpringBoardPage";
      break;
    case 0xAuLL:
      result = @"OnSpringBoardDock";
      break;
    case 0xBuLL:
      result = @"Feedback";
      break;
    case 0xCuLL:
      result = @"FeedbackConfirms";
      break;
    case 0xDuLL:
      result = @"FeedbackRejects";
      break;
    case 0xEuLL:
      result = @"APRExplicitConfirmRatio";
      break;
    case 0xFuLL:
      result = @"APRExplicitRejectRatio";
      break;
    case 0x10uLL:
      result = @"APRImplicitConfirmRatio";
      break;
    case 0x11uLL:
      result = @"APRImplicitRejectRatio";
      break;
    case 0x12uLL:
      result = @"APRSiriKitIntentsRatio";
      break;
    case 0x13uLL:
      result = @"APRNonSiriKitIntentsRatio";
      break;
    case 0x14uLL:
      result = @"APRTotalExplicitConfirms";
      break;
    case 0x15uLL:
      result = @"APRTotalExplicitRejects";
      break;
    case 0x16uLL:
      result = @"APRTotalImplicitConfirms";
      break;
    case 0x17uLL:
      result = @"APRTotalImplicitRejects";
      break;
    case 0x18uLL:
      result = @"ScoreInputAPRTotalSiriKitIntents";
      break;
    case 0x19uLL:
      result = @"ScoreInputAPRTotalNonSiriKitIntents";
      break;
    case 0x1AuLL:
      result = @"LaunchTimePopularity";
      break;
    case 0x1BuLL:
      result = @"TimeOfDayPopularity";
      break;
    case 0x1CuLL:
      result = @"CoarseTimeOfDayPopularity";
      break;
    case 0x1DuLL:
      result = @"LaunchPopularity";
      break;
    case 0x1EuLL:
      result = @"SpotlightLaunchTimePopularity";
      break;
    case 0x1FuLL:
      result = @"SpotlightTimeOfDayPopularity";
      break;
    case 0x20uLL:
      result = @"SpotlightLaunchPopularity";
      break;
    case 0x21uLL:
      result = @"DayZeroPoints";
      break;
    case 0x22uLL:
      result = @"StaticAppPoints";
      break;
    case 0x23uLL:
      result = @"LaunchDayOfWeekPopularity";
      break;
    case 0x24uLL:
      result = @"DayOfWeekPopularity";
      break;
    case 0x25uLL:
      result = @"LaunchSequencePopularity";
      break;
    case 0x26uLL:
      result = @"LaunchLocationPopularity";
      break;
    case 0x27uLL:
      result = @"AppLaunchMicroLocationPopularity";
      break;
    case 0x28uLL:
      result = @"EntropyLaunchPopularity";
      break;
    case 0x29uLL:
      result = @"EntropyDayOfWeekPopularity";
      break;
    case 0x2AuLL:
      result = @"EntropyDayOfWeekPopularityByDay";
      break;
    case 0x2BuLL:
      result = @"EntropyDayOfWeekPopularityByApp";
      break;
    case 0x2CuLL:
      result = @"DistanceDayOfWeekToLaunchPopularity";
      break;
    case 0x2DuLL:
      result = @"EntropyTrendingPopularity";
      break;
    case 0x2EuLL:
      result = @"DistanceTrendingToLaunchPopularity";
      break;
    case 0x2FuLL:
      result = @"EntropySSIDPopularity";
      break;
    case 0x30uLL:
      result = @"EntropySSIDPopularityBySSID";
      break;
    case 0x31uLL:
      result = @"EntropySSIDPopularityByApp";
      break;
    case 0x32uLL:
      result = @"DistanceSSIDToLaunchPopularity";
      break;
    case 0x33uLL:
      result = @"AppCount";
      break;
    case 0x34uLL:
      result = @"DistanceToExplicitLaunchPrediction";
      break;
    case 0x35uLL:
      result = @"SiriKitIntentParzen";
      break;
    case 0x36uLL:
      result = @"NonSiriKitIntentParzen";
      break;
    case 0x37uLL:
      result = @"AppDailyDose";
      break;
    case 0x38uLL:
      result = @"AppCurrentDose";
      break;
    case 0x39uLL:
      result = @"AppDailyDoseRemaining";
      break;
    case 0x3AuLL:
      result = @"AppDailyDoseSmoothedError";
      break;
    case 0x3BuLL:
      result = @"TotalAppNumberOfLaunches";
      break;
    case 0x3CuLL:
      result = @"TotalAppNumberOfSpotlightLaunches";
      break;
    case 0x3DuLL:
      result = @"AirplaneModePopularity";
      break;
    case 0x3EuLL:
      result = @"TotalNumberOfAirplaneModeAppLaunches";
      break;
    case 0x3FuLL:
      result = @"TrendingPopularity";
      break;
    case 0x40uLL:
      result = @"TotalNumberOfTrendingAppLaunches";
      break;
    case 0x41uLL:
      result = @"SSIDPopularity";
      break;
    case 0x42uLL:
      result = @"TotalNumberOfSSIDAppLaunches";
      break;
    case 0x43uLL:
      result = @"OnWifi";
      break;
    case 0x44uLL:
      result = @"CoreMotionPopularity";
      break;
    case 0x45uLL:
      result = @"TotalNumberOfCoreMotionLaunches";
      break;
    case 0x46uLL:
      result = @"MagicalMomentsConfidence";
      break;
    case 0x47uLL:
      result = @"MagicalMomentsPredictionReason";
      break;
    case 0x48uLL:
      result = @"MagicalMomentsAnchor";
      break;
    case 0x49uLL:
      result = @"HeroAppConfidence";
      break;
    case 0x4AuLL:
      result = @"HeroAppPredictionReason";
      break;
    case 0x4BuLL:
      result = @"MagicalMomentsHeroAppPredictionIndex";
      break;
    case 0x4CuLL:
      result = @"MagicalMomentsHeroAppPredictionTotalPredictions";
      break;
    case 0x4DuLL:
      result = @"MostRecentNotificationAge";
      break;
    case 0x4EuLL:
      result = @"AppPreferenceBundleBoost";
      break;
    case 0x4FuLL:
      result = @"AppIntentPartOfWeekPopularity";
      break;
    case 0x50uLL:
      result = @"AppIntentLaunchPartOfWeekPopularity";
      break;
    case 0x51uLL:
      result = @"GenreTimeOfDayPopularity";
      break;
    case 0x52uLL:
      result = @"GenreSequencePopularity";
      break;
    case 0x53uLL:
      result = @"GenreDayOfWeekPopularity";
      break;
    case 0x54uLL:
      result = @"GenreSpotlightLaunchPopularity";
      break;
    case 0x55uLL:
      result = @"TrendingGenrePopularity";
      break;
    case 0x56uLL:
      result = @"GenreAirplaneModePopularity";
      break;
    case 0x57uLL:
      result = @"GenreDailyDoseRemaining";
      break;
    case 0x58uLL:
      result = @"GenreLocationPopularity";
      break;
    case 0x59uLL:
      result = @"GenreSSIDPopularity";
      break;
    case 0x5AuLL:
      result = @"App2VecClusterTimeOfDayPopularity";
      break;
    case 0x5BuLL:
      result = @"App2VecClusterSequencePopularity";
      break;
    case 0x5CuLL:
      result = @"App2VecClusterDayOfWeekPopularity";
      break;
    case 0x5DuLL:
      result = @"App2VecTrendingPopularity";
      break;
    case 0x5EuLL:
      result = @"App2VecLocationPopularity";
      break;
    case 0x5FuLL:
      result = @"App2VecClusterCount";
      break;
    case 0x60uLL:
      result = @"SupportsMedia";
      break;
    case 0x61uLL:
      result = @"AppTimeAndDayOfWeekPopularity";
      break;
    case 0x62uLL:
      result = @"AppPopularityGivenTimeAndDayOfWeek";
      break;
    case 0x63uLL:
      result = @"AppPopularityOfTimeAndDayOfWeekGivenApp";
      break;
    case 0x64uLL:
      result = @"AppTotalNumberOfTimeAndDayOfWeekLaunches";
      break;
    case 0x65uLL:
      result = @"AppIntentCount";
      break;
    case 0x66uLL:
      result = @"AppIntentSlotCountForAllAppActions";
      break;
    case 0x67uLL:
      result = @"AppIntentTotalNumberOfLaunches";
      break;
    case 0x68uLL:
      result = @"AppIntentTotalNumberOfAirplaneModeLaunches";
      break;
    case 0x69uLL:
      result = @"AppIntentTotalNumberOfSSIDLaunches";
      break;
    case 0x6AuLL:
      result = @"AppIntentTotalNumberOfCoreMotionLaunches";
      break;
    case 0x6BuLL:
      result = @"AppIntentTotalNumberOfTrendingLaunches";
      break;
    case 0x6CuLL:
      result = @"DayOfWeekBucket";
      break;
    case 0x6DuLL:
      result = @"TimeOfDayBucket";
      break;
    case 0x6EuLL:
      result = @"IsDateInWeekendOnDevice";
      break;
    case 0x6FuLL:
      result = @"AppIntentLaunchPopularity";
      break;
    case 0x70uLL:
      result = @"AppIntentTrendingPopularity";
      break;
    case 0x71uLL:
      result = @"AppIntentTimeOfDayPopularity";
      break;
    case 0x72uLL:
      result = @"AppIntentCoarseTimeOfDayPopularity";
      break;
    case 0x73uLL:
      result = @"AppIntentDayOfWeekPopularity";
      break;
    case 0x74uLL:
      result = @"AppIntentUnlockTime";
      break;
    case 0x75uLL:
      result = @"AppIntentSSIDPopularity";
      break;
    case 0x76uLL:
      result = @"AppIntentCoreMotionPopularity";
      break;
    case 0x77uLL:
      result = @"AppIntentAirplaneModePopularity";
      break;
    case 0x78uLL:
      result = @"AppIntentLaunchLocationPopularity";
      break;
    case 0x79uLL:
      result = @"AppIntentLaunchMicroLocationPopularity";
      break;
    case 0x7AuLL:
      result = @"AppIntentLaunchSequencePopularity";
      break;
    case 0x7BuLL:
      result = @"AppIntentAppLaunchSequencePopularity";
      break;
    case 0x7CuLL:
      result = @"AppIntentLaunchTimePopularity";
      break;
    case 0x7DuLL:
      result = @"AppIntentLaunchDayOfWeekPopularity";
      break;
    case 0x7EuLL:
      result = @"AppIntentLastLaunchAge";
      break;
    case 0x7FuLL:
      result = @"AppIntentAverageSecondsBetweenAppActions";
      break;
    case 0x80uLL:
      result = @"AppIntentMedianSecondsBetweenAppActions";
      break;
    case 0x81uLL:
      result = @"AppIntentDayZeroPoints";
      break;
    case 0x82uLL:
      result = @"AppIntentStaticAppPoints";
      break;
    case 0x83uLL:
      result = @"AppIntentStaticValueScore";
      break;
    case 0x84uLL:
      result = @"AppCategory";
      break;
    case 0x85uLL:
      result = @"IntentCategory";
      break;
    case 0x86uLL:
      result = @"ActionKeyCategory";
      break;
    case 0x87uLL:
      result = @"IntentCategoryFromIntentDefinition";
      break;
    case 0x88uLL:
      result = @"AppIntentEntropyLaunchPopularity";
      break;
    case 0x89uLL:
      result = @"AppIntentEntropyDayOfWeekPopularity";
      break;
    case 0x8AuLL:
      result = @"AppIntentEntropyDayOfWeekPopularityByDay";
      break;
    case 0x8BuLL:
      result = @"AppIntentEntropyDayOfWeekPopularityByAppIntent";
      break;
    case 0x8CuLL:
      result = @"AppIntentEntropyTrendingPopularity";
      break;
    case 0x8DuLL:
      result = @"AppIntentEntropySSIDPopularity";
      break;
    case 0x8EuLL:
      result = @"AppIntentEntropySSIDPopularityBySSID";
      break;
    case 0x8FuLL:
      result = @"AppIntentEntropySSIDPopularityByAppIntent";
      break;
    case 0x90uLL:
      result = @"AppIntentDistanceDayOfWeekToLaunchPopularity";
      break;
    case 0x91uLL:
      result = @"AppIntentDistanceTrendingToLaunchPopularity";
      break;
    case 0x92uLL:
      result = @"AppIntentDistanceSSIDToLaunchPopularity";
      break;
    case 0x93uLL:
      result = @"AppActionConfirmEvents";
      break;
    case 0x94uLL:
      result = @"AppActionRejectEvents";
      break;
    case 0x95uLL:
      result = @"TotalAppActionConfirmEvents";
      break;
    case 0x96uLL:
      result = @"TotalAppActionRejectEvents";
      break;
    case 0x97uLL:
      result = @"AppForAllIntentsCount";
      break;
    case 0x98uLL:
      result = @"AppForAllIntentsTotalNumberOfLaunches";
      break;
    case 0x99uLL:
      result = @"AppForAllIntentsTotalNumberOfAirplaneModeLaunches";
      break;
    case 0x9AuLL:
      result = @"AppForAllIntentsTotalNumberOfSSIDLaunches";
      break;
    case 0x9BuLL:
      result = @"AppForAllIntentsTotalNumberOfCoreMotionLaunches";
      break;
    case 0x9CuLL:
      result = @"AppForAllIntentsTotalNumberOfTrendingLaunches";
      break;
    case 0x9DuLL:
      result = @"AppForAllIntentsLaunchPopularity";
      break;
    case 0x9EuLL:
      result = @"AppForAllIntentsTimeOfDayPopularity";
      break;
    case 0x9FuLL:
      result = @"AppForAllIntentsDayOfWeekPopularity";
      break;
    case 0xA0uLL:
      result = @"AppForAllIntentsCoarseTimeOfDayPopularity";
      break;
    case 0xA1uLL:
      result = @"AppForAllIntentsUnlockTime";
      break;
    case 0xA2uLL:
      result = @"AppForAllIntentsAirplaneModePopularity";
      break;
    case 0xA3uLL:
      result = @"AppForAllIntentsSSIDPopularity";
      break;
    case 0xA4uLL:
      result = @"AppForAllIntentsCoreMotionPopularity";
      break;
    case 0xA5uLL:
      result = @"AppForAllIntentsTrendingPopularity";
      break;
    case 0xA6uLL:
      result = @"AppForAllIntentsLaunchLocationPopularity";
      break;
    case 0xA7uLL:
      result = @"AppForAllIntentsLaunchTimePopularity";
      break;
    case 0xA8uLL:
      result = @"AppForAllIntentsLaunchDayOfWeekPopularity";
      break;
    case 0xA9uLL:
      result = @"AppForAllIntentsEntropyLaunchPopularity";
      break;
    case 0xAAuLL:
      result = @"AppForAllIntentsEntropyDayOfWeekPopularity";
      break;
    case 0xABuLL:
      result = @"AppForAllIntentsEntropyDayOfWeekPopularityByDay";
      break;
    case 0xACuLL:
      result = @"AppForAllIntentsEntropyDayOfWeekPopularityByApp";
      break;
    case 0xADuLL:
      result = @"AppForAllIntentsEntropyTrendingPopularity";
      break;
    case 0xAEuLL:
      result = @"AppForAllIntentsEntropySSIDPopularity";
      break;
    case 0xAFuLL:
      result = @"AppForAllIntentsEntropySSIDPopularityBySSID";
      break;
    case 0xB0uLL:
      result = @"AppForAllIntentsEntropySSIDPopularityByApp";
      break;
    case 0xB1uLL:
      result = @"AppForAllIntentsDistanceSSIDToLaunchPopularity";
      break;
    case 0xB2uLL:
      result = @"AppForAllIntentsDistanceDayOfWeekToLaunchPopularity";
      break;
    case 0xB3uLL:
      result = @"AppForAllIntentsDistanceTrendingToLaunchPopularity";
      break;
    case 0xB4uLL:
      result = @"AppForAllActionsConfirmEvents";
      break;
    case 0xB5uLL:
      result = @"AppForAllActionsRejectEvents";
      break;
    case 0xB6uLL:
      result = @"TotalAppForAllActionsConfirmEvents";
      break;
    case 0xB7uLL:
      result = @"TotalAppForAllActionsRejectEvents";
      break;
    case 0xB8uLL:
      result = @"SlotCount";
      break;
    case 0xB9uLL:
      result = @"SlotTotalNumberOfLaunches";
      break;
    case 0xBAuLL:
      result = @"SlotTotalNumberOfUniqueDaysLaunched";
      break;
    case 0xBBuLL:
      result = @"SlotLaunchPopularity";
      break;
    case 0xBCuLL:
      result = @"SlotTimeOfDayPopularity";
      break;
    case 0xBDuLL:
      result = @"SlotTimeOfDayWithThirtyMinuteWindowPopularity";
      break;
    case 0xBEuLL:
      result = @"SlotTimeOfDayWithHourWindowPopularity";
      break;
    case 0xBFuLL:
      result = @"SlotTimeOfDayWithEightHourWindowPopularity";
      break;
    case 0xC0uLL:
      result = @"SlotDayOfWeekPopularity";
      break;
    case 0xC1uLL:
      result = @"SlotPartOfWeekPopularity";
      break;
    case 0xC2uLL:
      result = @"SlotPartOfWeekAndLocationPopularity";
      break;
    case 0xC3uLL:
      result = @"SlotCoarseTimeOfDayPopularity";
      break;
    case 0xC4uLL:
      result = @"ScoreInputSlotLocationPopularity";
      break;
    case 0xC5uLL:
      result = @"SlotCoreMotionPopularity";
      break;
    case 0xC6uLL:
      result = @"SlotPreviousLocationPopularity";
      break;
    case 0xC7uLL:
      result = @"SlotTimeAndDayPopularity";
      break;
    case 0xC8uLL:
      result = @"SlotTimeAndLocationPopularity";
      break;
    case 0xC9uLL:
      result = @"SlotDayAndLocationPopularity";
      break;
    case 0xCAuLL:
      result = @"SlotTimeAndDayAndLocationPopularity";
      break;
    case 0xCBuLL:
      result = @"SlotPreviousLocationAndCoreMotionPopularity";
      break;
    case 0xCCuLL:
      result = @"SlotPreviousLocationAndLocationPopularity";
      break;
    case 0xCDuLL:
      result = @"SlotTimeAndPreviousLocationPopularity";
      break;
    case 0xCEuLL:
      result = @"SlotDayAndPreviousLocationPopularity";
      break;
    case 0xCFuLL:
      result = @"SlotPartOfWeekAndTimePopularity";
      break;
    case 0xD0uLL:
      result = @"SlotLaunchTimePopularity";
      break;
    case 0xD1uLL:
      result = @"SlotLaunchCoarseTimePopularity";
      break;
    case 0xD2uLL:
      result = @"SlotLaunchDayOfWeekPopularity";
      break;
    case 0xD3uLL:
      result = @"SlotLaunchPartOfWeekPopularity";
      break;
    case 0xD4uLL:
      result = @"SlotLaunchPartOfWeekAndLocationPopularity";
      break;
    case 0xD5uLL:
      result = @"SlotLaunchLocationPopularity";
      break;
    case 0xD6uLL:
      result = @"SlotLaunchCoreMotionPopularity";
      break;
    case 0xD7uLL:
      result = @"SlotLaunchPreviousLocationPopularity";
      break;
    case 0xD8uLL:
      result = @"SlotLaunchTimeAndDayPopularity";
      break;
    case 0xD9uLL:
      result = @"SlotLaunchTimeAndLocationPopularity";
      break;
    case 0xDAuLL:
      result = @"SlotLaunchDayAndLocationPopularity";
      break;
    case 0xDBuLL:
      result = @"SlotLaunchTimeAndDayAndLocationPopularity";
      break;
    case 0xDCuLL:
      result = @"SlotLaunchPreviousLocationAndCoreMotionPopularity";
      break;
    case 0xDDuLL:
      result = @"SlotLaunchPreviousLocationAndLocationPopularity";
      break;
    case 0xDEuLL:
      result = @"SlotLaunchTimeAndPreviousLocationPopularity";
      break;
    case 0xDFuLL:
      result = @"SlotLaunchDayAndPreviousLocationPopularity";
      break;
    case 0xE0uLL:
      result = @"SlotLaunchPartOfWeekAndTimePopularity";
      break;
    case 0xE1uLL:
      result = @"SlotLaunchTimeCount";
      break;
    case 0xE2uLL:
      result = @"SlotLaunchDayOfWeekCount";
      break;
    case 0xE3uLL:
      result = @"SlotLaunchPartOfWeekCount";
      break;
    case 0xE4uLL:
      result = @"SlotLaunchCoarseTimeCount";
      break;
    case 0xE5uLL:
      result = @"SlotLaunchTimeWithThirtyMinuteWindowCount";
      break;
    case 0xE6uLL:
      result = @"SlotLaunchTimeWithHourWindowCount";
      break;
    case 0xE7uLL:
      result = @"SlotLaunchTimeWithEightHourWindowCount";
      break;
    case 0xE8uLL:
      result = @"SlotLaunchLocationCount";
      break;
    case 0xE9uLL:
      result = @"SlotLaunchCoreMotionCount";
      break;
    case 0xEAuLL:
      result = @"SlotLaunchPreviousLocationCount";
      break;
    case 0xEBuLL:
      result = @"SlotTotalLaunchesForSlotUsingTimeDecay";
      break;
    case 0xECuLL:
      result = @"SlotTotalLaunchesForSlotUsingDayOfWeekDecay";
      break;
    case 0xEDuLL:
      result = @"SlotTotalLaunchesForSlotUsingLocationDecay";
      break;
    case 0xEEuLL:
      result = @"SlotTotalLaunchesForSlotUsingCoreMotionDecay";
      break;
    case 0xEFuLL:
      result = @"SlotTotalLaunchesForSlotUsingPreviousLocationDecay";
      break;
    case 0xF0uLL:
      result = @"SlotTotalLaunchesForSlotUsingPartOfWeekDecay";
      break;
    case 0xF1uLL:
      result = @"SlotTotalLaunchesForSlotUsingTimeAndDayDecay";
      break;
    case 0xF2uLL:
      result = @"SlotTotalLaunchesForSlotUsingTimeAndLocationDecay";
      break;
    case 0xF3uLL:
      result = @"SlotTotalLaunchesForSlotUsingDayAndLocationDecay";
      break;
    case 0xF4uLL:
      result = @"SlotTotalLaunchesForSlotUsingTimeAndDayAndLocationDecay";
      break;
    case 0xF5uLL:
      result = @"SlotTotalLaunchesForSlotUsingPreviousLocationAndLocationDecay";
      break;
    case 0xF6uLL:
      result = @"SlotTotalLaunchesForSlotUsingPreviousLocationAndCoreMotionDecay";
      break;
    case 0xF7uLL:
      result = @"SlotTotalLaunchesForSlotUsingTimeAndPreviousLocationDecay";
      break;
    case 0xF8uLL:
      result = @"SlotTotalLaunchesForSlotUsingDayAndPreviousLocationDecay";
      break;
    case 0xF9uLL:
      result = @"SlotTotalLaunchesForSlotUsingPartOfWeekAndLocationDecay";
      break;
    case 0xFAuLL:
      result = @"SlotTotalLaunchesForSlotUsingPartOfWeekAndTimeDecay";
      break;
    case 0xFBuLL:
      result = @"SlotSecondsSinceLastSlot";
      break;
    case 0xFCuLL:
      result = @"SlotOnlyLaunchedWithinShortTimeSpan";
      break;
    case 0xFDuLL:
      result = @"SlotTotalNumberOfUndecayedLaunchesForSlot";
      break;
    case 0xFEuLL:
      result = @"SlotNumberOfUniqueDaysLaunchedForSlot";
      break;
    case 0xFFuLL:
      result = @"SlotTotalNumberOfLaunchesForSlot";
      break;
    case 0x100uLL:
      result = @"SlotLOIBoost";
      break;
    case 0x101uLL:
      result = @"SlotNumberOfParameters";
      break;
    case 0x102uLL:
      result = @"SlotNumSessionStartsForRootOfApp";
      break;
    case 0x103uLL:
      result = @"SlotTotalNumSessionsForRootOfApp";
      break;
    case 0x104uLL:
      result = @"SlotNumDocFreqForRootOfApp";
      break;
    case 0x105uLL:
      result = @"SlotEntropyForSlotSet";
      break;
    case 0x106uLL:
      result = @"SlotTotalNumberOfLaunchesForSlotSet";
      break;
    case 0x107uLL:
      result = @"SlotTimeOfDayBudgetMeanForSlot";
      break;
    case 0x108uLL:
      result = @"SlotTimeOfDayBudgetStdDevForSlot";
      break;
    case 0x109uLL:
      result = @"SlotTodaysTimeOfDayBudgetForSlot";
      break;
    case 0x10AuLL:
      result = @"SlotFeedbackTotalConfirmsForSlot";
      break;
    case 0x10BuLL:
      result = @"SlotFeedbackTotalRejectsForSlot";
      break;
    case 0x10CuLL:
      result = @"SlotFeedbackTotalExplicitRejectsForSlotNoDecay";
      break;
    case 0x10DuLL:
      result = @"SlotFeedbackTotalConfirmsForAllSlots";
      break;
    case 0x10EuLL:
      result = @"SlotFeedbackTotalRejectsForAllSlots";
      break;
    case 0x10FuLL:
      result = @"SlotFeedbackTotalExplicitRejectsForAllSlotsNoDecay";
      break;
    case 0x110uLL:
      result = @"SlotFeedbackConfirmRatio";
      break;
    case 0x111uLL:
      result = @"SlotFeedbackConfirmRatioStdDev";
      break;
    case 0x112uLL:
      result = @"SlotFeedbackConfirmRatioMean";
      break;
    case 0x113uLL:
      result = @"SlotFeedbackConfirmRatioCount";
      break;
    case 0x114uLL:
      result = @"SlotFeedbackMinutesSinceLastExplicitRejectInHomeScreen";
      break;
    case 0x115uLL:
      result = @"SlotFeedbackMinutesSinceLastConfirmInSpotlight";
      break;
    case 0x116uLL:
      result = @"SlotFeedbackMinutesSinceLastExplicitRejectInSpotlight";
      break;
    case 0x117uLL:
      result = @"SlotFeedbackTotalConfirmsForSlotInLastHourInSpotlight";
      break;
    case 0x118uLL:
      result = @"SlotFeedbackTotalRejectsForSlotInLastHourInSpotlight";
      break;
    case 0x119uLL:
      result = @"SlotFeedbackTotalConfirmsForSlotInLastTwoHoursInSpotlight";
      break;
    case 0x11AuLL:
      result = @"SlotFeedbackTotalRejectsForSlotInLastTwoHoursInSpotlight";
      break;
    case 0x11BuLL:
      result = @"SlotFeedbackTotalConfirmsForSlotTodayInSpotlight";
      break;
    case 0x11CuLL:
      result = @"SlotFeedbackTotalRejectsForSlotTodayInSpotlight";
      break;
    case 0x11DuLL:
      result = @"SlotFeedbackTotalConfirmsForSlotInSpotlight";
      break;
    case 0x11EuLL:
      result = @"SlotFeedbackTotalRejectsForSlotInSpotlight";
      break;
    case 0x11FuLL:
      result = @"SlotFeedbackConfirmsPartOfWeekCountInSpotlight";
      break;
    case 0x120uLL:
      result = @"SlotFeedbackConfirmsDayCountInSpotlight";
      break;
    case 0x121uLL:
      result = @"SlotFeedbackConfirmsTimeOfDayCountInSpotlight";
      break;
    case 0x122uLL:
      result = @"SlotFeedbackConfirmsCoarseTimeOfDayCountInSpotlight";
      break;
    case 0x123uLL:
      result = @"SlotFeedbackTotalConfirmsInSpotlightForAllSlots";
      break;
    case 0x124uLL:
      result = @"SlotFeedbackTotalRejectsInSpotlightForAllSlots";
      break;
    case 0x125uLL:
      result = @"SlotFeedbackTotalConfirmsForSlotTodayInLockscreen";
      break;
    case 0x126uLL:
      result = @"SlotFeedbackTotalRejectsForSlotTodayInLockscreen";
      break;
    case 0x127uLL:
      result = @"SlotFeedbackMinutesSinceLastConfirmInLockscreen";
      break;
    case 0x128uLL:
      result = @"SlotFeedbackMinutesSinceLastRejectInLockscreen";
      break;
    case 0x129uLL:
      result = @"SlotFeedbackMinutesSinceLastExplicitRejectInLockscreen";
      break;
    case 0x12AuLL:
      result = @"SlotFeedbackTotalConfirmsForSlotInLockscreen";
      break;
    case 0x12BuLL:
      result = @"SlotFeedbackTotalRejectsForSlotInLockscreen";
      break;
    case 0x12CuLL:
      result = @"SlotFeedbackConfirmsPartOfWeekCountInLockscreen";
      break;
    case 0x12DuLL:
      result = @"SlotFeedbackConfirmsDayCountInLockscreen";
      break;
    case 0x12EuLL:
      result = @"SlotFeedbackConfirmsTimeOfDayCountInLockscreen";
      break;
    case 0x12FuLL:
      result = @"SlotFeedbackConfirmsCoarseTimeOfDayCountInLockscreen";
      break;
    case 0x130uLL:
      result = @"SlotFeedbackTotalConfirmsTodayInLockscreenForAllSlots";
      break;
    case 0x131uLL:
      result = @"SlotFeedbackTotalRejectsTodayInLockscreenForAllSlots";
      break;
    case 0x132uLL:
      result = @"SlotFeedbackTotalConfirmsInLockscreenForAllSlots";
      break;
    case 0x133uLL:
      result = @"SlotFeedbackTotalRejectsInLockscreenForAllSlots";
      break;
    case 0x134uLL:
      result = @"ActionFeedbackTotalConfirmsInSpotlight";
      break;
    case 0x135uLL:
      result = @"ActionFeedbackTotalRejectsInSpotlight";
      break;
    case 0x136uLL:
      result = @"ActionFeedbackTotalConfirmsTodayInLockscreen";
      break;
    case 0x137uLL:
      result = @"ActionFeedbackTotalRejectsTodayInLockscreen";
      break;
    case 0x138uLL:
      result = @"ActionFeedbackTotalConfirmsInLockscreen";
      break;
    case 0x139uLL:
      result = @"ActionFeedbackTotalRejectsInLockscreen";
      break;
    case 0x13AuLL:
      result = @"ActionFeedbackMeanNumberOfSpotlightLaunchesPerDay";
      break;
    case 0x13BuLL:
      result = @"ActionFeedbackMeanNumberOfSpotlightConfirmsPerDay";
      break;
    case 0x13CuLL:
      result = @"ActionLaunchPopularity";
      break;
    case 0x13DuLL:
      result = @"ActionTimeOfDayPopularity";
      break;
    case 0x13EuLL:
      result = @"ActionTimeOfDayWithThirtyMinuteWindowPopularity";
      break;
    case 0x13FuLL:
      result = @"ActionTimeOfDayWithHourWindowPopularity";
      break;
    case 0x140uLL:
      result = @"ActionTimeOfDayWithEightHourWindowPopularity";
      break;
    case 0x141uLL:
      result = @"ActionCoarseTimeOfDayPopularity";
      break;
    case 0x142uLL:
      result = @"ActionDayOfWeekPopularity";
      break;
    case 0x143uLL:
      result = @"ActionPartOfWeekPopularity";
      break;
    case 0x144uLL:
      result = @"ActionPartOfWeekAndLocationPopularity";
      break;
    case 0x145uLL:
      result = @"ActionLocationPopularity";
      break;
    case 0x146uLL:
      result = @"ActionCoreMotionPopularity";
      break;
    case 0x147uLL:
      result = @"ActionPreviousLocationPopularity";
      break;
    case 0x148uLL:
      result = @"ActionPreviousLocationAndCoreMotionPopularity";
      break;
    case 0x149uLL:
      result = @"ActionPreviousLocationAndLocationPopularity";
      break;
    case 0x14AuLL:
      result = @"ActionTimeAndPreviousLocationPopularity";
      break;
    case 0x14BuLL:
      result = @"ActionDayAndPreviousLocationPopularity";
      break;
    case 0x14CuLL:
      result = @"ActionTimeAndDayPopularity";
      break;
    case 0x14DuLL:
      result = @"ActionTimeAndLocationPopularity";
      break;
    case 0x14EuLL:
      result = @"ActionDayAndLocationPopularity";
      break;
    case 0x14FuLL:
      result = @"ActionTimeAndDayAndLocationPopularity";
      break;
    case 0x150uLL:
      result = @"ActionPartOfWeekAndTimePopularity";
      break;
    case 0x151uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingTimeDecay";
      break;
    case 0x152uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingDayOfWeekDecay";
      break;
    case 0x153uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingLocationDecay";
      break;
    case 0x154uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingCoreMotionDecay";
      break;
    case 0x155uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPreviousLocationDecay";
      break;
    case 0x156uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPartOfWeekDecay";
      break;
    case 0x157uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPreviousLocationAndCoreMotionDecay";
      break;
    case 0x158uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPreviousLocationAndLocationDecay";
      break;
    case 0x159uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingTimeAndPreviousLocationDecay";
      break;
    case 0x15AuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingDayAndPreviousLocationDecay";
      break;
    case 0x15BuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingTimeAndDayDecay";
      break;
    case 0x15CuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingTimeAndLocationDecay";
      break;
    case 0x15DuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingDayAndLocationDecay";
      break;
    case 0x15EuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingTimeAndDayAndLocationDecay";
      break;
    case 0x15FuLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPartOfWeekAndLocationDecay";
      break;
    case 0x160uLL:
      result = @"ActionTotalLaunchesForAllActionsUsingPartOfWeekAndTimeDecay";
      break;
    case 0x161uLL:
      result = @"RandomSessionValue";
      break;
    case 0x162uLL:
      result = @"RandomScore";
      break;
    case 0x163uLL:
      result = @"ActionTotalConfirms";
      break;
    case 0x164uLL:
      result = @"ActionTotalRejects";
      break;
    case 0x165uLL:
      result = @"_ATXScoreInputActionTotalExplicitRejectsNoDecay";
      break;
    case 0x166uLL:
      result = @"AppSpecificAlpha";
      break;
    case 0x167uLL:
      result = @"AppSpecificBeta";
      break;
    case 0x168uLL:
      result = @"GlobalScoreGivenTimeDayLocationAndLastApp";
      break;
    case 0x169uLL:
      result = @"AppGlobalScoreGivenTimeDayAndLocation";
      break;
    case 0x16AuLL:
      result = @"AppLOITypeLaunches";
      break;
    case 0x16BuLL:
      result = @"AppLastAppLaunches";
      break;
    case 0x16CuLL:
      result = @"AppTimeOfDayLaunches";
      break;
    case 0x16DuLL:
      result = @"AppDayOfWeekLaunches";
      break;
    case 0x16EuLL:
      result = @"AppBlendedLOITypePopularity";
      break;
    case 0x16FuLL:
      result = @"AppBlendedLastAppPopularity";
      break;
    case 0x170uLL:
      result = @"AppBlendedTimeOfDayPopularity";
      break;
    case 0x171uLL:
      result = @"AppBlendedDayOfWeekPopularity";
      break;
    case 0x172uLL:
      result = @"AppBlendedLOITypeSampledPopularity";
      break;
    case 0x173uLL:
      result = @"AppBlendedLastAppSampledPopularity";
      break;
    case 0x174uLL:
      result = @"AppBlendedTimeOfDaySampledPopularity";
      break;
    case 0x175uLL:
      result = @"AppBlendedDayOfWeekSampledPopularity";
      break;
    case 0x176uLL:
      result = @"ActionIsFutureMedia";
      break;
    case 0x177uLL:
      result = @"ActionIsBackgroundExecutable";
      break;
    case 0x178uLL:
      result = @"ActionMotionType";
      break;
    case 0x179uLL:
      result = @"ActionLOIType";
      break;
    case 0x17AuLL:
      result = @"SlotIsSiriKitIntent";
      break;
    case 0x17BuLL:
      result = @"SlotIsCustomIntent";
      break;
    case 0x17CuLL:
      result = @"SlotIsNSUserActivity";
      break;
    case 0x17DuLL:
      result = @"AppActionScore";
      break;
    case 0x17EuLL:
      result = @"AppActionLogProbability";
      break;
    case 0x17FuLL:
      result = @"SlotScore";
      break;
    case 0x180uLL:
      result = @"SlotLogProbability";
      break;
    case 0x181uLL:
      result = @"ActionHeuristicConfirmEvents";
      break;
    case 0x182uLL:
      result = @"ActionHeuristicRejectEvents";
      break;
    case 0x183uLL:
      result = @"TotalActionHeuristicConfirmEvents";
      break;
    case 0x184uLL:
      result = @"TotalActionHeuristicRejectEvents";
      break;
    case 0x185uLL:
      result = @"AmbientLightTypePopularity";
      break;
    case 0x186uLL:
      result = @"AmbientLightTypeLaunchPopularity";
      break;
    case 0x187uLL:
      result = @"AppIntentAmbientLightTypePopularity";
      break;
    case 0x188uLL:
      result = @"AppIntentAmbientLightTypeLaunchPopularity";
      break;
    case 0x189uLL:
      result = @"AppLaunchesCoarseTimePowLocationForAppInContext";
      break;
    case 0x18AuLL:
      result = @"AppLaunchesCoarseTimePowLocationInContext";
      break;
    case 0x18BuLL:
      result = @"AppLaunchesCoarseTimePowLocationForApp";
      break;
    case 0x18CuLL:
      result = @"AppLaunchesCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x18DuLL:
      result = @"AppConfirmsCoarseTimePowLocationForAppInContext";
      break;
    case 0x18EuLL:
      result = @"AppConfirmsCoarseTimePowLocationInContext";
      break;
    case 0x18FuLL:
      result = @"AppConfirmsCoarseTimePowLocationForApp";
      break;
    case 0x190uLL:
      result = @"AppConfirmsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x191uLL:
      result = @"AppRejectsCoarseTimePowLocationForAppInContext";
      break;
    case 0x192uLL:
      result = @"AppRejectsCoarseTimePowLocationInContext";
      break;
    case 0x193uLL:
      result = @"AppRejectsCoarseTimePowLocationForApp";
      break;
    case 0x194uLL:
      result = @"AppRejectsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x195uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForAppInContext";
      break;
    case 0x196uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationInContext";
      break;
    case 0x197uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForApp";
      break;
    case 0x198uLL:
      result = @"_ATXScoreInputAppExplicitRejectsCoarseTimePowLocationForAllAppsAndContexts";
      break;
    case 0x199uLL:
      result = @"AppLaunchesSpecificTimeDowLocationForAppInContext";
      break;
    case 0x19AuLL:
      result = @"AppLaunchesSpecificTimeDowLocationInContext";
      break;
    case 0x19BuLL:
      result = @"AppLaunchesSpecificTimeDowLocationForApp";
      break;
    case 0x19CuLL:
      result = @"AppLaunchesSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x19DuLL:
      result = @"AppConfirmsSpecificTimeDowLocationForAppInContext";
      break;
    case 0x19EuLL:
      result = @"AppConfirmsSpecificTimeDowLocationInContext";
      break;
    case 0x19FuLL:
      result = @"AppConfirmsSpecificTimeDowLocationForApp";
      break;
    case 0x1A0uLL:
      result = @"AppConfirmsSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x1A1uLL:
      result = @"AppRejectsSpecificTimeDowLocationForAppInContext";
      break;
    case 0x1A2uLL:
      result = @"AppRejectsSpecificTimeDowLocationInContext";
      break;
    case 0x1A3uLL:
      result = @"AppRejectsSpecificTimeDowLocationForApp";
      break;
    case 0x1A4uLL:
      result = @"AppRejectsSpecificTimeDowLocationForAllAppsAndContexts";
      break;
    case 0x1A5uLL:
      result = @"ActionsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1A6uLL:
      result = @"ActionsCoarseTimePowLocationInContext";
      break;
    case 0x1A7uLL:
      result = @"ActionsCoarseTimePowLocationForAction";
      break;
    case 0x1A8uLL:
      result = @"ActionsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1A9uLL:
      result = @"ActionConfirmsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1AAuLL:
      result = @"ActionConfirmsCoarseTimePowLocationInContext";
      break;
    case 0x1ABuLL:
      result = @"ActionConfirmsCoarseTimePowLocationForAction";
      break;
    case 0x1ACuLL:
      result = @"ActionConfirmsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1ADuLL:
      result = @"ActionRejectsCoarseTimePowLocationForActionInContext";
      break;
    case 0x1AEuLL:
      result = @"ActionRejectsCoarseTimePowLocationInContext";
      break;
    case 0x1AFuLL:
      result = @"ActionRejectsCoarseTimePowLocationForAction";
      break;
    case 0x1B0uLL:
      result = @"ActionRejectsCoarseTimePowLocationForAllActionsAndContexts";
      break;
    case 0x1B1uLL:
      result = @"ActionsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1B2uLL:
      result = @"ActionsSpecificTimeDowLocationInContext";
      break;
    case 0x1B3uLL:
      result = @"ActionsSpecificTimeDowLocationForAction";
      break;
    case 0x1B4uLL:
      result = @"ActionsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1B5uLL:
      result = @"ActionConfirmsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1B6uLL:
      result = @"ActionConfirmsSpecificTimeDowLocationInContext";
      break;
    case 0x1B7uLL:
      result = @"ActionConfirmsSpecificTimeDowLocationForAction";
      break;
    case 0x1B8uLL:
      result = @"ActionConfirmsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1B9uLL:
      result = @"ActionRejectsSpecificTimeDowLocationForActionInContext";
      break;
    case 0x1BAuLL:
      result = @"ActionRejectsSpecificTimeDowLocationInContext";
      break;
    case 0x1BBuLL:
      result = @"ActionRejectsSpecificTimeDowLocationForAction";
      break;
    case 0x1BCuLL:
      result = @"ActionRejectsSpecificTimeDowLocationForAllActionsAndContexts";
      break;
    case 0x1BDuLL:
      result = @"AppLaunchesInTimeBucket0ForApp";
      break;
    case 0x1BEuLL:
      result = @"AppLaunchesInTimeBucket1ForApp";
      break;
    case 0x1BFuLL:
      result = @"AppLaunchesInTimeBucket2ForApp";
      break;
    case 0x1C0uLL:
      result = @"AppLaunchesInTimeBucket3ForApp";
      break;
    case 0x1C1uLL:
      result = @"AppLaunchesInTimeBucket4ForApp";
      break;
    case 0x1C2uLL:
      result = @"AppLaunchesInTimeBucket5ForApp";
      break;
    case 0x1C3uLL:
      result = @"AppLaunchesInTimeBucket6ForApp";
      break;
    case 0x1C4uLL:
      result = @"AppLaunchesInTimeBucket7ForApp";
      break;
    case 0x1C5uLL:
      result = @"AppLaunchesInTimeBucket8ForApp";
      break;
    case 0x1C6uLL:
      result = @"AppLaunchesInTimeBucket9ForApp";
      break;
    case 0x1C7uLL:
      result = @"AppLaunchesInTimeBucket10ForApp";
      break;
    case 0x1C8uLL:
      result = @"AppLaunchesInTimeBucket11ForApp";
      break;
    case 0x1C9uLL:
      result = @"AppLaunchesInTimeBucket12ForApp";
      break;
    case 0x1CAuLL:
      result = @"AppLaunchesInTimeBucket13ForApp";
      break;
    case 0x1CBuLL:
      result = @"AppLaunchesInTimeBucket14ForApp";
      break;
    case 0x1CCuLL:
      result = @"AppLaunchesInTimeBucket15ForApp";
      break;
    case 0x1CDuLL:
      result = @"AppLaunchesInTimeBucket16ForApp";
      break;
    case 0x1CEuLL:
      result = @"AppLaunchesInTimeBucket17ForApp";
      break;
    case 0x1CFuLL:
      result = @"AppLaunchesInTimeBucket18ForApp";
      break;
    case 0x1D0uLL:
      result = @"AppLaunchesInTimeBucket19ForApp";
      break;
    case 0x1D1uLL:
      result = @"AppLaunchesInTimeBucket20ForApp";
      break;
    case 0x1D2uLL:
      result = @"AppLaunchesInTimeBucket21ForApp";
      break;
    case 0x1D3uLL:
      result = @"AppLaunchesInTimeBucket22ForApp";
      break;
    case 0x1D4uLL:
      result = @"AppLaunchesInTimeBucket23ForApp";
      break;
    case 0x1D5uLL:
      result = @"AppLaunchesInTimeBucket24ForApp";
      break;
    case 0x1D6uLL:
      result = @"AppLaunchesOnDayOfWeekSundayForApp";
      break;
    case 0x1D7uLL:
      result = @"AppLaunchesOnDayOfWeekMondayForApp";
      break;
    case 0x1D8uLL:
      result = @"AppLaunchesOnDayOfWeekTuesdayForApp";
      break;
    case 0x1D9uLL:
      result = @"AppLaunchesOnDayOfWeekWednesdayForApp";
      break;
    case 0x1DAuLL:
      result = @"AppLaunchesOnDayOfWeekThursdayForApp";
      break;
    case 0x1DBuLL:
      result = @"AppLaunchesOnDayOfWeekFridayForApp";
      break;
    case 0x1DCuLL:
      result = @"AppLaunchesOnDayOfWeekSaturdayForApp";
      break;
    case 0x1DDuLL:
      result = @"AppLaunchesAtCoarseGeoHash0ForApp";
      break;
    case 0x1DEuLL:
      result = @"AppLaunchesAtCoarseGeoHash1ForApp";
      break;
    case 0x1DFuLL:
      result = @"AppLaunchesAtCoarseGeoHash2ForApp";
      break;
    case 0x1E0uLL:
      result = @"AppLaunchesAtCoarseGeoHash3ForApp";
      break;
    case 0x1E1uLL:
      result = @"AppLaunchesAtCoarseGeoHash4ForApp";
      break;
    case 0x1E2uLL:
      result = @"AppLaunchesAtCoarseGeoHash5ForApp";
      break;
    case 0x1E3uLL:
      result = @"AppLaunchesAtCoarseGeoHash6ForApp";
      break;
    case 0x1E4uLL:
      result = @"AppLaunchesAtCoarseGeoHash7ForApp";
      break;
    case 0x1E5uLL:
      result = @"AppLaunchesAtCoarseGeoHash8ForApp";
      break;
    case 0x1E6uLL:
      result = @"AppLaunchesAtCoarseGeoHash9ForApp";
      break;
    case 0x1E7uLL:
      result = @"AppLaunchesAtSpecificGeoHash0ForApp";
      break;
    case 0x1E8uLL:
      result = @"AppLaunchesAtSpecificGeoHash1ForApp";
      break;
    case 0x1E9uLL:
      result = @"AppLaunchesAtSpecificGeoHash2ForApp";
      break;
    case 0x1EAuLL:
      result = @"AppLaunchesAtSpecificGeoHash3ForApp";
      break;
    case 0x1EBuLL:
      result = @"AppLaunchesAtSpecificGeoHash4ForApp";
      break;
    case 0x1ECuLL:
      result = @"AppLaunchesAtSpecificGeoHash5ForApp";
      break;
    case 0x1EDuLL:
      result = @"AppLaunchesAtSpecificGeoHash6ForApp";
      break;
    case 0x1EEuLL:
      result = @"AppLaunchesAtSpecificGeoHash7ForApp";
      break;
    case 0x1EFuLL:
      result = @"AppLaunchesAtSpecificGeoHash8ForApp";
      break;
    case 0x1F0uLL:
      result = @"AppLaunchesAtSpecificGeoHash9ForApp";
      break;
    case 0x1F1uLL:
      result = @"AppLaunchesAtSpecificGeoHash10ForApp";
      break;
    case 0x1F2uLL:
      result = @"AppLaunchesAtSpecificGeoHash11ForApp";
      break;
    case 0x1F3uLL:
      result = @"AppLaunchesAtSpecificGeoHash12ForApp";
      break;
    case 0x1F4uLL:
      result = @"AppLaunchesAtSpecificGeoHash13ForApp";
      break;
    case 0x1F5uLL:
      result = @"AppLaunchesAtSpecificGeoHash14ForApp";
      break;
    case 0x1F6uLL:
      result = @"AppNumberOfSpecificGeohashesForApp";
      break;
    case 0x1F7uLL:
      result = @"AppNumberOfCoarseGeohashesForApp";
      break;
    case 0x1F8uLL:
      result = @"AppEntropyForTimeBuckets";
      break;
    case 0x1F9uLL:
      result = @"AppEntropyForSpecificGeoHash";
      break;
    case 0x1FAuLL:
      result = @"AppEntropyForCoarseGeoHash";
      break;
    case 0x1FBuLL:
      result = @"AppLaunchesAtSpecificGeoHashForAppInContext";
      break;
    case 0x1FCuLL:
      result = @"AppLaunchesAtCoarseGeoHashForAppInContext";
      break;
    case 0x1FDuLL:
      result = @"AppLaunchesAtDayOfWeekInContext";
      break;
    case 0x1FEuLL:
      result = @"AppLaunchesAtDayOfWeekForApp";
      break;
    case 0x1FFuLL:
      result = @"AppLaunchesAtTimeAndDayForAppInContext";
      break;
    case 0x200uLL:
      result = @"AppLaunchesAtTimeAndDayInContext";
      break;
    case 0x201uLL:
      result = @"AppLaunchesAtTimeAndDayForApp";
      break;
    case 0x202uLL:
      result = @"AppLaunchesAtCoarseGeoHashInContext";
      break;
    case 0x203uLL:
      result = @"AppLaunchesAtCoarseGeoHashForApp";
      break;
    case 0x204uLL:
      result = @"AppLaunchesAtSpecificGeoHashInContext";
      break;
    case 0x205uLL:
      result = @"AppLaunchesAtSpecificGeoHashForApp";
      break;
    case 0x206uLL:
      result = @"AppLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x207uLL:
      result = @"AppLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x208uLL:
      result = @"IsLocationServicesDisabled";
      break;
    case 0x209uLL:
      result = @"AppLaunchesInTwoHourTimeBucketForAppInContext";
      break;
    case 0x20AuLL:
      result = @"AppLaunchesInTwoHourTimeBucketInContext";
      break;
    case 0x20BuLL:
      result = @"AppLaunchesInTwoHourTimeBucketForApp";
      break;
    case 0x20CuLL:
      result = @"AppConfirmsInTwoHourTimeBucketForAppInContext";
      break;
    case 0x20DuLL:
      result = @"AppConfirmsInTwoHourTimeBucketInContext";
      break;
    case 0x20EuLL:
      result = @"AppConfirmsInTwoHourTimeBucketForApp";
      break;
    case 0x20FuLL:
      result = @"AppRejectsInTwoHourTimeBucketForAppInContext";
      break;
    case 0x210uLL:
      result = @"AppRejectsInTwoHourTimeBucketInContext";
      break;
    case 0x211uLL:
      result = @"AppRejectsInTwoHourTimeBucketForApp";
      break;
    case 0x212uLL:
      result = @"AppConfirmsAtDayOfWeekForAppInContext";
      break;
    case 0x213uLL:
      result = @"AppConfirmsAtDayOfWeekInContext";
      break;
    case 0x214uLL:
      result = @"AppConfirmsAtDayOfWeekForApp";
      break;
    case 0x215uLL:
      result = @"AppRejectsAtDayOfWeekForAppInContext";
      break;
    case 0x216uLL:
      result = @"AppRejectsAtDayOfWeekInContext";
      break;
    case 0x217uLL:
      result = @"AppRejectsAtDayOfWeekForApp";
      break;
    case 0x218uLL:
      result = @"AppConfirmsAtCoarseGeoHashForAppInContext";
      break;
    case 0x219uLL:
      result = @"AppConfirmsAtCoarseGeoHashInContext";
      break;
    case 0x21AuLL:
      result = @"AppConfirmsAtCoarseGeoHashForApp";
      break;
    case 0x21BuLL:
      result = @"AppRejectsAtCoarseGeoHashForAppInContext";
      break;
    case 0x21CuLL:
      result = @"AppRejectsAtCoarseGeoHashInContext";
      break;
    case 0x21DuLL:
      result = @"AppRejectsAtCoarseGeoHashForApp";
      break;
    case 0x21EuLL:
      result = @"AppConfirmsAtSpecificGeoHashForAppInContext";
      break;
    case 0x21FuLL:
      result = @"AppConfirmsAtSpecificGeoHashInContext";
      break;
    case 0x220uLL:
      result = @"AppConfirmsAtSpecificGeoHashForApp";
      break;
    case 0x221uLL:
      result = @"AppRejectsAtSpecificGeoHashForAppInContext";
      break;
    case 0x222uLL:
      result = @"AppRejectsAtSpecificGeoHashInContext";
      break;
    case 0x223uLL:
      result = @"AppRejectsAtSpecificGeoHashForApp";
      break;
    case 0x224uLL:
      result = @"AppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x225uLL:
      result = @"AppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x226uLL:
      result = @"AppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x227uLL:
      result = @"AppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x228uLL:
      result = @"CurrentTimeBucketFromZeroToTwentyFour";
      break;
    case 0x229uLL:
      result = @"ActionsAtDayOfWeekForActionInContext";
      break;
    case 0x22AuLL:
      result = @"ActionsAtDayOfWeekInContext";
      break;
    case 0x22BuLL:
      result = @"ActionsAtDayOfWeekForAction";
      break;
    case 0x22CuLL:
      result = @"ActionsAtCoarseGeoHashForActionInContext";
      break;
    case 0x22DuLL:
      result = @"ActionsAtCoarseGeoHashInContext";
      break;
    case 0x22EuLL:
      result = @"ActionsAtCoarseGeoHashForAction";
      break;
    case 0x22FuLL:
      result = @"ActionsAtSpecificGeoHashForActionInContext";
      break;
    case 0x230uLL:
      result = @"ActionsAtSpecificGeoHashInContext";
      break;
    case 0x231uLL:
      result = @"ActionsAtSpecificGeoHashForAction";
      break;
    case 0x232uLL:
      result = @"ActionsAtTimeOfDayForActionInContext";
      break;
    case 0x233uLL:
      result = @"ActionsAtTimeOfDayInContext";
      break;
    case 0x234uLL:
      result = @"ActionsAtTimeOfDayForAction";
      break;
    case 0x235uLL:
      result = @"ActionConfirmsAtTimeOfDayForActionInContext";
      break;
    case 0x236uLL:
      result = @"ActionConfirmsAtTimeOfDayInContext";
      break;
    case 0x237uLL:
      result = @"ActionConfirmsAtTimeOfDayForAction";
      break;
    case 0x238uLL:
      result = @"ActionRejectsAtTimeOfDayForActionInContext";
      break;
    case 0x239uLL:
      result = @"ActionRejectsAtTimeOfDayInContext";
      break;
    case 0x23AuLL:
      result = @"ActionRejectsAtTimeOfDayForAction";
      break;
    case 0x23BuLL:
      result = @"ActionConfirmsAtDayOfWeekForActionInContext";
      break;
    case 0x23CuLL:
      result = @"ActionConfirmsAtDayOfWeekInContext";
      break;
    case 0x23DuLL:
      result = @"ActionConfirmsAtDayOfWeekForAction";
      break;
    case 0x23EuLL:
      result = @"ActionRejectsAtDayOfWeekForActionInContext";
      break;
    case 0x23FuLL:
      result = @"ActionRejectsAtDayOfWeekInContext";
      break;
    case 0x240uLL:
      result = @"ActionRejectsAtDayOfWeekForAction";
      break;
    case 0x241uLL:
      result = @"ActionConfirmsAtCoarseGeoHashForActionInContext";
      break;
    case 0x242uLL:
      result = @"ActionConfirmsAtCoarseGeoHashInContext";
      break;
    case 0x243uLL:
      result = @"ActionConfirmsAtCoarseGeoHashForAction";
      break;
    case 0x244uLL:
      result = @"ActionRejectsAtCoarseGeoHashForActionInContext";
      break;
    case 0x245uLL:
      result = @"ActionRejectsAtCoarseGeoHashInContext";
      break;
    case 0x246uLL:
      result = @"ActionRejectsAtCoarseGeoHashForAction";
      break;
    case 0x247uLL:
      result = @"ActionConfirmsAtSpecificGeoHashForActionInContext";
      break;
    case 0x248uLL:
      result = @"ActionConfirmsAtSpecificGeoHashInContext";
      break;
    case 0x249uLL:
      result = @"ActionConfirmsAtSpecificGeoHashForAction";
      break;
    case 0x24AuLL:
      result = @"ActionRejectsAtSpecificGeoHashForActionInContext";
      break;
    case 0x24BuLL:
      result = @"ActionRejectsAtSpecificGeoHashInContext";
      break;
    case 0x24CuLL:
      result = @"ActionRejectsAtSpecificGeoHashForAction";
      break;
    case 0x24DuLL:
      result = @"ActionsInTimeBucket0ForAction";
      break;
    case 0x24EuLL:
      result = @"ActionsInTimeBucket1ForAction";
      break;
    case 0x24FuLL:
      result = @"ActionsInTimeBucket2ForAction";
      break;
    case 0x250uLL:
      result = @"ActionsInTimeBucket3ForAction";
      break;
    case 0x251uLL:
      result = @"ActionsInTimeBucket4ForAction";
      break;
    case 0x252uLL:
      result = @"ActionsInTimeBucket5ForAction";
      break;
    case 0x253uLL:
      result = @"ActionsInTimeBucket6ForAction";
      break;
    case 0x254uLL:
      result = @"ActionsInTimeBucket7ForAction";
      break;
    case 0x255uLL:
      result = @"ActionsInTimeBucket8ForAction";
      break;
    case 0x256uLL:
      result = @"ActionsInTimeBucket9ForAction";
      break;
    case 0x257uLL:
      result = @"ActionsInTimeBucket10ForAction";
      break;
    case 0x258uLL:
      result = @"ActionsInTimeBucket11ForAction";
      break;
    case 0x259uLL:
      result = @"ActionsInTimeBucket12ForAction";
      break;
    case 0x25AuLL:
      result = @"ActionsInTimeBucket13ForAction";
      break;
    case 0x25BuLL:
      result = @"ActionsInTimeBucket14ForAction";
      break;
    case 0x25CuLL:
      result = @"ActionsInTimeBucket15ForAction";
      break;
    case 0x25DuLL:
      result = @"ActionsInTimeBucket16ForAction";
      break;
    case 0x25EuLL:
      result = @"ActionsInTimeBucket17ForAction";
      break;
    case 0x25FuLL:
      result = @"ActionsInTimeBucket18ForAction";
      break;
    case 0x260uLL:
      result = @"ActionsInTimeBucket19ForAction";
      break;
    case 0x261uLL:
      result = @"ActionsInTimeBucket20ForAction";
      break;
    case 0x262uLL:
      result = @"ActionsInTimeBucket21ForAction";
      break;
    case 0x263uLL:
      result = @"ActionsInTimeBucket22ForAction";
      break;
    case 0x264uLL:
      result = @"ActionsInTimeBucket23ForAction";
      break;
    case 0x265uLL:
      result = @"ActionsInTimeBucket24ForAction";
      break;
    case 0x266uLL:
      result = @"ActionsOnDayOfWeekSundayForAction";
      break;
    case 0x267uLL:
      result = @"ActionsOnDayOfWeekMondayForAction";
      break;
    case 0x268uLL:
      result = @"ActionsOnDayOfWeekTuesdayForAction";
      break;
    case 0x269uLL:
      result = @"ActionsOnDayOfWeekWednesdayForAction";
      break;
    case 0x26AuLL:
      result = @"ActionsOnDayOfWeekThursdayForAction";
      break;
    case 0x26BuLL:
      result = @"ActionsOnDayOfWeekFridayForAction";
      break;
    case 0x26CuLL:
      result = @"ActionsOnDayOfWeekSaturdayForAction";
      break;
    case 0x26DuLL:
      result = @"ActionsAtCoarseGeoHash0ForAction";
      break;
    case 0x26EuLL:
      result = @"ActionsAtCoarseGeoHash1ForAction";
      break;
    case 0x26FuLL:
      result = @"ActionsAtCoarseGeoHash2ForAction";
      break;
    case 0x270uLL:
      result = @"ActionsAtCoarseGeoHash3ForAction";
      break;
    case 0x271uLL:
      result = @"ActionsAtCoarseGeoHash4ForAction";
      break;
    case 0x272uLL:
      result = @"ActionsAtCoarseGeoHash5ForAction";
      break;
    case 0x273uLL:
      result = @"ActionsAtCoarseGeoHash6ForAction";
      break;
    case 0x274uLL:
      result = @"ActionsAtCoarseGeoHash7ForAction";
      break;
    case 0x275uLL:
      result = @"ActionsAtCoarseGeoHash8ForAction";
      break;
    case 0x276uLL:
      result = @"ActionsAtCoarseGeoHash9ForAction";
      break;
    case 0x277uLL:
      result = @"ActionsAtSpecificGeoHash0ForAction";
      break;
    case 0x278uLL:
      result = @"ActionsAtSpecificGeoHash1ForAction";
      break;
    case 0x279uLL:
      result = @"ActionsAtSpecificGeoHash2ForAction";
      break;
    case 0x27AuLL:
      result = @"ActionsAtSpecificGeoHash3ForAction";
      break;
    case 0x27BuLL:
      result = @"ActionsAtSpecificGeoHash4ForAction";
      break;
    case 0x27CuLL:
      result = @"ActionsAtSpecificGeoHash5ForAction";
      break;
    case 0x27DuLL:
      result = @"ActionsAtSpecificGeoHash6ForAction";
      break;
    case 0x27EuLL:
      result = @"ActionsAtSpecificGeoHash7ForAction";
      break;
    case 0x27FuLL:
      result = @"ActionsAtSpecificGeoHash8ForAction";
      break;
    case 0x280uLL:
      result = @"ActionsAtSpecificGeoHash9ForAction";
      break;
    case 0x281uLL:
      result = @"ActionsAtSpecificGeoHash10ForAction";
      break;
    case 0x282uLL:
      result = @"ActionsAtSpecificGeoHash11ForAction";
      break;
    case 0x283uLL:
      result = @"ActionsAtSpecificGeoHash12ForAction";
      break;
    case 0x284uLL:
      result = @"ActionsAtSpecificGeoHash13ForAction";
      break;
    case 0x285uLL:
      result = @"ActionsAtSpecificGeoHash14ForAction";
      break;
    case 0x286uLL:
      result = @"ActionEntropyForTimeOfDay";
      break;
    case 0x287uLL:
      result = @"ActionEntropyForDayOfWeek";
      break;
    case 0x288uLL:
      result = @"ActionEntropyForCoarseGeoHash";
      break;
    case 0x289uLL:
      result = @"ActionEntropyForSpecificGeoHash";
      break;
    case 0x28AuLL:
      result = @"ActionNumberOfSpecificGeohashesForAction";
      break;
    case 0x28BuLL:
      result = @"ActionNumberOfCoarseGeohashesForAction";
      break;
    case 0x28CuLL:
      result = @"AppLaunchesAtZoom7GeoHashForAppInContext";
      break;
    case 0x28DuLL:
      result = @"AppLaunchesAtZoom7GeoHashInContext";
      break;
    case 0x28EuLL:
      result = @"AppLaunchesAtZoom7GeoHashForApp";
      break;
    case 0x28FuLL:
      result = @"AppLaunchesAtZoom7GeoHash0ForApp";
      break;
    case 0x290uLL:
      result = @"AppLaunchesAtZoom7GeoHash1ForApp";
      break;
    case 0x291uLL:
      result = @"AppLaunchesAtZoom7GeoHash2ForApp";
      break;
    case 0x292uLL:
      result = @"AppLaunchesAtZoom7GeoHash3ForApp";
      break;
    case 0x293uLL:
      result = @"AppLaunchesAtZoom7GeoHash4ForApp";
      break;
    case 0x294uLL:
      result = @"AppLaunchesAtZoom7GeoHash5ForApp";
      break;
    case 0x295uLL:
      result = @"AppLaunchesAtZoom7GeoHash6ForApp";
      break;
    case 0x296uLL:
      result = @"AppLaunchesAtZoom7GeoHash7ForApp";
      break;
    case 0x297uLL:
      result = @"AppLaunchesAtZoom7GeoHash8ForApp";
      break;
    case 0x298uLL:
      result = @"AppLaunchesAtZoom7GeoHash9ForApp";
      break;
    case 0x299uLL:
      result = @"AppEntropyForZoom7GeoHash";
      break;
    case 0x29AuLL:
      result = @"AppNumberOfZoom7GeohashesForApp";
      break;
    case 0x29BuLL:
      result = @"AppGeoAssociationScoreAtZoom7";
      break;
    case 0x29CuLL:
      result = @"AppGeoAssociationScoreAtZoom13";
      break;
    case 0x29DuLL:
      result = @"AppGeoAssociationScoreAtZoom16";
      break;
    case 0x29EuLL:
      result = @"AppPartOfWeekAssociationScore";
      break;
    case 0x29FuLL:
      result = @"AppCoarseTimeAssociationScore";
      break;
    case 0x2A0uLL:
      result = @"AppLOITypeAssociationScore";
      break;
    case 0x2A1uLL:
      result = @"AppLaunchesAtSSIDForAppInContext";
      break;
    case 0x2A2uLL:
      result = @"AppLaunchesAtSSIDForApp";
      break;
    case 0x2A3uLL:
      result = @"AppLaunchesForCoreMotionForAppInContext";
      break;
    case 0x2A4uLL:
      result = @"AppLaunchesInAirplaneModeForAppInContext";
      break;
    case 0x2A5uLL:
      result = @"HomeScreenAppConfirmsOnDayOfWeekForAppInContext";
      break;
    case 0x2A6uLL:
      result = @"HomeScreenAppConfirmsOnDayOfWeekInContext";
      break;
    case 0x2A7uLL:
      result = @"HomeScreenAppConfirmsOnDayOfWeekForApp";
      break;
    case 0x2A8uLL:
      result = @"HomeScreenAppRejectsOnDayOfWeekForAppInContext";
      break;
    case 0x2A9uLL:
      result = @"HomeScreenAppRejectsOnDayOfWeekInContext";
      break;
    case 0x2AAuLL:
      result = @"HomeScreenAppRejectsOnDayOfWeekForApp";
      break;
    case 0x2ABuLL:
      result = @"HomeScreenAppConfirmsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2ACuLL:
      result = @"HomeScreenAppConfirmsInTwoHourTimeIntervalInContext";
      break;
    case 0x2ADuLL:
      result = @"HomeScreenAppConfirmsInTwoHourTimeIntervalForApp";
      break;
    case 0x2AEuLL:
      result = @"HomeScreenAppRejectsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2AFuLL:
      result = @"HomeScreenAppRejectsInTwoHourTimeIntervalInContext";
      break;
    case 0x2B0uLL:
      result = @"HomeScreenAppRejectsInTwoHourTimeIntervalForApp";
      break;
    case 0x2B1uLL:
      result = @"HomeScreenAppConfirmsAtCoarseGeohashForAppInContext";
      break;
    case 0x2B2uLL:
      result = @"HomeScreenAppConfirmsAtCoarseGeohashInContext";
      break;
    case 0x2B3uLL:
      result = @"HomeScreenAppConfirmsAtCoarseGeohashForApp";
      break;
    case 0x2B4uLL:
      result = @"HomeScreenAppRejectsAtCoarseGeohashForAppInContext";
      break;
    case 0x2B5uLL:
      result = @"HomeScreenAppRejectsAtCoarseGeohashInContext";
      break;
    case 0x2B6uLL:
      result = @"HomeScreenAppRejectsAtCoarseGeohashForApp";
      break;
    case 0x2B7uLL:
      result = @"HomeScreenAppConfirmsAtSpecificGeohashForAppInContext";
      break;
    case 0x2B8uLL:
      result = @"HomeScreenAppConfirmsAtSpecificGeohashInContext";
      break;
    case 0x2B9uLL:
      result = @"HomeScreenAppConfirmsAtSpecificGeohashForApp";
      break;
    case 0x2BAuLL:
      result = @"HomeScreenAppRejectsAtSpecificGeohashForAppInContext";
      break;
    case 0x2BBuLL:
      result = @"HomeScreenAppRejectsAtSpecificGeohashInContext";
      break;
    case 0x2BCuLL:
      result = @"HomeScreenAppRejectsAtSpecificGeohashForApp";
      break;
    case 0x2BDuLL:
      result = @"HomeScreenAppConfirmsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2BEuLL:
      result = @"HomeScreenAppConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2BFuLL:
      result = @"HomeScreenAppConfirmsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C0uLL:
      result = @"HomeScreenAppRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2C1uLL:
      result = @"HomeScreenAppRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2C2uLL:
      result = @"HomeScreenAppRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C3uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2C4uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2C5uLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2C6uLL:
      result = @"HomeScreenAppConfirmsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2C7uLL:
      result = @"HomeScreenAppConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2C8uLL:
      result = @"HomeScreenAppConfirmsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2C9uLL:
      result = @"HomeScreenAppRejectsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2CAuLL:
      result = @"HomeScreenAppRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2CBuLL:
      result = @"HomeScreenAppRejectsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2CCuLL:
      result = @"HomeScreenTotalLaunchesForApp";
      break;
    case 0x2CDuLL:
      result = @"HomeScreenTotalLaunchesForAllApps";
      break;
    case 0x2CEuLL:
      result = @"AppDirectoryTotalLaunchesForApp";
      break;
    case 0x2CFuLL:
      result = @"AppDirectoryTotalLaunchesForAllApps";
      break;
    case 0x2D0uLL:
      result = @"AppDirectoryConfirmsOnDayOfWeekForAppInContext";
      break;
    case 0x2D1uLL:
      result = @"AppDirectoryConfirmsOnDayOfWeekInContext";
      break;
    case 0x2D2uLL:
      result = @"AppDirectoryConfirmsOnDayOfWeekForApp";
      break;
    case 0x2D3uLL:
      result = @"AppDirectoryRejectsOnDayOfWeekForAppInContext";
      break;
    case 0x2D4uLL:
      result = @"AppDirectoryRejectsOnDayOfWeekInContext";
      break;
    case 0x2D5uLL:
      result = @"AppDirectoryRejectsOnDayOfWeekForApp";
      break;
    case 0x2D6uLL:
      result = @"AppDirectoryConfirmsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2D7uLL:
      result = @"AppDirectoryConfirmsInTwoHourTimeIntervalInContext";
      break;
    case 0x2D8uLL:
      result = @"AppDirectoryConfirmsInTwoHourTimeIntervalForApp";
      break;
    case 0x2D9uLL:
      result = @"AppDirectoryRejectsInTwoHourTimeIntervalForAppInContext";
      break;
    case 0x2DAuLL:
      result = @"AppDirectoryRejectsInTwoHourTimeIntervalInContext";
      break;
    case 0x2DBuLL:
      result = @"AppDirectoryRejectsInTwoHourTimeIntervalForApp";
      break;
    case 0x2DCuLL:
      result = @"AppDirectoryConfirmsAtCoarseGeohashForAppInContext";
      break;
    case 0x2DDuLL:
      result = @"AppDirectoryConfirmsAtCoarseGeohashInContext";
      break;
    case 0x2DEuLL:
      result = @"AppDirectoryConfirmsAtCoarseGeohashForApp";
      break;
    case 0x2DFuLL:
      result = @"AppDirectoryRejectsAtCoarseGeohashForAppInContext";
      break;
    case 0x2E0uLL:
      result = @"AppDirectoryRejectsAtCoarseGeohashInContext";
      break;
    case 0x2E1uLL:
      result = @"AppDirectoryRejectsAtCoarseGeohashForApp";
      break;
    case 0x2E2uLL:
      result = @"AppDirectoryConfirmsAtSpecificGeohashForAppInContext";
      break;
    case 0x2E3uLL:
      result = @"AppDirectoryConfirmsAtSpecificGeohashInContext";
      break;
    case 0x2E4uLL:
      result = @"AppDirectoryConfirmsAtSpecificGeohashForApp";
      break;
    case 0x2E5uLL:
      result = @"AppDirectoryRejectsAtSpecificGeohashForAppInContext";
      break;
    case 0x2E6uLL:
      result = @"AppDirectoryRejectsAtSpecificGeohashInContext";
      break;
    case 0x2E7uLL:
      result = @"AppDirectoryRejectsAtSpecificGeohashForApp";
      break;
    case 0x2E8uLL:
      result = @"AppDirectoryConfirmsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2E9uLL:
      result = @"AppDirectoryConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2EAuLL:
      result = @"AppDirectoryConfirmsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2EBuLL:
      result = @"AppDirectoryRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2ECuLL:
      result = @"AppDirectoryRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2EDuLL:
      result = @"AppDirectoryRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2EEuLL:
      result = @"AppDirectoryExplicitRejectsAtCoarseTimePOWLocationForAppInContext";
      break;
    case 0x2EFuLL:
      result = @"AppDirectoryExplicitRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x2F0uLL:
      result = @"AppDirectoryExplicitRejectsAtCoarseTimePOWLocationForApp";
      break;
    case 0x2F1uLL:
      result = @"AppDirectoryConfirmsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2F2uLL:
      result = @"AppDirectoryConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2F3uLL:
      result = @"AppDirectoryConfirmsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2F4uLL:
      result = @"AppDirectoryRejectsAtSpecificTimeDOWLocationForAppInContext";
      break;
    case 0x2F5uLL:
      result = @"AppDirectoryRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x2F6uLL:
      result = @"AppDirectoryRejectsAtSpecificTimeDOWLocationForApp";
      break;
    case 0x2F7uLL:
      result = @"HomeScreenAppConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2F8uLL:
      result = @"HomeScreenAppConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2F9uLL:
      result = @"HomeScreenAppRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FAuLL:
      result = @"HomeScreenAppRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2FBuLL:
      result = @"_ATXScoreInputHomeScreenAppExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FCuLL:
      result = @"AppDirectoryConfirmsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FDuLL:
      result = @"AppDirectoryConfirmsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x2FEuLL:
      result = @"AppDirectoryRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x2FFuLL:
      result = @"AppDirectoryRejectsForAllAppsAndContextsDecayedAtSpecificContextRate";
      break;
    case 0x300uLL:
      result = @"AppDirectoryExplicitRejectsForAllAppsAndContextsDecayedAtCoarseContextRate";
      break;
    case 0x301uLL:
      result = @"IsAppClip";
      break;
    case 0x302uLL:
      result = @"HomeScreenActionConfirmsOnDayOfWeekForActionInContext";
      break;
    case 0x303uLL:
      result = @"HomeScreenActionConfirmsOnDayOfWeekInContext";
      break;
    case 0x304uLL:
      result = @"HomeScreenActionConfirmsOnDayOfWeekForAction";
      break;
    case 0x305uLL:
      result = @"HomeScreenActionConfirmsAtTimeOfDayForActionInContext";
      break;
    case 0x306uLL:
      result = @"HomeScreenActionConfirmsAtTimeOfDayInContext";
      break;
    case 0x307uLL:
      result = @"HomeScreenActionConfirmsAtTimeOfDayForAction";
      break;
    case 0x308uLL:
      result = @"HomeScreenActionConfirmsAtCoarseGeohashForActionInContext";
      break;
    case 0x309uLL:
      result = @"HomeScreenActionConfirmsAtCoarseGeohashInContext";
      break;
    case 0x30AuLL:
      result = @"HomeScreenActionConfirmsAtCoarseGeohashForAction";
      break;
    case 0x30BuLL:
      result = @"HomeScreenActionConfirmsAtSpecificGeohashForActionInContext";
      break;
    case 0x30CuLL:
      result = @"HomeScreenActionConfirmsAtSpecificGeohashInContext";
      break;
    case 0x30DuLL:
      result = @"HomeScreenActionConfirmsAtSpecificGeohashForAction";
      break;
    case 0x30EuLL:
      result = @"HomeScreenActionConfirmsAtCoarseTimePOWLocationForActionInContext";
      break;
    case 0x30FuLL:
      result = @"HomeScreenActionConfirmsAtCoarseTimePOWLocationInContext";
      break;
    case 0x310uLL:
      result = @"HomeScreenActionConfirmsAtCoarseTimePOWLocationForAction";
      break;
    case 0x311uLL:
      result = @"HomeScreenActionConfirmsAtSpecificTimeDOWLocationForActionInContext";
      break;
    case 0x312uLL:
      result = @"HomeScreenActionConfirmsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x313uLL:
      result = @"HomeScreenActionConfirmsAtSpecificTimeDOWLocationForAction";
      break;
    case 0x314uLL:
      result = @"HomeScreenActionRejectsOnDayOfWeekForActionInContext";
      break;
    case 0x315uLL:
      result = @"HomeScreenActionRejectsOnDayOfWeekInContext";
      break;
    case 0x316uLL:
      result = @"HomeScreenActionRejectsOnDayOfWeekForAction";
      break;
    case 0x317uLL:
      result = @"HomeScreenActionRejectsAtTimeOfDayForActionInContext";
      break;
    case 0x318uLL:
      result = @"HomeScreenActionRejectsAtTimeOfDayInContext";
      break;
    case 0x319uLL:
      result = @"HomeScreenActionRejectsAtTimeOfDayForAction";
      break;
    case 0x31AuLL:
      result = @"HomeScreenActionRejectsAtCoarseGeohashForActionInContext";
      break;
    case 0x31BuLL:
      result = @"HomeScreenActionRejectsAtCoarseGeohashInContext";
      break;
    case 0x31CuLL:
      result = @"HomeScreenActionRejectsAtCoarseGeohashForAction";
      break;
    case 0x31DuLL:
      result = @"HomeScreenActionRejectsAtSpecificGeohashForActionInContext";
      break;
    case 0x31EuLL:
      result = @"HomeScreenActionRejectsAtSpecificGeohashInContext";
      break;
    case 0x31FuLL:
      result = @"HomeScreenActionRejectsAtSpecificGeohashForAction";
      break;
    case 0x320uLL:
      result = @"HomeScreenActionRejectsAtCoarseTimePOWLocationForActionInContext";
      break;
    case 0x321uLL:
      result = @"HomeScreenActionRejectsAtCoarseTimePOWLocationInContext";
      break;
    case 0x322uLL:
      result = @"HomeScreenActionRejectsAtCoarseTimePOWLocationForAction";
      break;
    case 0x323uLL:
      result = @"HomeScreenActionRejectsAtSpecificTimeDOWLocationForActionInContext";
      break;
    case 0x324uLL:
      result = @"HomeScreenActionRejectsAtSpecificTimeDOWLocationInContext";
      break;
    case 0x325uLL:
      result = @"HomeScreenActionRejectsAtSpecificTimeDOWLocationForAction";
      break;
    case 0x326uLL:
      result = @"POIPopularityForAppInContext";
      break;
    case 0x327uLL:
      result = @"AppLaunchPopularityAtPOIForAppInContext";
      break;
    case 0x328uLL:
      result = @"POICategory";
      break;
    case 0x329uLL:
      result = @"AppLaunchesAtPOIForAppInContext";
      break;
    case 0x32AuLL:
      result = @"AppCategoryScore";
      break;
    case 0x32BuLL:
      result = @"PosteriorProbabilityOfAppGivenMode";
      break;
    case 0x32CuLL:
      result = @"ClassConditionalProbabilityOfModeGivenApp";
      break;
    case 0x32DuLL:
      result = @"UniqueOccurrencesOfAppInMode";
      break;
    case 0x32EuLL:
      result = @"LocalOccurrencesOfAppInMode";
      break;
    case 0x32FuLL:
      result = @"GlobalOccurrencesOfAppInMode";
      break;
    case 0x330uLL:
      result = @"AppModeEntityScore";
      break;
    case 0x331uLL:
      result = @"DocumentCategoryPopularity";
      break;
    case 0x332uLL:
      result = @"DocumentCategoryDayOfWeekPopularity";
      break;
    case 0x333uLL:
      result = @"DocumentCategoryDayOfWeekRelativePopularity";
      break;
    case 0x334uLL:
      result = @"DocumentCategoryPartOfWeekPopularity";
      break;
    case 0x335uLL:
      result = @"DocumentCategoryPartOfWeekRelativePopularity";
      break;
    case 0x336uLL:
      result = @"DocumentCategoryTrendingPopularity";
      break;
    case 0x337uLL:
      result = @"DocumentCreatedAge";
      break;
    case 0x338uLL:
      result = @"DocumentModifiedAge";
      break;
    case 0x339uLL:
      result = @"DocumentOpenedAge";
      break;
    case 0x33AuLL:
      result = @"DocumentAssociatedAppPredictionScore";
      break;
    case 0x33BuLL:
      result = @"IsRemoteApp";
      break;
    case 0x33CuLL:
      result = @"Max";
      break;
    default:
      if (a3 != 0xFFFFFFFF)
      {
        [(_ATXScoreTypes *)a2 aggdStringForScoreInput:?];
      }

      result = @"Undefined";
      break;
  }

  return result;
}

+ (id)scoreInputsToNames
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:828];
  for (i = 0; i != 828; ++i)
  {
    v5 = [a1 aggdStringForScoreInput:i];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (void)iterScoreInputsWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v8 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v3[2](v3, v4, &v8);
    v6 = v8;
    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      break;
    }
  }

  while (v4++ != 827);
}

+ (unint64_t)mappingForTopRankedGeoHashSignalsWithResolution:(unint64_t)a3 withRank:(unint64_t)a4 forScoreInputCategory:(unint64_t)a5
{
  if (a3 == 2)
  {
    return [_ATXScoreTypes mappingForTopRankedZoom7GeoHashSignals:a4];
  }

  if (a3 == 1)
  {
    return [_ATXScoreTypes mappingForTopRankedCoarseGeoHashSignals:a4 forScoreInputCategory:a5];
  }

  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  return [_ATXScoreTypes mappingForTopRankedSpecificGeoHashSignals:a4 forScoreInputCategory:a5];
}

+ (unint64_t)mappingForTimeOfDayDistributionSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4
{
  if (a4 == 1)
  {
    if (a3 >= 0x19)
    {
      +[_ATXScoreTypes mappingForTimeOfDayDistributionSignals:forScoreInputCategory:];
    }

    return a3 + 589;
  }

  else if (a4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a3 >= 0x19)
    {
      +[_ATXScoreTypes mappingForTimeOfDayDistributionSignals:forScoreInputCategory:];
    }

    return a3 + 445;
  }
}

+ (unint64_t)mappingForDayOfWeekDistributionSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4
{
  v18[7] = *MEMORY[0x277D85DE8];
  if (a3 >= 7)
  {
    +[_ATXScoreTypes mappingForDayOfWeekDistributionSignals:forScoreInputCategory:];
  }

  if (a4 == 1)
  {
    v15[0] = &unk_283A54968;
    v15[1] = &unk_283A54998;
    v16[0] = &unk_283A54AB8;
    v16[1] = &unk_283A54AD0;
    v15[2] = &unk_283A549C8;
    v15[3] = &unk_283A549F8;
    v16[2] = &unk_283A54AE8;
    v16[3] = &unk_283A54B00;
    v15[4] = &unk_283A54A28;
    v15[5] = &unk_283A54A58;
    v16[4] = &unk_283A54B18;
    v16[5] = &unk_283A54B30;
    v15[6] = &unk_283A54A88;
    v16[6] = &unk_283A54B48;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v16;
    v8 = v15;
  }

  else
  {
    if (a4)
    {
      v12 = 0xFFFFFFFFLL;
      goto LABEL_9;
    }

    v17[0] = &unk_283A54968;
    v17[1] = &unk_283A54998;
    v18[0] = &unk_283A54980;
    v18[1] = &unk_283A549B0;
    v17[2] = &unk_283A549C8;
    v17[3] = &unk_283A549F8;
    v18[2] = &unk_283A549E0;
    v18[3] = &unk_283A54A10;
    v17[4] = &unk_283A54A28;
    v17[5] = &unk_283A54A58;
    v18[4] = &unk_283A54A40;
    v18[5] = &unk_283A54A70;
    v17[6] = &unk_283A54A88;
    v18[6] = &unk_283A54AA0;
    v6 = MEMORY[0x277CBEAC0];
    v7 = v18;
    v8 = v17;
  }

  v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 intValue];

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (unint64_t)mappingForTopRankedSpecificGeoHashSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4
{
  v17[15] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    if (a3 >= 0xF)
    {
      +[_ATXScoreTypes mappingForTopRankedSpecificGeoHashSignals:forScoreInputCategory:];
    }

    v14[0] = &unk_283A54968;
    v14[1] = &unk_283A54998;
    v15[0] = &unk_283A54D88;
    v15[1] = &unk_283A54DA0;
    v14[2] = &unk_283A549C8;
    v14[3] = &unk_283A549F8;
    v15[2] = &unk_283A54DB8;
    v15[3] = &unk_283A54DD0;
    v14[4] = &unk_283A54A28;
    v14[5] = &unk_283A54A58;
    v15[4] = &unk_283A54DE8;
    v15[5] = &unk_283A54E00;
    v14[6] = &unk_283A54A88;
    v14[7] = &unk_283A54C08;
    v15[6] = &unk_283A54E18;
    v15[7] = &unk_283A54E30;
    v14[8] = &unk_283A54C38;
    v14[9] = &unk_283A54C68;
    v15[8] = &unk_283A54E48;
    v15[9] = &unk_283A54E60;
    v14[10] = &unk_283A54C98;
    v14[11] = &unk_283A54CC8;
    v15[10] = &unk_283A54E78;
    v15[11] = &unk_283A54E90;
    v14[12] = &unk_283A54CF8;
    v14[13] = &unk_283A54D28;
    v15[12] = &unk_283A54EA8;
    v15[13] = &unk_283A54EC0;
    v14[14] = &unk_283A54D58;
    v15[14] = &unk_283A54ED8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v15;
    v7 = v14;
  }

  else
  {
    if (a4)
    {
      v11 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }

    if (a3 >= 0xF)
    {
      +[_ATXScoreTypes mappingForTopRankedSpecificGeoHashSignals:forScoreInputCategory:];
    }

    v16[0] = &unk_283A54968;
    v16[1] = &unk_283A54998;
    v17[0] = &unk_283A54B60;
    v17[1] = &unk_283A54B78;
    v16[2] = &unk_283A549C8;
    v16[3] = &unk_283A549F8;
    v17[2] = &unk_283A54B90;
    v17[3] = &unk_283A54BA8;
    v16[4] = &unk_283A54A28;
    v16[5] = &unk_283A54A58;
    v17[4] = &unk_283A54BC0;
    v17[5] = &unk_283A54BD8;
    v16[6] = &unk_283A54A88;
    v16[7] = &unk_283A54C08;
    v17[6] = &unk_283A54BF0;
    v17[7] = &unk_283A54C20;
    v16[8] = &unk_283A54C38;
    v16[9] = &unk_283A54C68;
    v17[8] = &unk_283A54C50;
    v17[9] = &unk_283A54C80;
    v16[10] = &unk_283A54C98;
    v16[11] = &unk_283A54CC8;
    v17[10] = &unk_283A54CB0;
    v17[11] = &unk_283A54CE0;
    v16[12] = &unk_283A54CF8;
    v16[13] = &unk_283A54D28;
    v17[12] = &unk_283A54D10;
    v17[13] = &unk_283A54D40;
    v16[14] = &unk_283A54D58;
    v17[14] = &unk_283A54D70;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v17;
    v7 = v16;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:15];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 intValue];

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (unint64_t)mappingForTopRankedCoarseGeoHashSignals:(unint64_t)a3 forScoreInputCategory:(unint64_t)a4
{
  v17[10] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    if (a3 >= 0xA)
    {
      +[_ATXScoreTypes mappingForTopRankedCoarseGeoHashSignals:forScoreInputCategory:];
    }

    v14[0] = &unk_283A54968;
    v14[1] = &unk_283A54998;
    v15[0] = &unk_283A54FE0;
    v15[1] = &unk_283A54FF8;
    v14[2] = &unk_283A549C8;
    v14[3] = &unk_283A549F8;
    v15[2] = &unk_283A55010;
    v15[3] = &unk_283A55028;
    v14[4] = &unk_283A54A28;
    v14[5] = &unk_283A54A58;
    v15[4] = &unk_283A55040;
    v15[5] = &unk_283A55058;
    v14[6] = &unk_283A54A88;
    v14[7] = &unk_283A54C08;
    v15[6] = &unk_283A55070;
    v15[7] = &unk_283A55088;
    v14[8] = &unk_283A54C38;
    v14[9] = &unk_283A54C68;
    v15[8] = &unk_283A550A0;
    v15[9] = &unk_283A550B8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v15;
    v7 = v14;
  }

  else
  {
    if (a4)
    {
      v11 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }

    if (a3 >= 0xA)
    {
      +[_ATXScoreTypes mappingForTopRankedCoarseGeoHashSignals:forScoreInputCategory:];
    }

    v16[0] = &unk_283A54968;
    v16[1] = &unk_283A54998;
    v17[0] = &unk_283A54EF0;
    v17[1] = &unk_283A54F08;
    v16[2] = &unk_283A549C8;
    v16[3] = &unk_283A549F8;
    v17[2] = &unk_283A54F20;
    v17[3] = &unk_283A54F38;
    v16[4] = &unk_283A54A28;
    v16[5] = &unk_283A54A58;
    v17[4] = &unk_283A54F50;
    v17[5] = &unk_283A54F68;
    v16[6] = &unk_283A54A88;
    v16[7] = &unk_283A54C08;
    v17[6] = &unk_283A54F80;
    v17[7] = &unk_283A54F98;
    v16[8] = &unk_283A54C38;
    v16[9] = &unk_283A54C68;
    v17[8] = &unk_283A54FB0;
    v17[9] = &unk_283A54FC8;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v17;
    v7 = v16;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:10];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 intValue];

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (unint64_t)mappingForTopRankedZoom7GeoHashSignals:(unint64_t)a3
{
  v11[10] = *MEMORY[0x277D85DE8];
  if (a3 >= 0xA)
  {
    +[_ATXScoreTypes mappingForTopRankedZoom7GeoHashSignals:];
  }

  v10[0] = &unk_283A54968;
  v10[1] = &unk_283A54998;
  v11[0] = &unk_283A550D0;
  v11[1] = &unk_283A550E8;
  v10[2] = &unk_283A549C8;
  v10[3] = &unk_283A549F8;
  v11[2] = &unk_283A55100;
  v11[3] = &unk_283A55118;
  v10[4] = &unk_283A54A28;
  v10[5] = &unk_283A54A58;
  v11[4] = &unk_283A55130;
  v11[5] = &unk_283A55148;
  v10[6] = &unk_283A54A88;
  v10[7] = &unk_283A54C08;
  v11[6] = &unk_283A55160;
  v11[7] = &unk_283A55178;
  v10[8] = &unk_283A54C38;
  v10[9] = &unk_283A54C68;
  v11[8] = &unk_283A55190;
  v11[9] = &unk_283A551A8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 intValue];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)stringForScoreInput:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXScoreTypes.m" lineNumber:1735 description:@"ATXScoreInput out of range"];

  __break(1u);
}

+ (void)aggdStringForScoreInput:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXScoreTypes.m" lineNumber:3507 description:@"Score input out of range"];

  __break(1u);
}

+ (void)mappingForTimeOfDayDistributionSignals:forScoreInputCategory:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mappingForTimeOfDayDistributionSignals:forScoreInputCategory:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"_ATXScoreTypes.m" lineNumber:3549 description:{@"timeOfDay parameter had value %lu. It must be in the 0-24 range (using 25 time buckets).", v0}];
}

+ (void)mappingForDayOfWeekDistributionSignals:forScoreInputCategory:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"_ATXScoreTypes.m" lineNumber:3564 description:{@"dayOfWeek parameter had value %lu. It must be in the 0-6 range.", v0}];
}

+ (void)mappingForTopRankedSpecificGeoHashSignals:forScoreInputCategory:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mappingForTopRankedSpecificGeoHashSignals:forScoreInputCategory:.cold.2()
{
  OUTLINED_FUNCTION_0_11();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mappingForTopRankedCoarseGeoHashSignals:forScoreInputCategory:.cold.1()
{
  OUTLINED_FUNCTION_0_11();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mappingForTopRankedCoarseGeoHashSignals:forScoreInputCategory:.cold.2()
{
  OUTLINED_FUNCTION_0_11();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)mappingForTopRankedZoom7GeoHashSignals:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"_ATXScoreTypes.m" lineNumber:3690 description:{@"Coarse GeoHash rank value %lu outside of expected range (App Prediction): 0-%d.", v0, 10}];
}

@end