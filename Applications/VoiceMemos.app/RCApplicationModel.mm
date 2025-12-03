@interface RCApplicationModel
+ (RCApplicationModel)sharedApplicationModel;
+ (id)currentLocationBasedName;
- (NSArray)deletedRecordings;
- (NSArray)recordings;
- (NSArray)userFolders;
- (RCApplicationModel)init;
- (RCFoldersFetchedResultsController)foldersController;
- (id)_recordingsControllerWithFolder:(id)folder;
- (id)_recordingsControllerWithPredicate:(id)predicate;
- (id)compositionLoadedForSavedRecordingUUID:(id)d;
- (id)insertRecordingWithAudioFile:(id)file duration:(double)duration date:(id)date customTitleBase:(id)base uniqueID:(id)d error:(id *)error;
- (id)mostRecentRecording;
- (id)newChangeTrackingBackgroundModel;
- (id)playableRecordingsForFolder:(id)folder;
- (id)recordingsControllerWithFolder:(id)folder;
- (unint64_t)playableCountForFolder:(id)folder;
- (unint64_t)userFolderCount;
- (void)_deleteFolderAndRecordings:(id)recordings shouldPermanentlyErase:(BOOL)erase;
- (void)moveFolder:(id)folder toIndexPath:(id)path;
@end

@implementation RCApplicationModel

+ (RCApplicationModel)sharedApplicationModel
{
  if (qword_1002D7128 != -1)
  {
    sub_100005384();
  }

  v3 = qword_1002D7120;

  return v3;
}

- (RCApplicationModel)init
{
  v3 = +[RCApplicationContainer sharedContainer];
  v4 = [v3 newContextWithConcurrencyType:2];

  v17.receiver = self;
  v17.super_class = RCApplicationModel;
  v5 = [(RCApplicationModel *)&v17 initWithContext:v4];
  if (v5)
  {
    v6 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:0];
    v7 = [RCSavedRecordingsController alloc];
    context = [(RCApplicationModel *)v5 context];
    v9 = [(RCSavedRecordingsController *)v7 initWithFetchRequest:v6 managedObjectContext:context];
    recordingsController = v5->_recordingsController;
    v5->_recordingsController = v9;

    [(RCSavedRecordingsController *)v5->_recordingsController setDefaultDelegate:v5];
    v11 = +[RCQueryManager deletedRecordingsFetchRequest];
    v12 = [RCSavedRecordingsController alloc];
    context2 = [(RCApplicationModel *)v5 context];
    v14 = [(RCSavedRecordingsController *)v12 initWithFetchRequest:v11 managedObjectContext:context2];
    deletedRecordingsController = v5->_deletedRecordingsController;
    v5->_deletedRecordingsController = v14;

    [(RCSavedRecordingsController *)v5->_deletedRecordingsController setDefaultDelegate:v5];
  }

  return v5;
}

- (NSArray)recordings
{
  recordingsController = [(RCApplicationModel *)self recordingsController];
  fetchedRecordings = [recordingsController fetchedRecordings];

  return fetchedRecordings;
}

- (RCFoldersFetchedResultsController)foldersController
{
  foldersController = self->_foldersController;
  if (!foldersController)
  {
    v4 = +[RCQueryManager userDefinedFoldersFetchRequest];
    v5 = [RCFoldersFetchedResultsController alloc];
    context = [(RCApplicationModel *)self context];
    v7 = [(RCFoldersFetchedResultsController *)v5 initWithFetchRequest:v4 managedObjectContext:context];
    v8 = self->_foldersController;
    self->_foldersController = v7;

    foldersController = self->_foldersController;
  }

  return foldersController;
}

- (id)_recordingsControllerWithPredicate:(id)predicate
{
  v4 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:predicate];
  [v4 setFetchBatchSize:10];
  v5 = [RCSavedRecordingsController alloc];
  context = [(RCApplicationModel *)self context];
  v7 = [(RCSavedRecordingsController *)v5 initWithFetchRequest:v4 managedObjectContext:context];

  [(RCSavedRecordingsController *)v7 setDefaultDelegate:self];

  return v7;
}

