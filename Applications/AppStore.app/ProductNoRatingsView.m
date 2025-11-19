@interface ProductNoRatingsView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
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

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel) measurementsWithFitting:a4 in:{a3.width, a3.height}];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

@end