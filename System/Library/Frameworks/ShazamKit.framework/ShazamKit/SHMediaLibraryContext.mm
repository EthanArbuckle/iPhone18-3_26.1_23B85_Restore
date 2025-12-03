@interface SHMediaLibraryContext
- (SHMediaLibraryContext)initWithSnapshot:(id)snapshot startCondition:(id)condition;
- (SHMediaLibrarySyncDelegate)delegate;
@end

@implementation SHMediaLibraryContext

- (SHMediaLibraryContext)initWithSnapshot:(id)snapshot startCondition:(id)condition
{
  snapshotCopy = snapshot;
  conditionCopy = condition;
  v12.receiver = self;
  v12.super_class = SHMediaLibraryContext;
  v9 = [(SHMediaLibraryContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshot, snapshot);
    objc_storeStrong(&v10->_startCondition, condition);
  }

  return v10;
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end