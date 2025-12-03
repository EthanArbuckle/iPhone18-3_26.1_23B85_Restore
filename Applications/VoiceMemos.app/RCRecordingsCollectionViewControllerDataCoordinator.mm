@interface RCRecordingsCollectionViewControllerDataCoordinator
- (BOOL)isDownloadingAtIndexPath:(id)path;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolder:(id)folder delegate:(id)delegate;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolderType:(int64_t)type delegate:(id)delegate;
- (RCRecordingsCollectionViewControllerDataCoordinator)initWithUserFolderNamed:(id)named delegate:(id)delegate;
- (RCRecordingsCollectionViewDataCoordinatorDelegate)delegate;
- (id)_indexPathOfRecordingWithUUID:(id)d;
- (id)_predicateForURIRepresentations:(id)representations;
- (id)recordingAtIndexPath:(id)path;
- (id)uuidAtIndexPath:(id)path;
- (unint64_t)indexOfUUID:(id)d;
- (void)_changeLogForType:(unint64_t)type oldIndexPath:(id)path newIndexPath:(id)indexPath;
- (void)_commonInitWithDelegate:(id)delegate;
- (void)_handleSpotlightSearchResults:(id)results forSearchString:(id)string inScope:(int64_t)scope;
- (void)_performSearch;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)setSearchString:(id)string inScope:(int64_t)scope;
@end

@implementation RCRecordingsCollectionViewControllerDataCoordinator

- (void)setSearchString:(id)string inScope:(int64_t)scope
{
  stringCopy = string;
  v7 = [stringCopy copy];
  searchString = self->_searchString;
  self->_searchString = v7;

  self->_searchScope = scope;
  v9 = [stringCopy length];

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

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolder:(id)folder delegate:(id)delegate
{
  folderCopy = folder;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = RCRecordingsCollectionViewControllerDataCoordinator;
  v8 = [(RCRecordingsCollectionViewControllerDataCoordinator *)&v13 init];
  if (v8)
  {
    v9 = +[RCApplicationModel sharedApplicationModel];
    v10 = [v9 recordingsControllerWithFolder:folderCopy];
    savedRecordingsController = v8->_savedRecordingsController;
    v8->_savedRecordingsController = v10;

    [(RCRecordingsCollectionViewControllerDataCoordinator *)v8 _commonInitWithDelegate:delegateCopy];
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

- (void)_handleSpotlightSearchResults:(id)results forSearchString:(id)string inScope:(int64_t)scope
{
  resultsCopy = results;
  stringCopy = string;
  if ([(NSString *)self->_searchString length])
  {
    v10 = [RCQueryManager customLabelSearchPredicateWithString:stringCopy];
    v14[0] = v10;
    v11 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self _predicateForURIRepresentations:resultsCopy];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
    v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v12];

    [(RCSavedRecordingsController *)self->_savedRecordingsController setSearchPredicate:v13 scope:scope == 0 performingFetch:1];
    if (![(NSString *)self->_searchString isEqual:stringCopy]|| self->_searchScope != scope)
    {
      [(RCRecordingsCollectionViewControllerDataCoordinator *)self _performSearch];
    }
  }
}

- (id)_predicateForURIRepresentations:(id)representations
{
  representationsCopy = representations;
  if ([representationsCopy count])
  {
    v4 = +[RCApplicationContainer sharedContainer];
    persistentContainer = [v4 persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10006E4E0;
    v14 = &unk_10028B4D8;
    v15 = persistentStoreCoordinator;
    v7 = persistentStoreCoordinator;
    v8 = [representationsCopy na_map:&v11];
    v9 = [NSPredicate predicateWithFormat:@"SELF IN %@", v8, v11, v12, v13, v14];
  }

  else
  {
    v9 = [NSPredicate predicateWithValue:0];
  }

  return v9;
}

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithFolderType:(int64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [RCBuiltinRecordingsFolder builtInFolderWithType:type];
  v8 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self initWithFolder:v7 delegate:delegateCopy];

  return v8;
}

- (RCRecordingsCollectionViewControllerDataCoordinator)initWithUserFolderNamed:(id)named delegate:(id)delegate
{
  delegateCopy = delegate;
  namedCopy = named;
  v8 = +[RCApplicationModel sharedApplicationModel];
  v9 = [v8 folderWithName:namedCopy];

  v10 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self initWithFolder:v9 delegate:delegateCopy];
  return v10;
}

