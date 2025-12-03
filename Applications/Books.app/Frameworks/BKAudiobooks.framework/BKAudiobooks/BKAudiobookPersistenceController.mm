@interface BKAudiobookPersistenceController
+ (id)sharedInstance;
- (BKAudiobookPersistenceController)init;
- (NSArray)stores;
- (double)_rollbackAmountForLastPlayedDate:(id)date;
- (void)_upgradeLastPeriodicBookmarkTimeWithPlayer:(id)player audiobook:(id)audiobook;
- (void)addStore:(id)store;
- (void)bookmarkTimeForAudiobook:(id)audiobook localStoresOnly:(BOOL)only completion:(id)completion;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)player:(id)player audiobookWillChange:(id)change;
- (void)player:(id)player chapterDidChange:(id)change;
- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position;
- (void)player:(id)player isScrubbing:(BOOL)scrubbing;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook importance:(int64_t)importance completion:(id)completion;
@end

@implementation BKAudiobookPersistenceController

- (NSArray)stores
{
  v2 = [(NSArray *)self->_stores copy];

  return v2;
}

+ (id)sharedInstance
{
  if (qword_47920 != -1)
  {
    sub_2122C();
  }

  v3 = qword_47918;

  return v3;
}

- (BKAudiobookPersistenceController)init
{
  v9.receiver = self;
  v9.super_class = BKAudiobookPersistenceController;
  v2 = [(BKAudiobookPersistenceController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AEAudiobooks.Persistence", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = +[BKAudiobookPlayer sharedInstance];
    [v6 addObserver:v2];

    stores = v2->_stores;
    v2->_stores = &__NSArray0__struct;
  }

  return v2;
}

- (void)addStore:(id)store
{
  storeCopy = store;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8820;
  block[3] = &unk_3C8D0;
  objc_copyWeak(&v9, &location);
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)bookmarkTimeForAudiobook:(id)audiobook localStoresOnly:(BOOL)only completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  if ([audiobookCopy isAudiobookPreview])
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, 0.0, 0.0);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    accessQueue = self->_accessQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_89E4;
    v13[3] = &unk_3CBD0;
    objc_copyWeak(&v17, &location);
    onlyCopy = only;
    v14 = audiobookCopy;
    selfCopy = self;
    v16 = completionCopy;
    dispatch_async(accessQueue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook importance:(int64_t)importance completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if ([audiobookCopy isAudiobookPreview])
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    accessQueue = self->_accessQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_9780;
    v15[3] = &unk_3CC70;
    objc_copyWeak(v18, &location);
    v18[1] = importance;
    v18[2] = *&time;
    v16 = audiobookCopy;
    v17 = completionCopy;
    dispatch_async(accessQueue, v15);

    objc_destroyWeak(v18);
  }

  objc_destroyWeak(&location);
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  playerCopy = player;
  if (from == 2 && (to - 3) <= 1)
  {
    v11 = playerCopy;
    currentAudiobook = [playerCopy currentAudiobook];
    [v11 positionInCurrentAudiobook];
    if (to == 4 && v10 == 0.0)
    {
      [(BKAudiobookPersistenceController *)self _upgradeLastPeriodicBookmarkTimeWithPlayer:v11 audiobook:currentAudiobook];
    }

    else if ([v11 isPositionValid])
    {
      [v11 positionInCurrentAudiobook];
      [(BKAudiobookPersistenceController *)self saveBookmarkTime:currentAudiobook audiobook:5 importance:0 completion:?];
    }

    playerCopy = v11;
  }
}

- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position
{
  playerCopy = player;
  currentAudiobook = [playerCopy currentAudiobook];
  state = [playerCopy state];
  if (state == &dword_0 + 3 || state == &dword_0 + 2 && (v11 = change, __ROR8__(0xEEEEEEEEEEEEEEEFLL * llroundf(v11) + 0x888888888888888, 2) <= 0x444444444444444uLL))
  {
    if (([playerCopy isScrubbing] & 1) == 0)
    {
      currentAudiobook2 = [playerCopy currentAudiobook];
      assetID = [currentAudiobook2 assetID];
      cachedAssetID = [(BKAudiobookPersistenceController *)self cachedAssetID];
      v15 = [assetID isEqualToString:cachedAssetID];

      if (v15)
      {
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:currentAudiobook audiobook:1 importance:0 completion:position];
      }
    }
  }
}

- (void)player:(id)player audiobookWillChange:(id)change
{
  playerCopy = player;
  changeCopy = change;
  if (changeCopy)
  {
    [playerCopy positionInCurrentAudiobook];
    if (v7 == 0.0)
    {
      [(BKAudiobookPersistenceController *)self _upgradeLastPeriodicBookmarkTimeWithPlayer:playerCopy audiobook:changeCopy];
    }

    else
    {
      v8 = v7;
      if ([playerCopy isPositionValid])
      {
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:changeCopy audiobook:5 importance:0 completion:v8];
      }
    }
  }
}

- (void)_upgradeLastPeriodicBookmarkTimeWithPlayer:(id)player audiobook:(id)audiobook
{
  playerCopy = player;
  audiobookCopy = audiobook;
  objc_initWeak(&location, self);
  currentAudiobook = [playerCopy currentAudiobook];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9FB0;
  v10[3] = &unk_3CC98;
  objc_copyWeak(&v12, &location);
  v9 = audiobookCopy;
  v11 = v9;
  [(BKAudiobookPersistenceController *)self bookmarkTimeForAudiobook:currentAudiobook completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v6 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      assetID = [changeCopy assetID];
      v9 = 138477827;
      v10 = assetID;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BKAsssetAudiobookPersistenceController changed cached assetID to %{private}@", &v9, 0xCu);
    }

    assetID2 = [changeCopy assetID];
    [(BKAudiobookPersistenceController *)self setCachedAssetID:assetID2];
  }
}

- (void)player:(id)player chapterDidChange:(id)change
{
  playerCopy = player;
  currentAudiobook = [playerCopy currentAudiobook];
  if ([playerCopy isPositionValid] && objc_msgSend(playerCopy, "state") != &dword_4)
  {
    [playerCopy positionInCurrentAudiobook];
    [(BKAudiobookPersistenceController *)self saveBookmarkTime:currentAudiobook audiobook:5 importance:0 completion:?];
  }
}

- (void)player:(id)player isScrubbing:(BOOL)scrubbing
{
  playerCopy = player;
  currentAudiobook = [playerCopy currentAudiobook];
  if (([playerCopy state] & 0xFFFFFFFFFFFFFFFELL) == 2 && !scrubbing)
  {
    if ([playerCopy isPositionValid])
    {
      currentAudiobook2 = [playerCopy currentAudiobook];
      assetID = [currentAudiobook2 assetID];
      cachedAssetID = [(BKAudiobookPersistenceController *)self cachedAssetID];
      v10 = [assetID isEqualToString:cachedAssetID];

      if (v10)
      {
        [playerCopy positionInCurrentAudiobook];
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:currentAudiobook audiobook:1 importance:0 completion:?];
      }
    }
  }
}

- (double)_rollbackAmountForLastPlayedDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = fabs(v3);
  result = 10.0;
  if (v4 <= 3600.0)
  {
    result = 8.0;
    if (v4 <= 1800.0)
    {
      result = 0.0;
      if (v4 > 600.0)
      {
        return 5.0;
      }
    }
  }

  return result;
}

@end