- (id)_recordingsControllerWithFolder:(id)folder
{
  folderCopy = folder;
  folderType = [folderCopy folderType];
  if (folderType > 1)
  {
    if (folderType != 2)
    {
      if (folderType != 3)
      {
        if (folderType == 4)
        {
          uuid = [folderCopy uuid];
          v7 = [RCQueryManager recordingsInFolderPredicate:uuid];
          v8 = [(RCApplicationModel *)self _recordingsControllerWithPredicate:v7];

          goto LABEL_15;
        }

        goto LABEL_18;
      }

      deletedRecordingsController = [(RCApplicationModel *)self deletedRecordingsController];
      goto LABEL_13;
    }

    v9 = +[RCQueryManager watchOSPredicate];
LABEL_10:
    v10 = v9;
    v11 = [(RCApplicationModel *)self _recordingsControllerWithPredicate:v9];
LABEL_14:
    v8 = v11;

    goto LABEL_15;
  }

  if (!folderType)
  {
    deletedRecordingsController = [(RCApplicationModel *)self recordingsController];
LABEL_13:
    v10 = deletedRecordingsController;
    v11 = [deletedRecordingsController copy];
    goto LABEL_14;
  }

  if (folderType == 1)
  {
    v9 = +[RCQueryManager favoritePredicate];
    goto LABEL_10;
  }

LABEL_18:
  v14 = OSLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1001BAA3C(folderCopy, v14);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)recordingsControllerWithFolder:(id)folder
{
  folderCopy = folder;
  v5 = [(RCApplicationModel *)self _recordingsControllerWithFolder:folderCopy];
  [v5 setFolder:folderCopy];

  return v5;
}

- (id)playableRecordingsForFolder:(id)folder
{
  folderCopy = folder;
  foldersController = [(RCApplicationModel *)self foldersController];
  v6 = [foldersController playableRecordingsInFolder:folderCopy];

  return v6;
}

- (unint64_t)playableCountForFolder:(id)folder
{
  folderCopy = folder;
  foldersController = [(RCApplicationModel *)self foldersController];
  v6 = [foldersController playableCountForFolder:folderCopy];

  return v6;
}

- (void)_deleteFolderAndRecordings:(id)recordings shouldPermanentlyErase:(BOOL)erase
{
  eraseCopy = erase;
  recordingsCopy = recordings;
  foldersController = [(RCApplicationModel *)self foldersController];
  v8 = [foldersController playableRecordingsInFolder:recordingsCopy];

  [(RCApplicationModel *)self deleteFolder:recordingsCopy];
  if (eraseCopy)
  {
    [(RCApplicationModel *)self eraseRecordings:v8];
  }

  else
  {
    [(RCApplicationModel *)self deleteRecordings:v8];
  }
}

- (id)mostRecentRecording
{
  recordingsController = [(RCApplicationModel *)self recordingsController];
  fetchedRecordings = [recordingsController fetchedRecordings];
  firstObject = [fetchedRecordings firstObject];

  return firstObject;
}

- (NSArray)deletedRecordings
{
  deletedRecordingsController = [(RCApplicationModel *)self deletedRecordingsController];
  fetchedRecordings = [deletedRecordingsController fetchedRecordings];

  return fetchedRecordings;
}

- (unint64_t)userFolderCount
{
  foldersController = [(RCApplicationModel *)self foldersController];
  userFolders = [foldersController userFolders];
  v4 = [userFolders count];

  return v4;
}

- (NSArray)userFolders
{
  foldersController = [(RCApplicationModel *)self foldersController];
  userFolders = [foldersController userFolders];

  return userFolders;
}

