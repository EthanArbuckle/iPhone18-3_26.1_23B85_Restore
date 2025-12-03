@interface TemperatureHistoryController
- (void)addTemperatureWarningWithReason:(id)reason toDictionary:(id)dictionary;
- (void)parseLogsWithCollector:(id)collector;
- (void)start;
@end

@implementation TemperatureHistoryController

- (void)start
{
  v3 = [DSGeneralLogCollector alloc];
  v6[0] = @"101";
  v6[1] = @"ThermalUIAlertEnter";
  v6[2] = @"ThermalUIAlertExit";
  v6[3] = @"ThermalLevel";
  v4 = [NSArray arrayWithObjects:v6 count:4];
  v5 = [v3 initWithLogIDs:v4];

  if (([(TemperatureHistoryController *)self isCancelled]& 1) == 0)
  {
    [(TemperatureHistoryController *)self parseLogsWithCollector:v5];
  }

  [(TemperatureHistoryController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)collector
{
  collectorCopy = collector;
  result = [(TemperatureHistoryController *)self result];
  [result setStatusCode:&off_100004350];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000010F4;
  v47 = sub_100001104;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v6 = [NSMutableArray arrayWithCapacity:100];
  v7 = +[NSMutableDictionary dictionary];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000110C;
  v19[3] = &unk_100004120;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v22 = &v39;
  v9 = v7;
  v21 = v9;
  v23 = &v35;
  v24 = &v43;
  v25 = &v27;
  v26 = &v31;
  [collectorCopy enumerateLogLinesWithBlock:v19];
  if (([(TemperatureHistoryController *)self isCancelled]& 1) == 0)
  {
    if (v32[6] >= 1 && !*(v28 + 6))
    {
      *(v28 + 6) = 1;
      result2 = [(TemperatureHistoryController *)self result];
      [result2 setStatusCode:&off_100004380];
    }

    if (v44[5])
    {
      *(v28 + 6) = 2;
      result3 = [(TemperatureHistoryController *)self result];
      [result3 setStatusCode:&off_100004368];
    }

    v49[0] = @"maxTemperature";
    LODWORD(v10) = *(v40 + 6);
    v13 = [NSNumber numberWithFloat:v10];
    v50[0] = v13;
    v50[1] = v9;
    v49[1] = @"temperatureWarnings";
    v49[2] = @"temperatureWarningCount";
    v14 = [NSNumber numberWithInt:*(v36 + 6)];
    v50[2] = v14;
    v49[3] = @"totalTimeInTemperatureWarning";
    v15 = [NSNumber numberWithInt:v32[6]];
    v50[3] = v15;
    v49[4] = @"responseCode";
    v16 = [NSNumber numberWithInt:*(v28 + 6)];
    v49[5] = @"thermalMitigationEvents";
    v50[4] = v16;
    v50[5] = v8;
    v17 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];
    result4 = [(TemperatureHistoryController *)self result];
    [result4 setData:v17];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

- (void)addTemperatureWarningWithReason:(id)reason toDictionary:(id)dictionary
{
  reasonCopy = reason;
  dictionaryCopy = dictionary;
  v6 = @"Unspecified";
  if (reasonCopy)
  {
    v6 = reasonCopy;
  }

  v7 = v6;
  v8 = [dictionaryCopy objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue] + 1);
    [dictionaryCopy setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    [dictionaryCopy setObject:&off_100004398 forKeyedSubscript:v7];
  }
}

@end