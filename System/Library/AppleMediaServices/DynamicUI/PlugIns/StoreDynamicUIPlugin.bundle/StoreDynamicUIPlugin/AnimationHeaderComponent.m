@interface AnimationHeaderComponent
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AnimationHeaderComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_C848(&selRef_prepareForReuse);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_A900();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v8 = self;
  v9 = sub_C3EC(width, height, a4);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end