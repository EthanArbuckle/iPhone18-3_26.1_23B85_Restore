@interface ATXPBTaskAgnosticBehaviorFeatureVector
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAmbientLightTypeLaunchPopularity:(BOOL)a3;
- (void)setHasAmbientLightTypePopularity:(BOOL)a3;
- (void)setHasAppDayOfWeekLaunches:(BOOL)a3;
- (void)setHasAppEntropyForCoarseGeoHash:(BOOL)a3;
- (void)setHasAppEntropyForSpecificGeoHash:(BOOL)a3;
- (void)setHasAppEntropyForTimeBuckets:(BOOL)a3;
- (void)setHasAppEntropyForZoom7GeoHash:(BOOL)a3;
- (void)setHasAppLaunchPopularityAtPOIForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash0ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash1ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash2ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash3ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash4ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash5ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash6ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash7ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash8ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHash9ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHashForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHashForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtCoarseGeoHashInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtDayOfWeekForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtPOIForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtSSIDForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSSIDForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash0ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash10ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash11ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash12ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash13ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash14ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash1ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash2ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash3ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash4ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash5ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash6ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash7ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash8ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHash9ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHashForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHashForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtSpecificGeoHashInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtTimeAndDayForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtTimeAndDayForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtTimeAndDayInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash0ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash1ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash2ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash3ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash4ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash5ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash6ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash7ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash8ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHash9ForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHashForApp:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHashForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesAtZoom7GeoHashInContext:(BOOL)a3;
- (void)setHasAppLaunchesCoarseTimePowLocationForAllAppsAndContexts:(BOOL)a3;
- (void)setHasAppLaunchesCoarseTimePowLocationForApp:(BOOL)a3;
- (void)setHasAppLaunchesCoarseTimePowLocationForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesCoarseTimePowLocationInContext:(BOOL)a3;
- (void)setHasAppLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate:(BOOL)a3;
- (void)setHasAppLaunchesForCoreMotionForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesInAirplaneModeForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket0ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket10ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket11ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket12ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket13ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket14ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket15ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket16ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket17ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket18ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket19ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket1ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket20ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket21ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket22ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket23ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket24ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket2ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket3ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket4ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket5ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket6ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket7ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket8ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTimeBucket9ForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTwoHourTimeBucketForApp:(BOOL)a3;
- (void)setHasAppLaunchesInTwoHourTimeBucketForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesInTwoHourTimeBucketInContext:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekFridayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekMondayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekSaturdayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekSundayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekThursdayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekTuesdayForApp:(BOOL)a3;
- (void)setHasAppLaunchesOnDayOfWeekWednesdayForApp:(BOOL)a3;
- (void)setHasAppLaunchesSpecificTimeDowLocationForAllAppsAndContexts:(BOOL)a3;
- (void)setHasAppLaunchesSpecificTimeDowLocationForApp:(BOOL)a3;
- (void)setHasAppLaunchesSpecificTimeDowLocationForAppInContext:(BOOL)a3;
- (void)setHasAppLaunchesSpecificTimeDowLocationInContext:(BOOL)a3;
- (void)setHasAppNumberOfCoarseGeohashesForApp:(BOOL)a3;
- (void)setHasAppNumberOfSpecificGeohashesForApp:(BOOL)a3;
- (void)setHasAppNumberOfZoom7GeohashesForApp:(BOOL)a3;
- (void)setHasAppPopularityGivenTimeAndDayOfWeek:(BOOL)a3;
- (void)setHasAppPopularityOfTimeAndDayOfWeekGivenApp:(BOOL)a3;
- (void)setHasAppTimeAndDayOfWeekPopularity:(BOOL)a3;
- (void)setHasAppTimeOfDayLaunches:(BOOL)a3;
- (void)setHasAppTotalNumberOfTimeAndDayOfWeekLaunches:(BOOL)a3;
- (void)setHasCoarseTimeOfDayPopularity:(BOOL)a3;
- (void)setHasCoreMotionPopularity:(BOOL)a3;
- (void)setHasCurrentTimeBucketFromZeroToTwentyFour:(BOOL)a3;
- (void)setHasDayOfWeekBucket:(BOOL)a3;
- (void)setHasDayOfWeekPopularity:(BOOL)a3;
- (void)setHasEntropyDayOfWeekPopularity:(BOOL)a3;
- (void)setHasEntropyDayOfWeekPopularityByApp:(BOOL)a3;
- (void)setHasEntropyDayOfWeekPopularityByDay:(BOOL)a3;
- (void)setHasEntropyLaunchPopularity:(BOOL)a3;
- (void)setHasEntropySSIDPopularity:(BOOL)a3;
- (void)setHasEntropySSIDPopularityByApp:(BOOL)a3;
- (void)setHasEntropySSIDPopularityBySSID:(BOOL)a3;
- (void)setHasEntropyTrendingPopularity:(BOOL)a3;
- (void)setHasIsLocationServicesDisabled:(BOOL)a3;
- (void)setHasLaunchDayOfWeekPopularity:(BOOL)a3;
- (void)setHasLaunchPopularity:(BOOL)a3;
- (void)setHasLaunchTimePopularity:(BOOL)a3;
- (void)setHasOnWifi:(BOOL)a3;
- (void)setHasPoiPopularityForAppInContext:(BOOL)a3;
- (void)setHasSSIDPopularity:(BOOL)a3;
- (void)setHasTimeOfDayBucket:(BOOL)a3;
- (void)setHasTimeOfDayPopularity:(BOOL)a3;
- (void)setHasTotalNumberOfAirplaneModeLaunches:(BOOL)a3;
- (void)setHasTotalNumberOfCoreMotionLaunches:(BOOL)a3;
- (void)setHasTotalNumberOfLaunches:(BOOL)a3;
- (void)setHasTotalNumberOfSSIDLaunches:(BOOL)a3;
- (void)setHasTotalNumberOfTrendingLaunches:(BOOL)a3;
- (void)setHasTrendingPopularity:(BOOL)a3;
- (void)setHasUnlockTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBTaskAgnosticBehaviorFeatureVector

- (void)setHasUnlockTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFEFFFF | v3;
}

- (void)setHasLaunchTimePopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFEF | v3;
}

- (void)setHasTimeOfDayBucket:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFEFF | v3;
}

- (void)setHasTimeOfDayPopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFDFF | v3;
}

- (void)setHasCoarseTimeOfDayPopularity:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasLaunchPopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFF7 | v3;
}

- (void)setHasLaunchDayOfWeekPopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFFB | v3;
}

- (void)setHasDayOfWeekBucket:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasDayOfWeekPopularity:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropyLaunchPopularity:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropyDayOfWeekPopularity:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropyDayOfWeekPopularityByDay:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropyDayOfWeekPopularityByApp:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropyTrendingPopularity:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = v3 & 0x8000000000000000 | *(&self->_has + 1) & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasEntropySSIDPopularity:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropySSIDPopularityBySSID:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasEntropySSIDPopularityByApp:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalNumberOfLaunches:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFEFFF | v3;
}

- (void)setHasTotalNumberOfAirplaneModeLaunches:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFBFF | v3;
}

- (void)setHasTrendingPopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFF7FFF | v3;
}

- (void)setHasTotalNumberOfTrendingLaunches:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFBFFF | v3;
}

- (void)setHasSSIDPopularity:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFF7F | v3;
}

- (void)setHasTotalNumberOfSSIDLaunches:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFDFFF | v3;
}

- (void)setHasOnWifi:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFDF | v3;
}

- (void)setHasCoreMotionPopularity:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalNumberOfCoreMotionLaunches:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFF7FF | v3;
}

- (void)setHasAmbientLightTypePopularity:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasAmbientLightTypeLaunchPopularity:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasAppTimeOfDayLaunches:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppDayOfWeekLaunches:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasAppTimeAndDayOfWeekPopularity:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppPopularityGivenTimeAndDayOfWeek:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasAppPopularityOfTimeAndDayOfWeekGivenApp:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasAppTotalNumberOfTimeAndDayOfWeekLaunches:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesCoarseTimePowLocationForAppInContext:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesCoarseTimePowLocationInContext:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasAppLaunchesCoarseTimePowLocationForApp:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesCoarseTimePowLocationForAllAppsAndContexts:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesSpecificTimeDowLocationForAppInContext:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesSpecificTimeDowLocationInContext:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesSpecificTimeDowLocationForApp:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesSpecificTimeDowLocationForAllAppsAndContexts:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket0ForApp:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket1ForApp:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket2ForApp:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket3ForApp:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket4ForApp:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket5ForApp:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket6ForApp:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket7ForApp:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket8ForApp:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket9ForApp:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket10ForApp:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket11ForApp:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket12ForApp:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket13ForApp:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket14ForApp:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket15ForApp:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket16ForApp:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket17ForApp:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket18ForApp:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket19ForApp:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket20ForApp:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket21ForApp:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket22ForApp:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket23ForApp:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasAppLaunchesInTimeBucket24ForApp:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekSundayForApp:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekMondayForApp:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekTuesdayForApp:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekWednesdayForApp:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekThursdayForApp:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekFridayForApp:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesOnDayOfWeekSaturdayForApp:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash0ForApp:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash1ForApp:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash2ForApp:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash3ForApp:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash4ForApp:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash5ForApp:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash6ForApp:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash7ForApp:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash8ForApp:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHash9ForApp:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash0ForApp:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash1ForApp:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash2ForApp:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash3ForApp:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash4ForApp:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash5ForApp:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash6ForApp:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash7ForApp:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash8ForApp:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash9ForApp:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash10ForApp:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash11ForApp:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash12ForApp:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash13ForApp:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHash14ForApp:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasAppNumberOfSpecificGeohashesForApp:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasAppNumberOfCoarseGeohashesForApp:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasAppEntropyForTimeBuckets:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasAppEntropyForSpecificGeoHash:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasAppEntropyForCoarseGeoHash:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHashForAppInContext:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHashForAppInContext:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtDayOfWeekForApp:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtTimeAndDayForAppInContext:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtTimeAndDayInContext:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtTimeAndDayForApp:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHashInContext:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtCoarseGeoHashForApp:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHashInContext:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSpecificGeoHashForApp:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasIsLocationServicesDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFFD | v3;
}

- (void)setHasAppLaunchesInTwoHourTimeBucketForAppInContext:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTwoHourTimeBucketInContext:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasAppLaunchesInTwoHourTimeBucketForApp:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasCurrentTimeBucketFromZeroToTwentyFour:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHashForAppInContext:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHashInContext:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHashForApp:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash0ForApp:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash1ForApp:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash2ForApp:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash3ForApp:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash4ForApp:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash5ForApp:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash6ForApp:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash7ForApp:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash8ForApp:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtZoom7GeoHash9ForApp:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasAppEntropyForZoom7GeoHash:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasAppNumberOfZoom7GeohashesForApp:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSSIDForAppInContext:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasAppLaunchesAtSSIDForApp:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasAppLaunchesForCoreMotionForAppInContext:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasAppLaunchesInAirplaneModeForAppInContext:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasPoiPopularityForAppInContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFFFFBF | v3;
}

- (void)setHasAppLaunchPopularityAtPOIForAppInContext:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasAppLaunchesAtPOIForAppInContext:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBTaskAgnosticBehaviorFeatureVector;
  v4 = [(ATXPBTaskAgnosticBehaviorFeatureVector *)&v8 description];
  v5 = [(ATXPBTaskAgnosticBehaviorFeatureVector *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  p_has = &self->_has;
  v5 = *(&self->_has + 4);
  if ((v5 & 0x10000) != 0)
  {
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:self->_unlockTime];
    [v3 setObject:v60 forKey:@"unlockTime"];

    v5 = *(&self->_has + 4);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_184;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v61 = [MEMORY[0x277CCABB0] numberWithDouble:self->_launchTimePopularity];
  [v3 setObject:v61 forKey:@"launchTimePopularity"];

  v5 = *(&self->_has + 4);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_184:
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfDayBucket];
  [v3 setObject:v62 forKey:@"timeOfDayBucket"];

  if ((*(&self->_has + 4) & 0x200) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfDayPopularity];
    [v3 setObject:v6 forKey:@"timeOfDayPopularity"];
  }

LABEL_6:
  if ((*(&self->_has + 14) & 8) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coarseTimeOfDayPopularity];
    [v3 setObject:v7 forKey:@"coarseTimeOfDayPopularity"];
  }

  v8 = *(&self->_has + 4);
  if ((v8 & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_launchPopularity];
    [v3 setObject:v9 forKey:@"launchPopularity"];

    v8 = *(&self->_has + 4);
  }

  if ((v8 & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_launchDayOfWeekPopularity];
    [v3 setObject:v10 forKey:@"launchDayOfWeekPopularity"];
  }

  v11 = *(&self->_has + 1);
  if ((v11 & 0x40000000000000) != 0)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dayOfWeekBucket];
    [v3 setObject:v63 forKey:@"dayOfWeekBucket"];

    v11 = *(&self->_has + 1);
    if ((v11 & 0x80000000000000) == 0)
    {
LABEL_14:
      if ((v11 & 0x800000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_188;
    }
  }

  else if ((v11 & 0x80000000000000) == 0)
  {
    goto LABEL_14;
  }

  v64 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dayOfWeekPopularity];
  [v3 setObject:v64 forKey:@"dayOfWeekPopularity"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x800000000000000) == 0)
  {
LABEL_15:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_189;
  }

LABEL_188:
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropyLaunchPopularity];
  [v3 setObject:v65 forKey:@"entropyLaunchPopularity"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x100000000000000) == 0)
  {
LABEL_16:
    if ((v11 & 0x400000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_190;
  }

LABEL_189:
  v66 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropyDayOfWeekPopularity];
  [v3 setObject:v66 forKey:@"entropyDayOfWeekPopularity"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x400000000000000) == 0)
  {
LABEL_17:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_191;
  }

LABEL_190:
  v67 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropyDayOfWeekPopularityByDay];
  [v3 setObject:v67 forKey:@"entropyDayOfWeekPopularityByDay"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x200000000000000) == 0)
  {
LABEL_18:
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_192;
  }

LABEL_191:
  v68 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropyDayOfWeekPopularityByApp];
  [v3 setObject:v68 forKey:@"entropyDayOfWeekPopularityByApp"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_193;
  }

LABEL_192:
  v69 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropyTrendingPopularity];
  [v3 setObject:v69 forKey:@"entropyTrendingPopularity"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x1000000000000000) == 0)
  {
LABEL_20:
    if ((v11 & 0x4000000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_194;
  }

LABEL_193:
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropySSIDPopularity];
  [v3 setObject:v70 forKey:@"entropySSIDPopularity"];

  v11 = *(&self->_has + 1);
  if ((v11 & 0x4000000000000000) == 0)
  {
LABEL_21:
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_194:
  v71 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropySSIDPopularityBySSID];
  [v3 setObject:v71 forKey:@"entropySSIDPopularityBySSID"];

  if ((*(&self->_has + 1) & 0x2000000000000000) != 0)
  {
LABEL_22:
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_entropySSIDPopularityByApp];
    [v3 setObject:v12 forKey:@"entropySSIDPopularityByApp"];
  }

LABEL_23:
  if ((*(&self->_has + 17) & 0x10) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalNumberOfLaunches];
    [v3 setObject:v13 forKey:@"totalNumberOfLaunches"];
  }

  if (*p_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_airplaneModePopularity];
    [v3 setObject:v14 forKey:@"airplaneModePopularity"];
  }

  v15 = *(&self->_has + 4);
  if ((v15 & 0x400) != 0)
  {
    v72 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalNumberOfAirplaneModeLaunches];
    [v3 setObject:v72 forKey:@"totalNumberOfAirplaneModeLaunches"];

    v15 = *(&self->_has + 4);
    if ((v15 & 0x8000) == 0)
    {
LABEL_29:
      if ((v15 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_198;
    }
  }

  else if ((v15 & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  v73 = [MEMORY[0x277CCABB0] numberWithDouble:self->_trendingPopularity];
  [v3 setObject:v73 forKey:@"trendingPopularity"];

  v15 = *(&self->_has + 4);
  if ((v15 & 0x4000) == 0)
  {
LABEL_30:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_199;
  }

LABEL_198:
  v74 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalNumberOfTrendingLaunches];
  [v3 setObject:v74 forKey:@"totalNumberOfTrendingLaunches"];

  v15 = *(&self->_has + 4);
  if ((v15 & 0x80) == 0)
  {
LABEL_31:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_200;
  }

LABEL_199:
  v75 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sSIDPopularity];
  [v3 setObject:v75 forKey:@"sSIDPopularity"];

  v15 = *(&self->_has + 4);
  if ((v15 & 0x2000) == 0)
  {
LABEL_32:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_200:
  v76 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalNumberOfSSIDLaunches];
  [v3 setObject:v76 forKey:@"totalNumberOfSSIDLaunches"];

  if ((*(&self->_has + 4) & 0x20) != 0)
  {
LABEL_33:
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_onWifi];
    [v3 setObject:v16 forKey:@"onWifi"];
  }

LABEL_34:
  if ((*(&self->_has + 14) & 0x10) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_coreMotionPopularity];
    [v3 setObject:v17 forKey:@"coreMotionPopularity"];
  }

  v18 = *(&self->_has + 4);
  if ((v18 & 0x800) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalNumberOfCoreMotionLaunches];
    [v3 setObject:v19 forKey:@"totalNumberOfCoreMotionLaunches"];

    v18 = *(&self->_has + 4);
  }

  if (v18)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isDateInWeekendOnDevice];
    [v3 setObject:v20 forKey:@"isDateInWeekendOnDevice"];
  }

  v21 = *p_has;
  if ((*p_has & 4) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ambientLightTypePopularity];
    [v3 setObject:v22 forKey:@"ambientLightTypePopularity"];

    v21 = *p_has;
  }

  if ((v21 & 2) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ambientLightTypeLaunchPopularity];
    [v3 setObject:v23 forKey:@"ambientLightTypeLaunchPopularity"];
  }

  if ((*(&self->_has + 14) & 2) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appTimeOfDayLaunches];
    [v3 setObject:v24 forKey:@"appTimeOfDayLaunches"];
  }

  if ((*p_has & 8) != 0)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appDayOfWeekLaunches];
    [v3 setObject:v25 forKey:@"appDayOfWeekLaunches"];
  }

  v26 = *(&self->_has + 1);
  if ((v26 & 0x1000000000000) != 0)
  {
    v77 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appTimeAndDayOfWeekPopularity];
    [v3 setObject:v77 forKey:@"appTimeAndDayOfWeekPopularity"];

    v26 = *(&self->_has + 1);
    if ((v26 & 0x400000000000) == 0)
    {
LABEL_50:
      if ((v26 & 0x800000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_204;
    }
  }

  else if ((v26 & 0x400000000000) == 0)
  {
    goto LABEL_50;
  }

  v78 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appPopularityGivenTimeAndDayOfWeek];
  [v3 setObject:v78 forKey:@"appPopularityGivenTimeAndDayOfWeek"];

  v26 = *(&self->_has + 1);
  if ((v26 & 0x800000000000) == 0)
  {
LABEL_51:
    if ((v26 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_204:
  v79 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appPopularityOfTimeAndDayOfWeekGivenApp];
  [v3 setObject:v79 forKey:@"appPopularityOfTimeAndDayOfWeekGivenApp"];

  if ((*(&self->_has + 1) & 0x4000000000000) != 0)
  {
LABEL_52:
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appTotalNumberOfTimeAndDayOfWeekLaunches];
    [v3 setObject:v27 forKey:@"appTotalNumberOfTimeAndDayOfWeekLaunches"];
  }

LABEL_53:
  v28 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesCoarseTimePowLocationForAppInContext];
    [v3 setObject:v80 forKey:@"appLaunchesCoarseTimePowLocationForAppInContext"];

    v28 = *p_has;
    if ((*p_has & 0x8000000000000000) == 0)
    {
LABEL_55:
      if ((v28 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_208;
    }
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_55;
  }

  v81 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesCoarseTimePowLocationInContext];
  [v3 setObject:v81 forKey:@"appLaunchesCoarseTimePowLocationInContext"];

  v28 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_56:
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_208:
  v82 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesCoarseTimePowLocationForApp];
  [v3 setObject:v82 forKey:@"appLaunchesCoarseTimePowLocationForApp"];

  if ((*p_has & 0x1000000000000000) != 0)
  {
LABEL_57:
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts];
    [v3 setObject:v29 forKey:@"appLaunchesCoarseTimePowLocationForAllAppsAndContexts"];
  }

LABEL_58:
  v30 = *(&self->_has + 1);
  if ((v30 & 0x20000000000) != 0)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesSpecificTimeDowLocationForAppInContext];
    [v3 setObject:v83 forKey:@"appLaunchesSpecificTimeDowLocationForAppInContext"];

    v30 = *(&self->_has + 1);
    if ((v30 & 0x40000000000) == 0)
    {
LABEL_60:
      if ((v30 & 0x10000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_212;
    }
  }

  else if ((v30 & 0x40000000000) == 0)
  {
    goto LABEL_60;
  }

  v84 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesSpecificTimeDowLocationInContext];
  [v3 setObject:v84 forKey:@"appLaunchesSpecificTimeDowLocationInContext"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((v30 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_213;
  }

LABEL_212:
  v85 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesSpecificTimeDowLocationForApp];
  [v3 setObject:v85 forKey:@"appLaunchesSpecificTimeDowLocationForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000000000) == 0)
  {
LABEL_62:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_214;
  }

LABEL_213:
  v86 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts];
  [v3 setObject:v86 forKey:@"appLaunchesSpecificTimeDowLocationForAllAppsAndContexts"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x10) == 0)
  {
LABEL_63:
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_215;
  }

