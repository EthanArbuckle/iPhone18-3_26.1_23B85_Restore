@interface VisualAreaImageView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
- (void)systemLayoutSizeFittingSize:(void *)size;
@end

@implementation VisualAreaImageView

- (void)systemLayoutSizeFittingSize:(void *)size
{
  sizeCopy = size;
  VisualAreaImageView.sizeThatFits(_:)(__PAIR128__(v4, *&a2));
  OUTLINED_FUNCTION_5_20();

  OUTLINED_FUNCTION_10_18();
}

- (void)layoutSubviews
{
  selfCopy = self;
  VisualAreaImageView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  v3 = VisualAreaImageView.hasContent.getter();

  return v3 & 1;
}

@end