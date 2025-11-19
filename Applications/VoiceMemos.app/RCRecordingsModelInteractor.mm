@interface RCRecordingsModelInteractor
+ (id)sharedRecordingsModelInteractor;
- (BOOL)createUserFolderWithName:(id)a3;
- (BOOL)isEnhancedForUUID:(id)a3;
- (BOOL)isFavoriteForUUID:(id)a3;
- (BOOL)isFavoriteForUUIDs:(id)a3;
- (BOOL)isRecentlyDeletedForUUID:(id)a3;
- (BOOL)isSpatialRecordingForUUID:(id)a3;
- (BOOL)isSpeechIsolatorEnabledForUUID:(id)a3;
- (BOOL)recordingTitleHasBeenEditedForUUID:(id)a3;
- (BOOL)userFolderExistsWithName:(id)a3;
- (RCRecordingsModelInteractor)initWithSavedRecordingsModel:(id)a3;
- (id)allFoldersWithName:(id)a3;
- (id)builtInFolderOfType:(int64_t)a3;
- (id)duplicateRecordingWithUUID:(id)a3;
- (id)folderForUUID:(id)a3;
- (id)restoreFolder:(id)a3;
- (id)restoreRecordingsWithUUIDs:(id)a3;
- (id)setFavorite:(BOOL)a3 forUUIDs:(id)a4;
- (id)titleForUUID:(id)a3;
- (id)uuidOfUserFolderForRecordingWithUUID:(id)a3;
- (id)visibleBuiltInFolders;
- (void)_deleteRecordingsWithUUIDs:(id)a3 withImmediateDeletion:(BOOL)a4;
- (void)addRecordingWithUUID:(id)a3 toBuiltInFolderOfType:(int64_t)a4;
- (void)addRecordingWithUUID:(id)a3 toUserFolderNamed:(id)a4;
- (void)addRecordingsWithUUIDs:(id)a3 toBuiltInFolderOfType:(int64_t)a4;
- (void)addRecordingsWithUUIDs:(id)a3 toUserFolderNamed:(id)a4;
- (void)addRecordingsWithUUIDs:(id)a3 toUserFolderWithUUID:(id)a4;
- (void)deleteUserFolder:(id)a3;
- (void)deleteUserFolderWithName:(id)a3;
- (void)performRenameWithNewTitle:(id)a3 forUUID:(id)a4;
- (void)removeRecordingWithUUID:(id)a3 fromUserFolderName:(id)a4;
- (void)removeRecordingWithUUID:(id)a3 fromUserFolderWithUUID:(id)a4;
- (void)removeRecordingsWithUUIDs:(id)a3 fromUserFolderWithUUID:(id)a4;
- (void)setEnhanced:(BOOL)a3 forUUID:(id)a4;
- (void)setFavorite:(BOOL)a3 forUUID:(id)a4;
@end

@implementation RCRecordingsModelInteractor

+ (id)sharedRecordingsModelInteractor
{
  if (qword_1002D70B0 != -1)
  {
    sub_100005270();
  }

  v3 = qword_1002D70A8;

  return v3;
}

- (RCRecordingsModelInteractor)initWithSavedRecordingsModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RCRecordingsModelInteractor;
  v6 = [(RCRecordingsModelInteractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (id)titleForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 title];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRecentlyDeletedForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = [v3 deletionDate];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isFavoriteForUUID:(id)a3
{
  v7 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  LOBYTE(self) = [(RCRecordingsModelInteractor *)self isFavoriteForUUIDs:v5, v7];
  return self;
}

- (BOOL)isFavoriteForUUIDs:(id)a3
{
  [(RCRecordingsModelInteractor *)self recordingsForUUIDs:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      v9 = [v8 favorite];
      if (![v8 favorite])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEnhancedForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = [v3 enhanced];

  return v4;
}

- (BOOL)isSpatialRecordingForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = [v3 composedAssetIsSpatialRecording];

  return v4;
}

- (BOOL)isSpeechIsolatorEnabledForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = [v3 isSpeechIsolatorEnabled];

  return v4;
}

- (BOOL)recordingTitleHasBeenEditedForUUID:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 manuallyRenamed];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFavorite:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = a4;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  v8 = [(RCRecordingsModelInteractor *)self setFavorite:v4 forUUIDs:v7, v9];
}

