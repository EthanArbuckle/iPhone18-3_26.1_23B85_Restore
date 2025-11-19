@interface MTUpNextController
+ (id)_encodedUpNextClasses;
+ (id)_filePath;
+ (id)unarchivedIdentifiers;
- (BOOL)containsEpisodeUuid:(id)a3;
- (BOOL)isPlayingFromUpNext;
- (BOOL)moveEpisodeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (MTPlayerController)playerController;
- (MTUpNextController)initWithPlayerController:(id)a3;
- (NSArray)items;
- (id)_encodedUpNext;
- (unint64_t)_currentUpNextIndex;
- (unint64_t)count;
- (void)_reportUpNextChangeType:(id)a3 forPlayerItem:(id)a4 withData:(id)a5;
- (void)_reportUpNextChangeType:(id)a3 forPlayerItems:(id)a4 withData:(id)a5;
- (void)_restoreUpNext;
- (void)_upNextDidChange;
- (void)addEpisodeUuidToPlayNext:(id)a3;
- (void)addEpisodeUuidToUpNext:(id)a3;
- (void)addEpisodeUuidsToPlayNext:(id)a3;
- (void)addEpisodeUuidsToUpNext:(id)a3;
- (void)addPlayerItemToPlayNext:(id)a3;
- (void)addPlayerItemToUpNext:(id)a3;
- (void)addPlayerItemsToPlayNext:(id)a3;
- (void)addPlayerItemsToUpNext:(id)a3;
- (void)beginUpdates;
- (void)clear;
- (void)clearQueueItems;
- (void)endUpdates;
- (void)removeEpisodeAtIndex:(unint64_t)a3;
- (void)removeEpisodesForUuid:(id)a3;
@end

@implementation MTUpNextController

- (MTUpNextController)initWithPlayerController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTUpNextController;
  v5 = [(MTUpNextController *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("MTUpNextController.workQueue", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    v8 = [[MTCoalescableWorkController alloc] initWithWorkQueue:v5->_workQueue identifier:@"MTUpNextController.workQueue"];
    saveController = v5->_saveController;
    v5->_saveController = v8;

    objc_storeWeak(&v5->_playerController, v4);
    [(MTUpNextController *)v5 _restoreUpNext];
  }

  return v5;
}

- (void)addEpisodeUuidToUpNext:(id)a3
{
  v4 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:a3];
  [(MTUpNextController *)self addPlayerItemToUpNext:v4];
}

- (void)addEpisodeUuidsToUpNext:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v14 = self;
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:*(*(&v15 + 1) + 8 * i)];
          [v5 addObject:v11];
          v12 = _MTLogCategoryPlayback();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v11 title];
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Added episode to array to add to Up Next Queue: %@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    [(MTUpNextController *)v14 addPlayerItemsToUpNext:v5];
  }
}

- (void)addPlayerItemToUpNext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setEditingStyleFlags:3];
    v6 = [(MTUpNextController *)self playerItems];
    [v6 addObject:v5];

    [(MTUpNextController *)self _upNextDidChange];
    v7 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 title];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Added episode to Up Next Queue: %@", &v9, 0xCu);
    }

    [(MTUpNextController *)self _reportUpNextChangeType:@"add_to_up_next" forPlayerItem:v5 withData:0];
  }
}

- (void)addPlayerItemsToUpNext:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * v9) setEditingStyleFlags:3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = [(MTUpNextController *)self playerItems];
    [v10 addObjectsFromArray:v5];

    [(MTUpNextController *)self _upNextDidChange];
    v11 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Added array of episodes to Up Next Queue", v12, 2u);
    }

    [(MTUpNextController *)self _reportUpNextChangeType:@"add_multiple_to_up_next" forPlayerItems:v5 withData:0];
  }
}

- (void)addEpisodeUuidToPlayNext:(id)a3
{
  v4 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:a3];
  [(MTUpNextController *)self addPlayerItemToUpNext:v4];
}

- (void)addEpisodeUuidsToPlayNext:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v14 = self;
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:*(*(&v15 + 1) + 8 * i)];
          [v5 addObject:v11];
          v12 = _MTLogCategoryPlayback();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v11 title];
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Added episode to array to add to Up Next Queue: %@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    [(MTUpNextController *)v14 addPlayerItemsToPlayNext:v5];
  }
}

