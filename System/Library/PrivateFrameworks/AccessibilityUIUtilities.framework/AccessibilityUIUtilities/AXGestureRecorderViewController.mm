@interface AXGestureRecorderViewController
- (AXGestureRecorderViewControllerDelegate)delegate;
- (BOOL)isChromeVisibleForGestureRecorderView:(id)view;
- (BOOL)isEmpty;
- (double)_maximumDurationOfRecordedGesture;
- (id)gestureRecorderView:(id)view dynamicFingerPathAtIndex:(unint64_t)index;
- (id)recordedGesturePropertyListRepresentationWithName:(id)name;
- (id)recordedReplayableGestureRepresentation;
- (unint64_t)numberOfDynamicFingerPathsInGestureRecorderView:(id)view;
- (void)_advanceInstantReplayForStaticFingerAtIndex:(id)index;
- (void)_advanceReplay;
- (void)_clearWeakReferencesWithOutlets;
- (void)_didFinishReplayingRecordedGesture;
- (void)_didStartRecordingAtomicFingerPathAtPoint:(CGPoint)point;
- (void)_didStopRecordingAtomicFingerPath;
- (void)_endInstantReplay;
- (void)_endInstantReplayForStaticFingerAtIndex:(unint64_t)index;
- (void)_exitReplayMode;
- (void)_freezeAllDynamicFingerPaths;
- (void)_startInstantReplayForStaticFingerAtIndex:(unint64_t)index;
- (void)_updateDynamicFingerPathsWithTouches:(id)touches touchesDidEnd:(BOOL)end;
- (void)dealloc;
- (void)deleteAllFingerPaths;
- (void)gestureRecorderFingerPathCollection:(id)collection didInsertFingerPathAtIndex:(unint64_t)index;
- (void)gestureRecorderFingerPathCollection:(id)collection didUpdateFingerPathAtIndex:(unint64_t)index;
- (void)gestureRecorderView:(id)view setChromeVisible:(BOOL)visible;
- (void)hideStaticView;
- (void)loadView;
- (void)reloadAllFingerPaths;
- (void)replayRecordedGesture;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AXGestureRecorderViewController

- (void)dealloc
{
  [(AXGestureRecorderViewController *)self _releaseOutlets];
  v3.receiver = self;
  v3.super_class = AXGestureRecorderViewController;
  [(AXGestureRecorderViewController *)&v3 dealloc];
}

- (BOOL)isEmpty
{
  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  fingerPathsCount = [fingerPathCollection fingerPathsCount];
  dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  LOBYTE(fingerPathsCount) = fingerPathsCount + [dynamicFingerPathCollection fingerPathsCount] == 0;

  return fingerPathsCount;
}

- (void)loadView
{
  v3 = [AXGestureRecorderView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v6 = [(AXGestureRecorderView *)v3 initWithFrame:?];

  [(AXGestureRecorderView *)v6 setAutoresizingMask:18];
  styleProvider = [(AXGestureRecorderViewController *)self styleProvider];
  [(AXGestureRecorderView *)v6 setStyleProvider:styleProvider];

  [(AXGestureRecorderView *)v6 setDataSource:self];
  [(AXGestureRecorderViewController *)self setView:v6];
}

- (void)hideStaticView
{
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView hideStaticView];
}

- (id)recordedGesturePropertyListRepresentationWithName:(id)name
{
  nameCopy = name;
  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v6 = [fingerPathCollection propertyListRepresentationWithName:nameCopy];

  return v6;
}

- (id)recordedReplayableGestureRepresentation
{
  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  replayableGestureRepresentation = [fingerPathCollection replayableGestureRepresentation];

  return replayableGestureRepresentation;
}

- (void)deleteAllFingerPaths
{
  [(AXGestureRecorderViewController *)self setFingerPathCollection:0];
  [(AXGestureRecorderViewController *)self setDynamicFingerPathCollection:0];
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView deleteAllFingerPaths];

  [(AXGestureRecorderViewController *)self setShouldPreventFurtherRecording:0];
  [(AXGestureRecorderViewController *)self setTrackingTouches:0];

  [(AXGestureRecorderViewController *)self _endInstantReplay];
}