LABEL_214:
  v87 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket0ForApp];
  [v3 setObject:v87 forKey:@"appLaunchesInTimeBucket0ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000) == 0)
  {
LABEL_64:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_216;
  }

LABEL_215:
  v88 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket1ForApp];
  [v3 setObject:v88 forKey:@"appLaunchesInTimeBucket1ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x200000) == 0)
  {
LABEL_65:
    if ((v30 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_217;
  }

LABEL_216:
  v89 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket2ForApp];
  [v3 setObject:v89 forKey:@"appLaunchesInTimeBucket2ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x400000) == 0)
  {
LABEL_66:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_217:
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket3ForApp];
  [v3 setObject:v90 forKey:@"appLaunchesInTimeBucket3ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x800000) == 0)
  {
LABEL_67:
    if ((v30 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_219;
  }

LABEL_218:
  v91 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket4ForApp];
  [v3 setObject:v91 forKey:@"appLaunchesInTimeBucket4ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000000) == 0)
  {
LABEL_68:
    if ((v30 & 0x2000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_220;
  }

LABEL_219:
  v92 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket5ForApp];
  [v3 setObject:v92 forKey:@"appLaunchesInTimeBucket5ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000000) == 0)
  {
LABEL_69:
    if ((v30 & 0x4000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_221;
  }

LABEL_220:
  v93 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket6ForApp];
  [v3 setObject:v93 forKey:@"appLaunchesInTimeBucket6ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000000) == 0)
  {
LABEL_70:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_222;
  }

LABEL_221:
  v94 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket7ForApp];
  [v3 setObject:v94 forKey:@"appLaunchesInTimeBucket7ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_223;
  }

LABEL_222:
  v95 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket8ForApp];
  [v3 setObject:v95 forKey:@"appLaunchesInTimeBucket8ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000000) == 0)
  {
LABEL_72:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_224;
  }

LABEL_223:
  v96 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket9ForApp];
  [v3 setObject:v96 forKey:@"appLaunchesInTimeBucket9ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x20) == 0)
  {
LABEL_73:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_225;
  }

LABEL_224:
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket10ForApp];
  [v3 setObject:v97 forKey:@"appLaunchesInTimeBucket10ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x40) == 0)
  {
LABEL_74:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_226;
  }

LABEL_225:
  v98 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket11ForApp];
  [v3 setObject:v98 forKey:@"appLaunchesInTimeBucket11ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x80) == 0)
  {
LABEL_75:
    if ((v30 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_227;
  }

LABEL_226:
  v99 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket12ForApp];
  [v3 setObject:v99 forKey:@"appLaunchesInTimeBucket12ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x100) == 0)
  {
LABEL_76:
    if ((v30 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_228;
  }

LABEL_227:
  v100 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket13ForApp];
  [v3 setObject:v100 forKey:@"appLaunchesInTimeBucket13ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x200) == 0)
  {
LABEL_77:
    if ((v30 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_229;
  }

LABEL_228:
  v101 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket14ForApp];
  [v3 setObject:v101 forKey:@"appLaunchesInTimeBucket14ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x400) == 0)
  {
LABEL_78:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_230;
  }

LABEL_229:
  v102 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket15ForApp];
  [v3 setObject:v102 forKey:@"appLaunchesInTimeBucket15ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x800) == 0)
  {
LABEL_79:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_231;
  }

LABEL_230:
  v103 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket16ForApp];
  [v3 setObject:v103 forKey:@"appLaunchesInTimeBucket16ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000) == 0)
  {
LABEL_80:
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_232;
  }

LABEL_231:
  v104 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket17ForApp];
  [v3 setObject:v104 forKey:@"appLaunchesInTimeBucket17ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000) == 0)
  {
LABEL_81:
    if ((v30 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_233;
  }

LABEL_232:
  v105 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket18ForApp];
  [v3 setObject:v105 forKey:@"appLaunchesInTimeBucket18ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000) == 0)
  {
LABEL_82:
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_234;
  }

LABEL_233:
  v106 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket19ForApp];
  [v3 setObject:v106 forKey:@"appLaunchesInTimeBucket19ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000) == 0)
  {
LABEL_83:
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_235;
  }

LABEL_234:
  v107 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket20ForApp];
  [v3 setObject:v107 forKey:@"appLaunchesInTimeBucket20ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x20000) == 0)
  {
LABEL_84:
    if ((v30 & 0x40000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_236;
  }

LABEL_235:
  v108 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket21ForApp];
  [v3 setObject:v108 forKey:@"appLaunchesInTimeBucket21ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x40000) == 0)
  {
LABEL_85:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_237;
  }

LABEL_236:
  v109 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket22ForApp];
  [v3 setObject:v109 forKey:@"appLaunchesInTimeBucket22ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x80000) == 0)
  {
LABEL_86:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_238;
  }

LABEL_237:
  v110 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket23ForApp];
  [v3 setObject:v110 forKey:@"appLaunchesInTimeBucket23ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x100000) == 0)
  {
LABEL_87:
    if ((v30 & 0x800000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_239;
  }

LABEL_238:
  v111 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTimeBucket24ForApp];
  [v3 setObject:v111 forKey:@"appLaunchesInTimeBucket24ForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x800000000) == 0)
  {
LABEL_88:
    if ((v30 & 0x200000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_240;
  }

LABEL_239:
  v112 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekSundayForApp];
  [v3 setObject:v112 forKey:@"appLaunchesOnDayOfWeekSundayForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x200000000) == 0)
  {
LABEL_89:
    if ((v30 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_241;
  }

LABEL_240:
  v113 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekMondayForApp];
  [v3 setObject:v113 forKey:@"appLaunchesOnDayOfWeekMondayForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000000000) == 0)
  {
LABEL_90:
    if ((v30 & 0x4000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_242;
  }

LABEL_241:
  v114 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekTuesdayForApp];
  [v3 setObject:v114 forKey:@"appLaunchesOnDayOfWeekTuesdayForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000000000) == 0)
  {
LABEL_91:
    if ((v30 & 0x1000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_243;
  }

LABEL_242:
  v115 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekWednesdayForApp];
  [v3 setObject:v115 forKey:@"appLaunchesOnDayOfWeekWednesdayForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000000000) == 0)
  {
LABEL_92:
    if ((v30 & 0x100000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_244;
  }

LABEL_243:
  v116 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekThursdayForApp];
  [v3 setObject:v116 forKey:@"appLaunchesOnDayOfWeekThursdayForApp"];

  v30 = *(&self->_has + 1);
  if ((v30 & 0x100000000) == 0)
  {
LABEL_93:
    if ((v30 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_244:
  v117 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekFridayForApp];
  [v3 setObject:v117 forKey:@"appLaunchesOnDayOfWeekFridayForApp"];

  if ((*(&self->_has + 1) & 0x400000000) != 0)
  {
LABEL_94:
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesOnDayOfWeekSaturdayForApp];
    [v3 setObject:v31 forKey:@"appLaunchesOnDayOfWeekSaturdayForApp"];
  }

LABEL_95:
  v32 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v118 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash0ForApp];
    [v3 setObject:v118 forKey:@"appLaunchesAtCoarseGeoHash0ForApp"];

    v32 = *p_has;
    if ((*p_has & 0x400) == 0)
    {
LABEL_97:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_248;
    }
  }

  else if ((v32 & 0x400) == 0)
  {
    goto LABEL_97;
  }

  v119 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash1ForApp];
  [v3 setObject:v119 forKey:@"appLaunchesAtCoarseGeoHash1ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_98:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_249;
  }

LABEL_248:
  v120 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash2ForApp];
  [v3 setObject:v120 forKey:@"appLaunchesAtCoarseGeoHash2ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_99:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_250;
  }

LABEL_249:
  v121 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash3ForApp];
  [v3 setObject:v121 forKey:@"appLaunchesAtCoarseGeoHash3ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_100:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_251;
  }

LABEL_250:
  v122 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash4ForApp];
  [v3 setObject:v122 forKey:@"appLaunchesAtCoarseGeoHash4ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_101:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_252;
  }

LABEL_251:
  v123 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash5ForApp];
  [v3 setObject:v123 forKey:@"appLaunchesAtCoarseGeoHash5ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_102:
    if ((v32 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_253;
  }

LABEL_252:
  v124 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash6ForApp];
  [v3 setObject:v124 forKey:@"appLaunchesAtCoarseGeoHash6ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_103:
    if ((v32 & 0x20000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_254;
  }

LABEL_253:
  v125 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash7ForApp];
  [v3 setObject:v125 forKey:@"appLaunchesAtCoarseGeoHash7ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_104:
    if ((v32 & 0x40000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_255;
  }

LABEL_254:
  v126 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash8ForApp];
  [v3 setObject:v126 forKey:@"appLaunchesAtCoarseGeoHash8ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_105:
    if ((v32 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_256;
  }

LABEL_255:
  v127 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHash9ForApp];
  [v3 setObject:v127 forKey:@"appLaunchesAtCoarseGeoHash9ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_106:
    if ((v32 & 0x100000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_257;
  }

LABEL_256:
  v128 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash0ForApp];
  [v3 setObject:v128 forKey:@"appLaunchesAtSpecificGeoHash0ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_107:
    if ((v32 & 0x200000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_258;
  }

LABEL_257:
  v129 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash1ForApp];
  [v3 setObject:v129 forKey:@"appLaunchesAtSpecificGeoHash1ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_108:
    if ((v32 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_259;
  }

LABEL_258:
  v130 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash2ForApp];
  [v3 setObject:v130 forKey:@"appLaunchesAtSpecificGeoHash2ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_109:
    if ((v32 & 0x800000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_260;
  }

LABEL_259:
  v131 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash3ForApp];
  [v3 setObject:v131 forKey:@"appLaunchesAtSpecificGeoHash3ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_110:
    if ((v32 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_261;
  }

LABEL_260:
  v132 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash4ForApp];
  [v3 setObject:v132 forKey:@"appLaunchesAtSpecificGeoHash4ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v32 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_262;
  }

LABEL_261:
  v133 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash5ForApp];
  [v3 setObject:v133 forKey:@"appLaunchesAtSpecificGeoHash5ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v32 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_263;
  }

LABEL_262:
  v134 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash6ForApp];
  [v3 setObject:v134 forKey:@"appLaunchesAtSpecificGeoHash6ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v32 & 0x8000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_264;
  }

LABEL_263:
  v135 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash7ForApp];
  [v3 setObject:v135 forKey:@"appLaunchesAtSpecificGeoHash7ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_114:
    if ((v32 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_265;
  }

LABEL_264:
  v136 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash8ForApp];
  [v3 setObject:v136 forKey:@"appLaunchesAtSpecificGeoHash8ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_266;
  }

LABEL_265:
  v137 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash9ForApp];
  [v3 setObject:v137 forKey:@"appLaunchesAtSpecificGeoHash9ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_116:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_267;
  }

LABEL_266:
  v138 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash10ForApp];
  [v3 setObject:v138 forKey:@"appLaunchesAtSpecificGeoHash10ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_117:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_268;
  }

LABEL_267:
  v139 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash11ForApp];
  [v3 setObject:v139 forKey:@"appLaunchesAtSpecificGeoHash11ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_118:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_269;
  }

LABEL_268:
  v140 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash12ForApp];
  [v3 setObject:v140 forKey:@"appLaunchesAtSpecificGeoHash12ForApp"];

  v32 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_119:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_269:
  v141 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash13ForApp];
  [v3 setObject:v141 forKey:@"appLaunchesAtSpecificGeoHash13ForApp"];

  if ((*p_has & 0x80000000) != 0)
  {
LABEL_120:
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHash14ForApp];
    [v3 setObject:v33 forKey:@"appLaunchesAtSpecificGeoHash14ForApp"];
  }

LABEL_121:
  v34 = *(&self->_has + 1);
  if ((v34 & 0x100000000000) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appNumberOfSpecificGeohashesForApp];
    [v3 setObject:v35 forKey:@"appNumberOfSpecificGeohashesForApp"];

    v34 = *(&self->_has + 1);
  }

  if ((v34 & 0x80000000000) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appNumberOfCoarseGeohashesForApp];
    [v3 setObject:v36 forKey:@"appNumberOfCoarseGeohashesForApp"];
  }

  v37 = *p_has;
  if ((*p_has & 0x40) != 0)
  {
    v142 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appEntropyForTimeBuckets];
    [v3 setObject:v142 forKey:@"appEntropyForTimeBuckets"];

    v37 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_127:
      if ((v37 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_273;
    }
  }

  else if ((v37 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  v143 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appEntropyForSpecificGeoHash];
  [v3 setObject:v143 forKey:@"appEntropyForSpecificGeoHash"];

  v37 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_128:
    if ((v37 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_274;
  }

LABEL_273:
  v144 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appEntropyForCoarseGeoHash];
  [v3 setObject:v144 forKey:@"appEntropyForCoarseGeoHash"];

  v37 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_129:
    if ((v37 & 0x100000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_275;
  }

LABEL_274:
  v145 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHashForAppInContext];
  [v3 setObject:v145 forKey:@"appLaunchesAtSpecificGeoHashForAppInContext"];

  v37 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_130:
    if ((v37 & 0x400000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_276;
  }

LABEL_275:
  v146 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHashForAppInContext];
  [v3 setObject:v146 forKey:@"appLaunchesAtCoarseGeoHashForAppInContext"];

  v37 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_131:
    if ((v37 & 0x200000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_277;
  }

LABEL_276:
  v147 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtDayOfWeekForApp];
  [v3 setObject:v147 forKey:@"appLaunchesAtDayOfWeekForApp"];

  v37 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_132:
    if ((v37 & 0x400000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_278;
  }

LABEL_277:
  v148 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtTimeAndDayForAppInContext];
  [v3 setObject:v148 forKey:@"appLaunchesAtTimeAndDayForAppInContext"];

  v37 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_133:
    if ((v37 & 0x100000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_279;
  }

LABEL_278:
  v149 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtTimeAndDayInContext];
  [v3 setObject:v149 forKey:@"appLaunchesAtTimeAndDayInContext"];

  v37 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_134:
    if ((v37 & 0x200000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_280;
  }

LABEL_279:
  v150 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtTimeAndDayForApp];
  [v3 setObject:v150 forKey:@"appLaunchesAtTimeAndDayForApp"];

  v37 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_135:
    if ((v37 & 0x80000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_281;
  }

LABEL_280:
  v151 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHashInContext];
  [v3 setObject:v151 forKey:@"appLaunchesAtCoarseGeoHashInContext"];

  v37 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_136:
    if ((v37 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_282;
  }

LABEL_281:
  v152 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtCoarseGeoHashForApp];
  [v3 setObject:v152 forKey:@"appLaunchesAtCoarseGeoHashForApp"];

  v37 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_137:
    if ((v37 & 0x20000000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_282:
  v153 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHashInContext];
  [v3 setObject:v153 forKey:@"appLaunchesAtSpecificGeoHashInContext"];

  if ((*p_has & 0x20000000000) != 0)
  {
LABEL_138:
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSpecificGeoHashForApp];
    [v3 setObject:v38 forKey:@"appLaunchesAtSpecificGeoHashForApp"];
  }

LABEL_139:
  v39 = *(&self->_has + 1);
  if (v39)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate];
    [v3 setObject:v40 forKey:@"appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate"];

    v39 = *(&self->_has + 1);
  }

  if ((v39 & 2) != 0)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate];
    [v3 setObject:v41 forKey:@"appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate"];
  }

  if ((*(&self->_has + 16) & 2) != 0)
  {
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isLocationServicesDisabled];
    [v3 setObject:v42 forKey:@"isLocationServicesDisabled"];
  }

  v43 = *(&self->_has + 1);
  if ((v43 & 0x40000000) != 0)
  {
    v154 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTwoHourTimeBucketForAppInContext];
    [v3 setObject:v154 forKey:@"appLaunchesInTwoHourTimeBucketForAppInContext"];

    v43 = *(&self->_has + 1);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_147:
      if ((v43 & 0x20000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_286;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

  v155 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTwoHourTimeBucketInContext];
  [v3 setObject:v155 forKey:@"appLaunchesInTwoHourTimeBucketInContext"];

  v43 = *(&self->_has + 1);
  if ((v43 & 0x20000000) == 0)
  {
LABEL_148:
    if ((v43 & 0x20000000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_286:
  v156 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInTwoHourTimeBucketForApp];
  [v3 setObject:v156 forKey:@"appLaunchesInTwoHourTimeBucketForApp"];

  if ((*(&self->_has + 1) & 0x20000000000000) != 0)
  {
LABEL_149:
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentTimeBucketFromZeroToTwentyFour];
    [v3 setObject:v44 forKey:@"currentTimeBucketFromZeroToTwentyFour"];
  }

LABEL_150:
  v45 = *p_has;
  if ((*p_has & 0x400000000000000) != 0)
  {
    v157 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHashForAppInContext];
    [v3 setObject:v157 forKey:@"appLaunchesAtZoom7GeoHashForAppInContext"];

    v45 = *p_has;
    if ((*p_has & 0x800000000000000) == 0)
    {
LABEL_152:
      if ((v45 & 0x200000000000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_290;
    }
  }

  else if ((v45 & 0x800000000000000) == 0)
  {
    goto LABEL_152;
  }

  v158 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHashInContext];
  [v3 setObject:v158 forKey:@"appLaunchesAtZoom7GeoHashInContext"];

  v45 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_153:
    if ((v45 & 0x800000000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_291;
  }

LABEL_290:
  v159 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHashForApp];
  [v3 setObject:v159 forKey:@"appLaunchesAtZoom7GeoHashForApp"];

  v45 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_154:
    if ((v45 & 0x1000000000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_292;
  }

LABEL_291:
  v160 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash0ForApp];
  [v3 setObject:v160 forKey:@"appLaunchesAtZoom7GeoHash0ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_155:
    if ((v45 & 0x2000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_293;
  }

LABEL_292:
  v161 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash1ForApp];
  [v3 setObject:v161 forKey:@"appLaunchesAtZoom7GeoHash1ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_156:
    if ((v45 & 0x4000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_294;
  }

LABEL_293:
  v162 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash2ForApp];
  [v3 setObject:v162 forKey:@"appLaunchesAtZoom7GeoHash2ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_157:
    if ((v45 & 0x8000000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_295;
  }

LABEL_294:
  v163 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash3ForApp];
  [v3 setObject:v163 forKey:@"appLaunchesAtZoom7GeoHash3ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_158:
    if ((v45 & 0x10000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_296;
  }

LABEL_295:
  v164 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash4ForApp];
  [v3 setObject:v164 forKey:@"appLaunchesAtZoom7GeoHash4ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_159:
    if ((v45 & 0x20000000000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_297;
  }

LABEL_296:
  v165 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash5ForApp];
  [v3 setObject:v165 forKey:@"appLaunchesAtZoom7GeoHash5ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_160:
    if ((v45 & 0x40000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_298;
  }

LABEL_297:
  v166 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash6ForApp];
  [v3 setObject:v166 forKey:@"appLaunchesAtZoom7GeoHash6ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_161:
    if ((v45 & 0x80000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_299;
  }

LABEL_298:
  v167 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash7ForApp];
  [v3 setObject:v167 forKey:@"appLaunchesAtZoom7GeoHash7ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_162:
    if ((v45 & 0x100000000000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_300;
  }

LABEL_299:
  v168 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash8ForApp];
  [v3 setObject:v168 forKey:@"appLaunchesAtZoom7GeoHash8ForApp"];

  v45 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_163:
    if ((v45 & 0x80) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_300:
  v169 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtZoom7GeoHash9ForApp];
  [v3 setObject:v169 forKey:@"appLaunchesAtZoom7GeoHash9ForApp"];

  if ((*p_has & 0x80) != 0)
  {
LABEL_164:
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appEntropyForZoom7GeoHash];
    [v3 setObject:v46 forKey:@"appEntropyForZoom7GeoHash"];
  }

LABEL_165:
  if ((*(&self->_has + 13) & 0x20) != 0)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appNumberOfZoom7GeohashesForApp];
    [v3 setObject:v47 forKey:@"appNumberOfZoom7GeohashesForApp"];
  }

  v48 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSSIDForAppInContext];
    [v3 setObject:v49 forKey:@"appLaunchesAtSSIDForAppInContext"];

    v48 = *p_has;
  }

  if ((v48 & 0x1000000) != 0)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtSSIDForApp];
    [v3 setObject:v50 forKey:@"appLaunchesAtSSIDForApp"];
  }

  v51 = *(&self->_has + 1);
  if ((v51 & 4) != 0)
  {
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesForCoreMotionForAppInContext];
    [v3 setObject:v52 forKey:@"appLaunchesForCoreMotionForAppInContext"];

    v51 = *(&self->_has + 1);
  }

  if ((v51 & 8) != 0)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesInAirplaneModeForAppInContext];
    [v3 setObject:v53 forKey:@"appLaunchesInAirplaneModeForAppInContext"];
  }

  if ((*(&self->_has + 16) & 0x40) != 0)
  {
    v54 = [MEMORY[0x277CCABB0] numberWithDouble:self->_poiPopularityForAppInContext];
    [v3 setObject:v54 forKey:@"poiPopularityForAppInContext"];
  }

  v55 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    v56 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchPopularityAtPOIForAppInContext];
    [v3 setObject:v56 forKey:@"appLaunchPopularityAtPOIForAppInContext"];

    v55 = *p_has;
  }

  if ((v55 & 0x800000) != 0)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithDouble:self->_appLaunchesAtPOIForAppInContext];
    [v3 setObject:v57 forKey:@"appLaunchesAtPOIForAppInContext"];
  }

  v58 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v168 = a3;
  p_has = &self->_has;
  v5 = *(&self->_has + 4);
  if ((v5 & 0x10000) != 0)
  {
    unlockTime = self->_unlockTime;
    PBDataWriterWriteDoubleField();
    v5 = *(&self->_has + 4);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_186;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  launchTimePopularity = self->_launchTimePopularity;
  PBDataWriterWriteDoubleField();
  v5 = *(&self->_has + 4);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_186:
  timeOfDayBucket = self->_timeOfDayBucket;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 4) & 0x200) != 0)
  {
LABEL_5:
    timeOfDayPopularity = self->_timeOfDayPopularity;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  if ((*(&self->_has + 14) & 8) != 0)
  {
    coarseTimeOfDayPopularity = self->_coarseTimeOfDayPopularity;
    PBDataWriterWriteDoubleField();
  }

  v8 = *(&self->_has + 4);
  if ((v8 & 8) != 0)
  {
    launchPopularity = self->_launchPopularity;
    PBDataWriterWriteDoubleField();
    v8 = *(&self->_has + 4);
  }

  if ((v8 & 4) != 0)
  {
    launchDayOfWeekPopularity = self->_launchDayOfWeekPopularity;
    PBDataWriterWriteDoubleField();
  }

  v11 = *(&self->_has + 1);
  if ((v11 & 0x40000000000000) != 0)
  {
    dayOfWeekBucket = self->_dayOfWeekBucket;
    PBDataWriterWriteDoubleField();
    v11 = *(&self->_has + 1);
    if ((v11 & 0x80000000000000) == 0)
    {
LABEL_14:
      if ((v11 & 0x800000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_190;
    }
  }

  else if ((v11 & 0x80000000000000) == 0)
  {
    goto LABEL_14;
  }

  dayOfWeekPopularity = self->_dayOfWeekPopularity;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x800000000000000) == 0)
  {
LABEL_15:
    if ((v11 & 0x100000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_191;
  }

LABEL_190:
  entropyLaunchPopularity = self->_entropyLaunchPopularity;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x100000000000000) == 0)
  {
LABEL_16:
    if ((v11 & 0x400000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_192;
  }

LABEL_191:
  entropyDayOfWeekPopularity = self->_entropyDayOfWeekPopularity;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x400000000000000) == 0)
  {
LABEL_17:
    if ((v11 & 0x200000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_193;
  }

LABEL_192:
  entropyDayOfWeekPopularityByDay = self->_entropyDayOfWeekPopularityByDay;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x200000000000000) == 0)
  {
LABEL_18:
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_194;
  }

LABEL_193:
  entropyDayOfWeekPopularityByApp = self->_entropyDayOfWeekPopularityByApp;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_195;
  }

LABEL_194:
  entropyTrendingPopularity = self->_entropyTrendingPopularity;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x1000000000000000) == 0)
  {
LABEL_20:
    if ((v11 & 0x4000000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_196;
  }

LABEL_195:
  entropySSIDPopularity = self->_entropySSIDPopularity;
  PBDataWriterWriteDoubleField();
  v11 = *(&self->_has + 1);
  if ((v11 & 0x4000000000000000) == 0)
  {
LABEL_21:
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_196:
  entropySSIDPopularityBySSID = self->_entropySSIDPopularityBySSID;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x2000000000000000) != 0)
  {
LABEL_22:
    entropySSIDPopularityByApp = self->_entropySSIDPopularityByApp;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
  if ((*(&self->_has + 17) & 0x10) != 0)
  {
    totalNumberOfLaunches = self->_totalNumberOfLaunches;
    PBDataWriterWriteDoubleField();
  }

  if (*p_has)
  {
    airplaneModePopularity = self->_airplaneModePopularity;
    PBDataWriterWriteDoubleField();
  }

  v15 = *(&self->_has + 4);
  if ((v15 & 0x400) != 0)
  {
    totalNumberOfAirplaneModeLaunches = self->_totalNumberOfAirplaneModeLaunches;
    PBDataWriterWriteDoubleField();
    v15 = *(&self->_has + 4);
    if ((v15 & 0x8000) == 0)
    {
LABEL_29:
      if ((v15 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_200;
    }
  }

  else if ((v15 & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  trendingPopularity = self->_trendingPopularity;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 4);
  if ((v15 & 0x4000) == 0)
  {
LABEL_30:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_201;
  }

LABEL_200:
  totalNumberOfTrendingLaunches = self->_totalNumberOfTrendingLaunches;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 4);
  if ((v15 & 0x80) == 0)
  {
LABEL_31:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_202;
  }

LABEL_201:
  sSIDPopularity = self->_sSIDPopularity;
  PBDataWriterWriteDoubleField();
  v15 = *(&self->_has + 4);
  if ((v15 & 0x2000) == 0)
  {
LABEL_32:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_202:
  totalNumberOfSSIDLaunches = self->_totalNumberOfSSIDLaunches;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
LABEL_33:
    onWifi = self->_onWifi;
    PBDataWriterWriteDoubleField();
  }

LABEL_34:
  if ((*(&self->_has + 14) & 0x10) != 0)
  {
    coreMotionPopularity = self->_coreMotionPopularity;
    PBDataWriterWriteDoubleField();
  }

  v18 = *(&self->_has + 4);
  if ((v18 & 0x800) != 0)
  {
    totalNumberOfCoreMotionLaunches = self->_totalNumberOfCoreMotionLaunches;
    PBDataWriterWriteDoubleField();
    v18 = *(&self->_has + 4);
  }

  if (v18)
  {
    isDateInWeekendOnDevice = self->_isDateInWeekendOnDevice;
    PBDataWriterWriteDoubleField();
  }

  v21 = *p_has;
  if ((*p_has & 4) != 0)
  {
    ambientLightTypePopularity = self->_ambientLightTypePopularity;
    PBDataWriterWriteDoubleField();
    v21 = *p_has;
  }

  if ((v21 & 2) != 0)
  {
    ambientLightTypeLaunchPopularity = self->_ambientLightTypeLaunchPopularity;
    PBDataWriterWriteDoubleField();
  }

  if ((*(&self->_has + 14) & 2) != 0)
  {
    appTimeOfDayLaunches = self->_appTimeOfDayLaunches;
    PBDataWriterWriteDoubleField();
  }

  if ((*p_has & 8) != 0)
  {
    appDayOfWeekLaunches = self->_appDayOfWeekLaunches;
    PBDataWriterWriteDoubleField();
  }

  v26 = *(&self->_has + 1);
  if ((v26 & 0x1000000000000) != 0)
  {
    appTimeAndDayOfWeekPopularity = self->_appTimeAndDayOfWeekPopularity;
    PBDataWriterWriteDoubleField();
    v26 = *(&self->_has + 1);
    if ((v26 & 0x400000000000) == 0)
    {
LABEL_50:
      if ((v26 & 0x800000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_206;
    }
  }

  else if ((v26 & 0x400000000000) == 0)
  {
    goto LABEL_50;
  }

  appPopularityGivenTimeAndDayOfWeek = self->_appPopularityGivenTimeAndDayOfWeek;
  PBDataWriterWriteDoubleField();
  v26 = *(&self->_has + 1);
  if ((v26 & 0x800000000000) == 0)
  {
LABEL_51:
    if ((v26 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_206:
  appPopularityOfTimeAndDayOfWeekGivenApp = self->_appPopularityOfTimeAndDayOfWeekGivenApp;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x4000000000000) != 0)
  {
LABEL_52:
    appTotalNumberOfTimeAndDayOfWeekLaunches = self->_appTotalNumberOfTimeAndDayOfWeekLaunches;
    PBDataWriterWriteDoubleField();
  }

LABEL_53:
  v28 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    appLaunchesCoarseTimePowLocationForAppInContext = self->_appLaunchesCoarseTimePowLocationForAppInContext;
    PBDataWriterWriteDoubleField();
    v28 = *p_has;
    if ((*p_has & 0x8000000000000000) == 0)
    {
LABEL_55:
      if ((v28 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_210;
    }
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_55;
  }

  appLaunchesCoarseTimePowLocationInContext = self->_appLaunchesCoarseTimePowLocationInContext;
  PBDataWriterWriteDoubleField();
  v28 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_56:
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_210:
  appLaunchesCoarseTimePowLocationForApp = self->_appLaunchesCoarseTimePowLocationForApp;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x1000000000000000) != 0)
  {
LABEL_57:
    appLaunchesCoarseTimePowLocationForAllAppsAndContexts = self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
    PBDataWriterWriteDoubleField();
  }

LABEL_58:
  v30 = *(&self->_has + 1);
  if ((v30 & 0x20000000000) != 0)
  {
    appLaunchesSpecificTimeDowLocationForAppInContext = self->_appLaunchesSpecificTimeDowLocationForAppInContext;
    PBDataWriterWriteDoubleField();
    v30 = *(&self->_has + 1);
    if ((v30 & 0x40000000000) == 0)
    {
LABEL_60:
      if ((v30 & 0x10000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_214;
    }
  }

  else if ((v30 & 0x40000000000) == 0)
  {
    goto LABEL_60;
  }

  appLaunchesSpecificTimeDowLocationInContext = self->_appLaunchesSpecificTimeDowLocationInContext;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((v30 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_215;
  }

LABEL_214:
  appLaunchesSpecificTimeDowLocationForApp = self->_appLaunchesSpecificTimeDowLocationForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000000000) == 0)
  {
LABEL_62:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_216;
  }

LABEL_215:
  appLaunchesSpecificTimeDowLocationForAllAppsAndContexts = self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x10) == 0)
  {
LABEL_63:
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_217;
  }

LABEL_216:
  appLaunchesInTimeBucket0ForApp = self->_appLaunchesInTimeBucket0ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000) == 0)
  {
LABEL_64:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_218;
  }

LABEL_217:
  appLaunchesInTimeBucket1ForApp = self->_appLaunchesInTimeBucket1ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x200000) == 0)
  {
LABEL_65:
    if ((v30 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_219;
  }

LABEL_218:
  appLaunchesInTimeBucket2ForApp = self->_appLaunchesInTimeBucket2ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x400000) == 0)
  {
LABEL_66:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_220;
  }

LABEL_219:
  appLaunchesInTimeBucket3ForApp = self->_appLaunchesInTimeBucket3ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x800000) == 0)
  {
LABEL_67:
    if ((v30 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_221;
  }

LABEL_220:
  appLaunchesInTimeBucket4ForApp = self->_appLaunchesInTimeBucket4ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000000) == 0)
  {
LABEL_68:
    if ((v30 & 0x2000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_222;
  }

LABEL_221:
  appLaunchesInTimeBucket5ForApp = self->_appLaunchesInTimeBucket5ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000000) == 0)
  {
LABEL_69:
    if ((v30 & 0x4000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_223;
  }

LABEL_222:
  appLaunchesInTimeBucket6ForApp = self->_appLaunchesInTimeBucket6ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000000) == 0)
  {
LABEL_70:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_224;
  }

LABEL_223:
  appLaunchesInTimeBucket7ForApp = self->_appLaunchesInTimeBucket7ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_225;
  }

LABEL_224:
  appLaunchesInTimeBucket8ForApp = self->_appLaunchesInTimeBucket8ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000000) == 0)
  {
LABEL_72:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_226;
  }

LABEL_225:
  appLaunchesInTimeBucket9ForApp = self->_appLaunchesInTimeBucket9ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x20) == 0)
  {
LABEL_73:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_227;
  }

LABEL_226:
  appLaunchesInTimeBucket10ForApp = self->_appLaunchesInTimeBucket10ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x40) == 0)
  {
LABEL_74:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_228;
  }

LABEL_227:
  appLaunchesInTimeBucket11ForApp = self->_appLaunchesInTimeBucket11ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x80) == 0)
  {
LABEL_75:
    if ((v30 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_229;
  }

LABEL_228:
  appLaunchesInTimeBucket12ForApp = self->_appLaunchesInTimeBucket12ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x100) == 0)
  {
LABEL_76:
    if ((v30 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_230;
  }

LABEL_229:
  appLaunchesInTimeBucket13ForApp = self->_appLaunchesInTimeBucket13ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x200) == 0)
  {
LABEL_77:
    if ((v30 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_231;
  }

LABEL_230:
  appLaunchesInTimeBucket14ForApp = self->_appLaunchesInTimeBucket14ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x400) == 0)
  {
LABEL_78:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_232;
  }

LABEL_231:
  appLaunchesInTimeBucket15ForApp = self->_appLaunchesInTimeBucket15ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x800) == 0)
  {
LABEL_79:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_233;
  }

LABEL_232:
  appLaunchesInTimeBucket16ForApp = self->_appLaunchesInTimeBucket16ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000) == 0)
  {
LABEL_80:
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_234;
  }

LABEL_233:
  appLaunchesInTimeBucket17ForApp = self->_appLaunchesInTimeBucket17ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000) == 0)
  {
LABEL_81:
    if ((v30 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_235;
  }

LABEL_234:
  appLaunchesInTimeBucket18ForApp = self->_appLaunchesInTimeBucket18ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000) == 0)
  {
LABEL_82:
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_236;
  }

LABEL_235:
  appLaunchesInTimeBucket19ForApp = self->_appLaunchesInTimeBucket19ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x10000) == 0)
  {
LABEL_83:
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_237;
  }

LABEL_236:
  appLaunchesInTimeBucket20ForApp = self->_appLaunchesInTimeBucket20ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x20000) == 0)
  {
LABEL_84:
    if ((v30 & 0x40000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_238;
  }

LABEL_237:
  appLaunchesInTimeBucket21ForApp = self->_appLaunchesInTimeBucket21ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x40000) == 0)
  {
LABEL_85:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_239;
  }

LABEL_238:
  appLaunchesInTimeBucket22ForApp = self->_appLaunchesInTimeBucket22ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x80000) == 0)
  {
LABEL_86:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_240;
  }

LABEL_239:
  appLaunchesInTimeBucket23ForApp = self->_appLaunchesInTimeBucket23ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x100000) == 0)
  {
LABEL_87:
    if ((v30 & 0x800000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_241;
  }

LABEL_240:
  appLaunchesInTimeBucket24ForApp = self->_appLaunchesInTimeBucket24ForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x800000000) == 0)
  {
LABEL_88:
    if ((v30 & 0x200000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_242;
  }

LABEL_241:
  appLaunchesOnDayOfWeekSundayForApp = self->_appLaunchesOnDayOfWeekSundayForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x200000000) == 0)
  {
LABEL_89:
    if ((v30 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_243;
  }

LABEL_242:
  appLaunchesOnDayOfWeekMondayForApp = self->_appLaunchesOnDayOfWeekMondayForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x2000000000) == 0)
  {
LABEL_90:
    if ((v30 & 0x4000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_244;
  }

LABEL_243:
  appLaunchesOnDayOfWeekTuesdayForApp = self->_appLaunchesOnDayOfWeekTuesdayForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x4000000000) == 0)
  {
LABEL_91:
    if ((v30 & 0x1000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_245;
  }

LABEL_244:
  appLaunchesOnDayOfWeekWednesdayForApp = self->_appLaunchesOnDayOfWeekWednesdayForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x1000000000) == 0)
  {
LABEL_92:
    if ((v30 & 0x100000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_246;
  }

LABEL_245:
  appLaunchesOnDayOfWeekThursdayForApp = self->_appLaunchesOnDayOfWeekThursdayForApp;
  PBDataWriterWriteDoubleField();
  v30 = *(&self->_has + 1);
  if ((v30 & 0x100000000) == 0)
  {
LABEL_93:
    if ((v30 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_246:
  appLaunchesOnDayOfWeekFridayForApp = self->_appLaunchesOnDayOfWeekFridayForApp;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x400000000) != 0)
  {
LABEL_94:
    appLaunchesOnDayOfWeekSaturdayForApp = self->_appLaunchesOnDayOfWeekSaturdayForApp;
    PBDataWriterWriteDoubleField();
  }

LABEL_95:
  v32 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    appLaunchesAtCoarseGeoHash0ForApp = self->_appLaunchesAtCoarseGeoHash0ForApp;
    PBDataWriterWriteDoubleField();
    v32 = *p_has;
    if ((*p_has & 0x400) == 0)
    {
LABEL_97:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_250;
    }
  }

  else if ((v32 & 0x400) == 0)
  {
    goto LABEL_97;
  }

  appLaunchesAtCoarseGeoHash1ForApp = self->_appLaunchesAtCoarseGeoHash1ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_98:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_251;
  }

LABEL_250:
  appLaunchesAtCoarseGeoHash2ForApp = self->_appLaunchesAtCoarseGeoHash2ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_99:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_252;
  }

LABEL_251:
  appLaunchesAtCoarseGeoHash3ForApp = self->_appLaunchesAtCoarseGeoHash3ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_100:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_253;
  }

LABEL_252:
  appLaunchesAtCoarseGeoHash4ForApp = self->_appLaunchesAtCoarseGeoHash4ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_101:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_254;
  }

LABEL_253:
  appLaunchesAtCoarseGeoHash5ForApp = self->_appLaunchesAtCoarseGeoHash5ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_102:
    if ((v32 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_255;
  }

LABEL_254:
  appLaunchesAtCoarseGeoHash6ForApp = self->_appLaunchesAtCoarseGeoHash6ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_103:
    if ((v32 & 0x20000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_256;
  }

LABEL_255:
  appLaunchesAtCoarseGeoHash7ForApp = self->_appLaunchesAtCoarseGeoHash7ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_104:
    if ((v32 & 0x40000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_257;
  }

LABEL_256:
  appLaunchesAtCoarseGeoHash8ForApp = self->_appLaunchesAtCoarseGeoHash8ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_105:
    if ((v32 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_258;
  }

LABEL_257:
  appLaunchesAtCoarseGeoHash9ForApp = self->_appLaunchesAtCoarseGeoHash9ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_106:
    if ((v32 & 0x100000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_259;
  }

LABEL_258:
  appLaunchesAtSpecificGeoHash0ForApp = self->_appLaunchesAtSpecificGeoHash0ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_107:
    if ((v32 & 0x200000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_260;
  }

LABEL_259:
  appLaunchesAtSpecificGeoHash1ForApp = self->_appLaunchesAtSpecificGeoHash1ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_108:
    if ((v32 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_261;
  }

LABEL_260:
  appLaunchesAtSpecificGeoHash2ForApp = self->_appLaunchesAtSpecificGeoHash2ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_109:
    if ((v32 & 0x800000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_262;
  }

LABEL_261:
  appLaunchesAtSpecificGeoHash3ForApp = self->_appLaunchesAtSpecificGeoHash3ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_110:
    if ((v32 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_263;
  }

LABEL_262:
  appLaunchesAtSpecificGeoHash4ForApp = self->_appLaunchesAtSpecificGeoHash4ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v32 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_264;
  }

LABEL_263:
  appLaunchesAtSpecificGeoHash5ForApp = self->_appLaunchesAtSpecificGeoHash5ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v32 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_265;
  }

LABEL_264:
  appLaunchesAtSpecificGeoHash6ForApp = self->_appLaunchesAtSpecificGeoHash6ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v32 & 0x8000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_266;
  }

LABEL_265:
  appLaunchesAtSpecificGeoHash7ForApp = self->_appLaunchesAtSpecificGeoHash7ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_114:
    if ((v32 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_267;
  }

LABEL_266:
  appLaunchesAtSpecificGeoHash8ForApp = self->_appLaunchesAtSpecificGeoHash8ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_268;
  }

LABEL_267:
  appLaunchesAtSpecificGeoHash9ForApp = self->_appLaunchesAtSpecificGeoHash9ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_116:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_269;
  }

LABEL_268:
  appLaunchesAtSpecificGeoHash10ForApp = self->_appLaunchesAtSpecificGeoHash10ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_117:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_270;
  }

LABEL_269:
  appLaunchesAtSpecificGeoHash11ForApp = self->_appLaunchesAtSpecificGeoHash11ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_118:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_271;
  }

LABEL_270:
  appLaunchesAtSpecificGeoHash12ForApp = self->_appLaunchesAtSpecificGeoHash12ForApp;
  PBDataWriterWriteDoubleField();
  v32 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_119:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_271:
  appLaunchesAtSpecificGeoHash13ForApp = self->_appLaunchesAtSpecificGeoHash13ForApp;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x80000000) != 0)
  {
LABEL_120:
    appLaunchesAtSpecificGeoHash14ForApp = self->_appLaunchesAtSpecificGeoHash14ForApp;
    PBDataWriterWriteDoubleField();
  }

LABEL_121:
  v34 = *(&self->_has + 1);
  if ((v34 & 0x100000000000) != 0)
  {
    appNumberOfSpecificGeohashesForApp = self->_appNumberOfSpecificGeohashesForApp;
    PBDataWriterWriteDoubleField();
    v34 = *(&self->_has + 1);
  }

  if ((v34 & 0x80000000000) != 0)
  {
    appNumberOfCoarseGeohashesForApp = self->_appNumberOfCoarseGeohashesForApp;
    PBDataWriterWriteDoubleField();
  }

  v37 = *p_has;
  if ((*p_has & 0x40) != 0)
  {
    appEntropyForTimeBuckets = self->_appEntropyForTimeBuckets;
    PBDataWriterWriteDoubleField();
    v37 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_127:
      if ((v37 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_275;
    }
  }

  else if ((v37 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  appEntropyForSpecificGeoHash = self->_appEntropyForSpecificGeoHash;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_128:
    if ((v37 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_276;
  }

LABEL_275:
  appEntropyForCoarseGeoHash = self->_appEntropyForCoarseGeoHash;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_129:
    if ((v37 & 0x100000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_277;
  }

LABEL_276:
  appLaunchesAtSpecificGeoHashForAppInContext = self->_appLaunchesAtSpecificGeoHashForAppInContext;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_130:
    if ((v37 & 0x400000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_278;
  }

LABEL_277:
  appLaunchesAtCoarseGeoHashForAppInContext = self->_appLaunchesAtCoarseGeoHashForAppInContext;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_131:
    if ((v37 & 0x200000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_279;
  }

LABEL_278:
  appLaunchesAtDayOfWeekForApp = self->_appLaunchesAtDayOfWeekForApp;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_132:
    if ((v37 & 0x400000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_280;
  }

LABEL_279:
  appLaunchesAtTimeAndDayForAppInContext = self->_appLaunchesAtTimeAndDayForAppInContext;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_133:
    if ((v37 & 0x100000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_281;
  }

LABEL_280:
  appLaunchesAtTimeAndDayInContext = self->_appLaunchesAtTimeAndDayInContext;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_134:
    if ((v37 & 0x200000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_282;
  }

LABEL_281:
  appLaunchesAtTimeAndDayForApp = self->_appLaunchesAtTimeAndDayForApp;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_135:
    if ((v37 & 0x80000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_283;
  }

LABEL_282:
  appLaunchesAtCoarseGeoHashInContext = self->_appLaunchesAtCoarseGeoHashInContext;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_136:
    if ((v37 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_284;
  }

LABEL_283:
  appLaunchesAtCoarseGeoHashForApp = self->_appLaunchesAtCoarseGeoHashForApp;
  PBDataWriterWriteDoubleField();
  v37 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_137:
    if ((v37 & 0x20000000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_284:
  appLaunchesAtSpecificGeoHashInContext = self->_appLaunchesAtSpecificGeoHashInContext;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x20000000000) != 0)
  {
LABEL_138:
    appLaunchesAtSpecificGeoHashForApp = self->_appLaunchesAtSpecificGeoHashForApp;
    PBDataWriterWriteDoubleField();
  }

LABEL_139:
  v39 = *(&self->_has + 1);
  if (v39)
  {
    appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate = self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
    PBDataWriterWriteDoubleField();
    v39 = *(&self->_has + 1);
  }

  if ((v39 & 2) != 0)
  {
    appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate = self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
    PBDataWriterWriteDoubleField();
  }

  if ((*(&self->_has + 16) & 2) != 0)
  {
    isLocationServicesDisabled = self->_isLocationServicesDisabled;
    PBDataWriterWriteDoubleField();
  }

  v43 = *(&self->_has + 1);
  if ((v43 & 0x40000000) != 0)
  {
    appLaunchesInTwoHourTimeBucketForAppInContext = self->_appLaunchesInTwoHourTimeBucketForAppInContext;
    PBDataWriterWriteDoubleField();
    v43 = *(&self->_has + 1);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_147:
      if ((v43 & 0x20000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_288;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

  appLaunchesInTwoHourTimeBucketInContext = self->_appLaunchesInTwoHourTimeBucketInContext;
  PBDataWriterWriteDoubleField();
  v43 = *(&self->_has + 1);
  if ((v43 & 0x20000000) == 0)
  {
LABEL_148:
    if ((v43 & 0x20000000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_288:
  appLaunchesInTwoHourTimeBucketForApp = self->_appLaunchesInTwoHourTimeBucketForApp;
  PBDataWriterWriteDoubleField();
  if ((*(&self->_has + 1) & 0x20000000000000) != 0)
  {
LABEL_149:
    currentTimeBucketFromZeroToTwentyFour = self->_currentTimeBucketFromZeroToTwentyFour;
    PBDataWriterWriteDoubleField();
  }

LABEL_150:
  v45 = *p_has;
  if ((*p_has & 0x400000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHashForAppInContext = self->_appLaunchesAtZoom7GeoHashForAppInContext;
    PBDataWriterWriteDoubleField();
    v45 = *p_has;
    if ((*p_has & 0x800000000000000) == 0)
    {
LABEL_152:
      if ((v45 & 0x200000000000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_292;
    }
  }

  else if ((v45 & 0x800000000000000) == 0)
  {
    goto LABEL_152;
  }

  appLaunchesAtZoom7GeoHashInContext = self->_appLaunchesAtZoom7GeoHashInContext;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_153:
    if ((v45 & 0x800000000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_293;
  }

LABEL_292:
  appLaunchesAtZoom7GeoHashForApp = self->_appLaunchesAtZoom7GeoHashForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_154:
    if ((v45 & 0x1000000000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_294;
  }

LABEL_293:
  appLaunchesAtZoom7GeoHash0ForApp = self->_appLaunchesAtZoom7GeoHash0ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_155:
    if ((v45 & 0x2000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_295;
  }

LABEL_294:
  appLaunchesAtZoom7GeoHash1ForApp = self->_appLaunchesAtZoom7GeoHash1ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_156:
    if ((v45 & 0x4000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_296;
  }

LABEL_295:
  appLaunchesAtZoom7GeoHash2ForApp = self->_appLaunchesAtZoom7GeoHash2ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_157:
    if ((v45 & 0x8000000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_297;
  }

LABEL_296:
  appLaunchesAtZoom7GeoHash3ForApp = self->_appLaunchesAtZoom7GeoHash3ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_158:
    if ((v45 & 0x10000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_298;
  }

LABEL_297:
  appLaunchesAtZoom7GeoHash4ForApp = self->_appLaunchesAtZoom7GeoHash4ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_159:
    if ((v45 & 0x20000000000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_299;
  }

LABEL_298:
  appLaunchesAtZoom7GeoHash5ForApp = self->_appLaunchesAtZoom7GeoHash5ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_160:
    if ((v45 & 0x40000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_300;
  }

LABEL_299:
  appLaunchesAtZoom7GeoHash6ForApp = self->_appLaunchesAtZoom7GeoHash6ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_161:
    if ((v45 & 0x80000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_301;
  }

LABEL_300:
  appLaunchesAtZoom7GeoHash7ForApp = self->_appLaunchesAtZoom7GeoHash7ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x80000000000000) == 0)
  {
LABEL_162:
    if ((v45 & 0x100000000000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_302;
  }

LABEL_301:
  appLaunchesAtZoom7GeoHash8ForApp = self->_appLaunchesAtZoom7GeoHash8ForApp;
  PBDataWriterWriteDoubleField();
  v45 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_163:
    if ((v45 & 0x80) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_302:
  appLaunchesAtZoom7GeoHash9ForApp = self->_appLaunchesAtZoom7GeoHash9ForApp;
  PBDataWriterWriteDoubleField();
  if ((*p_has & 0x80) != 0)
  {
LABEL_164:
    appEntropyForZoom7GeoHash = self->_appEntropyForZoom7GeoHash;
    PBDataWriterWriteDoubleField();
  }

LABEL_165:
  if ((*(&self->_has + 13) & 0x20) != 0)
  {
    appNumberOfZoom7GeohashesForApp = self->_appNumberOfZoom7GeohashesForApp;
    PBDataWriterWriteDoubleField();
  }

  v48 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    appLaunchesAtSSIDForAppInContext = self->_appLaunchesAtSSIDForAppInContext;
    PBDataWriterWriteDoubleField();
    v48 = *p_has;
  }

  if ((v48 & 0x1000000) != 0)
  {
    appLaunchesAtSSIDForApp = self->_appLaunchesAtSSIDForApp;
    PBDataWriterWriteDoubleField();
  }

  v51 = *(&self->_has + 1);
  if ((v51 & 4) != 0)
  {
    appLaunchesForCoreMotionForAppInContext = self->_appLaunchesForCoreMotionForAppInContext;
    PBDataWriterWriteDoubleField();
    v51 = *(&self->_has + 1);
  }

  if ((v51 & 8) != 0)
  {
    appLaunchesInAirplaneModeForAppInContext = self->_appLaunchesInAirplaneModeForAppInContext;
    PBDataWriterWriteDoubleField();
  }

  if ((*(&self->_has + 16) & 0x40) != 0)
  {
    poiPopularityForAppInContext = self->_poiPopularityForAppInContext;
    PBDataWriterWriteDoubleField();
  }

  v55 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    appLaunchPopularityAtPOIForAppInContext = self->_appLaunchPopularityAtPOIForAppInContext;
    PBDataWriterWriteDoubleField();
    v55 = *p_has;
  }

  if ((v55 & 0x800000) != 0)
  {
    appLaunchesAtPOIForAppInContext = self->_appLaunchesAtPOIForAppInContext;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  p_has = &self->_has;
  v6 = *(&self->_has + 4);
  if ((v6 & 0x10000) != 0)
  {
    v4[145] = *&self->_unlockTime;
    *(v4 + 296) |= 0x10000u;
    v6 = *(&self->_has + 4);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_186;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[133] = *&self->_launchTimePopularity;
  *(v4 + 296) |= 0x10u;
  v6 = *(&self->_has + 4);
  if ((v6 & 0x100) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_186:
  v4[137] = *&self->_timeOfDayBucket;
  *(v4 + 296) |= 0x100u;
  if ((*(&self->_has + 4) & 0x200) != 0)
  {
LABEL_5:
    v4[138] = *&self->_timeOfDayPopularity;
    *(v4 + 296) |= 0x200u;
  }

LABEL_6:
  if ((*(&self->_has + 14) & 8) != 0)
  {
    v4[116] = *&self->_coarseTimeOfDayPopularity;
    v4[147] |= 0x8000000000000uLL;
  }

  v7 = *(&self->_has + 4);
  if ((v7 & 8) != 0)
  {
    v4[132] = *&self->_launchPopularity;
    *(v4 + 296) |= 8u;
    v7 = *(&self->_has + 4);
  }

  if ((v7 & 4) != 0)
  {
    v4[131] = *&self->_launchDayOfWeekPopularity;
    *(v4 + 296) |= 4u;
  }

  v8 = *(&self->_has + 1);
  if ((v8 & 0x40000000000000) != 0)
  {
    v4[119] = *&self->_dayOfWeekBucket;
    v4[147] |= 0x40000000000000uLL;
    v8 = *(&self->_has + 1);
    if ((v8 & 0x80000000000000) == 0)
    {
LABEL_14:
      if ((v8 & 0x800000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_190;
    }
  }

  else if ((v8 & 0x80000000000000) == 0)
  {
    goto LABEL_14;
  }

  v4[120] = *&self->_dayOfWeekPopularity;
  v4[147] |= 0x80000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x800000000000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_191;
  }

LABEL_190:
  v4[124] = *&self->_entropyLaunchPopularity;
  v4[147] |= 0x800000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x100000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_192;
  }

LABEL_191:
  v4[121] = *&self->_entropyDayOfWeekPopularity;
  v4[147] |= 0x100000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x400000000000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_193;
  }

LABEL_192:
  v4[123] = *&self->_entropyDayOfWeekPopularityByDay;
  v4[147] |= 0x400000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_18:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_194;
  }

LABEL_193:
  v4[122] = *&self->_entropyDayOfWeekPopularityByApp;
  v4[147] |= 0x200000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_195;
  }

LABEL_194:
  v4[128] = *&self->_entropyTrendingPopularity;
  v4[147] |= 0x8000000000000000;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_196;
  }

LABEL_195:
  v4[125] = *&self->_entropySSIDPopularity;
  v4[147] |= 0x1000000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x4000000000000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_196:
  v4[127] = *&self->_entropySSIDPopularityBySSID;
  v4[147] |= 0x4000000000000000uLL;
  if ((*(&self->_has + 1) & 0x2000000000000000) != 0)
  {
LABEL_22:
    v4[126] = *&self->_entropySSIDPopularityByApp;
    v4[147] |= 0x2000000000000000uLL;
  }

LABEL_23:
  if ((*(&self->_has + 17) & 0x10) != 0)
  {
    v4[141] = *&self->_totalNumberOfLaunches;
    *(v4 + 296) |= 0x1000u;
  }

  if (*p_has)
  {
    v4[1] = *&self->_airplaneModePopularity;
    v4[146] |= 1uLL;
  }

  v9 = *(&self->_has + 4);
  if ((v9 & 0x400) != 0)
  {
    v4[139] = *&self->_totalNumberOfAirplaneModeLaunches;
    *(v4 + 296) |= 0x400u;
    v9 = *(&self->_has + 4);
    if ((v9 & 0x8000) == 0)
    {
LABEL_29:
      if ((v9 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_200;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  v4[144] = *&self->_trendingPopularity;
  *(v4 + 296) |= 0x8000u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x4000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_201;
  }

LABEL_200:
  v4[143] = *&self->_totalNumberOfTrendingLaunches;
  *(v4 + 296) |= 0x4000u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x80) == 0)
  {
LABEL_31:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_202;
  }

LABEL_201:
  v4[136] = *&self->_sSIDPopularity;
  *(v4 + 296) |= 0x80u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x2000) == 0)
  {
LABEL_32:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_202:
  v4[142] = *&self->_totalNumberOfSSIDLaunches;
  *(v4 + 296) |= 0x2000u;
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
LABEL_33:
    v4[134] = *&self->_onWifi;
    *(v4 + 296) |= 0x20u;
  }

LABEL_34:
  if ((*(&self->_has + 14) & 0x10) != 0)
  {
    v4[117] = *&self->_coreMotionPopularity;
    v4[147] |= 0x10000000000000uLL;
  }

  v10 = *(&self->_has + 4);
  if ((v10 & 0x800) != 0)
  {
    v4[140] = *&self->_totalNumberOfCoreMotionLaunches;
    *(v4 + 296) |= 0x800u;
    v10 = *(&self->_has + 4);
  }

  if (v10)
  {
    v4[129] = *&self->_isDateInWeekendOnDevice;
    *(v4 + 296) |= 1u;
  }

  has = *p_has;
  if ((*p_has & 4) != 0)
  {
    v4[3] = *&self->_ambientLightTypePopularity;
    v4[146] |= 4uLL;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = *&self->_ambientLightTypeLaunchPopularity;
    v4[146] |= 2uLL;
  }

  if ((*(&self->_has + 14) & 2) != 0)
  {
    v4[114] = *&self->_appTimeOfDayLaunches;
    v4[147] |= 0x2000000000000uLL;
  }

  if ((*p_has & 8) != 0)
  {
    v4[4] = *&self->_appDayOfWeekLaunches;
    v4[146] |= 8uLL;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x1000000000000) != 0)
  {
    v4[113] = *&self->_appTimeAndDayOfWeekPopularity;
    v4[147] |= 0x1000000000000uLL;
    v12 = *(&self->_has + 1);
    if ((v12 & 0x400000000000) == 0)
    {
LABEL_50:
      if ((v12 & 0x800000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_206;
    }
  }

  else if ((v12 & 0x400000000000) == 0)
  {
    goto LABEL_50;
  }

  v4[111] = *&self->_appPopularityGivenTimeAndDayOfWeek;
  v4[147] |= 0x400000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x800000000000) == 0)
  {
LABEL_51:
    if ((v12 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_206:
  v4[112] = *&self->_appPopularityOfTimeAndDayOfWeekGivenApp;
  v4[147] |= 0x800000000000uLL;
  if ((*(&self->_has + 1) & 0x4000000000000) != 0)
  {
LABEL_52:
    v4[115] = *&self->_appTotalNumberOfTimeAndDayOfWeekLaunches;
    v4[147] |= 0x4000000000000uLL;
  }

LABEL_53:
  v13 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    v4[63] = *&self->_appLaunchesCoarseTimePowLocationForAppInContext;
    v4[146] |= 0x4000000000000000uLL;
    v13 = self->_has;
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_55:
      if ((v13 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_210;
    }
  }

  else if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_55;
  }

  v4[64] = *&self->_appLaunchesCoarseTimePowLocationInContext;
  v4[146] |= 0x8000000000000000;
  v13 = self->_has;
  if ((v13 & 0x2000000000000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_210:
  v4[62] = *&self->_appLaunchesCoarseTimePowLocationForApp;
  v4[146] |= 0x2000000000000000uLL;
  if ((*&self->_has & 0x1000000000000000) != 0)
  {
LABEL_57:
    v4[61] = *&self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
    v4[146] |= 0x1000000000000000uLL;
  }

LABEL_58:
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000000000) != 0)
  {
    v4[106] = *&self->_appLaunchesSpecificTimeDowLocationForAppInContext;
    v4[147] |= 0x20000000000uLL;
    v14 = *(&self->_has + 1);
    if ((v14 & 0x40000000000) == 0)
    {
LABEL_60:
      if ((v14 & 0x10000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_214;
    }
  }

  else if ((v14 & 0x40000000000) == 0)
  {
    goto LABEL_60;
  }

  v4[107] = *&self->_appLaunchesSpecificTimeDowLocationInContext;
  v4[147] |= 0x40000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((v14 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_215;
  }

LABEL_214:
  v4[105] = *&self->_appLaunchesSpecificTimeDowLocationForApp;
  v4[147] |= 0x10000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000000000) == 0)
  {
LABEL_62:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_216;
  }

LABEL_215:
  v4[104] = *&self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
  v4[147] |= 0x8000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10) == 0)
  {
LABEL_63:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_217;
  }

LABEL_216:
  v4[69] = *&self->_appLaunchesInTimeBucket0ForApp;
  v4[147] |= 0x10uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_218;
  }

LABEL_217:
  v4[80] = *&self->_appLaunchesInTimeBucket1ForApp;
  v4[147] |= 0x8000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_219;
  }

LABEL_218:
  v4[86] = *&self->_appLaunchesInTimeBucket2ForApp;
  v4[147] |= 0x200000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000) == 0)
  {
LABEL_66:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_220;
  }

LABEL_219:
  v4[87] = *&self->_appLaunchesInTimeBucket3ForApp;
  v4[147] |= 0x400000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800000) == 0)
  {
LABEL_67:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_221;
  }

LABEL_220:
  v4[88] = *&self->_appLaunchesInTimeBucket4ForApp;
  v4[147] |= 0x800000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000000) == 0)
  {
LABEL_68:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_222;
  }

LABEL_221:
  v4[89] = *&self->_appLaunchesInTimeBucket5ForApp;
  v4[147] |= 0x1000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_69:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_223;
  }

LABEL_222:
  v4[90] = *&self->_appLaunchesInTimeBucket6ForApp;
  v4[147] |= 0x2000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_70:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_224;
  }

LABEL_223:
  v4[91] = *&self->_appLaunchesInTimeBucket7ForApp;
  v4[147] |= 0x4000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_225;
  }

LABEL_224:
  v4[92] = *&self->_appLaunchesInTimeBucket8ForApp;
  v4[147] |= 0x8000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_72:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_226;
  }

LABEL_225:
  v4[93] = *&self->_appLaunchesInTimeBucket9ForApp;
  v4[147] |= 0x10000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20) == 0)
  {
LABEL_73:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_227;
  }

LABEL_226:
  v4[70] = *&self->_appLaunchesInTimeBucket10ForApp;
  v4[147] |= 0x20uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x40) == 0)
  {
LABEL_74:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_228;
  }

LABEL_227:
  v4[71] = *&self->_appLaunchesInTimeBucket11ForApp;
  v4[147] |= 0x40uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x80) == 0)
  {
LABEL_75:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_229;
  }

LABEL_228:
  v4[72] = *&self->_appLaunchesInTimeBucket12ForApp;
  v4[147] |= 0x80uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100) == 0)
  {
LABEL_76:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_230;
  }

LABEL_229:
  v4[73] = *&self->_appLaunchesInTimeBucket13ForApp;
  v4[147] |= 0x100uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200) == 0)
  {
LABEL_77:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_231;
  }

LABEL_230:
  v4[74] = *&self->_appLaunchesInTimeBucket14ForApp;
  v4[147] |= 0x200uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400) == 0)
  {
LABEL_78:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_232;
  }

LABEL_231:
  v4[75] = *&self->_appLaunchesInTimeBucket15ForApp;
  v4[147] |= 0x400uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800) == 0)
  {
LABEL_79:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_233;
  }

LABEL_232:
  v4[76] = *&self->_appLaunchesInTimeBucket16ForApp;
  v4[147] |= 0x800uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000) == 0)
  {
LABEL_80:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_234;
  }

