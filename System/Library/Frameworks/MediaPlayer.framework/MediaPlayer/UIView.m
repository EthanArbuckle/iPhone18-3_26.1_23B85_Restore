@interface UIView
@end

@implementation UIView

void __48__UIView_MPArtworkCatalog__clearArtworkCatalogs__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _lastArtworkCatalog];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = _MPArtworkCatalogLastAssociatedObjectKey;

    objc_setAssociatedObject(v4, v5, 0, 1);
  }
}

@end