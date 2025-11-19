@interface CondensedAppEventContentView
- (_TtC18ASMessagesProvider28CondensedAppEventContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventContentView

- (_TtC18ASMessagesProvider28CondensedAppEventContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_interRowSpacing) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_460B74();
}

@end