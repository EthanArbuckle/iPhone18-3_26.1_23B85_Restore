@interface LEDView
- (CGSize)intrinsicContentSize;
- (_TtC20HeadphoneProxService7LEDView)initWithCoder:(id)a3;
- (_TtC20HeadphoneProxService7LEDView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LEDView

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(LEDView *)&v6 traitCollectionDidChange:v4];
  [v5 invalidateIntrinsicContentSize];
}

- (_TtC20HeadphoneProxService7LEDView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  *(&self->super.super.super.isa + v3) = sub_1000261F8();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC20HeadphoneProxService7LEDView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end