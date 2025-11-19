@interface SystemApertureIconView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC17TrackingUIService22SystemApertureIconView)initWithCoder:(id)a3;
- (_TtC17TrackingUIService22SystemApertureIconView)initWithFrame:(CGRect)a3;
@end

@implementation SystemApertureIconView

- (_TtC17TrackingUIService22SystemApertureIconView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SystemApertureIconView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC17TrackingUIService22SystemApertureIconView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView) sizeThatFits:{a3.width, a3.height}];
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView) sizeThatFits:{a4, a3.width, a3.height}];
  if (v4 <= 1.0)
  {
    v4 = 1.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end