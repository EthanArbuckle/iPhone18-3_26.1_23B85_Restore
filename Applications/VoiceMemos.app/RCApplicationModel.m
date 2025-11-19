@interface RCApplicationModel
+ (RCApplicationModel)sharedApplicationModel;
+ (id)currentLocationBasedName;
- (NSArray)deletedRecordings;
- (NSArray)recordings;
- (NSArray)userFolders;
- (RCApplicationModel)init;
- (RCFoldersFetchedResultsController)foldersController;
- (id)_recordingsControllerWithFolder:(id)a3;
- (id)_recordingsControllerWithPredicate:(id)a3;
- (id)compositionLoadedForSavedRecordingUUID:(id)a3;
- (id)insertRecordingWithAudioFile:(id)a3 duration:(double)a4 date:(id)a5 customTitleBase:(id)a6 uniqueID:(id)a7 error:(id *)a8;
- (id)mostRecentRecording;
- (id)newChangeTrackingBackgroundModel;
- (id)playableRecordingsForFolder:(id)a3;
- (id)recordingsControllerWithFolder:(id)a3;
- (unint64_t)playableCountForFolder:(id)a3;
- (unint64_t)userFolderCount;
- (void)_deleteFolderAndRecordings:(id)a3 shouldPermanentlyErase:(BOOL)a4;
- (void)moveFolder:(id)a3 toIndexPath:(id)a4;
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
    v8 = [(RCApplicationModel *)v5 context];
    v9 = [(RCSavedRecordingsController *)v7 initWithFetchRequest:v6 managedObjectContext:v8];
    recordingsController = v5->_recordingsController;
    v5->_recordingsController = v9;

    [(RCSavedRecordingsController *)v5->_recordingsController setDefaultDelegate:v5];
    v11 = +[RCQueryManager deletedRecordingsFetchRequest];
    v12 = [RCSavedRecordingsController alloc];
    v13 = [(RCApplicationModel *)v5 context];
    v14 = [(RCSavedRecordingsController *)v12 initWithFetchRequest:v11 managedObjectContext:v13];
    deletedRecordingsController = v5->_deletedRecordingsController;
    v5->_deletedRecordingsController = v14;

    [(RCSavedRecordingsController *)v5->_deletedRecordingsController setDefaultDelegate:v5];
  }

  return v5;
}

- (NSArray)recordings
{
  v2 = [(RCApplicationModel *)self recordingsController];
  v3 = [v2 fetchedRecordings];

  return v3;
}

- (RCFoldersFetchedResultsController)foldersController
{
  foldersController = self->_foldersController;
  if (!foldersController)
  {
    v4 = +[RCQueryManager userDefinedFoldersFetchRequest];
    v5 = [RCFoldersFetchedResultsController alloc];
    v6 = [(RCApplicationModel *)self context];
    v7 = [(RCFoldersFetchedResultsController *)v5 initWithFetchRequest:v4 managedObjectContext:v6];
    v8 = self->_foldersController;
    self->_foldersController = v7;

    foldersController = self->_foldersController;
  }

  return foldersController;
}

- (id)_recordingsControllerWithPredicate:(id)a3
{
  v4 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:a3];
  [v4 setFetchBatchSize:10];
  v5 = [RCSavedRecordingsController alloc];
  v6 = [(RCApplicationModel *)self context];
  v7 = [(RCSavedRecordingsController *)v5 initWithFetchRequest:v4 managedObjectContext:v6];

  [(RCSavedRecordingsController *)v7 setDefaultDelegate:self];

  return v7;
}

- (id)_recordingsControllerWithFolder:(id)a3
{
  v4 = a3;
  v5 = [v4 folderType];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v6 = [v4 uuid];
          v7 = [RCQueryManager recordingsInFolderPredicate:v6];
          v8 = [(RCApplicationModel *)self _recordingsControllerWithPredicate:v7];

          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v12 = [(RCApplicationModel *)self deletedRecordingsController];
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

  if (!v5)
  {
    v12 = [(RCApplicationModel *)self recordingsController];
LABEL_13:
    v10 = v12;
    v11 = [v12 copy];
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v9 = +[RCQueryManager favoritePredicate];
    goto LABEL_10;
  }

LABEL_18:
  v14 = OSLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1001BAA3C(v4, v14);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)recordingsControllerWithFolder:(id)a3
{
  v4 = a3;
  v5 = [(RCApplicationModel *)self _recordingsControllerWithFolder:v4];
  [v5 setFolder:v4];

  return v5;
}

