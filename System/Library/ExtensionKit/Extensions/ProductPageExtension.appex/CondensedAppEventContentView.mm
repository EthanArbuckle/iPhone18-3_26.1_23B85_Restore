@interface CondensedAppEventContentView
- (_TtC20ProductPageExtension28CondensedAppEventContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventContentView

- (_TtC20ProductPageExtension28CondensedAppEventContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_interRowSpacing) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10047973C();
}

@end