@interface APSymbolBadgedAppIconView
+ (APSymbolBadgedAppIconViewMetrics)metricsForEducation;
+ (APSymbolBadgedAppIconViewMetrics)metricsForExtensionShield;
- (APSymbolBadgedAppIconView)initWithCoder:(id)a3;
- (APSymbolBadgedAppIconView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation APSymbolBadgedAppIconView

+ (APSymbolBadgedAppIconViewMetrics)metricsForEducation
{
  v5 = CGPointMake(14.0);
  *&retstr->var0 = xmmword_1AEA34040;
  retstr->var2.x = 14.0;
  retstr->var2.y = v5;
  retstr->var3 = 4.0;
  return result;
}

+ (APSymbolBadgedAppIconViewMetrics)metricsForExtensionShield
{
  v5 = CGPointMake(6.0);
  *&retstr->var0 = xmmword_1AEA34050;
  retstr->var2.x = 14.0;
  retstr->var2.y = v5;
  retstr->var3 = 4.0;
  return result;
}

- (APSymbolBadgedAppIconView)initWithCoder:(id)a3
{
  result = sub_1AEA32664();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = APSymbolBadgedAppIconView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(APSymbolBadgedAppIconView *)self sizeThatFits:1000.0, 1000.0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  APSymbolBadgedAppIconView.layoutSubviews()();
}

- (APSymbolBadgedAppIconView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end