- (id)newChangeTrackingBackgroundModel
{
  v2 = +[RCApplicationContainer sharedContainer];
  newChangeTrackingBackgroundModel = [v2 newChangeTrackingBackgroundModel];

  return newChangeTrackingBackgroundModel;
}

- (id)compositionLoadedForSavedRecordingUUID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000B1D3C;
  v14 = sub_1000B1D4C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B1D54;
  v6[3] = &unk_10028B438;
  selfCopy = self;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(RCApplicationModel *)selfCopy performBlockAndWait:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)moveFolder:(id)folder toIndexPath:(id)path
{
  folderCopy = folder;
  pathCopy = path;
  if ([folderCopy folderType] != 4)
  {
    sub_1001BAADC(a2, self);
  }

  userFolders = [(RCApplicationModel *)self userFolders];
  v10 = [pathCopy row];
  v11 = [userFolders indexOfObject:folderCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BABD4(folderCopy, v12);
    }
  }

  else
  {
    v13 = v11;
    if (v11 != v10)
    {
      if (v10 >= [userFolders count])
      {
        sub_1001BAB58(a2, self);
      }

      if (v10 >= v13)
      {
        if (v13 < v10)
        {
          do
          {
            v16 = [userFolders objectAtIndexedSubscript:v13 + 1];
            [v16 setRank:v13];

            ++v13;
          }

          while (v10 != v13);
        }
      }

      else if (v10 < v13)
      {
        v14 = v10;
        do
        {
          v15 = [userFolders objectAtIndexedSubscript:v14];
          [v15 setRank:++v14];
        }

        while (v13 != v14);
      }

      [folderCopy setRank:v10];
      [(RCApplicationModel *)self saveIfNecessary];
    }
  }
}

- (id)insertRecordingWithAudioFile:(id)file duration:(double)duration date:(id)date customTitleBase:(id)base uniqueID:(id)d error:(id *)error
{
  fileCopy = file;
  dateCopy = date;
  baseCopy = base;
  dCopy = d;
  v18 = +[NSUserDefaults sharedSettingsUserDefaults];
  v19 = v18;
  if (v18)
  {
    rc_useLocationBasedNaming = [v18 rc_useLocationBasedNaming];
    if (!baseCopy)
    {
      if (rc_useLocationBasedNaming)
      {
        currentLocationBasedName = [objc_opt_class() currentLocationBasedName];
        baseCopy = currentLocationBasedName;
        if (currentLocationBasedName)
        {
          v22 = currentLocationBasedName;
        }

        else
        {
          v23 = OSLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_1001BAC60(v23);
          }
        }
      }
    }
  }

  v26.receiver = self;
  v26.super_class = RCApplicationModel;
  v24 = [(RCApplicationModel *)&v26 insertRecordingWithAudioFile:fileCopy duration:dateCopy date:baseCopy customTitleBase:dCopy uniqueID:error error:duration];

  return v24;
}

+ (id)currentLocationBasedName
{
  v2 = +[RCLocationsOfInterestManager defaultManager];
  currentLocation = [v2 currentLocation];
  v4 = currentLocation;
  if (!currentLocation)
  {
    goto LABEL_5;
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B229C;
  v16 = &unk_10028C418;
  v17 = currentLocation;
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"location" ascending:1 comparator:&v13];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"confidence" ascending:0, v13, v14, v15, v16];
  locationsOfInterest = [v2 locationsOfInterest];
  v18[0] = v5;
  v18[1] = v6;
  v8 = [NSArray arrayWithObjects:v18 count:2];
  v9 = [locationsOfInterest sortedArrayUsingDescriptors:v8];

  firstObject = [v9 firstObject];
  v11 = firstObject;
  if (firstObject)
  {
    locationsOfInterest = [firstObject preferredName];
  }

  if (!v11)
  {
LABEL_5:
    locationsOfInterest = 0;
  }

  return locationsOfInterest;
}

@end