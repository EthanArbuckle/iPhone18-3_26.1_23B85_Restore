@interface BadgeView
- (_TtC16MusicApplication9BadgeView)initWithCoder:(id)coder;
- (_TtC16MusicApplication9BadgeView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BadgeView

- (_TtC16MusicApplication9BadgeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet) = &_swiftEmptySetSingleton;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle) = UIFontTextStyleBody;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_4CB864(change);
}

- (_TtC16MusicApplication9BadgeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end