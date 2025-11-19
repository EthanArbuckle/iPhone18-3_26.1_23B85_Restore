@interface MorphingMotionArtworkContainer
- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithCoder:(id)a3;
- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MorphingMotionArtworkContainer

- (void)layoutSubviews
{
  v2 = self;
  sub_1005E7434();
}

- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MorphingMotionArtworkContainer *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(MorphingMotionArtworkContainer *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end