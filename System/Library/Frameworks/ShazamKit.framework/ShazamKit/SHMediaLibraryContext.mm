@interface SHMediaLibraryContext
- (SHMediaLibraryContext)initWithSnapshot:(id)a3 startCondition:(id)a4;
- (SHMediaLibrarySyncDelegate)delegate;
@end

@implementation SHMediaLibraryContext

- (SHMediaLibraryContext)initWithSnapshot:(id)a3 startCondition:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHMediaLibraryContext;
  v9 = [(SHMediaLibraryContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshot, a3);
    objc_storeStrong(&v10->_startCondition, a4);
  }

  return v10;
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end