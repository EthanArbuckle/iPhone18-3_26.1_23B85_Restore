@interface ButtonComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)label;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ButtonComponent

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_18640();
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

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_18750();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_187DC(highlighted);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_18870();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1890C();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_18A0C();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end