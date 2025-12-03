@interface WKMouseDeviceObserver
+ (id)sharedInstance;
- (BOOL)hasMouseDevice;
- (WKMouseDeviceObserver)init;
- (void)_setHasMouseDeviceForTesting:(BOOL)testing;
- (void)setConnectedDeviceCount:(int64_t)count;
- (void)setStartCount:(int64_t)count;
@end

@implementation WKMouseDeviceObserver

- (void)setStartCount:(int64_t)count
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_startCount) = count;
}

- (void)setConnectedDeviceCount:(int64_t)count
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_19D62C118(count);
}

- (BOOL)hasMouseDevice
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  connectedDeviceCount = [(WKMouseDeviceObserver *)self connectedDeviceCount];

  return connectedDeviceCount > 0;
}

- (WKMouseDeviceObserver)init
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_connectionObservationTask) = 0;
  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_disconnectionObservationTask) = 0;
  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_startCount) = 0;
  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_connectedDeviceCount) = 0;
  v5.receiver = self;
  v5.super_class = WKMouseDeviceObserver;
  v3 = [(WKMouseDeviceObserver *)&v5 init];

  return v3;
}

+ (id)sharedInstance
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1ED641700 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED641708;

  return v2;
}

- (void)_setHasMouseDeviceForTesting:(BOOL)testing
{
  testingCopy = testing;
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(WKMouseDeviceObserver *)self setConnectedDeviceCount:testingCopy];
}

@end