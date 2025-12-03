@interface MTRMediaPlaybackClusterStateChangedEvent
- (MTRMediaPlaybackClusterStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMediaPlaybackClusterStateChangedEvent

- (MTRMediaPlaybackClusterStateChangedEvent)init
{
  v15.receiver = self;
  v15.super_class = MTRMediaPlaybackClusterStateChangedEvent;
  v2 = [(MTRMediaPlaybackClusterStateChangedEvent *)&v15 init];
  v3 = v2;
  if (v2)
  {
    currentState = v2->_currentState;
    v2->_currentState = &unk_284C3E588;

    startTime = v3->_startTime;
    v3->_startTime = &unk_284C3E588;

    duration = v3->_duration;
    v3->_duration = &unk_284C3E588;

    v7 = objc_opt_new();
    sampledPosition = v3->_sampledPosition;
    v3->_sampledPosition = v7;

    playbackSpeed = v3->_playbackSpeed;
    v3->_playbackSpeed = &unk_284C3E588;

    seekRangeEnd = v3->_seekRangeEnd;
    v3->_seekRangeEnd = &unk_284C3E588;

    seekRangeStart = v3->_seekRangeStart;
    v3->_seekRangeStart = &unk_284C3E588;

    data = v3->_data;
    v3->_data = 0;

    audioAdvanceUnmuted = v3->_audioAdvanceUnmuted;
    v3->_audioAdvanceUnmuted = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMediaPlaybackClusterStateChangedEvent);
  currentState = [(MTRMediaPlaybackClusterStateChangedEvent *)self currentState];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setCurrentState:currentState];

  startTime = [(MTRMediaPlaybackClusterStateChangedEvent *)self startTime];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setStartTime:startTime];

  duration = [(MTRMediaPlaybackClusterStateChangedEvent *)self duration];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setDuration:duration];

  sampledPosition = [(MTRMediaPlaybackClusterStateChangedEvent *)self sampledPosition];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setSampledPosition:sampledPosition];

  playbackSpeed = [(MTRMediaPlaybackClusterStateChangedEvent *)self playbackSpeed];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setPlaybackSpeed:playbackSpeed];

  seekRangeEnd = [(MTRMediaPlaybackClusterStateChangedEvent *)self seekRangeEnd];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setSeekRangeEnd:seekRangeEnd];

  seekRangeStart = [(MTRMediaPlaybackClusterStateChangedEvent *)self seekRangeStart];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setSeekRangeStart:seekRangeStart];

  data = [(MTRMediaPlaybackClusterStateChangedEvent *)self data];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setData:data];

  audioAdvanceUnmuted = [(MTRMediaPlaybackClusterStateChangedEvent *)self audioAdvanceUnmuted];
  [(MTRMediaPlaybackClusterStateChangedEvent *)v4 setAudioAdvanceUnmuted:audioAdvanceUnmuted];

  return v4;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  currentState = self->_currentState;
  startTime = self->_startTime;
  duration = self->_duration;
  sampledPosition = self->_sampledPosition;
  playbackSpeed = self->_playbackSpeed;
  seekRangeEnd = self->_seekRangeEnd;
  seekRangeStart = self->_seekRangeStart;
  v12 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v13 = [v15 stringWithFormat:@"<%@: currentState:%@ startTime:%@; duration:%@; sampledPosition:%@; playbackSpeed:%@; seekRangeEnd:%@; seekRangeStart:%@; data:%@; audioAdvanceUnmuted:%@; >", v4, currentState, startTime, duration, sampledPosition, playbackSpeed, seekRangeEnd, seekRangeStart, v12, self->_audioAdvanceUnmuted];;

  return v13;
}

@end