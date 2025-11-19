@interface ADJasperColorInFieldCalibrationTelemetryData
- (ADJasperColorInFieldCalibrationTelemetryData)init;
- (ADJasperColorInFieldCalibrationTelemetryData)initWithDictionaryRepresentation:(id)a3;
- (float)getAverageNumValidPoints;
- (id)persistenceData;
- (void)initEventTimestampsArray;
- (void)reportBackendRunTime:(unint64_t)a3;
- (void)reset;
- (void)updateLastExecutionTime:(unint64_t)a3;
- (void)updateValidPointsSum:(unint64_t)a3;
@end

@implementation ADJasperColorInFieldCalibrationTelemetryData

- (ADJasperColorInFieldCalibrationTelemetryData)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"telemetryVersion"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"telemetryVersion"];
    self->_telemetryVersion = [v6 unsignedIntValue];

    v7 = [v4 objectForKeyedSubscript:@"lastExecutionTime"];
    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_14;
    }

    v8 = [v4 objectForKeyedSubscript:@"totalNumRuns"];
    v5 = v8;
    if (!v8)
    {

      goto LABEL_14;
    }

    if (self->_telemetryVersion < 2)
    {
    }

    else
    {
      v9 = [v4 objectForKeyedSubscript:@"lastToleranceDetectedTime"];

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20.receiver = self;
    v20.super_class = ADJasperColorInFieldCalibrationTelemetryData;
    v10 = [(ADJasperColorInFieldCalibrationTelemetryData *)&v20 init];
    v11 = v10;
    if (v10)
    {
      [(ADJasperColorInFieldCalibrationTelemetryData *)v10 reset];
      v12 = [v4 objectForKeyedSubscript:@"lastExecutionTime"];
      v11->_lastExecutionTime = [v12 unsignedLongValue];

      v13 = [v4 objectForKeyedSubscript:@"totalNumRuns"];
      v11->_totalNumRuns = [v13 unsignedLongValue];

      v14 = [v4 objectForKeyedSubscript:@"lastToleranceDetectedTime"];
      v11->_lastToleranceDetectedTime = [v14 unsignedLongValue];

      v15 = [v4 objectForKeyedSubscript:@"firedEventTimestampsArray"];
      v16 = [v15 mutableCopy];
      firedEventTimestampsArray = v11->_firedEventTimestampsArray;
      v11->_firedEventTimestampsArray = v16;

      v18 = v11->_firedEventTimestampsArray;
      if (!v18 || [(NSMutableArray *)v18 count]!= 15)
      {
        [(ADJasperColorInFieldCalibrationTelemetryData *)v11 initEventTimestampsArray];
      }
    }

    self = v11;
    v5 = self;
  }

LABEL_14:

  return v5;
}

- (id)persistenceData
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"lastExecutionTime";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_lastExecutionTime];
  v11[0] = v3;
  v10[1] = @"totalNumRuns";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_totalNumRuns];
  v11[1] = v4;
  v10[2] = @"telemetryVersion";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:3];
  v11[2] = v5;
  v10[3] = @"lastToleranceDetectedTime";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_lastToleranceDetectedTime];
  v10[4] = @"firedEventTimestampsArray";
  firedEventTimestampsArray = self->_firedEventTimestampsArray;
  v11[3] = v6;
  v11[4] = firedEventTimestampsArray;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (float)getAverageNumValidPoints
{
  validPointsSumEventsCount = self->_validPointsSumEventsCount;
  if (validPointsSumEventsCount)
  {
    return self->_validPointsSum / validPointsSumEventsCount;
  }

  else
  {
    return 0.0;
  }
}

- (void)updateValidPointsSum:(unint64_t)a3
{
  v3 = vdupq_n_s64(1uLL);
  v3.i64[0] = a3;
  *&self->_validPointsSum = vaddq_s64(*&self->_validPointsSum, v3);
}

- (void)updateLastExecutionTime:(unint64_t)a3
{
  lastExecutionTime = self->_lastExecutionTime;
  if (lastExecutionTime)
  {
    self->_timeSincePrevRun = a3 - lastExecutionTime;
  }

  self->_lastExecutionTime = a3;
}

- (void)reportBackendRunTime:(unint64_t)a3
{
  v3 = a3;
  if (self->_maxBackEndRunTime < a3)
  {
    self->_maxBackEndRunTime = v3;
  }

  if (self->_minBackEndRunTime > a3)
  {
    self->_minBackEndRunTime = v3;
  }

  self->_totalBackEndTime = (a3 + self->_totalBackEndTime);
}

- (void)reset
{
  *&self->_maxBackEndRunTime = xmmword_240406F10;
  self->_validPointsSum = 0;
  self->_validPointsSumEventsCount = 0;
  self->_totalBackEndTime = 0;
  self->_frontEndTime = 0;
  self->_timeSincePrevRun = 0;
}

- (void)initEventTimestampsArray
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:15];
  firedEventTimestampsArray = self->_firedEventTimestampsArray;
  self->_firedEventTimestampsArray = v3;

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:?];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
  [(NSMutableArray *)self->_firedEventTimestampsArray addObject:v5];
}

- (ADJasperColorInFieldCalibrationTelemetryData)init
{
  v5.receiver = self;
  v5.super_class = ADJasperColorInFieldCalibrationTelemetryData;
  v2 = [(ADJasperColorInFieldCalibrationTelemetryData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADJasperColorInFieldCalibrationTelemetryData *)v2 reset];
    v3->_lastExecutionTime = 0;
    v3->_totalNumRuns = 0;
    v3->_lastToleranceDetectedTime = 0;
    v3->_telemetryVersion = 3;
    [(ADJasperColorInFieldCalibrationTelemetryData *)v3 initEventTimestampsArray];
  }

  return v3;
}

@end