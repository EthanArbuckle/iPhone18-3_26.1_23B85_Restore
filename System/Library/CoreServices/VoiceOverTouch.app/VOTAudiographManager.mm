@interface VOTAudiographManager
- (BOOL)willPlayheadPositionChangePassGridline:(double)gridline;
- (void)announceValueForPlayheadPosition;
- (void)dataSonifierPlaybackDidBeginAtPosition:(double)position;
- (void)dataSonifierPlaybackDidEndAtPosition:(double)position;
- (void)dataSonifierPlaybackDidPauseAtPosition:(double)position;
- (void)dataSonifierPlaybackDidResumeAtPosition:(double)position;
- (void)dataSonifierPlaybackProgressDidChange:(double)change;
- (void)dataSonifierScrubbingDidBeginAtPosition:(double)position;
- (void)dataSonifierScrubbingDidEndAtPosition:(double)position;
- (void)notifyElementOfPlaybackProgress:(double)progress;
- (void)notifyElementOfPlaybackStatusChange;
- (void)playHapticWithType:(int64_t)type;
- (void)scrubToPosition:(double)position;
- (void)setCurrentChartElement:(id)element;
- (void)stopSpeaking;
@end

@implementation VOTAudiographManager

- (void)setCurrentChartElement:(id)element
{
  elementCopy = element;
  currentChartElement = [(VOTAudiographManager *)self currentChartElement];

  v6 = elementCopy;
  if (currentChartElement != elementCopy)
  {
    chartDescriptor = [elementCopy chartDescriptor];
    v8 = +[AXMDataSonifier sharedInstance];
    [v8 setCurrentChartDescriptor:chartDescriptor];

    objc_storeStrong(&self->_currentChartElement, element);
    v6 = elementCopy;
  }
}

- (void)scrubToPosition:(double)position
{
  v5.receiver = self;
  v5.super_class = VOTAudiographManager;
  [(VOTAudiographManager *)&v5 scrubToPosition:?];
  if ([(VOTAudiographManager *)self willPlayheadPositionChangePassGridline:position])
  {
    [(VOTAudiographManager *)self playHapticWithType:19];
  }
}

- (void)announceValueForPlayheadPosition
{
  valueDescriptionForPlayheadPosition = [(VOTAudiographManager *)self valueDescriptionForPlayheadPosition];
  if ([valueDescriptionForPlayheadPosition length])
  {
    v2 = +[VOTOutputManager outputManager];
    v3 = [valueDescriptionForPlayheadPosition copy];
    [v2 speakSimpleString:v3];
  }
}

- (void)stopSpeaking
{
  v2 = +[VOTOutputManager outputManager];
  [v2 stopSpeakingAtBoundary:0];
}

- (void)dataSonifierPlaybackDidBeginAtPosition:(double)position
{
  [(VOTAudiographManager *)self playHapticWithType:18, position];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidPauseAtPosition:(double)position
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:position];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidResumeAtPosition:(double)position
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:position];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackDidEndAtPosition:(double)position
{
  [(VOTAudiographManager *)self playHapticWithType:18, position];
  v4 = off_1001FDDD0;
  currentChartElement = [(VOTAudiographManager *)self currentChartElement];
  language = [currentChartElement language];
  v8 = sub_1000511CC(v4, @"search.rotor.audiograph.completed.sonification", language);

  v7 = +[VOTOutputManager outputManager];
  [v7 speakSimpleString:v8];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierPlaybackProgressDidChange:(double)change
{
  if ([(VOTAudiographManager *)self willPlayheadPositionChangePassGridline:?])
  {
    [(VOTAudiographManager *)self playHapticWithType:19];
  }

  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:change];

  [(VOTAudiographManager *)self setLastPlayheadPosition:change];
}

- (void)dataSonifierScrubbingDidBeginAtPosition:(double)position
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:position];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)dataSonifierScrubbingDidEndAtPosition:(double)position
{
  [(VOTAudiographManager *)self notifyElementOfPlaybackProgress:position];

  [(VOTAudiographManager *)self notifyElementOfPlaybackStatusChange];
}

- (void)notifyElementOfPlaybackProgress:(double)progress
{
  Current = CFAbsoluteTimeGetCurrent();
  [(VOTAudiographManager *)self lastProgressNotificationTime];
  if (Current > v6 + 0.01)
  {
    currentChartElement = [(VOTAudiographManager *)self currentChartElement];
    uiElement = [currentChartElement uiElement];
    *&v9 = progress;
    [uiElement setAXAttribute:2708 withFloat:v9];

    [(VOTAudiographManager *)self setLastProgressNotificationTime:Current];
  }
}

- (void)notifyElementOfPlaybackStatusChange
{
  v3 = +[VOTAudiographManager sharedManager];
  playbackStatus = [v3 playbackStatus];

  currentChartElement = [(VOTAudiographManager *)self currentChartElement];
  uiElement = [currentChartElement uiElement];
  v6 = [NSNumber numberWithUnsignedInteger:playbackStatus];
  [uiElement setAXAttribute:2716 withNumber:v6];
}

- (BOOL)willPlayheadPositionChangePassGridline:(double)gridline
{
  xGridlinePositions = [(VOTAudiographManager *)self xGridlinePositions];
  v6 = [xGridlinePositions count];

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
        if (v9 <= gridline && v11 <= v9)
        {
          break;
        }

        [(VOTAudiographManager *)self lastPlayheadPosition];
        if (v9 >= gridline && v13 >= v9)
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

- (void)playHapticWithType:(int64_t)type
{
  if ([(VOTAudiographManager *)self hapticsEnabled])
  {
    v4 = +[AXHapticFeedbackManager sharedManager];
    [v4 playHapticFeedbackForType:type];
  }
}

@end