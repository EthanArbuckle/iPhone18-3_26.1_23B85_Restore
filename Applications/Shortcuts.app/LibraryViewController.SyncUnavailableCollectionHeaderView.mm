@interface LibraryViewController.SyncUnavailableCollectionHeaderView
- (void)prepareForReuse;
@end

@implementation LibraryViewController.SyncUnavailableCollectionHeaderView

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10006C72C();
}

@end