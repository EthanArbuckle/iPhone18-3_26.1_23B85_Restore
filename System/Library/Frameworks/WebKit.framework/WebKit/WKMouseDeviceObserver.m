@interface WKMouseDeviceObserver
+ (id)sharedInstance;
- (BOOL)hasMouseDevice;
- (WKMouseDeviceObserver)init;
- (void)_setHasMouseDeviceForTesting:(BOOL)a3;
- (void)setConnectedDeviceCount:(int64_t)a3;
- (void)setStartCount:(int64_t)a3;
@end

@implementation WKMouseDeviceObserver

- (void)setStartCount:(int64_t)a3
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___WKMouseDeviceObserver_startCount) = a3;
}

- (void)setConnectedDeviceCount:(int64_t)a3
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_19D62C118(a3);
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

  v3 = [(WKMouseDeviceObserver *)self connectedDeviceCount];

  return v3 > 0;
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

- (void)_setHasMouseDeviceForTesting:(BOOL)a3
{
  v3 = a3;
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(WKMouseDeviceObserver *)self setConnectedDeviceCount:v3];
}

@end