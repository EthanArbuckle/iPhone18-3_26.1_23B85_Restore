@interface BatteryCenterObserver
- (void)connectedDevicesDidChange:(id)a3;
@end

@implementation BatteryCenterObserver

- (void)connectedDevicesDidChange:(id)a3
{
  sub_1C1C4D00C(0, &qword_1ED7C5390);
  v4 = sub_1C1C9B338();
  v5 = self;
  sub_1C1C50D20(v4);
}

@end