@interface RCRecordingsModelInteractor
+ (id)sharedRecordingsModelInteractor;
- (BOOL)createUserFolderWithName:(id)name;
- (BOOL)isEnhancedForUUID:(id)d;
- (BOOL)isFavoriteForUUID:(id)d;
- (BOOL)isFavoriteForUUIDs:(id)ds;
- (BOOL)isRecentlyDeletedForUUID:(id)d;
- (BOOL)isSpatialRecordingForUUID:(id)d;
- (BOOL)isSpeechIsolatorEnabledForUUID:(id)d;
- (BOOL)recordingTitleHasBeenEditedForUUID:(id)d;
- (BOOL)userFolderExistsWithName:(id)name;
- (RCRecordingsModelInteractor)initWithSavedRecordingsModel:(id)model;
- (id)allFoldersWithName:(id)name;
- (id)builtInFolderOfType:(int64_t)type;
- (id)duplicateRecordingWithUUID:(id)d;
- (id)folderForUUID:(id)d;
- (id)restoreFolder:(id)folder;
- (id)restoreRecordingsWithUUIDs:(id)ds;
- (id)setFavorite:(BOOL)favorite forUUIDs:(id)ds;
- (id)titleForUUID:(id)d;
- (id)uuidOfUserFolderForRecordingWithUUID:(id)d;
- (id)visibleBuiltInFolders;
- (void)_deleteRecordingsWithUUIDs:(id)ds withImmediateDeletion:(BOOL)deletion;
- (void)addRecordingWithUUID:(id)d toBuiltInFolderOfType:(int64_t)type;
- (void)addRecordingWithUUID:(id)d toUserFolderNamed:(id)named;
- (void)addRecordingsWithUUIDs:(id)ds toBuiltInFolderOfType:(int64_t)type;
- (void)addRecordingsWithUUIDs:(id)ds toUserFolderNamed:(id)named;
- (void)addRecordingsWithUUIDs:(id)ds toUserFolderWithUUID:(id)d;
- (void)deleteUserFolder:(id)folder;
- (void)deleteUserFolderWithName:(id)name;
- (void)performRenameWithNewTitle:(id)title forUUID:(id)d;
- (void)removeRecordingWithUUID:(id)d fromUserFolderName:(id)name;
- (void)removeRecordingWithUUID:(id)d fromUserFolderWithUUID:(id)iD;
- (void)removeRecordingsWithUUIDs:(id)ds fromUserFolderWithUUID:(id)d;
- (void)setEnhanced:(BOOL)enhanced forUUID:(id)d;
- (void)setFavorite:(BOOL)favorite forUUID:(id)d;
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

- (RCRecordingsModelInteractor)initWithSavedRecordingsModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = RCRecordingsModelInteractor;
  v6 = [(RCRecordingsModelInteractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (id)titleForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  v4 = v3;
  if (v3)
  {
    title = [v3 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (BOOL)isRecentlyDeletedForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  deletionDate = [v3 deletionDate];
  v5 = deletionDate != 0;

  return v5;
}

- (BOOL)isFavoriteForUUID:(id)d
{
  dCopy = d;
  dCopy2 = d;
  v5 = [NSArray arrayWithObjects:&dCopy count:1];

  LOBYTE(self) = [(RCRecordingsModelInteractor *)self isFavoriteForUUIDs:v5, dCopy];
  return self;
}

- (BOOL)isFavoriteForUUIDs:(id)ds
{
  [(RCRecordingsModelInteractor *)self recordingsForUUIDs:ds];
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
      favorite = [v8 favorite];
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
    favorite = 0;
  }

  return favorite;
}

- (BOOL)isEnhancedForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  enhanced = [v3 enhanced];

  return enhanced;
}

- (BOOL)isSpatialRecordingForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  composedAssetIsSpatialRecording = [v3 composedAssetIsSpatialRecording];

  return composedAssetIsSpatialRecording;
}

- (BOOL)isSpeechIsolatorEnabledForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  isSpeechIsolatorEnabled = [v3 isSpeechIsolatorEnabled];

  return isSpeechIsolatorEnabled;
}

- (BOOL)recordingTitleHasBeenEditedForUUID:(id)d
{
  v3 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  v4 = v3;
  if (v3)
  {
    manuallyRenamed = [v3 manuallyRenamed];
  }

  else
  {
    manuallyRenamed = 0;
  }

  return manuallyRenamed;
}

- (void)setFavorite:(BOOL)favorite forUUID:(id)d
{
  favoriteCopy = favorite;
  dCopy = d;
  dCopy2 = d;
  v7 = [NSArray arrayWithObjects:&dCopy count:1];

  dCopy = [(RCRecordingsModelInteractor *)self setFavorite:favoriteCopy forUUIDs:v7, dCopy];
}

- (id)setFavorite:(BOOL)favorite forUUIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:dsCopy];

  v9 = self->_model;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100082484;
  v19 = &unk_10028B7F8;
  v20 = v8;
  favoriteCopy = favorite;
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

