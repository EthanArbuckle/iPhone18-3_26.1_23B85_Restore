@interface AVDepartureAnnouncingObjectMonitor
+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)object monitoringObject:(id)monitoringObject;
- (AVDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)object;
- (void)dealloc;
@end

@implementation AVDepartureAnnouncingObjectMonitor

- (AVDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)object
{
  v6.receiver = self;
  v6.super_class = AVDepartureAnnouncingObjectMonitor;
  v4 = [(AVDepartureAnnouncingObjectMonitor *)&v6 init];
  if (v4)
  {
    v4->_weakReferenceToMonitoringObject = [[AVWeakReference alloc] initWithReferencedObject:object];
  }

  return v4;
}

+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)object monitoringObject:(id)monitoringObject
{
  v5 = [[AVDepartureAnnouncingObjectMonitor alloc] initWithMonitoringObject:monitoringObject];

  objc_setAssociatedObject(object, @"AVDepartureAnnouncingObjectMonitorKey", v5, 0x301);
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