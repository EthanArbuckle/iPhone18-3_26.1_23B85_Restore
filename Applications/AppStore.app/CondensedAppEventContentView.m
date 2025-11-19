@interface CondensedAppEventContentView
- (_TtC8AppStore28CondensedAppEventContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventContentView

- (_TtC8AppStore28CondensedAppEventContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_eventCardView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore28CondensedAppEventContentView_interRowSpacing) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001E89CC();
}

@end