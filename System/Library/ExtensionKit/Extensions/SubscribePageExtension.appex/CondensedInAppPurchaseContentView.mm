@interface CondensedInAppPurchaseContentView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CondensedInAppPurchaseContentView

- (void)layoutSubviews
{
  selfCopy = self;
  CondensedInAppPurchaseContentView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(v9);
}

@end