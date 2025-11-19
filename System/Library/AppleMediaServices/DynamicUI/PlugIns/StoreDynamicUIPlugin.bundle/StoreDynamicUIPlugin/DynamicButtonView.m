@interface DynamicButtonView
- (BOOL)hasContent;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)tintColorDidChange;
@end

@implementation DynamicButtonView

- (BOOL)hasContent
{
  v2 = self;
  v3 = sub_90640();

  return v3 & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_90694();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_9084C(width);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_90A1C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_13BB54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_13BB84();
  }

  v4 = self;
  sub_8F1CC();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = sub_90E10(width, height, a4, a5);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_90E80();
}

@end