@interface ICReindexEverythingIfNecessaryTask
- (void)runLaunchTask;
@end

@implementation ICReindexEverythingIfNecessaryTask

- (void)runLaunchTask
{
  v2 = +[ICSearchIndexer sharedIndexer];
  [v2 reindexIfNecessary];
}

@end