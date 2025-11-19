@interface SubscriptionLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)layoutMargins;
- (_TtC8AppStore22SubscriptionLockupView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
@end

@implementation SubscriptionLockupView

- (UIEdgeInsets)layoutMargins
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(SubscriptionLockupView *)&v6 layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  ObjectType = swift_getObjectType();
  v14.receiver = self;
  v14.super_class = ObjectType;
  v9 = self;
  [(SubscriptionLockupView *)&v14 setLayoutMargins:top, left, bottom, right];
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
  v13.receiver = v9;
  v13.super_class = ObjectType;
  [(SubscriptionLockupView *)&v13 layoutMargins];
  [v10 setLayoutMargins:?];
  v11 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
  v12.receiver = v9;
  v12.super_class = ObjectType;
  [(SubscriptionLockupView *)&v12 layoutMargins];
  [v11 setLayoutMargins:?];
}

- (_TtC8AppStore22SubscriptionLockupView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  ObjectType = swift_getObjectType();
  v5 = qword_10096E700;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SmallLockupLayout.Metrics();
  v8 = sub_1000056A8(v7, qword_1009D25C0);
  v14.receiver = v6;
  v14.super_class = ObjectType;
  [(SubscriptionLockupView *)&v14 layoutMargins];
  v9 = sub_100508144(v8, v6);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SubscriptionLockupView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end