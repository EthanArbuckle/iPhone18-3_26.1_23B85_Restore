@interface ProductNoRatingsView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation ProductNoRatingsView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ProductNoRatingsView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:{v4.receiver, v4.super_class}];
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel) measurementsWithFitting:in in:{fitting.width, fitting.height}];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

@end