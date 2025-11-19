@interface AXGestureRecorderViewController
- (AXGestureRecorderViewControllerDelegate)delegate;
- (BOOL)isChromeVisibleForGestureRecorderView:(id)a3;
- (BOOL)isEmpty;
- (double)_maximumDurationOfRecordedGesture;
- (id)gestureRecorderView:(id)a3 dynamicFingerPathAtIndex:(unint64_t)a4;
- (id)recordedGesturePropertyListRepresentationWithName:(id)a3;
- (id)recordedReplayableGestureRepresentation;
- (unint64_t)numberOfDynamicFingerPathsInGestureRecorderView:(id)a3;
- (void)_advanceInstantReplayForStaticFingerAtIndex:(id)a3;
- (void)_advanceReplay;
- (void)_clearWeakReferencesWithOutlets;
- (void)_didFinishReplayingRecordedGesture;
- (void)_didStartRecordingAtomicFingerPathAtPoint:(CGPoint)a3;
- (void)_didStopRecordingAtomicFingerPath;
- (void)_endInstantReplay;
- (void)_endInstantReplayForStaticFingerAtIndex:(unint64_t)a3;
- (void)_exitReplayMode;
- (void)_freezeAllDynamicFingerPaths;
- (void)_startInstantReplayForStaticFingerAtIndex:(unint64_t)a3;
- (void)_updateDynamicFingerPathsWithTouches:(id)a3 touchesDidEnd:(BOOL)a4;
- (void)dealloc;
- (void)deleteAllFingerPaths;
- (void)gestureRecorderFingerPathCollection:(id)a3 didInsertFingerPathAtIndex:(unint64_t)a4;
- (void)gestureRecorderFingerPathCollection:(id)a3 didUpdateFingerPathAtIndex:(unint64_t)a4;
- (void)gestureRecorderView:(id)a3 setChromeVisible:(BOOL)a4;
- (void)hideStaticView;
- (void)loadView;
- (void)reloadAllFingerPaths;
- (void)replayRecordedGesture;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v3 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v4 = [v3 fingerPathsCount];
  v5 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  LOBYTE(v4) = v4 + [v5 fingerPathsCount] == 0;

  return v4;
}

- (void)loadView
{
  v3 = [AXGestureRecorderView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v6 = [(AXGestureRecorderView *)v3 initWithFrame:?];

  [(AXGestureRecorderView *)v6 setAutoresizingMask:18];
  v5 = [(AXGestureRecorderViewController *)self styleProvider];
  [(AXGestureRecorderView *)v6 setStyleProvider:v5];

  [(AXGestureRecorderView *)v6 setDataSource:self];
  [(AXGestureRecorderViewController *)self setView:v6];
}

- (void)hideStaticView
{
  v2 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v2 hideStaticView];
}

- (id)recordedGesturePropertyListRepresentationWithName:(id)a3
{
  v4 = a3;
  v5 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v6 = [v5 propertyListRepresentationWithName:v4];

  return v6;
}

- (id)recordedReplayableGestureRepresentation
{
  v2 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v3 = [v2 replayableGestureRepresentation];

  return v3;
}

- (void)deleteAllFingerPaths
{
  [(AXGestureRecorderViewController *)self setFingerPathCollection:0];
  [(AXGestureRecorderViewController *)self setDynamicFingerPathCollection:0];
  v3 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v3 deleteAllFingerPaths];

  [(AXGestureRecorderViewController *)self setShouldPreventFurtherRecording:0];
  [(AXGestureRecorderViewController *)self setTrackingTouches:0];

  [(AXGestureRecorderViewController *)self _endInstantReplay];
}

