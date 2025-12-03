@interface CRLMoviePlaybackRegistry
+ (id)sharedMoviePlaybackRegistry;
- (CRLMoviePlaybackRegistry)init;
- (void)objectDidEndMoviePlayback:(id)playback;
- (void)objectWillBeginMoviePlayback:(id)playback;
@end

@implementation CRLMoviePlaybackRegistry

+ (id)sharedMoviePlaybackRegistry
{
  if (qword_101A34948 != -1)
  {
    sub_101340640();
  }

  v3 = qword_101A34940;

  return v3;
}

- (CRLMoviePlaybackRegistry)init
{
  v8.receiver = self;
  v8.super_class = CRLMoviePlaybackRegistry;
  v2 = [(CRLMoviePlaybackRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    playingObjectPointerSet = v2->_playingObjectPointerSet;
    v2->_playingObjectPointerSet = v3;

    savedAudioCategory = v2->_savedAudioCategory;
    v2->_savedAudioCategory = &stru_1018BCA28;

    savedAudioMode = v2->_savedAudioMode;
    v2->_savedAudioMode = &stru_1018BCA28;

    v2->_savedAudioCategoryOptions = 0;
  }

  return v2;
}

- (void)objectWillBeginMoviePlayback:(id)playback
{
  playbackCopy = playback;
  if (!playbackCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340654();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340668();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101340710();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectWillBeginMoviePlayback:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:58 isFatal:0 description:"invalid nil value for '%{public}s'", "object"];
  }

  if ([(NSMutableSet *)self->_playingObjectPointerSet containsObject:playbackCopy])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340738();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340760();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013407F0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectWillBeginMoviePlayback:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:59 isFatal:0 description:"The object shouldn't already be playing a movie when -objectWillBeginMoviePlayback is called."];
  }

  [(NSMutableSet *)self->_playingObjectPointerSet addObject:playbackCopy];
  if ([(NSMutableSet *)self->_playingObjectPointerSet count]== 1)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_101340818();
    }

    v11 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning AVAudioSession category AVAudioSessionCategoryPlayback", buf, 2u);
    }

    v12 = +[AVAudioSession sharedInstance];
    category = [v12 category];
    savedAudioCategory = self->_savedAudioCategory;
    self->_savedAudioCategory = category;

    mode = [v12 mode];
    savedAudioMode = self->_savedAudioMode;
    self->_savedAudioMode = mode;

    self->_savedAudioCategoryOptions = [v12 categoryOptions];
    v24 = 0;
    v17 = [v12 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v24];
    v18 = v24;
    if ((v17 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101340840();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101340868();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013408F8();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectWillBeginMoviePlayback:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:78 isFatal:0 description:"Unable to set audio session category before starting playback (%@)", v18];
    }
  }

  v26 = @"CRLMoviePlaybackRegistryPlaybackObjectStatusKey";
  v27 = playbackCopy;
  v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v23 = +[NSNotificationCenter defaultCenter];
  [v23 postNotificationName:@"CRLMoviePlaybackRegistryObjectWillBeginMoviePlaybackNotification" object:self userInfo:v22];
}

- (void)objectDidEndMoviePlayback:(id)playback
{
  playbackCopy = playback;
  if (!playbackCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340920();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340934();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013409DC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectDidEndMoviePlayback:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:88 isFatal:0 description:"invalid nil value for '%{public}s'", "object"];
  }

  if (([(NSMutableSet *)self->_playingObjectPointerSet containsObject:playbackCopy]& 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340A04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340A2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101340ABC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectDidEndMoviePlayback:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:89 isFatal:0 description:"The object should be playing a movie when -objectDidEndMoviePlayback is called."];
  }

  [(NSMutableSet *)self->_playingObjectPointerSet removeObject:playbackCopy];
  if (![(NSMutableSet *)self->_playingObjectPointerSet count])
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_101340AE4();
    }

    v11 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ending AVAudioSession category AVAudioSessionCategoryPlayback", buf, 2u);
    }

    if ([(NSString *)self->_savedAudioCategory isEqualToString:&stru_1018BCA28])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101340B0C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101340B34();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101340BC4();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectDidEndMoviePlayback:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:95 isFatal:0 description:"Should have a category to use to reset the audio session."];
    }

    if ([(NSString *)self->_savedAudioMode isEqualToString:&stru_1018BCA28])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101340BEC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101340C14();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101340CA4();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectDidEndMoviePlayback:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:96 isFatal:0 description:"Should have a mode to use to reset the audio session."];
    }

    v18 = +[AVAudioSession sharedInstance];
    savedAudioCategory = self->_savedAudioCategory;
    savedAudioMode = self->_savedAudioMode;
    savedAudioCategoryOptions = self->_savedAudioCategoryOptions;
    v29 = 0;
    v22 = [v18 setCategory:savedAudioCategory mode:savedAudioMode options:savedAudioCategoryOptions error:&v29];
    v23 = v29;

    if ((v22 & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101340CCC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101340CF4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101340D84();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      v25 = [NSString stringWithUTF8String:"[CRLMoviePlaybackRegistry objectDidEndMoviePlayback:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMoviePlaybackRegistry.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:100 isFatal:0 description:"Unable to set audio session category after ending playback (%@)", v23];
    }
  }

  v31 = @"CRLMoviePlaybackRegistryPlaybackObjectStatusKey";
  v32 = playbackCopy;
  v27 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v28 = +[NSNotificationCenter defaultCenter];
  [v28 postNotificationName:@"CRLMoviePlaybackRegistryObjectDidEndMoviePlaybackNotification" object:self userInfo:v27];
}

@end