@interface LEDView
- (CGSize)intrinsicContentSize;
- (_TtC20HeadphoneProxService7LEDView)initWithCoder:(id)coder;
- (_TtC20HeadphoneProxService7LEDView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LEDView

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(LEDView *)&v6 traitCollectionDidChange:changeCopy];
  [v5 invalidateIntrinsicContentSize];
}

- (_TtC20HeadphoneProxService7LEDView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService7LEDView_label;
  *(&self->super.super.super.isa + v3) = sub_1000261F8();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC20HeadphoneProxService7LEDView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end