- (void)replayRecordedGesture
{
  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  timestampsCount = [fingerPathCollection timestampsCount];

  if (timestampsCount && (-[AXGestureRecorderViewController fingerPathCollection](self, "fingerPathCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fingerPathsCount], v5, v6))
  {
    [(AXGestureRecorderViewController *)self _endInstantReplay];
    [(AXGestureRecorderViewController *)self setInReplayMode:1];
    [(AXGestureRecorderViewController *)self setReplayTimestampIndex:0];
    [(AXGestureRecorderViewController *)self setReplayTimestampsCount:timestampsCount];

    [(AXGestureRecorderViewController *)self _advanceReplay];
  }

  else
  {

    [(AXGestureRecorderViewController *)self _exitReplayMode];
  }
}

- (void)reloadAllFingerPaths
{
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  v4 = [(AXGestureRecorderViewController *)self numberOfDynamicFingerPathsInGestureRecorderView:gestureRecorderView];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      gestureRecorderView2 = [(AXGestureRecorderViewController *)self gestureRecorderView];
      [gestureRecorderView2 reloadDynamicFingerPathAtIndex:i];
    }
  }
}

- (void)_advanceReplay
{
  replayTimestampIndex = [(AXGestureRecorderViewController *)self replayTimestampIndex];
  if (replayTimestampIndex >= [(AXGestureRecorderViewController *)self replayTimestampsCount])
  {
    _AXAssert();
  }

  if (replayTimestampIndex < [(AXGestureRecorderViewController *)self replayTimestampsCount])
  {
    gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [gestureRecorderView setReplayMode:1];
    if (!replayTimestampIndex)
    {
      [gestureRecorderView deleteAllFingerPaths];
    }

    replayDynamicFingerPaths = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    v6 = [replayDynamicFingerPaths count];
    fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
    fingerPathsCount = [fingerPathCollection fingerPathsCount];
    if (fingerPathsCount)
    {
      v9 = fingerPathsCount;
      for (i = 0; i != v9; ++i)
      {
        if (!replayDynamicFingerPaths)
        {
          replayDynamicFingerPaths = objc_opt_new();
          [(AXGestureRecorderViewController *)self setReplayDynamicFingerPaths:replayDynamicFingerPaths];
        }

        v11 = [fingerPathCollection fingerPathToAppendForIndex:i forTimestampAtIndex:replayTimestampIndex];
        if (v11)
        {
          if (i >= v6)
          {
            [replayDynamicFingerPaths addObject:v11];
            [gestureRecorderView insertDynamicFingerPathAtIndex:v6++];
          }

          else
          {
            v12 = [replayDynamicFingerPaths objectAtIndexedSubscript:i];
            [v12 appendPath:v11];
            [gestureRecorderView reloadDynamicFingerPathAtIndex:i];
          }
        }
      }
    }

    [(AXGestureRecorderViewController *)self setReplayTimestampIndex:replayTimestampIndex + 1];
    if (replayTimestampIndex + 1 >= [(AXGestureRecorderViewController *)self replayTimestampsCount])
    {
      [(AXGestureRecorderViewController *)self _exitReplayMode];
    }

    else
    {
      [fingerPathCollection timestampAtIndex:replayTimestampIndex + 1];
      v14 = v13;
      [fingerPathCollection timestampAtIndex:replayTimestampIndex];
      [(AXGestureRecorderViewController *)self performSelector:v16 withObject:0 afterDelay:v14 - v15];
    }
  }
}

- (void)_exitReplayMode
{
  [(AXGestureRecorderViewController *)self setInReplayMode:0];
  [(AXGestureRecorderViewController *)self setReplayTimestampIndex:0];
  [(AXGestureRecorderViewController *)self setReplayTimestampsCount:0];
  [(AXGestureRecorderViewController *)self setReplayDynamicFingerPaths:0];
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView freezeAllDynamicFingerPaths];

  [(AXGestureRecorderViewController *)self _didFinishReplayingRecordedGesture];
  gestureRecorderView2 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView2 setReplayMode:0];
}