- (id)setFavorite:(BOOL)a3 forUUIDs:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:v6];

  v9 = self->_model;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100082484;
  v19 = &unk_10028B7F8;
  v20 = v8;
  v23 = a3;
  v10 = v7;
  v21 = v10;
  v22 = v9;
  v11 = v9;
  v12 = v8;
  [(RCApplicationModel *)v11 performWithSavingDisabled:&v16];
  [(RCApplicationModel *)v11 saveIfNecessary:v16];
  v13 = v22;
  v14 = v10;

  return v10;
}

- (void)setEnhanced:(BOOL)a3 forUUID:(id)a4
{
  v4 = a3;
  v6 = [(RCRecordingsModelInteractor *)self recordingForUUID:a4];
  if (v6)
  {
    v7 = v6;
    [(RCApplicationModel *)self->_model setEnhanced:v4 ofRecording:v6];
    v6 = v7;
  }
}

- (void)performRenameWithNewTitle:(id)a3 forUUID:(id)a4
{
  v7 = a3;
  v6 = [(RCRecordingsModelInteractor *)self recordingForUUID:a4];
  if (v6)
  {
    [(RCApplicationModel *)self->_model setTitle:v7 ofRecording:v6];
  }
}

- (id)duplicateRecordingWithUUID:(id)a3
{
  v4 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  if (v4)
  {
    model = self->_model;
    v12 = 0;
    v6 = [(RCApplicationModel *)model duplicateRecording:v4 error:&v12];
    v7 = v12;
    v8 = v7;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001B90A4(v8, v10);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_deleteRecordingsWithUUIDs:(id)a3 withImmediateDeletion:(BOOL)a4
{
  v6 = a3;
  v7 = self->_model;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100082858;
  v13 = &unk_10028B7F8;
  v14 = self;
  v15 = v6;
  v17 = a4;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  [(RCApplicationModel *)v8 performWithSavingDisabled:&v10];
  [(RCApplicationModel *)v8 saveIfNecessary:v10];
}

- (id)restoreRecordingsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = self->_model;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100082A7C;
  v15 = &unk_10028A9B0;
  v16 = self;
  v17 = v4;
  v18 = v6;
  v19 = v5;
  v7 = v5;
  v8 = v6;
  v9 = v4;
  [(RCApplicationModel *)v8 performWithSavingDisabled:&v12];
  [(RCApplicationModel *)v8 saveIfNecessary:v12];
  v10 = [v7 copy];

  return v10;
}

- (BOOL)userFolderExistsWithName:(id)a3
{
  v3 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)allFoldersWithName:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [v4 stringByTrimmingCharactersInSet:v6];

  v8 = [(RCRecordingsModelInteractor *)self existingUserFoldersWithName:v4 searchOption:2];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100082E04;
  v22[3] = &unk_10028B820;
  v9 = v7;
  v23 = v9;
  v24 = 129;
  v10 = [v8 na_filter:v22];

  if ([v10 count])
  {
    [v5 addObjectsFromArray:v10];
  }

  v11 = [(RCRecordingsModelInteractor *)self visibleBuiltInFolders];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100082E88;
  v19 = &unk_10028B820;
  v20 = v9;
  v21 = 129;
  v12 = v9;
  v13 = [v11 na_filter:&v16];

  if ([v13 count])
  {
    [v5 addObjectsFromArray:v13];
  }

  v14 = [v5 copy];

  return v14;
}

- (id)builtInFolderOfType:(int64_t)a3
{
  v4 = self->_model;
  v5 = v4;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = [(RCApplicationModel *)v4 capturedOnWatchRecordingsFolder];
    }

    else
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v6 = OSLogForCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            sub_1001B9150(v6);
          }
        }

        goto LABEL_15;
      }

      v7 = [(RCApplicationModel *)v4 recentlyDeletedRecordingsFolder];
    }

LABEL_14:
    v8 = v7;
    goto LABEL_18;
  }

  if (!a3)
  {
    v7 = [(RCApplicationModel *)v4 voiceMemosRecordingsFolder];
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v7 = [(RCApplicationModel *)v4 favoriteRecordingsFolder];
    goto LABEL_14;
  }

LABEL_15:
  v9 = OSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B91D4(a3, v9);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (id)visibleBuiltInFolders
{
  v2 = [(RCApplicationModel *)self->_model foldersController];
  v3 = [v2 builtinFolders];

  return v3;
}

- (id)uuidOfUserFolderForRecordingWithUUID:(id)a3
{
  if (a3)
  {
    v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:?];
    v4 = v3;
    if (v3)
    {
      v3 = [v3 userFolderUUID];
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)folderForUUID:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = [(RCRecordingsModelInteractor *)self builtInFolderOfType:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 uuid];
      v9 = [v8 isEqual:v4];

      if (v9)
      {
        break;
      }
    }

    if (++v5 == 4)
    {
      v7 = [(RCApplicationModel *)self->_model existingFolderWithUUID:v4];
      break;
    }
  }

  return v7;
}

