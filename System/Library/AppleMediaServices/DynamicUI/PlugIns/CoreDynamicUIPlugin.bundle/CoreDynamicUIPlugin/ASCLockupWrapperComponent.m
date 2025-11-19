@interface ASCLockupWrapperComponent
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)prepareForReuse;
@end

@implementation ASCLockupWrapperComponent

- (void)prepareForReuse
{
  v2 = self;
  sub_1323C(&selRef_prepareForReuse);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_11E14();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = self;
  sub_11ED0();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1350C();
}

- (id)metricsActivityForLockupView:(id)a3 toPerformActionOfOffer:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1389C();

  swift_unknownObjectRelease();

  return v7;
}

@end