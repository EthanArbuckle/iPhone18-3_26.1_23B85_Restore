@interface BrandedAppTodayCardNoArtBackgroundView
- (_TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BrandedAppTodayCardNoArtBackgroundView

- (_TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
  v5 = type metadata accessor for Artwork.Style();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100560F38();
}

@end