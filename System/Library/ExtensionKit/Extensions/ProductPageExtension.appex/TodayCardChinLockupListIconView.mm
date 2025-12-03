@interface TodayCardChinLockupListIconView
- (_TtC20ProductPageExtension31TodayCardChinLockupListIconView)initWithCoder:(id)coder;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListIconView

- (_TtC20ProductPageExtension31TodayCardChinLockupListIconView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView;
  sub_10075FD2C();
  *(&self->super.super.super.super.isa + v4) = sub_10075FB3C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
  v6 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TodayCardChinLockupListIconView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_10075FC8C();
}

- (void)handleTap
{
  selfCopy = self;
  sub_1003A6084();
}

@end