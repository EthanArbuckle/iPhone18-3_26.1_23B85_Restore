@interface CheckoutPlatter
- (void)applePayButtonPressed;
- (void)contentSizeCategoryDidChange;
@end

@implementation CheckoutPlatter

- (void)applePayButtonPressed
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    sub_2412B0244();
    swift_unknownObjectRelease();
  }
}

- (void)contentSizeCategoryDidChange
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_traitManager);
  v3 = objc_opt_self();

  v4 = [v3 currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = *(v2 + 24);
  *(v2 + 24) = v5;

  sub_2413400EC();
}

@end