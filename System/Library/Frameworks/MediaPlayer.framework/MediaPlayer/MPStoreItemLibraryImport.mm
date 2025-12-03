@interface MPStoreItemLibraryImport
- (id)_initWithImportElements:(id)elements referralObject:(id)object usingCloudLibraryDestination:(BOOL)destination localLibraryDestination:(BOOL)libraryDestination;
@end

@implementation MPStoreItemLibraryImport

- (id)_initWithImportElements:(id)elements referralObject:(id)object usingCloudLibraryDestination:(BOOL)destination localLibraryDestination:(BOOL)libraryDestination
{
  elementsCopy = elements;
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = MPStoreItemLibraryImport;
  v12 = [(MPStoreItemLibraryImport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_referralObject, object);
    v14 = [elementsCopy copy];
    importElements = v13->_importElements;
    v13->_importElements = v14;

    v13->_addToCloudLibrary = destination;
    v13->_addToDeviceLibraryOnly = libraryDestination;
  }

  return v13;
}

@end