- (void)addPlayerItemToPlayNext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setEditingStyleFlags:3];
    if ([(MTUpNextController *)self isPlayingFromUpNext])
    {
      v6 = [(MTUpNextController *)self _currentUpNextIndex]+ 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(MTUpNextController *)self playerItems];
    [v7 insertObject:v5 atIndex:v6];

    [(MTUpNextController *)self _upNextDidChange];
    v8 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v5 title];
      *buf = 138412546;
      v15 = v9;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Added episode to Play Next \bQueue: %@ at index: %lu", buf, 0x16u);
    }

    v10 = [NSNumber numberWithUnsignedInteger:v6, @"index"];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(MTUpNextController *)self _reportUpNextChangeType:@"add_to_play_next" forPlayerItem:v5 withData:v11];
  }
}

- (void)addPlayerItemsToPlayNext:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v16 + 1) + 8 * v9) setEditingStyleFlags:{3, v16}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }

    if ([(MTUpNextController *)self isPlayingFromUpNext])
    {
      v10 = [(MTUpNextController *)self _currentUpNextIndex]+ 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v10, [v5 count]);
    v12 = [(MTUpNextController *)self playerItems];
    [v12 insertObjects:v5 atIndexes:v11];

    [(MTUpNextController *)self _upNextDidChange];
    v13 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Added array of episodes to Play Next Queue at index: %lu", buf, 0xCu);
    }

    v20 = @"starting_index";
    v14 = [NSNumber numberWithUnsignedInteger:v10];
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [(MTUpNextController *)self _reportUpNextChangeType:@"add_multiple_to_play_next" forPlayerItems:v5 withData:v15];
  }
}

- (BOOL)containsEpisodeUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTUpNextController *)self playerItems];
  v6 = [v5 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) episodeUuid];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)removeEpisodeAtIndex:(unint64_t)a3
{
  if ([(MTUpNextController *)self count]> a3)
  {
    v5 = [(MTUpNextController *)self playerItems];
    v6 = [v5 objectAtIndex:a3];

    v7 = [(MTUpNextController *)self playerItems];
    [v7 removeObjectAtIndex:a3];

    [(MTUpNextController *)self _upNextDidChange];
    v8 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v6 title];
      *buf = 138412546;
      v15 = v9;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Removed item from Up Next Controller items: %@ from index: %lu", buf, 0x16u);
    }

    v10 = [NSNumber numberWithUnsignedInteger:a3, @"index"];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(MTUpNextController *)self _reportUpNextChangeType:@"remove_index" forPlayerItem:v6 withData:v11];
  }
}

- (void)removeEpisodesForUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTUpNextController *)self playerItems];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1001195D8;
  v16 = &unk_1004DCE10;
  v17 = v4;
  v18 = self;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:&v13];

  if ([v7 firstIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MTUpNextController *)self playerItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "firstIndex")}];

    v10 = [(MTUpNextController *)self playerItems];
    [v10 removeObjectsAtIndexes:v7];

    [(MTUpNextController *)self _upNextDidChange];
    v11 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v9 title];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Removed item from Up Next Controller items: %@", buf, 0xCu);
    }

    [(MTUpNextController *)self _reportUpNextChangeType:@"remove_uuid" forPlayerItem:v9 withData:0];
  }
}

- (BOOL)moveEpisodeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  if ([(MTUpNextController *)self count]<= a3)
  {
    return 0;
  }

  v7 = [(MTUpNextController *)self count];
  result = 0;
  if (a3 != a4 && v7 > a4)
  {
    v9 = [(MTUpNextController *)self playerItems];
    v10 = [v9 objectAtIndex:a3];

    v11 = [(MTUpNextController *)self playerItems];
    [v11 removeObjectAtIndex:a3];

    v12 = [(MTUpNextController *)self playerItems];
    [v12 insertObject:v10 atIndex:a4];

    [(MTUpNextController *)self _upNextDidChange];
    v13 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v10 title];
      *buf = 138412802;
      v21 = v14;
      v22 = 2048;
      v23 = a3;
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Moved episode %@ in Up Next Controller items from index %lu to index %lu", buf, 0x20u);
    }

    v15 = [NSNumber numberWithUnsignedInteger:a3, @"from"];
    v18[1] = @"to";
    v19[0] = v15;
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    v19[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    [(MTUpNextController *)self _reportUpNextChangeType:@"move" forPlayerItem:v10 withData:v17];

    return 1;
  }

  return result;
}

- (void)clear
{
  [(MTUpNextController *)self _reportUpNextChangeType:@"clear" forPlayerItem:0 withData:0];
  if ([(MTUpNextController *)self count])
  {
    v3 = [(MTUpNextController *)self playerItems];
    [v3 removeAllObjects];

    [(MTUpNextController *)self _upNextDidChange];
  }

  v4 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Cleared all items from Up Next Controller items", v5, 2u);
  }
}

