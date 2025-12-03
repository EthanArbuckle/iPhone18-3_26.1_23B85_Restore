@interface SunsetSunriseCalculator
+ (SunsetSunriseCalculator)sharedCalculator;
- (SunsetSunriseCalculator)init;
- (id)_sunriseForLocation:(id)location;
- (id)_sunsetForLocation:(id)location;
- (int64_t)currentStateForLocation:(id)location offsetThreshold:(double)threshold;
@end

@implementation SunsetSunriseCalculator

- (id)_sunriseForLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    almanac = [(SunsetSunriseCalculator *)self almanac];
    [locationCopy coordinate];
    v7 = v6;
    v9 = v8;

    +[NSDate timeIntervalSinceReferenceDate];
    [almanac calculateAstronomicalTimeForLocation:2 time:v7 altitudeInDegrees:v9 options:{v10, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    almanac2 = [(SunsetSunriseCalculator *)self almanac];
    sunrise = [almanac2 sunrise];
  }

  else
  {
    sunrise = 0;
  }

  return sunrise;
}

- (id)_sunsetForLocation:(id)location
{
  if (location)
  {
    locationCopy = location;
    almanac = [(SunsetSunriseCalculator *)self almanac];
    [locationCopy coordinate];
    v7 = v6;
    v9 = v8;

    +[NSDate timeIntervalSinceReferenceDate];
    [almanac calculateAstronomicalTimeForLocation:2 time:v7 altitudeInDegrees:v9 options:{v10, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    almanac2 = [(SunsetSunriseCalculator *)self almanac];
    sunset = [almanac2 sunset];
  }

  else
  {
    sunset = 0;
  }

  return sunset;
}

- (int64_t)currentStateForLocation:(id)location offsetThreshold:(double)threshold
{
  locationCopy = location;
  if (locationCopy)
  {
    almanac = [(SunsetSunriseCalculator *)self almanac];
    [locationCopy coordinate];
    v9 = v8;
    v11 = v10;
    +[NSDate timeIntervalSinceReferenceDate];
    v12 = 2;
    [almanac calculateAstronomicalTimeForLocation:2 time:v9 altitudeInDegrees:v11 options:{v13, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    almanac2 = [(SunsetSunriseCalculator *)self almanac];
    sunset = [almanac2 sunset];
    v16 = +[NSDate date];
    [sunset timeIntervalSinceDate:v16];
    v18 = v17;

    almanac3 = [(SunsetSunriseCalculator *)self almanac];
    isDayLight = [almanac3 isDayLight];

    v21 = +[NSDate date];
    almanac4 = [(SunsetSunriseCalculator *)self almanac];
    sunrise = [almanac4 sunrise];
    [v21 timeIntervalSinceDate:sunrise];
    v25 = v24;

    if (v18 <= 0.0 || v18 > threshold)
    {
      v26 = 4;
      if (v25 <= 0.0 || v25 > threshold)
      {
        v26 = 1;
      }

      if (isDayLight)
      {
        v12 = v26;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (SunsetSunriseCalculator)init
{
  v6.receiver = self;
  v6.super_class = SunsetSunriseCalculator;
  v2 = [(SunsetSunriseCalculator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GEOAlmanac);
    almanac = v2->_almanac;
    v2->_almanac = v3;
  }

  return v2;
}

+ (SunsetSunriseCalculator)sharedCalculator
{
  if (qword_10195F258 != -1)
  {
    dispatch_once(&qword_10195F258, &stru_1016554B0);
  }

  v3 = qword_10195F250;

  return v3;
}

@end