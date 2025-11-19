@interface RSSessionDelegateWrapper
- (_TtC8RoomPlan24RSSessionDelegateWrapper)init;
- (void)session:(id)a3 didFailWithError:(int64_t)a4;
- (void)session:(id)a3 didUpdateAsset:(id)a4;
- (void)session:(id)a3 didUpdateFloorPlan:(id)a4;
- (void)session:(id)a3 didUpdateMarkerCoaching:(id)a4;
- (void)session:(id)a3 didUpdateTextCoaching:(id)a4;
@end

@implementation RSSessionDelegateWrapper

- (void)session:(id)a3 didUpdateFloorPlan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9E23D0(v7, &unk_284D87468, sub_23A9E2F90, &block_descriptor_237);
}

- (void)session:(id)a3 didUpdateAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9E23D0(v7, &unk_284D87418, sub_23A9E2F88, &block_descriptor_231);
}

- (void)session:(id)a3 didUpdateTextCoaching:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9E23D0(v7, &unk_284D873C8, sub_23A9E2F80, &block_descriptor_225);
}

- (void)session:(id)a3 didFailWithError:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_23A9E2B28(a4, &OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_captureSession, &unk_284D87378, sub_23A9E2F78, &block_descriptor_219);
}

- (void)session:(id)a3 didUpdateMarkerCoaching:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9E23D0(v7, &unk_284D87328, sub_23A9E2F70, &block_descriptor_213);
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