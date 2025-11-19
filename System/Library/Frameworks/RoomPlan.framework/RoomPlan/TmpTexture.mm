@interface TmpTexture
- (_TtC8RoomPlan10TmpTexture)init;
@end

@implementation TmpTexture

- (_TtC8RoomPlan10TmpTexture)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TmpTexture();
  return [(TmpTexture *)&v3 init];
}

@end