@interface AVDelegatingPlaybackCoordinatorPlayCommand
- (AVDelegatingPlaybackCoordinatorPlayCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 rate:(float)a7 itemTime:(id *)a8 hostClockTime:(id *)a9;
- (CMTime)hostClockTime;
- (CMTime)itemTime;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorPlayCommand

- (AVDelegatingPlaybackCoordinatorPlayCommand)initWithCoordinator:(id)a3 originator:(id)a4 expectedCurrentItemIdentifier:(id)a5 commandOrderIndex:(int64_t)a6 rate:(float)a7 itemTime:(id *)a8 hostClockTime:(id *)a9
{
  v20.receiver = self;
  v20.super_class = AVDelegatingPlaybackCoordinatorPlayCommand;
  v16 = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v20 initInternal];
  if (v16)
  {
    *(v16 + 1) = a3;
    *(v16 + 2) = a4;
    *(v16 + 3) = [a5 copy];
    *(v16 + 4) = a6;
    *(v16 + 10) = a7;
    v17 = *&a8->var0;
    *(v16 + 60) = a8->var3;
    *(v16 + 44) = v17;
    v18 = *&a9->var0;
    *(v16 + 84) = a9->var3;
    *(v16 + 68) = v18;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDelegatingPlaybackCoordinatorPlayCommand;
  [(AVDelegatingPlaybackCoordinatorPlayCommand *)&v3 dealloc];
}

- (CMTime)itemTime
{
  *&retstr->value = *(&self[1].epoch + 4);
  retstr->epoch = *&self[2].flags;
  return self;
}

- (CMTime)hostClockTime
{
  *&retstr->value = *(&self[2].epoch + 4);
  retstr->epoch = *&self[3].flags;
  return self;
}

@end