@interface AVDelegatingPlaybackCoordinatorPauseCommand
- (AVDelegatingPlaybackCoordinatorPauseCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index shouldBufferInAnticipationOfPlayback:(BOOL)playback anticipatedPlaybackRate:(float)rate;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorPauseCommand

- (AVDelegatingPlaybackCoordinatorPauseCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index shouldBufferInAnticipationOfPlayback:(BOOL)playback anticipatedPlaybackRate:(float)rate
{
  v16.receiver = self;
  v16.super_class = AVDelegatingPlaybackCoordinatorPauseCommand;
  initInternal = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v16 initInternal];
  if (initInternal)
  {
    initInternal->_coordinator = coordinator;
    initInternal->_originator = originator;
    initInternal->_expectedCurrentItemIdentifier = [identifier copy];
    initInternal->_commandOrderIndex = index;
    initInternal->_shouldBufferInAnticipationOfPlayback = playback;
    initInternal->_anticipatedPlaybackRate = rate;
  }

  return initInternal;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorPauseCommand;
  [(AVDelegatingPlaybackCoordinatorPauseCommand *)&v3 dealloc];
}

@end