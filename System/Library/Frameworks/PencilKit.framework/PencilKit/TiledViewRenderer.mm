@interface TiledViewRenderer
- (_TtC9PencilKit17TiledViewRenderer)init;
@end

@implementation TiledViewRenderer

- (_TtC9PencilKit17TiledViewRenderer)init
{
  v3 = OBJC_IVAR____TtC9PencilKit17TiledViewRenderer_startTime;
  [objc_opt_self() timeIntervalSinceReferenceDate];
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC9PencilKit17TiledViewRenderer_duration) = 0x3FF0000000000000;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TiledViewRenderer();
  return [(TiledViewRenderer *)&v6 init];
}

@end