@interface BundleTileComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)runActionButtonSegue;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BundleTileComponent

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_62C04();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_62C8C(highlighted);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_62CE8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_62E90();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = sub_63198(width, height, priority);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_63454(change);
}

- (void)runActionButtonSegue
{
  selfCopy = self;
  sub_63B88();
}

@end