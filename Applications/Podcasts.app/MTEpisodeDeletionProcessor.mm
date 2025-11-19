@interface MTEpisodeDeletionProcessor
- (id)predicate;
- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5;
@end

@implementation MTEpisodeDeletionProcessor

- (id)predicate
{
  v2 = [MTEpisode predicateForFeedDeleted:1];
  v3 = [MTEpisode predicateForDownloaded:0 excludeHidden:0];
  v4 = [v2 AND:v3];

  return v4;
}

- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5
{
  v5 = [MTMediaLibraryRestorePostflightUtil uuidsByRemovingDownloadCandidatesFromEpisodeUuids:a4];
  if ([v5 count])
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting episodes matching deletion processor query: %{public}@", &v8, 0xCu);
    }

    v7 = +[MTLibrary sharedInstance];
    [v7 deleteEpisodeUuids:v5];
  }
}

@end