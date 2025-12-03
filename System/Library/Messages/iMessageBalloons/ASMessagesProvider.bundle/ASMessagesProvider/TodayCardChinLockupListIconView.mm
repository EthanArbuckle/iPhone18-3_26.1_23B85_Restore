@interface TodayCardChinLockupListIconView
- (_TtC18ASMessagesProvider31TodayCardChinLockupListIconView)initWithCoder:(id)coder;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListIconView

- (_TtC18ASMessagesProvider31TodayCardChinLockupListIconView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView;
  sub_759210();
  *(&self->super.super.super.super.isa + v4) = sub_759020();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
  v6 = sub_BD88(&unk_950960);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_76A840();
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
  sub_759170();
}

- (void)handleTap
{
  selfCopy = self;
  sub_58CCC8();
}

@end