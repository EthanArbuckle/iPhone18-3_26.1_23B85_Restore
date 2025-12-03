@interface RSSessionDelegateWrapper
- (_TtC8RoomPlan24RSSessionDelegateWrapper)init;
- (void)session:(id)session didFailWithError:(int64_t)error;
- (void)session:(id)session didUpdateAsset:(id)asset;
- (void)session:(id)session didUpdateFloorPlan:(id)plan;
- (void)session:(id)session didUpdateMarkerCoaching:(id)coaching;
- (void)session:(id)session didUpdateTextCoaching:(id)coaching;
@end

@implementation RSSessionDelegateWrapper

- (void)session:(id)session didUpdateFloorPlan:(id)plan
{
  sessionCopy = session;
  planCopy = plan;
  selfCopy = self;
  sub_23A9E23D0(planCopy, &unk_284D87468, sub_23A9E2F90, &block_descriptor_237);
}

- (void)session:(id)session didUpdateAsset:(id)asset
{
  sessionCopy = session;
  assetCopy = asset;
  selfCopy = self;
  sub_23A9E23D0(assetCopy, &unk_284D87418, sub_23A9E2F88, &block_descriptor_231);
}

- (void)session:(id)session didUpdateTextCoaching:(id)coaching
{
  sessionCopy = session;
  coachingCopy = coaching;
  selfCopy = self;
  sub_23A9E23D0(coachingCopy, &unk_284D873C8, sub_23A9E2F80, &block_descriptor_225);
}

- (void)session:(id)session didFailWithError:(int64_t)error
{
  sessionCopy = session;
  selfCopy = self;
  sub_23A9E2B28(error, &OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_captureSession, &unk_284D87378, sub_23A9E2F78, &block_descriptor_219);
}

- (void)session:(id)session didUpdateMarkerCoaching:(id)coaching
{
  sessionCopy = session;
  coachingCopy = coaching;
  selfCopy = self;
  sub_23A9E23D0(coachingCopy, &unk_284D87328, sub_23A9E2F70, &block_descriptor_213);
}

- (_TtC8RoomPlan24RSSessionDelegateWrapper)init
{
  swift_weakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_initializationState) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RSSessionDelegateWrapper();
  return [(RSSessionDelegateWrapper *)&v4 init];
}

@end