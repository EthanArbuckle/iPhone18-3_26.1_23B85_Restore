@interface VolumeController.Delegate
- (_TtCC5Music16VolumeControllerP33_E7E28279A551A35ED3C988571B98BE8D8Delegate)init;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation VolumeController.Delegate

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = a3;
  v6 = self;
  sub_10030BD30();
}

- (_TtCC5Music16VolumeControllerP33_E7E28279A551A35ED3C988571B98BE8D8Delegate)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for VolumeController.Delegate();
  return [(VolumeController.Delegate *)&v4 init];
}

@end