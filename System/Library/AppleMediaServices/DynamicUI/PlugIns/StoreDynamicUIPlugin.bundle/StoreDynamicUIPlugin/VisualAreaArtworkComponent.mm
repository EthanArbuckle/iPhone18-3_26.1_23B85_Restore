@interface VisualAreaArtworkComponent
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VisualAreaArtworkComponent

- (void)layoutSubviews
{
  selfCopy = self;
  sub_12C044();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v10 = sub_12C140(width, height, priority, fittingPriority);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_12C3BC(&selRef_prepareForReuse);
}

@end