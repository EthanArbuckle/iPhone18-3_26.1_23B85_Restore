@interface SAAlarmSnooze
- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7;
@end

@implementation SAAlarmSnooze

- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7
{
  v7 = a7;
  v10 = a5;
  v11 = sub_100015560(a3);
  v12 = [(SAAlarmSnooze *)self alarmIds];
  v13 = sub_10009A0E0(v11, v12, v7);

  v14 = [v13 deviceInfo];
  v15 = sub_1002BC960(v10, v14);

  v16 = [(SAAlarmSnooze *)self alarmIds];
  v17 = sub_10009A328(v13, v15, v16, @"snooze");

  return v17;
}

@end