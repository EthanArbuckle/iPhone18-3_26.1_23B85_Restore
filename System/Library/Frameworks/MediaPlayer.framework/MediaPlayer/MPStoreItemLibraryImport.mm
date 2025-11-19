@interface MPStoreItemLibraryImport
- (id)_initWithImportElements:(id)a3 referralObject:(id)a4 usingCloudLibraryDestination:(BOOL)a5 localLibraryDestination:(BOOL)a6;
@end

@implementation MPStoreItemLibraryImport

- (id)_initWithImportElements:(id)a3 referralObject:(id)a4 usingCloudLibraryDestination:(BOOL)a5 localLibraryDestination:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = MPStoreItemLibraryImport;
  v12 = [(MPStoreItemLibraryImport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_referralObject, a4);
    v14 = [v10 copy];
    importElements = v13->_importElements;
    v13->_importElements = v14;

    v13->_addToCloudLibrary = a5;
    v13->_addToDeviceLibraryOnly = a6;
  }

  return v13;
}

@end