- (void)setEnhanced:(BOOL)enhanced forUUID:(id)d
{
  enhancedCopy = enhanced;
  v6 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  if (v6)
  {
    v7 = v6;
    [(RCApplicationModel *)self->_model setEnhanced:enhancedCopy ofRecording:v6];
    v6 = v7;
  }
}

- (void)performRenameWithNewTitle:(id)title forUUID:(id)d
{
  titleCopy = title;
  v6 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  if (v6)
  {
    [(RCApplicationModel *)self->_model setTitle:titleCopy ofRecording:v6];
  }
}

- (id)duplicateRecordingWithUUID:(id)d
{
  v4 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
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

- (void)_deleteRecordingsWithUUIDs:(id)ds withImmediateDeletion:(BOOL)deletion
{
  dsCopy = ds;
  v7 = self->_model;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100082858;
  v13 = &unk_10028B7F8;
  selfCopy = self;
  v15 = dsCopy;
  deletionCopy = deletion;
  v16 = v7;
  v8 = v7;
  v9 = dsCopy;
  [(RCApplicationModel *)v8 performWithSavingDisabled:&v10];
  [(RCApplicationModel *)v8 saveIfNecessary:v10];
}

- (id)restoreRecordingsWithUUIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableArray array];
  v6 = self->_model;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100082A7C;
  v15 = &unk_10028A9B0;
  selfCopy = self;
  v17 = dsCopy;
  v18 = v6;
  v19 = v5;
  v7 = v5;
  v8 = v6;
  v9 = dsCopy;
  [(RCApplicationModel *)v8 performWithSavingDisabled:&v12];
  [(RCApplicationModel *)v8 saveIfNecessary:v12];
  v10 = [v7 copy];

  return v10;
}

- (BOOL)userFolderExistsWithName:(id)name
{
  v3 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:name];
  v4 = v3 != 0;

  return v4;
}

- (id)allFoldersWithName:(id)name
{
  nameCopy = name;
  v5 = +[NSMutableArray array];
  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [nameCopy stringByTrimmingCharactersInSet:v6];

  v8 = [(RCRecordingsModelInteractor *)self existingUserFoldersWithName:nameCopy searchOption:2];

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

  visibleBuiltInFolders = [(RCRecordingsModelInteractor *)self visibleBuiltInFolders];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100082E88;
  v19 = &unk_10028B820;
  v20 = v9;
  v21 = 129;
  v12 = v9;
  v13 = [visibleBuiltInFolders na_filter:&v16];

  if ([v13 count])
  {
    [v5 addObjectsFromArray:v13];
  }

  v14 = [v5 copy];

  return v14;
}

- (id)builtInFolderOfType:(int64_t)type
{
  v4 = self->_model;
  v5 = v4;
  if (type > 1)
  {
    if (type == 2)
    {
      capturedOnWatchRecordingsFolder = [(RCApplicationModel *)v4 capturedOnWatchRecordingsFolder];
    }

    else
    {
      if (type != 3)
      {
        if (type == 4)
        {
          v6 = OSLogForCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            sub_1001B9150(v6);
          }
        }

        goto LABEL_15;
      }

      capturedOnWatchRecordingsFolder = [(RCApplicationModel *)v4 recentlyDeletedRecordingsFolder];
    }

LABEL_14:
    v8 = capturedOnWatchRecordingsFolder;
    goto LABEL_18;
  }

  if (!type)
  {
    capturedOnWatchRecordingsFolder = [(RCApplicationModel *)v4 voiceMemosRecordingsFolder];
    goto LABEL_14;
  }

  if (type == 1)
  {
    capturedOnWatchRecordingsFolder = [(RCApplicationModel *)v4 favoriteRecordingsFolder];
    goto LABEL_14;
  }

LABEL_15:
  v9 = OSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B91D4(type, v9);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (id)visibleBuiltInFolders
{
  foldersController = [(RCApplicationModel *)self->_model foldersController];
  builtinFolders = [foldersController builtinFolders];

  return builtinFolders;
}

- (id)uuidOfUserFolderForRecordingWithUUID:(id)d
{
  if (d)
  {
    userFolderUUID = [(RCRecordingsModelInteractor *)self recordingForUUID:?];
    v4 = userFolderUUID;
    if (userFolderUUID)
    {
      userFolderUUID = [userFolderUUID userFolderUUID];
    }

    v5 = userFolderUUID;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)folderForUUID:(id)d
{
  dCopy = d;
  v5 = 0;
  while (1)
  {
    v6 = [(RCRecordingsModelInteractor *)self builtInFolderOfType:v5];
    v7 = v6;
    if (v6)
    {
      uuid = [v6 uuid];
      v9 = [uuid isEqual:dCopy];

      if (v9)
      {
        break;
      }
    }

    if (++v5 == 4)
    {
      v7 = [(RCApplicationModel *)self->_model existingFolderWithUUID:dCopy];
      break;
    }
  }

  return v7;
}

- (BOOL)createUserFolderWithName:(id)name
{
  nameCopy = name;
  v5 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:nameCopy];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(RCApplicationModel *)self->_model folderWithName:nameCopy];

    v6 = v7 != 0;
  }

  return v6;
}