LABEL_233:
  v4[77] = *&self->_appLaunchesInTimeBucket17ForApp;
  v4[147] |= 0x1000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000) == 0)
  {
LABEL_81:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_235;
  }

LABEL_234:
  v4[78] = *&self->_appLaunchesInTimeBucket18ForApp;
  v4[147] |= 0x2000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000) == 0)
  {
LABEL_82:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_236;
  }

LABEL_235:
  v4[79] = *&self->_appLaunchesInTimeBucket19ForApp;
  v4[147] |= 0x4000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000) == 0)
  {
LABEL_83:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_237;
  }

LABEL_236:
  v4[81] = *&self->_appLaunchesInTimeBucket20ForApp;
  v4[147] |= 0x10000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000) == 0)
  {
LABEL_84:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_238;
  }

LABEL_237:
  v4[82] = *&self->_appLaunchesInTimeBucket21ForApp;
  v4[147] |= 0x20000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x40000) == 0)
  {
LABEL_85:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_239;
  }

LABEL_238:
  v4[83] = *&self->_appLaunchesInTimeBucket22ForApp;
  v4[147] |= 0x40000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x80000) == 0)
  {
LABEL_86:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_240;
  }

LABEL_239:
  v4[84] = *&self->_appLaunchesInTimeBucket23ForApp;
  v4[147] |= 0x80000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000) == 0)
  {
LABEL_87:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_241;
  }

LABEL_240:
  v4[85] = *&self->_appLaunchesInTimeBucket24ForApp;
  v4[147] |= 0x100000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800000000) == 0)
  {
LABEL_88:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_242;
  }

LABEL_241:
  v4[100] = *&self->_appLaunchesOnDayOfWeekSundayForApp;
  v4[147] |= 0x800000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200000000) == 0)
  {
LABEL_89:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_243;
  }

LABEL_242:
  v4[98] = *&self->_appLaunchesOnDayOfWeekMondayForApp;
  v4[147] |= 0x200000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000000) == 0)
  {
LABEL_90:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_244;
  }

LABEL_243:
  v4[102] = *&self->_appLaunchesOnDayOfWeekTuesdayForApp;
  v4[147] |= 0x2000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000000000) == 0)
  {
LABEL_91:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_245;
  }

LABEL_244:
  v4[103] = *&self->_appLaunchesOnDayOfWeekWednesdayForApp;
  v4[147] |= 0x4000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000000000) == 0)
  {
LABEL_92:
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_246;
  }

LABEL_245:
  v4[101] = *&self->_appLaunchesOnDayOfWeekThursdayForApp;
  v4[147] |= 0x1000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000000) == 0)
  {
LABEL_93:
    if ((v14 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_246:
  v4[97] = *&self->_appLaunchesOnDayOfWeekFridayForApp;
  v4[147] |= 0x100000000uLL;
  if ((*(&self->_has + 1) & 0x400000000) != 0)
  {
LABEL_94:
    v4[99] = *&self->_appLaunchesOnDayOfWeekSaturdayForApp;
    v4[147] |= 0x400000000uLL;
  }

LABEL_95:
  v15 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v4[10] = *&self->_appLaunchesAtCoarseGeoHash0ForApp;
    v4[146] |= 0x200uLL;
    v15 = self->_has;
    if ((v15 & 0x400) == 0)
    {
LABEL_97:
      if ((v15 & 0x800) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_250;
    }
  }

  else if ((v15 & 0x400) == 0)
  {
    goto LABEL_97;
  }

  v4[11] = *&self->_appLaunchesAtCoarseGeoHash1ForApp;
  v4[146] |= 0x400uLL;
  v15 = self->_has;
  if ((v15 & 0x800) == 0)
  {
LABEL_98:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_251;
  }

LABEL_250:
  v4[12] = *&self->_appLaunchesAtCoarseGeoHash2ForApp;
  v4[146] |= 0x800uLL;
  v15 = self->_has;
  if ((v15 & 0x1000) == 0)
  {
LABEL_99:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_252;
  }

LABEL_251:
  v4[13] = *&self->_appLaunchesAtCoarseGeoHash3ForApp;
  v4[146] |= 0x1000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000) == 0)
  {
LABEL_100:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_253;
  }

LABEL_252:
  v4[14] = *&self->_appLaunchesAtCoarseGeoHash4ForApp;
  v4[146] |= 0x2000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000) == 0)
  {
LABEL_101:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_254;
  }

LABEL_253:
  v4[15] = *&self->_appLaunchesAtCoarseGeoHash5ForApp;
  v4[146] |= 0x4000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000) == 0)
  {
LABEL_102:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_255;
  }

LABEL_254:
  v4[16] = *&self->_appLaunchesAtCoarseGeoHash6ForApp;
  v4[146] |= 0x8000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000) == 0)
  {
LABEL_103:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_256;
  }

LABEL_255:
  v4[17] = *&self->_appLaunchesAtCoarseGeoHash7ForApp;
  v4[146] |= 0x10000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000) == 0)
  {
LABEL_104:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_257;
  }

LABEL_256:
  v4[18] = *&self->_appLaunchesAtCoarseGeoHash8ForApp;
  v4[146] |= 0x20000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000) == 0)
  {
LABEL_105:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_258;
  }

LABEL_257:
  v4[19] = *&self->_appLaunchesAtCoarseGeoHash9ForApp;
  v4[146] |= 0x40000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000) == 0)
  {
LABEL_106:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_259;
  }

LABEL_258:
  v4[27] = *&self->_appLaunchesAtSpecificGeoHash0ForApp;
  v4[146] |= 0x4000000uLL;
  v15 = self->_has;
  if ((v15 & 0x100000000) == 0)
  {
LABEL_107:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_260;
  }

LABEL_259:
  v4[33] = *&self->_appLaunchesAtSpecificGeoHash1ForApp;
  v4[146] |= 0x100000000uLL;
  v15 = self->_has;
  if ((v15 & 0x200000000) == 0)
  {
LABEL_108:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_261;
  }

LABEL_260:
  v4[34] = *&self->_appLaunchesAtSpecificGeoHash2ForApp;
  v4[146] |= 0x200000000uLL;
  v15 = self->_has;
  if ((v15 & 0x400000000) == 0)
  {
LABEL_109:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_262;
  }

LABEL_261:
  v4[35] = *&self->_appLaunchesAtSpecificGeoHash3ForApp;
  v4[146] |= 0x400000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_263;
  }

LABEL_262:
  v4[36] = *&self->_appLaunchesAtSpecificGeoHash4ForApp;
  v4[146] |= 0x800000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_264;
  }

LABEL_263:
  v4[37] = *&self->_appLaunchesAtSpecificGeoHash5ForApp;
  v4[146] |= 0x1000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_265;
  }

LABEL_264:
  v4[38] = *&self->_appLaunchesAtSpecificGeoHash6ForApp;
  v4[146] |= 0x2000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_266;
  }

LABEL_265:
  v4[39] = *&self->_appLaunchesAtSpecificGeoHash7ForApp;
  v4[146] |= 0x4000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_114:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_267;
  }

LABEL_266:
  v4[40] = *&self->_appLaunchesAtSpecificGeoHash8ForApp;
  v4[146] |= 0x8000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_268;
  }

LABEL_267:
  v4[41] = *&self->_appLaunchesAtSpecificGeoHash9ForApp;
  v4[146] |= 0x10000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000) == 0)
  {
LABEL_116:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_269;
  }

LABEL_268:
  v4[28] = *&self->_appLaunchesAtSpecificGeoHash10ForApp;
  v4[146] |= 0x8000000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000) == 0)
  {
LABEL_117:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_270;
  }

LABEL_269:
  v4[29] = *&self->_appLaunchesAtSpecificGeoHash11ForApp;
  v4[146] |= 0x10000000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_271;
  }

LABEL_270:
  v4[30] = *&self->_appLaunchesAtSpecificGeoHash12ForApp;
  v4[146] |= 0x20000000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_271:
  v4[31] = *&self->_appLaunchesAtSpecificGeoHash13ForApp;
  v4[146] |= 0x40000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_120:
    v4[32] = *&self->_appLaunchesAtSpecificGeoHash14ForApp;
    v4[146] |= 0x80000000uLL;
  }

LABEL_121:
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000000) != 0)
  {
    v4[109] = *&self->_appNumberOfSpecificGeohashesForApp;
    v4[147] |= 0x100000000000uLL;
    v16 = *(&self->_has + 1);
  }

  if ((v16 & 0x80000000000) != 0)
  {
    v4[108] = *&self->_appNumberOfCoarseGeohashesForApp;
    v4[147] |= 0x80000000000uLL;
  }

  v17 = *p_has;
  if ((*p_has & 0x40) != 0)
  {
    v4[7] = *&self->_appEntropyForTimeBuckets;
    v4[146] |= 0x40uLL;
    v17 = self->_has;
    if ((v17 & 0x20) == 0)
    {
LABEL_127:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_275;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  v4[6] = *&self->_appEntropyForSpecificGeoHash;
  v4[146] |= 0x20uLL;
  v17 = self->_has;
  if ((v17 & 0x10) == 0)
  {
LABEL_128:
    if ((v17 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_276;
  }

LABEL_275:
  v4[5] = *&self->_appEntropyForCoarseGeoHash;
  v4[146] |= 0x10uLL;
  v17 = self->_has;
  if ((v17 & 0x40000000000) == 0)
  {
LABEL_129:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_277;
  }

LABEL_276:
  v4[43] = *&self->_appLaunchesAtSpecificGeoHashForAppInContext;
  v4[146] |= 0x40000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x100000) == 0)
  {
LABEL_130:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_278;
  }

LABEL_277:
  v4[21] = *&self->_appLaunchesAtCoarseGeoHashForAppInContext;
  v4[146] |= 0x100000uLL;
  v17 = self->_has;
  if ((v17 & 0x400000) == 0)
  {
LABEL_131:
    if ((v17 & 0x200000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_279;
  }

LABEL_278:
  v4[23] = *&self->_appLaunchesAtDayOfWeekForApp;
  v4[146] |= 0x400000uLL;
  v17 = self->_has;
  if ((v17 & 0x200000000000) == 0)
  {
LABEL_132:
    if ((v17 & 0x400000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_280;
  }

LABEL_279:
  v4[46] = *&self->_appLaunchesAtTimeAndDayForAppInContext;
  v4[146] |= 0x200000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x400000000000) == 0)
  {
LABEL_133:
    if ((v17 & 0x100000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_281;
  }

LABEL_280:
  v4[47] = *&self->_appLaunchesAtTimeAndDayInContext;
  v4[146] |= 0x400000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x100000000000) == 0)
  {
LABEL_134:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_282;
  }

LABEL_281:
  v4[45] = *&self->_appLaunchesAtTimeAndDayForApp;
  v4[146] |= 0x100000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x200000) == 0)
  {
LABEL_135:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_283;
  }

LABEL_282:
  v4[22] = *&self->_appLaunchesAtCoarseGeoHashInContext;
  v4[146] |= 0x200000uLL;
  v17 = self->_has;
  if ((v17 & 0x80000) == 0)
  {
LABEL_136:
    if ((v17 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_284;
  }

LABEL_283:
  v4[20] = *&self->_appLaunchesAtCoarseGeoHashForApp;
  v4[146] |= 0x80000uLL;
  v17 = self->_has;
  if ((v17 & 0x80000000000) == 0)
  {
LABEL_137:
    if ((v17 & 0x20000000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_284:
  v4[44] = *&self->_appLaunchesAtSpecificGeoHashInContext;
  v4[146] |= 0x80000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_138:
    v4[42] = *&self->_appLaunchesAtSpecificGeoHashForApp;
    v4[146] |= 0x20000000000uLL;
  }

LABEL_139:
  v18 = *(&self->_has + 1);
  if (v18)
  {
    v4[65] = *&self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
    v4[147] |= 1uLL;
    v18 = *(&self->_has + 1);
  }

  if ((v18 & 2) != 0)
  {
    v4[66] = *&self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
    v4[147] |= 2uLL;
  }

  if ((*(&self->_has + 16) & 2) != 0)
  {
    v4[130] = *&self->_isLocationServicesDisabled;
    *(v4 + 296) |= 2u;
  }

  v19 = *(&self->_has + 1);
  if ((v19 & 0x40000000) != 0)
  {
    v4[95] = *&self->_appLaunchesInTwoHourTimeBucketForAppInContext;
    v4[147] |= 0x40000000uLL;
    v19 = *(&self->_has + 1);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_147:
      if ((v19 & 0x20000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_288;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

  v4[96] = *&self->_appLaunchesInTwoHourTimeBucketInContext;
  v4[147] |= 0x80000000uLL;
  v19 = *(&self->_has + 1);
  if ((v19 & 0x20000000) == 0)
  {
LABEL_148:
    if ((v19 & 0x20000000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_288:
  v4[94] = *&self->_appLaunchesInTwoHourTimeBucketForApp;
  v4[147] |= 0x20000000uLL;
  if ((*(&self->_has + 1) & 0x20000000000000) != 0)
  {
LABEL_149:
    v4[118] = *&self->_currentTimeBucketFromZeroToTwentyFour;
    v4[147] |= 0x20000000000000uLL;
  }

LABEL_150:
  v20 = *p_has;
  if ((*p_has & 0x400000000000000) != 0)
  {
    v4[59] = *&self->_appLaunchesAtZoom7GeoHashForAppInContext;
    v4[146] |= 0x400000000000000uLL;
    v20 = self->_has;
    if ((v20 & 0x800000000000000) == 0)
    {
LABEL_152:
      if ((v20 & 0x200000000000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_292;
    }
  }

  else if ((v20 & 0x800000000000000) == 0)
  {
    goto LABEL_152;
  }

  v4[60] = *&self->_appLaunchesAtZoom7GeoHashInContext;
  v4[146] |= 0x800000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x200000000000000) == 0)
  {
LABEL_153:
    if ((v20 & 0x800000000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_293;
  }

LABEL_292:
  v4[58] = *&self->_appLaunchesAtZoom7GeoHashForApp;
  v4[146] |= 0x200000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x800000000000) == 0)
  {
LABEL_154:
    if ((v20 & 0x1000000000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_294;
  }

LABEL_293:
  v4[48] = *&self->_appLaunchesAtZoom7GeoHash0ForApp;
  v4[146] |= 0x800000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x1000000000000) == 0)
  {
LABEL_155:
    if ((v20 & 0x2000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_295;
  }

LABEL_294:
  v4[49] = *&self->_appLaunchesAtZoom7GeoHash1ForApp;
  v4[146] |= 0x1000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x2000000000000) == 0)
  {
LABEL_156:
    if ((v20 & 0x4000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_296;
  }

LABEL_295:
  v4[50] = *&self->_appLaunchesAtZoom7GeoHash2ForApp;
  v4[146] |= 0x2000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x4000000000000) == 0)
  {
LABEL_157:
    if ((v20 & 0x8000000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_297;
  }

LABEL_296:
  v4[51] = *&self->_appLaunchesAtZoom7GeoHash3ForApp;
  v4[146] |= 0x4000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x8000000000000) == 0)
  {
LABEL_158:
    if ((v20 & 0x10000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_298;
  }

LABEL_297:
  v4[52] = *&self->_appLaunchesAtZoom7GeoHash4ForApp;
  v4[146] |= 0x8000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x10000000000000) == 0)
  {
LABEL_159:
    if ((v20 & 0x20000000000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_299;
  }

LABEL_298:
  v4[53] = *&self->_appLaunchesAtZoom7GeoHash5ForApp;
  v4[146] |= 0x10000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x20000000000000) == 0)
  {
LABEL_160:
    if ((v20 & 0x40000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_300;
  }

LABEL_299:
  v4[54] = *&self->_appLaunchesAtZoom7GeoHash6ForApp;
  v4[146] |= 0x20000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x40000000000000) == 0)
  {
LABEL_161:
    if ((v20 & 0x80000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_301;
  }

LABEL_300:
  v4[55] = *&self->_appLaunchesAtZoom7GeoHash7ForApp;
  v4[146] |= 0x40000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x80000000000000) == 0)
  {
LABEL_162:
    if ((v20 & 0x100000000000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_302;
  }

LABEL_301:
  v4[56] = *&self->_appLaunchesAtZoom7GeoHash8ForApp;
  v4[146] |= 0x80000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x100000000000000) == 0)
  {
LABEL_163:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_302:
  v4[57] = *&self->_appLaunchesAtZoom7GeoHash9ForApp;
  v4[146] |= 0x100000000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_164:
    v4[8] = *&self->_appEntropyForZoom7GeoHash;
    v4[146] |= 0x80uLL;
  }

LABEL_165:
  if ((*(&self->_has + 13) & 0x20) != 0)
  {
    v4[110] = *&self->_appNumberOfZoom7GeohashesForApp;
    v4[147] |= 0x200000000000uLL;
  }

  v21 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    v4[26] = *&self->_appLaunchesAtSSIDForAppInContext;
    v4[146] |= 0x2000000uLL;
    v21 = self->_has;
  }

  if ((v21 & 0x1000000) != 0)
  {
    v4[25] = *&self->_appLaunchesAtSSIDForApp;
    v4[146] |= 0x1000000uLL;
  }

  v22 = *(&self->_has + 1);
  if ((v22 & 4) != 0)
  {
    v4[67] = *&self->_appLaunchesForCoreMotionForAppInContext;
    v4[147] |= 4uLL;
    v22 = *(&self->_has + 1);
  }

  if ((v22 & 8) != 0)
  {
    v4[68] = *&self->_appLaunchesInAirplaneModeForAppInContext;
    v4[147] |= 8uLL;
  }

  if ((*(&self->_has + 16) & 0x40) != 0)
  {
    v4[135] = *&self->_poiPopularityForAppInContext;
    *(v4 + 296) |= 0x40u;
  }

  v23 = *p_has;
  if ((v23 & 0x100) != 0)
  {
    v4[9] = *&self->_appLaunchPopularityAtPOIForAppInContext;
    v4[146] |= 0x100uLL;
    v23 = self->_has;
  }

  if ((v23 & 0x800000) != 0)
  {
    v4[24] = *&self->_appLaunchesAtPOIForAppInContext;
    v4[146] |= 0x800000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  p_has = &self->_has;
  v6 = *(&self->_has + 4);
  if ((v6 & 0x10000) != 0)
  {
    *(v4 + 1160) = self->_unlockTime;
    *(v4 + 1184) |= 0x10000u;
    v6 = *(&self->_has + 4);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_184;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 1064) = self->_launchTimePopularity;
  *(v4 + 1184) |= 0x10u;
  v6 = *(&self->_has + 4);
  if ((v6 & 0x100) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_184:
  *(v4 + 1096) = self->_timeOfDayBucket;
  *(v4 + 1184) |= 0x100u;
  if ((*(&self->_has + 4) & 0x200) != 0)
  {
LABEL_5:
    *(v4 + 1104) = self->_timeOfDayPopularity;
    *(v4 + 1184) |= 0x200u;
  }

LABEL_6:
  if ((*(&self->_has + 14) & 8) != 0)
  {
    *(v4 + 928) = self->_coarseTimeOfDayPopularity;
    *(v4 + 1176) |= 0x8000000000000uLL;
  }

  v7 = *(&self->_has + 4);
  if ((v7 & 8) != 0)
  {
    *(v4 + 1056) = self->_launchPopularity;
    *(v4 + 1184) |= 8u;
    v7 = *(&self->_has + 4);
  }

  if ((v7 & 4) != 0)
  {
    *(v4 + 1048) = self->_launchDayOfWeekPopularity;
    *(v4 + 1184) |= 4u;
  }

  v8 = *(&self->_has + 1);
  if ((v8 & 0x40000000000000) != 0)
  {
    *(v4 + 952) = self->_dayOfWeekBucket;
    *(v4 + 1176) |= 0x40000000000000uLL;
    v8 = *(&self->_has + 1);
    if ((v8 & 0x80000000000000) == 0)
    {
LABEL_14:
      if ((v8 & 0x800000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_188;
    }
  }

  else if ((v8 & 0x80000000000000) == 0)
  {
    goto LABEL_14;
  }

  *(v4 + 960) = self->_dayOfWeekPopularity;
  *(v4 + 1176) |= 0x80000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x800000000000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(v4 + 992) = self->_entropyLaunchPopularity;
  *(v4 + 1176) |= 0x800000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x100000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(v4 + 968) = self->_entropyDayOfWeekPopularity;
  *(v4 + 1176) |= 0x100000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x400000000000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(v4 + 984) = self->_entropyDayOfWeekPopularityByDay;
  *(v4 + 1176) |= 0x400000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_18:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(v4 + 976) = self->_entropyDayOfWeekPopularityByApp;
  *(v4 + 1176) |= 0x200000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(v4 + 1024) = self->_entropyTrendingPopularity;
  *(v4 + 1176) |= 0x8000000000000000;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v4 + 1000) = self->_entropySSIDPopularity;
  *(v4 + 1176) |= 0x1000000000000000uLL;
  v8 = *(&self->_has + 1);
  if ((v8 & 0x4000000000000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_194:
  *(v4 + 1016) = self->_entropySSIDPopularityBySSID;
  *(v4 + 1176) |= 0x4000000000000000uLL;
  if ((*(&self->_has + 1) & 0x2000000000000000) != 0)
  {
LABEL_22:
    *(v4 + 1008) = self->_entropySSIDPopularityByApp;
    *(v4 + 1176) |= 0x2000000000000000uLL;
  }

LABEL_23:
  if ((*(&self->_has + 17) & 0x10) != 0)
  {
    *(v4 + 1128) = self->_totalNumberOfLaunches;
    *(v4 + 1184) |= 0x1000u;
  }

  if (*p_has)
  {
    *(v4 + 8) = self->_airplaneModePopularity;
    *(v4 + 1168) |= 1uLL;
  }

  v9 = *(&self->_has + 4);
  if ((v9 & 0x400) != 0)
  {
    *(v4 + 1112) = self->_totalNumberOfAirplaneModeLaunches;
    *(v4 + 1184) |= 0x400u;
    v9 = *(&self->_has + 4);
    if ((v9 & 0x8000) == 0)
    {
LABEL_29:
      if ((v9 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_198;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  *(v4 + 1152) = self->_trendingPopularity;
  *(v4 + 1184) |= 0x8000u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x4000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(v4 + 1144) = self->_totalNumberOfTrendingLaunches;
  *(v4 + 1184) |= 0x4000u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x80) == 0)
  {
LABEL_31:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v4 + 1088) = self->_sSIDPopularity;
  *(v4 + 1184) |= 0x80u;
  v9 = *(&self->_has + 4);
  if ((v9 & 0x2000) == 0)
  {
LABEL_32:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_200:
  *(v4 + 1136) = self->_totalNumberOfSSIDLaunches;
  *(v4 + 1184) |= 0x2000u;
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
LABEL_33:
    *(v4 + 1072) = self->_onWifi;
    *(v4 + 1184) |= 0x20u;
  }

LABEL_34:
  if ((*(&self->_has + 14) & 0x10) != 0)
  {
    *(v4 + 936) = self->_coreMotionPopularity;
    *(v4 + 1176) |= 0x10000000000000uLL;
  }

  v10 = *(&self->_has + 4);
  if ((v10 & 0x800) != 0)
  {
    *(v4 + 1120) = self->_totalNumberOfCoreMotionLaunches;
    *(v4 + 1184) |= 0x800u;
    v10 = *(&self->_has + 4);
  }

  if (v10)
  {
    *(v4 + 1032) = self->_isDateInWeekendOnDevice;
    *(v4 + 1184) |= 1u;
  }

  has = *p_has;
  if ((*p_has & 4) != 0)
  {
    *(v4 + 24) = self->_ambientLightTypePopularity;
    *(v4 + 1168) |= 4uLL;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 16) = self->_ambientLightTypeLaunchPopularity;
    *(v4 + 1168) |= 2uLL;
  }

  if ((*(&self->_has + 14) & 2) != 0)
  {
    *(v4 + 912) = self->_appTimeOfDayLaunches;
    *(v4 + 1176) |= 0x2000000000000uLL;
  }

  if ((*p_has & 8) != 0)
  {
    *(v4 + 32) = self->_appDayOfWeekLaunches;
    *(v4 + 1168) |= 8uLL;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x1000000000000) != 0)
  {
    *(v4 + 904) = self->_appTimeAndDayOfWeekPopularity;
    *(v4 + 1176) |= 0x1000000000000uLL;
    v12 = *(&self->_has + 1);
    if ((v12 & 0x400000000000) == 0)
    {
LABEL_50:
      if ((v12 & 0x800000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_204;
    }
  }

  else if ((v12 & 0x400000000000) == 0)
  {
    goto LABEL_50;
  }

  *(v4 + 888) = self->_appPopularityGivenTimeAndDayOfWeek;
  *(v4 + 1176) |= 0x400000000000uLL;
  v12 = *(&self->_has + 1);
  if ((v12 & 0x800000000000) == 0)
  {
LABEL_51:
    if ((v12 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_204:
  *(v4 + 896) = self->_appPopularityOfTimeAndDayOfWeekGivenApp;
  *(v4 + 1176) |= 0x800000000000uLL;
  if ((*(&self->_has + 1) & 0x4000000000000) != 0)
  {
LABEL_52:
    *(v4 + 920) = self->_appTotalNumberOfTimeAndDayOfWeekLaunches;
    *(v4 + 1176) |= 0x4000000000000uLL;
  }

LABEL_53:
  v13 = *p_has;
  if ((*p_has & 0x4000000000000000) != 0)
  {
    *(v4 + 504) = self->_appLaunchesCoarseTimePowLocationForAppInContext;
    *(v4 + 1168) |= 0x4000000000000000uLL;
    v13 = self->_has;
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_55:
      if ((v13 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_208;
    }
  }

  else if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_55;
  }

  *(v4 + 512) = self->_appLaunchesCoarseTimePowLocationInContext;
  *(v4 + 1168) |= 0x8000000000000000;
  v13 = self->_has;
  if ((v13 & 0x2000000000000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_208:
  *(v4 + 496) = self->_appLaunchesCoarseTimePowLocationForApp;
  *(v4 + 1168) |= 0x2000000000000000uLL;
  if ((*&self->_has & 0x1000000000000000) != 0)
  {
LABEL_57:
    *(v4 + 488) = self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
    *(v4 + 1168) |= 0x1000000000000000uLL;
  }

LABEL_58:
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000000000) != 0)
  {
    *(v4 + 848) = self->_appLaunchesSpecificTimeDowLocationForAppInContext;
    *(v4 + 1176) |= 0x20000000000uLL;
    v14 = *(&self->_has + 1);
    if ((v14 & 0x40000000000) == 0)
    {
LABEL_60:
      if ((v14 & 0x10000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_212;
    }
  }

  else if ((v14 & 0x40000000000) == 0)
  {
    goto LABEL_60;
  }

  *(v4 + 856) = self->_appLaunchesSpecificTimeDowLocationInContext;
  *(v4 + 1176) |= 0x40000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((v14 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_213;
  }

LABEL_212:
  *(v4 + 840) = self->_appLaunchesSpecificTimeDowLocationForApp;
  *(v4 + 1176) |= 0x10000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000000000) == 0)
  {
LABEL_62:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_214;
  }

LABEL_213:
  *(v4 + 832) = self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
  *(v4 + 1176) |= 0x8000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10) == 0)
  {
LABEL_63:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_215;
  }

LABEL_214:
  *(v4 + 552) = self->_appLaunchesInTimeBucket0ForApp;
  *(v4 + 1176) |= 0x10uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(v4 + 640) = self->_appLaunchesInTimeBucket1ForApp;
  *(v4 + 1176) |= 0x8000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_217;
  }

LABEL_216:
  *(v4 + 688) = self->_appLaunchesInTimeBucket2ForApp;
  *(v4 + 1176) |= 0x200000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000) == 0)
  {
LABEL_66:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(v4 + 696) = self->_appLaunchesInTimeBucket3ForApp;
  *(v4 + 1176) |= 0x400000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800000) == 0)
  {
LABEL_67:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_219;
  }

LABEL_218:
  *(v4 + 704) = self->_appLaunchesInTimeBucket4ForApp;
  *(v4 + 1176) |= 0x800000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000000) == 0)
  {
LABEL_68:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_220;
  }

LABEL_219:
  *(v4 + 712) = self->_appLaunchesInTimeBucket5ForApp;
  *(v4 + 1176) |= 0x1000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_69:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_221;
  }

LABEL_220:
  *(v4 + 720) = self->_appLaunchesInTimeBucket6ForApp;
  *(v4 + 1176) |= 0x2000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_70:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_222;
  }

LABEL_221:
  *(v4 + 728) = self->_appLaunchesInTimeBucket7ForApp;
  *(v4 + 1176) |= 0x4000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_223;
  }

LABEL_222:
  *(v4 + 736) = self->_appLaunchesInTimeBucket8ForApp;
  *(v4 + 1176) |= 0x8000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_72:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_224;
  }

LABEL_223:
  *(v4 + 744) = self->_appLaunchesInTimeBucket9ForApp;
  *(v4 + 1176) |= 0x10000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20) == 0)
  {
LABEL_73:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_225;
  }

LABEL_224:
  *(v4 + 560) = self->_appLaunchesInTimeBucket10ForApp;
  *(v4 + 1176) |= 0x20uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x40) == 0)
  {
LABEL_74:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(v4 + 568) = self->_appLaunchesInTimeBucket11ForApp;
  *(v4 + 1176) |= 0x40uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x80) == 0)
  {
LABEL_75:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_227;
  }

LABEL_226:
  *(v4 + 576) = self->_appLaunchesInTimeBucket12ForApp;
  *(v4 + 1176) |= 0x80uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100) == 0)
  {
LABEL_76:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_228;
  }

LABEL_227:
  *(v4 + 584) = self->_appLaunchesInTimeBucket13ForApp;
  *(v4 + 1176) |= 0x100uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200) == 0)
  {
LABEL_77:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_229;
  }

LABEL_228:
  *(v4 + 592) = self->_appLaunchesInTimeBucket14ForApp;
  *(v4 + 1176) |= 0x200uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400) == 0)
  {
LABEL_78:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_230;
  }