- (void)replayRecordedGesture
{
  v3 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v4 = [v3 timestampsCount];

  if (v4 && (-[AXGestureRecorderViewController fingerPathCollection](self, "fingerPathCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fingerPathsCount], v5, v6))
  {
    [(AXGestureRecorderViewController *)self _endInstantReplay];
    [(AXGestureRecorderViewController *)self setInReplayMode:1];
    [(AXGestureRecorderViewController *)self setReplayTimestampIndex:0];
    [(AXGestureRecorderViewController *)self setReplayTimestampsCount:v4];

    [(AXGestureRecorderViewController *)self _advanceReplay];
  }

  else
  {

    [(AXGestureRecorderViewController *)self _exitReplayMode];
  }
}

- (void)reloadAllFingerPaths
{
  v3 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  v4 = [(AXGestureRecorderViewController *)self numberOfDynamicFingerPathsInGestureRecorderView:v3];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [(AXGestureRecorderViewController *)self gestureRecorderView];
      [v6 reloadDynamicFingerPathAtIndex:i];
    }
  }
}

- (void)_advanceReplay
{
  v4 = [(AXGestureRecorderViewController *)self replayTimestampIndex];
  if (v4 >= [(AXGestureRecorderViewController *)self replayTimestampsCount])
  {
    _AXAssert();
  }

  if (v4 < [(AXGestureRecorderViewController *)self replayTimestampsCount])
  {
    v17 = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [v17 setReplayMode:1];
    if (!v4)
    {
      [v17 deleteAllFingerPaths];
    }

    v5 = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    v6 = [v5 count];
    v7 = [(AXGestureRecorderViewController *)self fingerPathCollection];
    v8 = [v7 fingerPathsCount];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        if (!v5)
        {
          v5 = objc_opt_new();
          [(AXGestureRecorderViewController *)self setReplayDynamicFingerPaths:v5];
        }

        v11 = [v7 fingerPathToAppendForIndex:i forTimestampAtIndex:v4];
        if (v11)
        {
          if (i >= v6)
          {
            [v5 addObject:v11];
            [v17 insertDynamicFingerPathAtIndex:v6++];
          }

          else
          {
            v12 = [v5 objectAtIndexedSubscript:i];
            [v12 appendPath:v11];
            [v17 reloadDynamicFingerPathAtIndex:i];
          }
        }
      }
    }

    [(AXGestureRecorderViewController *)self setReplayTimestampIndex:v4 + 1];
    if (v4 + 1 >= [(AXGestureRecorderViewController *)self replayTimestampsCount])
    {
      [(AXGestureRecorderViewController *)self _exitReplayMode];
    }

    else
    {
      [v7 timestampAtIndex:v4 + 1];
      v14 = v13;
      [v7 timestampAtIndex:v4];
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
  v3 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v3 freezeAllDynamicFingerPaths];

  [(AXGestureRecorderViewController *)self _didFinishReplayingRecordedGesture];
  v4 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v4 setReplayMode:0];
}

- (void)_advanceInstantReplayForStaticFingerAtIndex:(id)a3
{
  v32 = a3;
  v4 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];

  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(AXGestureRecorderViewController *)self setInstantReplayTimestampIndexes:v5];
  }

  v6 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [(AXGestureRecorderViewController *)self setInstantReplayPartialFingerPaths:v7];
  }

  v8 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v9 = [v8 objectForKeyedSubscript:v32];
  v10 = [v9 unsignedIntegerValue];

  v11 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v12 = [v11 timestampsCount];

  v13 = [v32 unsignedIntegerValue];
  if (v10 >= v12)
  {
    v20 = [(AXGestureRecorderViewController *)self fingerPathCollection];
    v21 = [v20 timestampsCount];

    if (v10 != v21)
    {
      _AXAssert();
    }

    [(AXGestureRecorderViewController *)self _endInstantReplayForStaticFingerAtIndex:v13];
  }

  else
  {
    if (v10)
    {
      v14 = [(AXGestureRecorderViewController *)self fingerPathCollection];
      v15 = [v14 fingerPathToAppendForIndex:v13 forTimestampAtIndex:v10];

      ++v10;
    }

    else
    {
      v15 = 0;
      while (v10 < v12)
      {
        while (1)
        {
          v22 = [(AXGestureRecorderViewController *)self fingerPathCollection];
          v23 = [v22 fingerPathToAppendForIndex:v13 forTimestampAtIndex:v10];

          ++v10;
          v15 = v23;
          if (!v23)
          {
            break;
          }

          if (![v23 isEmpty] || v10 >= v12)
          {
            goto LABEL_8;
          }
        }
      }

      v15 = 0;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v17 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
    [v17 setObject:v16 forKeyedSubscript:v32];

    if (v15)
    {
      v18 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
      v19 = [v18 objectForKeyedSubscript:v32];

      if (v19)
      {
        [v19 appendBezierPath:v15];
      }

      else
      {
        v19 = v15;
      }

      v24 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
      [v24 setObject:v19 forKeyedSubscript:v32];

      v25 = [(AXGestureRecorderViewController *)self gestureRecorderView];
      [v25 updateInstantReplayAtIndex:v13 withPartialPath:v19];

      if (v10 >= v12)
      {
        v31 = 0.3;
      }

      else
      {
        v26 = [(AXGestureRecorderViewController *)self fingerPathCollection];
        [v26 timestampAtIndex:v10];
        v28 = v27;
        v29 = [(AXGestureRecorderViewController *)self fingerPathCollection];
        [v29 timestampAtIndex:v10 - 1];
        v31 = v28 - v30;
      }

      [(AXGestureRecorderViewController *)self performSelector:sel__advanceInstantReplayForStaticFingerAtIndex_ withObject:v32 afterDelay:v31];
    }

    else
    {
      [(AXGestureRecorderViewController *)self _endInstantReplayForStaticFingerAtIndex:v13];
    }
  }
}

- (void)_startInstantReplayForStaticFingerAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXGestureRecorderViewController *)self _advanceInstantReplayForStaticFingerAtIndex:v4];
}

- (void)_endInstantReplayForStaticFingerAtIndex:(unint64_t)a3
{
  v5 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v5 finishInstantReplayAtIndex:a3];

  v6 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v6 removeObjectForKey:v7];

  v9 = [(AXGestureRecorderViewController *)self instantReplayPartialFingerPaths];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v9 removeObjectForKey:v8];
}

- (void)_endInstantReplay
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(AXGestureRecorderViewController *)self instantReplayTimestampIndexes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__advanceInstantReplayForStaticFingerAtIndex_ object:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v8 clearInstantReplayFingerPaths];

  [(AXGestureRecorderViewController *)self setInstantReplayTimestampIndexes:0];
  [(AXGestureRecorderViewController *)self setInstantReplayPartialFingerPaths:0];
}

- (void)_clearWeakReferencesWithOutlets
{
  if ([(AXGestureRecorderViewController *)self isViewLoaded])
  {
    v3 = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [v3 setDataSource:0];
  }
}

- (double)_maximumDurationOfRecordedGesture
{
  v3 = [(AXGestureRecorderViewController *)self delegate];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 maximumDurationOfRecordedGestureForGestureRecorderViewController:self];
    v4 = v5;
  }

  return v4;
}

- (void)_didStartRecordingAtomicFingerPathAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 gestureRecorderViewController:self didStartRecordingAtomicFingerPathAtPoint:{x, y}];
  }
}

- (void)_didStopRecordingAtomicFingerPath
{
  v3 = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 gestureRecorderViewControllerDidStopRecordingAtomicFingerPath:self];
  }
}

- (void)_didFinishReplayingRecordedGesture
{
  v3 = [(AXGestureRecorderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 gestureRecorderViewControllerDidFinishReplayingRecordedGesture:self];
  }
}

- (void)_updateDynamicFingerPathsWithTouches:(id)a3 touchesDidEnd:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  if (!v6)
  {
    v6 = [[AXGestureRecorderFingerPathCollection alloc] initWithMaximumFingerPathsCount:10];
    [(AXGestureRecorderFingerPathCollection *)v6 setShouldRecordRealTimeGesture:([(AXGestureRecorderViewController *)self recorderType]& 0xFFFFFFFFFFFFFFFDLL) == 1];
    v7 = [(AXGestureRecorderViewController *)self styleProvider];
    [v7 minimumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)v6 setMinimumFingerLineWidth:?];

    v8 = [(AXGestureRecorderViewController *)self styleProvider];
    [v8 maximumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)v6 setMaximumFingerLineWidth:?];

    [(AXGestureRecorderFingerPathCollection *)v6 setDelegate:self];
    [(AXGestureRecorderViewController *)self setDynamicFingerPathCollection:v6];
  }

  v9 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  Current = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    [(AXGestureRecorderFingerPathCollection *)v6 handleLiftForTouches:v11 referenceView:v9 time:Current];
  }

  else
  {
    [(AXGestureRecorderFingerPathCollection *)v6 appendPointsForTouches:v11 referenceView:v9 time:Current];
  }

  [(AXGestureRecorderViewController *)self reloadAllFingerPaths];
}

