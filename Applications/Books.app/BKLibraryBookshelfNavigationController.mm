@interface BKLibraryBookshelfNavigationController
- (id)bc_ancestorOverrideCardPresentingViewController;
@end

@implementation BKLibraryBookshelfNavigationController

- (id)bc_ancestorOverrideCardPresentingViewController
{
  selfCopy = self;
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfNavigationController;
  bc_ancestorOverrideCardPresentingViewController = [(BKLibraryBookshelfNavigationController *)&v7 bc_ancestorOverrideCardPresentingViewController];
  v4 = bc_ancestorOverrideCardPresentingViewController;
  if (bc_ancestorOverrideCardPresentingViewController)
  {
    selfCopy = bc_ancestorOverrideCardPresentingViewController;
  }

  v5 = selfCopy;

  return selfCopy;
}

@end