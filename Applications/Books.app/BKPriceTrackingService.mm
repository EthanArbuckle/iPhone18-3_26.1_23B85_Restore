@interface BKPriceTrackingService
- (id)setNotificationsEnabled;
@end

@implementation BKPriceTrackingService

- (id)setNotificationsEnabled
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v7[4] = sub_10068E5A4;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10068A5C4;
  v7[3] = &unk_100A2B0A0;
  v4 = _Block_copy(v7);
  selfCopy = self;

  return v4;
}

@end