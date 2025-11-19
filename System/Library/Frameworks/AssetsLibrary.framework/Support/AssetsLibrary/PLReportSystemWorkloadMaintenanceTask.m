@interface PLReportSystemWorkloadMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLReportSystemWorkloadMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
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

  v8 = [(PLMaintenanceTask *)self libraryServicesManager];
  v9 = [v8 isSystemPhotoLibrary];

  v10 = [(PLMaintenanceTask *)self photoLibrary];
  v11 = [v10 cplStatus];

  v12 = [v11 initialSyncDate];
  v13 = v12;
  if (v9 && v7 && v12)
  {
    v14 = [(PLMaintenanceTask *)self photoLibrary];
    [v14 reportLibrarySizeToDAS];
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = +[NSDate date];
    [v15 setObject:v16 forKey:@"PLReportSystemWorkloadDate"];
  }

  return 1;
}

@end