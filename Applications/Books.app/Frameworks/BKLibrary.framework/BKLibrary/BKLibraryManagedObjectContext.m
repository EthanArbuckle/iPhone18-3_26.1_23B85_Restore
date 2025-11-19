@interface BKLibraryManagedObjectContext
- (BKLibraryManager)libraryManager;
- (void)saveLibrary;
@end

@implementation BKLibraryManagedObjectContext

- (void)saveLibrary
{
  if ([(BKLibraryManagedObjectContext *)self sessionContextType]== 5)
  {
    [(BKLibraryManagedObjectContext *)self setSaveContext:2];
  }

  v3 = [(BKLibraryManagedObjectContext *)self libraryManager];
  [v3 saveManagedObjectContext:self];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end