- (void)_freezeAllDynamicFingerPaths
{
  v9 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  if (!v9)
  {
    v9 = [[AXGestureRecorderFingerPathCollection alloc] initWithMaximumFingerPathsCount:10];
    [(AXGestureRecorderFingerPathCollection *)v9 setShouldRecordRealTimeGesture:([(AXGestureRecorderViewController *)self recorderType]& 0xFFFFFFFFFFFFFFFDLL) == 1];
    v3 = [(AXGestureRecorderViewController *)self styleProvider];
    [v3 minimumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)v9 setMinimumFingerLineWidth:?];

    v4 = [(AXGestureRecorderViewController *)self styleProvider];
    [v4 maximumFingerLineWidth];
    [(AXGestureRecorderFingerPathCollection *)v9 setMaximumFingerLineWidth:?];

    [(AXGestureRecorderFingerPathCollection *)v9 setDelegate:self];
    [(AXGestureRecorderViewController *)self setFingerPathCollection:v9];
  }

  v5 = [(AXGestureRecorderViewController *)self fingerPathCollection];
  v6 = [v5 fingerPathsCount];

  v7 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
  [(AXGestureRecorderFingerPathCollection *)v9 appendFingerPathsFromFingerPathCollection:v7];
  v8 = [(AXGestureRecorderViewController *)self gestureRecorderView];
  [v8 freezeAllDynamicFingerPathsWithInstantReplayOffset:v6];

  [v7 reset];
  [(AXGestureRecorderViewController *)self setTrackingTouches:0];
  if (![(AXGestureRecorderViewController *)self isInReplayMode])
  {
    while (v6 < [(AXGestureRecorderFingerPathCollection *)v9 fingerPathsCount])
    {
      [(AXGestureRecorderViewController *)self _startInstantReplayForStaticFingerAtIndex:v6++];
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording])
  {
    v5 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    v6 = [v5 fingerPathsCount];
    v7 = [(AXGestureRecorderViewController *)self fingerPathCollection];
    v8 = [v7 fingerPathsCount] + v6;

    if (v8 <= 9)
    {
      if (![(AXGestureRecorderViewController *)self isTrackingTouches])
      {
        if (![(AXGestureRecorderViewController *)self isInReplayMode])
        {
          if (![v12 count])
          {
            _AXAssert();
          }

          v9 = [v12 anyObject];
          if ([(AXGestureRecorderViewController *)self recorderType]== 2 && v9)
          {
            v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];

            v12 = v10;
          }

          v11 = [(AXGestureRecorderViewController *)self gestureRecorderView];
          [v9 locationInView:v11];
          [(AXGestureRecorderViewController *)self _didStartRecordingAtomicFingerPathAtPoint:?];
        }

        [(AXGestureRecorderViewController *)self setTrackingTouches:1];
        [(AXGestureRecorderViewController *)self setTrackingTouchesDidStartTimeInterval:CFAbsoluteTimeGetCurrent()];
      }

      [AXGestureRecorderViewController _updateDynamicFingerPathsWithTouches:"_updateDynamicFingerPathsWithTouches:touchesDidEnd:" touchesDidEnd:?];
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording]&& [(AXGestureRecorderViewController *)self isTrackingTouches])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXGestureRecorderViewController *)self trackingTouchesDidStartTimeInterval];
    v7 = Current - v6;
    [(AXGestureRecorderViewController *)self _maximumDurationOfRecordedGesture];
    if (v7 <= v8)
    {
      [(AXGestureRecorderViewController *)self _updateDynamicFingerPathsWithTouches:v9 touchesDidEnd:0];
    }

    else
    {
      [(AXGestureRecorderViewController *)self _freezeAllDynamicFingerPaths];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (![(AXGestureRecorderViewController *)self shouldPreventFurtherRecording]&& [(AXGestureRecorderViewController *)self isTrackingTouches])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AXGestureRecorderViewController *)self trackingTouchesDidStartTimeInterval];
    v9 = Current - v8;
    [(AXGestureRecorderViewController *)self _maximumDurationOfRecordedGesture];
    if (v9 <= v10)
    {
      [(AXGestureRecorderViewController *)self _updateDynamicFingerPathsWithTouches:v15 touchesDidEnd:1];
    }

    v11 = [v15 count];
    v12 = [(AXGestureRecorderViewController *)self view];
    v13 = [v6 touchesForView:v12];
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

- (unint64_t)numberOfDynamicFingerPathsInGestureRecorderView:(id)a3
{
  if ([(AXGestureRecorderViewController *)self isInReplayMode])
  {
    v4 = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    v5 = [v4 count];
  }

  else
  {
    v4 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    v5 = [v4 fingerPathsCount];
  }

  v6 = v5;

  return v6;
}

- (id)gestureRecorderView:(id)a3 dynamicFingerPathAtIndex:(unint64_t)a4
{
  if ([(AXGestureRecorderViewController *)self isInReplayMode])
  {
    v6 = [(AXGestureRecorderViewController *)self replayDynamicFingerPaths];
    [v6 objectAtIndex:a4];
  }

  else
  {
    v6 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];
    [v6 fingerPathAtIndex:a4];
  }
  v7 = ;

  return v7;
}

- (BOOL)isChromeVisibleForGestureRecorderView:(id)a3
{
  v3 = self;
  v4 = [(AXGestureRecorderViewController *)self delegate];
  LOBYTE(v3) = [v4 isChromeVisibleForGestureRecorderViewController:v3];

  return v3;
}

- (void)gestureRecorderView:(id)a3 setChromeVisible:(BOOL)a4
{
  v4 = a4;
  v6 = [(AXGestureRecorderViewController *)self delegate];
  [v6 gestureRecorderViewController:self setChromeVisible:v4];
}

- (void)gestureRecorderFingerPathCollection:(id)a3 didInsertFingerPathAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];

  if (v7 == v6)
  {
    v8 = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [v8 insertDynamicFingerPathAtIndex:a4];
  }
}

- (void)gestureRecorderFingerPathCollection:(id)a3 didUpdateFingerPathAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AXGestureRecorderViewController *)self dynamicFingerPathCollection];

  if (v7 == v6)
  {
    v8 = [(AXGestureRecorderViewController *)self gestureRecorderView];
    [v8 reloadDynamicFingerPathAtIndex:a4];
  }
}

- (AXGestureRecorderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end