- (void)_advanceInstantReplayForStaticFingerAtIndex:(id)index
{
  indexCopy = index;
  instantReplayTimestampIndexes = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];

  if (!instantReplayTimestampIndexes)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AXGestureRecorderViewController *)self setInstantReplayTimestampIndexes:dictionary];
  }

  instantReplayPartialFingerPaths = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];

  if (!instantReplayPartialFingerPaths)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(AXGestureRecorderViewController *)self setInstantReplayPartialFingerPaths:dictionary2];
  }

  instantReplayTimestampIndexes2 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v9 = [instantReplayTimestampIndexes2 objectForKeyedSubscript:indexCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  timestampsCount = [fingerPathCollection timestampsCount];

  unsignedIntegerValue2 = [indexCopy unsignedIntegerValue];
  if (unsignedIntegerValue >= timestampsCount)
  {
    fingerPathCollection2 = [(AXGestureRecorderViewController *)self fingerPathCollection];
    timestampsCount2 = [fingerPathCollection2 timestampsCount];

    if (unsignedIntegerValue != timestampsCount2)
    {
      _AXAssert();
    }

    [(AXGestureRecorderViewController *)self _endInstantReplayForStaticFingerAtIndex:unsignedIntegerValue2];
  }

  else
  {
    if (unsignedIntegerValue)
    {
      fingerPathCollection3 = [(AXGestureRecorderViewController *)self fingerPathCollection];
      v15 = [fingerPathCollection3 fingerPathToAppendForIndex:unsignedIntegerValue2 forTimestampAtIndex:unsignedIntegerValue];

      ++unsignedIntegerValue;
    }

    else
    {
      v15 = 0;
      while (unsignedIntegerValue < timestampsCount)
      {
        while (1)
        {
          fingerPathCollection4 = [(AXGestureRecorderViewController *)self fingerPathCollection];
          v23 = [fingerPathCollection4 fingerPathToAppendForIndex:unsignedIntegerValue2 forTimestampAtIndex:unsignedIntegerValue];

          ++unsignedIntegerValue;
          v15 = v23;
          if (!v23)
          {
            break;
          }

          if (![v23 isEmpty] || unsignedIntegerValue >= timestampsCount)
          {
            goto LABEL_8;
          }
        }
      }

      v15 = 0;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
    instantReplayTimestampIndexes3 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
    [instantReplayTimestampIndexes3 setObject:v16 forKeyedSubscript:indexCopy];

    if (v15)
    {
      instantReplayPartialFingerPaths2 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
      v19 = [instantReplayPartialFingerPaths2 objectForKeyedSubscript:indexCopy];

      if (v19)
      {
        [v19 appendBezierPath:v15];
      }

      else
      {
        v19 = v15;
      }

      instantReplayPartialFingerPaths3 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
      [instantReplayPartialFingerPaths3 setObject:v19 forKeyedSubscript:indexCopy];

      gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
      [gestureRecorderView updateInstantReplayAtIndex:unsignedIntegerValue2 withPartialPath:v19];

      if (unsignedIntegerValue >= timestampsCount)
      {
        v31 = 0.3;
      }

      else
      {
        fingerPathCollection5 = [(AXGestureRecorderViewController *)self fingerPathCollection];
        [fingerPathCollection5 timestampAtIndex:unsignedIntegerValue];
        v28 = v27;
        fingerPathCollection6 = [(AXGestureRecorderViewController *)self fingerPathCollection];
        [fingerPathCollection6 timestampAtIndex:unsignedIntegerValue - 1];
        v31 = v28 - v30;
      }

      [(AXGestureRecorderViewController *)self performSelector:sel__advanceInstantReplayForStaticFingerAtIndex_ withObject:indexCopy afterDelay:v31];
    }

    else
    {
      [(AXGestureRecorderViewController *)self _endInstantReplayForStaticFingerAtIndex:unsignedIntegerValue2];
    }
  }
}

- (void)_startInstantReplayForStaticFingerAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(AXGestureRecorderViewController *)self _advanceInstantReplayForStaticFingerAtIndex:v4];
}

- (void)_endInstantReplayForStaticFingerAtIndex:(unint64_t)index
{
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView finishInstantReplayAtIndex:index];

  instantReplayTimestampIndexes = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [instantReplayTimestampIndexes removeObjectForKey:v7];

  instantReplayPartialFingerPaths = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [instantReplayPartialFingerPaths removeObjectForKey:v8];
}

- (void)_endInstantReplay
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  instantReplayTimestampIndexes = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v4 = [instantReplayTimestampIndexes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(instantReplayTimestampIndexes);
        }

        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__advanceInstantReplayForStaticFingerAtIndex_ object:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [instantReplayTimestampIndexes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView clearInstantReplayFingerPaths];

  [(AXGestureRecorderViewController *)self setInstantReplayTimestampIndexes:0];
  [(AXGestureRecorderViewController *)self setInstantReplayPartialFingerPaths:0];
}

- (void)_clearWeakReferencesWithOutlets
{
  if ([(AXGestureRecorderViewController *)self isViewLoaded])
  {
    gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [gestureRecorderView setDataSource:0];
  }
}

- (double)_maximumDurationOfRecordedGesture
{
  delegate = [(AXGestureRecorderViewController *)self delegate];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate maximumDurationOfRecordedGestureForGestureRecorderViewController:self];
    v4 = v5;
  }

  return v4;
}

