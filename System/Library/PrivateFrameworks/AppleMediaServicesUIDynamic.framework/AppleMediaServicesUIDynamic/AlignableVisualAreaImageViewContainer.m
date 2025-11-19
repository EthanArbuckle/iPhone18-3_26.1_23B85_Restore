@interface AlignableVisualAreaImageViewContainer
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
- (void)systemLayoutSizeFittingSize:;
@end

@implementation AlignableVisualAreaImageViewContainer

- (void)systemLayoutSizeFittingSize:
{
  OUTLINED_FUNCTION_23_3();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_17_3();
  AlignableVisualAreaImageViewContainer.sizeThatFits(_:)(__PAIR128__(v3, *&v2));
  OUTLINED_FUNCTION_5_20();

  OUTLINED_FUNCTION_10_18();
}

- (void)layoutSubviews
{
  v2 = self;
  AlignableVisualAreaImageViewContainer.layoutSubviews()();
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = AlignableVisualAreaImageViewContainer.hasContent.getter();

  return v3 & 1;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  AlignableVisualAreaImageViewContainer.measurements(fitting:in:)(a4, width, height);
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = 0.0;
  v14 = 0.0;
  v15 = v10;
  v16 = v12;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

@end