LABEL_229:
  *(v4 + 600) = self->_appLaunchesInTimeBucket15ForApp;
  *(v4 + 1176) |= 0x400uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800) == 0)
  {
LABEL_79:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(v4 + 608) = self->_appLaunchesInTimeBucket16ForApp;
  *(v4 + 1176) |= 0x800uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000) == 0)
  {
LABEL_80:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_232;
  }

LABEL_231:
  *(v4 + 616) = self->_appLaunchesInTimeBucket17ForApp;
  *(v4 + 1176) |= 0x1000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000) == 0)
  {
LABEL_81:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_233;
  }

LABEL_232:
  *(v4 + 624) = self->_appLaunchesInTimeBucket18ForApp;
  *(v4 + 1176) |= 0x2000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000) == 0)
  {
LABEL_82:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_234;
  }

LABEL_233:
  *(v4 + 632) = self->_appLaunchesInTimeBucket19ForApp;
  *(v4 + 1176) |= 0x4000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x10000) == 0)
  {
LABEL_83:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_235;
  }

LABEL_234:
  *(v4 + 648) = self->_appLaunchesInTimeBucket20ForApp;
  *(v4 + 1176) |= 0x10000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000) == 0)
  {
LABEL_84:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_236;
  }

LABEL_235:
  *(v4 + 656) = self->_appLaunchesInTimeBucket21ForApp;
  *(v4 + 1176) |= 0x20000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x40000) == 0)
  {
LABEL_85:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_237;
  }

LABEL_236:
  *(v4 + 664) = self->_appLaunchesInTimeBucket22ForApp;
  *(v4 + 1176) |= 0x40000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x80000) == 0)
  {
LABEL_86:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_238;
  }

LABEL_237:
  *(v4 + 672) = self->_appLaunchesInTimeBucket23ForApp;
  *(v4 + 1176) |= 0x80000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000) == 0)
  {
LABEL_87:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_239;
  }

LABEL_238:
  *(v4 + 680) = self->_appLaunchesInTimeBucket24ForApp;
  *(v4 + 1176) |= 0x100000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x800000000) == 0)
  {
LABEL_88:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_240;
  }

LABEL_239:
  *(v4 + 800) = self->_appLaunchesOnDayOfWeekSundayForApp;
  *(v4 + 1176) |= 0x800000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x200000000) == 0)
  {
LABEL_89:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_241;
  }

LABEL_240:
  *(v4 + 784) = self->_appLaunchesOnDayOfWeekMondayForApp;
  *(v4 + 1176) |= 0x200000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x2000000000) == 0)
  {
LABEL_90:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_242;
  }

LABEL_241:
  *(v4 + 816) = self->_appLaunchesOnDayOfWeekTuesdayForApp;
  *(v4 + 1176) |= 0x2000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x4000000000) == 0)
  {
LABEL_91:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_243;
  }

LABEL_242:
  *(v4 + 824) = self->_appLaunchesOnDayOfWeekWednesdayForApp;
  *(v4 + 1176) |= 0x4000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x1000000000) == 0)
  {
LABEL_92:
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_244;
  }

LABEL_243:
  *(v4 + 808) = self->_appLaunchesOnDayOfWeekThursdayForApp;
  *(v4 + 1176) |= 0x1000000000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000000) == 0)
  {
LABEL_93:
    if ((v14 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_244:
  *(v4 + 776) = self->_appLaunchesOnDayOfWeekFridayForApp;
  *(v4 + 1176) |= 0x100000000uLL;
  if ((*(&self->_has + 1) & 0x400000000) != 0)
  {
LABEL_94:
    *(v4 + 792) = self->_appLaunchesOnDayOfWeekSaturdayForApp;
    *(v4 + 1176) |= 0x400000000uLL;
  }

LABEL_95:
  v15 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    *(v4 + 80) = self->_appLaunchesAtCoarseGeoHash0ForApp;
    *(v4 + 1168) |= 0x200uLL;
    v15 = self->_has;
    if ((v15 & 0x400) == 0)
    {
LABEL_97:
      if ((v15 & 0x800) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_248;
    }
  }

  else if ((v15 & 0x400) == 0)
  {
    goto LABEL_97;
  }

  *(v4 + 88) = self->_appLaunchesAtCoarseGeoHash1ForApp;
  *(v4 + 1168) |= 0x400uLL;
  v15 = self->_has;
  if ((v15 & 0x800) == 0)
  {
LABEL_98:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_249;
  }

LABEL_248:
  *(v4 + 96) = self->_appLaunchesAtCoarseGeoHash2ForApp;
  *(v4 + 1168) |= 0x800uLL;
  v15 = self->_has;
  if ((v15 & 0x1000) == 0)
  {
LABEL_99:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_250;
  }

LABEL_249:
  *(v4 + 104) = self->_appLaunchesAtCoarseGeoHash3ForApp;
  *(v4 + 1168) |= 0x1000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000) == 0)
  {
LABEL_100:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_251;
  }

LABEL_250:
  *(v4 + 112) = self->_appLaunchesAtCoarseGeoHash4ForApp;
  *(v4 + 1168) |= 0x2000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000) == 0)
  {
LABEL_101:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_252;
  }

LABEL_251:
  *(v4 + 120) = self->_appLaunchesAtCoarseGeoHash5ForApp;
  *(v4 + 1168) |= 0x4000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000) == 0)
  {
LABEL_102:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_253;
  }

LABEL_252:
  *(v4 + 128) = self->_appLaunchesAtCoarseGeoHash6ForApp;
  *(v4 + 1168) |= 0x8000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000) == 0)
  {
LABEL_103:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_254;
  }

LABEL_253:
  *(v4 + 136) = self->_appLaunchesAtCoarseGeoHash7ForApp;
  *(v4 + 1168) |= 0x10000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000) == 0)
  {
LABEL_104:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_255;
  }

LABEL_254:
  *(v4 + 144) = self->_appLaunchesAtCoarseGeoHash8ForApp;
  *(v4 + 1168) |= 0x20000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000) == 0)
  {
LABEL_105:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_256;
  }

LABEL_255:
  *(v4 + 152) = self->_appLaunchesAtCoarseGeoHash9ForApp;
  *(v4 + 1168) |= 0x40000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000) == 0)
  {
LABEL_106:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_257;
  }

LABEL_256:
  *(v4 + 216) = self->_appLaunchesAtSpecificGeoHash0ForApp;
  *(v4 + 1168) |= 0x4000000uLL;
  v15 = self->_has;
  if ((v15 & 0x100000000) == 0)
  {
LABEL_107:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_258;
  }

LABEL_257:
  *(v4 + 264) = self->_appLaunchesAtSpecificGeoHash1ForApp;
  *(v4 + 1168) |= 0x100000000uLL;
  v15 = self->_has;
  if ((v15 & 0x200000000) == 0)
  {
LABEL_108:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_259;
  }

LABEL_258:
  *(v4 + 272) = self->_appLaunchesAtSpecificGeoHash2ForApp;
  *(v4 + 1168) |= 0x200000000uLL;
  v15 = self->_has;
  if ((v15 & 0x400000000) == 0)
  {
LABEL_109:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_260;
  }

LABEL_259:
  *(v4 + 280) = self->_appLaunchesAtSpecificGeoHash3ForApp;
  *(v4 + 1168) |= 0x400000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_261;
  }

LABEL_260:
  *(v4 + 288) = self->_appLaunchesAtSpecificGeoHash4ForApp;
  *(v4 + 1168) |= 0x800000000uLL;
  v15 = self->_has;
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_262;
  }

LABEL_261:
  *(v4 + 296) = self->_appLaunchesAtSpecificGeoHash5ForApp;
  *(v4 + 1168) |= 0x1000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_263;
  }

LABEL_262:
  *(v4 + 304) = self->_appLaunchesAtSpecificGeoHash6ForApp;
  *(v4 + 1168) |= 0x2000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_264;
  }

LABEL_263:
  *(v4 + 312) = self->_appLaunchesAtSpecificGeoHash7ForApp;
  *(v4 + 1168) |= 0x4000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_114:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_265;
  }

LABEL_264:
  *(v4 + 320) = self->_appLaunchesAtSpecificGeoHash8ForApp;
  *(v4 + 1168) |= 0x8000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_266;
  }

LABEL_265:
  *(v4 + 328) = self->_appLaunchesAtSpecificGeoHash9ForApp;
  *(v4 + 1168) |= 0x10000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x8000000) == 0)
  {
LABEL_116:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_267;
  }

LABEL_266:
  *(v4 + 224) = self->_appLaunchesAtSpecificGeoHash10ForApp;
  *(v4 + 1168) |= 0x8000000uLL;
  v15 = self->_has;
  if ((v15 & 0x10000000) == 0)
  {
LABEL_117:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_268;
  }

LABEL_267:
  *(v4 + 232) = self->_appLaunchesAtSpecificGeoHash11ForApp;
  *(v4 + 1168) |= 0x10000000uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_269;
  }

LABEL_268:
  *(v4 + 240) = self->_appLaunchesAtSpecificGeoHash12ForApp;
  *(v4 + 1168) |= 0x20000000uLL;
  v15 = self->_has;
  if ((v15 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_269:
  *(v4 + 248) = self->_appLaunchesAtSpecificGeoHash13ForApp;
  *(v4 + 1168) |= 0x40000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_120:
    *(v4 + 256) = self->_appLaunchesAtSpecificGeoHash14ForApp;
    *(v4 + 1168) |= 0x80000000uLL;
  }

LABEL_121:
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000000) != 0)
  {
    *(v4 + 872) = self->_appNumberOfSpecificGeohashesForApp;
    *(v4 + 1176) |= 0x100000000000uLL;
    v16 = *(&self->_has + 1);
  }

  if ((v16 & 0x80000000000) != 0)
  {
    *(v4 + 864) = self->_appNumberOfCoarseGeohashesForApp;
    *(v4 + 1176) |= 0x80000000000uLL;
  }

  v17 = *p_has;
  if ((*p_has & 0x40) != 0)
  {
    *(v4 + 56) = self->_appEntropyForTimeBuckets;
    *(v4 + 1168) |= 0x40uLL;
    v17 = self->_has;
    if ((v17 & 0x20) == 0)
    {
LABEL_127:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_273;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  *(v4 + 48) = self->_appEntropyForSpecificGeoHash;
  *(v4 + 1168) |= 0x20uLL;
  v17 = self->_has;
  if ((v17 & 0x10) == 0)
  {
LABEL_128:
    if ((v17 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(v4 + 40) = self->_appEntropyForCoarseGeoHash;
  *(v4 + 1168) |= 0x10uLL;
  v17 = self->_has;
  if ((v17 & 0x40000000000) == 0)
  {
LABEL_129:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_275;
  }

LABEL_274:
  *(v4 + 344) = self->_appLaunchesAtSpecificGeoHashForAppInContext;
  *(v4 + 1168) |= 0x40000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x100000) == 0)
  {
LABEL_130:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_276;
  }

LABEL_275:
  *(v4 + 168) = self->_appLaunchesAtCoarseGeoHashForAppInContext;
  *(v4 + 1168) |= 0x100000uLL;
  v17 = self->_has;
  if ((v17 & 0x400000) == 0)
  {
LABEL_131:
    if ((v17 & 0x200000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_277;
  }

LABEL_276:
  *(v4 + 184) = self->_appLaunchesAtDayOfWeekForApp;
  *(v4 + 1168) |= 0x400000uLL;
  v17 = self->_has;
  if ((v17 & 0x200000000000) == 0)
  {
LABEL_132:
    if ((v17 & 0x400000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_278;
  }

LABEL_277:
  *(v4 + 368) = self->_appLaunchesAtTimeAndDayForAppInContext;
  *(v4 + 1168) |= 0x200000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x400000000000) == 0)
  {
LABEL_133:
    if ((v17 & 0x100000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_279;
  }

LABEL_278:
  *(v4 + 376) = self->_appLaunchesAtTimeAndDayInContext;
  *(v4 + 1168) |= 0x400000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x100000000000) == 0)
  {
LABEL_134:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(v4 + 360) = self->_appLaunchesAtTimeAndDayForApp;
  *(v4 + 1168) |= 0x100000000000uLL;
  v17 = self->_has;
  if ((v17 & 0x200000) == 0)
  {
LABEL_135:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(v4 + 176) = self->_appLaunchesAtCoarseGeoHashInContext;
  *(v4 + 1168) |= 0x200000uLL;
  v17 = self->_has;
  if ((v17 & 0x80000) == 0)
  {
LABEL_136:
    if ((v17 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(v4 + 160) = self->_appLaunchesAtCoarseGeoHashForApp;
  *(v4 + 1168) |= 0x80000uLL;
  v17 = self->_has;
  if ((v17 & 0x80000000000) == 0)
  {
LABEL_137:
    if ((v17 & 0x20000000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_282:
  *(v4 + 352) = self->_appLaunchesAtSpecificGeoHashInContext;
  *(v4 + 1168) |= 0x80000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_138:
    *(v4 + 336) = self->_appLaunchesAtSpecificGeoHashForApp;
    *(v4 + 1168) |= 0x20000000000uLL;
  }

LABEL_139:
  v18 = *(&self->_has + 1);
  if (v18)
  {
    *(v4 + 520) = self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
    *(v4 + 1176) |= 1uLL;
    v18 = *(&self->_has + 1);
  }

  if ((v18 & 2) != 0)
  {
    *(v4 + 528) = self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
    *(v4 + 1176) |= 2uLL;
  }

  if ((*(&self->_has + 16) & 2) != 0)
  {
    *(v4 + 1040) = self->_isLocationServicesDisabled;
    *(v4 + 1184) |= 2u;
  }

  v19 = *(&self->_has + 1);
  if ((v19 & 0x40000000) != 0)
  {
    *(v4 + 760) = self->_appLaunchesInTwoHourTimeBucketForAppInContext;
    *(v4 + 1176) |= 0x40000000uLL;
    v19 = *(&self->_has + 1);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_147:
      if ((v19 & 0x20000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_286;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

  *(v4 + 768) = self->_appLaunchesInTwoHourTimeBucketInContext;
  *(v4 + 1176) |= 0x80000000uLL;
  v19 = *(&self->_has + 1);
  if ((v19 & 0x20000000) == 0)
  {
LABEL_148:
    if ((v19 & 0x20000000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_286:
  *(v4 + 752) = self->_appLaunchesInTwoHourTimeBucketForApp;
  *(v4 + 1176) |= 0x20000000uLL;
  if ((*(&self->_has + 1) & 0x20000000000000) != 0)
  {
LABEL_149:
    *(v4 + 944) = self->_currentTimeBucketFromZeroToTwentyFour;
    *(v4 + 1176) |= 0x20000000000000uLL;
  }

LABEL_150:
  v20 = *p_has;
  if ((*p_has & 0x400000000000000) != 0)
  {
    *(v4 + 472) = self->_appLaunchesAtZoom7GeoHashForAppInContext;
    *(v4 + 1168) |= 0x400000000000000uLL;
    v20 = self->_has;
    if ((v20 & 0x800000000000000) == 0)
    {
LABEL_152:
      if ((v20 & 0x200000000000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_290;
    }
  }

  else if ((v20 & 0x800000000000000) == 0)
  {
    goto LABEL_152;
  }

  *(v4 + 480) = self->_appLaunchesAtZoom7GeoHashInContext;
  *(v4 + 1168) |= 0x800000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x200000000000000) == 0)
  {
LABEL_153:
    if ((v20 & 0x800000000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_291;
  }

LABEL_290:
  *(v4 + 464) = self->_appLaunchesAtZoom7GeoHashForApp;
  *(v4 + 1168) |= 0x200000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x800000000000) == 0)
  {
LABEL_154:
    if ((v20 & 0x1000000000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_292;
  }

LABEL_291:
  *(v4 + 384) = self->_appLaunchesAtZoom7GeoHash0ForApp;
  *(v4 + 1168) |= 0x800000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x1000000000000) == 0)
  {
LABEL_155:
    if ((v20 & 0x2000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_293;
  }

LABEL_292:
  *(v4 + 392) = self->_appLaunchesAtZoom7GeoHash1ForApp;
  *(v4 + 1168) |= 0x1000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x2000000000000) == 0)
  {
LABEL_156:
    if ((v20 & 0x4000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_294;
  }

LABEL_293:
  *(v4 + 400) = self->_appLaunchesAtZoom7GeoHash2ForApp;
  *(v4 + 1168) |= 0x2000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x4000000000000) == 0)
  {
LABEL_157:
    if ((v20 & 0x8000000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_295;
  }

LABEL_294:
  *(v4 + 408) = self->_appLaunchesAtZoom7GeoHash3ForApp;
  *(v4 + 1168) |= 0x4000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x8000000000000) == 0)
  {
LABEL_158:
    if ((v20 & 0x10000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_296;
  }

LABEL_295:
  *(v4 + 416) = self->_appLaunchesAtZoom7GeoHash4ForApp;
  *(v4 + 1168) |= 0x8000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x10000000000000) == 0)
  {
LABEL_159:
    if ((v20 & 0x20000000000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_297;
  }

LABEL_296:
  *(v4 + 424) = self->_appLaunchesAtZoom7GeoHash5ForApp;
  *(v4 + 1168) |= 0x10000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x20000000000000) == 0)
  {
LABEL_160:
    if ((v20 & 0x40000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_298;
  }

LABEL_297:
  *(v4 + 432) = self->_appLaunchesAtZoom7GeoHash6ForApp;
  *(v4 + 1168) |= 0x20000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x40000000000000) == 0)
  {
LABEL_161:
    if ((v20 & 0x80000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_299;
  }

LABEL_298:
  *(v4 + 440) = self->_appLaunchesAtZoom7GeoHash7ForApp;
  *(v4 + 1168) |= 0x40000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x80000000000000) == 0)
  {
LABEL_162:
    if ((v20 & 0x100000000000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_300;
  }

LABEL_299:
  *(v4 + 448) = self->_appLaunchesAtZoom7GeoHash8ForApp;
  *(v4 + 1168) |= 0x80000000000000uLL;
  v20 = self->_has;
  if ((v20 & 0x100000000000000) == 0)
  {
LABEL_163:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_300:
  *(v4 + 456) = self->_appLaunchesAtZoom7GeoHash9ForApp;
  *(v4 + 1168) |= 0x100000000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_164:
    *(v4 + 64) = self->_appEntropyForZoom7GeoHash;
    *(v4 + 1168) |= 0x80uLL;
  }

LABEL_165:
  if ((*(&self->_has + 13) & 0x20) != 0)
  {
    *(v4 + 880) = self->_appNumberOfZoom7GeohashesForApp;
    *(v4 + 1176) |= 0x200000000000uLL;
  }

  v21 = *p_has;
  if ((*p_has & 0x2000000) != 0)
  {
    *(v4 + 208) = self->_appLaunchesAtSSIDForAppInContext;
    *(v4 + 1168) |= 0x2000000uLL;
    v21 = self->_has;
  }

  if ((v21 & 0x1000000) != 0)
  {
    *(v4 + 200) = self->_appLaunchesAtSSIDForApp;
    *(v4 + 1168) |= 0x1000000uLL;
  }

  v22 = *(&self->_has + 1);
  if ((v22 & 4) != 0)
  {
    *(v4 + 536) = self->_appLaunchesForCoreMotionForAppInContext;
    *(v4 + 1176) |= 4uLL;
    v22 = *(&self->_has + 1);
  }

  if ((v22 & 8) != 0)
  {
    *(v4 + 544) = self->_appLaunchesInAirplaneModeForAppInContext;
    *(v4 + 1176) |= 8uLL;
  }

  if ((*(&self->_has + 16) & 0x40) != 0)
  {
    *(v4 + 1080) = self->_poiPopularityForAppInContext;
    *(v4 + 1184) |= 0x40u;
  }

  v23 = *p_has;
  if ((v23 & 0x100) != 0)
  {
    *(v4 + 72) = self->_appLaunchPopularityAtPOIForAppInContext;
    *(v4 + 1168) |= 0x100uLL;
    v23 = self->_has;
  }

  if ((v23 & 0x800000) != 0)
  {
    *(v4 + 192) = self->_appLaunchesAtPOIForAppInContext;
    *(v4 + 1168) |= 0x800000uLL;
  }

  v24 = v4;

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_727;
  }

  v5 = *(&self->_has + 4);
  v6 = v4 + 146;
  v7 = *(v4 + 296);
  if ((v5 & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_unlockTime != *(v4 + 145))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_launchTimePopularity != *(v4 + 133))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_timeOfDayBucket != *(v4 + 137))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_timeOfDayPopularity != *(v4 + 138))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_727;
  }

  v8 = *(&self->_has + 1);
  v9 = v4[147];
  if ((v8 & 0x8000000000000) != 0)
  {
    if ((v9 & 0x8000000000000) == 0 || self->_coarseTimeOfDayPopularity != *(v4 + 116))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x8000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_launchPopularity != *(v4 + 132))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_launchDayOfWeekPopularity != *(v4 + 131))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x40000000000000) != 0)
  {
    if ((v9 & 0x40000000000000) == 0 || self->_dayOfWeekBucket != *(v4 + 119))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x40000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x80000000000000) != 0)
  {
    if ((v9 & 0x80000000000000) == 0 || self->_dayOfWeekPopularity != *(v4 + 120))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x80000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x800000000000000) != 0)
  {
    if ((v9 & 0x800000000000000) == 0 || self->_entropyLaunchPopularity != *(v4 + 124))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x800000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x100000000000000) != 0)
  {
    if ((v9 & 0x100000000000000) == 0 || self->_entropyDayOfWeekPopularity != *(v4 + 121))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x100000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x400000000000000) != 0)
  {
    if ((v9 & 0x400000000000000) == 0 || self->_entropyDayOfWeekPopularityByDay != *(v4 + 123))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x400000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x200000000000000) != 0)
  {
    if ((v9 & 0x200000000000000) == 0 || self->_entropyDayOfWeekPopularityByApp != *(v4 + 122))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x200000000000000) != 0)
  {
    goto LABEL_727;
  }

  if (v8 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0 || self->_entropyTrendingPopularity != *(v4 + 128))
    {
      goto LABEL_727;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    if ((v9 & 0x1000000000000000) == 0 || self->_entropySSIDPopularity != *(v4 + 125))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x4000000000000000) != 0)
  {
    if ((v9 & 0x4000000000000000) == 0 || self->_entropySSIDPopularityBySSID != *(v4 + 127))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    if ((v9 & 0x2000000000000000) == 0 || self->_entropySSIDPopularityByApp != *(v4 + 126))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x2000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_totalNumberOfLaunches != *(v4 + 141))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_727;
  }

  has = self->_has;
  v11 = *v6;
  if (has)
  {
    if ((v11 & 1) == 0 || self->_airplaneModePopularity != *(v4 + 1))
    {
      goto LABEL_727;
    }
  }

  else if (v11)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_totalNumberOfAirplaneModeLaunches != *(v4 + 139))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_trendingPopularity != *(v4 + 144))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_totalNumberOfTrendingLaunches != *(v4 + 143))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_sSIDPopularity != *(v4 + 136))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_totalNumberOfSSIDLaunches != *(v4 + 142))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_onWifi != *(v4 + 134))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x10000000000000) != 0)
  {
    if ((v9 & 0x10000000000000) == 0 || self->_coreMotionPopularity != *(v4 + 117))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x10000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_totalNumberOfCoreMotionLaunches != *(v4 + 140))
    {
      goto LABEL_727;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_727;
  }

  if (v5)
  {
    if ((v7 & 1) == 0 || self->_isDateInWeekendOnDevice != *(v4 + 129))
    {
      goto LABEL_727;
    }
  }

  else if (v7)
  {
    goto LABEL_727;
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_ambientLightTypePopularity != *(v4 + 3))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_ambientLightTypeLaunchPopularity != *(v4 + 2))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x2000000000000) != 0)
  {
    if ((v9 & 0x2000000000000) == 0 || self->_appTimeOfDayLaunches != *(v4 + 114))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x2000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_appDayOfWeekLaunches != *(v4 + 4))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x1000000000000) != 0)
  {
    if ((v9 & 0x1000000000000) == 0 || self->_appTimeAndDayOfWeekPopularity != *(v4 + 113))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x1000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x400000000000) != 0)
  {
    if ((v9 & 0x400000000000) == 0 || self->_appPopularityGivenTimeAndDayOfWeek != *(v4 + 111))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x400000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x800000000000) != 0)
  {
    if ((v9 & 0x800000000000) == 0 || self->_appPopularityOfTimeAndDayOfWeekGivenApp != *(v4 + 112))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x800000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x4000000000000) != 0)
  {
    if ((v9 & 0x4000000000000) == 0 || self->_appTotalNumberOfTimeAndDayOfWeekLaunches != *(v4 + 115))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x4000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v11 & 0x4000000000000000) == 0 || self->_appLaunchesCoarseTimePowLocationForAppInContext != *(v4 + 63))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if (has < 0)
  {
    if ((v11 & 0x8000000000000000) == 0 || self->_appLaunchesCoarseTimePowLocationInContext != *(v4 + 64))
    {
      goto LABEL_727;
    }
  }

  else if (v11 < 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v11 & 0x2000000000000000) == 0 || self->_appLaunchesCoarseTimePowLocationForApp != *(v4 + 62))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 0x2000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v11 & 0x1000000000000000) == 0 || self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts != *(v4 + 61))
    {
      goto LABEL_727;
    }
  }

  else if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x20000000000) != 0)
  {
    if ((v9 & 0x20000000000) == 0 || self->_appLaunchesSpecificTimeDowLocationForAppInContext != *(v4 + 106))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x20000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x40000000000) != 0)
  {
    if ((v9 & 0x40000000000) == 0 || self->_appLaunchesSpecificTimeDowLocationInContext != *(v4 + 107))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x40000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x10000000000) != 0)
  {
    if ((v9 & 0x10000000000) == 0 || self->_appLaunchesSpecificTimeDowLocationForApp != *(v4 + 105))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x10000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x8000000000) != 0)
  {
    if ((v9 & 0x8000000000) == 0 || self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts != *(v4 + 104))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x8000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_appLaunchesInTimeBucket0ForApp != *(v4 + 69))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x8000) != 0)
  {
    if ((v9 & 0x8000) == 0 || self->_appLaunchesInTimeBucket1ForApp != *(v4 + 80))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x8000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x200000) != 0)
  {
    if ((v9 & 0x200000) == 0 || self->_appLaunchesInTimeBucket2ForApp != *(v4 + 86))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x200000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x400000) != 0)
  {
    if ((v9 & 0x400000) == 0 || self->_appLaunchesInTimeBucket3ForApp != *(v4 + 87))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x400000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x800000) != 0)
  {
    if ((v9 & 0x800000) == 0 || self->_appLaunchesInTimeBucket4ForApp != *(v4 + 88))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x800000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x1000000) != 0)
  {
    if ((v9 & 0x1000000) == 0 || self->_appLaunchesInTimeBucket5ForApp != *(v4 + 89))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x2000000) != 0)
  {
    if ((v9 & 0x2000000) == 0 || self->_appLaunchesInTimeBucket6ForApp != *(v4 + 90))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x2000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x4000000) != 0)
  {
    if ((v9 & 0x4000000) == 0 || self->_appLaunchesInTimeBucket7ForApp != *(v4 + 91))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x4000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x8000000) != 0)
  {
    if ((v9 & 0x8000000) == 0 || self->_appLaunchesInTimeBucket8ForApp != *(v4 + 92))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x8000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x10000000) != 0)
  {
    if ((v9 & 0x10000000) == 0 || self->_appLaunchesInTimeBucket9ForApp != *(v4 + 93))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x10000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_appLaunchesInTimeBucket10ForApp != *(v4 + 70))
    {
      goto LABEL_727;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_727;
  }

  v12 = v4[147];
  if ((v8 & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_appLaunchesInTimeBucket11ForApp != *(v4 + 71))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_appLaunchesInTimeBucket12ForApp != *(v4 + 72))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_appLaunchesInTimeBucket13ForApp != *(v4 + 73))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_appLaunchesInTimeBucket14ForApp != *(v4 + 74))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_appLaunchesInTimeBucket15ForApp != *(v4 + 75))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_appLaunchesInTimeBucket16ForApp != *(v4 + 76))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_appLaunchesInTimeBucket17ForApp != *(v4 + 77))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_appLaunchesInTimeBucket18ForApp != *(v4 + 78))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_appLaunchesInTimeBucket19ForApp != *(v4 + 79))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_appLaunchesInTimeBucket20ForApp != *(v4 + 81))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_appLaunchesInTimeBucket21ForApp != *(v4 + 82))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_appLaunchesInTimeBucket22ForApp != *(v4 + 83))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_appLaunchesInTimeBucket23ForApp != *(v4 + 84))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_appLaunchesInTimeBucket24ForApp != *(v4 + 85))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x800000000) != 0)
  {
    if ((v12 & 0x800000000) == 0 || self->_appLaunchesOnDayOfWeekSundayForApp != *(v4 + 100))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x800000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x200000000) != 0)
  {
    if ((v12 & 0x200000000) == 0 || self->_appLaunchesOnDayOfWeekMondayForApp != *(v4 + 98))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x200000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x2000000000) != 0)
  {
    if ((v12 & 0x2000000000) == 0 || self->_appLaunchesOnDayOfWeekTuesdayForApp != *(v4 + 102))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x2000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x4000000000) != 0)
  {
    if ((v12 & 0x4000000000) == 0 || self->_appLaunchesOnDayOfWeekWednesdayForApp != *(v4 + 103))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x4000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x1000000000) != 0)
  {
    if ((v12 & 0x1000000000) == 0 || self->_appLaunchesOnDayOfWeekThursdayForApp != *(v4 + 101))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x1000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x100000000) != 0)
  {
    if ((v12 & 0x100000000) == 0 || self->_appLaunchesOnDayOfWeekFridayForApp != *(v4 + 97))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x400000000) != 0)
  {
    if ((v12 & 0x400000000) == 0 || self->_appLaunchesOnDayOfWeekSaturdayForApp != *(v4 + 99))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x400000000) != 0)
  {
    goto LABEL_727;
  }

  v13 = *v6;
  if ((has & 0x200) != 0)
  {
    if ((v13 & 0x200) == 0 || self->_appLaunchesAtCoarseGeoHash0ForApp != *(v4 + 10))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x200) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x400) != 0)
  {
    if ((v13 & 0x400) == 0 || self->_appLaunchesAtCoarseGeoHash1ForApp != *(v4 + 11))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x400) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x800) != 0)
  {
    if ((v13 & 0x800) == 0 || self->_appLaunchesAtCoarseGeoHash2ForApp != *(v4 + 12))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x800) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0 || self->_appLaunchesAtCoarseGeoHash3ForApp != *(v4 + 13))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v13 & 0x2000) == 0 || self->_appLaunchesAtCoarseGeoHash4ForApp != *(v4 + 14))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x2000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v13 & 0x4000) == 0 || self->_appLaunchesAtCoarseGeoHash5ForApp != *(v4 + 15))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x4000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v13 & 0x8000) == 0 || self->_appLaunchesAtCoarseGeoHash6ForApp != *(v4 + 16))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x8000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v13 & 0x10000) == 0 || self->_appLaunchesAtCoarseGeoHash7ForApp != *(v4 + 17))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x10000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v13 & 0x20000) == 0 || self->_appLaunchesAtCoarseGeoHash8ForApp != *(v4 + 18))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x20000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x40000) != 0)
  {
    if ((v13 & 0x40000) == 0 || self->_appLaunchesAtCoarseGeoHash9ForApp != *(v4 + 19))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x40000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v13 & 0x4000000) == 0 || self->_appLaunchesAtSpecificGeoHash0ForApp != *(v4 + 27))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x4000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x100000000) != 0)
  {
    if ((v13 & 0x100000000) == 0 || self->_appLaunchesAtSpecificGeoHash1ForApp != *(v4 + 33))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x100000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v13 & 0x200000000) == 0 || self->_appLaunchesAtSpecificGeoHash2ForApp != *(v4 + 34))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x200000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v13 & 0x400000000) == 0 || self->_appLaunchesAtSpecificGeoHash3ForApp != *(v4 + 35))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x400000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v13 & 0x800000000) == 0 || self->_appLaunchesAtSpecificGeoHash4ForApp != *(v4 + 36))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x800000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v13 & 0x1000000000) == 0 || self->_appLaunchesAtSpecificGeoHash5ForApp != *(v4 + 37))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x1000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v13 & 0x2000000000) == 0 || self->_appLaunchesAtSpecificGeoHash6ForApp != *(v4 + 38))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x2000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v13 & 0x4000000000) == 0 || self->_appLaunchesAtSpecificGeoHash7ForApp != *(v4 + 39))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x4000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v13 & 0x8000000000) == 0 || self->_appLaunchesAtSpecificGeoHash8ForApp != *(v4 + 40))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x8000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x10000000000) != 0)
  {
    if ((v13 & 0x10000000000) == 0 || self->_appLaunchesAtSpecificGeoHash9ForApp != *(v4 + 41))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x10000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v13 & 0x8000000) == 0 || self->_appLaunchesAtSpecificGeoHash10ForApp != *(v4 + 28))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x8000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v13 & 0x10000000) == 0 || self->_appLaunchesAtSpecificGeoHash11ForApp != *(v4 + 29))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x10000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x20000000) != 0)
  {
    if ((v13 & 0x20000000) == 0 || self->_appLaunchesAtSpecificGeoHash12ForApp != *(v4 + 30))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x20000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v13 & 0x40000000) == 0 || self->_appLaunchesAtSpecificGeoHash13ForApp != *(v4 + 31))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v13 & 0x80000000) == 0 || self->_appLaunchesAtSpecificGeoHash14ForApp != *(v4 + 32))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x100000000000) != 0)
  {
    if ((v12 & 0x100000000000) == 0 || self->_appNumberOfSpecificGeohashesForApp != *(v4 + 109))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x100000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x80000000000) != 0)
  {
    if ((v12 & 0x80000000000) == 0 || self->_appNumberOfCoarseGeohashesForApp != *(v4 + 108))
    {
      goto LABEL_727;
    }
  }

  else if ((v12 & 0x80000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_appEntropyForTimeBuckets != *(v4 + 7))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_appEntropyForSpecificGeoHash != *(v4 + 6))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_appEntropyForCoarseGeoHash != *(v4 + 5))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v13 & 0x40000000000) == 0 || self->_appLaunchesAtSpecificGeoHashForAppInContext != *(v4 + 43))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x40000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x100000) != 0)
  {
    if ((v13 & 0x100000) == 0 || self->_appLaunchesAtCoarseGeoHashForAppInContext != *(v4 + 21))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x100000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v13 & 0x400000) == 0 || self->_appLaunchesAtDayOfWeekForApp != *(v4 + 23))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x400000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x200000000000) != 0)
  {
    if ((v13 & 0x200000000000) == 0 || self->_appLaunchesAtTimeAndDayForAppInContext != *(v4 + 46))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x200000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x400000000000) != 0)
  {
    if ((v13 & 0x400000000000) == 0 || self->_appLaunchesAtTimeAndDayInContext != *(v4 + 47))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x400000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v13 & 0x100000000000) == 0 || self->_appLaunchesAtTimeAndDayForApp != *(v4 + 45))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x100000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v13 & 0x200000) == 0 || self->_appLaunchesAtCoarseGeoHashInContext != *(v4 + 22))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x200000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v13 & 0x80000) == 0 || self->_appLaunchesAtCoarseGeoHashForApp != *(v4 + 20))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x80000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v13 & 0x80000000000) == 0 || self->_appLaunchesAtSpecificGeoHashInContext != *(v4 + 44))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x80000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v13 & 0x20000000000) == 0 || self->_appLaunchesAtSpecificGeoHashForApp != *(v4 + 42))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x20000000000) != 0)
  {
    goto LABEL_727;
  }

  v14 = v4[147];
  if (v8)
  {
    if ((v14 & 1) == 0 || self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate != *(v4 + 65))
    {
      goto LABEL_727;
    }
  }

  else if (v14)
  {
    goto LABEL_727;
  }

  if ((v8 & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate != *(v4 + 66))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_727;
  }

  v15 = *(v4 + 296);
  if ((v5 & 2) != 0)
  {
    if ((v15 & 2) == 0 || self->_isLocationServicesDisabled != *(v4 + 130))
    {
      goto LABEL_727;
    }
  }

  else if ((v15 & 2) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x40000000) != 0)
  {
    if ((v14 & 0x40000000) == 0 || self->_appLaunchesInTwoHourTimeBucketForAppInContext != *(v4 + 95))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if ((v14 & 0x80000000) == 0 || self->_appLaunchesInTwoHourTimeBucketInContext != *(v4 + 96))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x20000000) != 0)
  {
    if ((v14 & 0x20000000) == 0 || self->_appLaunchesInTwoHourTimeBucketForApp != *(v4 + 94))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 0x20000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x20000000000000) != 0)
  {
    if ((v14 & 0x20000000000000) == 0 || self->_currentTimeBucketFromZeroToTwentyFour != *(v4 + 118))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 0x20000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v13 & 0x400000000000000) == 0 || self->_appLaunchesAtZoom7GeoHashForAppInContext != *(v4 + 59))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x400000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v13 & 0x800000000000000) == 0 || self->_appLaunchesAtZoom7GeoHashInContext != *(v4 + 60))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x800000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x200000000000000) != 0)
  {
    if ((v13 & 0x200000000000000) == 0 || self->_appLaunchesAtZoom7GeoHashForApp != *(v4 + 58))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x200000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v13 & 0x800000000000) == 0 || self->_appLaunchesAtZoom7GeoHash0ForApp != *(v4 + 48))
    {
      goto LABEL_727;
    }
  }

  else if ((v13 & 0x800000000000) != 0)
  {
    goto LABEL_727;
  }

  v16 = *v6;
  if ((has & 0x1000000000000) != 0)
  {
    if ((v16 & 0x1000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash1ForApp != *(v4 + 49))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x1000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v16 & 0x2000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash2ForApp != *(v4 + 50))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x2000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v16 & 0x4000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash3ForApp != *(v4 + 51))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x4000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v16 & 0x8000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash4ForApp != *(v4 + 52))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x8000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v16 & 0x10000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash5ForApp != *(v4 + 53))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x10000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v16 & 0x20000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash6ForApp != *(v4 + 54))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x20000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x40000000000000) != 0)
  {
    if ((v16 & 0x40000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash7ForApp != *(v4 + 55))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x40000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v16 & 0x80000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash8ForApp != *(v4 + 56))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x80000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v16 & 0x100000000000000) == 0 || self->_appLaunchesAtZoom7GeoHash9ForApp != *(v4 + 57))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x100000000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x80) != 0)
  {
    if ((v16 & 0x80) == 0 || self->_appEntropyForZoom7GeoHash != *(v4 + 8))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x80) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 0x200000000000) != 0)
  {
    if ((v14 & 0x200000000000) == 0 || self->_appNumberOfZoom7GeohashesForApp != *(v4 + 110))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 0x200000000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x2000000) != 0)
  {
    if ((v16 & 0x2000000) == 0 || self->_appLaunchesAtSSIDForAppInContext != *(v4 + 26))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x2000000) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v16 & 0x1000000) == 0 || self->_appLaunchesAtSSIDForApp != *(v4 + 25))
    {
      goto LABEL_727;
    }
  }

  else if ((v16 & 0x1000000) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_appLaunchesForCoreMotionForAppInContext != *(v4 + 67))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_727;
  }

  if ((v8 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_appLaunchesInAirplaneModeForAppInContext != *(v4 + 68))
    {
      goto LABEL_727;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_727;
  }

  if ((v5 & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_poiPopularityForAppInContext != *(v4 + 135))
    {
      goto LABEL_727;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_727;
  }

  if ((has & 0x100) == 0)
  {
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_722;
    }

LABEL_727:
    v17 = 0;
    goto LABEL_728;
  }

  if ((v16 & 0x100) == 0 || self->_appLaunchPopularityAtPOIForAppInContext != *(v4 + 9))
  {
    goto LABEL_727;
  }

LABEL_722:
  if ((has & 0x800000) != 0)
  {
    if ((v16 & 0x800000) == 0 || self->_appLaunchesAtPOIForAppInContext != *(v4 + 24))
    {
      goto LABEL_727;
    }

    v17 = 1;
  }

  else
  {
    v17 = (v16 & 0x800000) == 0;
  }

LABEL_728:

  return v17;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  v5 = *(&self->_has + 4);
  if ((v5 & 0x10000) == 0)
  {
    v732 = 0;
    goto LABEL_10;
  }

  unlockTime = self->_unlockTime;
  if (unlockTime < 0.0)
  {
    unlockTime = -unlockTime;
  }

  *v2.i64 = floor(unlockTime + 0.5);
  v7 = (unlockTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v732 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 <= 0.0)
    {
      goto LABEL_10;
    }

    v9 = v732 + v7;
  }

  else
  {
    v9 = v732 - fabs(v7);
  }

  v732 = v9;
LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    v731 = 0;
    goto LABEL_19;
  }

  launchTimePopularity = self->_launchTimePopularity;
  if (launchTimePopularity < 0.0)
  {
    launchTimePopularity = -launchTimePopularity;
  }

  *v2.i64 = floor(launchTimePopularity + 0.5);
  v11 = (launchTimePopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
  v731 = 2654435761u * *v2.i64;
  if (v11 >= 0.0)
  {
    if (v11 <= 0.0)
    {
      goto LABEL_19;
    }

    v13 = v731 + v11;
  }

  else
  {
    v13 = v731 - fabs(v11);
  }

  v731 = v13;
LABEL_19:
  if ((v5 & 0x100) != 0)
  {
    timeOfDayBucket = self->_timeOfDayBucket;
    if (timeOfDayBucket < 0.0)
    {
      timeOfDayBucket = -timeOfDayBucket;
    }

    *v2.i64 = floor(timeOfDayBucket + 0.5);
    v16 = (timeOfDayBucket - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v17), v3, v2);
    v14 = 2654435761u * *v2.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  v715 = v14;
  if ((v5 & 0x200) != 0)
  {
    timeOfDayPopularity = self->_timeOfDayPopularity;
    if (timeOfDayPopularity < 0.0)
    {
      timeOfDayPopularity = -timeOfDayPopularity;
    }

    *v2.i64 = floor(timeOfDayPopularity + 0.5);
    v20 = (timeOfDayPopularity - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v21), v3, v2);
    v18 = 2654435761u * *v2.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v714 = v18;
  v22 = *(&self->_has + 1);
  if ((v22 & 0x8000000000000) == 0)
  {
    v742 = 0;
    goto LABEL_44;
  }

  coarseTimeOfDayPopularity = self->_coarseTimeOfDayPopularity;
  if (coarseTimeOfDayPopularity < 0.0)
  {
    coarseTimeOfDayPopularity = -coarseTimeOfDayPopularity;
  }

  *v2.i64 = floor(coarseTimeOfDayPopularity + 0.5);
  v24 = (coarseTimeOfDayPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
  v742 = 2654435761u * *v2.i64;
  if (v24 >= 0.0)
  {
    if (v24 <= 0.0)
    {
      goto LABEL_44;
    }

    v26 = v742 + v24;
  }

  else
  {
    v26 = v742 - fabs(v24);
  }

  v742 = v26;
LABEL_44:
  if ((v5 & 8) == 0)
  {
    v741 = 0;
    goto LABEL_53;
  }

  launchPopularity = self->_launchPopularity;
  if (launchPopularity < 0.0)
  {
    launchPopularity = -launchPopularity;
  }

  *v2.i64 = floor(launchPopularity + 0.5);
  v28 = (launchPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
  v741 = 2654435761u * *v2.i64;
  if (v28 >= 0.0)
  {
    if (v28 <= 0.0)
    {
      goto LABEL_53;
    }

    v30 = v741 + v28;
  }

  else
  {
    v30 = v741 - fabs(v28);
  }

  v741 = v30;
LABEL_53:
  if ((v5 & 4) == 0)
  {
    v740 = 0;
    goto LABEL_62;
  }

  launchDayOfWeekPopularity = self->_launchDayOfWeekPopularity;
  if (launchDayOfWeekPopularity < 0.0)
  {
    launchDayOfWeekPopularity = -launchDayOfWeekPopularity;
  }

  *v2.i64 = floor(launchDayOfWeekPopularity + 0.5);
  v32 = (launchDayOfWeekPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v33), v3, v2);
  v740 = 2654435761u * *v2.i64;
  if (v32 >= 0.0)
  {
    if (v32 <= 0.0)
    {
      goto LABEL_62;
    }

    v34 = v740 + v32;
  }

  else
  {
    v34 = v740 - fabs(v32);
  }

  v740 = v34;
LABEL_62:
  if ((v22 & 0x40000000000000) == 0)
  {
    v739 = 0;
    goto LABEL_71;
  }

  dayOfWeekBucket = self->_dayOfWeekBucket;
  if (dayOfWeekBucket < 0.0)
  {
    dayOfWeekBucket = -dayOfWeekBucket;
  }

  *v2.i64 = floor(dayOfWeekBucket + 0.5);
  v36 = (dayOfWeekBucket - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v37), v3, v2);
  v739 = 2654435761u * *v2.i64;
  if (v36 >= 0.0)
  {
    if (v36 <= 0.0)
    {
      goto LABEL_71;
    }

    v38 = v739 + v36;
  }

  else
  {
    v38 = v739 - fabs(v36);
  }

  v739 = v38;
LABEL_71:
  if ((v22 & 0x80000000000000) == 0)
  {
    v738 = 0;
    goto LABEL_80;
  }

  dayOfWeekPopularity = self->_dayOfWeekPopularity;
  if (dayOfWeekPopularity < 0.0)
  {
    dayOfWeekPopularity = -dayOfWeekPopularity;
  }

  *v2.i64 = floor(dayOfWeekPopularity + 0.5);
  v40 = (dayOfWeekPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v41.f64[0] = NAN;
  v41.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v41), v3, v2);
  v738 = 2654435761u * *v2.i64;
  if (v40 >= 0.0)
  {
    if (v40 <= 0.0)
    {
      goto LABEL_80;
    }

    v42 = v738 + v40;
  }

  else
  {
    v42 = v738 - fabs(v40);
  }

  v738 = v42;
LABEL_80:
  if ((v22 & 0x800000000000000) == 0)
  {
    v737 = 0;
    goto LABEL_89;
  }

  entropyLaunchPopularity = self->_entropyLaunchPopularity;
  if (entropyLaunchPopularity < 0.0)
  {
    entropyLaunchPopularity = -entropyLaunchPopularity;
  }

  *v2.i64 = floor(entropyLaunchPopularity + 0.5);
  v44 = (entropyLaunchPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v45.f64[0] = NAN;
  v45.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v45), v3, v2);
  v737 = 2654435761u * *v2.i64;
  if (v44 >= 0.0)
  {
    if (v44 <= 0.0)
    {
      goto LABEL_89;
    }

    v46 = v737 + v44;
  }

  else
  {
    v46 = v737 - fabs(v44);
  }

  v737 = v46;
LABEL_89:
  if ((v22 & 0x100000000000000) == 0)
  {
    v736 = 0;
    goto LABEL_98;
  }

  entropyDayOfWeekPopularity = self->_entropyDayOfWeekPopularity;
  if (entropyDayOfWeekPopularity < 0.0)
  {
    entropyDayOfWeekPopularity = -entropyDayOfWeekPopularity;
  }

  *v2.i64 = floor(entropyDayOfWeekPopularity + 0.5);
  v48 = (entropyDayOfWeekPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v49), v3, v2);
  v736 = 2654435761u * *v2.i64;
  if (v48 >= 0.0)
  {
    if (v48 <= 0.0)
    {
      goto LABEL_98;
    }

    v50 = v736 + v48;
  }

  else
  {
    v50 = v736 - fabs(v48);
  }

  v736 = v50;
LABEL_98:
  if ((v22 & 0x400000000000000) != 0)
  {
    entropyDayOfWeekPopularityByDay = self->_entropyDayOfWeekPopularityByDay;
    if (entropyDayOfWeekPopularityByDay < 0.0)
    {
      entropyDayOfWeekPopularityByDay = -entropyDayOfWeekPopularityByDay;
    }

    *v2.i64 = floor(entropyDayOfWeekPopularityByDay + 0.5);
    v53 = (entropyDayOfWeekPopularityByDay - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v54), v3, v2);
    v51 = 2654435761u * *v2.i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabs(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  v713 = v51;
  if ((v22 & 0x200000000000000) == 0)
  {
    v735 = 0;
    goto LABEL_115;
  }

  entropyDayOfWeekPopularityByApp = self->_entropyDayOfWeekPopularityByApp;
  if (entropyDayOfWeekPopularityByApp < 0.0)
  {
    entropyDayOfWeekPopularityByApp = -entropyDayOfWeekPopularityByApp;
  }

  *v2.i64 = floor(entropyDayOfWeekPopularityByApp + 0.5);
  v56 = (entropyDayOfWeekPopularityByApp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v57.f64[0] = NAN;
  v57.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v57), v3, v2);
  v735 = 2654435761u * *v2.i64;
  if (v56 >= 0.0)
  {
    if (v56 <= 0.0)
    {
      goto LABEL_115;
    }

    v58 = v735 + v56;
  }

  else
  {
    v58 = v735 - fabs(v56);
  }

  v735 = v58;
LABEL_115:
  if (v22 < 0)
  {
    entropyTrendingPopularity = self->_entropyTrendingPopularity;
    if (entropyTrendingPopularity < 0.0)
    {
      entropyTrendingPopularity = -entropyTrendingPopularity;
    }

    *v2.i64 = floor(entropyTrendingPopularity + 0.5);
    v61 = (entropyTrendingPopularity - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v62), v3, v2);
    v59 = 2654435761u * *v2.i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    entropySSIDPopularity = self->_entropySSIDPopularity;
    if (entropySSIDPopularity < 0.0)
    {
      entropySSIDPopularity = -entropySSIDPopularity;
    }

    *v2.i64 = floor(entropySSIDPopularity + 0.5);
    v65 = (entropySSIDPopularity - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v66.f64[0] = NAN;
    v66.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v66), v3, v2);
    v63 = 2654435761u * *v2.i64;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v63 += v65;
      }
    }

    else
    {
      v63 -= fabs(v65);
    }
  }

  else
  {
    v63 = 0;
  }

  if ((v22 & 0x4000000000000000) != 0)
  {
    entropySSIDPopularityBySSID = self->_entropySSIDPopularityBySSID;
    if (entropySSIDPopularityBySSID < 0.0)
    {
      entropySSIDPopularityBySSID = -entropySSIDPopularityBySSID;
    }

    *v2.i64 = floor(entropySSIDPopularityBySSID + 0.5);
    v69 = (entropySSIDPopularityBySSID - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v70.f64[0] = NAN;
    v70.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v70), v3, v2);
    v67 = 2654435761u * *v2.i64;
    if (v69 >= 0.0)
    {
      if (v69 > 0.0)
      {
        v67 += v69;
      }
    }

    else
    {
      v67 -= fabs(v69);
    }
  }

  else
  {
    v67 = 0;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    entropySSIDPopularityByApp = self->_entropySSIDPopularityByApp;
    if (entropySSIDPopularityByApp < 0.0)
    {
      entropySSIDPopularityByApp = -entropySSIDPopularityByApp;
    }

    *v2.i64 = floor(entropySSIDPopularityByApp + 0.5);
    v73 = (entropySSIDPopularityByApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v74.f64[0] = NAN;
    v74.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v74), v3, v2);
    v71 = 2654435761u * *v2.i64;
    if (v73 >= 0.0)
    {
      if (v73 > 0.0)
      {
        v71 += v73;
      }
    }

    else
    {
      v71 -= fabs(v73);
    }
  }

  else
  {
    v71 = 0;
  }

  v712 = v59;
  v711 = v63;
  v710 = v67;
  v709 = v71;
  if ((v5 & 0x1000) != 0)
  {
    totalNumberOfLaunches = self->_totalNumberOfLaunches;
    if (totalNumberOfLaunches < 0.0)
    {
      totalNumberOfLaunches = -totalNumberOfLaunches;
    }

    *v2.i64 = floor(totalNumberOfLaunches + 0.5);
    v77 = (totalNumberOfLaunches - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v78.f64[0] = NAN;
    v78.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v78), v3, v2);
    v75 = 2654435761u * *v2.i64;
    if (v77 >= 0.0)
    {
      if (v77 > 0.0)
      {
        v75 += v77;
      }
    }

    else
    {
      v75 -= fabs(v77);
    }
  }

  else
  {
    v75 = 0;
  }

  v708 = v75;
  v79 = *p_has;
  if ((*p_has & 1) == 0)
  {
    v734 = 0;
    goto LABEL_164;
  }

  airplaneModePopularity = self->_airplaneModePopularity;
  if (airplaneModePopularity < 0.0)
  {
    airplaneModePopularity = -airplaneModePopularity;
  }

  *v2.i64 = floor(airplaneModePopularity + 0.5);
  v81 = (airplaneModePopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v82.f64[0] = NAN;
  v82.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v82), v3, v2);
  v734 = 2654435761u * *v2.i64;
  if (v81 >= 0.0)
  {
    if (v81 <= 0.0)
    {
      goto LABEL_164;
    }

    v83 = v734 + v81;
  }

  else
  {
    v83 = v734 - fabs(v81);
  }

  v734 = v83;
LABEL_164:
  if ((v5 & 0x400) == 0)
  {
    v733 = 0;
    goto LABEL_173;
  }

  totalNumberOfAirplaneModeLaunches = self->_totalNumberOfAirplaneModeLaunches;
  if (totalNumberOfAirplaneModeLaunches < 0.0)
  {
    totalNumberOfAirplaneModeLaunches = -totalNumberOfAirplaneModeLaunches;
  }

  *v2.i64 = floor(totalNumberOfAirplaneModeLaunches + 0.5);
  v85 = (totalNumberOfAirplaneModeLaunches - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v86.f64[0] = NAN;
  v86.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v86), v3, v2);
  v733 = 2654435761u * *v2.i64;
  if (v85 >= 0.0)
  {
    if (v85 <= 0.0)
    {
      goto LABEL_173;
    }

    v87 = v733 + v85;
  }

  else
  {
    v87 = v733 - fabs(v85);
  }

  v733 = v87;
LABEL_173:
  if ((v5 & 0x8000) != 0)
  {
    trendingPopularity = self->_trendingPopularity;
    if (trendingPopularity < 0.0)
    {
      trendingPopularity = -trendingPopularity;
    }

    *v2.i64 = floor(trendingPopularity + 0.5);
    v90 = (trendingPopularity - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v91.f64[0] = NAN;
    v91.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v91), v3, v2);
    v88 = 2654435761u * *v2.i64;
    if (v90 >= 0.0)
    {
      if (v90 > 0.0)
      {
        v88 += v90;
      }
    }

    else
    {
      v88 -= fabs(v90);
    }
  }

  else
  {
    v88 = 0;
  }

  if ((v5 & 0x4000) != 0)
  {
    totalNumberOfTrendingLaunches = self->_totalNumberOfTrendingLaunches;
    if (totalNumberOfTrendingLaunches < 0.0)
    {
      totalNumberOfTrendingLaunches = -totalNumberOfTrendingLaunches;
    }

    *v2.i64 = floor(totalNumberOfTrendingLaunches + 0.5);
    v94 = (totalNumberOfTrendingLaunches - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v95.f64[0] = NAN;
    v95.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v95), v3, v2);
    v92 = 2654435761u * *v2.i64;
    if (v94 >= 0.0)
    {
      if (v94 > 0.0)
      {
        v92 += v94;
      }
    }

    else
    {
      v92 -= fabs(v94);
    }
  }

  else
  {
    v92 = 0;
  }

  v706 = v92;
  v707 = v88;
  if ((v5 & 0x80) == 0)
  {
    v730 = 0;
    goto LABEL_198;
  }

  sSIDPopularity = self->_sSIDPopularity;
  if (sSIDPopularity < 0.0)
  {
    sSIDPopularity = -sSIDPopularity;
  }

  *v2.i64 = floor(sSIDPopularity + 0.5);
  v97 = (sSIDPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v98.f64[0] = NAN;
  v98.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v98), v3, v2);
  v730 = 2654435761u * *v2.i64;
  if (v97 >= 0.0)
  {
    if (v97 <= 0.0)
    {
      goto LABEL_198;
    }

    v99 = v730 + v97;
  }

  else
  {
    v99 = v730 - fabs(v97);
  }

  v730 = v99;
LABEL_198:
  if ((v5 & 0x2000) == 0)
  {
    v729 = 0;
    goto LABEL_207;
  }

  totalNumberOfSSIDLaunches = self->_totalNumberOfSSIDLaunches;
  if (totalNumberOfSSIDLaunches < 0.0)
  {
    totalNumberOfSSIDLaunches = -totalNumberOfSSIDLaunches;
  }

  *v2.i64 = floor(totalNumberOfSSIDLaunches + 0.5);
  v101 = (totalNumberOfSSIDLaunches - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v102.f64[0] = NAN;
  v102.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v102), v3, v2);
  v729 = 2654435761u * *v2.i64;
  if (v101 >= 0.0)
  {
    if (v101 <= 0.0)
    {
      goto LABEL_207;
    }

    v103 = v729 + v101;
  }

  else
  {
    v103 = v729 - fabs(v101);
  }

  v729 = v103;
LABEL_207:
  if ((v5 & 0x20) == 0)
  {
    v728 = 0;
    goto LABEL_216;
  }

  onWifi = self->_onWifi;
  if (onWifi < 0.0)
  {
    onWifi = -onWifi;
  }

  *v2.i64 = floor(onWifi + 0.5);
  v105 = (onWifi - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v106.f64[0] = NAN;
  v106.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v106), v3, v2);
  v728 = 2654435761u * *v2.i64;
  if (v105 >= 0.0)
  {
    if (v105 <= 0.0)
    {
      goto LABEL_216;
    }

    v107 = v728 + v105;
  }

  else
  {
    v107 = v728 - fabs(v105);
  }

  v728 = v107;
LABEL_216:
  if ((v22 & 0x10000000000000) == 0)
  {
    v725 = 0;
    goto LABEL_225;
  }

  coreMotionPopularity = self->_coreMotionPopularity;
  if (coreMotionPopularity < 0.0)
  {
    coreMotionPopularity = -coreMotionPopularity;
  }

  *v2.i64 = floor(coreMotionPopularity + 0.5);
  v109 = (coreMotionPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v110.f64[0] = NAN;
  v110.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v110), v3, v2);
  v725 = 2654435761u * *v2.i64;
  if (v109 >= 0.0)
  {
    if (v109 <= 0.0)
    {
      goto LABEL_225;
    }

    v111 = v725 + v109;
  }

  else
  {
    v111 = v725 - fabs(v109);
  }

  v725 = v111;
LABEL_225:
  if ((v5 & 0x800) == 0)
  {
    v726 = 0;
    goto LABEL_234;
  }

  totalNumberOfCoreMotionLaunches = self->_totalNumberOfCoreMotionLaunches;
  if (totalNumberOfCoreMotionLaunches < 0.0)
  {
    totalNumberOfCoreMotionLaunches = -totalNumberOfCoreMotionLaunches;
  }

  *v2.i64 = floor(totalNumberOfCoreMotionLaunches + 0.5);
  v113 = (totalNumberOfCoreMotionLaunches - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v114.f64[0] = NAN;
  v114.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v114), v3, v2);
  v726 = 2654435761u * *v2.i64;
  if (v113 >= 0.0)
  {
    if (v113 <= 0.0)
    {
      goto LABEL_234;
    }

    v115 = v726 + v113;
  }

  else
  {
    v115 = v726 - fabs(v113);
  }

  v726 = v115;
LABEL_234:
  if ((v5 & 1) == 0)
  {
    v724 = 0;
    goto LABEL_243;
  }

  isDateInWeekendOnDevice = self->_isDateInWeekendOnDevice;
  if (isDateInWeekendOnDevice < 0.0)
  {
    isDateInWeekendOnDevice = -isDateInWeekendOnDevice;
  }

  *v2.i64 = floor(isDateInWeekendOnDevice + 0.5);
  v117 = (isDateInWeekendOnDevice - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v118.f64[0] = NAN;
  v118.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v118), v3, v2);
  v724 = 2654435761u * *v2.i64;
  if (v117 >= 0.0)
  {
    if (v117 <= 0.0)
    {
      goto LABEL_243;
    }

    v119 = v724 + v117;
  }

  else
  {
    v119 = v724 - fabs(v117);
  }

  v724 = v119;
LABEL_243:
  if ((v79 & 4) == 0)
  {
    v723 = 0;
    goto LABEL_252;
  }

  ambientLightTypePopularity = self->_ambientLightTypePopularity;
  if (ambientLightTypePopularity < 0.0)
  {
    ambientLightTypePopularity = -ambientLightTypePopularity;
  }

  *v2.i64 = floor(ambientLightTypePopularity + 0.5);
  v121 = (ambientLightTypePopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v122.f64[0] = NAN;
  v122.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v122), v3, v2);
  v723 = 2654435761u * *v2.i64;
  if (v121 >= 0.0)
  {
    if (v121 <= 0.0)
    {
      goto LABEL_252;
    }

    v123 = v723 + v121;
  }

  else
  {
    v123 = v723 - fabs(v121);
  }

  v723 = v123;
LABEL_252:
  if ((v79 & 2) == 0)
  {
    v722 = 0;
    goto LABEL_261;
  }

  ambientLightTypeLaunchPopularity = self->_ambientLightTypeLaunchPopularity;
  if (ambientLightTypeLaunchPopularity < 0.0)
  {
    ambientLightTypeLaunchPopularity = -ambientLightTypeLaunchPopularity;
  }

  *v2.i64 = floor(ambientLightTypeLaunchPopularity + 0.5);
  v125 = (ambientLightTypeLaunchPopularity - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v126.f64[0] = NAN;
  v126.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v126), v3, v2);
  v722 = 2654435761u * *v2.i64;
  if (v125 >= 0.0)
  {
    if (v125 <= 0.0)
    {
      goto LABEL_261;
    }

    v127 = v722 + v125;
  }

  else
  {
    v127 = v722 - fabs(v125);
  }

  v722 = v127;
LABEL_261:
  if ((v22 & 0x2000000000000) != 0)
  {
    appTimeOfDayLaunches = self->_appTimeOfDayLaunches;
    if (appTimeOfDayLaunches < 0.0)
    {
      appTimeOfDayLaunches = -appTimeOfDayLaunches;
    }

    *v2.i64 = floor(appTimeOfDayLaunches + 0.5);
    v130 = (appTimeOfDayLaunches - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v131.f64[0] = NAN;
    v131.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v131), v3, v2);
    v128 = 2654435761u * *v2.i64;
    if (v130 >= 0.0)
    {
      if (v130 > 0.0)
      {
        v128 += v130;
      }
    }

    else
    {
      v128 -= fabs(v130);
    }
  }

  else
  {
    v128 = 0;
  }

  v705 = v128;
  if ((v79 & 8) != 0)
  {
    appDayOfWeekLaunches = self->_appDayOfWeekLaunches;
    if (appDayOfWeekLaunches < 0.0)
    {
      appDayOfWeekLaunches = -appDayOfWeekLaunches;
    }

    *v2.i64 = floor(appDayOfWeekLaunches + 0.5);
    v134 = (appDayOfWeekLaunches - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v135.f64[0] = NAN;
    v135.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v135), v3, v2);
    v132 = 2654435761u * *v2.i64;
    if (v134 >= 0.0)
    {
      if (v134 > 0.0)
      {
        v132 += v134;
      }
    }

    else
    {
      v132 -= fabs(v134);
    }
  }

  else
  {
    v132 = 0;
  }

  v699 = v132;
  if ((v22 & 0x1000000000000) != 0)
  {
    appTimeAndDayOfWeekPopularity = self->_appTimeAndDayOfWeekPopularity;
    if (appTimeAndDayOfWeekPopularity < 0.0)
    {
      appTimeAndDayOfWeekPopularity = -appTimeAndDayOfWeekPopularity;
    }

    *v2.i64 = floor(appTimeAndDayOfWeekPopularity + 0.5);
    v138 = (appTimeAndDayOfWeekPopularity - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v139.f64[0] = NAN;
    v139.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v139), v3, v2);
    v136 = 2654435761u * *v2.i64;
    if (v138 >= 0.0)
    {
      if (v138 > 0.0)
      {
        v136 += v138;
      }
    }

    else
    {
      v136 -= fabs(v138);
    }
  }

  else
  {
    v136 = 0;
  }

  v704 = v136;
  if ((v22 & 0x400000000000) == 0)
  {
    v727 = 0;
    goto LABEL_294;
  }

  appPopularityGivenTimeAndDayOfWeek = self->_appPopularityGivenTimeAndDayOfWeek;
  if (appPopularityGivenTimeAndDayOfWeek < 0.0)
  {
    appPopularityGivenTimeAndDayOfWeek = -appPopularityGivenTimeAndDayOfWeek;
  }

  *v2.i64 = floor(appPopularityGivenTimeAndDayOfWeek + 0.5);
  v141 = (appPopularityGivenTimeAndDayOfWeek - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v142.f64[0] = NAN;
  v142.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v142), v3, v2);
  v727 = 2654435761u * *v2.i64;
  if (v141 >= 0.0)
  {
    if (v141 <= 0.0)
    {
      goto LABEL_294;
    }

    v143 = v727 + v141;
  }

  else
  {
    v143 = v727 - fabs(v141);
  }

  v727 = v143;
LABEL_294:
  if ((v22 & 0x800000000000) != 0)
  {
    appPopularityOfTimeAndDayOfWeekGivenApp = self->_appPopularityOfTimeAndDayOfWeekGivenApp;
    if (appPopularityOfTimeAndDayOfWeekGivenApp < 0.0)
    {
      appPopularityOfTimeAndDayOfWeekGivenApp = -appPopularityOfTimeAndDayOfWeekGivenApp;
    }

    *v2.i64 = floor(appPopularityOfTimeAndDayOfWeekGivenApp + 0.5);
    v146 = (appPopularityOfTimeAndDayOfWeekGivenApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v147.f64[0] = NAN;
    v147.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v147), v3, v2);
    v144 = 2654435761u * *v2.i64;
    if (v146 >= 0.0)
    {
      if (v146 > 0.0)
      {
        v144 += v146;
      }
    }

    else
    {
      v144 -= fabs(v146);
    }
  }

  else
  {
    v144 = 0;
  }

  v703 = v144;
  if ((v22 & 0x4000000000000) == 0)
  {
    v721 = 0;
    goto LABEL_311;
  }

  appTotalNumberOfTimeAndDayOfWeekLaunches = self->_appTotalNumberOfTimeAndDayOfWeekLaunches;
  if (appTotalNumberOfTimeAndDayOfWeekLaunches < 0.0)
  {
    appTotalNumberOfTimeAndDayOfWeekLaunches = -appTotalNumberOfTimeAndDayOfWeekLaunches;
  }

  *v2.i64 = floor(appTotalNumberOfTimeAndDayOfWeekLaunches + 0.5);
  v149 = (appTotalNumberOfTimeAndDayOfWeekLaunches - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v150.f64[0] = NAN;
  v150.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v150), v3, v2);
  v721 = 2654435761u * *v2.i64;
  if (v149 >= 0.0)
  {
    if (v149 <= 0.0)
    {
      goto LABEL_311;
    }

    v151 = v721 + v149;
  }

  else
  {
    v151 = v721 - fabs(v149);
  }

  v721 = v151;