- (void)_commonInitWithDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  savedRecordingsController = self->_savedRecordingsController;

  [(RCSavedRecordingsController *)savedRecordingsController setDelegate:self];
}

- (id)_indexPathOfRecordingWithUUID:(id)d
{
  dCopy = d;
  v5 = +[RCApplicationModel sharedApplicationModel];
  v6 = [v5 recordingWithUniqueID:dCopy];

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

- (unint64_t)indexOfUUID:(id)d
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self _indexPathOfRecordingWithUUID:d];
  v4 = v3;
  if (v3)
  {
    item = [v3 item];
  }

  else
  {
    item = 0x7FFFFFFFFFFFFFFFLL;
  }

  return item;
}

- (BOOL)isDownloadingAtIndexPath:(id)path
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingAtIndexPath:path];
  v4 = v3;
  if (v3)
  {
    audioFutureNeedsDownload = [v3 audioFutureNeedsDownload];
  }

  else
  {
    audioFutureNeedsDownload = 0;
  }

  return audioFutureNeedsDownload;
}

- (id)uuidAtIndexPath:(id)path
{
  v3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingAtIndexPath:path];
  v4 = v3;
  if (v3)
  {
    uuid = [v3 uuid];
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (id)recordingAtIndexPath:(id)path
{
  pathCopy = path;
  recordingDataArray = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingDataArray];
  v6 = [recordingDataArray count];
  item = [pathCopy item];

  if (v6 <= item)
  {
    v9 = 0;
  }

  else
  {
    recordingDataArray2 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self recordingDataArray];
    v9 = [recordingDataArray2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v9;
}

- (void)controllerWillChangeContent:(id)content
{
  delegate = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
  [delegate prepareForChangingContent];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type > 2)
  {
    if (type == 3)
    {
      v18 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:objectCopy];
      delegate = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [delegate reloadItemAtIndexPath:pathCopy usingDisplayModel:v18];

      delegate2 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [delegate2 moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_12;
      }

      v18 = [RCRecordingCellDisplayModel recordingDisplayModelWithSavedRecording:objectCopy];
      delegate2 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
      [delegate2 reloadItemAtIndexPath:pathCopy usingDisplayModel:v18];
    }

    goto LABEL_12;
  }

  if (type == 1)
  {
    delegate3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
    v21 = indexPathCopy;
    uuid = [NSArray arrayWithObjects:&v21 count:1];
    [delegate3 insertItemsAtIndexPaths:uuid];
    goto LABEL_9;
  }

  if (type == 2)
  {
    delegate3 = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
    uuid = [objectCopy uuid];
    [delegate3 deleteItemAtIndexPath:pathCopy withUUID:uuid];
LABEL_9:
  }

LABEL_12:
}

- (void)_changeLogForType:(unint64_t)type oldIndexPath:(id)path newIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type - 1 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(&off_10028B4F8 + type - 1);
  }

  v10 = OSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[RCRecordingsCollectionViewControllerDataCoordinator _changeLogForType:oldIndexPath:newIndexPath:]";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = pathCopy;
    v17 = 2112;
    v18 = indexPathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- Change type: %@, oldIndexPath: %@, newIndexPath: %@", &v11, 0x2Au);
  }
}

- (void)controllerDidChangeContent:(id)content
{
  delegate = [(RCRecordingsCollectionViewControllerDataCoordinator *)self delegate];
  [delegate contentChangesComplete];
}

- (RCRecordingsCollectionViewDataCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end