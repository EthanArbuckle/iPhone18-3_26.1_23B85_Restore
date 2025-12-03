@interface _ATXIconLocation
- (_ATXIconLocation)initWithIndexPath:(id)path isOnDock:(BOOL)dock existsInAppLibraryOnly:(BOOL)only isInstalled:(BOOL)installed;
@end

@implementation _ATXIconLocation

- (_ATXIconLocation)initWithIndexPath:(id)path isOnDock:(BOOL)dock existsInAppLibraryOnly:(BOOL)only isInstalled:(BOOL)installed
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = _ATXIconLocation;
  v12 = [(_ATXIconLocation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_indexPath, path);
    v13->_isOnDock = dock;
    v13->_appearOnlyInAppLibrary = only;
    v13->_isInstalled = installed;
  }

  return v13;
}

@end