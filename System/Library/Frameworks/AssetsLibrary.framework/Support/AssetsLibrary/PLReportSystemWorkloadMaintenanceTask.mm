@interface PLReportSystemWorkloadMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLReportSystemWorkloadMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"PLReportSystemWorkloadDate"];

  if (v5)
  {
    [v5 timeIntervalSinceNow];
    v7 = fabs(v6) > 259200.0;
  }

  else
  {
    v7 = 1;
  }

  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  cplStatus = [photoLibrary cplStatus];

  initialSyncDate = [cplStatus initialSyncDate];
  v13 = initialSyncDate;
  if (isSystemPhotoLibrary && v7 && initialSyncDate)
  {
    photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
    [photoLibrary2 reportLibrarySizeToDAS];
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = +[NSDate date];
    [v15 setObject:v16 forKey:@"PLReportSystemWorkloadDate"];
  }

  return 1;
}

@end