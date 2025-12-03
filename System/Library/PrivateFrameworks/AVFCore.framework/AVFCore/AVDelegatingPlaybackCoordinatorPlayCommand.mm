@interface AVDelegatingPlaybackCoordinatorPlayCommand
- (AVDelegatingPlaybackCoordinatorPlayCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index rate:(float)rate itemTime:(id *)time hostClockTime:(id *)clockTime;
- (CMTime)hostClockTime;
- (CMTime)itemTime;
- (void)dealloc;
@end

@implementation AVDelegatingPlaybackCoordinatorPlayCommand

- (AVDelegatingPlaybackCoordinatorPlayCommand)initWithCoordinator:(id)coordinator originator:(id)originator expectedCurrentItemIdentifier:(id)identifier commandOrderIndex:(int64_t)index rate:(float)rate itemTime:(id *)time hostClockTime:(id *)clockTime
{
  v20.receiver = self;
  v20.super_class = AVDelegatingPlaybackCoordinatorPlayCommand;
  initInternal = [(AVDelegatingPlaybackCoordinatorPlaybackControlCommand *)&v20 initInternal];
  if (initInternal)
  {
    *(initInternal + 1) = coordinator;
    *(initInternal + 2) = originator;
    *(initInternal + 3) = [identifier copy];
    *(initInternal + 4) = index;
    *(initInternal + 10) = rate;
    v17 = *&time->var0;
    *(initInternal + 60) = time->var3;
    *(initInternal + 44) = v17;
    v18 = *&clockTime->var0;
    *(initInternal + 84) = clockTime->var3;
    *(initInternal + 68) = v18;
  }

  return initInternal;
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