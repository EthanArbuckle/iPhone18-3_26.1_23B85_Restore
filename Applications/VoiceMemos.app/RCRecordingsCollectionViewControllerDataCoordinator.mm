@interface RCRecordingsCollectionViewControllerDataCoordinator
- (BOOL)isDownloadingAtIndexPath:(id)a3;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolder:(id)a3 delegate:(id)a4;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolderType:(int64_t)a3 delegate:(id)a4;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithUserFolderNamed:(id)a3 delegate:(id)a4;
- (RCRecordingsCollectionViewDataCoordinatorDelegate)delegate;
- (id)_indexPathOfRecordingWithUUID:(id)a3;
- (id)_predicateForURIRepresentations:(id)a3;
- (id)recordingAtIndexPath:(id)a3;
- (id)uuidAtIndexPath:(id)a3;
- (unint64_t)indexOfUUID:(id)a3;
- (void)_changeLogForType:(unint64_t)a3 oldIndexPath:(id)a4 newIndexPath:(id)a5;
- (void)_commonInitWithDelegate:(id)a3;
- (void)_handleSpotlightSearchResults:(id)a3 forSearchString:(id)a4 inScope:(int64_t)a5;
- (void)_performSearch;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)setSearchString:(id)a3 inScope:(int64_t)a4;
@end

@implementation RCRecordingsCollectionViewControllerDataCoordinator

- (void)setSearchString:(id)a3 inScope:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 copy];
  searchString = self->_searchString;
  self->_searchString = v7;

  self->_searchScope = a4;
  v9 = [v6 length];

  if (v9)
  {

    [(RCRecordingsCollectionViewControllerDataCoordinator *)self _performSearch];
  }

  else
  {
    self->_searchScope = 1;
    savedRecordingsController = self->_savedRecordingsController;

    [(RCSavedRecordingsController *)savedRecordingsController setSearchPredicate:0 scope:0 performingFetch:1];
  }
}

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolder:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RCRecordingsCollectionViewControllerDataCoordinator;
  v8 = [(RCRecordingsCollectionViewControllerDataCoordinator *)&v13 init];
  if (v8)
  {
    v9 = +[RCApplicationModel sharedApplicationModel];
    v10 = [v9 recordingsControllerWithFolder:v6];
    savedRecordingsController = v8->_savedRecordingsController;
    v8->_savedRecordingsController = v10;

    [(RCRecordingsCollectionViewControllerDataCoordinator *)v8 _commonInitWithDelegate:v7];
  }

  return v8;
}

- (void)_performSearch
{
  if (!self->_isPerformingSpotlightSearch)
  {
    v3 = [(NSString *)self->_searchString copy];
    searchScope = self->_searchScope;
    self->_isPerformingSpotlightSearch = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006E100;
    v6[3] = &unk_10028B4B0;
    v6[4] = self;
    v7 = v3;
    v8 = searchScope;
    v5 = v3;
    [_TtC10VoiceMemos21RCTranscriptionSearch recordingURIsForTranscriptionsContaining:v5 completionHandler:v6];
  }
}

- (void)_handleSpotlightSearchResults:(id)a3 forSearchString:(id)a4 inScope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(NSString *)self->_searchString length])
  {
    v10 = [RCQueryManager customLabelSearchPredicateWithString:v9];
    v14[0] = v10;
    v11 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self _predicateForURIRepresentations:v8];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

    [(RCSavedRecordingsController *)self->_savedRecordingsController setSearchPredicate:v13 scope:a5 == 0 performingFetch:1];
    if (![(NSString *)self->_searchString isEqual:v9]|| self->_searchScope != a5)
    {
      [(RCRecordingsCollectionViewControllerDataCoordinator *)self _performSearch];
    }
  }
}

- (id)_predicateForURIRepresentations:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[RCApplicationContainer sharedContainer];
    v5 = [v4 persistentContainer];
    v6 = [v5 persistentStoreCoordinator];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10006E4E0;
    v14 = &unk_10028B4D8;
    v15 = v6;
    v7 = v6;
    v8 = [v3 na_map:&v11];
    v9 = [NSPredicate predicateWithFormat:@"SELF IN %@", v8, v11, v12, v13, v14];
  }

  else
  {
    v9 = [NSPredicate predicateWithValue:0];
  }

  return v9;
}

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolderType:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [RCBuiltinRecordingsFolder builtInFolderWithType:a3];
  v8 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self initWithFolder:v7 delegate:v6];

  return v8;
}

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithUserFolderNamed:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RCApplicationModel sharedApplicationModel];
  v9 = [v8 folderWithName:v7];

  v10 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self initWithFolder:v9 delegate:v6];
  return v10;
}

- (void)_commonInitWithDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  savedRecordingsController = self->_savedRecordingsController;

  [(RCSavedRecordingsController *)savedRecordingsController setDelegate:self];
}

- (id)_indexPathOfRecordingWithUUID:(id)a3
{
  v4 = a3;
  v5 = +[RCApplicationModel sharedApplicationModel];
  v6 = [v5 recordingWithUniqueID:v4];

  if (v6)
  {
    v7 = [(RCSavedRecordingsController *)self->_savedRecordingsController indexPathForObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)indexOfUUID:(id)a3
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self _indexPathOfRecordingWithUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 item];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)isDownloadingAtIndexPath:(id)a3
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingAtIndexPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 audioFutureNeedsDownload];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)uuidAtIndexPath:(id)a3
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingAtIndexPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recordingAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingDataArray];
  v6 = [v5 count];
  v7 = [v4 item];

  if (v6 <= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingDataArray];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (void)controllerWillChangeContent:(id)a3
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
  [v3 prepareForChangingContent];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (a6 > 2)
  {
    if (a6 == 3)
    {
      v18 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:v13];
      v20 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [v20 reloadItemAtIndexPath:v14 usingDisplayModel:v18];

      v19 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [v19 moveItemAtIndexPath:v14 toIndexPath:v15];
    }

    else
    {
      if (a6 != 4)
      {
        goto LABEL_12;
      }

      v18 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:v13];
      v19 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [v19 reloadItemAtIndexPath:v14 usingDisplayModel:v18];
    }

    goto LABEL_12;
  }

  if (a6 == 1)
  {
    v16 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
    v21 = v15;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    [v16 insertItemsAtIndexPaths:v17];
    goto LABEL_9;
  }

  if (a6 == 2)
  {
    v16 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
    v17 = [v13 uuid];
    [v16 deleteItemAtIndexPath:v14 withUUID:v17];
LABEL_9:
  }

LABEL_12:
}

- (void)_changeLogForType:(unint64_t)a3 oldIndexPath:(id)a4 newIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 - 1 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(&off_10028B4F8 + a3 - 1);
  }

  v10 = OSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[RCRecordingsCollectionViewControllerDataCoordinator _changeLogForType:oldIndexPath:newIndexPath:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- Change type: %@, oldIndexPath: %@, newIndexPath: %@", &v11, 0x2Au);
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
  [v3 contentChangesComplete];
}

- (RCRecordingsCollectionViewDataCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end