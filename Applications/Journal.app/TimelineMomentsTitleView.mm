@interface TimelineMomentsTitleView
- (_TtC7Journal24TimelineMomentsTitleView)initWithCoder:(id)coder;
- (_TtC7Journal24TimelineMomentsTitleView)initWithFrame:(CGRect)frame;
@end

@implementation TimelineMomentsTitleView

- (_TtC7Journal24TimelineMomentsTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(TimelineMomentsTitleView *)&v11 initWithFrame:x, y, width, height];
  sub_10004A7C8();

  return height;
}

- (_TtC7Journal24TimelineMomentsTitleView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end