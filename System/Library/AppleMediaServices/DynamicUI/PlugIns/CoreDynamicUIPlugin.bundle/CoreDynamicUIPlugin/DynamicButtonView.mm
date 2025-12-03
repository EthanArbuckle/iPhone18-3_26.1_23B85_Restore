@interface DynamicButtonView
- (BOOL)hasContent;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)tintColorDidChange;
@end

@implementation DynamicButtonView

- (BOOL)hasContent
{
  selfCopy = self;
  v3 = sub_37A14();

  return v3 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_37A68();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_37C20(width);
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
  selfCopy = self;
  sub_37DF0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_8F5C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_8F5F4();
  }

  selfCopy = self;
  sub_18714();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v10 = sub_381E4(width, height, priority, fittingPriority);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_38254();
}

@end