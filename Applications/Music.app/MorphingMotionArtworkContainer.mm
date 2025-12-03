@interface MorphingMotionArtworkContainer
- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithCoder:(id)coder;
- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MorphingMotionArtworkContainer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005E7434();
}

- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(MorphingMotionArtworkContainer *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(MorphingMotionArtworkContainer *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end