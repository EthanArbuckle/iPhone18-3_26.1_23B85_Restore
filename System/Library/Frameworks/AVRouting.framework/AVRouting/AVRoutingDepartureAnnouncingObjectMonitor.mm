@interface AVRoutingDepartureAnnouncingObjectMonitor
+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)object monitoringObject:(id)monitoringObject;
- (AVRoutingDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)object;
- (void)dealloc;
@end

@implementation AVRoutingDepartureAnnouncingObjectMonitor

- (AVRoutingDepartureAnnouncingObjectMonitor)initWithMonitoringObject:(id)object
{
  v6.receiver = self;
  v6.super_class = AVRoutingDepartureAnnouncingObjectMonitor;
  v4 = [(AVRoutingDepartureAnnouncingObjectMonitor *)&v6 init];
  if (v4)
  {
    v4->_weakReferenceToMonitoringObject = [[AVRoutingWeakReference alloc] initWithReferencedObject:object];
  }

  return v4;
}

+ (void)attachDepartureAnnouncingObjectMonitorToObject:(id)object monitoringObject:(id)monitoringObject
{
  v5 = [[AVRoutingDepartureAnnouncingObjectMonitor alloc] initWithMonitoringObject:monitoringObject];

  objc_setAssociatedObject(object, @"AVRoutingDepartureAnnouncingObjectMonitorKey", v5, 0x301);
}

- (void)dealloc
{
  weakReferenceToMonitoringObject = self->_weakReferenceToMonitoringObject;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AVRoutingDepartureAnnouncingObjectMonitorAnnounceDeparture_block_invoke;
  block[3] = &unk_1E794ED28;
  block[4] = weakReferenceToMonitoringObject;
  dispatch_async(global_queue, block);

  v5.receiver = self;
  v5.super_class = AVRoutingDepartureAnnouncingObjectMonitor;
  [(AVRoutingDepartureAnnouncingObjectMonitor *)&v5 dealloc];
}

@end