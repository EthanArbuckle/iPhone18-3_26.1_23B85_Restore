@interface SpacerComponent
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SpacerComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_83258();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_836B0(&selRef_layoutSubviews);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_833D4();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end