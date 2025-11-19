@interface RAPRecordManagerTrafficIncidentReportSaver
+ (id)sharedInstance;
- (RAPRecordManagerTrafficIncidentReportSaver)init;
@end

@implementation RAPRecordManagerTrafficIncidentReportSaver

+ (id)sharedInstance
{
  if (qword_10195E240 != -1)
  {
    dispatch_once(&qword_10195E240, &stru_101632488);
  }

  v3 = qword_10195E238;

  return v3;
}

- (RAPRecordManagerTrafficIncidentReportSaver)init
{
  v5.receiver = self;
  v5.super_class = RAPRecordManagerTrafficIncidentReportSaver;
  v2 = [(RAPRecordManagerTrafficIncidentReportSaver *)&v5 init];
  if (v2)
  {
    v3 = +[TrafficIncidentsStorageManager sharedInstance];
    [v3 addObserver:v2];
  }

  return v2;
}

@end