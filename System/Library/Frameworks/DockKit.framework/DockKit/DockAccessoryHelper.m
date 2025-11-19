@interface DockAccessoryHelper
- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8;
- (void)batteryStateDataWithInfo:(id)a3 data:(id)a4;
- (void)disconnectedWithErr:(id)a3;
- (void)systemEventDataWithInfo:(id)a3 data:(id)a4;
- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4;
- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5;
@end

@implementation DockAccessoryHelper

- (void)actuatorFeedbackWithInfo:(id)a3 system:(id)a4 actuators:(id)a5 positions:(id)a6 velocities:(id)a7 timestamp:(double)a8
{
  v11 = sub_2381CA1DC();
  v12 = sub_2381CA1DC();
  v13 = sub_2381CA1DC();
  v14 = a3;
  v15 = self;
  sub_2381C4270(a8, v14, v11, v12, v13);
}

- (void)systemEventDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2381A6870(v6, v7);
}

- (void)batteryStateDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2381A69EC(v6, v7);
}

- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2381A6CDC();
}

- (void)trajectoryProgressFeedbackWithInfo:(id)a3 system:(id)a4 progress:(id)a5
{
  v8 = sub_2381CA0FC();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_2381C4420(v8, v10, v12);
}

- (void)disconnectedWithErr:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_2381A7058(a3);
}

@end