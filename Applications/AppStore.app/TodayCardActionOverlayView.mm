@interface TodayCardActionOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore26TodayCardActionOverlayView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TodayCardActionOverlayView

- (_TtC8AppStore26TodayCardActionOverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_accessoryView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore26TodayCardActionOverlayView_sizeCategory) = 7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1001A6BF0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001A6F8C(change);
}

@end