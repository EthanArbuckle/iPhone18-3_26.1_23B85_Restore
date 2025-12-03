@interface CNPRPosterSnapshotBundle
- (CNPRPosterSnapshotBundle)initWithWrappedBundle:(id)bundle;
- (id)snapshotForLevelSet:(id)set;
@end

@implementation CNPRPosterSnapshotBundle

- (id)snapshotForLevelSet:(id)set
{
  wrappedSnapshotBundle = self->_wrappedSnapshotBundle;
  wrappedLevelSet = [set wrappedLevelSet];
  v5 = [(PRPosterSnapshotBundle *)wrappedSnapshotBundle snapshotForLevelSet:wrappedLevelSet];

  return v5;
}

- (CNPRPosterSnapshotBundle)initWithWrappedBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = CNPRPosterSnapshotBundle;
  v6 = [(CNPRPosterSnapshotBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedSnapshotBundle, bundle);
  }

  return v7;
}

@end