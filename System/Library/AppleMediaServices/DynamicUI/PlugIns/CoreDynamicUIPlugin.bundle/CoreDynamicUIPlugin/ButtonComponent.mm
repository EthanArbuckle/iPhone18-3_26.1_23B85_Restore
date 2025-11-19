@interface ButtonComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ButtonComponent

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_8F5F4();
  }

  v4 = self;
  sub_18714();
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_18750();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_187DC(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_18870();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1890C();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = self;
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