LABEL_311:
  if ((v79 & 0x4000000000000000) != 0)
  {
    appLaunchesCoarseTimePowLocationForAppInContext = self->_appLaunchesCoarseTimePowLocationForAppInContext;
    if (appLaunchesCoarseTimePowLocationForAppInContext < 0.0)
    {
      appLaunchesCoarseTimePowLocationForAppInContext = -appLaunchesCoarseTimePowLocationForAppInContext;
    }

    *v2.i64 = floor(appLaunchesCoarseTimePowLocationForAppInContext + 0.5);
    v154 = (appLaunchesCoarseTimePowLocationForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v155.f64[0] = NAN;
    v155.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v155), v3, v2);
    v152 = 2654435761u * *v2.i64;
    if (v154 >= 0.0)
    {
      if (v154 > 0.0)
      {
        v152 += v154;
      }
    }

    else
    {
      v152 -= fabs(v154);
    }
  }

  else
  {
    v152 = 0;
  }

  v702 = v152;
  if (v79 < 0)
  {
    appLaunchesCoarseTimePowLocationInContext = self->_appLaunchesCoarseTimePowLocationInContext;
    if (appLaunchesCoarseTimePowLocationInContext < 0.0)
    {
      appLaunchesCoarseTimePowLocationInContext = -appLaunchesCoarseTimePowLocationInContext;
    }

    *v2.i64 = floor(appLaunchesCoarseTimePowLocationInContext + 0.5);
    v158 = (appLaunchesCoarseTimePowLocationInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v159.f64[0] = NAN;
    v159.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v159), v3, v2);
    v156 = 2654435761u * *v2.i64;
    if (v158 >= 0.0)
    {
      if (v158 > 0.0)
      {
        v156 += v158;
      }
    }

    else
    {
      v156 -= fabs(v158);
    }
  }

  else
  {
    v156 = 0;
  }

  if ((v79 & 0x2000000000000000) != 0)
  {
    appLaunchesCoarseTimePowLocationForApp = self->_appLaunchesCoarseTimePowLocationForApp;
    if (appLaunchesCoarseTimePowLocationForApp < 0.0)
    {
      appLaunchesCoarseTimePowLocationForApp = -appLaunchesCoarseTimePowLocationForApp;
    }

    *v2.i64 = floor(appLaunchesCoarseTimePowLocationForApp + 0.5);
    v162 = (appLaunchesCoarseTimePowLocationForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v163.f64[0] = NAN;
    v163.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v163), v3, v2);
    v160 = 2654435761u * *v2.i64;
    if (v162 >= 0.0)
    {
      if (v162 > 0.0)
      {
        v160 += v162;
      }
    }

    else
    {
      v160 -= fabs(v162);
    }
  }

  else
  {
    v160 = 0;
  }

  v701 = v160;
  if ((v79 & 0x1000000000000000) != 0)
  {
    appLaunchesCoarseTimePowLocationForAllAppsAndContexts = self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
    if (appLaunchesCoarseTimePowLocationForAllAppsAndContexts < 0.0)
    {
      appLaunchesCoarseTimePowLocationForAllAppsAndContexts = -appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
    }

    *v2.i64 = floor(appLaunchesCoarseTimePowLocationForAllAppsAndContexts + 0.5);
    v166 = (appLaunchesCoarseTimePowLocationForAllAppsAndContexts - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v167.f64[0] = NAN;
    v167.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v167), v3, v2);
    v164 = 2654435761u * *v2.i64;
    if (v166 >= 0.0)
    {
      if (v166 > 0.0)
      {
        v164 += v166;
      }
    }

    else
    {
      v164 -= fabs(v166);
    }
  }

  else
  {
    v164 = 0;
  }

  v690 = v164;
  if ((v22 & 0x20000000000) != 0)
  {
    appLaunchesSpecificTimeDowLocationForAppInContext = self->_appLaunchesSpecificTimeDowLocationForAppInContext;
    if (appLaunchesSpecificTimeDowLocationForAppInContext < 0.0)
    {
      appLaunchesSpecificTimeDowLocationForAppInContext = -appLaunchesSpecificTimeDowLocationForAppInContext;
    }

    *v2.i64 = floor(appLaunchesSpecificTimeDowLocationForAppInContext + 0.5);
    v170 = (appLaunchesSpecificTimeDowLocationForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v171.f64[0] = NAN;
    v171.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v171), v3, v2);
    v168 = 2654435761u * *v2.i64;
    if (v170 >= 0.0)
    {
      if (v170 > 0.0)
      {
        v168 += v170;
      }
    }

    else
    {
      v168 -= fabs(v170);
    }
  }

  else
  {
    v168 = 0;
  }

  v700 = v168;
  if ((v22 & 0x40000000000) != 0)
  {
    appLaunchesSpecificTimeDowLocationInContext = self->_appLaunchesSpecificTimeDowLocationInContext;
    if (appLaunchesSpecificTimeDowLocationInContext < 0.0)
    {
      appLaunchesSpecificTimeDowLocationInContext = -appLaunchesSpecificTimeDowLocationInContext;
    }

    *v2.i64 = floor(appLaunchesSpecificTimeDowLocationInContext + 0.5);
    v174 = (appLaunchesSpecificTimeDowLocationInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v175.f64[0] = NAN;
    v175.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v175), v3, v2);
    v172 = 2654435761u * *v2.i64;
    if (v174 >= 0.0)
    {
      if (v174 > 0.0)
      {
        v172 += v174;
      }
    }

    else
    {
      v172 -= fabs(v174);
    }
  }

  else
  {
    v172 = 0;
  }

  if ((v22 & 0x10000000000) != 0)
  {
    appLaunchesSpecificTimeDowLocationForApp = self->_appLaunchesSpecificTimeDowLocationForApp;
    if (appLaunchesSpecificTimeDowLocationForApp < 0.0)
    {
      appLaunchesSpecificTimeDowLocationForApp = -appLaunchesSpecificTimeDowLocationForApp;
    }

    *v2.i64 = floor(appLaunchesSpecificTimeDowLocationForApp + 0.5);
    v178 = (appLaunchesSpecificTimeDowLocationForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v179.f64[0] = NAN;
    v179.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v179), v3, v2);
    v176 = 2654435761u * *v2.i64;
    if (v178 >= 0.0)
    {
      if (v178 > 0.0)
      {
        v176 += v178;
      }
    }

    else
    {
      v176 -= fabs(v178);
    }
  }

  else
  {
    v176 = 0;
  }

  v697 = v176;
  if ((v22 & 0x8000000000) != 0)
  {
    appLaunchesSpecificTimeDowLocationForAllAppsAndContexts = self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
    if (appLaunchesSpecificTimeDowLocationForAllAppsAndContexts < 0.0)
    {
      appLaunchesSpecificTimeDowLocationForAllAppsAndContexts = -appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
    }

    *v2.i64 = floor(appLaunchesSpecificTimeDowLocationForAllAppsAndContexts + 0.5);
    v182 = (appLaunchesSpecificTimeDowLocationForAllAppsAndContexts - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v183.f64[0] = NAN;
    v183.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v183), v3, v2);
    v180 = 2654435761u * *v2.i64;
    if (v182 >= 0.0)
    {
      if (v182 > 0.0)
      {
        v180 += v182;
      }
    }

    else
    {
      v180 -= fabs(v182);
    }
  }

  else
  {
    v180 = 0;
  }

  if ((v22 & 0x10) != 0)
  {
    appLaunchesInTimeBucket0ForApp = self->_appLaunchesInTimeBucket0ForApp;
    if (appLaunchesInTimeBucket0ForApp < 0.0)
    {
      appLaunchesInTimeBucket0ForApp = -appLaunchesInTimeBucket0ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket0ForApp + 0.5);
    v186 = (appLaunchesInTimeBucket0ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v187.f64[0] = NAN;
    v187.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v187), v3, v2);
    v184 = 2654435761u * *v2.i64;
    if (v186 >= 0.0)
    {
      if (v186 > 0.0)
      {
        v184 += v186;
      }
    }

    else
    {
      v184 -= fabs(v186);
    }
  }

  else
  {
    v184 = 0;
  }

  v695 = v184;
  if ((v22 & 0x8000) != 0)
  {
    appLaunchesInTimeBucket1ForApp = self->_appLaunchesInTimeBucket1ForApp;
    if (appLaunchesInTimeBucket1ForApp < 0.0)
    {
      appLaunchesInTimeBucket1ForApp = -appLaunchesInTimeBucket1ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket1ForApp + 0.5);
    v190 = (appLaunchesInTimeBucket1ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v191.f64[0] = NAN;
    v191.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v191), v3, v2);
    v188 = 2654435761u * *v2.i64;
    if (v190 >= 0.0)
    {
      if (v190 > 0.0)
      {
        v188 += v190;
      }
    }

    else
    {
      v188 -= fabs(v190);
    }
  }

  else
  {
    v188 = 0;
  }

  v693 = v156;
  if ((v22 & 0x200000) != 0)
  {
    appLaunchesInTimeBucket2ForApp = self->_appLaunchesInTimeBucket2ForApp;
    if (appLaunchesInTimeBucket2ForApp < 0.0)
    {
      appLaunchesInTimeBucket2ForApp = -appLaunchesInTimeBucket2ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket2ForApp + 0.5);
    v194 = (appLaunchesInTimeBucket2ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v195.f64[0] = NAN;
    v195.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v195), v3, v2);
    v192 = 2654435761u * *v2.i64;
    if (v194 >= 0.0)
    {
      if (v194 > 0.0)
      {
        v192 += v194;
      }
    }

    else
    {
      v192 -= fabs(v194);
    }
  }

  else
  {
    v192 = 0;
  }

  v694 = v192;
  if ((v22 & 0x400000) != 0)
  {
    appLaunchesInTimeBucket3ForApp = self->_appLaunchesInTimeBucket3ForApp;
    if (appLaunchesInTimeBucket3ForApp < 0.0)
    {
      appLaunchesInTimeBucket3ForApp = -appLaunchesInTimeBucket3ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket3ForApp + 0.5);
    v198 = (appLaunchesInTimeBucket3ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v199.f64[0] = NAN;
    v199.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v199), v3, v2);
    v196 = 2654435761u * *v2.i64;
    if (v198 >= 0.0)
    {
      if (v198 > 0.0)
      {
        v196 += v198;
      }
    }

    else
    {
      v196 -= fabs(v198);
    }
  }

  else
  {
    v196 = 0;
  }

  v692 = v196;
  if ((v22 & 0x800000) != 0)
  {
    appLaunchesInTimeBucket4ForApp = self->_appLaunchesInTimeBucket4ForApp;
    if (appLaunchesInTimeBucket4ForApp < 0.0)
    {
      appLaunchesInTimeBucket4ForApp = -appLaunchesInTimeBucket4ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket4ForApp + 0.5);
    v202 = (appLaunchesInTimeBucket4ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v203.f64[0] = NAN;
    v203.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v203), v3, v2);
    v200 = 2654435761u * *v2.i64;
    if (v202 >= 0.0)
    {
      if (v202 > 0.0)
      {
        v200 += v202;
      }
    }

    else
    {
      v200 -= fabs(v202);
    }
  }

  else
  {
    v200 = 0;
  }

  if ((v22 & 0x1000000) != 0)
  {
    appLaunchesInTimeBucket5ForApp = self->_appLaunchesInTimeBucket5ForApp;
    if (appLaunchesInTimeBucket5ForApp < 0.0)
    {
      appLaunchesInTimeBucket5ForApp = -appLaunchesInTimeBucket5ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket5ForApp + 0.5);
    v206 = (appLaunchesInTimeBucket5ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v207.f64[0] = NAN;
    v207.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v207), v3, v2);
    v204 = 2654435761u * *v2.i64;
    if (v206 >= 0.0)
    {
      if (v206 > 0.0)
      {
        v204 += v206;
      }
    }

    else
    {
      v204 -= fabs(v206);
    }
  }

  else
  {
    v204 = 0;
  }

  v689 = v204;
  if ((v22 & 0x2000000) != 0)
  {
    appLaunchesInTimeBucket6ForApp = self->_appLaunchesInTimeBucket6ForApp;
    if (appLaunchesInTimeBucket6ForApp < 0.0)
    {
      appLaunchesInTimeBucket6ForApp = -appLaunchesInTimeBucket6ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket6ForApp + 0.5);
    v210 = (appLaunchesInTimeBucket6ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v211.f64[0] = NAN;
    v211.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v211), v3, v2);
    v208 = 2654435761u * *v2.i64;
    if (v210 >= 0.0)
    {
      if (v210 > 0.0)
      {
        v208 += v210;
      }
    }

    else
    {
      v208 -= fabs(v210);
    }
  }

  else
  {
    v208 = 0;
  }

  if ((v22 & 0x4000000) != 0)
  {
    appLaunchesInTimeBucket7ForApp = self->_appLaunchesInTimeBucket7ForApp;
    if (appLaunchesInTimeBucket7ForApp < 0.0)
    {
      appLaunchesInTimeBucket7ForApp = -appLaunchesInTimeBucket7ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket7ForApp + 0.5);
    v214 = (appLaunchesInTimeBucket7ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v215.f64[0] = NAN;
    v215.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v215), v3, v2);
    v212 = 2654435761u * *v2.i64;
    if (v214 >= 0.0)
    {
      if (v214 > 0.0)
      {
        v212 += v214;
      }
    }

    else
    {
      v212 -= fabs(v214);
    }
  }

  else
  {
    v212 = 0;
  }

  v687 = v212;
  if ((v22 & 0x8000000) != 0)
  {
    appLaunchesInTimeBucket8ForApp = self->_appLaunchesInTimeBucket8ForApp;
    if (appLaunchesInTimeBucket8ForApp < 0.0)
    {
      appLaunchesInTimeBucket8ForApp = -appLaunchesInTimeBucket8ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket8ForApp + 0.5);
    v218 = (appLaunchesInTimeBucket8ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v219.f64[0] = NAN;
    v219.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v219), v3, v2);
    v216 = 2654435761u * *v2.i64;
    if (v218 >= 0.0)
    {
      if (v218 > 0.0)
      {
        v216 += v218;
      }
    }

    else
    {
      v216 -= fabs(v218);
    }
  }

  else
  {
    v216 = 0;
  }

  if ((v22 & 0x10000000) != 0)
  {
    appLaunchesInTimeBucket9ForApp = self->_appLaunchesInTimeBucket9ForApp;
    if (appLaunchesInTimeBucket9ForApp < 0.0)
    {
      appLaunchesInTimeBucket9ForApp = -appLaunchesInTimeBucket9ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket9ForApp + 0.5);
    v222 = (appLaunchesInTimeBucket9ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v223.f64[0] = NAN;
    v223.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v223), v3, v2);
    v220 = 2654435761u * *v2.i64;
    if (v222 >= 0.0)
    {
      if (v222 > 0.0)
      {
        v220 += v222;
      }
    }

    else
    {
      v220 -= fabs(v222);
    }
  }

  else
  {
    v220 = 0;
  }

  v685 = v220;
  if ((v22 & 0x20) != 0)
  {
    appLaunchesInTimeBucket10ForApp = self->_appLaunchesInTimeBucket10ForApp;
    if (appLaunchesInTimeBucket10ForApp < 0.0)
    {
      appLaunchesInTimeBucket10ForApp = -appLaunchesInTimeBucket10ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket10ForApp + 0.5);
    v226 = (appLaunchesInTimeBucket10ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v227.f64[0] = NAN;
    v227.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v227), v3, v2);
    v224 = 2654435761u * *v2.i64;
    if (v226 >= 0.0)
    {
      if (v226 > 0.0)
      {
        v224 += v226;
      }
    }

    else
    {
      v224 -= fabs(v226);
    }
  }

  else
  {
    v224 = 0;
  }

  if ((v22 & 0x40) != 0)
  {
    appLaunchesInTimeBucket11ForApp = self->_appLaunchesInTimeBucket11ForApp;
    if (appLaunchesInTimeBucket11ForApp < 0.0)
    {
      appLaunchesInTimeBucket11ForApp = -appLaunchesInTimeBucket11ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket11ForApp + 0.5);
    v230 = (appLaunchesInTimeBucket11ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v231.f64[0] = NAN;
    v231.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v231), v3, v2);
    v228 = 2654435761u * *v2.i64;
    if (v230 >= 0.0)
    {
      if (v230 > 0.0)
      {
        v228 += v230;
      }
    }

    else
    {
      v228 -= fabs(v230);
    }
  }

  else
  {
    v228 = 0;
  }

  v683 = v228;
  v680 = v188;
  if ((v22 & 0x80) != 0)
  {
    appLaunchesInTimeBucket12ForApp = self->_appLaunchesInTimeBucket12ForApp;
    if (appLaunchesInTimeBucket12ForApp < 0.0)
    {
      appLaunchesInTimeBucket12ForApp = -appLaunchesInTimeBucket12ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket12ForApp + 0.5);
    v234 = (appLaunchesInTimeBucket12ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v235.f64[0] = NAN;
    v235.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v235), v3, v2);
    v232 = 2654435761u * *v2.i64;
    if (v234 >= 0.0)
    {
      if (v234 > 0.0)
      {
        v232 += v234;
      }
    }

    else
    {
      v232 -= fabs(v234);
    }
  }

  else
  {
    v232 = 0;
  }

  v682 = v232;
  if ((v22 & 0x100) != 0)
  {
    appLaunchesInTimeBucket13ForApp = self->_appLaunchesInTimeBucket13ForApp;
    if (appLaunchesInTimeBucket13ForApp < 0.0)
    {
      appLaunchesInTimeBucket13ForApp = -appLaunchesInTimeBucket13ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket13ForApp + 0.5);
    v238 = (appLaunchesInTimeBucket13ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v239.f64[0] = NAN;
    v239.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v239), v3, v2);
    v236 = 2654435761u * *v2.i64;
    if (v238 >= 0.0)
    {
      if (v238 > 0.0)
      {
        v236 += v238;
      }
    }

    else
    {
      v236 -= fabs(v238);
    }
  }

  else
  {
    v236 = 0;
  }

  if ((v22 & 0x200) != 0)
  {
    appLaunchesInTimeBucket14ForApp = self->_appLaunchesInTimeBucket14ForApp;
    if (appLaunchesInTimeBucket14ForApp < 0.0)
    {
      appLaunchesInTimeBucket14ForApp = -appLaunchesInTimeBucket14ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket14ForApp + 0.5);
    v242 = (appLaunchesInTimeBucket14ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v243.f64[0] = NAN;
    v243.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v243), v3, v2);
    v240 = 2654435761u * *v2.i64;
    if (v242 >= 0.0)
    {
      if (v242 > 0.0)
      {
        v240 += v242;
      }
    }

    else
    {
      v240 -= fabs(v242);
    }
  }

  else
  {
    v240 = 0;
  }

  v681 = v240;
  if ((v22 & 0x400) != 0)
  {
    appLaunchesInTimeBucket15ForApp = self->_appLaunchesInTimeBucket15ForApp;
    if (appLaunchesInTimeBucket15ForApp < 0.0)
    {
      appLaunchesInTimeBucket15ForApp = -appLaunchesInTimeBucket15ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket15ForApp + 0.5);
    v246 = (appLaunchesInTimeBucket15ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v247.f64[0] = NAN;
    v247.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v247), v3, v2);
    v244 = 2654435761u * *v2.i64;
    if (v246 >= 0.0)
    {
      if (v246 > 0.0)
      {
        v244 += v246;
      }
    }

    else
    {
      v244 -= fabs(v246);
    }
  }

  else
  {
    v244 = 0;
  }

  if ((v22 & 0x800) != 0)
  {
    appLaunchesInTimeBucket16ForApp = self->_appLaunchesInTimeBucket16ForApp;
    if (appLaunchesInTimeBucket16ForApp < 0.0)
    {
      appLaunchesInTimeBucket16ForApp = -appLaunchesInTimeBucket16ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket16ForApp + 0.5);
    v250 = (appLaunchesInTimeBucket16ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v251.f64[0] = NAN;
    v251.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v251), v3, v2);
    v248 = 2654435761u * *v2.i64;
    if (v250 >= 0.0)
    {
      if (v250 > 0.0)
      {
        v248 += v250;
      }
    }

    else
    {
      v248 -= fabs(v250);
    }
  }

  else
  {
    v248 = 0;
  }

  v661 = v244;
  v679 = v248;
  if ((v22 & 0x1000) != 0)
  {
    appLaunchesInTimeBucket17ForApp = self->_appLaunchesInTimeBucket17ForApp;
    if (appLaunchesInTimeBucket17ForApp < 0.0)
    {
      appLaunchesInTimeBucket17ForApp = -appLaunchesInTimeBucket17ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket17ForApp + 0.5);
    v254 = (appLaunchesInTimeBucket17ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v255.f64[0] = NAN;
    v255.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v255), v3, v2);
    v252 = 2654435761u * *v2.i64;
    if (v254 >= 0.0)
    {
      if (v254 > 0.0)
      {
        v252 += v254;
      }
    }

    else
    {
      v252 -= fabs(v254);
    }
  }

  else
  {
    v252 = 0;
  }

  if ((v22 & 0x2000) != 0)
  {
    appLaunchesInTimeBucket18ForApp = self->_appLaunchesInTimeBucket18ForApp;
    if (appLaunchesInTimeBucket18ForApp < 0.0)
    {
      appLaunchesInTimeBucket18ForApp = -appLaunchesInTimeBucket18ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket18ForApp + 0.5);
    v258 = (appLaunchesInTimeBucket18ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v259.f64[0] = NAN;
    v259.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v259), v3, v2);
    v256 = 2654435761u * *v2.i64;
    if (v258 >= 0.0)
    {
      if (v258 > 0.0)
      {
        v256 += v258;
      }
    }

    else
    {
      v256 -= fabs(v258);
    }
  }

  else
  {
    v256 = 0;
  }

  v678 = v256;
  if ((v22 & 0x4000) == 0)
  {
    v719 = 0;
    goto LABEL_536;
  }

  appLaunchesInTimeBucket19ForApp = self->_appLaunchesInTimeBucket19ForApp;
  if (appLaunchesInTimeBucket19ForApp < 0.0)
  {
    appLaunchesInTimeBucket19ForApp = -appLaunchesInTimeBucket19ForApp;
  }

  *v2.i64 = floor(appLaunchesInTimeBucket19ForApp + 0.5);
  v261 = (appLaunchesInTimeBucket19ForApp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v262.f64[0] = NAN;
  v262.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v262), v3, v2);
  v719 = 2654435761u * *v2.i64;
  if (v261 >= 0.0)
  {
    if (v261 <= 0.0)
    {
      goto LABEL_536;
    }

    v263 = v719 + v261;
  }

  else
  {
    v263 = v719 - fabs(v261);
  }

  v719 = v263;
LABEL_536:
  if ((v22 & 0x10000) != 0)
  {
    appLaunchesInTimeBucket20ForApp = self->_appLaunchesInTimeBucket20ForApp;
    if (appLaunchesInTimeBucket20ForApp < 0.0)
    {
      appLaunchesInTimeBucket20ForApp = -appLaunchesInTimeBucket20ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket20ForApp + 0.5);
    v266 = (appLaunchesInTimeBucket20ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v267.f64[0] = NAN;
    v267.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v267), v3, v2);
    v264 = 2654435761u * *v2.i64;
    if (v266 >= 0.0)
    {
      if (v266 > 0.0)
      {
        v264 += v266;
      }
    }

    else
    {
      v264 -= fabs(v266);
    }
  }

  else
  {
    v264 = 0;
  }

  v677 = v264;
  if ((v22 & 0x20000) != 0)
  {
    appLaunchesInTimeBucket21ForApp = self->_appLaunchesInTimeBucket21ForApp;
    if (appLaunchesInTimeBucket21ForApp < 0.0)
    {
      appLaunchesInTimeBucket21ForApp = -appLaunchesInTimeBucket21ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket21ForApp + 0.5);
    v270 = (appLaunchesInTimeBucket21ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v271.f64[0] = NAN;
    v271.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v271), v3, v2);
    v268 = 2654435761u * *v2.i64;
    if (v270 >= 0.0)
    {
      if (v270 > 0.0)
      {
        v268 += v270;
      }
    }

    else
    {
      v268 -= fabs(v270);
    }
  }

  else
  {
    v268 = 0;
  }

  if ((v22 & 0x40000) != 0)
  {
    appLaunchesInTimeBucket22ForApp = self->_appLaunchesInTimeBucket22ForApp;
    if (appLaunchesInTimeBucket22ForApp < 0.0)
    {
      appLaunchesInTimeBucket22ForApp = -appLaunchesInTimeBucket22ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket22ForApp + 0.5);
    v274 = (appLaunchesInTimeBucket22ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v275.f64[0] = NAN;
    v275.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v275), v3, v2);
    v272 = 2654435761u * *v2.i64;
    if (v274 >= 0.0)
    {
      if (v274 > 0.0)
      {
        v272 += v274;
      }
    }

    else
    {
      v272 -= fabs(v274);
    }
  }

  else
  {
    v272 = 0;
  }

  v676 = v272;
  if ((v22 & 0x80000) != 0)
  {
    appLaunchesInTimeBucket23ForApp = self->_appLaunchesInTimeBucket23ForApp;
    if (appLaunchesInTimeBucket23ForApp < 0.0)
    {
      appLaunchesInTimeBucket23ForApp = -appLaunchesInTimeBucket23ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket23ForApp + 0.5);
    v278 = (appLaunchesInTimeBucket23ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v279.f64[0] = NAN;
    v279.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v279), v3, v2);
    v276 = 2654435761u * *v2.i64;
    if (v278 >= 0.0)
    {
      if (v278 > 0.0)
      {
        v276 += v278;
      }
    }

    else
    {
      v276 -= fabs(v278);
    }
  }

  else
  {
    v276 = 0;
  }

  v665 = v276;
  if ((v22 & 0x100000) != 0)
  {
    appLaunchesInTimeBucket24ForApp = self->_appLaunchesInTimeBucket24ForApp;
    if (appLaunchesInTimeBucket24ForApp < 0.0)
    {
      appLaunchesInTimeBucket24ForApp = -appLaunchesInTimeBucket24ForApp;
    }

    *v2.i64 = floor(appLaunchesInTimeBucket24ForApp + 0.5);
    v282 = (appLaunchesInTimeBucket24ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v283.f64[0] = NAN;
    v283.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v283), v3, v2);
    v280 = 2654435761u * *v2.i64;
    if (v282 >= 0.0)
    {
      if (v282 > 0.0)
      {
        v280 += v282;
      }
    }

    else
    {
      v280 -= fabs(v282);
    }
  }

  else
  {
    v280 = 0;
  }

  v657 = v268;
  v675 = v280;
  if ((v22 & 0x800000000) != 0)
  {
    appLaunchesOnDayOfWeekSundayForApp = self->_appLaunchesOnDayOfWeekSundayForApp;
    if (appLaunchesOnDayOfWeekSundayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekSundayForApp = -appLaunchesOnDayOfWeekSundayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekSundayForApp + 0.5);
    v286 = (appLaunchesOnDayOfWeekSundayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v287.f64[0] = NAN;
    v287.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v287), v3, v2);
    v284 = 2654435761u * *v2.i64;
    if (v286 >= 0.0)
    {
      if (v286 > 0.0)
      {
        v284 += v286;
      }
    }

    else
    {
      v284 -= fabs(v286);
    }
  }

  else
  {
    v284 = 0;
  }

  if ((v22 & 0x200000000) != 0)
  {
    appLaunchesOnDayOfWeekMondayForApp = self->_appLaunchesOnDayOfWeekMondayForApp;
    if (appLaunchesOnDayOfWeekMondayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekMondayForApp = -appLaunchesOnDayOfWeekMondayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekMondayForApp + 0.5);
    v290 = (appLaunchesOnDayOfWeekMondayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v291.f64[0] = NAN;
    v291.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v291), v3, v2);
    v288 = 2654435761u * *v2.i64;
    if (v290 >= 0.0)
    {
      if (v290 > 0.0)
      {
        v288 += v290;
      }
    }

    else
    {
      v288 -= fabs(v290);
    }
  }

  else
  {
    v288 = 0;
  }

  v674 = v288;
  if ((v22 & 0x2000000000) != 0)
  {
    appLaunchesOnDayOfWeekTuesdayForApp = self->_appLaunchesOnDayOfWeekTuesdayForApp;
    if (appLaunchesOnDayOfWeekTuesdayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekTuesdayForApp = -appLaunchesOnDayOfWeekTuesdayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekTuesdayForApp + 0.5);
    v294 = (appLaunchesOnDayOfWeekTuesdayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v295.f64[0] = NAN;
    v295.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v295), v3, v2);
    v292 = 2654435761u * *v2.i64;
    if (v294 >= 0.0)
    {
      if (v294 > 0.0)
      {
        v292 += v294;
      }
    }

    else
    {
      v292 -= fabs(v294);
    }
  }

  else
  {
    v292 = 0;
  }

  if ((v22 & 0x4000000000) != 0)
  {
    appLaunchesOnDayOfWeekWednesdayForApp = self->_appLaunchesOnDayOfWeekWednesdayForApp;
    if (appLaunchesOnDayOfWeekWednesdayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekWednesdayForApp = -appLaunchesOnDayOfWeekWednesdayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekWednesdayForApp + 0.5);
    v298 = (appLaunchesOnDayOfWeekWednesdayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v299.f64[0] = NAN;
    v299.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v299), v3, v2);
    v296 = 2654435761u * *v2.i64;
    if (v298 >= 0.0)
    {
      if (v298 > 0.0)
      {
        v296 += v298;
      }
    }

    else
    {
      v296 -= fabs(v298);
    }
  }

  else
  {
    v296 = 0;
  }

  v673 = v296;
  if ((v22 & 0x1000000000) != 0)
  {
    appLaunchesOnDayOfWeekThursdayForApp = self->_appLaunchesOnDayOfWeekThursdayForApp;
    if (appLaunchesOnDayOfWeekThursdayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekThursdayForApp = -appLaunchesOnDayOfWeekThursdayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekThursdayForApp + 0.5);
    v302 = (appLaunchesOnDayOfWeekThursdayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v303.f64[0] = NAN;
    v303.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v303), v3, v2);
    v300 = 2654435761u * *v2.i64;
    if (v302 >= 0.0)
    {
      if (v302 > 0.0)
      {
        v300 += v302;
      }
    }

    else
    {
      v300 -= fabs(v302);
    }
  }

  else
  {
    v300 = 0;
  }

  if ((v22 & 0x100000000) != 0)
  {
    appLaunchesOnDayOfWeekFridayForApp = self->_appLaunchesOnDayOfWeekFridayForApp;
    if (appLaunchesOnDayOfWeekFridayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekFridayForApp = -appLaunchesOnDayOfWeekFridayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekFridayForApp + 0.5);
    v306 = (appLaunchesOnDayOfWeekFridayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v307.f64[0] = NAN;
    v307.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v307), v3, v2);
    v304 = 2654435761u * *v2.i64;
    if (v306 >= 0.0)
    {
      if (v306 > 0.0)
      {
        v304 += v306;
      }
    }

    else
    {
      v304 -= fabs(v306);
    }
  }

  else
  {
    v304 = 0;
  }

  v672 = v304;
  if ((v22 & 0x400000000) != 0)
  {
    appLaunchesOnDayOfWeekSaturdayForApp = self->_appLaunchesOnDayOfWeekSaturdayForApp;
    if (appLaunchesOnDayOfWeekSaturdayForApp < 0.0)
    {
      appLaunchesOnDayOfWeekSaturdayForApp = -appLaunchesOnDayOfWeekSaturdayForApp;
    }

    *v2.i64 = floor(appLaunchesOnDayOfWeekSaturdayForApp + 0.5);
    v310 = (appLaunchesOnDayOfWeekSaturdayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v311.f64[0] = NAN;
    v311.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v311), v3, v2);
    v308 = 2654435761u * *v2.i64;
    if (v310 >= 0.0)
    {
      if (v310 > 0.0)
      {
        v308 += v310;
      }
    }

    else
    {
      v308 -= fabs(v310);
    }
  }

  else
  {
    v308 = 0;
  }

  if ((v79 & 0x200) != 0)
  {
    appLaunchesAtCoarseGeoHash0ForApp = self->_appLaunchesAtCoarseGeoHash0ForApp;
    if (appLaunchesAtCoarseGeoHash0ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash0ForApp = -appLaunchesAtCoarseGeoHash0ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash0ForApp + 0.5);
    v314 = (appLaunchesAtCoarseGeoHash0ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v315.f64[0] = NAN;
    v315.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v315), v3, v2);
    v312 = 2654435761u * *v2.i64;
    if (v314 >= 0.0)
    {
      if (v314 > 0.0)
      {
        v312 += v314;
      }
    }

    else
    {
      v312 -= fabs(v314);
    }
  }

  else
  {
    v312 = 0;
  }

  v646 = v308;
  v671 = v312;
  if ((v79 & 0x400) != 0)
  {
    appLaunchesAtCoarseGeoHash1ForApp = self->_appLaunchesAtCoarseGeoHash1ForApp;
    if (appLaunchesAtCoarseGeoHash1ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash1ForApp = -appLaunchesAtCoarseGeoHash1ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash1ForApp + 0.5);
    v318 = (appLaunchesAtCoarseGeoHash1ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v319.f64[0] = NAN;
    v319.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v319), v3, v2);
    v316 = 2654435761u * *v2.i64;
    if (v318 >= 0.0)
    {
      if (v318 > 0.0)
      {
        v316 += v318;
      }
    }

    else
    {
      v316 -= fabs(v318);
    }
  }

  else
  {
    v316 = 0;
  }

  if ((v79 & 0x800) != 0)
  {
    appLaunchesAtCoarseGeoHash2ForApp = self->_appLaunchesAtCoarseGeoHash2ForApp;
    if (appLaunchesAtCoarseGeoHash2ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash2ForApp = -appLaunchesAtCoarseGeoHash2ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash2ForApp + 0.5);
    v322 = (appLaunchesAtCoarseGeoHash2ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v323.f64[0] = NAN;
    v323.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v323), v3, v2);
    v320 = 2654435761u * *v2.i64;
    if (v322 >= 0.0)
    {
      if (v322 > 0.0)
      {
        v320 += v322;
      }
    }

    else
    {
      v320 -= fabs(v322);
    }
  }

  else
  {
    v320 = 0;
  }

  v669 = v320;
  if ((v79 & 0x1000) != 0)
  {
    appLaunchesAtCoarseGeoHash3ForApp = self->_appLaunchesAtCoarseGeoHash3ForApp;
    if (appLaunchesAtCoarseGeoHash3ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash3ForApp = -appLaunchesAtCoarseGeoHash3ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash3ForApp + 0.5);
    v326 = (appLaunchesAtCoarseGeoHash3ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v327.f64[0] = NAN;
    v327.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v327), v3, v2);
    v324 = 2654435761u * *v2.i64;
    if (v326 >= 0.0)
    {
      if (v326 > 0.0)
      {
        v324 += v326;
      }
    }

    else
    {
      v324 -= fabs(v326);
    }
  }

  else
  {
    v324 = 0;
  }

  if ((v79 & 0x2000) != 0)
  {
    appLaunchesAtCoarseGeoHash4ForApp = self->_appLaunchesAtCoarseGeoHash4ForApp;
    if (appLaunchesAtCoarseGeoHash4ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash4ForApp = -appLaunchesAtCoarseGeoHash4ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash4ForApp + 0.5);
    v330 = (appLaunchesAtCoarseGeoHash4ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v331.f64[0] = NAN;
    v331.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v331), v3, v2);
    v328 = 2654435761u * *v2.i64;
    if (v330 >= 0.0)
    {
      if (v330 > 0.0)
      {
        v328 += v330;
      }
    }

    else
    {
      v328 -= fabs(v330);
    }
  }

  else
  {
    v328 = 0;
  }

  v668 = v328;
  if ((v79 & 0x4000) != 0)
  {
    appLaunchesAtCoarseGeoHash5ForApp = self->_appLaunchesAtCoarseGeoHash5ForApp;
    if (appLaunchesAtCoarseGeoHash5ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash5ForApp = -appLaunchesAtCoarseGeoHash5ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash5ForApp + 0.5);
    v334 = (appLaunchesAtCoarseGeoHash5ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v335.f64[0] = NAN;
    v335.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v335), v3, v2);
    v332 = 2654435761u * *v2.i64;
    if (v334 >= 0.0)
    {
      if (v334 > 0.0)
      {
        v332 += v334;
      }
    }

    else
    {
      v332 -= fabs(v334);
    }
  }

  else
  {
    v332 = 0;
  }

  if ((v79 & 0x8000) != 0)
  {
    appLaunchesAtCoarseGeoHash6ForApp = self->_appLaunchesAtCoarseGeoHash6ForApp;
    if (appLaunchesAtCoarseGeoHash6ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash6ForApp = -appLaunchesAtCoarseGeoHash6ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash6ForApp + 0.5);
    v338 = (appLaunchesAtCoarseGeoHash6ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v339.f64[0] = NAN;
    v339.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v339), v3, v2);
    v336 = 2654435761u * *v2.i64;
    if (v338 >= 0.0)
    {
      if (v338 > 0.0)
      {
        v336 += v338;
      }
    }

    else
    {
      v336 -= fabs(v338);
    }
  }

  else
  {
    v336 = 0;
  }

  v667 = v336;
  if ((v79 & 0x10000) == 0)
  {
    v718 = 0;
    goto LABEL_697;
  }

  appLaunchesAtCoarseGeoHash7ForApp = self->_appLaunchesAtCoarseGeoHash7ForApp;
  if (appLaunchesAtCoarseGeoHash7ForApp < 0.0)
  {
    appLaunchesAtCoarseGeoHash7ForApp = -appLaunchesAtCoarseGeoHash7ForApp;
  }

  *v2.i64 = floor(appLaunchesAtCoarseGeoHash7ForApp + 0.5);
  v341 = (appLaunchesAtCoarseGeoHash7ForApp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v342.f64[0] = NAN;
  v342.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v342), v3, v2);
  v718 = 2654435761u * *v2.i64;
  if (v341 >= 0.0)
  {
    if (v341 <= 0.0)
    {
      goto LABEL_697;
    }

    v343 = v718 + v341;
  }

  else
  {
    v343 = v718 - fabs(v341);
  }

  v718 = v343;
LABEL_697:
  if ((v79 & 0x20000) != 0)
  {
    appLaunchesAtCoarseGeoHash8ForApp = self->_appLaunchesAtCoarseGeoHash8ForApp;
    if (appLaunchesAtCoarseGeoHash8ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash8ForApp = -appLaunchesAtCoarseGeoHash8ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash8ForApp + 0.5);
    v346 = (appLaunchesAtCoarseGeoHash8ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v347.f64[0] = NAN;
    v347.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v347), v3, v2);
    v344 = 2654435761u * *v2.i64;
    if (v346 >= 0.0)
    {
      if (v346 > 0.0)
      {
        v344 += v346;
      }
    }

    else
    {
      v344 -= fabs(v346);
    }
  }

  else
  {
    v344 = 0;
  }

  v666 = v344;
  if ((v79 & 0x40000) != 0)
  {
    appLaunchesAtCoarseGeoHash9ForApp = self->_appLaunchesAtCoarseGeoHash9ForApp;
    if (appLaunchesAtCoarseGeoHash9ForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHash9ForApp = -appLaunchesAtCoarseGeoHash9ForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHash9ForApp + 0.5);
    v350 = (appLaunchesAtCoarseGeoHash9ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v351.f64[0] = NAN;
    v351.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v351), v3, v2);
    v348 = 2654435761u * *v2.i64;
    if (v350 >= 0.0)
    {
      if (v350 > 0.0)
      {
        v348 += v350;
      }
    }

    else
    {
      v348 -= fabs(v350);
    }
  }

  else
  {
    v348 = 0;
  }

  v664 = v252;
  if ((v79 & 0x4000000) != 0)
  {
    appLaunchesAtSpecificGeoHash0ForApp = self->_appLaunchesAtSpecificGeoHash0ForApp;
    if (appLaunchesAtSpecificGeoHash0ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash0ForApp = -appLaunchesAtSpecificGeoHash0ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash0ForApp + 0.5);
    v354 = (appLaunchesAtSpecificGeoHash0ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v355.f64[0] = NAN;
    v355.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v355), v3, v2);
    v352 = 2654435761u * *v2.i64;
    if (v354 >= 0.0)
    {
      if (v354 > 0.0)
      {
        v352 += v354;
      }
    }

    else
    {
      v352 -= fabs(v354);
    }
  }

  else
  {
    v352 = 0;
  }

  v663 = v352;
  if ((v79 & 0x100000000) == 0)
  {
    v720 = 0;
    goto LABEL_730;
  }

  appLaunchesAtSpecificGeoHash1ForApp = self->_appLaunchesAtSpecificGeoHash1ForApp;
  if (appLaunchesAtSpecificGeoHash1ForApp < 0.0)
  {
    appLaunchesAtSpecificGeoHash1ForApp = -appLaunchesAtSpecificGeoHash1ForApp;
  }

  *v2.i64 = floor(appLaunchesAtSpecificGeoHash1ForApp + 0.5);
  v357 = (appLaunchesAtSpecificGeoHash1ForApp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v358.f64[0] = NAN;
  v358.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v358), v3, v2);
  v720 = 2654435761u * *v2.i64;
  if (v357 >= 0.0)
  {
    if (v357 <= 0.0)
    {
      goto LABEL_730;
    }

    v359 = v720 + v357;
  }

  else
  {
    v359 = v720 - fabs(v357);
  }

  v720 = v359;
