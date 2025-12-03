@interface BundleOptionComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BundleOptionComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_530D0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_532EC();
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_536AC();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_53734(highlighted);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_53AA4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_53B44(change);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = sub_54B9C(width, height, priority);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end