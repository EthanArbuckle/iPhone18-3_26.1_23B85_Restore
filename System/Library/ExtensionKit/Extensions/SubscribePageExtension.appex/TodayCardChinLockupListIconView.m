@interface TodayCardChinLockupListIconView
- (_TtC22SubscribePageExtension31TodayCardChinLockupListIconView)initWithCoder:(id)a3;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListIconView

- (_TtC22SubscribePageExtension31TodayCardChinLockupListIconView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView;
  sub_1007433C4();
  *(&self->super.super.super.super.isa + v4) = sub_1007431D4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_clickAction;
  v6 = sub_10000C518(&unk_100933080);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_100754644();
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
  sub_100743324();
}

- (void)handleTap
{
  v2 = self;
  sub_1007386CC();
}

@end