@interface DynamicButton
- (BOOL)hasContent;
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation DynamicButton

- (BOOL)hasContent
{
  selfCopy = self;
  v3 = sub_8ECD4();

  return v3 & 1;
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_8ED34();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_8EDC0(highlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_8EF28();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_8EFDC(in);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_8F0F8();
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_13BB84();
  }

  selfCopy = self;
  sub_8F1CC();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_8F218();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_8F230();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end