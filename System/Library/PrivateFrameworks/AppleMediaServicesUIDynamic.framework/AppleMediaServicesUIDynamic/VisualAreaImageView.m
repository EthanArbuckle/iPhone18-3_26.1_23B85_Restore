@interface VisualAreaImageView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
- (void)systemLayoutSizeFittingSize:(void *)a1;
@end

@implementation VisualAreaImageView

- (void)systemLayoutSizeFittingSize:(void *)a1
{
  v3 = a1;
  VisualAreaImageView.sizeThatFits(_:)(__PAIR128__(v4, *&a2));
  OUTLINED_FUNCTION_5_20();

  OUTLINED_FUNCTION_10_18();
}

- (void)layoutSubviews
{
  v2 = self;
  VisualAreaImageView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v6 = self;
  VisualAreaImageView.measurements(fitting:in:)(width);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = 0.0;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v13;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = VisualAreaImageView.hasContent.getter();

  return v3 & 1;
}

@end