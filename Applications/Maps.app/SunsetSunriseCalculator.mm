@interface SunsetSunriseCalculator
+ (SunsetSunriseCalculator)sharedCalculator;
- (SunsetSunriseCalculator)init;
- (id)_sunriseForLocation:(id)a3;
- (id)_sunsetForLocation:(id)a3;
- (int64_t)currentStateForLocation:(id)a3 offsetThreshold:(double)a4;
@end

@implementation SunsetSunriseCalculator

- (id)_sunriseForLocation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SunsetSunriseCalculator *)self almanac];
    [v4 coordinate];
    v7 = v6;
    v9 = v8;

    +[NSDate timeIntervalSinceReferenceDate];
    [v5 calculateAstronomicalTimeForLocation:2 time:v7 altitudeInDegrees:v9 options:{v10, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    v11 = [(SunsetSunriseCalculator *)self almanac];
    v12 = [v11 sunrise];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_sunsetForLocation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SunsetSunriseCalculator *)self almanac];
    [v4 coordinate];
    v7 = v6;
    v9 = v8;

    +[NSDate timeIntervalSinceReferenceDate];
    [v5 calculateAstronomicalTimeForLocation:2 time:v7 altitudeInDegrees:v9 options:{v10, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    v11 = [(SunsetSunriseCalculator *)self almanac];
    v12 = [v11 sunset];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)currentStateForLocation:(id)a3 offsetThreshold:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SunsetSunriseCalculator *)self almanac];
    [v6 coordinate];
    v9 = v8;
    v11 = v10;
    +[NSDate timeIntervalSinceReferenceDate];
    v12 = 2;
    [v7 calculateAstronomicalTimeForLocation:2 time:v9 altitudeInDegrees:v11 options:{v13, GEOAlmanacAltitudeMiddleOfCivilTwilight}];

    v14 = [(SunsetSunriseCalculator *)self almanac];
    v15 = [v14 sunset];
    v16 = +[NSDate date];
    [v15 timeIntervalSinceDate:v16];
    v18 = v17;

    v19 = [(SunsetSunriseCalculator *)self almanac];
    v20 = [v19 isDayLight];

    v21 = +[NSDate date];
    v22 = [(SunsetSunriseCalculator *)self almanac];
    v23 = [v22 sunrise];
    [v21 timeIntervalSinceDate:v23];
    v25 = v24;

    if (v18 <= 0.0 || v18 > a4)
    {
      v26 = 4;
      if (v25 <= 0.0 || v25 > a4)
      {
        v26 = 1;
      }

      if (v20)
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