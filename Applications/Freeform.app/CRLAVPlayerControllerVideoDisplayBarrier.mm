@interface CRLAVPlayerControllerVideoDisplayBarrier
- (BOOL)p_allVideoFramesDisplayedAtHostTime:(id *)time;
- (CRLAVPlayerControllerVideoDisplayBarrier)initWithPlayer:(id)player;
- (void)dealloc;
- (void)p_outputForDisplayLink:(id)link;
- (void)setLastItemTime:(id *)time;
- (void)waitUntilAllVideoFramesAreDisplayed;
@end

@implementation CRLAVPlayerControllerVideoDisplayBarrier

- (CRLAVPlayerControllerVideoDisplayBarrier)initWithPlayer:(id)player
{
  playerCopy = player;
  if (!playerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136985C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369870();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136990C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLAVPlayerControllerVideoDisplayBarrier initWithPlayer:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1669 isFatal:0 description:"invalid nil value for '%{public}s'", "player"];
  }

  v12.receiver = self;
  v12.super_class = CRLAVPlayerControllerVideoDisplayBarrier;
  v9 = [(CRLAVPlayerControllerVideoDisplayBarrier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_player, player);
  }

  return v10;
}

- (void)dealloc
{
  timebase = self->_timebase;
  if (timebase)
  {
    CFRelease(timebase);
  }

  v4.receiver = self;
  v4.super_class = CRLAVPlayerControllerVideoDisplayBarrier;
  [(CRLAVPlayerControllerVideoDisplayBarrier *)&v4 dealloc];
}

- (void)waitUntilAllVideoFramesAreDisplayed
{
  [(AVPlayer *)self->_player rate];
  if (v3 != 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101369934();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369948();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013699D8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLAVPlayerControllerVideoDisplayBarrier waitUntilAllVideoFramesAreDisplayed]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1693 isFatal:0 description:"The player must be stopped in order to wait for all video frames to be output."];
  }

  [(AVPlayer *)self->_player rate];
  if (v7 == 0.0)
  {
    currentItem = [(AVPlayer *)self->_player currentItem];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    tracks = [currentItem tracks];
    v10 = [tracks countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(tracks);
          }

          assetTrack = [*(*(&v27 + 1) + 8 * i) assetTrack];
          v15 = [assetTrack hasMediaCharacteristic:AVMediaCharacteristicVisual];

          if (v15)
          {
            v16 = 1;
            goto LABEL_22;
          }
        }

        v11 = [tracks countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_22:

    timebase = [currentItem timebase];
    if (v16)
    {
      if (timebase)
      {
        [(CRLAVPlayerControllerVideoDisplayBarrier *)self setTimebase:timebase];
        v18 = dispatch_semaphore_create(0);
        v19 = [CADisplayLink displayLinkWithTarget:self selector:"p_outputForDisplayLink:"];
        v20 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003E7E2C;
        block[3] = &unk_10183AE00;
        v24 = v19;
        selfCopy = self;
        v21 = v18;
        v26 = v21;
        v22 = v19;
        dispatch_async(v20, block);

        dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
        [(CRLAVPlayerControllerVideoDisplayBarrier *)self setTimebase:0];
      }
    }
  }
}

- (BOOL)p_allVideoFramesDisplayedAtHostTime:(id *)time
{
  v15 = kCMTimeInvalid;
  timebase = [(CRLAVPlayerControllerVideoDisplayBarrier *)self timebase];
  if (timebase)
  {
    v6 = timebase;
    HostTimeClock = CMClockGetHostTimeClock();
    time = *time;
    CMSyncConvertTime(&v15, &time, HostTimeClock, v6);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101369B30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369B44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101369BD4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLAVPlayerControllerVideoDisplayBarrier p_allVideoFramesDisplayedAtHostTime:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1798 isFatal:0 description:"Unable to determine item time because the item's timebase is NULL."];
  }

  [(CRLAVPlayerControllerVideoDisplayBarrier *)self lastItemTime];
  v13 = v15;
  v11 = CMTimeCompare(&v13, &time) == 0;
  time = v15;
  [(CRLAVPlayerControllerVideoDisplayBarrier *)self setLastItemTime:&time];
  return v11;
}

- (void)p_outputForDisplayLink:(id)link
{
  linkCopy = link;
  memset(&v7, 0, sizeof(v7));
  [linkCopy timestamp];
  CMTimeMakeWithSeconds(&v7, v5, 1000000000);
  v6 = v7;
  if ([(CRLAVPlayerControllerVideoDisplayBarrier *)self p_allVideoFramesDisplayedAtHostTime:&v6])
  {
    [(CRLAVPlayerControllerVideoDisplayBarrier *)self setAllVideoFramesDisplayed:1];
    [linkCopy invalidate];
  }
}

- (void)setLastItemTime:(id *)time
{
  v3 = *&time->var0;
  self->_lastItemTime.epoch = time->var3;
  *&self->_lastItemTime.value = v3;
}

@end