LABEL_730:
  v655 = v284;
  if ((v79 & 0x200000000) != 0)
  {
    appLaunchesAtSpecificGeoHash2ForApp = self->_appLaunchesAtSpecificGeoHash2ForApp;
    if (appLaunchesAtSpecificGeoHash2ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash2ForApp = -appLaunchesAtSpecificGeoHash2ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash2ForApp + 0.5);
    v362 = (appLaunchesAtSpecificGeoHash2ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v363.f64[0] = NAN;
    v363.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v363), v3, v2);
    v360 = 2654435761u * *v2.i64;
    if (v362 >= 0.0)
    {
      if (v362 > 0.0)
      {
        v360 += v362;
      }
    }

    else
    {
      v360 -= fabs(v362);
    }
  }

  else
  {
    v360 = 0;
  }

  v660 = v360;
  if ((v79 & 0x400000000) != 0)
  {
    appLaunchesAtSpecificGeoHash3ForApp = self->_appLaunchesAtSpecificGeoHash3ForApp;
    if (appLaunchesAtSpecificGeoHash3ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash3ForApp = -appLaunchesAtSpecificGeoHash3ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash3ForApp + 0.5);
    v366 = (appLaunchesAtSpecificGeoHash3ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v367.f64[0] = NAN;
    v367.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v367), v3, v2);
    v364 = 2654435761u * *v2.i64;
    if (v366 >= 0.0)
    {
      if (v366 > 0.0)
      {
        v364 += v366;
      }
    }

    else
    {
      v364 -= fabs(v366);
    }
  }

  else
  {
    v364 = 0;
  }

  v649 = v316;
  if ((v79 & 0x800000000) != 0)
  {
    appLaunchesAtSpecificGeoHash4ForApp = self->_appLaunchesAtSpecificGeoHash4ForApp;
    if (appLaunchesAtSpecificGeoHash4ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash4ForApp = -appLaunchesAtSpecificGeoHash4ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash4ForApp + 0.5);
    v370 = (appLaunchesAtSpecificGeoHash4ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v371.f64[0] = NAN;
    v371.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v371), v3, v2);
    v368 = 2654435761u * *v2.i64;
    if (v370 >= 0.0)
    {
      if (v370 > 0.0)
      {
        v368 += v370;
      }
    }

    else
    {
      v368 -= fabs(v370);
    }
  }

  else
  {
    v368 = 0;
  }

  v658 = v368;
  if ((v79 & 0x1000000000) != 0)
  {
    appLaunchesAtSpecificGeoHash5ForApp = self->_appLaunchesAtSpecificGeoHash5ForApp;
    if (appLaunchesAtSpecificGeoHash5ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash5ForApp = -appLaunchesAtSpecificGeoHash5ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash5ForApp + 0.5);
    v374 = (appLaunchesAtSpecificGeoHash5ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v375.f64[0] = NAN;
    v375.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v375), v3, v2);
    v372 = 2654435761u * *v2.i64;
    if (v374 >= 0.0)
    {
      if (v374 > 0.0)
      {
        v372 += v374;
      }
    }

    else
    {
      v372 -= fabs(v374);
    }
  }

  else
  {
    v372 = 0;
  }

  v652 = v292;
  if ((v79 & 0x2000000000) != 0)
  {
    appLaunchesAtSpecificGeoHash6ForApp = self->_appLaunchesAtSpecificGeoHash6ForApp;
    if (appLaunchesAtSpecificGeoHash6ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash6ForApp = -appLaunchesAtSpecificGeoHash6ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash6ForApp + 0.5);
    v378 = (appLaunchesAtSpecificGeoHash6ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v379.f64[0] = NAN;
    v379.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v379), v3, v2);
    v376 = 2654435761u * *v2.i64;
    if (v378 >= 0.0)
    {
      if (v378 > 0.0)
      {
        v376 += v378;
      }
    }

    else
    {
      v376 -= fabs(v378);
    }
  }

  else
  {
    v376 = 0;
  }

  v656 = v376;
  if ((v79 & 0x4000000000) != 0)
  {
    appLaunchesAtSpecificGeoHash7ForApp = self->_appLaunchesAtSpecificGeoHash7ForApp;
    if (appLaunchesAtSpecificGeoHash7ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash7ForApp = -appLaunchesAtSpecificGeoHash7ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash7ForApp + 0.5);
    v382 = (appLaunchesAtSpecificGeoHash7ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v383.f64[0] = NAN;
    v383.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v383), v3, v2);
    v380 = 2654435761u * *v2.i64;
    if (v382 >= 0.0)
    {
      if (v382 > 0.0)
      {
        v380 += v382;
      }
    }

    else
    {
      v380 -= fabs(v382);
    }
  }

  else
  {
    v380 = 0;
  }

  if ((v79 & 0x8000000000) != 0)
  {
    appLaunchesAtSpecificGeoHash8ForApp = self->_appLaunchesAtSpecificGeoHash8ForApp;
    if (appLaunchesAtSpecificGeoHash8ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash8ForApp = -appLaunchesAtSpecificGeoHash8ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash8ForApp + 0.5);
    v386 = (appLaunchesAtSpecificGeoHash8ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v387.f64[0] = NAN;
    v387.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v387), v3, v2);
    v384 = 2654435761u * *v2.i64;
    if (v386 >= 0.0)
    {
      if (v386 > 0.0)
      {
        v384 += v386;
      }
    }

    else
    {
      v384 -= fabs(v386);
    }
  }

  else
  {
    v384 = 0;
  }

  v653 = v384;
  if ((v79 & 0x10000000000) != 0)
  {
    appLaunchesAtSpecificGeoHash9ForApp = self->_appLaunchesAtSpecificGeoHash9ForApp;
    if (appLaunchesAtSpecificGeoHash9ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash9ForApp = -appLaunchesAtSpecificGeoHash9ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash9ForApp + 0.5);
    v390 = (appLaunchesAtSpecificGeoHash9ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v391.f64[0] = NAN;
    v391.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v391), v3, v2);
    v388 = 2654435761u * *v2.i64;
    if (v390 >= 0.0)
    {
      if (v390 > 0.0)
      {
        v388 += v390;
      }
    }

    else
    {
      v388 -= fabs(v390);
    }
  }

  else
  {
    v388 = 0;
  }

  v392 = v300;
  if ((v79 & 0x8000000) != 0)
  {
    appLaunchesAtSpecificGeoHash10ForApp = self->_appLaunchesAtSpecificGeoHash10ForApp;
    if (appLaunchesAtSpecificGeoHash10ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash10ForApp = -appLaunchesAtSpecificGeoHash10ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash10ForApp + 0.5);
    v395 = (appLaunchesAtSpecificGeoHash10ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v396.f64[0] = NAN;
    v396.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v396), v3, v2);
    v393 = 2654435761u * *v2.i64;
    if (v395 >= 0.0)
    {
      if (v395 > 0.0)
      {
        v393 += v395;
      }
    }

    else
    {
      v393 -= fabs(v395);
    }
  }

  else
  {
    v393 = 0;
  }

  v650 = v393;
  v633 = v392;
  if ((v79 & 0x10000000) != 0)
  {
    appLaunchesAtSpecificGeoHash11ForApp = self->_appLaunchesAtSpecificGeoHash11ForApp;
    if (appLaunchesAtSpecificGeoHash11ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash11ForApp = -appLaunchesAtSpecificGeoHash11ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash11ForApp + 0.5);
    v399 = (appLaunchesAtSpecificGeoHash11ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v400.f64[0] = NAN;
    v400.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v400), v3, v2);
    v397 = 2654435761u * *v2.i64;
    if (v399 >= 0.0)
    {
      if (v399 > 0.0)
      {
        v397 += v399;
      }
    }

    else
    {
      v397 -= fabs(v399);
    }
  }

  else
  {
    v397 = 0;
  }

  v648 = v397;
  if ((v79 & 0x20000000) != 0)
  {
    appLaunchesAtSpecificGeoHash12ForApp = self->_appLaunchesAtSpecificGeoHash12ForApp;
    if (appLaunchesAtSpecificGeoHash12ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash12ForApp = -appLaunchesAtSpecificGeoHash12ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash12ForApp + 0.5);
    v403 = (appLaunchesAtSpecificGeoHash12ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v404.f64[0] = NAN;
    v404.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v404), v3, v2);
    v401 = 2654435761u * *v2.i64;
    if (v403 >= 0.0)
    {
      if (v403 > 0.0)
      {
        v401 += v403;
      }
    }

    else
    {
      v401 -= fabs(v403);
    }
  }

  else
  {
    v401 = 0;
  }

  v644 = v324;
  if ((v79 & 0x40000000) != 0)
  {
    appLaunchesAtSpecificGeoHash13ForApp = self->_appLaunchesAtSpecificGeoHash13ForApp;
    if (appLaunchesAtSpecificGeoHash13ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash13ForApp = -appLaunchesAtSpecificGeoHash13ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash13ForApp + 0.5);
    v407 = (appLaunchesAtSpecificGeoHash13ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v408.f64[0] = NAN;
    v408.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v408), v3, v2);
    v405 = 2654435761u * *v2.i64;
    if (v407 >= 0.0)
    {
      if (v407 > 0.0)
      {
        v405 += v407;
      }
    }

    else
    {
      v405 -= fabs(v407);
    }
  }

  else
  {
    v405 = 0;
  }

  v647 = v405;
  if ((v79 & 0x80000000) != 0)
  {
    appLaunchesAtSpecificGeoHash14ForApp = self->_appLaunchesAtSpecificGeoHash14ForApp;
    if (appLaunchesAtSpecificGeoHash14ForApp < 0.0)
    {
      appLaunchesAtSpecificGeoHash14ForApp = -appLaunchesAtSpecificGeoHash14ForApp;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHash14ForApp + 0.5);
    v412 = (appLaunchesAtSpecificGeoHash14ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v413.f64[0] = NAN;
    v413.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v413), v3, v2);
    v410 = 2654435761u * *v2.i64;
    v409 = v236;
    if (v412 >= 0.0)
    {
      if (v412 > 0.0)
      {
        v410 += v412;
      }
    }

    else
    {
      v410 -= fabs(v412);
    }
  }

  else
  {
    v409 = v236;
    v410 = 0;
  }

  v414 = v172;
  if ((v22 & 0x100000000000) != 0)
  {
    appNumberOfSpecificGeohashesForApp = self->_appNumberOfSpecificGeohashesForApp;
    if (appNumberOfSpecificGeohashesForApp < 0.0)
    {
      appNumberOfSpecificGeohashesForApp = -appNumberOfSpecificGeohashesForApp;
    }

    *v2.i64 = floor(appNumberOfSpecificGeohashesForApp + 0.5);
    v417 = (appNumberOfSpecificGeohashesForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v418.f64[0] = NAN;
    v418.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v418), v3, v2);
    v415 = 2654435761u * *v2.i64;
    if (v417 >= 0.0)
    {
      if (v417 > 0.0)
      {
        v415 += v417;
      }
    }

    else
    {
      v415 -= fabs(v417);
    }
  }

  else
  {
    v415 = 0;
  }

  v645 = v415;
  v670 = v409;
  if ((v22 & 0x80000000000) != 0)
  {
    appNumberOfCoarseGeohashesForApp = self->_appNumberOfCoarseGeohashesForApp;
    if (appNumberOfCoarseGeohashesForApp < 0.0)
    {
      appNumberOfCoarseGeohashesForApp = -appNumberOfCoarseGeohashesForApp;
    }

    *v2.i64 = floor(appNumberOfCoarseGeohashesForApp + 0.5);
    v422 = (appNumberOfCoarseGeohashesForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v423.f64[0] = NAN;
    v423.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v423), v3, v2);
    v419 = 2654435761u * *v2.i64;
    v420 = v414;
    if (v422 >= 0.0)
    {
      if (v422 > 0.0)
      {
        v419 += v422;
      }
    }

    else
    {
      v419 -= fabs(v422);
    }
  }

  else
  {
    v419 = 0;
    v420 = v414;
  }

  v643 = v419;
  v636 = v332;
  if ((v79 & 0x40) != 0)
  {
    appEntropyForTimeBuckets = self->_appEntropyForTimeBuckets;
    if (appEntropyForTimeBuckets < 0.0)
    {
      appEntropyForTimeBuckets = -appEntropyForTimeBuckets;
    }

    *v2.i64 = floor(appEntropyForTimeBuckets + 0.5);
    v426 = (appEntropyForTimeBuckets - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v427.f64[0] = NAN;
    v427.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v427), v3, v2);
    v424 = 2654435761u * *v2.i64;
    if (v426 >= 0.0)
    {
      if (v426 > 0.0)
      {
        v424 += v426;
      }
    }

    else
    {
      v424 -= fabs(v426);
    }
  }

  else
  {
    v424 = 0;
  }

  v428 = v180;
  if ((v79 & 0x20) != 0)
  {
    appEntropyForSpecificGeoHash = self->_appEntropyForSpecificGeoHash;
    if (appEntropyForSpecificGeoHash < 0.0)
    {
      appEntropyForSpecificGeoHash = -appEntropyForSpecificGeoHash;
    }

    *v2.i64 = floor(appEntropyForSpecificGeoHash + 0.5);
    v431 = (appEntropyForSpecificGeoHash - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v432.f64[0] = NAN;
    v432.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v432), v3, v2);
    v429 = 2654435761u * *v2.i64;
    if (v431 >= 0.0)
    {
      if (v431 > 0.0)
      {
        v429 += v431;
      }
    }

    else
    {
      v429 -= fabs(v431);
    }
  }

  else
  {
    v429 = 0;
  }

  v642 = v429;
  if ((v79 & 0x10) != 0)
  {
    appEntropyForCoarseGeoHash = self->_appEntropyForCoarseGeoHash;
    if (appEntropyForCoarseGeoHash < 0.0)
    {
      appEntropyForCoarseGeoHash = -appEntropyForCoarseGeoHash;
    }

    *v2.i64 = floor(appEntropyForCoarseGeoHash + 0.5);
    v436 = (appEntropyForCoarseGeoHash - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v437.f64[0] = NAN;
    v437.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v437), v3, v2);
    v433 = 2654435761u * *v2.i64;
    v434 = v428;
    if (v436 >= 0.0)
    {
      if (v436 > 0.0)
      {
        v433 += v436;
      }
    }

    else
    {
      v433 -= fabs(v436);
    }
  }

  else
  {
    v433 = 0;
    v434 = v428;
  }

  v641 = v433;
  if ((v79 & 0x40000000000) != 0)
  {
    appLaunchesAtSpecificGeoHashForAppInContext = self->_appLaunchesAtSpecificGeoHashForAppInContext;
    if (appLaunchesAtSpecificGeoHashForAppInContext < 0.0)
    {
      appLaunchesAtSpecificGeoHashForAppInContext = -appLaunchesAtSpecificGeoHashForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtSpecificGeoHashForAppInContext + 0.5);
    v440 = (appLaunchesAtSpecificGeoHashForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v441.f64[0] = NAN;
    v441.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v441), v3, v2);
    v438 = 2654435761u * *v2.i64;
    if (v440 >= 0.0)
    {
      if (v440 > 0.0)
      {
        v438 += v440;
      }
    }

    else
    {
      v438 -= fabs(v440);
    }
  }

  else
  {
    v438 = 0;
  }

  v627 = v401;
  if ((v79 & 0x100000) != 0)
  {
    appLaunchesAtCoarseGeoHashForAppInContext = self->_appLaunchesAtCoarseGeoHashForAppInContext;
    if (appLaunchesAtCoarseGeoHashForAppInContext < 0.0)
    {
      appLaunchesAtCoarseGeoHashForAppInContext = -appLaunchesAtCoarseGeoHashForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHashForAppInContext + 0.5);
    v444 = (appLaunchesAtCoarseGeoHashForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v445.f64[0] = NAN;
    v445.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v445), v3, v2);
    v442 = 2654435761u * *v2.i64;
    if (v444 >= 0.0)
    {
      if (v444 > 0.0)
      {
        v442 += v444;
      }
    }

    else
    {
      v442 -= fabs(v444);
    }
  }

  else
  {
    v442 = 0;
  }

  v639 = v442;
  if ((v79 & 0x400000) != 0)
  {
    appLaunchesAtDayOfWeekForApp = self->_appLaunchesAtDayOfWeekForApp;
    if (appLaunchesAtDayOfWeekForApp < 0.0)
    {
      appLaunchesAtDayOfWeekForApp = -appLaunchesAtDayOfWeekForApp;
    }

    *v2.i64 = floor(appLaunchesAtDayOfWeekForApp + 0.5);
    v448 = (appLaunchesAtDayOfWeekForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v449.f64[0] = NAN;
    v449.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v449), v3, v2);
    v446 = 2654435761u * *v2.i64;
    if (v448 >= 0.0)
    {
      if (v448 > 0.0)
      {
        v446 += v448;
      }
    }

    else
    {
      v446 -= fabs(v448);
    }
  }

  else
  {
    v446 = 0;
  }

  if ((v79 & 0x200000000000) != 0)
  {
    appLaunchesAtTimeAndDayForAppInContext = self->_appLaunchesAtTimeAndDayForAppInContext;
    if (appLaunchesAtTimeAndDayForAppInContext < 0.0)
    {
      appLaunchesAtTimeAndDayForAppInContext = -appLaunchesAtTimeAndDayForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtTimeAndDayForAppInContext + 0.5);
    v452 = (appLaunchesAtTimeAndDayForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v453.f64[0] = NAN;
    v453.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v453), v3, v2);
    v450 = 2654435761u * *v2.i64;
    if (v452 >= 0.0)
    {
      if (v452 > 0.0)
      {
        v450 += v452;
      }
    }

    else
    {
      v450 -= fabs(v452);
    }
  }

  else
  {
    v450 = 0;
  }

  v637 = v450;
  if ((v79 & 0x400000000000) != 0)
  {
    appLaunchesAtTimeAndDayInContext = self->_appLaunchesAtTimeAndDayInContext;
    if (appLaunchesAtTimeAndDayInContext < 0.0)
    {
      appLaunchesAtTimeAndDayInContext = -appLaunchesAtTimeAndDayInContext;
    }

    *v2.i64 = floor(appLaunchesAtTimeAndDayInContext + 0.5);
    v456 = (appLaunchesAtTimeAndDayInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v457.f64[0] = NAN;
    v457.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v457), v3, v2);
    v454 = 2654435761u * *v2.i64;
    if (v456 >= 0.0)
    {
      if (v456 > 0.0)
      {
        v454 += v456;
      }
    }

    else
    {
      v454 -= fabs(v456);
    }
  }

  else
  {
    v454 = 0;
  }

  if ((v79 & 0x100000000000) != 0)
  {
    appLaunchesAtTimeAndDayForApp = self->_appLaunchesAtTimeAndDayForApp;
    if (appLaunchesAtTimeAndDayForApp < 0.0)
    {
      appLaunchesAtTimeAndDayForApp = -appLaunchesAtTimeAndDayForApp;
    }

    *v2.i64 = floor(appLaunchesAtTimeAndDayForApp + 0.5);
    v460 = (appLaunchesAtTimeAndDayForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v461.f64[0] = NAN;
    v461.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v461), v3, v2);
    v458 = 2654435761u * *v2.i64;
    if (v460 >= 0.0)
    {
      if (v460 > 0.0)
      {
        v458 += v460;
      }
    }

    else
    {
      v458 -= fabs(v460);
    }
  }

  else
  {
    v458 = 0;
  }

  v462 = v216;
  v634 = v458;
  v463 = v208;
  if ((v79 & 0x200000) != 0)
  {
    appLaunchesAtCoarseGeoHashInContext = self->_appLaunchesAtCoarseGeoHashInContext;
    if (appLaunchesAtCoarseGeoHashInContext < 0.0)
    {
      appLaunchesAtCoarseGeoHashInContext = -appLaunchesAtCoarseGeoHashInContext;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHashInContext + 0.5);
    v467 = (appLaunchesAtCoarseGeoHashInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v468.f64[0] = NAN;
    v468.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v468), v3, v2);
    v465 = 2654435761u * *v2.i64;
    v464 = v224;
    if (v467 >= 0.0)
    {
      if (v467 > 0.0)
      {
        v465 += v467;
      }
    }

    else
    {
      v465 -= fabs(v467);
    }
  }

  else
  {
    v464 = v224;
    v465 = 0;
  }

  v469 = v200;
  if ((v79 & 0x80000) != 0)
  {
    appLaunchesAtCoarseGeoHashForApp = self->_appLaunchesAtCoarseGeoHashForApp;
    if (appLaunchesAtCoarseGeoHashForApp < 0.0)
    {
      appLaunchesAtCoarseGeoHashForApp = -appLaunchesAtCoarseGeoHashForApp;
    }

    *v2.i64 = floor(appLaunchesAtCoarseGeoHashForApp + 0.5);
    v472 = (appLaunchesAtCoarseGeoHashForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v473.f64[0] = NAN;
    v473.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v473), v3, v2);
    v470 = 2654435761u * *v2.i64;
    if (v472 >= 0.0)
    {
      if (v472 > 0.0)
      {
        v470 += v472;
      }
    }

    else
    {
      v470 -= fabs(v472);
    }
  }

  else
  {
    v470 = 0;
  }

  v631 = v470;
  v474 = v372;
  if ((v79 & 0x80000000000) == 0)
  {
    v475 = v364;
    v476 = 0;
    v477 = v469;
LABEL_944:
    v481 = v464;
    goto LABEL_945;
  }

  appLaunchesAtSpecificGeoHashInContext = self->_appLaunchesAtSpecificGeoHashInContext;
  if (appLaunchesAtSpecificGeoHashInContext < 0.0)
  {
    appLaunchesAtSpecificGeoHashInContext = -appLaunchesAtSpecificGeoHashInContext;
  }

  *v2.i64 = floor(appLaunchesAtSpecificGeoHashInContext + 0.5);
  v479 = (appLaunchesAtSpecificGeoHashInContext - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v480.f64[0] = NAN;
  v480.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v480), v3, v2);
  v476 = 2654435761u * *v2.i64;
  v477 = v469;
  v475 = v364;
  if (v479 < 0.0)
  {
    v476 -= fabs(v479);
    goto LABEL_944;
  }

  v481 = v464;
  if (v479 > 0.0)
  {
    v476 += v479;
  }

LABEL_945:
  v482 = v463;
  if ((v79 & 0x20000000000) == 0)
  {
    v717 = 0;
    v483 = v462;
LABEL_951:
    v487 = v348;
    goto LABEL_952;
  }

  appLaunchesAtSpecificGeoHashForApp = self->_appLaunchesAtSpecificGeoHashForApp;
  if (appLaunchesAtSpecificGeoHashForApp < 0.0)
  {
    appLaunchesAtSpecificGeoHashForApp = -appLaunchesAtSpecificGeoHashForApp;
  }

  *v2.i64 = floor(appLaunchesAtSpecificGeoHashForApp + 0.5);
  v485 = (appLaunchesAtSpecificGeoHashForApp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v486.f64[0] = NAN;
  v486.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v486), v3, v2);
  v483 = v462;
  if (v485 < 0.0)
  {
    v717 = 2654435761u * *v2.i64 - fabs(v485);
    goto LABEL_951;
  }

  v717 = 2654435761u * *v2.i64;
  v487 = v348;
  if (v485 > 0.0)
  {
    v717 += v485;
  }

LABEL_952:
  v488 = v476;
  if ((v22 & 1) == 0)
  {
    v489 = 0;
    v490 = v475;
LABEL_958:
    v494 = v474;
    goto LABEL_959;
  }

  appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate = self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
  if (appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate < 0.0)
  {
    appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate = -appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
  }

  *v2.i64 = floor(appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate + 0.5);
  v492 = (appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v493.f64[0] = NAN;
  v493.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v493), v3, v2);
  v489 = 2654435761u * *v2.i64;
  v490 = v475;
  if (v492 < 0.0)
  {
    v489 -= fabs(v492);
    goto LABEL_958;
  }

  v494 = v474;
  if (v492 > 0.0)
  {
    v489 += v492;
  }

LABEL_959:
  v630 = v489;
  if ((v22 & 2) != 0)
  {
    appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate = self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
    if (appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate < 0.0)
    {
      appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate = -appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
    }

    *v2.i64 = floor(appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate + 0.5);
    v498 = (appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v499.f64[0] = NAN;
    v499.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v499), v3, v2);
    v496 = 2654435761u * *v2.i64;
    v495 = v388;
    if (v498 >= 0.0)
    {
      if (v498 > 0.0)
      {
        v496 += v498;
      }
    }

    else
    {
      v496 -= fabs(v498);
    }
  }

  else
  {
    v495 = v388;
    v496 = 0;
  }

  v500 = v380;
  if ((v5 & 2) != 0)
  {
    isLocationServicesDisabled = self->_isLocationServicesDisabled;
    if (isLocationServicesDisabled < 0.0)
    {
      isLocationServicesDisabled = -isLocationServicesDisabled;
    }

    *v2.i64 = floor(isLocationServicesDisabled + 0.5);
    v503 = (isLocationServicesDisabled - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v504.f64[0] = NAN;
    v504.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v504), v3, v2);
    v501 = 2654435761u * *v2.i64;
    if (v503 >= 0.0)
    {
      if (v503 > 0.0)
      {
        v501 += v503;
      }
    }

    else
    {
      v501 -= fabs(v503);
    }
  }

  else
  {
    v501 = 0;
  }

  v628 = v501;
  if ((v22 & 0x40000000) == 0)
  {
    v505 = 0;
    v506 = v500;
LABEL_987:
    v510 = v495;
    goto LABEL_988;
  }

  appLaunchesInTwoHourTimeBucketForAppInContext = self->_appLaunchesInTwoHourTimeBucketForAppInContext;
  if (appLaunchesInTwoHourTimeBucketForAppInContext < 0.0)
  {
    appLaunchesInTwoHourTimeBucketForAppInContext = -appLaunchesInTwoHourTimeBucketForAppInContext;
  }

  *v2.i64 = floor(appLaunchesInTwoHourTimeBucketForAppInContext + 0.5);
  v508 = (appLaunchesInTwoHourTimeBucketForAppInContext - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v509.f64[0] = NAN;
  v509.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v509), v3, v2);
  v505 = 2654435761u * *v2.i64;
  v506 = v500;
  if (v508 < 0.0)
  {
    v505 -= fabs(v508);
    goto LABEL_987;
  }

  v510 = v495;
  if (v508 > 0.0)
  {
    v505 += v508;
  }

LABEL_988:
  v626 = v505;
  v640 = v438;
  if ((v22 & 0x80000000) != 0)
  {
    appLaunchesInTwoHourTimeBucketInContext = self->_appLaunchesInTwoHourTimeBucketInContext;
    if (appLaunchesInTwoHourTimeBucketInContext < 0.0)
    {
      appLaunchesInTwoHourTimeBucketInContext = -appLaunchesInTwoHourTimeBucketInContext;
    }

    *v2.i64 = floor(appLaunchesInTwoHourTimeBucketInContext + 0.5);
    v513 = (appLaunchesInTwoHourTimeBucketInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v514.f64[0] = NAN;
    v514.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v514), v3, v2);
    v511 = 2654435761u * *v2.i64;
    if (v513 >= 0.0)
    {
      if (v513 > 0.0)
      {
        v511 += v513;
      }
    }

    else
    {
      v511 -= fabs(v513);
    }
  }

  else
  {
    v511 = 0;
  }

  v638 = v446;
  if ((v22 & 0x20000000) != 0)
  {
    appLaunchesInTwoHourTimeBucketForApp = self->_appLaunchesInTwoHourTimeBucketForApp;
    if (appLaunchesInTwoHourTimeBucketForApp < 0.0)
    {
      appLaunchesInTwoHourTimeBucketForApp = -appLaunchesInTwoHourTimeBucketForApp;
    }

    *v2.i64 = floor(appLaunchesInTwoHourTimeBucketForApp + 0.5);
    v517 = (appLaunchesInTwoHourTimeBucketForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v518.f64[0] = NAN;
    v518.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v518), v3, v2);
    v515 = 2654435761u * *v2.i64;
    if (v517 >= 0.0)
    {
      if (v517 > 0.0)
      {
        v515 += v517;
      }
    }

    else
    {
      v515 -= fabs(v517);
    }
  }

  else
  {
    v515 = 0;
  }

  v698 = v420;
  if ((v22 & 0x20000000000000) != 0)
  {
    currentTimeBucketFromZeroToTwentyFour = self->_currentTimeBucketFromZeroToTwentyFour;
    if (currentTimeBucketFromZeroToTwentyFour < 0.0)
    {
      currentTimeBucketFromZeroToTwentyFour = -currentTimeBucketFromZeroToTwentyFour;
    }

    *v2.i64 = floor(currentTimeBucketFromZeroToTwentyFour + 0.5);
    v521 = (currentTimeBucketFromZeroToTwentyFour - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v522.f64[0] = NAN;
    v522.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v522), v3, v2);
    v519 = 2654435761u * *v2.i64;
    if (v521 >= 0.0)
    {
      if (v521 > 0.0)
      {
        v519 += v521;
      }
    }

    else
    {
      v519 -= fabs(v521);
    }
  }

  else
  {
    v519 = 0;
  }

  v696 = v434;
  if ((v79 & 0x400000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHashForAppInContext = self->_appLaunchesAtZoom7GeoHashForAppInContext;
    if (appLaunchesAtZoom7GeoHashForAppInContext < 0.0)
    {
      appLaunchesAtZoom7GeoHashForAppInContext = -appLaunchesAtZoom7GeoHashForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHashForAppInContext + 0.5);
    v525 = (appLaunchesAtZoom7GeoHashForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v526.f64[0] = NAN;
    v526.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v526), v3, v2);
    v523 = 2654435761u * *v2.i64;
    if (v525 >= 0.0)
    {
      if (v525 > 0.0)
      {
        v523 += v525;
      }
    }

    else
    {
      v523 -= fabs(v525);
    }
  }

  else
  {
    v523 = 0;
  }

  if ((v79 & 0x800000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHashInContext = self->_appLaunchesAtZoom7GeoHashInContext;
    if (appLaunchesAtZoom7GeoHashInContext < 0.0)
    {
      appLaunchesAtZoom7GeoHashInContext = -appLaunchesAtZoom7GeoHashInContext;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHashInContext + 0.5);
    v529 = (appLaunchesAtZoom7GeoHashInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v530.f64[0] = NAN;
    v530.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v530), v3, v2);
    v527 = 2654435761u * *v2.i64;
    if (v529 >= 0.0)
    {
      if (v529 > 0.0)
      {
        v527 += v529;
      }
    }

    else
    {
      v527 -= fabs(v529);
    }
  }

  else
  {
    v527 = 0;
  }

  if ((v79 & 0x200000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHashForApp = self->_appLaunchesAtZoom7GeoHashForApp;
    if (appLaunchesAtZoom7GeoHashForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHashForApp = -appLaunchesAtZoom7GeoHashForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHashForApp + 0.5);
    v533 = (appLaunchesAtZoom7GeoHashForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v534.f64[0] = NAN;
    v534.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v534), v3, v2);
    v531 = 2654435761u * *v2.i64;
    if (v533 >= 0.0)
    {
      if (v533 > 0.0)
      {
        v531 += v533;
      }
    }

    else
    {
      v531 -= fabs(v533);
    }
  }

  else
  {
    v531 = 0;
  }

  v624 = v531;
  if ((v79 & 0x800000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash0ForApp = self->_appLaunchesAtZoom7GeoHash0ForApp;
    if (appLaunchesAtZoom7GeoHash0ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash0ForApp = -appLaunchesAtZoom7GeoHash0ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash0ForApp + 0.5);
    v537 = (appLaunchesAtZoom7GeoHash0ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v538.f64[0] = NAN;
    v538.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v538), v3, v2);
    v535 = 2654435761u * *v2.i64;
    if (v537 >= 0.0)
    {
      if (v537 > 0.0)
      {
        v535 += v537;
      }
    }

    else
    {
      v535 -= fabs(v537);
    }
  }

  else
  {
    v535 = 0;
  }

  v691 = v477;
  if ((v79 & 0x1000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash1ForApp = self->_appLaunchesAtZoom7GeoHash1ForApp;
    if (appLaunchesAtZoom7GeoHash1ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash1ForApp = -appLaunchesAtZoom7GeoHash1ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash1ForApp + 0.5);
    v540 = (appLaunchesAtZoom7GeoHash1ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v541.f64[0] = NAN;
    v541.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v541), v3, v2);
    if (v540 >= 0.0)
    {
      v716 = 2654435761u * *v2.i64;
      if (v540 > 0.0)
      {
        v716 += v540;
      }
    }

    else
    {
      v716 = 2654435761u * *v2.i64 - fabs(v540);
    }
  }

  else
  {
    v716 = 0;
  }

  v688 = v482;
  if ((v79 & 0x2000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash2ForApp = self->_appLaunchesAtZoom7GeoHash2ForApp;
    if (appLaunchesAtZoom7GeoHash2ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash2ForApp = -appLaunchesAtZoom7GeoHash2ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash2ForApp + 0.5);
    v544 = (appLaunchesAtZoom7GeoHash2ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v545.f64[0] = NAN;
    v545.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v545), v3, v2);
    v542 = 2654435761u * *v2.i64;
    if (v544 >= 0.0)
    {
      if (v544 > 0.0)
      {
        v542 += v544;
      }
    }

    else
    {
      v542 -= fabs(v544);
    }
  }

  else
  {
    v542 = 0;
  }

  v686 = v483;
  if ((v79 & 0x4000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash3ForApp = self->_appLaunchesAtZoom7GeoHash3ForApp;
    if (appLaunchesAtZoom7GeoHash3ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash3ForApp = -appLaunchesAtZoom7GeoHash3ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash3ForApp + 0.5);
    v548 = (appLaunchesAtZoom7GeoHash3ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v549.f64[0] = NAN;
    v549.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v549), v3, v2);
    v546 = 2654435761u * *v2.i64;
    if (v548 >= 0.0)
    {
      if (v548 > 0.0)
      {
        v546 += v548;
      }
    }

    else
    {
      v546 -= fabs(v548);
    }
  }

  else
  {
    v546 = 0;
  }

  v684 = v481;
  if ((v79 & 0x8000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash4ForApp = self->_appLaunchesAtZoom7GeoHash4ForApp;
    if (appLaunchesAtZoom7GeoHash4ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash4ForApp = -appLaunchesAtZoom7GeoHash4ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash4ForApp + 0.5);
    v552 = (appLaunchesAtZoom7GeoHash4ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v553.f64[0] = NAN;
    v553.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v553), v3, v2);
    v550 = 2654435761u * *v2.i64;
    if (v552 >= 0.0)
    {
      if (v552 > 0.0)
      {
        v550 += v552;
      }
    }

    else
    {
      v550 -= fabs(v552);
    }
  }

  else
  {
    v550 = 0;
  }

  v629 = v496;
  if ((v79 & 0x10000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash5ForApp = self->_appLaunchesAtZoom7GeoHash5ForApp;
    if (appLaunchesAtZoom7GeoHash5ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash5ForApp = -appLaunchesAtZoom7GeoHash5ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash5ForApp + 0.5);
    v556 = (appLaunchesAtZoom7GeoHash5ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v557.f64[0] = NAN;
    v557.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v557), v3, v2);
    v554 = 2654435761u * *v2.i64;
    if (v556 >= 0.0)
    {
      if (v556 > 0.0)
      {
        v554 += v556;
      }
    }

    else
    {
      v554 -= fabs(v556);
    }
  }

  else
  {
    v554 = 0;
  }

  v659 = v490;
  if ((v79 & 0x20000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash6ForApp = self->_appLaunchesAtZoom7GeoHash6ForApp;
    if (appLaunchesAtZoom7GeoHash6ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash6ForApp = -appLaunchesAtZoom7GeoHash6ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash6ForApp + 0.5);
    v561 = (appLaunchesAtZoom7GeoHash6ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v562.f64[0] = NAN;
    v562.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v562), v3, v2);
    v558 = 2654435761u * *v2.i64;
    v559 = v661;
    if (v561 >= 0.0)
    {
      if (v561 > 0.0)
      {
        v558 += v561;
      }
    }

    else
    {
      v558 -= fabs(v561);
    }
  }

  else
  {
    v558 = 0;
    v559 = v661;
  }

  v654 = v506;
  v662 = v494;
  if ((v79 & 0x40000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash7ForApp = self->_appLaunchesAtZoom7GeoHash7ForApp;
    if (appLaunchesAtZoom7GeoHash7ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash7ForApp = -appLaunchesAtZoom7GeoHash7ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash7ForApp + 0.5);
    v565 = (appLaunchesAtZoom7GeoHash7ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v566.f64[0] = NAN;
    v566.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v566), v3, v2);
    v563 = 2654435761u * *v2.i64;
    if (v565 >= 0.0)
    {
      if (v565 > 0.0)
      {
        v563 += v565;
      }
    }

    else
    {
      v563 -= fabs(v565);
    }
  }

  else
  {
    v563 = 0;
  }

  v651 = v510;
  if ((v79 & 0x80000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash8ForApp = self->_appLaunchesAtZoom7GeoHash8ForApp;
    if (appLaunchesAtZoom7GeoHash8ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash8ForApp = -appLaunchesAtZoom7GeoHash8ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash8ForApp + 0.5);
    v569 = (appLaunchesAtZoom7GeoHash8ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v570.f64[0] = NAN;
    v570.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v570), v3, v2);
    v567 = 2654435761u * *v2.i64;
    if (v569 >= 0.0)
    {
      if (v569 > 0.0)
      {
        v567 += v569;
      }
    }

    else
    {
      v567 -= fabs(v569);
    }
  }

  else
  {
    v567 = 0;
  }

  v632 = v465;
  v622 = v546;
  if ((v79 & 0x100000000000000) != 0)
  {
    appLaunchesAtZoom7GeoHash9ForApp = self->_appLaunchesAtZoom7GeoHash9ForApp;
    if (appLaunchesAtZoom7GeoHash9ForApp < 0.0)
    {
      appLaunchesAtZoom7GeoHash9ForApp = -appLaunchesAtZoom7GeoHash9ForApp;
    }

    *v2.i64 = floor(appLaunchesAtZoom7GeoHash9ForApp + 0.5);
    v573 = (appLaunchesAtZoom7GeoHash9ForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v574.f64[0] = NAN;
    v574.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v574), v3, v2);
    v571 = 2654435761u * *v2.i64;
    if (v573 >= 0.0)
    {
      if (v573 > 0.0)
      {
        v571 += v573;
      }
    }

    else
    {
      v571 -= fabs(v573);
    }
  }

  else
  {
    v571 = 0;
  }

  v635 = v410;
  v625 = v523;
  if ((v79 & 0x80) != 0)
  {
    appEntropyForZoom7GeoHash = self->_appEntropyForZoom7GeoHash;
    if (appEntropyForZoom7GeoHash < 0.0)
    {
      appEntropyForZoom7GeoHash = -appEntropyForZoom7GeoHash;
    }

    *v2.i64 = floor(appEntropyForZoom7GeoHash + 0.5);
    v577 = (appEntropyForZoom7GeoHash - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v578.f64[0] = NAN;
    v578.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v578), v3, v2);
    v575 = 2654435761u * *v2.i64;
    if (v577 >= 0.0)
    {
      if (v577 > 0.0)
      {
        v575 += v577;
      }
    }

    else
    {
      v575 -= fabs(v577);
    }
  }

  else
  {
    v575 = 0;
  }

  v579 = v487;
  v623 = v535;
  if ((v22 & 0x200000000000) != 0)
  {
    appNumberOfZoom7GeohashesForApp = self->_appNumberOfZoom7GeohashesForApp;
    if (appNumberOfZoom7GeohashesForApp < 0.0)
    {
      appNumberOfZoom7GeohashesForApp = -appNumberOfZoom7GeohashesForApp;
    }

    *v2.i64 = floor(appNumberOfZoom7GeohashesForApp + 0.5);
    v582 = (appNumberOfZoom7GeohashesForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v583.f64[0] = NAN;
    v583.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v583), v3, v2);
    v580 = 2654435761u * *v2.i64;
    if (v582 >= 0.0)
    {
      if (v582 > 0.0)
      {
        v580 += v582;
      }
    }

    else
    {
      v580 -= fabs(v582);
    }
  }

  else
  {
    v580 = 0;
  }

  v621 = v527;
  if ((v79 & 0x2000000) != 0)
  {
    appLaunchesAtSSIDForAppInContext = self->_appLaunchesAtSSIDForAppInContext;
    if (appLaunchesAtSSIDForAppInContext < 0.0)
    {
      appLaunchesAtSSIDForAppInContext = -appLaunchesAtSSIDForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtSSIDForAppInContext + 0.5);
    v586 = (appLaunchesAtSSIDForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v587.f64[0] = NAN;
    v587.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v587), v3, v2);
    v584 = 2654435761u * *v2.i64;
    if (v586 >= 0.0)
    {
      if (v586 > 0.0)
      {
        v584 += v586;
      }
    }

    else
    {
      v584 -= fabs(v586);
    }
  }

  else
  {
    v584 = 0;
  }

  v588 = v424;
  v589 = v567;
  if ((v79 & 0x1000000) != 0)
  {
    appLaunchesAtSSIDForApp = self->_appLaunchesAtSSIDForApp;
    if (appLaunchesAtSSIDForApp < 0.0)
    {
      appLaunchesAtSSIDForApp = -appLaunchesAtSSIDForApp;
    }

    *v2.i64 = floor(appLaunchesAtSSIDForApp + 0.5);
    v595 = (appLaunchesAtSSIDForApp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v596.f64[0] = NAN;
    v596.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v596), v3, v2);
    v593 = 2654435761u * *v2.i64;
    v590 = v558;
    v591 = v550;
    v592 = v542;
    if (v595 >= 0.0)
    {
      if (v595 > 0.0)
      {
        v593 += v595;
      }
    }

    else
    {
      v593 -= fabs(v595);
    }
  }

  else
  {
    v590 = v558;
    v591 = v550;
    v592 = v542;
    v593 = 0;
  }

  v597 = v454;
  if ((v22 & 4) != 0)
  {
    appLaunchesForCoreMotionForAppInContext = self->_appLaunchesForCoreMotionForAppInContext;
    if (appLaunchesForCoreMotionForAppInContext < 0.0)
    {
      appLaunchesForCoreMotionForAppInContext = -appLaunchesForCoreMotionForAppInContext;
    }

    *v2.i64 = floor(appLaunchesForCoreMotionForAppInContext + 0.5);
    v600 = (appLaunchesForCoreMotionForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v601.f64[0] = NAN;
    v601.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v601), v3, v2);
    v598 = 2654435761u * *v2.i64;
    if (v600 >= 0.0)
    {
      if (v600 > 0.0)
      {
        v598 += v600;
      }
    }

    else
    {
      v598 -= fabs(v600);
    }
  }

  else
  {
    v598 = 0;
  }

  if ((v22 & 8) != 0)
  {
    appLaunchesInAirplaneModeForAppInContext = self->_appLaunchesInAirplaneModeForAppInContext;
    if (appLaunchesInAirplaneModeForAppInContext < 0.0)
    {
      appLaunchesInAirplaneModeForAppInContext = -appLaunchesInAirplaneModeForAppInContext;
    }

    *v2.i64 = floor(appLaunchesInAirplaneModeForAppInContext + 0.5);
    v604 = (appLaunchesInAirplaneModeForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v605.f64[0] = NAN;
    v605.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v605), v3, v2);
    v602 = 2654435761u * *v2.i64;
    if (v604 >= 0.0)
    {
      if (v604 > 0.0)
      {
        v602 += v604;
      }
    }

    else
    {
      v602 -= fabs(v604);
    }
  }

  else
  {
    v602 = 0;
  }

  if ((v5 & 0x40) != 0)
  {
    poiPopularityForAppInContext = self->_poiPopularityForAppInContext;
    if (poiPopularityForAppInContext < 0.0)
    {
      poiPopularityForAppInContext = -poiPopularityForAppInContext;
    }

    *v2.i64 = floor(poiPopularityForAppInContext + 0.5);
    v608 = (poiPopularityForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v609.f64[0] = NAN;
    v609.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v609), v3, v2);
    v606 = 2654435761u * *v2.i64;
    if (v608 >= 0.0)
    {
      if (v608 > 0.0)
      {
        v606 += v608;
      }
    }

    else
    {
      v606 -= fabs(v608);
    }
  }

  else
  {
    v606 = 0;
  }

  if ((v79 & 0x100) == 0)
  {
    v610 = 0;
    goto LABEL_1183;
  }

  appLaunchPopularityAtPOIForAppInContext = self->_appLaunchPopularityAtPOIForAppInContext;
  if (appLaunchPopularityAtPOIForAppInContext < 0.0)
  {
    appLaunchPopularityAtPOIForAppInContext = -appLaunchPopularityAtPOIForAppInContext;
  }

  *v2.i64 = floor(appLaunchPopularityAtPOIForAppInContext + 0.5);
  v612 = (appLaunchPopularityAtPOIForAppInContext - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v613.f64[0] = NAN;
  v613.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v613), v3, v2);
  v610 = 2654435761u * *v2.i64;
  if (v612 >= 0.0)
  {
    if (v612 <= 0.0)
    {
      goto LABEL_1183;
    }

    v610 += v612;
  }

  else
  {
    v610 -= fabs(v612);
  }

  v488 = v476;
