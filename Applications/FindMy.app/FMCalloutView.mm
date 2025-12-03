@interface FMCalloutView
- (_TtC6FindMy13FMCalloutView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation FMCalloutView

- (_TtC6FindMy13FMCalloutView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy13FMCalloutView_path;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIBezierPath) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy13FMCalloutView_triangleWidth) = 0x4028000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_10031A31C();
}

@end