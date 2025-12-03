@interface ADPearlColorInFieldCalibrationTelemetryData
- (ADPearlColorInFieldCalibrationTelemetryData)init;
- (ADPearlColorInFieldCalibrationTelemetryData)initWithDictionaryRepresentation:(id)representation;
- (id)persistenceData;
- (void)initEventTimestampsArray;
- (void)reportBackendRunTime:(unint64_t)time;
- (void)reset;
- (void)updateLastExecutionTime:(unint64_t)time;
@end

@implementation ADPearlColorInFieldCalibrationTelemetryData

- (ADPearlColorInFieldCalibrationTelemetryData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  selfCopy = [representationCopy objectForKeyedSubscript:@"telemetryVersion"];

  if (selfCopy)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"telemetryVersion"];
    self->_telemetryVersion = [v6 unsignedIntValue];

    v7 = [representationCopy objectForKeyedSubscript:@"lastExecutionTime"];
    if (!v7)
    {
LABEL_6:
      selfCopy = 0;
      goto LABEL_14;
    }

    v8 = [representationCopy objectForKeyedSubscript:@"totalNumRuns"];
    selfCopy = v8;
    if (!v8)
    {

      goto LABEL_14;
    }

    if (self->_telemetryVersion < 2)
    {
    }

    else
    {
      v9 = [representationCopy objectForKeyedSubscript:@"lastToleranceDetectedTime"];

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v20.receiver = self;
    v20.super_class = ADPearlColorInFieldCalibrationTelemetryData;
    v10 = [(ADPearlColorInFieldCalibrationTelemetryData *)&v20 init];
    v11 = v10;
    if (v10)
    {
      [(ADPearlColorInFieldCalibrationTelemetryData *)v10 reset];
      v12 = [representationCopy objectForKeyedSubscript:@"lastExecutionTime"];
      v11->_lastExecutionTime = [v12 unsignedLongValue];

      v13 = [representationCopy objectForKeyedSubscript:@"totalNumRuns"];
      v11->_totalNumRuns = [v13 unsignedLongValue];

      v14 = [representationCopy objectForKeyedSubscript:@"lastToleranceDetectedTime"];
      v11->_lastToleranceDetectedTime = [v14 unsignedLongValue];

      v15 = [representationCopy objectForKeyedSubscript:@"firedEventTimestampsArray"];
      v16 = [v15 mutableCopy];
      firedEventTimestampsArray = v11->_firedEventTimestampsArray;
      v11->_firedEventTimestampsArray = v16;

      v18 = v11->_firedEventTimestampsArray;
      if (!v18 || [(NSMutableArray *)v18 count]!= 15)
      {
        [(ADPearlColorInFieldCalibrationTelemetryData *)v11 initEventTimestampsArray];
      }
    }

    self = v11;
    selfCopy = self;
  }

LABEL_14:

  return selfCopy;
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

- (void)updateLastExecutionTime:(unint64_t)time
{
  lastExecutionTime = self->_lastExecutionTime;
  if (lastExecutionTime)
  {
    self->_timeSincePrevRun = time - lastExecutionTime;
  }

  self->_lastExecutionTime = time;
}

- (void)reset
{
  *&self->_maxBackendRunTime = xmmword_240406F10;
  self->_totalBackendTime = 0;
  self->_frontEndTime = 0;
  self->_timeSincePrevRun = 0;
}

- (void)reportBackendRunTime:(unint64_t)time
{
  timeCopy = time;
  if (self->_maxBackendRunTime < time)
  {
    self->_maxBackendRunTime = timeCopy;
  }

  if (self->_minBackendRunTime > time)
  {
    self->_minBackendRunTime = timeCopy;
  }

  self->_totalBackendTime = (time + self->_totalBackendTime);
}

- (ADPearlColorInFieldCalibrationTelemetryData)init
{
  v5.receiver = self;
  v5.super_class = ADPearlColorInFieldCalibrationTelemetryData;
  v2 = [(ADPearlColorInFieldCalibrationTelemetryData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADPearlColorInFieldCalibrationTelemetryData *)v2 reset];
    v3->_lastExecutionTime = 0;
    v3->_totalNumRuns = 0;
    v3->_lastToleranceDetectedTime = 0;
    v3->_telemetryVersion = 3;
    [(ADPearlColorInFieldCalibrationTelemetryData *)v3 initEventTimestampsArray];
  }

  return v3;
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

@end