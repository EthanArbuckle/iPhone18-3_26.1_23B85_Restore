@interface MKPointOfInterestAnnotationView
@end

@implementation MKPointOfInterestAnnotationView

void __52___MKPointOfInterestAnnotationView__animateRemoval___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1024);
  *(v2 + 1024) = 0;
}

void __52___MKPointOfInterestAnnotationView__animateRemoval___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1032);
  *(v2 + 1032) = 0;
}

@end