LABEL_1183:
  if ((v79 & 0x800000) != 0)
  {
    appLaunchesAtPOIForAppInContext = self->_appLaunchesAtPOIForAppInContext;
    if (appLaunchesAtPOIForAppInContext < 0.0)
    {
      appLaunchesAtPOIForAppInContext = -appLaunchesAtPOIForAppInContext;
    }

    *v2.i64 = floor(appLaunchesAtPOIForAppInContext + 0.5);
    v617 = (appLaunchesAtPOIForAppInContext - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v618.f64[0] = NAN;
    v618.f64[1] = NAN;
    v614 = 2654435761u * *vbslq_s8(vnegq_f64(v618), v3, v2).i64;
    v615 = v717;
    if (v617 >= 0.0)
    {
      if (v617 > 0.0)
      {
        v614 += v617;
      }
    }

    else
    {
      v614 -= fabs(v617);
    }
  }

  else
  {
    v614 = 0;
    v615 = v717;
  }

  v619 = v731 ^ v732 ^ v715 ^ v714 ^ v742 ^ v741 ^ v740 ^ v739 ^ v738 ^ v737 ^ v736 ^ v713 ^ v735 ^ v712 ^ v711 ^ v710 ^ v709 ^ v708 ^ v734 ^ v733 ^ v707 ^ v706 ^ v730 ^ v729 ^ v728 ^ v725 ^ v726 ^ v724 ^ v723 ^ v722 ^ v705 ^ v699 ^ v704 ^ v727 ^ v703 ^ v721 ^ v702 ^ v693 ^ v701 ^ v690 ^ v700 ^ v698 ^ v697 ^ v696 ^ v695 ^ v680 ^ v694 ^ v692 ^ v691 ^ v689 ^ v688 ^ v687 ^ v686 ^ v685 ^ v684 ^ v683 ^ v682 ^ v670 ^ v681 ^ v559 ^ v679 ^ v664 ^ v678 ^ v719 ^ v677 ^ v657 ^ v676 ^ v665 ^ v675 ^ v655 ^ v674 ^ v652 ^ v673 ^ v633 ^ v672 ^ v646 ^ v671 ^ v649 ^ v669 ^ v644 ^ v668 ^ v636 ^ v667 ^ v718 ^ v666 ^ v579 ^ v663 ^ v720 ^ v660 ^ v659 ^ v658 ^ v662 ^ v656 ^ v654 ^ v653 ^ v651 ^ v650 ^ v648 ^ v627 ^ v647 ^ v635 ^ v645 ^ v643 ^ v588 ^ v642 ^ v641 ^ v640 ^ v639 ^ v638 ^ v637 ^ v597 ^ v634 ^ v632 ^ v631 ^ v488 ^ v615 ^ v630 ^ v629 ^ v628 ^ v626 ^ v511;
  return v619 ^ v515 ^ v519 ^ v625 ^ v621 ^ v624 ^ v623 ^ v716 ^ v592 ^ v622 ^ v591 ^ v554 ^ v590 ^ v563 ^ v589 ^ v571 ^ v575 ^ v580 ^ v584 ^ v593 ^ v598 ^ v602 ^ v606 ^ v610 ^ v614;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4 + 1168;
  v6 = *(v4 + 296);
  if ((v6 & 0x10000) != 0)
  {
    self->_unlockTime = *(v4 + 145);
    *(&self->_has + 4) |= 0x10000u;
    v6 = *(v4 + 296);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_186;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_launchTimePopularity = *(v4 + 133);
  *(&self->_has + 4) |= 0x10u;
  v6 = *(v4 + 296);
  if ((v6 & 0x100) == 0)
  {
LABEL_4:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_186:
  self->_timeOfDayBucket = *(v4 + 137);
  *(&self->_has + 4) |= 0x100u;
  if ((*(v4 + 296) & 0x200) != 0)
  {
LABEL_5:
    self->_timeOfDayPopularity = *(v4 + 138);
    *(&self->_has + 4) |= 0x200u;
  }

LABEL_6:
  if ((v4[1182] & 8) != 0)
  {
    self->_coarseTimeOfDayPopularity = *(v4 + 116);
    *(&self->_has + 1) |= 0x8000000000000uLL;
  }

  v7 = *(v4 + 296);
  if ((v7 & 8) != 0)
  {
    self->_launchPopularity = *(v4 + 132);
    *(&self->_has + 4) |= 8u;
    v7 = *(v4 + 296);
  }

  if ((v7 & 4) != 0)
  {
    self->_launchDayOfWeekPopularity = *(v4 + 131);
    *(&self->_has + 4) |= 4u;
  }

  v8 = *(v4 + 147);
  if ((v8 & 0x40000000000000) != 0)
  {
    self->_dayOfWeekBucket = *(v4 + 119);
    *(&self->_has + 1) |= 0x40000000000000uLL;
    v8 = *(v4 + 147);
    if ((v8 & 0x80000000000000) == 0)
    {
LABEL_14:
      if ((v8 & 0x800000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_190;
    }
  }

  else if ((v8 & 0x80000000000000) == 0)
  {
    goto LABEL_14;
  }

  self->_dayOfWeekPopularity = *(v4 + 120);
  *(&self->_has + 1) |= 0x80000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x800000000000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_entropyLaunchPopularity = *(v4 + 124);
  *(&self->_has + 1) |= 0x800000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x100000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_192;
  }

LABEL_191:
  self->_entropyDayOfWeekPopularity = *(v4 + 121);
  *(&self->_has + 1) |= 0x100000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x400000000000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_193;
  }

LABEL_192:
  self->_entropyDayOfWeekPopularityByDay = *(v4 + 123);
  *(&self->_has + 1) |= 0x400000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x200000000000000) == 0)
  {
LABEL_18:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_194;
  }

LABEL_193:
  self->_entropyDayOfWeekPopularityByApp = *(v4 + 122);
  *(&self->_has + 1) |= 0x200000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_195;
  }

LABEL_194:
  self->_entropyTrendingPopularity = *(v4 + 128);
  *(&self->_has + 1) |= 0x8000000000000000;
  v8 = *(v4 + 147);
  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_196;
  }

LABEL_195:
  self->_entropySSIDPopularity = *(v4 + 125);
  *(&self->_has + 1) |= 0x1000000000000000uLL;
  v8 = *(v4 + 147);
  if ((v8 & 0x4000000000000000) == 0)
  {
LABEL_21:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_196:
  self->_entropySSIDPopularityBySSID = *(v4 + 127);
  *(&self->_has + 1) |= 0x4000000000000000uLL;
  if ((*(v4 + 147) & 0x2000000000000000) != 0)
  {
LABEL_22:
    self->_entropySSIDPopularityByApp = *(v4 + 126);
    *(&self->_has + 1) |= 0x2000000000000000uLL;
  }

LABEL_23:
  if ((v4[1185] & 0x10) != 0)
  {
    self->_totalNumberOfLaunches = *(v4 + 141);
    *(&self->_has + 4) |= 0x1000u;
  }

  if (*v5)
  {
    self->_airplaneModePopularity = *(v4 + 1);
    *&self->_has |= 1uLL;
  }

  v9 = *(v4 + 296);
  if ((v9 & 0x400) != 0)
  {
    self->_totalNumberOfAirplaneModeLaunches = *(v4 + 139);
    *(&self->_has + 4) |= 0x400u;
    v9 = *(v4 + 296);
    if ((v9 & 0x8000) == 0)
    {
LABEL_29:
      if ((v9 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_200;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  self->_trendingPopularity = *(v4 + 144);
  *(&self->_has + 4) |= 0x8000u;
  v9 = *(v4 + 296);
  if ((v9 & 0x4000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_201;
  }

LABEL_200:
  self->_totalNumberOfTrendingLaunches = *(v4 + 143);
  *(&self->_has + 4) |= 0x4000u;
  v9 = *(v4 + 296);
  if ((v9 & 0x80) == 0)
  {
LABEL_31:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_202;
  }

LABEL_201:
  self->_sSIDPopularity = *(v4 + 136);
  *(&self->_has + 4) |= 0x80u;
  v9 = *(v4 + 296);
  if ((v9 & 0x2000) == 0)
  {
LABEL_32:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_202:
  self->_totalNumberOfSSIDLaunches = *(v4 + 142);
  *(&self->_has + 4) |= 0x2000u;
  if ((*(v4 + 296) & 0x20) != 0)
  {
LABEL_33:
    self->_onWifi = *(v4 + 134);
    *(&self->_has + 4) |= 0x20u;
  }

LABEL_34:
  if ((v4[1182] & 0x10) != 0)
  {
    self->_coreMotionPopularity = *(v4 + 117);
    *(&self->_has + 1) |= 0x10000000000000uLL;
  }

  v10 = *(v4 + 296);
  if ((v10 & 0x800) != 0)
  {
    self->_totalNumberOfCoreMotionLaunches = *(v4 + 140);
    *(&self->_has + 4) |= 0x800u;
    v10 = *(v4 + 296);
  }

  if (v10)
  {
    self->_isDateInWeekendOnDevice = *(v4 + 129);
    *(&self->_has + 4) |= 1u;
  }

  v11 = *v5;
  if ((*v5 & 4) != 0)
  {
    self->_ambientLightTypePopularity = *(v4 + 3);
    *&self->_has |= 4uLL;
    v11 = *(v4 + 146);
  }

  if ((v11 & 2) != 0)
  {
    self->_ambientLightTypeLaunchPopularity = *(v4 + 2);
    *&self->_has |= 2uLL;
  }

  if ((v4[1182] & 2) != 0)
  {
    self->_appTimeOfDayLaunches = *(v4 + 114);
    *(&self->_has + 1) |= 0x2000000000000uLL;
  }

  if ((*v5 & 8) != 0)
  {
    self->_appDayOfWeekLaunches = *(v4 + 4);
    *&self->_has |= 8uLL;
  }

  v12 = *(v4 + 147);
  if ((v12 & 0x1000000000000) != 0)
  {
    self->_appTimeAndDayOfWeekPopularity = *(v4 + 113);
    *(&self->_has + 1) |= 0x1000000000000uLL;
    v12 = *(v4 + 147);
    if ((v12 & 0x400000000000) == 0)
    {
LABEL_50:
      if ((v12 & 0x800000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_206;
    }
  }

  else if ((v12 & 0x400000000000) == 0)
  {
    goto LABEL_50;
  }

  self->_appPopularityGivenTimeAndDayOfWeek = *(v4 + 111);
  *(&self->_has + 1) |= 0x400000000000uLL;
  v12 = *(v4 + 147);
  if ((v12 & 0x800000000000) == 0)
  {
LABEL_51:
    if ((v12 & 0x4000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_206:
  self->_appPopularityOfTimeAndDayOfWeekGivenApp = *(v4 + 112);
  *(&self->_has + 1) |= 0x800000000000uLL;
  if ((*(v4 + 147) & 0x4000000000000) != 0)
  {
LABEL_52:
    self->_appTotalNumberOfTimeAndDayOfWeekLaunches = *(v4 + 115);
    *(&self->_has + 1) |= 0x4000000000000uLL;
  }

LABEL_53:
  v13 = *v5;
  if ((*v5 & 0x4000000000000000) != 0)
  {
    self->_appLaunchesCoarseTimePowLocationForAppInContext = *(v4 + 63);
    *&self->_has |= 0x4000000000000000uLL;
    v13 = *(v4 + 146);
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_55:
      if ((v13 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_210;
    }
  }

  else if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_55;
  }

  self->_appLaunchesCoarseTimePowLocationInContext = *(v4 + 64);
  *&self->_has |= 0x8000000000000000;
  v13 = *(v4 + 146);
  if ((v13 & 0x2000000000000000) == 0)
  {
LABEL_56:
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_210:
  self->_appLaunchesCoarseTimePowLocationForApp = *(v4 + 62);
  *&self->_has |= 0x2000000000000000uLL;
  if ((*(v4 + 146) & 0x1000000000000000) != 0)
  {
LABEL_57:
    self->_appLaunchesCoarseTimePowLocationForAllAppsAndContexts = *(v4 + 61);
    *&self->_has |= 0x1000000000000000uLL;
  }

LABEL_58:
  v14 = *(v4 + 147);
  if ((v14 & 0x20000000000) != 0)
  {
    self->_appLaunchesSpecificTimeDowLocationForAppInContext = *(v4 + 106);
    *(&self->_has + 1) |= 0x20000000000uLL;
    v14 = *(v4 + 147);
    if ((v14 & 0x40000000000) == 0)
    {
LABEL_60:
      if ((v14 & 0x10000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_214;
    }
  }

  else if ((v14 & 0x40000000000) == 0)
  {
    goto LABEL_60;
  }

  self->_appLaunchesSpecificTimeDowLocationInContext = *(v4 + 107);
  *(&self->_has + 1) |= 0x40000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x10000000000) == 0)
  {
LABEL_61:
    if ((v14 & 0x8000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_215;
  }

LABEL_214:
  self->_appLaunchesSpecificTimeDowLocationForApp = *(v4 + 105);
  *(&self->_has + 1) |= 0x10000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x8000000000) == 0)
  {
LABEL_62:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_216;
  }

LABEL_215:
  self->_appLaunchesSpecificTimeDowLocationForAllAppsAndContexts = *(v4 + 104);
  *(&self->_has + 1) |= 0x8000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x10) == 0)
  {
LABEL_63:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_217;
  }

LABEL_216:
  self->_appLaunchesInTimeBucket0ForApp = *(v4 + 69);
  *(&self->_has + 1) |= 0x10uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x8000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_218;
  }

LABEL_217:
  self->_appLaunchesInTimeBucket1ForApp = *(v4 + 80);
  *(&self->_has + 1) |= 0x8000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_219;
  }

LABEL_218:
  self->_appLaunchesInTimeBucket2ForApp = *(v4 + 86);
  *(&self->_has + 1) |= 0x200000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x400000) == 0)
  {
LABEL_66:
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_220;
  }

LABEL_219:
  self->_appLaunchesInTimeBucket3ForApp = *(v4 + 87);
  *(&self->_has + 1) |= 0x400000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x800000) == 0)
  {
LABEL_67:
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_221;
  }

LABEL_220:
  self->_appLaunchesInTimeBucket4ForApp = *(v4 + 88);
  *(&self->_has + 1) |= 0x800000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x1000000) == 0)
  {
LABEL_68:
    if ((v14 & 0x2000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_222;
  }

LABEL_221:
  self->_appLaunchesInTimeBucket5ForApp = *(v4 + 89);
  *(&self->_has + 1) |= 0x1000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x2000000) == 0)
  {
LABEL_69:
    if ((v14 & 0x4000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_223;
  }

LABEL_222:
  self->_appLaunchesInTimeBucket6ForApp = *(v4 + 90);
  *(&self->_has + 1) |= 0x2000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_70:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_224;
  }

LABEL_223:
  self->_appLaunchesInTimeBucket7ForApp = *(v4 + 91);
  *(&self->_has + 1) |= 0x4000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_225;
  }

LABEL_224:
  self->_appLaunchesInTimeBucket8ForApp = *(v4 + 92);
  *(&self->_has + 1) |= 0x8000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_72:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_226;
  }

LABEL_225:
  self->_appLaunchesInTimeBucket9ForApp = *(v4 + 93);
  *(&self->_has + 1) |= 0x10000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x20) == 0)
  {
LABEL_73:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_227;
  }

LABEL_226:
  self->_appLaunchesInTimeBucket10ForApp = *(v4 + 70);
  *(&self->_has + 1) |= 0x20uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x40) == 0)
  {
LABEL_74:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_228;
  }

LABEL_227:
  self->_appLaunchesInTimeBucket11ForApp = *(v4 + 71);
  *(&self->_has + 1) |= 0x40uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x80) == 0)
  {
LABEL_75:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_229;
  }

LABEL_228:
  self->_appLaunchesInTimeBucket12ForApp = *(v4 + 72);
  *(&self->_has + 1) |= 0x80uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x100) == 0)
  {
LABEL_76:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_230;
  }

LABEL_229:
  self->_appLaunchesInTimeBucket13ForApp = *(v4 + 73);
  *(&self->_has + 1) |= 0x100uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x200) == 0)
  {
LABEL_77:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_231;
  }

LABEL_230:
  self->_appLaunchesInTimeBucket14ForApp = *(v4 + 74);
  *(&self->_has + 1) |= 0x200uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x400) == 0)
  {
LABEL_78:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_232;
  }

LABEL_231:
  self->_appLaunchesInTimeBucket15ForApp = *(v4 + 75);
  *(&self->_has + 1) |= 0x400uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x800) == 0)
  {
LABEL_79:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_233;
  }

LABEL_232:
  self->_appLaunchesInTimeBucket16ForApp = *(v4 + 76);
  *(&self->_has + 1) |= 0x800uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x1000) == 0)
  {
LABEL_80:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_234;
  }

LABEL_233:
  self->_appLaunchesInTimeBucket17ForApp = *(v4 + 77);
  *(&self->_has + 1) |= 0x1000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x2000) == 0)
  {
LABEL_81:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_235;
  }

LABEL_234:
  self->_appLaunchesInTimeBucket18ForApp = *(v4 + 78);
  *(&self->_has + 1) |= 0x2000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x4000) == 0)
  {
LABEL_82:
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_236;
  }

LABEL_235:
  self->_appLaunchesInTimeBucket19ForApp = *(v4 + 79);
  *(&self->_has + 1) |= 0x4000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x10000) == 0)
  {
LABEL_83:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_237;
  }

LABEL_236:
  self->_appLaunchesInTimeBucket20ForApp = *(v4 + 81);
  *(&self->_has + 1) |= 0x10000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x20000) == 0)
  {
LABEL_84:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_238;
  }

LABEL_237:
  self->_appLaunchesInTimeBucket21ForApp = *(v4 + 82);
  *(&self->_has + 1) |= 0x20000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x40000) == 0)
  {
LABEL_85:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_239;
  }

LABEL_238:
  self->_appLaunchesInTimeBucket22ForApp = *(v4 + 83);
  *(&self->_has + 1) |= 0x40000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x80000) == 0)
  {
LABEL_86:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_240;
  }

LABEL_239:
  self->_appLaunchesInTimeBucket23ForApp = *(v4 + 84);
  *(&self->_has + 1) |= 0x80000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x100000) == 0)
  {
LABEL_87:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_241;
  }

LABEL_240:
  self->_appLaunchesInTimeBucket24ForApp = *(v4 + 85);
  *(&self->_has + 1) |= 0x100000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x800000000) == 0)
  {
LABEL_88:
    if ((v14 & 0x200000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_242;
  }

LABEL_241:
  self->_appLaunchesOnDayOfWeekSundayForApp = *(v4 + 100);
  *(&self->_has + 1) |= 0x800000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x200000000) == 0)
  {
LABEL_89:
    if ((v14 & 0x2000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_243;
  }

LABEL_242:
  self->_appLaunchesOnDayOfWeekMondayForApp = *(v4 + 98);
  *(&self->_has + 1) |= 0x200000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x2000000000) == 0)
  {
LABEL_90:
    if ((v14 & 0x4000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_244;
  }

LABEL_243:
  self->_appLaunchesOnDayOfWeekTuesdayForApp = *(v4 + 102);
  *(&self->_has + 1) |= 0x2000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x4000000000) == 0)
  {
LABEL_91:
    if ((v14 & 0x1000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_245;
  }

LABEL_244:
  self->_appLaunchesOnDayOfWeekWednesdayForApp = *(v4 + 103);
  *(&self->_has + 1) |= 0x4000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x1000000000) == 0)
  {
LABEL_92:
    if ((v14 & 0x100000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_246;
  }

LABEL_245:
  self->_appLaunchesOnDayOfWeekThursdayForApp = *(v4 + 101);
  *(&self->_has + 1) |= 0x1000000000uLL;
  v14 = *(v4 + 147);
  if ((v14 & 0x100000000) == 0)
  {
LABEL_93:
    if ((v14 & 0x400000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_246:
  self->_appLaunchesOnDayOfWeekFridayForApp = *(v4 + 97);
  *(&self->_has + 1) |= 0x100000000uLL;
  if ((*(v4 + 147) & 0x400000000) != 0)
  {
LABEL_94:
    self->_appLaunchesOnDayOfWeekSaturdayForApp = *(v4 + 99);
    *(&self->_has + 1) |= 0x400000000uLL;
  }

LABEL_95:
  v15 = *v5;
  if ((*v5 & 0x200) != 0)
  {
    self->_appLaunchesAtCoarseGeoHash0ForApp = *(v4 + 10);
    *&self->_has |= 0x200uLL;
    v15 = *(v4 + 146);
    if ((v15 & 0x400) == 0)
    {
LABEL_97:
      if ((v15 & 0x800) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_250;
    }
  }

  else if ((v15 & 0x400) == 0)
  {
    goto LABEL_97;
  }

  self->_appLaunchesAtCoarseGeoHash1ForApp = *(v4 + 11);
  *&self->_has |= 0x400uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x800) == 0)
  {
LABEL_98:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_251;
  }

LABEL_250:
  self->_appLaunchesAtCoarseGeoHash2ForApp = *(v4 + 12);
  *&self->_has |= 0x800uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x1000) == 0)
  {
LABEL_99:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_252;
  }

LABEL_251:
  self->_appLaunchesAtCoarseGeoHash3ForApp = *(v4 + 13);
  *&self->_has |= 0x1000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x2000) == 0)
  {
LABEL_100:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_253;
  }

LABEL_252:
  self->_appLaunchesAtCoarseGeoHash4ForApp = *(v4 + 14);
  *&self->_has |= 0x2000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x4000) == 0)
  {
LABEL_101:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_254;
  }

LABEL_253:
  self->_appLaunchesAtCoarseGeoHash5ForApp = *(v4 + 15);
  *&self->_has |= 0x4000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x8000) == 0)
  {
LABEL_102:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_255;
  }

LABEL_254:
  self->_appLaunchesAtCoarseGeoHash6ForApp = *(v4 + 16);
  *&self->_has |= 0x8000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x10000) == 0)
  {
LABEL_103:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_256;
  }

LABEL_255:
  self->_appLaunchesAtCoarseGeoHash7ForApp = *(v4 + 17);
  *&self->_has |= 0x10000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x20000) == 0)
  {
LABEL_104:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_257;
  }

LABEL_256:
  self->_appLaunchesAtCoarseGeoHash8ForApp = *(v4 + 18);
  *&self->_has |= 0x20000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x40000) == 0)
  {
LABEL_105:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_258;
  }

LABEL_257:
  self->_appLaunchesAtCoarseGeoHash9ForApp = *(v4 + 19);
  *&self->_has |= 0x40000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_106:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_259;
  }

LABEL_258:
  self->_appLaunchesAtSpecificGeoHash0ForApp = *(v4 + 27);
  *&self->_has |= 0x4000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x100000000) == 0)
  {
LABEL_107:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_260;
  }

LABEL_259:
  self->_appLaunchesAtSpecificGeoHash1ForApp = *(v4 + 33);
  *&self->_has |= 0x100000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x200000000) == 0)
  {
LABEL_108:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_261;
  }

LABEL_260:
  self->_appLaunchesAtSpecificGeoHash2ForApp = *(v4 + 34);
  *&self->_has |= 0x200000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x400000000) == 0)
  {
LABEL_109:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_262;
  }

LABEL_261:
  self->_appLaunchesAtSpecificGeoHash3ForApp = *(v4 + 35);
  *&self->_has |= 0x400000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x800000000) == 0)
  {
LABEL_110:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_263;
  }

LABEL_262:
  self->_appLaunchesAtSpecificGeoHash4ForApp = *(v4 + 36);
  *&self->_has |= 0x800000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_111:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_264;
  }

LABEL_263:
  self->_appLaunchesAtSpecificGeoHash5ForApp = *(v4 + 37);
  *&self->_has |= 0x1000000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_112:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_265;
  }

LABEL_264:
  self->_appLaunchesAtSpecificGeoHash6ForApp = *(v4 + 38);
  *&self->_has |= 0x2000000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_113:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_266;
  }

LABEL_265:
  self->_appLaunchesAtSpecificGeoHash7ForApp = *(v4 + 39);
  *&self->_has |= 0x4000000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_114:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_267;
  }

LABEL_266:
  self->_appLaunchesAtSpecificGeoHash8ForApp = *(v4 + 40);
  *&self->_has |= 0x8000000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_115:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_268;
  }

LABEL_267:
  self->_appLaunchesAtSpecificGeoHash9ForApp = *(v4 + 41);
  *&self->_has |= 0x10000000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_116:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_269;
  }

LABEL_268:
  self->_appLaunchesAtSpecificGeoHash10ForApp = *(v4 + 28);
  *&self->_has |= 0x8000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_117:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_270;
  }

LABEL_269:
  self->_appLaunchesAtSpecificGeoHash11ForApp = *(v4 + 29);
  *&self->_has |= 0x10000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_271;
  }

LABEL_270:
  self->_appLaunchesAtSpecificGeoHash12ForApp = *(v4 + 30);
  *&self->_has |= 0x20000000uLL;
  v15 = *(v4 + 146);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_271:
  self->_appLaunchesAtSpecificGeoHash13ForApp = *(v4 + 31);
  *&self->_has |= 0x40000000uLL;
  if ((*(v4 + 146) & 0x80000000) != 0)
  {
LABEL_120:
    self->_appLaunchesAtSpecificGeoHash14ForApp = *(v4 + 32);
    *&self->_has |= 0x80000000uLL;
  }

LABEL_121:
  v16 = *(v4 + 147);
  if ((v16 & 0x100000000000) != 0)
  {
    self->_appNumberOfSpecificGeohashesForApp = *(v4 + 109);
    *(&self->_has + 1) |= 0x100000000000uLL;
    v16 = *(v4 + 147);
  }

  if ((v16 & 0x80000000000) != 0)
  {
    self->_appNumberOfCoarseGeohashesForApp = *(v4 + 108);
    *(&self->_has + 1) |= 0x80000000000uLL;
  }

  v17 = *v5;
  if ((*v5 & 0x40) != 0)
  {
    self->_appEntropyForTimeBuckets = *(v4 + 7);
    *&self->_has |= 0x40uLL;
    v17 = *(v4 + 146);
    if ((v17 & 0x20) == 0)
    {
LABEL_127:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_275;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  self->_appEntropyForSpecificGeoHash = *(v4 + 6);
  *&self->_has |= 0x20uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x10) == 0)
  {
LABEL_128:
    if ((v17 & 0x40000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_276;
  }

LABEL_275:
  self->_appEntropyForCoarseGeoHash = *(v4 + 5);
  *&self->_has |= 0x10uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x40000000000) == 0)
  {
LABEL_129:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_277;
  }

LABEL_276:
  self->_appLaunchesAtSpecificGeoHashForAppInContext = *(v4 + 43);
  *&self->_has |= 0x40000000000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x100000) == 0)
  {
LABEL_130:
    if ((v17 & 0x400000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_278;
  }

LABEL_277:
  self->_appLaunchesAtCoarseGeoHashForAppInContext = *(v4 + 21);
  *&self->_has |= 0x100000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x400000) == 0)
  {
LABEL_131:
    if ((v17 & 0x200000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_279;
  }

LABEL_278:
  self->_appLaunchesAtDayOfWeekForApp = *(v4 + 23);
  *&self->_has |= 0x400000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x200000000000) == 0)
  {
LABEL_132:
    if ((v17 & 0x400000000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_280;
  }

LABEL_279:
  self->_appLaunchesAtTimeAndDayForAppInContext = *(v4 + 46);
  *&self->_has |= 0x200000000000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x400000000000) == 0)
  {
LABEL_133:
    if ((v17 & 0x100000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_281;
  }

LABEL_280:
  self->_appLaunchesAtTimeAndDayInContext = *(v4 + 47);
  *&self->_has |= 0x400000000000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x100000000000) == 0)
  {
LABEL_134:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_282;
  }

LABEL_281:
  self->_appLaunchesAtTimeAndDayForApp = *(v4 + 45);
  *&self->_has |= 0x100000000000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x200000) == 0)
  {
LABEL_135:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_283;
  }

LABEL_282:
  self->_appLaunchesAtCoarseGeoHashInContext = *(v4 + 22);
  *&self->_has |= 0x200000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x80000) == 0)
  {
LABEL_136:
    if ((v17 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_284;
  }

LABEL_283:
  self->_appLaunchesAtCoarseGeoHashForApp = *(v4 + 20);
  *&self->_has |= 0x80000uLL;
  v17 = *(v4 + 146);
  if ((v17 & 0x80000000000) == 0)
  {
LABEL_137:
    if ((v17 & 0x20000000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_284:
  self->_appLaunchesAtSpecificGeoHashInContext = *(v4 + 44);
  *&self->_has |= 0x80000000000uLL;
  if ((*(v4 + 146) & 0x20000000000) != 0)
  {
LABEL_138:
    self->_appLaunchesAtSpecificGeoHashForApp = *(v4 + 42);
    *&self->_has |= 0x20000000000uLL;
  }

LABEL_139:
  v18 = *(v4 + 147);
  if (v18)
  {
    self->_appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate = *(v4 + 65);
    *(&self->_has + 1) |= 1uLL;
    v18 = *(v4 + 147);
  }

  if ((v18 & 2) != 0)
  {
    self->_appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate = *(v4 + 66);
    *(&self->_has + 1) |= 2uLL;
  }

  if ((v4[1184] & 2) != 0)
  {
    self->_isLocationServicesDisabled = *(v4 + 130);
    *(&self->_has + 4) |= 2u;
  }

  v19 = *(v4 + 147);
  if ((v19 & 0x40000000) != 0)
  {
    self->_appLaunchesInTwoHourTimeBucketForAppInContext = *(v4 + 95);
    *(&self->_has + 1) |= 0x40000000uLL;
    v19 = *(v4 + 147);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_147:
      if ((v19 & 0x20000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_288;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

  self->_appLaunchesInTwoHourTimeBucketInContext = *(v4 + 96);
  *(&self->_has + 1) |= 0x80000000uLL;
  v19 = *(v4 + 147);
  if ((v19 & 0x20000000) == 0)
  {
LABEL_148:
    if ((v19 & 0x20000000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_288:
  self->_appLaunchesInTwoHourTimeBucketForApp = *(v4 + 94);
  *(&self->_has + 1) |= 0x20000000uLL;
  if ((*(v4 + 147) & 0x20000000000000) != 0)
  {
LABEL_149:
    self->_currentTimeBucketFromZeroToTwentyFour = *(v4 + 118);
    *(&self->_has + 1) |= 0x20000000000000uLL;
  }

LABEL_150:
  v20 = *v5;
  if ((*v5 & 0x400000000000000) != 0)
  {
    self->_appLaunchesAtZoom7GeoHashForAppInContext = *(v4 + 59);
    *&self->_has |= 0x400000000000000uLL;
    v20 = *(v4 + 146);
    if ((v20 & 0x800000000000000) == 0)
    {
LABEL_152:
      if ((v20 & 0x200000000000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_292;
    }
  }

  else if ((v20 & 0x800000000000000) == 0)
  {
    goto LABEL_152;
  }

  self->_appLaunchesAtZoom7GeoHashInContext = *(v4 + 60);
  *&self->_has |= 0x800000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x200000000000000) == 0)
  {
LABEL_153:
    if ((v20 & 0x800000000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_293;
  }

LABEL_292:
  self->_appLaunchesAtZoom7GeoHashForApp = *(v4 + 58);
  *&self->_has |= 0x200000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x800000000000) == 0)
  {
LABEL_154:
    if ((v20 & 0x1000000000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_294;
  }

LABEL_293:
  self->_appLaunchesAtZoom7GeoHash0ForApp = *(v4 + 48);
  *&self->_has |= 0x800000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x1000000000000) == 0)
  {
LABEL_155:
    if ((v20 & 0x2000000000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_295;
  }

LABEL_294:
  self->_appLaunchesAtZoom7GeoHash1ForApp = *(v4 + 49);
  *&self->_has |= 0x1000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x2000000000000) == 0)
  {
LABEL_156:
    if ((v20 & 0x4000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_296;
  }

LABEL_295:
  self->_appLaunchesAtZoom7GeoHash2ForApp = *(v4 + 50);
  *&self->_has |= 0x2000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x4000000000000) == 0)
  {
LABEL_157:
    if ((v20 & 0x8000000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_297;
  }

LABEL_296:
  self->_appLaunchesAtZoom7GeoHash3ForApp = *(v4 + 51);
  *&self->_has |= 0x4000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x8000000000000) == 0)
  {
LABEL_158:
    if ((v20 & 0x10000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_298;
  }

LABEL_297:
  self->_appLaunchesAtZoom7GeoHash4ForApp = *(v4 + 52);
  *&self->_has |= 0x8000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x10000000000000) == 0)
  {
LABEL_159:
    if ((v20 & 0x20000000000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_299;
  }

LABEL_298:
  self->_appLaunchesAtZoom7GeoHash5ForApp = *(v4 + 53);
  *&self->_has |= 0x10000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x20000000000000) == 0)
  {
LABEL_160:
    if ((v20 & 0x40000000000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_300;
  }

LABEL_299:
  self->_appLaunchesAtZoom7GeoHash6ForApp = *(v4 + 54);
  *&self->_has |= 0x20000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x40000000000000) == 0)
  {
LABEL_161:
    if ((v20 & 0x80000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_301;
  }

LABEL_300:
  self->_appLaunchesAtZoom7GeoHash7ForApp = *(v4 + 55);
  *&self->_has |= 0x40000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x80000000000000) == 0)
  {
LABEL_162:
    if ((v20 & 0x100000000000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_302;
  }

LABEL_301:
  self->_appLaunchesAtZoom7GeoHash8ForApp = *(v4 + 56);
  *&self->_has |= 0x80000000000000uLL;
  v20 = *(v4 + 146);
  if ((v20 & 0x100000000000000) == 0)
  {
LABEL_163:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

LABEL_302:
  self->_appLaunchesAtZoom7GeoHash9ForApp = *(v4 + 57);
  *&self->_has |= 0x100000000000000uLL;
  if ((*(v4 + 146) & 0x80) != 0)
  {
LABEL_164:
    self->_appEntropyForZoom7GeoHash = *(v4 + 8);
    *&self->_has |= 0x80uLL;
  }

LABEL_165:
  if ((v4[1181] & 0x20) != 0)
  {
    self->_appNumberOfZoom7GeohashesForApp = *(v4 + 110);
    *(&self->_has + 1) |= 0x200000000000uLL;
  }

  v21 = *v5;
  if ((*v5 & 0x2000000) != 0)
  {
    self->_appLaunchesAtSSIDForAppInContext = *(v4 + 26);
    *&self->_has |= 0x2000000uLL;
    v21 = *(v4 + 146);
  }

  if ((v21 & 0x1000000) != 0)
  {
    self->_appLaunchesAtSSIDForApp = *(v4 + 25);
    *&self->_has |= 0x1000000uLL;
  }

  v22 = *(v4 + 147);
  if ((v22 & 4) != 0)
  {
    self->_appLaunchesForCoreMotionForAppInContext = *(v4 + 67);
    *(&self->_has + 1) |= 4uLL;
    v22 = *(v4 + 147);
  }

  if ((v22 & 8) != 0)
  {
    self->_appLaunchesInAirplaneModeForAppInContext = *(v4 + 68);
    *(&self->_has + 1) |= 8uLL;
  }

  if ((v4[1184] & 0x40) != 0)
  {
    self->_poiPopularityForAppInContext = *(v4 + 135);
    *(&self->_has + 4) |= 0x40u;
  }

  v23 = *v5;
  if ((v23 & 0x100) != 0)
  {
    self->_appLaunchPopularityAtPOIForAppInContext = *(v4 + 9);
    *&self->_has |= 0x100uLL;
    v23 = *(v4 + 146);
  }

  if ((v23 & 0x800000) != 0)
  {
    self->_appLaunchesAtPOIForAppInContext = *(v4 + 24);
    *&self->_has |= 0x800000uLL;
  }
}

@end