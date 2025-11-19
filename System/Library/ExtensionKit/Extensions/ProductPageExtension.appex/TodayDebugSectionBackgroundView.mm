@interface TodayDebugSectionBackgroundView
- (_TtC20ProductPageExtension31TodayDebugSectionBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TodayDebugSectionBackgroundView

- (_TtC20ProductPageExtension31TodayDebugSectionBackgroundView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v2 = v6.receiver;
  [(TodayDebugSectionBackgroundView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
  sub_10076422C();
  MinX = CGRectGetMinX(v7);
  sub_10076422C();
  MinY = CGRectGetMinY(v8);
  sub_10076422C();
  [v3 setFrame:{MinX, MinY, 10.0, CGRectGetHeight(v9), v6.receiver, v6.super_class}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v2 = v5.receiver;
  [(TodayDebugSectionBackgroundView *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];
}

@end