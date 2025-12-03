@interface SystemApertureIconView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC17TrackingUIService22SystemApertureIconView)initWithCoder:(id)coder;
- (_TtC17TrackingUIService22SystemApertureIconView)initWithFrame:(CGRect)frame;
@end

@implementation SystemApertureIconView

- (_TtC17TrackingUIService22SystemApertureIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SystemApertureIconView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC17TrackingUIService22SystemApertureIconView)initWithCoder:(id)coder
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView) sizeThatFits:{fits.width, fits.height}];
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC17TrackingUIService22SystemApertureIconView_appIconImageView) sizeThatFits:{mode, fits.width, fits.height}];
  if (v4 <= 1.0)
  {
    v4 = 1.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end