@interface PLMaintenanceTask
- (PLLibraryServicesManager)libraryServicesManager;
- (PLMaintenanceTask)initWithLibraryBundle:(id)bundle;
@end

@implementation PLMaintenanceTask

- (PLLibraryServicesManager)libraryServicesManager
{
  libraryBundle = [(PLMaintenanceTask *)self libraryBundle];
  libraryServicesManager = [libraryBundle libraryServicesManager];

  return libraryServicesManager;
}

- (PLMaintenanceTask)initWithLibraryBundle:(id)bundle
{
  bundleCopy = bundle;
  v16.receiver = self;
  v16.super_class = PLMaintenanceTask;
  v6 = [(PLMaintenanceTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryBundle, bundle);
    v8 = objc_initWeak(&location, v7);

    v9 = [PLLazyObject alloc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000051E4;
    v13[3] = &unk_10002CE08;
    objc_copyWeak(&v14, &location);
    v10 = [v9 initWithBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    lazyPhotoLibrary = v7->_lazyPhotoLibrary;
    v7->_lazyPhotoLibrary = v10;
  }

  return v7;
}

@end