- (void)_didStartRecordingAtomicFingerPathAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate gestureRecorderViewController:self didStartRecordingAtomicFingerPathAtPoint:{x, y}];
  }
}

- (void)_didStopRecordingAtomicFingerPath
{
  delegate = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:self];
  }
}

- (void)_didFinishReplayingRecordedGesture
{
  delegate = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate gestureRecorderViewControllerDidFinishReplayingRecordedGesture:self];
  }
}

- (void)_updateDynamicFingerPathsWithTouches:(id)touches touchesDidEnd:(BOOL)end
{
  endCopy = end;
  touchesCopy = touches;
  dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  if (!dynamicFingerPathCollection)
  {
    dynamicFingerPathCollection = [[AXGestureRecorderFingerPathCollection alloc] initWithMaximumFingerPathsCount:10];
    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection setShouldRecordRealTimeGesture:([(AXGestureRecorderViewController *)self recorderType]& 0xFFFFFFFFFFFFFFFDLL) == 1];
    styleProvider = [(AXGestureRecorderViewController *)self styleProvider];
    [styleProvider minimumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection setMinimumFingerLineWidth:?];

    styleProvider2 = [(AXGestureRecorderViewController *)self styleProvider];
    [styleProvider2 maximumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection setMaximumFingerLineWidth:?];

    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection setDelegate:self];
    [(AXGestureRecorderViewController *)self setDynamicFingerPathCollection:dynamicFingerPathCollection];
  }

  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  Current = CFAbsoluteTimeGetCurrent();
  if (endCopy)
  {
    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection handleLiftForTouches:touchesCopy referenceView:gestureRecorderView time:Current];
  }

  else
  {
    [(AXGestureRecorderFingerPathCollection *)dynamicFingerPathCollection appendPointsForTouches:touchesCopy referenceView:gestureRecorderView time:Current];
  }

  [(AXGestureRecorderViewController *)self reloadAllFingerPaths];
}

- (void)_freezeAllDynamicFingerPaths
{
  fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
  if (!fingerPathCollection)
  {
    fingerPathCollection = [[AXGestureRecorderFingerPathCollection alloc] initWithMaximumFingerPathsCount:10];
    [(AXGestureRecorderFingerPathCollection *)fingerPathCollection setShouldRecordRealTimeGesture:([(AXGestureRecorderViewController *)self recorderType]& 0xFFFFFFFFFFFFFFFDLL) == 1];
    styleProvider = [(AXGestureRecorderViewController *)self styleProvider];
    [styleProvider minimumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)fingerPathCollection setMinimumFingerLineWidth:?];

    styleProvider2 = [(AXGestureRecorderViewController *)self styleProvider];
    [styleProvider2 maximumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)fingerPathCollection setMaximumFingerLineWidth:?];

    [(AXGestureRecorderFingerPathCollection *)fingerPathCollection setDelegate:self];
    [(AXGestureRecorderViewController *)self setFingerPathCollection:fingerPathCollection];
  }

  fingerPathCollection2 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  fingerPathsCount = [fingerPathCollection2 fingerPathsCount];

  dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  [(AXGestureRecorderFingerPathCollection *)fingerPathCollection appendFingerPathsFromFingerPathCollection:dynamicFingerPathCollection];
  gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [gestureRecorderView freezeAllDynamicFingerPathsWithInstantReplayOffset:fingerPathsCount];

  [dynamicFingerPathCollection reset];
  [(AXGestureRecorderViewController *)self setTrackingTouches:0];
  if (![(AXGestureRecorderViewController *)self isInReplayMode])
  {
    while (fingerPathsCount < [(AXGestureRecorderFingerPathCollection *)fingerPathCollection fingerPathsCount])
    {
      [(AXGestureRecorderViewController *)self _startInstantReplayForStaticFingerAtIndex:fingerPathsCount++];
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording])
  {
    dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    fingerPathsCount = [dynamicFingerPathCollection fingerPathsCount];
    fingerPathCollection = [(AXGestureRecorderViewController *)self fingerPathCollection];
    v8 = [fingerPathCollection fingerPathsCount] + fingerPathsCount;

    if (v8 <= 9)
    {
      if (![(AXGestureRecorderViewController *)self isTrackingTouches])
      {
        if (![(AXGestureRecorderViewController *)self isInReplayMode])
        {
          if (![beganCopy count])
          {
            _AXAssert();
          }

          anyObject = [beganCopy anyObject];
          if ([(AXGestureRecorderViewController *)self recorderType]== 2 && anyObject)
          {
            v10 = [MEMORY[0x1E695DFD8] setWithObject:anyObject];

            beganCopy = v10;
          }

          gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
          [anyObject locationInView:gestureRecorderView];
          [(AXGestureRecorderViewController *)self _didStartRecordingAtomicFingerPathAtPoint:?];
        }

        [(AXGestureRecorderViewController *)self setTrackingTouches:1];
        [(AXGestureRecorderViewController *)self setTrackingTouchesDidStartTimeInterval:CFAbsoluteTimeGetCurrent()];
      }

      [AXGestureRecorderViewController _updateDynamicFingerPathsWithTouches:"_updateDynamicFingerPathsWithTouches:touchesDidEnd:" touchesDidEnd:?];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording]&& [(AXGestureRecorderViewController *)self isTrackingTouches])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXGestureRecorderViewController *)self trackingTouchesDidStartTimeInterval];
    v7 = Current - v6;
    [(AXGestureRecorderViewController *)self _maximumDurationOfRecordedGesture];
    if (v7 <= v8)
    {
      [(AXGestureRecorderViewController *)self _updateDynamicFingerPathsWithTouches:movedCopy touchesDidEnd:0];
    }

    else
    {
      [(AXGestureRecorderViewController *)self _freezeAllDynamicFingerPaths];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording]&& [(AXGestureRecorderViewController *)self isTrackingTouches])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXGestureRecorderViewController *)self trackingTouchesDidStartTimeInterval];
    v9 = Current - v8;
    [(AXGestureRecorderViewController *)self _maximumDurationOfRecordedGesture];
    if (v9 <= v10)
    {
      [(AXGestureRecorderViewController *)self _updateDynamicFingerPathsWithTouches:endedCopy touchesDidEnd:1];
    }

    v11 = [endedCopy count];
    view = [(AXGestureRecorderViewController *)self view];
    v13 = [eventCopy touchesForView:view];
    v14 = [v13 count];

    if (v11 == v14)
    {
      [(AXGestureRecorderViewController *)self _freezeAllDynamicFingerPaths];
      if (![(AXGestureRecorderViewController *)self isInReplayMode])
      {
        [(AXGestureRecorderViewController *)self _didStopRecordingAtomicFingerPath];
      }
    }
  }
}

