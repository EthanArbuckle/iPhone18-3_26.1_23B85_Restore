@interface NTKGladiusSolarDataSource
- (NTKGladiusSolarDataSource)initWithDevice:(id)a3;
- (void)_updateSolarCurveData;
- (void)updateLocation;
- (void)updateNightFractionForDate:(id)a3;
@end

@implementation NTKGladiusSolarDataSource

- (NTKGladiusSolarDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = NTKGladiusSolarDataSource;
  v6 = [(NTKGladiusSolarDataSource *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[NTKDate faceDate];
    v9 = +[NTKLocationManager sharedLocationManager];
    v10 = [v9 anyLocation];

    v11 = +[NTKGladiusFaceBundle logObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "[NTKGladiusSolarDataSource initWithDevice:]";
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s date:%@, location:%@", buf, 0x20u);
    }

    v12 = [[NTKSolarTimeModel alloc] initWithReferenceDate:v8 referenceLocation:v10 twilightType:2];
    solarTimeModel = v7->_solarTimeModel;
    v7->_solarTimeModel = v12;

    v22[0] = &off_21578;
    v14 = [[NTKSolarWaypoint alloc] initWithType:1 solarTimeModel:v7->_solarTimeModel];
    v23[0] = v14;
    v22[1] = &off_21590;
    v15 = [[NTKSolarWaypoint alloc] initWithType:2 solarTimeModel:v7->_solarTimeModel];
    v23[1] = v15;
    v22[2] = &off_215A8;
    v16 = [[NTKSolarWaypoint alloc] initWithType:4 solarTimeModel:v7->_solarTimeModel];
    v23[2] = v16;
    v22[3] = &off_215C0;
    v17 = [[NTKSolarWaypoint alloc] initWithType:5 solarTimeModel:v7->_solarTimeModel];
    v23[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    solarWaypoints = v7->_solarWaypoints;
    v7->_solarWaypoints = v18;

    [(NTKGladiusSolarDataSource *)v7 _updateSolarCurveData];
  }

  return v7;
}

- (void)updateNightFractionForDate:(id)a3
{
  v4 = a3;
  if (([(NTKSolarTimeModel *)self->_solarTimeModel includesDate:v4]& 1) == 0)
  {
    [(NTKSolarTimeModel *)self->_solarTimeModel updateModelWithDate:v4];
    [(NTKGladiusSolarDataSource *)self _updateSolarCurveData];
  }

  [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodInCurrentSolarDayForDate:v4];
  v6 = v5;
  [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:?];
  v8 = v7;
  v9 = 48;
  if (v6 < 0.5)
  {
    v9 = 40;
  }

  [*(&self->super.isa + v9) floatValueForFraction:v7];
  self->_nightFraction = v10;
  v11 = +[NTKGladiusFaceBundle logObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    nightFraction = self->_nightFraction;
    v13 = 136316162;
    v14 = "[NTKGladiusSolarDataSource updateNightFractionForDate:]";
    v15 = 2112;
    v16 = v4;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = nightFraction;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s %@, percentage:%f, altitude:%f, nightFraction:%f", &v13, 0x34u);
  }
}

- (void)updateLocation
{
  v3 = +[NTKLocationManager sharedLocationManager];
  v4 = [v3 anyLocation];

  v5 = +[NTKGladiusFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[NTKGladiusSolarDataSource updateLocation]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  [(NTKSolarTimeModel *)self->_solarTimeModel setReferenceLocation:v4];
  [(NTKGladiusSolarDataSource *)self _updateSolarCurveData];
}

- (void)_updateSolarCurveData
{
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = [(NSDictionary *)self->_solarWaypoints allValues];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      v7 = 0;
      do
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v46 + 1) + 8 * v7) updateDependentValues];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v5);
  }

  v8 = [NTKSolarPath alloc];
  [(CLKDevice *)self->_device screenBounds];
  v9 = [v8 initWithBounds:self->_solarTimeModel solarTimeModel:0 verticallyFitsPathToBounds:0 usePlaceholderData:?];
  solarPath = self->_solarPath;
  self->_solarPath = v9;

  v11 = self->_solarPath;
  v12 = [(NSDictionary *)self->_solarWaypoints objectForKeyedSubscript:&off_21578];
  [v12 percentageThroughPeriodForWaypointDate];
  [(NTKSolarPath *)v11 altitudeAtPercentage:?];
  v14 = v13;

  v15 = self->_solarPath;
  v16 = [(NSDictionary *)self->_solarWaypoints objectForKeyedSubscript:&off_215C0];
  [v16 percentageThroughPeriodForWaypointDate];
  [(NTKSolarPath *)v15 altitudeAtPercentage:?];
  v18 = v17;

  v19 = self->_solarPath;
  v20 = [(NSDictionary *)self->_solarWaypoints objectForKeyedSubscript:&off_21590];
  [v20 percentageThroughPeriodForWaypointDate];
  [(NTKSolarPath *)v19 altitudeAtPercentage:?];
  v22 = v21;

  v23 = self->_solarPath;
  v24 = [(NSDictionary *)self->_solarWaypoints objectForKeyedSubscript:&off_215A8];
  [v24 percentageThroughPeriodForWaypointDate];
  [(NTKSolarPath *)v23 altitudeAtPercentage:?];
  v26 = v25;

  v27 = [NTKFloatCurve alloc];
  v28 = [[NTKFloatCurveElement alloc] initWithFloatValue:1.0 fraction:-30.0];
  v61[0] = v28;
  v29 = [[NTKFloatCurveElement alloc] initWithFloatValue:1.0 fraction:v14];
  v61[1] = v29;
  v30 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.5 fraction:v22];
  v61[2] = v30;
  v31 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.0 fraction:-v14];
  v61[3] = v31;
  v32 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.0 fraction:30.0];
  v61[4] = v32;
  v33 = [NSArray arrayWithObjects:v61 count:5];
  v34 = [v27 initWithFloatCurveElements:v33];
  preNoonBrightnessCurve = self->_preNoonBrightnessCurve;
  self->_preNoonBrightnessCurve = v34;

  v36 = [NTKFloatCurve alloc];
  v37 = [[NTKFloatCurveElement alloc] initWithFloatValue:1.0 fraction:-30.0];
  v60[0] = v37;
  v38 = [[NTKFloatCurveElement alloc] initWithFloatValue:1.0 fraction:v18];
  v60[1] = v38;
  v39 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.5 fraction:v26];
  v60[2] = v39;
  v40 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.0 fraction:-v18];
  v60[3] = v40;
  v41 = [[NTKFloatCurveElement alloc] initWithFloatValue:0.0 fraction:30.0];
  v60[4] = v41;
  v42 = [NSArray arrayWithObjects:v60 count:5];
  v43 = [v36 initWithFloatCurveElements:v42];
  postNoonBrightnessCurve = self->_postNoonBrightnessCurve;
  self->_postNoonBrightnessCurve = v43;

  v45 = +[NTKGladiusFaceBundle logObject];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v51 = "[NTKGladiusSolarDataSource _updateSolarCurveData]";
    v52 = 2048;
    v53 = v14;
    v54 = 2048;
    v55 = v22;
    v56 = 2048;
    v57 = v26;
    v58 = 2048;
    v59 = v18;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%s altitudes - dawn:%f, sunrise:%f, sunset:%f, dusk:%f", buf, 0x34u);
  }
}

@end