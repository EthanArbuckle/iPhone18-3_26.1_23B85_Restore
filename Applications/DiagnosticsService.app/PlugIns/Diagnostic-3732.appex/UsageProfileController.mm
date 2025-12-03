@interface UsageProfileController
- (id)stringFromDate:(id)date;
- (void)parseLogsWithCollector:(id)collector;
- (void)start;
@end

@implementation UsageProfileController

- (void)start
{
  v3 = [[DSGeneralLogCollector alloc] initWithLogIDs:&off_1000042F8];
  if (([(UsageProfileController *)self isCancelled]& 1) == 0)
  {
    [(UsageProfileController *)self parseLogsWithCollector:v3];
  }

  [(UsageProfileController *)self setFinished:1];
}

- (void)parseLogsWithCollector:(id)collector
{
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_100001358;
  v63 = sub_100001368;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100001358;
  v57 = sub_100001368;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100001358;
  v51 = sub_100001368;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100001358;
  v45 = sub_100001368;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100001358;
  v39 = sub_100001368;
  v40 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100001370;
  v34[3] = &unk_100004110;
  v34[4] = self;
  v34[5] = &v59;
  v34[6] = &v53;
  v34[7] = &v47;
  v34[8] = &v41;
  v34[9] = &v35;
  collectorCopy = collector;
  [collectorCopy enumerateLogLinesWithBlock:v34];
  if (([(UsageProfileController *)self isCancelled]& 1) != 0)
  {
    date2 = 0;
    date = 0;
  }

  else
  {
    v4 = v60[5];
    if (v4)
    {
      usageTime = [v4 usageTime];
      standbyTime = [v60[5] standbyTime];
      batteryLevel = [v60[5] batteryLevel];
    }

    else
    {
      batteryLevel = 0;
      standbyTime = 0;
      usageTime = 0;
    }

    v8 = v54[5];
    if (v8)
    {
      usageTime2 = [v8 usageTime];
      batteryLevel2 = [v54[5] batteryLevel];
      date = [v54[5] date];
    }

    else
    {
      usageTime2 = 0;
      batteryLevel2 = 0;
      date = 0;
    }

    v11 = v48[5];
    if (v11)
    {
      HIDWORD(v27) = [v11 standbyTime];
      LODWORD(v27) = [v48[5] batteryLevel];
      date2 = [v48[5] date];
    }

    else
    {
      v27 = 0;
      date2 = 0;
    }

    if (v42[5] && (v12 = v36[5]) != 0)
    {
      date3 = [v12 date];
      date4 = [v42[5] date];
      [date3 timeIntervalSinceDate:date4];
      v16 = v15 > 0.0;
    }

    else
    {
      v16 = 0;
    }

    v65[0] = @"lastUsageLength";
    v30 = [NSNumber numberWithInt:usageTime];
    v66[0] = v30;
    v65[1] = @"lastStandbyLength";
    v29 = [NSNumber numberWithInt:standbyTime];
    v66[1] = v29;
    v65[2] = @"batteryLevelAfterLastUsage";
    v28 = [NSNumber numberWithInt:batteryLevel];
    v66[2] = v28;
    v65[3] = @"pluggedInAfterLastUsage";
    v17 = [NSNumber numberWithBool:v16];
    v66[3] = v17;
    v65[4] = @"longestUsageLength";
    v18 = [NSNumber numberWithInt:usageTime2];
    v66[4] = v18;
    v65[5] = @"longestUsageDate";
    v19 = [(UsageProfileController *)self stringFromDate:date];
    v66[5] = v19;
    v65[6] = @"batteryLevelAfterLongestUsage";
    v20 = [NSNumber numberWithInt:batteryLevel2];
    v66[6] = v20;
    v65[7] = @"longestStandbyDate";
    v21 = [(UsageProfileController *)self stringFromDate:date2];
    v66[7] = v21;
    v65[8] = @"longestStandbyLength";
    v22 = [NSNumber numberWithInt:HIDWORD(v27)];
    v66[8] = v22;
    v65[9] = @"batteryLevelAfterLongestStandby";
    v23 = [NSNumber numberWithInt:v27];
    v66[9] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:10];
    result = [(UsageProfileController *)self result];
    [result setData:v24];

    result2 = [(UsageProfileController *)self result];
    [result2 setStatusCode:&off_100004310];
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
}

- (id)stringFromDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = +[DSDateFormatter sharedFormatter];
    v5 = [v4 formatterWithType:0];
    v6 = [v5 stringFromDate:dateCopy];
    v7 = stringOrNull(v6);
  }

  else
  {
    v7 = +[NSNull null];
  }

  return v7;
}

@end