- (unint64_t)numberOfDynamicFingerPathsInGestureRecorderView:(id)view
{
  if ([(AXGestureRecorderViewController *)self isInReplayMode])
  {
    replayDynamicFingerPaths = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    fingerPathsCount = [replayDynamicFingerPaths count];
  }

  else
  {
    replayDynamicFingerPaths = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    fingerPathsCount = [replayDynamicFingerPaths fingerPathsCount];
  }

  v6 = fingerPathsCount;

  return v6;
}

- (id)gestureRecorderView:(id)view dynamicFingerPathAtIndex:(unint64_t)index
{
  if ([(AXGestureRecorderViewController *)self isInReplayMode])
  {
    replayDynamicFingerPaths = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    [replayDynamicFingerPaths objectAtIndex:index];
  }

  else
  {
    replayDynamicFingerPaths = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    [replayDynamicFingerPaths fingerPathAtIndex:index];
  }
  v7 = ;

  return v7;
}

- (BOOL)isChromeVisibleForGestureRecorderView:(id)view
{
  selfCopy = self;
  delegate = [(AXGestureRecorderViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate isChromeVisibleForGestureRecorderViewController:selfCopy];

  return selfCopy;
}

- (void)gestureRecorderView:(id)view setChromeVisible:(BOOL)visible
{
  visibleCopy = visible;
  delegate = [(AXGestureRecorderViewController *)self delegate];
  [delegate gestureRecorderViewController:self setChromeVisible:visibleCopy];
}

- (void)gestureRecorderFingerPathCollection:(id)collection didInsertFingerPathAtIndex:(unint64_t)index
{
  collectionCopy = collection;
  dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];

  if (dynamicFingerPathCollection == collectionCopy)
  {
    gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [gestureRecorderView insertDynamicFingerPathAtIndex:index];
  }
}

- (void)gestureRecorderFingerPathCollection:(id)collection didUpdateFingerPathAtIndex:(unint64_t)index
{
  collectionCopy = collection;
  dynamicFingerPathCollection = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];

  if (dynamicFingerPathCollection == collectionCopy)
  {
    gestureRecorderView = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [gestureRecorderView reloadDynamicFingerPathAtIndex:index];
  }
}

- (AXGestureRecorderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end