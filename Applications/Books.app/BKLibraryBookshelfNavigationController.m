@interface BKLibraryBookshelfNavigationController
- (id)bc_ancestorOverrideCardPresentingViewController;
@end

@implementation BKLibraryBookshelfNavigationController

- (id)bc_ancestorOverrideCardPresentingViewController
{
  v2 = self;
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfNavigationController;
  v3 = [(BKLibraryBookshelfNavigationController *)&v7 bc_ancestorOverrideCardPresentingViewController];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

@end