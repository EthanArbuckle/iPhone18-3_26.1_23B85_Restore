@interface ICDeleteMigratedHTMLAccountsLaunchTask
- (void)runLaunchTask;
@end

@implementation ICDeleteMigratedHTMLAccountsLaunchTask

- (void)runLaunchTask
{
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  [ICMigrationUtilities deleteMigratedHTMLAccountsInContext:workerContext];
}

@end