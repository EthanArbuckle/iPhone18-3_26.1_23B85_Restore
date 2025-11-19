@interface AVDelegatingPlaybackCoordinatorSeekCommand
- (AVDelegatingPlaybackCoordinatorSeekCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 itemTime:(id *)a7 shouldPause:(BOOL)a8 shouldBufferInAnticipationOfPlayback:(BOOL)a9 anticipatedPlaybackRate:(float)a10 completionDueDate:(id)a11;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorSeekCommand

- (AVDelegatingPlaybackCoordinatorSeekCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 itemTime:(id *)a7 shouldPause:(BOOL)a8 shouldBufferInAnticipationOfPlayback:(BOOL)a9 anticipatedPlaybackRate:(float)a10 completionDueDate:(id)a11
{
  v21.receiver = self;
  v21.super_class = AVDelegatingPlaybackCoordinatorSeekCommand;
  v18 = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v21 initInternal];
  if (v18)
  {
    *(v18 + 1) = a3;
    *(v18 + 2) = a4;
    *(v18 + 3) = [a5 copy];
    *(v18 + 4) = a6;
    v19 = *&a7->var0;
    *(v18 + 7) = a7->var3;
    *(v18 + 40) = v19;
    v18[64] = a8;
    v18[65] = a9;
    *(v18 + 17) = a10;
    *(v18 + 9) = a11;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorSeekCommand;
  [(AVDelegatingPlaybackCoordinatorSeekCommand *)&v3 dealloc];
}

@end