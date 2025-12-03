@interface MKLookAroundSnapshot
- (MKLookAroundSnapshot)initWithSnapshot:(id)snapshot;
@end

@implementation MKLookAroundSnapshot

- (MKLookAroundSnapshot)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = MKLookAroundSnapshot;
  v6 = [(MKLookAroundSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshot, snapshot);
  }

  return v7;
}

@end