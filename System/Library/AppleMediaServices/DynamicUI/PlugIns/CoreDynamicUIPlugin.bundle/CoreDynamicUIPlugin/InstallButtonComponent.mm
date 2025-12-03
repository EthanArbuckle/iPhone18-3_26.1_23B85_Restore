@interface InstallButtonComponent
- (BOOL)isHighlighted;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)accessibilityLabel;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)label;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation InstallButtonComponent

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_44F34();
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_8F5F4();
  }

  selfCopy = self;
  sub_18714();
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_4503C();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_450C8(highlighted);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_45128();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_451C4();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_452FC();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_46758();
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_46DCC();

  swift_unknownObjectRelease();

  return v7;
}

@end