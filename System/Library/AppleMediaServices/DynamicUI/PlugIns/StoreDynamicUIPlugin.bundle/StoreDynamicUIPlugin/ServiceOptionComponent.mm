@interface ServiceOptionComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ServiceOptionComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_EF380();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_EF4F4();
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_EF850();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_EF8D8(highlighted);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_EFC48();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_EFCF4(change);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v9 = sub_F0768(width, height, priority);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end