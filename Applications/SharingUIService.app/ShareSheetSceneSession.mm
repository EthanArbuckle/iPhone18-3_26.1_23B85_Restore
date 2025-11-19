@interface ShareSheetSceneSession
- (_TtC16SharingUIService22ShareSheetSceneSession)init;
- (void)activityContentViewControllerDidUpdateDataSource:(id)a3;
- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)a3;
- (void)sheetInteractionController:(id)a3 didReceiveDraggingEvent:(id)a4;
@end

@implementation ShareSheetSceneSession

- (_TtC16SharingUIService22ShareSheetSceneSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activityContentViewControllerDidUpdateDataSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001121C();
}

- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000FD74(v4);
}

- (void)sheetInteractionController:(id)a3 didReceiveDraggingEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10001130C(v7);
}

@end