- (BOOL)createUserFolderWithName:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(RCApplicationModel *)self->_model folderWithName:v4];

    v6 = v7 != 0;
  }

  return v6;
}

- (void)deleteUserFolderWithName:(id)a3
{
  v4 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:a3];
  if (v4)
  {
    v5 = v4;
    [(RCRecordingsModelInteractor *)self deleteUserFolder:v4];
    v4 = v5;
  }
}

- (void)deleteUserFolder:(id)a3
{
  v6 = a3;
  if ([(RCRecordingsModelInteractor *)self playableCountForFolder:?])
  {
    v4 = +[NSUserDefaults sharedSettingsUserDefaults];
    v5 = v4;
    if (v4 && [v4 rc_deletionIsImmediate])
    {
      [(RCApplicationModel *)self->_model deleteFolderAndPermanentlyEraseAllPlayableRecordings:v6];
    }

    else
    {
      [(RCApplicationModel *)self->_model deleteFolderAndAllPlayableRecordings:v6];
    }
  }

  else
  {
    [(RCApplicationModel *)self->_model deleteFolder:v6];
  }
}

- (id)restoreFolder:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults sharedSettingsUserDefaults];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 rc_deletionIsImmediate] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v4 name];
  v9 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:v8];

  v10 = 0;
  if (v7 && !v9)
  {
    model = self->_model;
    v12 = [v4 name];
    v10 = [(RCApplicationModel *)model folderWithName:v12];

    v13 = self->_model;
    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 rank], 1);
    [(RCApplicationModel *)v13 moveFolder:v10 toIndexPath:v14];
  }

  [(RCApplicationModel *)self->_model saveIfNecessary];

  return v10;
}

- (void)addRecordingWithUUID:(id)a3 toBuiltInFolderOfType:(int64_t)a4
{
  v8 = a3;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [(RCRecordingsModelInteractor *)self addRecordingsWithUUIDs:v7 toBuiltInFolderOfType:a4, v8];
}

- (void)addRecordingsWithUUIDs:(id)a3 toBuiltInFolderOfType:(int64_t)a4
{
  v8 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:a3];
  v6 = [v8 count];
  if (a4 <= 1 && v6)
  {
    v7 = [(RCRecordingsModelInteractor *)self builtInFolderOfType:a4];
    if (v7)
    {
      [(RCApplicationModel *)self->_model addRecordings:v8 toFolder:v7];
    }
  }
}

- (void)addRecordingsWithUUIDs:(id)a3 toUserFolderWithUUID:(id)a4
{
  v9 = a4;
  v6 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:a3];
  if ([v6 count])
  {
    v7 = self->_model;
    v8 = [(RCApplicationModel *)v7 existingFolderWithUUID:v9];
    if (v8)
    {
      [(RCApplicationModel *)v7 addRecordings:v6 toFolder:v8];
    }
  }
}

- (void)addRecordingWithUUID:(id)a3 toUserFolderNamed:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(RCRecordingsModelInteractor *)self addRecordingsWithUUIDs:v8 toUserFolderNamed:v6, v9];
}

- (void)addRecordingsWithUUIDs:(id)a3 toUserFolderNamed:(id)a4
{
  v8 = a4;
  v6 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:a3];
  if ([v6 count])
  {
    v7 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:v8];
    if (v7)
    {
      [(RCApplicationModel *)self->_model addRecordings:v6 toFolder:v7];
    }
  }
}

- (void)removeRecordingWithUUID:(id)a3 fromUserFolderWithUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [(RCRecordingsModelInteractor *)self removeRecordingsWithUUIDs:v8 fromUserFolderWithUUID:v6, v9];
}

- (void)removeRecordingsWithUUIDs:(id)a3 fromUserFolderWithUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:a3];
  v8 = self->_model;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100083954;
  v12[3] = &unk_10028B058;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [(RCApplicationModel *)v9 performWithSavingDisabled:v12];
  [(RCApplicationModel *)v9 saveIfNecessary];
}

- (void)removeRecordingWithUUID:(id)a3 fromUserFolderName:(id)a4
{
  v6 = a4;
  v8 = [(RCRecordingsModelInteractor *)self recordingForUUID:a3];
  v7 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:v6];

  if (v8 && v7)
  {
    [(RCApplicationModel *)self->_model removeRecording:v8 fromFolder:v7];
  }
}

@end