@interface DockAccessoryHelper
- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp;
- (void)batteryStateDataWithInfo:(id)info data:(id)data;
- (void)disconnectedWithErr:(id)err;
- (void)systemEventDataWithInfo:(id)info data:(id)data;
- (void)trackingSummaryDataWithInfo:(id)info data:(id)data;
- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress;
@end

@implementation DockAccessoryHelper

- (void)actuatorFeedbackWithInfo:(id)info system:(id)system actuators:(id)actuators positions:(id)positions velocities:(id)velocities timestamp:(double)timestamp
{
  v11 = sub_2381CA1DC();
  v12 = sub_2381CA1DC();
  v13 = sub_2381CA1DC();
  infoCopy = info;
  selfCopy = self;
  sub_2381C4270(timestamp, infoCopy, v11, v12, v13);
}

- (void)systemEventDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_2381A6870(infoCopy, dataCopy);
}

- (void)batteryStateDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_2381A69EC(infoCopy, dataCopy);
}

- (void)trackingSummaryDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_2381A6CDC();
}

- (void)trajectoryProgressFeedbackWithInfo:(id)info system:(id)system progress:(id)progress
{
  v8 = sub_2381CA0FC();
  v10 = v9;
  infoCopy = info;
  progressCopy = progress;
  selfCopy = self;
  sub_2381C4420(v8, v10, progressCopy);
}

- (void)disconnectedWithErr:(id)err
{
  selfCopy = self;
  errCopy = err;
  sub_2381A7058(err);
}

@end