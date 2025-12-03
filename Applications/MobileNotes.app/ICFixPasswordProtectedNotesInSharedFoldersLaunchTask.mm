@interface ICFixPasswordProtectedNotesInSharedFoldersLaunchTask
- (NSPredicate)passwordProtectedNoteInSharedFolderPredicate;
- (id)fetchPasswordProtectedNotesInSharedFolders;
- (void)runLaunchTask;
@end

@implementation ICFixPasswordProtectedNotesInSharedFoldersLaunchTask

- (void)runLaunchTask
{
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008AC44;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [workerContext performBlockAndWait:v4];
}

- (id)fetchPasswordProtectedNotesInSharedFolders
{
  passwordProtectedNoteInSharedFolderPredicate = [(ICFixPasswordProtectedNotesInSharedFoldersLaunchTask *)self passwordProtectedNoteInSharedFolderPredicate];
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v5 = [ICNote ic_objectsMatchingPredicate:passwordProtectedNoteInSharedFolderPredicate context:workerContext];

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