- (void)deleteUserFolderWithName:(id)name
{
  v4 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:name];
  if (v4)
  {
    v5 = v4;
    [(RCRecordingsModelInteractor *)self deleteUserFolder:v4];
    v4 = v5;
  }
}

- (void)deleteUserFolder:(id)folder
{
  folderCopy = folder;
  if ([(RCRecordingsModelInteractor *)self playableCountForFolder:?])
  {
    v4 = +[NSUserDefaults sharedSettingsUserDefaults];
    v5 = v4;
    if (v4 && [v4 rc_deletionIsImmediate])
    {
      [(RCApplicationModel *)self->_model deleteFolderAndPermanentlyEraseAllPlayableRecordings:folderCopy];
    }

    else
    {
      [(RCApplicationModel *)self->_model deleteFolderAndAllPlayableRecordings:folderCopy];
    }
  }

  else
  {
    [(RCApplicationModel *)self->_model deleteFolder:folderCopy];
  }
}

- (id)restoreFolder:(id)folder
{
  folderCopy = folder;
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

  name = [folderCopy name];
  v9 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:name];

  v10 = 0;
  if (v7 && !v9)
  {
    model = self->_model;
    name2 = [folderCopy name];
    v10 = [(RCApplicationModel *)model folderWithName:name2];

    v13 = self->_model;
    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [folderCopy rank], 1);
    [(RCApplicationModel *)v13 moveFolder:v10 toIndexPath:v14];
  }

  [(RCApplicationModel *)self->_model saveIfNecessary];

  return v10;
}

- (void)addRecordingWithUUID:(id)d toBuiltInFolderOfType:(int64_t)type
{
  dCopy = d;
  dCopy2 = d;
  v7 = [NSArray arrayWithObjects:&dCopy count:1];

  [(RCRecordingsModelInteractor *)self addRecordingsWithUUIDs:v7 toBuiltInFolderOfType:type, dCopy];
}

- (void)addRecordingsWithUUIDs:(id)ds toBuiltInFolderOfType:(int64_t)type
{
  v8 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:ds];
  v6 = [v8 count];
  if (type <= 1 && v6)
  {
    v7 = [(RCRecordingsModelInteractor *)self builtInFolderOfType:type];
    if (v7)
    {
      [(RCApplicationModel *)self->_model addRecordings:v8 toFolder:v7];
    }
  }
}

- (void)addRecordingsWithUUIDs:(id)ds toUserFolderWithUUID:(id)d
{
  dCopy = d;
  v6 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:ds];
  if ([v6 count])
  {
    v7 = self->_model;
    v8 = [(RCApplicationModel *)v7 existingFolderWithUUID:dCopy];
    if (v8)
    {
      [(RCApplicationModel *)v7 addRecordings:v6 toFolder:v8];
    }
  }
}

- (void)addRecordingWithUUID:(id)d toUserFolderNamed:(id)named
{
  dCopy = d;
  namedCopy = named;
  dCopy2 = d;
  v8 = [NSArray arrayWithObjects:&dCopy count:1];

  [(RCRecordingsModelInteractor *)self addRecordingsWithUUIDs:v8 toUserFolderNamed:namedCopy, dCopy];
}

- (void)addRecordingsWithUUIDs:(id)ds toUserFolderNamed:(id)named
{
  namedCopy = named;
  v6 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:ds];
  if ([v6 count])
  {
    v7 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:namedCopy];
    if (v7)
    {
      [(RCApplicationModel *)self->_model addRecordings:v6 toFolder:v7];
    }
  }
}

- (void)removeRecordingWithUUID:(id)d fromUserFolderWithUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  dCopy2 = d;
  v8 = [NSArray arrayWithObjects:&dCopy count:1];

  [(RCRecordingsModelInteractor *)self removeRecordingsWithUUIDs:v8 fromUserFolderWithUUID:iDCopy, dCopy];
}

- (void)removeRecordingsWithUUIDs:(id)ds fromUserFolderWithUUID:(id)d
{
  dCopy = d;
  v7 = [(RCRecordingsModelInteractor *)self recordingsForUUIDs:ds];
  v8 = self->_model;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100083954;
  v12[3] = &unk_10028B058;
  v13 = v7;
  v14 = dCopy;
  v15 = v8;
  v9 = v8;
  v10 = dCopy;
  v11 = v7;
  [(RCApplicationModel *)v9 performWithSavingDisabled:v12];
  [(RCApplicationModel *)v9 saveIfNecessary];
}

- (void)removeRecordingWithUUID:(id)d fromUserFolderName:(id)name
{
  nameCopy = name;
  v8 = [(RCRecordingsModelInteractor *)self recordingForUUID:d];
  v7 = [(RCRecordingsModelInteractor *)self existingUserFolderWithName:nameCopy];

  if (v8 && v7)
  {
    [(RCApplicationModel *)self->_model removeRecording:v8 fromFolder:v7];
  }
}

@end