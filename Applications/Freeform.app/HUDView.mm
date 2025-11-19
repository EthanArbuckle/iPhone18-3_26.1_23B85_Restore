@interface HUDView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC8Freeform7HUDView)initWithCoder:(id)a3;
@end

@implementation HUDView

- (_TtC8Freeform7HUDView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform7HUDView_contentView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGRect)bounds
{
  sub_1005CAC70(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  sub_1005CAC70(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end