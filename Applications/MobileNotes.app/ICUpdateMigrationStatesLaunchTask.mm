@interface ICUpdateMigrationStatesLaunchTask
- (void)runLaunchTask;
@end

@implementation ICUpdateMigrationStatesLaunchTask

- (void)runLaunchTask
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 beginBackgroundTaskWithName:@"Update Migration States" expirationHandler:&stru_100647B00];

  v5 = [(ICWorkerContextLaunchTask *)self workerContext];
  [ICMigrationUtilities updateAllLegacyAccountMigrationStatesInContext:v5];

  v6 = +[UIApplication sharedApplication];
  [v6 endBackgroundTask:v4];
}

@end