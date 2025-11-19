@interface AVDepartureAnnouncingObjectMonitor
+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)a3 monitoringObject:(id)a4;
- (AVDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)a3;
- (void)dealloc;
@end

@implementation AVDepartureAnnouncingObjectMonitor

- (AVDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVDepartureAnnouncingObjectMonitor;
  v4 = [(AVDepartureAnnouncingObjectMonitor *)&v6 init];
  if (v4)
  {
    v4->_weakReferenceToMonitoringObject = [[AVWeakReference alloc] initWithReferencedObject:a3];
  }

  return v4;
}

+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)a3 monitoringObject:(id)a4
{
  v5 = [[AVDepartureAnnouncingObjectMonitor alloc] initWithMonitoringObject:a4];

  objc_setAssociatedObject(a3, @"AVDepartureAnnouncingObjectMonitorKey", v5, 0x301);
}

- (void)dealloc
{
  weakReferenceToMonitoringObject = self->_weakReferenceToMonitoringObject;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___avDepartureAnnouncingObjectMonitorAnnounceDeparture_block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = weakReferenceToMonitoringObject;
  dispatch_async(global_queue, block);

  v5.receiver = self;
  v5.super_class = AVDepartureAnnouncingObjectMonitor;
  [(AVDepartureAnnouncingObjectMonitor *)&v5 dealloc];
}

@end