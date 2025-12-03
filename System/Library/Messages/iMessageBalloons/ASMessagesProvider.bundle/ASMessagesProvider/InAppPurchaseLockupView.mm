@interface InAppPurchaseLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider23InAppPurchaseLockupView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider23InAppPurchaseLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseLockupView

- (_TtC18ASMessagesProvider23InAppPurchaseLockupView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = sub_757AA0();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1F0420();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1F0788();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = qword_93C618;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_757DF0();
  sub_BE38(v5, qword_99B7E0);
  sub_757E10();
  sub_1F14A0(&qword_949E08, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_766ED0();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC18ASMessagesProvider23InAppPurchaseLockupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end