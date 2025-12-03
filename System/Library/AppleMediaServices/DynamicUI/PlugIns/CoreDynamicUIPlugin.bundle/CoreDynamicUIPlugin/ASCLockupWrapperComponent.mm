@interface ASCLockupWrapperComponent
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)prepareForReuse;
@end

@implementation ASCLockupWrapperComponent

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1323C(&selRef_prepareForReuse);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_11DA8();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_11E14();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_11ED0();
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
  sub_1350C();
}

- (id)metricsActivityForLockupView:(id)view toPerformActionOfOffer:(id)offer
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1389C();

  swift_unknownObjectRelease();

  return v7;
}

@end