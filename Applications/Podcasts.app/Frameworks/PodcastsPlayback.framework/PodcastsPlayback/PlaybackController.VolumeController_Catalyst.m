@interface PlaybackController.VolumeController_Catalyst
- (void)updateOutputContext:(id)a3;
@end

@implementation PlaybackController.VolumeController_Catalyst

- (void)updateOutputContext:(id)a3
{
  v3 = sub_59474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59454();

  sub_4F504();

  (*(v4 + 8))(v7, v3);
}

@end