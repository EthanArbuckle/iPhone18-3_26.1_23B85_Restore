@interface CNPRPosterSnapshotBundle
- (CNPRPosterSnapshotBundle)initWithWrappedBundle:(id)a3;
- (id)snapshotForLevelSet:(id)a3;
@end

@implementation CNPRPosterSnapshotBundle

- (id)snapshotForLevelSet:(id)a3
{
  wrappedSnapshotBundle = self->_wrappedSnapshotBundle;
  v4 = [a3 wrappedLevelSet];
  v5 = [(PRPosterSnapshotBundle *)wrappedSnapshotBundle snapshotForLevelSet:v4];

  return v5;
}

- (CNPRPosterSnapshotBundle)initWithWrappedBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRPosterSnapshotBundle;
  v6 = [(CNPRPosterSnapshotBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedSnapshotBundle, a3);
  }

  return v7;
}

@end