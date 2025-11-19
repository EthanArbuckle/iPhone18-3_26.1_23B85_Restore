@interface ICFixPasswordProtectedNotesInSharedFoldersLaunchTask
- (NSPredicate)passwordProtectedNoteInSharedFolderPredicate;
- (id)fetchPasswordProtectedNotesInSharedFolders;
- (void)runLaunchTask;
@end

@implementation ICFixPasswordProtectedNotesInSharedFoldersLaunchTask

- (void)runLaunchTask
{
  v3 = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008AC44;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

- (id)fetchPasswordProtectedNotesInSharedFolders
{
  v3 = [(ICFixPasswordProtectedNotesInSharedFoldersLaunchTask *)self passwordProtectedNoteInSharedFolderPredicate];
  v4 = [(ICWorkerContextLaunchTask *)self workerContext];
  v5 = [ICNote ic_objectsMatchingPredicate:v3 context:v4];

  return v5;
}

- (NSPredicate)passwordProtectedNoteInSharedFolderPredicate
{
  v2 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v3 = [NSPredicate predicateWithFormat:@"folder.serverShareData != nil"];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

@end