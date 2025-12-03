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

  libraryManager = [(BKLibraryManagedObjectContext *)self libraryManager];
  [libraryManager saveManagedObjectContext:self];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end