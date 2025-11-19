@interface ICDeleteMigratedHTMLAccountsLaunchTask
- (void)runLaunchTask;
@end

@implementation ICDeleteMigratedHTMLAccountsLaunchTask

- (void)runLaunchTask
{
  v2 = [(ICWorkerContextLaunchTask *)self workerContext];
  [ICMigrationUtilities deleteMigratedHTMLAccountsInContext:v2];
}

@end