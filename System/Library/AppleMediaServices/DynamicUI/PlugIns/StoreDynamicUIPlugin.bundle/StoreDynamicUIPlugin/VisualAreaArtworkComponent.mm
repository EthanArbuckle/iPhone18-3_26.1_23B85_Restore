@interface VisualAreaArtworkComponent
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation VisualAreaArtworkComponent

- (void)layoutSubviews
{
  v2 = self;
  sub_12C044();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = sub_12C140(width, height, a4, a5);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_12C3BC(&selRef_prepareForReuse);
}

@end