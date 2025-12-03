@interface ShareSheetSceneSession
- (_TtC16SharingUIService22ShareSheetSceneSession)init;
- (void)activityContentViewControllerDidUpdateDataSource:(id)source;
- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)metadata;
- (void)sheetInteractionController:(id)controller didReceiveDraggingEvent:(id)event;
@end

@implementation ShareSheetSceneSession

- (_TtC16SharingUIService22ShareSheetSceneSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activityContentViewControllerDidUpdateDataSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_10001121C();
}

- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_10000FD74(metadataCopy);
}

- (void)sheetInteractionController:(id)controller didReceiveDraggingEvent:(id)event
{
  controllerCopy = controller;
  eventCopy = event;
  selfCopy = self;
  sub_10001130C(eventCopy);
}

@end