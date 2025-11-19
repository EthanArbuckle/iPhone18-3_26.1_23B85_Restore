@interface TodayCardActionOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore26TodayCardActionOverlayView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TodayCardActionOverlayView

- (_TtC8AppStore26TodayCardActionOverlayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_sizeCategory) = 7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1001A68F8(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001A6BF0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001A6F8C(a3);
}

@end