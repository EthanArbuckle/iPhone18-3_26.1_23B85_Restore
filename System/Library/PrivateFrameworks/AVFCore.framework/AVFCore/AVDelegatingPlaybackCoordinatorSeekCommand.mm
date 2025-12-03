@interface AVDelegatingPlaybackCoordinatorSeekCommand
- (AVDelegatingPlaybackCoordinatorSeekCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index itemTime:(id *)time shouldPause:(BOOL)pause shouldBufferInAnticipationOfPlayback:(BOOL)playback anticipatedPlaybackRate:(float)self0 completionDueDate:(id)self1;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorSeekCommand

- (AVDelegatingPlaybackCoordinatorSeekCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index itemTime:(id *)time shouldPause:(BOOL)pause shouldBufferInAnticipationOfPlayback:(BOOL)playback anticipatedPlaybackRate:(float)self0 completionDueDate:(id)self1
{
  v21.receiver = self;
  v21.super_class = AVDelegatingPlaybackCoordinatorSeekCommand;
  initInternal = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v21 initInternal];
  if (initInternal)
  {
    *(initInternal + 1) = coordinator;
    *(initInternal + 2) = originator;
    *(initInternal + 3) = [identifier copy];
    *(initInternal + 4) = index;
    v19 = *&time->var0;
    *(initInternal + 7) = time->var3;
    *(initInternal + 40) = v19;
    initInternal[64] = pause;
    initInternal[65] = playback;
    *(initInternal + 17) = rate;
    *(initInternal + 9) = date;
  }

  return initInternal;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorSeekCommand;
  [(AVDelegatingPlaybackCoordinatorSeekCommand *)&v3 dealloc];
}

@end