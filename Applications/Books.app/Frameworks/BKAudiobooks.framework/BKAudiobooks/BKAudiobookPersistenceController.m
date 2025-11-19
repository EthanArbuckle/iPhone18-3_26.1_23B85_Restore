@interface BKAudiobookPersistenceController
+ (id)sharedInstance;
- (BKAudiobookPersistenceController)init;
- (NSArray)stores;
- (double)_rollbackAmountForLastPlayedDate:(id)a3;
- (void)_upgradeLastPeriodicBookmarkTimeWithPlayer:(id)a3 audiobook:(id)a4;
- (void)addStore:(id)a3;
- (void)bookmarkTimeForAudiobook:(id)a3 localStoresOnly:(BOOL)a4 completion:(id)a5;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)player:(id)a3 audiobookWillChange:(id)a4;
- (void)player:(id)a3 chapterDidChange:(id)a4;
- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6;
- (void)player:(id)a3 isScrubbing:(BOOL)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 importance:(int64_t)a5 completion:(id)a6;
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

- (void)addStore:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8820;
  block[3] = &unk_3C8D0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)bookmarkTimeForAudiobook:(id)a3 localStoresOnly:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 isAudiobookPreview])
  {
    v10 = objc_retainBlock(v9);
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
    v18 = a4;
    v14 = v8;
    v15 = self;
    v16 = v9;
    dispatch_async(accessQueue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)saveBookmarkTime:(double)a3 audiobook:(id)a4 importance:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  objc_initWeak(&location, self);
  if ([v10 isAudiobookPreview])
  {
    v12 = objc_retainBlock(v11);
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
    v18[1] = a5;
    v18[2] = *&a3;
    v16 = v10;
    v17 = v11;
    dispatch_async(accessQueue, v15);

    objc_destroyWeak(v18);
  }

  objc_destroyWeak(&location);
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v8 = a3;
  if (a4 == 2 && (a5 - 3) <= 1)
  {
    v11 = v8;
    v9 = [v8 currentAudiobook];
    [v11 positionInCurrentAudiobook];
    if (a5 == 4 && v10 == 0.0)
    {
      [(BKAudiobookPersistenceController *)self _upgradeLastPeriodicBookmarkTimeWithPlayer:v11 audiobook:v9];
    }

    else if ([v11 isPositionValid])
    {
      [v11 positionInCurrentAudiobook];
      [(BKAudiobookPersistenceController *)self saveBookmarkTime:v9 audiobook:5 importance:0 completion:?];
    }

    v8 = v11;
  }
}

- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6
{
  v16 = a3;
  v9 = [v16 currentAudiobook];
  v10 = [v16 state];
  if (v10 == &dword_0 + 3 || v10 == &dword_0 + 2 && (v11 = a4, __ROR8__(0xEEEEEEEEEEEEEEEFLL * llroundf(v11) + 0x888888888888888, 2) <= 0x444444444444444uLL))
  {
    if (([v16 isScrubbing] & 1) == 0)
    {
      v12 = [v16 currentAudiobook];
      v13 = [v12 assetID];
      v14 = [(BKAudiobookPersistenceController *)self cachedAssetID];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:v9 audiobook:1 importance:0 completion:a6];
      }
    }
  }
}

- (void)player:(id)a3 audiobookWillChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    [v9 positionInCurrentAudiobook];
    if (v7 == 0.0)
    {
      [(BKAudiobookPersistenceController *)self _upgradeLastPeriodicBookmarkTimeWithPlayer:v9 audiobook:v6];
    }

    else
    {
      v8 = v7;
      if ([v9 isPositionValid])
      {
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:v6 audiobook:5 importance:0 completion:v8];
      }
    }
  }
}

- (void)_upgradeLastPeriodicBookmarkTimeWithPlayer:(id)a3 audiobook:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 currentAudiobook];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9FB0;
  v10[3] = &unk_3CC98;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [(BKAudiobookPersistenceController *)self bookmarkTimeForAudiobook:v8 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = BKAudiobooksPersistenceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 assetID];
      v9 = 138477827;
      v10 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BKAsssetAudiobookPersistenceController changed cached assetID to %{private}@", &v9, 0xCu);
    }

    v8 = [v5 assetID];
    [(BKAudiobookPersistenceController *)self setCachedAssetID:v8];
  }
}

- (void)player:(id)a3 chapterDidChange:(id)a4
{
  v6 = a3;
  v5 = [v6 currentAudiobook];
  if ([v6 isPositionValid] && objc_msgSend(v6, "state") != &dword_4)
  {
    [v6 positionInCurrentAudiobook];
    [(BKAudiobookPersistenceController *)self saveBookmarkTime:v5 audiobook:5 importance:0 completion:?];
  }
}

- (void)player:(id)a3 isScrubbing:(BOOL)a4
{
  v11 = a3;
  v6 = [v11 currentAudiobook];
  if (([v11 state] & 0xFFFFFFFFFFFFFFFELL) == 2 && !a4)
  {
    if ([v11 isPositionValid])
    {
      v7 = [v11 currentAudiobook];
      v8 = [v7 assetID];
      v9 = [(BKAudiobookPersistenceController *)self cachedAssetID];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        [v11 positionInCurrentAudiobook];
        [(BKAudiobookPersistenceController *)self saveBookmarkTime:v6 audiobook:1 importance:0 completion:?];
      }
    }
  }
}

- (double)_rollbackAmountForLastPlayedDate:(id)a3
{
  [a3 timeIntervalSinceNow];
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