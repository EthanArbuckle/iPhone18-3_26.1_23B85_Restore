@interface BundleTileComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)runActionButtonSegue;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BundleTileComponent

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_62C04();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_62C8C(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_62CE8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_62E90();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v8 = self;
  v9 = sub_63198(width, height, a4);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_63454(a3);
}

- (void)runActionButtonSegue
{
  v2 = self;
  sub_63B88();
}

@end