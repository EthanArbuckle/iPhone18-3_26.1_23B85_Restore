@interface TimelineMomentsTitleView
- (_TtC7Journal24TimelineMomentsTitleView)initWithCoder:(id)a3;
- (_TtC7Journal24TimelineMomentsTitleView)initWithFrame:(CGRect)a3;
@end

@implementation TimelineMomentsTitleView

- (_TtC7Journal24TimelineMomentsTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TimelineMomentsTitleView *)&v11 initWithFrame:x, y, width, height];
  sub_10004A7C8();

  return v9;
}

- (_TtC7Journal24TimelineMomentsTitleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end