- (void)clearQueueItems
{
  [(MTUpNextController *)self _reportUpNextChangeType:@"clearQueueItems" forPlayerItem:0 withData:0];
  if ([(MTUpNextController *)self count])
  {
    v3 = [(MTUpNextController *)self isPlayingFromUpNext];
    v4 = [(MTUpNextController *)self playerItems];
    v5 = v4;
    if (v3)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100119A4C;
      v10[3] = &unk_1004DCE38;
      v10[4] = self;
      v6 = [v4 indexesOfObjectsPassingTest:v10];

      v7 = [(MTUpNextController *)self playerItems];
      [v7 removeObjectsAtIndexes:v6];
    }

    else
    {
      [v4 removeAllObjects];
    }

    [(MTUpNextController *)self _upNextDidChange];
  }

  v8 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Cleared all queued items from Up Next Controller items, leaving currently playing if applicable", v9, 2u);
  }
}

- (BOOL)isPlayingFromUpNext
{
  v2 = [(MTUpNextController *)self playerController];
  v3 = [v2 compositeManifest];
  v4 = [v2 upNextManifest];
  v5 = [v3 isPlayingFromManifest:v4];

  return v5;
}

- (void)beginUpdates
{
  v3 = [(MTUpNextController *)self updateCount]+ 1;

  [(MTUpNextController *)self setUpdateCount:v3];
}

- (void)endUpdates
{
  [(MTUpNextController *)self setUpdateCount:[(MTUpNextController *)self updateCount]- 1];
  if (![(MTUpNextController *)self updateCount])
  {

    [(MTUpNextController *)self _upNextDidChange];
  }
}

- (NSArray)items
{
  v2 = [(MTUpNextController *)self playerItems];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)count
{
  v2 = [(MTUpNextController *)self playerItems];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)_currentUpNextIndex
{
  v2 = [(MTUpNextController *)self playerController];
  v3 = [v2 upNextManifest];
  v4 = [v3 currentIndex];

  return v4;
}

- (void)_reportUpNextChangeType:(id)a3 forPlayerItem:(id)a4 withData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTUpNextController *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100119DC0;
  v15[3] = &unk_1004D8DA8;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_reportUpNextChangeType:(id)a3 forPlayerItems:(id)a4 withData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTUpNextController *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100119F98;
  v15[3] = &unk_1004D8DA8;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)_encodedUpNext
{
  v3 = +[NSMutableArray array];
  v4 = [(MTUpNextController *)self playerItems];
  v5 = [v4 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = +[MTPlaybackIdentifierUtil sharedInstance];
        v13 = [v12 requestIdentifierForPlayerItem:v11];

        [v3 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

+ (id)_encodedUpNextClasses
{
  if (qword_100583D20 != -1)
  {
    sub_1003B2CD8();
  }

  v3 = qword_100583D18;

  return v3;
}

- (void)_upNextDidChange
{
  if (![(MTUpNextController *)self updateCount])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"MTUpNextControllerItemsDidChange" object:self];

    v4 = [(MTUpNextController *)self saveController];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10011A3B8;
    v5[3] = &unk_1004D8358;
    v5[4] = self;
    [v4 schedule:v5];
  }
}

+ (id)unarchivedIdentifiers
{
  v2 = [objc_opt_class() _encodedUpNextClasses];
  v3 = [objc_opt_class() _filePath];
  v4 = [NSData dataWithContentsOfFile:v3];
  v10 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v2 fromData:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [v5 copy];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)_restoreUpNext
{
  v3 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Restoring Up Next", buf, 2u);
  }

  v4 = +[NSMutableArray array];
  [(MTUpNextController *)self setPlayerItems:v4];

  v5 = [objc_opt_class() unarchivedIdentifiers];
  v6 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Up Next Controller items after restore:", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  v7 = +[MTPlaybackIdentifierUtil sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011A6E4;
  v8[3] = &unk_1004DCE80;
  v8[4] = self;
  v8[5] = buf;
  [v7 fetchPlayerItemsForPlaybackQueueRequestIdentifiers:v5 completion:v8];

  v10[24] = 1;
  _Block_object_dispose(buf, 8);
}

+ (id)_filePath
{
  v2 = +[MTConstants sharedDocumentsDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"upnext_items.data"];

  v4 = [v3 path];

  return v4;
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end