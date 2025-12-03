@interface CBSpacerView
+ (id)spacerViewWithHeight:(double)height;
- (CBSpacerView)initWithHeight:(double)height;
- (CGSize)intrinsicContentSize;
@end

@implementation CBSpacerView

+ (id)spacerViewWithHeight:(double)height
{
  v3 = [[CBSpacerView alloc] initWithHeight:height];

  return v3;
}

- (CBSpacerView)initWithHeight:(double)height
{
  v5.receiver = self;
  v5.super_class = CBSpacerView;
  result = [(CBSpacerView *)&v5 init];
  if (result)
  {
    result->_height = height;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CBSpacerView *)self height];
  v3 = v2;
  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

@end