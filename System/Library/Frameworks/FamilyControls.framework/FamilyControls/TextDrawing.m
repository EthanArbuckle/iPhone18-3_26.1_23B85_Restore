@interface TextDrawing
- (CGSize)drawingSize;
- (_TtC19FamilyControlsAgent11TextDrawing)init;
@end

@implementation TextDrawing

- (CGSize)drawingSize
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_drawingSize);
  v3 = *&self->tag[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_drawingSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC19FamilyControlsAgent11TextDrawing)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end