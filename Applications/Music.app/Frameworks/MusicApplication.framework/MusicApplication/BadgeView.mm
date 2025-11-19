@interface BadgeView
- (_TtC16MusicApplication9BadgeView)initWithCoder:(id)a3;
- (_TtC16MusicApplication9BadgeView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BadgeView

- (_TtC16MusicApplication9BadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet) = &_swiftEmptySetSingleton;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle) = UIFontTextStyleBody;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_4CB864(a3);
}

- (_TtC16MusicApplication9BadgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end