@interface VOTAudiographManager
- (BOOL)willPlayheadPositionChangePassGridline:(double)a3;
- (void)announceValueForPlayheadPosition;
- (void)dataSonifierPlaybackDidBeginAtPosition:(double)a3;
- (void)dataSonifierPlaybackDidEndAtPosition:(double)a3;
- (void)dataSonifierPlaybackDidPauseAtPosition:(double)a3;
- (void)dataSonifierPlaybackDidResumeAtPosition:(double)a3;
- (void)dataSonifierPlaybackProgressDidChange:(double)a3;
- (void)dataSonifierScrubbingDidBeginAtPosition:(double)a3;
- (void)dataSonifierScrubbingDidEndAtPosition:(double)a3;
- (void)notifyElementOfPlaybackProgress:(double)a3;
- (void)notifyElementOfPlaybackStatusChange;
- (void)playHapticWithType:(int64_t)a3;
- (void)scrubToPosition:(double)a3;
- (void)setCurrentChartElement:(id)a3;
- (void)stopSpeaking;
@end

@implementation VOTAudiographManager

- (void)setCurrentChartElement:(id)a3
{
  v9 = a3;
  v5 = [(VOTAudiographManager *)self currentChartElement];

  v6 = v9;
  if (v5 != v9)
  {
    v7 = [v9 chartDescriptor];
    v8 = +[AXMDataSonifier sharedInstance];
    [v8 setCurrentChartDescriptor:v7];

    objc_storeStrong(&self->_currentChartElement, a3);
    v6 = v9;
  }
}

- (void)scrubToPosition:(double)a3
{
  v5.receiver = self;
  v5.super_class = VOTAudiographManager;
  [(VOTAudiographManager *)&v5 scrubToPosition:?];
  if ([(VOTAudiographManager *)self willPlayheadPositionChangePassGridline:a3])
  {
    [(VOTAudiographManager *)self playHapticWithType:19];
  }
}

- (void)announceValueForPlayheadPosition
{
  v4 = [(VOTAudiographManager *)self valueDescriptionForPlayheadPosition];
  if ([v4 length])
  {
    v2 = +[VOTOutputManager outputManager];
    v3 = [v4 copy];
    [v2 speakSimpleString:v3];
  }
}

- (void)stopSpeaking
{
  v2 = +[VOTOutputManager outputManager];
  [v2 stopSpeakingAtBoundary:0];
}

- (void)dataSonifierPlaybackDidBeginAtPosition:(double)a3
{
  [(VOTAudiographManager *)self playHapticWithType:18, a3];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidPauseAtPosition:(double)a3
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:a3];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidResumeAtPosition:(double)a3
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:a3];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidEndAtPosition:(double)a3
{
  [(VOTAudiographManager *)self playHapticWithType:18, a3];
  v4 = off_1001FDDD0;
  v5 = [(VOTAudiographManager *)self currentChartElement];
  v6 = [v5 language];
  v8 = sub_1000511CC(v4, @"search.rotor.audiograph.completed.sonification", v6);

  v7 = +[VOTOutputManager outputManager];
  [v7 speakSimpleString:v8];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackProgressDidChange:(double)a3
{
  if ([(VOTAudiographManager *)self willPlayheadPositionChangePassGridline:?])
  {
    [(VOTAudiographManager *)self playHapticWithType:19];
  }

  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:a3];

  [(VOTAudiographManager *)self setLastPlayheadPosition:a3];
}

- (void)dataSonifierScrubbingDidBeginAtPosition:(double)a3
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:a3];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierScrubbingDidEndAtPosition:(double)a3
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:a3];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)notifyElementOfPlaybackProgress:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  [(VOTAudiographManager *)self lastProgressNotificationTime];
  if (Current > v6 + 0.01)
  {
    v7 = [(VOTAudiographManager *)self currentChartElement];
    v8 = [v7 uiElement];
    *&v9 = a3;
    [v8 setAXAttribute:2708 withFloat:v9];

    [(VOTAudiographManager *)self setLastProgressNotificationTime:Current];
  }
}

- (void)notifyElementOfPlaybackStatusChange
{
  v3 = +[VOTAudiographManager sharedManager];
  v4 = [v3 playbackStatus];

  v7 = [(VOTAudiographManager *)self currentChartElement];
  v5 = [v7 uiElement];
  v6 = [NSNumber numberWithUnsignedInteger:v4];
  [v5 setAXAttribute:2716 withNumber:v6];
}

- (BOOL)willPlayheadPositionChangePassGridline:(double)a3
{
  v5 = [(VOTAudiographManager *)self xGridlinePositions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v7 / v6;
      if (v9 != 0.0 && v9 != 1.0)
      {
        [(VOTAudiographManager *)self lastPlayheadPosition];
        if (v9 <= a3 && v11 <= v9)
        {
          break;
        }

        [(VOTAudiographManager *)self lastPlayheadPosition];
        if (v9 >= a3 && v13 >= v9)
        {
          break;
        }
      }

      v8 = ++v7 < v6;
    }

    while (v6 != v7);
  }

  else
  {
    return 0;
  }

  return v8;
}

- (void)playHapticWithType:(int64_t)a3
{
  if ([(VOTAudiographManager *)self hapticsEnabled])
  {
    v4 = +[AXHapticFeedbackManager sharedManager];
    [v4 playHapticFeedbackForType:a3];
  }
}

@end