- (id)playableRecordingsForFolder:(id)a3
{
  v4 = a3;
  v5 = [(RCApplicationModel *)self foldersController];
  v6 = [v5 playableRecordingsInFolder:v4];

  return v6;
}

- (unint64_t)playableCountForFolder:(id)a3
{
  v4 = a3;
  v5 = [(RCApplicationModel *)self foldersController];
  v6 = [v5 playableCountForFolder:v4];

  return v6;
}

- (void)_deleteFolderAndRecordings:(id)a3 shouldPermanentlyErase:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(RCApplicationModel *)self foldersController];
  v8 = [v7 playableRecordingsInFolder:v6];

  [(RCApplicationModel *)self deleteFolder:v6];
  if (v4)
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
  v2 = [(RCApplicationModel *)self recordingsController];
  v3 = [v2 fetchedRecordings];
  v4 = [v3 firstObject];

  return v4;
}

- (NSArray)deletedRecordings
{
  v2 = [(RCApplicationModel *)self deletedRecordingsController];
  v3 = [v2 fetchedRecordings];

  return v3;
}

- (unint64_t)userFolderCount
{
  v2 = [(RCApplicationModel *)self foldersController];
  v3 = [v2 userFolders];
  v4 = [v3 count];

  return v4;
}

- (NSArray)userFolders
{
  v2 = [(RCApplicationModel *)self foldersController];
  v3 = [v2 userFolders];

  return v3;
}

- (id)newChangeTrackingBackgroundModel
{
  v2 = +[RCApplicationContainer sharedContainer];
  v3 = [v2 newChangeTrackingBackgroundModel];

  return v3;
}

- (id)compositionLoadedForSavedRecordingUUID:(id)a3
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
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  [(RCApplicationModel *)v7 performBlockAndWait:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)moveFolder:(id)a3 toIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 folderType] != 4)
  {
    sub_1001BAADC(a2, self);
  }

  v9 = [(RCApplicationModel *)self userFolders];
  v10 = [v8 row];
  v11 = [v9 indexOfObject:v7];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BABD4(v7, v12);
    }
  }

  else
  {
    v13 = v11;
    if (v11 != v10)
    {
      if (v10 >= [v9 count])
      {
        sub_1001BAB58(a2, self);
      }

      if (v10 >= v13)
      {
        if (v13 < v10)
        {
          do
          {
            v16 = [v9 objectAtIndexedSubscript:v13 + 1];
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
          v15 = [v9 objectAtIndexedSubscript:v14];
          [v15 setRank:++v14];
        }

        while (v13 != v14);
      }

      [v7 setRank:v10];
      [(RCApplicationModel *)self saveIfNecessary];
    }
  }
}

- (id)insertRecordingWithAudioFile:(id)a3 duration:(double)a4 date:(id)a5 customTitleBase:(id)a6 uniqueID:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = +[NSUserDefaults sharedSettingsUserDefaults];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 rc_useLocationBasedNaming];
    if (!v16)
    {
      if (v20)
      {
        v21 = [objc_opt_class() currentLocationBasedName];
        v16 = v21;
        if (v21)
        {
          v22 = v21;
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
  v24 = [(RCApplicationModel *)&v26 insertRecordingWithAudioFile:v14 duration:v15 date:v16 customTitleBase:v17 uniqueID:a8 error:a4];

  return v24;
}

+ (id)currentLocationBasedName
{
  v2 = +[RCLocationsOfInterestManager defaultManager];
  v3 = [v2 currentLocation];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000B229C;
  v16 = &unk_10028C418;
  v17 = v3;
  v5 = [NSSortDescriptor sortDescriptorWithKey:@"location" ascending:1 comparator:&v13];
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"confidence" ascending:0, v13, v14, v15, v16];
  v7 = [v2 locationsOfInterest];
  v18[0] = v5;
  v18[1] = v6;
  v8 = [NSArray arrayWithObjects:v18 count:2];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v7 = [v10 preferredName];
  }

  if (!v11)
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

@end