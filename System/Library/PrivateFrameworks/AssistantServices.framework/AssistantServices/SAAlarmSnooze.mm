@interface SAAlarmSnooze
- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower;
@end

@implementation SAAlarmSnooze

- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower
{
  followerCopy = follower;
  mapCopy = map;
  v11 = sub_100015560(tuples);
  alarmIds = [(SAAlarmSnooze *)self alarmIds];
  v13 = sub_10009A0E0(v11, alarmIds, followerCopy);

  deviceInfo = [v13 deviceInfo];
  v15 = sub_1002BC960(mapCopy, deviceInfo);

  alarmIds2 = [(SAAlarmSnooze *)self alarmIds];
  v17 = sub_10009A328(v13, v15, alarmIds2, @"snooze");

  return v17;
}

@end